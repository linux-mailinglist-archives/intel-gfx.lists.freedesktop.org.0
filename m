Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0922117F61A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 12:20:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E46706E0A2;
	Tue, 10 Mar 2020 11:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A3C6E0A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 11:20:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 04:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="276916265"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2020 04:20:28 -0700
Date: Tue, 10 Mar 2020 13:20:07 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
In-Reply-To: <s5h4kuxssqr.wl-tiwai@suse.de>
Message-ID: <alpine.DEB.2.21.2003101234220.2957@eliteleevi.tm.intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
 <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
 <alpine.DEB.2.21.2003061749190.2957@eliteleevi.tm.intel.com>
 <s5h4kuxssqr.wl-tiwai@suse.de>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

On Mon, 9 Mar 2020, Takashi Iwai wrote:

> On Fri, 06 Mar 2020 17:45:44 +0100, Kai Vehmanen wrote:
>> unfortunately it seems this fix that was done is not holding up in wider 
>> testing. It now looks we need to enforce the constraint in one form or 
[...]
>> So how about: We move the glk_force_audio_cdclk() logic from 
>> intel_audio.c:i915_audio_component_get_power() to acomp init.
>> This has some notable implications:
> 
> That sounds reasonable to me.  But it's basically the i915 stuff, so
> I'd leave the decision to you guys :)

thanks Takashi --let's wait for the comments. I'll add also Ville who 
wrote the original glk_force_audio() code diretly to the thread.

> My another quick thought after reading this mail is whether we can
> simply remove glk_force_audio_cdclk(false) in
> i915_audio_component_put_power().  In this way, a flicker should be
> reduced, at most only once at boot time, and the CDCLK is lowered only
> when the audio is really used (once).

If we could really limit this to actual first-time use (i.e. only if 
actual playback to HDMI/DP is done), that would be interesting compromise 
indeed, but as the ALSA side probe will call get_power, this will have 
limited benefit. I think this is in the end same as:

> Or, similarly, it can be put into *_component_bind() and *_unbind()
> instead of *_get_power() and *_put_power().  This indicates that the
> corresponding audio device really exists.

... doing it bind. But yes, you are right, bind() and unbind() would be 
the appropriate places. Then if audio driver is not loaded, the freq 
constraint is not put into effect, and similarly if audio driver is 
unloaded, cdclk constraint is released.

Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
