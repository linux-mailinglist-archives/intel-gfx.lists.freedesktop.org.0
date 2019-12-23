Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BCC129AEE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 22:00:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FAA891C1;
	Mon, 23 Dec 2019 21:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F60689FCA
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 21:00:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 13:00:00 -0800
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="211669885"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.14.204])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 13:00:00 -0800
Date: Mon, 23 Dec 2019 12:59:55 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191223205955.nv2qi6aztzaokjdg@ldmartin-desk1>
References: <20191220220650.16349-1-lucas.demarchi@intel.com>
 <157687987582.18690.3380544218828835709@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157687987582.18690.3380544218828835709@skylake-alporthouse-com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: nuke skl workaround for
 pre-production hw
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 20, 2019 at 10:11:15PM +0000, Chris Wilson wrote:
>Quoting Lucas De Marchi (2019-12-20 22:06:50)
>> According to intel_detect_preproduction_hw(), the SKL steeping D0 is
>> still pre-preproduction so we can nuke the additional workaround.
>>
>> While at it, nuke dangling new line.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Ville and Jani are more likely to know if the pre-production comment is
>telling porkies.

Bspec 7534 says "The DDIA port presence strap is not connected on the SKL A-C steppings."

I would expect to catch a failure in CI if the spec was wrong. I can add
the bspec # to the commit message while fixing up the typos there.


Lucas De Marchi

>-Chris
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
>>  1 file changed, 1 insertion(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index e6702b9b9117..4aa7dfa88c7c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -16018,14 +16018,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>>                 if (intel_ddi_crt_present(dev_priv))
>>                         intel_crt_init(dev_priv);
>>
>> -               /*
>> -                * Haswell uses DDI functions to detect digital outputs.
>> -                * On SKL pre-D0 the strap isn't connected, so we assume
>> -                * it's there.
>> -                */
>>                 found = I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
>> -               /* WaIgnoreDDIAStrap: skl */
>> -               if (found || IS_GEN9_BC(dev_priv))
>> +               if (found)
>>                         intel_ddi_init(dev_priv, PORT_A);
>>
>>                 /* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
>> @@ -16046,7 +16040,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>>                 if (IS_GEN9_BC(dev_priv) &&
>>                     intel_bios_is_port_present(dev_priv, PORT_E))
>>                         intel_ddi_init(dev_priv, PORT_E);
>> -
>>         } else if (HAS_PCH_SPLIT(dev_priv)) {
>>                 int found;
>>
>> --
>> 2.24.0
>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
