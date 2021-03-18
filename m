Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D6C3405FE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 13:47:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7B4C6E8EF;
	Thu, 18 Mar 2021 12:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02C916E8EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 12:47:36 +0000 (UTC)
IronPort-SDR: zjpwoV0Ykwty7fECcHCFxVYiI/1p1Ltj6YTnXjthdiAgLfSVPrfmK+2ndiZ19iSCdZUex2sz8+
 I8gCQzTUYefQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="251024511"
X-IronPort-AV: E=Sophos;i="5.81,258,1610438400"; d="scan'208";a="251024511"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 05:47:36 -0700
IronPort-SDR: 2+Eb0I+EA2Q9/f5lwPbc5Sg3gNa7Agg67uZJMDc+lGw32YO8i3e/CikpvtHP3G2+up5BGjPWZ9
 F8PT/rRm+gUw==
X-IronPort-AV: E=Sophos;i="5.81,258,1610438400"; d="scan'208";a="413067461"
Received: from hschroed-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.35.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 05:47:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20210317192314.55oa2jblpenl7uzl@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1615998927.git.jani.nikula@intel.com>
 <17288137452f731a820e737582672f836660a26f.1615998927.git.jani.nikula@intel.com>
 <20210317192314.55oa2jblpenl7uzl@ldmartin-desk2>
Date: Thu, 18 Mar 2021 14:47:31 +0200
Message-ID: <877dm48w7w.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 03/14] drm/i915/bios: reduce indent in
 sanitize_ddc_pin and sanitize_aux_ch
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 17 Mar 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Mar 17, 2021 at 06:36:42PM +0200, Jani Nikula wrote:
>>Reduce indent with an early return. No functional changes.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_bios.c | 86 +++++++++++------------
>> 1 file changed, 41 insertions(+), 45 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>>index 824148063451..5e7dc0899ab1 100644
>>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>@@ -1525,31 +1525,29 @@ static void sanitize_ddc_pin(struct drm_i915_private *i915,
>> 		return;
>>
>> 	p = get_port_by_ddc_pin(i915, info->alternate_ddc_pin);
>>-	if (p != PORT_NONE) {
>>-		drm_dbg_kms(&i915->drm,
>>-			    "port %c trying to use the same DDC pin (0x%x) as port %c, "
>>-			    "disabling port %c DVI/HDMI support\n",
>>-			    port_name(port), info->alternate_ddc_pin,
>>-			    port_name(p), port_name(p));
>>+	if (p == PORT_NONE)
>>+		return;
>>
>>-		/*
>>-		 * If we have multiple ports supposedly sharing the
>>-		 * pin, then dvi/hdmi couldn't exist on the shared
>>-		 * port. Otherwise they share the same ddc bin and
>>-		 * system couldn't communicate with them separately.
>>-		 *
>>-		 * Give inverse child device order the priority,
>>-		 * last one wins. Yes, there are real machines
>>-		 * (eg. Asrock B250M-HDV) where VBT has both
>>-		 * port A and port E with the same AUX ch and
>>-		 * we must pick port E :(
>>-		 */
>>-		info = &i915->vbt.ddi_port_info[p];
>>+	drm_dbg_kms(&i915->drm,
>>+		    "port %c trying to use the same DDC pin (0x%x) as port %c, "
>>+		    "disabling port %c DVI/HDMI support\n",
>>+		    port_name(port), info->alternate_ddc_pin,
>>+		    port_name(p), port_name(p));
>>
>>-		info->supports_dvi = false;
>>-		info->supports_hdmi = false;
>>-		info->alternate_ddc_pin = 0;
>>-	}
>>+	/*
>>+	 * If we have multiple ports supposedly sharing the pin, then dvi/hdmi
>>+	 * couldn't exist on the shared port. Otherwise they share the same ddc
>>+	 * bin and system couldn't communicate with them separately.
>>+	 *
>>+	 * Give inverse child device order the priority, last one wins. Yes,
>>+	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
>>+	 * port A and port E with the same AUX ch and we must pick port E :(
>>+	 */
>>+	info = &i915->vbt.ddi_port_info[p];
>>+
>>+	info->supports_dvi = false;
>>+	info->supports_hdmi = false;
>>+	info->alternate_ddc_pin = 0;
>> }
>>
>> static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
>>@@ -1577,30 +1575,28 @@ static void sanitize_aux_ch(struct drm_i915_private *i915,
>> 		return;
>>
>> 	p = get_port_by_aux_ch(i915, info->alternate_aux_channel);
>>-	if (p != PORT_NONE) {
>>-		drm_dbg_kms(&i915->drm,
>>-			    "port %c trying to use the same AUX CH (0x%x) as port %c, "
>>-			    "disabling port %c DP support\n",
>>-			    port_name(port), info->alternate_aux_channel,
>>-			    port_name(p), port_name(p));
>>+	if (p == PORT_NONE)
>>+		return;
>>
>>-		/*
>>-		 * If we have multiple ports supposedlt sharing the
>>-		 * aux channel, then DP couldn't exist on the shared
>>-		 * port. Otherwise they share the same aux channel
>>-		 * and system couldn't communicate with them separately.
>>-		 *
>>-		 * Give inverse child device order the priority,
>>-		 * last one wins. Yes, there are real machines
>>-		 * (eg. Asrock B250M-HDV) where VBT has both
>>-		 * port A and port E with the same AUX ch and
>>-		 * we must pick port E :(
>>-		 */
>>-		info = &i915->vbt.ddi_port_info[p];
>>+	drm_dbg_kms(&i915->drm,
>>+		    "port %c trying to use the same AUX CH (0x%x) as port %c, "
>>+		    "disabling port %c DP support\n",
>>+		    port_name(port), info->alternate_aux_channel,
>>+		    port_name(p), port_name(p));
>>
>>-		info->supports_dp = false;
>>-		info->alternate_aux_channel = 0;
>>-	}
>>+	/*
>>+	 * If we have multiple ports supposedlt sharing the aux channel, then DP
>
> and another typo: supposedly. Might as well be a patch on top fixing
> these, up to you.

As they're just comments, I took the liberty of fixing while pushing.

Pushed the entire series, thanks for the review.

BR,
Jani.


>
> Lucas De Marchi
>
>>+	 * couldn't exist on the shared port. Otherwise they share the same aux
>>+	 * channel and system couldn't communicate with them separately.
>>+	 *
>>+	 * Give inverse child device order the priority, last one wins. Yes,
>>+	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
>>+	 * port A and port E with the same AUX ch and we must pick port E :(
>>+	 */
>>+	info = &i915->vbt.ddi_port_info[p];
>>+
>>+	info->supports_dp = false;
>>+	info->alternate_aux_channel = 0;
>> }
>>
>> static const u8 cnp_ddc_pin_map[] = {
>>-- 
>>2.20.1
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
