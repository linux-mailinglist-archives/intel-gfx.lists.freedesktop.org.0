Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F6617C33E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 17:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 401FA6ED4C;
	Fri,  6 Mar 2020 16:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E736ED4C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 16:45:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 08:45:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="264512688"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga004.fm.intel.com with ESMTP; 06 Mar 2020 08:45:44 -0800
Date: Fri, 6 Mar 2020 18:45:44 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.21.2003061749190.2957@eliteleevi.tm.intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
 <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Limit audio CDCLK>=2*BCLK
 constraint back to GLK only
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi folks,

[+Takashi from ALSA]

On Mon, 6 Jan 2020, Matt Roper wrote:
>>> On Tue, Dec 31, 2019 at 04:00:07PM +0200, Kai Vehmanen wrote:
>>>> Revert changes done in commit f6ec9483091f ("drm/i915: extend audio
>>>> CDCLK>=2*BCLK constraint to more platforms"). Audio drivers
>
> Agreed; GLK's minimum cdclk goes down to 79.2 mhz so it makes sense that
> it needs to be handled differently than CNL (and beyond).  I.e., this
> isn't a pure revert of the original patch.

unfortunately it seems this fix that was done is not holding up in wider 
testing. It now looks we need to enforce the constraint in one form or 
another for newer platforms as well. We can't revert the revert as that 
will bring the boot flicker back, so we'll need something else.

Now as we've gone back-and-forth multiple times, I want to get some early 
feedback before opting for one path or another.

To recap in short:
 - audio driver calls i915 acomp get_power() multiple times during boot
	-> this can cause annoying flicker at boot on platforms where
	   each get_power() leads to a modeset change
	- example: https://gitlab.freedesktop.org/drm/intel/issues/913
 - systems with more complex audio subsystems (DSP enabled) will be 
   calling get_power() many more times (as i915 iDisp link is needed in 
   multiple phases of audio controller, DSP and codecs initialization), 
   making the flicker worse

I've gone through (once more) possible options, and it starts to seem that 
trying to minimize # of get_power() cycles is not going to work well in 
the long run. We could certainly reduce number of distinct get_power 
calls e.g. during boot by refactoring the audio DSP setup, but there would 
still be more than a few, and it's not just the boot. We now need to call 
get_power() when the audio controller comes out from runtime suspend 
(otherwise the HDA link is not ok between i915 and audio). This can be pretty 
annoying if there are visible artifacts to the end-user in such a case
where potentially no HDMI/DP monitors are even connected).

Similarly on i915 side, it would seem pretty unlikely that we are going
to get smooth changes of CDCLK. It might work better on some platforms, 
but generally (depending on the available dividers provided), it's not 
going to be guaranteed to be flicker-free.

So how about: We move the glk_force_audio_cdclk() logic from 
intel_audio.c:i915_audio_component_get_power() to acomp init.
This has some notable implications:

 - audio driver can safely call get_power without worrying 
   about creating display artifacts,
 - on some platforms, with specific HDA link params in BIOS, 
   this will mean some lower CDCLK frequencies, will not be used
   at all
	- e.g. on ICL system with 96Mhz BCLK for iDisp, 172800 and
   	  180000 are blocked out, and 192000 is the practical minimum
	  unless you unload the audio driver
	- if BCLK is 48Mhz, no impact to CDCLK selection on ICL

Any chance to get this through? I understand this effectively removes the 
lower clocks from some systems, so this needs to be evaluated carefully.

I don't really have other options on the table now. We could maybe use 
idle-timers to delay powering off the audio domain until certain amount of 
inactivity, but this is both ugly and won't solve the full thing. Or we 
just keep reducing get_power() calls on audio side, and just mitigate the 
the severity of the flicker -- again not fully solving the problem.

Thoughts and feedback is welcome.

Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
