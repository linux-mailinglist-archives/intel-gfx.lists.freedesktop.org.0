Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5349082414A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 13:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFEF910E47D;
	Thu,  4 Jan 2024 12:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCBF710E459
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 12:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704370181; x=1735906181;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uAAWNUqXoNDW1Q1fml/rpRxZt2B9mg4MWFfXIbv7j38=;
 b=CygO5vqFKPQCPQJyIux2S7M3pCNsvnkhjcFqaCa8tr4/Q7FC05ottPab
 1QGQ8Rji8gq9Al9t7pSFFrtN0mw1HvXEITbZGV13JUtdk09tHz28hV8qT
 W8HqpZm2HaH4YerdSombxswyc1wMzbWSlKoRlsLdV+UzhcEbDwy2tIk0d
 JiX5eLP81gZxExIMoqa6+oC8Hhe9C6xQQIZg2N76k6ShOR3ni6uNYVHwe
 cvrqXUbvHRKF0VBdfvdn8BOoxOEDrTyO2I+zl8hHFYGFOjIgbozVWIS+l
 IKXRKq8/GTfl+Rx/33mhIxVbYVM0b4b5hYgJ+X72Klf7fmt2oDc7X57Dy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="376709676"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="376709676"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 04:09:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="1027420594"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="1027420594"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 04:09:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915: Disable DSB in Xe KMD
In-Reply-To: <20240103181714.200828-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240103181714.200828-1-jose.souza@intel.com>
Date: Thu, 04 Jan 2024 14:09:36 +0200
Message-ID: <87sf3dz4e7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 03 Jan 2024, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> Often getting DBS overflows when starting Xorg or Wayland compositors
> when running Xe KMD.
> Issue was reported but nothing was done, so disabling DSB as whole
> until properly fixed in Xe KMD.
>
> v2:
> - move check to HAS_DSB(Jani)

I was thinking of something like

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i91=
5/display/intel_dsb.c
index 482c28b5c2de..a6c7122fd671 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -453,6 +453,10 @@ struct intel_dsb *intel_dsb_prepare(const struct intel=
_crtc_state *crtc_state,
 	if (!HAS_DSB(i915))
 		return NULL;
=20
+	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
+	if (!IS_ENABLED(I915))
+		return NULL;
+
 	dsb =3D kzalloc(sizeof(*dsb), GFP_KERNEL);
 	if (!dsb)
 		goto out;


>
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/989
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1031
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1072
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driver=
s/gpu/drm/i915/display/intel_display_device.h
> index fe42688137863..faa49aced46a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -45,7 +45,12 @@ struct drm_printer;
>  #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
>  #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >=3D 14)
>  #define HAS_DPT(i915)			(DISPLAY_VER(i915) >=3D 13)
> +#ifdef I915
>  #define HAS_DSB(i915)			(DISPLAY_INFO(i915)->has_dsb)
> +#else
> +/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
> +#define HAS_DSB(i915)			(false)
> +#endif
>  #define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
>  #define HAS_FBC(i915)			(DISPLAY_RUNTIME_INFO(i915)->fbc_mask !=3D 0)
>  #define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)

--=20
Jani Nikula, Intel
