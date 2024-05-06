Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B638BCAB0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A7EE11227D;
	Mon,  6 May 2024 09:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xusa6o5U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9083112263
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714987921; x=1746523921;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ffQDrSnC7pkpJ4EuocwUEi0MWuIPelhl97o7JJcn1vs=;
 b=Xusa6o5UZP1J5A6DvLLvJaTPX97p/Saeryvyb5sa+iMQovw51uuFOw6s
 O4/jn+RTM3w66STnwWscTYgcFYgAMK5PUhvLX8n6iygMHDGmHzj/pZgeJ
 k0i3aAaozv9Wyw/GV8vYXLiDfEq6G8fsGssOVmLcpBew+UzYMfNwgrxyZ
 8VhEZQek3rfTFQF5Oa3GBBfwJMagv5kFyhwjkd9tbZPTY19A7xmqKHxut
 OAVg/XXZurR4pgsEh6Rttm02C033/avUwt8uHiiqwgD1XuoXo96i0D1NI
 HP8PDgxgnjrLia30lGJ4MuHGbLXerG2GJLGQAzGgRit9ZCjUlFwJOm8n+ w==;
X-CSE-ConnectionGUID: j+mNv5q/RoGJ96lh9tzfPA==
X-CSE-MsgGUID: Bj3cZweLR7+PiU5P9h9u1w==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10849960"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10849960"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:32:00 -0700
X-CSE-ConnectionGUID: eIzGQN1fQKK4VOuWZU2NuA==
X-CSE-MsgGUID: V2j7d535Q4ucTy0xNCCqxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="32918777"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:31:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 18/35] drm/i915/bios: Define VBT block 18 (Driver
 Rotation) contents
In-Reply-To: <20240503122449.27266-19-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-19-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:31:56 +0300
Message-ID: <8734qvnv5f.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 03 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define the contents of block 18 (Driver Rotation).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index c97bca5d12d1..2792da3c916e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -845,6 +845,18 @@ struct bdb_sv_test_functions {
>  	u8 sv_bits[8];
>  } __packed;
>=20=20
> +/*
> + * Block 18 - Driver Rotation
> + */
> +
> +struct bdb_driver_rotation {
> +	u8 rotation_enable;
> +	u8 rotation_flags_1;
> +	u16 rotation_flags_2;
> +	u32 rotation_flags_3;
> +	u32 rotation_flags_4;
> +} __packed;
> +
>  /*
>   * Block 22 - SDVO LVDS General Options
>   */

--=20
Jani Nikula, Intel
