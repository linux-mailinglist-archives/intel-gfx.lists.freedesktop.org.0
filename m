Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 528EC8BCA95
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E2BB10E91C;
	Mon,  6 May 2024 09:25:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ad2pDbdL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02DE810E91C
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714987512; x=1746523512;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=B4sP0rZmUTHLU30iqfMl8f9moLmA8CukwRon9cRobpw=;
 b=Ad2pDbdLRsnralmYrvo6852yoBa7yMHpGHks/pkV36iqHDEKhfES0VFY
 Cb52QXYW3x8D6UWSZcGZdlRcx44FkV2FFWx0eI2rb6Ttq4qYD5ryqFKWJ
 lww1JFK3uIeA+R9HJA8gvtF9yWORzsMibpQIntmCXADQB6B04e+FYaHSO
 eDH8LE58HVwFbPiYRctS0Z/dld1+WrjQj6d63kxjSYeZ6nSWuvaRHPuRp
 wYX1gY50twf1320xhBY+9RGS8DCoPxeYUIaHdUL2OXCSTAiPJER8NO9F9
 fD9YDsjaXzW7PE5707rctZjON68mpPmTJix3FvRXjyxBSJwR/8FD359oq g==;
X-CSE-ConnectionGUID: IYqXCHKMS5qWsA3uG2pJJw==
X-CSE-MsgGUID: hs4k+JsuQmmi7ru+sRqN5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10559098"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10559098"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:25:11 -0700
X-CSE-ConnectionGUID: xqQg/cDTQECAu03TMPCjPg==
X-CSE-MsgGUID: oOquVzShRAWIbl25DLmTMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28110759"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:24:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 10/35] drm/i915/bios: Define VBT block 4 (Mode Support
 List) contents
In-Reply-To: <20240503122449.27266-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-11-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:24:55 +0300
Message-ID: <87edafnvh4.fsf@intel.com>
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
> Define the contents of VBT block 4 (Mode Support List).
>
> Slightly crazy layout with a variable length list at the start,
> followed by the length of said list.
>
> No real idea what these "Intel mode numbers" really are. What
> I see in real world VBTs seems to be always the same list of
> 26 numbers, ranging between 0x30 and 0x84.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 7df0a6044425..c9ecf3b48999 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -571,6 +571,15 @@ struct bdb_display_toggle {
>  	u16 list[];						/* ALM only */
>  } __packed;
>=20=20
> +/*
> + * Block 4 - Mode Support List
> + */
> +
> +struct bdb_mode_support_list {
> +	u8 intel_mode_number[0];
> +	u16 mode_list_length;
> +} __packed;
> +
>  /*
>   * Block 9 - SRD Feature Block
>   */

--=20
Jani Nikula, Intel
