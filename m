Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DE2184E79
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 19:17:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854A06EC43;
	Fri, 13 Mar 2020 18:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C77FE6EC43
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 18:17:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 11:17:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="237311628"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga008.jf.intel.com with ESMTP; 13 Mar 2020 11:17:05 -0700
Date: Fri, 13 Mar 2020 20:17:05 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200313151443.GO13686@intel.com>
Message-ID: <alpine.DEB.2.21.2003131816400.2957@eliteleevi.tm.intel.com>
References: <20200313144821.29592-1-kai.vehmanen@linux.intel.com>
 <20200313144821.29592-2-kai.vehmanen@linux.intel.com>
 <20200313151443.GO13686@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="-318106570-1302833355-1584121445=:2957"
Content-ID: <alpine.DEB.2.21.2003131955480.2957@eliteleevi.tm.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: move audio CDCLK constraint
 setup to bind/unbind
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

---318106570-1302833355-1584121445=:2957
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.21.2003131955481.2957@eliteleevi.tm.intel.com>

Hey,

On Fri, 13 Mar 2020, Ville Syrjälä wrote:

> On Fri, Mar 13, 2020 at 04:48:21PM +0200, Kai Vehmanen wrote:
>> This patch moves modifying the min_cdclk at audio component bind
>> phase and extends coverage to all gen9+ platforms. This effectively
> 
> So this will now force BXT to never use the 144 MHz CDCLK too. Is that
> actually required? I don't remember any reports of failures on BXT.

yes it will force it higher.

I can't really explain why it works. 144Mhz is well above BCLK, so most of 
the time it will work, but it is still out of spec.

I do know that on more recent hardware (gen12), I will get failures if I 
don't strictly follow the requirement. GLK is a special case as it has the 
79Mhz low cdclk. I've not been able to trigger the problem on other old 
hardware though. So where to draw the line?

It's a fair point that if the old platforms have worked so far, we should 
not make the change unless there is at least one data point supporting it. 
So the constraint would then apply for gen12+ and glk.

Now thinking of another possibility, is it possible to hook code to 
power-up of power domains? E.g. can I hook custom code which is executed 
in sync with power wells going up and down?

If we could reprogram AUD_FREQ_CNTRL outside the get/put_power() flow 
(i.e. independently from audio driver), and guarantee that if the display 
side is powered on, the link params are always correct, it might be 
possible to get away without calling get_power() from audio controller 
reset. Worth a shot probably before we merge this.

>> +	if (INTEL_GEN(dev_priv) >= 9)
>> +		glk_force_audio_cdclk(dev_priv, true);
> 
> Ah, so we still keep it on the i915 side. That seems fine. We can then
> stop doing this once we get nicer hardware and put it back into to
> get/put power.

OTOH, if we restrict this to gen12+-and-glk, the glk_ prefix makes sense 
again.

Br, Kai
---318106570-1302833355-1584121445=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-1302833355-1584121445=:2957--
