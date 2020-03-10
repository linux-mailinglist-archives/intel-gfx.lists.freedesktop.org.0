Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F08E51804A1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 18:19:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554F56E8B6;
	Tue, 10 Mar 2020 17:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD556E8B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 17:19:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 10:19:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="236002252"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga008.fm.intel.com with ESMTP; 10 Mar 2020 10:18:59 -0700
Date: Tue, 10 Mar 2020 19:18:58 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200310134114.GE13686@intel.com>
Message-ID: <alpine.DEB.2.21.2003101848170.2957@eliteleevi.tm.intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
 <20200102182845.GB11904@intel.com>
 <alpine.DEB.2.21.2001031703180.16459@zeliteleevi>
 <20200106164903.GA1755221@mdroper-desk1.amr.corp.intel.com>
 <alpine.DEB.2.21.2003061749190.2957@eliteleevi.tm.intel.com>
 <s5h4kuxssqr.wl-tiwai@suse.de> <20200310134114.GE13686@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-318106570-619662739-1583860740=:2957"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-619662739-1583860740=:2957
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

Hi,

On Tue, 10 Mar 2020, Ville Syrjälä wrote:

>> On Fri, 06 Mar 2020 17:45:44 +0100, Kai Vehmanen wrote:
>>> Similarly on i915 side, it would seem pretty unlikely that we are going
>>> to get smooth changes of CDCLK. It might work better on some platforms, 
> 
> There is new hw in the pipeline that should allow cdclk changes
> without a full modeset.

ok great, this is good to know. Especially we should not completely remove 
the CDCLK constraints code from get_power/put_power, as this will be 
later needed.

>>> intel_audio.c:i915_audio_component_get_power() to acomp init.
>>> This has some notable implications:
[...]
>>> Any chance to get this through? I understand this effectively removes the 
>>> lower clocks from some systems, so this needs to be evaluated carefully.
> 
> If we're going to effectively force cdclk to remain high all the time
> then we should just nuke the whole glk_force_audio_cdclk() thing. But
> at least I'll have to shed a few tears for the wasted milliwatts.
> 
> Well, I guess we might want to keep glk_force_audio_cdclk() in its
> current form for the upcoming hw that doesn't need the full modeset
> for cdclk changes.

Yeah, we probably should keep it in any case, because later it's going to 
be needed.

> I guess we could also make i915 force the cdclk to the min required by
> audio at init time. And we could maybe try to remove the modeset from the
> put_power() so that at least if you get a blink it's just the one. I did
> a similarsh thing for some other cdclk stuff recently where we want cdclk
> to go up as needed, but it will not come back down unless someone else
> already asked for a full modeset.

Hmm, this is interesting and maybe a better compromise for the in-between 
generations. Could it be as simple as not setting 
"cdclk.force_min_cdclk_changed" at put_power(), and just set the 
min_cdclk...? I was trying to follow the modeset code and it seems without 
the force set, this would avoid going to intel_modeset_checks(). If so, I 
can try this out.

One problematic scenario that this doesn't cover:
 - a single display is used (at low cdclk), and 
 - audio block goes to runtime suspend while display stays up. 

Upon resume (for e.g. UI notification sound), audio will initialize the 
HDA bus and call get_power() on i915, even if the notification goes to 
internal speaker. A modeset at this point is potentially very annoying.

I just also noted if we keep the glk_force_audio function, we need to get 
rid of the hardcoded 96Mhz BCLK value that is used now, and instead dig up 
the effective used value (we do have this). This will at least offer the 
possibility to configure the HDA link to 48Mhz in BIOS and avoid the cdclk 
bump this way.

Br, Kai
---318106570-619662739-1583860740=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-619662739-1583860740=:2957--
