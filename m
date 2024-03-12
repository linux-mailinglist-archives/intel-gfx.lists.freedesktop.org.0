Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAEB879364
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 12:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A2C10F3E2;
	Tue, 12 Mar 2024 11:55:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="tMEn09R8";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="VQrqvG7w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D9410F3E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 11:55:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="4800506"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4800506"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 04:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11429456"
Received: from rfreedx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.35.216])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 04:55:47 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 12 Mar 2024 13:55:44 +0200
Resent-Message-ID: <87r0gfslz3.fsf@intel.com>
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Mailbox Transport; Tue, 12 Mar 2024 04:05:17 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Mar 2024 04:05:16 -0700
Received: from orviesa003.jf.intel.com (10.64.159.143) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Mar 2024 04:05:16 -0700
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16149623"
Received: from fmvoesa105.fm.intel.com ([10.64.2.15])
 by ORVIESA003-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 04:05:16 -0700
Authentication-Results: mgamail.intel.com; spf=None
 smtp.pra=thomas.weissschuh@linutronix.de; spf=Pass
 smtp.mailfrom=t-8ch@linutronix.de; spf=None
 smtp.helo=postmaster@galois.linutronix.de; dkim=pass (signature verified)
 header.i=@linutronix.de; dmarc=pass (p=none dis=none) d=linutronix.de
IronPort-SDR: 65f036eb_7YSV9QQZ+1K6EHOPA+J7mc0S3tVe6+Czg4kQjTjEZH0fnxA
 5kKQhFztg0fiZ8kO+7fzPne/Sy4qJXzKQfAzI4Q==
X-IPAS-Result: =?us-ascii?q?A0ErAAAaNvBlfTcrjsFaHQICCRQFBUGBOwgMAYI4gVEzB?=
 =?us-ascii?q?AtIjHKJSgMRnXaCDQEBAQEBAQEBAQlBAQIEAQEDAQOMfAIeBwEEMAkNAQECA?=
 =?us-ascii?q?QIBAQEBAQMCAQIBAQEBAQEIAQEBAgIBAQECAQECBAMBAQEBAhABASQ8J4VsD?=
 =?us-ascii?q?YJcATOCECwNegEBAgIBJxMGAQE3AQQLCxgcElYGE4MAgj0jBwGxV3iBATOBA?=
 =?us-ascii?q?YIKAQEGBAUBglyufIEfCYFIAYglAYUqhA16J4IogRUyAYEIgW8+iwaBQVaDO?=
 =?us-ascii?q?4ELkj2EfYUUVH8cA4EFBFoNGxAeNxEQEw0DCG4dAjE6AwUDBDIKEgwLHwVUA?=
 =?us-ascii?q?0MGSQsDAhoFAwMEgS0FDRoCEBoGDCYDAxJJAhAUAzgDAwYDCjEwVUEMUANnH?=
 =?us-ascii?q?zIJPA8MGgIbFA0kIwIsPgMJChACFgMdFgQyEQkLJgMqBjkCEgwGBgZdIBYJB?=
 =?us-ascii?q?CUDCAQDUgMgdREDBBoHCwd4ggKBPQQTRxCBNIohDIM2KoFQKYEhA0QdQAMLb?=
 =?us-ascii?q?T01FBsGIgGkWFMfAQF6FIIvTMVGCweCNYFgoSwWMpdDkmuYXah8gWQ6gVwzP?=
 =?us-ascii?q?oM2TwMZD44sFoQLj0dFMjsCBwsBAQMJgjmDDQEBgygtBYFHAQE?=
IronPort-PHdr: A9a23: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
IronPort-Data: A9a23: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
 NWzyyBWOXlp43y9FFFbJcvlNn6xvr8x4+n1sTPC
IronPort-HdrOrdr: A9a23:yNn3UaFDmoE6xwdJpLqE5ceALOsnbusQ8zAXPo5KJyC9Vvbo8/
 xG/c5rsCMc7Qx6NU3I9urqBEDtex/hHNtOkO4s1NSZLWvbUQmTTL2KhLGKqwEIWReOldK1vp
 0AT0ERMrLNMWQ=
X-Talos-CUID: 9a23:RGZ/0GCr/R4+jhP6EwVlz05XHNA3Tn3Q51XiBmyWGDdESpTAHA==
X-Talos-MUID: =?us-ascii?q?9a23=3AB9jing5e6I4Q2oWSj65AJd33xoxFs/+PMkNQqK4?=
 =?us-ascii?q?E5dK/bx5VKSuXhxaoF9o=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="15581501"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="15581501"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from galois.linutronix.de ([193.142.43.55])
 by mgamail.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar
 2024 04:05:15 -0700
