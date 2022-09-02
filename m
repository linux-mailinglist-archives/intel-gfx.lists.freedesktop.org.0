Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30625AB323
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D5410E846;
	Fri,  2 Sep 2022 14:13:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB3C10E846
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662128010; x=1693664010;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=a0Nminx90ugMxUdosuAyb5NAM34KEhtaSZkJGMh2EJQ=;
 b=e+6uPXC0Bx1cC01mSsvb4QMiowOPxaNPOsUwyWj5KMZ3kWIPqn3/16OS
 m8DjhyKb1r6Z/bmyKU0UNRWH8kccNqncc+lcUfQC4PGcHtaeAMUgYFdXu
 WHdc2hHWHy4jFXN/RWrz+GC33uls6CdQGUYSh7BAdLcwsjr+Vw2ElhJSP
 WxWn7MkgupmyChRJdSLHxB6O0YOWEh2bjfmu151+TFO84MatYYq0IAsX/
 YbItfigIQLGs4y6t8xPfNsDPvvhaHSbR8YQSPOVX1NW9yFSEbDs+cDdH4
 Shj0QOVHqRrWTz5QmvJRhHwXw3lEPbv6krmrgTtc4xxgUiikPj0BKKDzR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="295995270"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="295995270"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:13:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674367779"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:13:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-10-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 17:13:18 +0300
Message-ID: <87zgfhdfup.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Define all possible VBT
 device handles
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

On Fri, 15 Jul 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We already have LFP1 and LFP2 device handles define. Just
> add all the rest as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 2feba1e69a6d..f56c869e106f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -197,6 +197,15 @@ struct bdb_general_features {
>  #define GPIO_PIN_ADD_DDC_I2C	0x06 /* "ADDCARD DDC/I2C GPIO pins" */
>=20=20
>  /* Device handle */
> +#define DEVICE_HANDLE_CRT	0x0001
> +#define DEVICE_HANDLE_EFP1	0x0004
> +#define DEVICE_HANDLE_EFP2	0x0040
> +#define DEVICE_HANDLE_EFP3	0x0020
> +#define DEVICE_HANDLE_EFP4	0x0010 /* 194+ */
> +#define DEVICE_HANDLE_EFP5	0x0002 /* 215+ */
> +#define DEVICE_HANDLE_EFP6	0x0001 /* 217+ */
> +#define DEVICE_HANDLE_EFP7	0x0100 /* 217+ */
> +#define DEVICE_HANDLE_EFP8	0x0200 /* 217+ */
>  #define DEVICE_HANDLE_LFP1	0x0008
>  #define DEVICE_HANDLE_LFP2	0x0080

--=20
Jani Nikula, Intel Open Source Graphics Center
