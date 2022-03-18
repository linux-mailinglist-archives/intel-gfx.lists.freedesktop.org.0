Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7444C4DDC28
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 15:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA3F10E9F3;
	Fri, 18 Mar 2022 14:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E642610E9F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 14:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647614986; x=1679150986;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0rQCimYB1EMz2mUIZOknpn+5P6cD7RQmsWxOIzYth/g=;
 b=GAdMK4ZVZb3WbCoF7nhnJ4XmisW8dlnaMD5qzTIIRHzxie/QpM6+sHrF
 6f/lds/7CG6itXFq8oiFynyb4c1UW/3cIIKzaaH9lvO4Ld1u2Dsmvr6Dh
 NTQf3n2R0xO+3cmeTGJT59yOLXZ4s3GWlHVXkwJXo7zhHtXfit7zUzT/9
 1xgksfGGYbkUUZJIDLV9VuryF8VraKL2HFdWQjdCzI5BC6WwUx/ak1pKB
 koYdBA2G3mccrku+q1R6rnHc0E2Uee77gBwMb+FnYtp0ACmrPHu30ncn6
 6xGJzJEFMG0i9M5V1TNrq8xoKbF+AhlkL+9nh31jIoIG+f5C7sVC633eR w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="255974592"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="255974592"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:49:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="635778322"
Received: from ankithac-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.159.242])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:49:46 -0700
Date: Fri, 18 Mar 2022 07:49:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220318144944.xreqcswae6ry3cm7@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1647542120.git.jani.nikula@intel.com>
 <6142e2f8e495bfb9373ee908af16352f5c9e9464.1647542120.git.jani.nikula@intel.com>
 <20220317193648.jxjnjuyd535hsrtk@ldmartin-desk2>
 <878rt7mxcd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <878rt7mxcd.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/dmc: move assert_dmc_loaded()
 to intel_dmc.c
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 18, 2022 at 11:19:46AM +0200, Jani Nikula wrote:
>On Thu, 17 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Thu, Mar 17, 2022 at 08:36:14PM +0200, Jani Nikula wrote:
>>>Start localizing DMC register and data access to intel_dmc.c.
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> drivers/gpu/drm/i915/display/intel_display_power.c | 12 ------------
>>> drivers/gpu/drm/i915/display/intel_dmc.c           | 11 +++++++++++
>>> drivers/gpu/drm/i915/display/intel_dmc.h           |  2 ++
>>> 3 files changed, 13 insertions(+), 12 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>>>index b3efe345567f..6a5695008f7c 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>>>@@ -905,18 +905,6 @@ static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
>>> 	intel_pps_unlock_regs_wa(dev_priv);
>>> }
>>>
>>>-static void assert_dmc_loaded(struct drm_i915_private *dev_priv)
>>>-{
>>>-	drm_WARN_ONCE(&dev_priv->drm,
>>>-		      !intel_de_read(dev_priv,
>>>-				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
>>>-				     "DMC program storage start is NULL\n");
>>>-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_SSP_BASE),
>>>-		      "DMC SSP Base Not fine\n");
>>>-	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_HTP_SKL),
>>>-		      "DMC HTP Not fine\n");
>>>-}
>>>-
>>> /**
>>>  * intel_display_power_set_target_dc_state - Set target dc state.
>>>  * @dev_priv: i915 device
>>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>index 66fd69259e73..63ae16622c3e 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>@@ -305,6 +305,17 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
>>> 	gen9_set_dc_state_debugmask(dev_priv);
>>> }
>>>
>>>+void assert_dmc_loaded(struct drm_i915_private *i915)
>>>+{
>>>+	drm_WARN_ONCE(&i915->drm,
>>>+		      !intel_de_read(i915, DMC_PROGRAM(i915->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
>>>+		      "DMC program storage start is NULL\n");
>>>+	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_SSP_BASE),
>>>+		      "DMC SSP Base Not fine\n");
>>>+	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_HTP_SKL),
>>>+		      "DMC HTP Not fine\n");
>>>+}
>>>+
>>> static bool fw_info_matches_stepping(const struct intel_fw_info *fw_info,
>>> 				     const struct stepping_info *si)
>>> {
>>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>>>index 7c590309a3a9..326f80ad0f31 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_dmc.h
>>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>>>@@ -55,4 +55,6 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
>>> void intel_dmc_ucode_resume(struct drm_i915_private *i915);
>>> bool intel_dmc_has_payload(struct drm_i915_private *i915);
>>>
>>>+void assert_dmc_loaded(struct drm_i915_private *i915);
>>
>>
>> intel_dmc_assert_loaded()?
>
>assert_dmc_loaded() is in line with the display asserts we have:
>
>git grep assert_ -- drivers/gpu/drm/i915/display/*.h
>
>I'd rather stick with that convention for now, and moving away from it
>should be a separate conversation.

ok, fair enough.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>
>BR,
>Jani.
>
>>
>> Lucas De Marchi
>>
>>>+
>>> #endif /* __INTEL_DMC_H__ */
>>>--
>>>2.30.2
>>>
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