Date: Tue, 12 Mar 2024 12:05:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1710241511;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3zEEf8Oc3cGzWFwPZqQOfPaCyBPN0wnB+XnX3wOGP4Y=;
 b=tMEn09R8Jwvr8alOarzMO86xbX62TWA7rfnOLwfhnrh5wITv7DdVCHnAu/s8A/0LNjUwos
 XsJY0x1/tjN/GaURcdyrNleP4SZudMvgfiq2Yq4kSWz15EWhC6+o2r9trmBGfwlRpu9x/F
 /488vR68Cgri7hsmkA8kZoQ4TVYEtdPNzBAh7EoQrf19Cp2ZHVJiBFW8ZOFtevTEmBSIan
 NBJ/d387sJWC3qJ1yawJiq24q13QIcXhNB1AvI/YgkbaBGdO8eMQmKiQyCgMfiTrFsqhYO
 rZNh4G4a3bcZ+iSHIkjk/Uq6jiRf5bW5t+MD2qOKha/63PV/E8MtV96Sb/aMDg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1710241511;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3zEEf8Oc3cGzWFwPZqQOfPaCyBPN0wnB+XnX3wOGP4Y=;
 b=VQrqvG7wTN6WJftETQzsAJdqhxwkFXRKoW5irEMme8pUEq7VdiR9iGGlKpcTR67BuKJZ2r
 KdOyVbPOjbT9mzBQ==
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v3 4/6] drm/i915: Extract opregion vbt presence check
Message-ID: <20240312120240-afdb1b83-8517-434b-be79-06f41bafd71f@linutronix.de>
References: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
 <20240228213235.2495611-5-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228213235.2495611-5-radhakrishna.sripada@intel.com>
X-MS-Exchange-Organization-Network-Message-Id: 5870eba7-38d0-434e-aebb-08dc42844cb2
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-AuthSource: ORSMSX601.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.6051058
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.035
MIME-Version: 1.0
X-TUID: fwYOSj0YxxIV
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 28, 2024 at 01:32:33PM -0800, Radhakrishna Sripada wrote:
> We want to later change intel_opregion_get_vbt to duplicate the vbt
> memory if present, which would be an overkill when we just want to
> peek into the presence of opregion vbt. Carve out the presence check
> into its own function to use in places where only the presence of vbt
> is required.

This doesn't compile when CONFIG_ACPI is not enabled:

  CC [M]  drivers/gpu/drm/xe/i915-display/intel_bios.o
drivers/gpu/drm/i915/display/intel_bios.c: In function 'intel_bios_is_lvds_present':
drivers/gpu/drm/i915/display/intel_bios.c:3425:24: error: implicit declaration of function 'intel_opregion_vbt_present'; did you mean
 'intel_opregion_asle_present'? [-Werror=implicit-function-declaration]
 3425 |                 return intel_opregion_vbt_present(i915);
      |                        ^~~~~~~~~~~~~~~~~~~~~~~~~~
      |                        intel_opregion_asle_present
cc1: all warnings being treated as errors

Seen on next-20240312.

> 
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  3 +--
>  drivers/gpu/drm/i915/display/intel_opregion.c | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_opregion.h |  1 +
>  3 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index a66fc79466bd..c283a5a07010 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3364,8 +3364,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
>  		 * additional data.  Trust that if the VBT was written into
>  		 * the OpRegion then they have validated the LVDS's existence.
>  		 */
> -		if (intel_opregion_get_vbt(i915, NULL))
> -			return true;
> +		return intel_opregion_vbt_present(i915);
>  	}
>  
>  	return false;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 5d07a002edaa..58dfecb617b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1131,6 +1131,16 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_con
>  	return drm_edid;
>  }
>  
> +bool intel_opregion_vbt_present(struct drm_i915_private *i915)
> +{
> +	struct intel_opregion *opregion = i915->display.opregion;
> +
> +	if (!opregion || !opregion->vbt)
> +		return false;
> +
> +	return true;
> +}
> +
>  const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
>  {
>  	struct intel_opregion *opregion = i915->display.opregion;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index 0bec224f711f..63573c38d735 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -53,6 +53,7 @@ int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
>  int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
>  const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector);
>  
> +bool intel_opregion_vbt_present(struct drm_i915_private *i915);

This declaration is in a #ifdef CONFIG_ACPI block.

>  const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size);
>  
>  bool intel_opregion_headless_sku(struct drm_i915_private *i915);
> -- 
> 2.34.1
> 
