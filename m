Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E08A4886A14
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:18:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FB210EE1C;
	Fri, 22 Mar 2024 10:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SjTK1MiC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089BC10E918
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711102737; x=1742638737;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=EIIL6EUtZVMbTbZ/t1NkCO+KVl1Nbs9yU64hQmMLqDk=;
 b=SjTK1MiCXiK+LZT9OSB4aD1ONYIZJxyltEaBgPPWmxd44jiFN42XwiKM
 Z950qZJGb/rBWxXh4XUrmp2MD5FnoM7hBc1g20j4A24JOVxUnRQA2T4Km
 QaBwXUpL9EENBZmetu/4FMsX2NeD0IhbWq1y8yyPS7b0rp1pcaVHTW3t+
 tg9KW+zNVlmnZ+bErUlqx0zC5QH7/vimRsZkK3eiclkruBhUkEoITRWnz
 b2DtFLmwy/kCrqg4K8JTcoJRfye/e95AlUkumflCmXiNP65f90DAim1dr
 VMqLnlW3aU8l0WFSyUyZ3AGUHK3SMjSPGmfwVPrX32sN0jZexk9PGvnVt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="17537797"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="17537797"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:18:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="14870417"
Received: from ghoshsu1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.6])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:18:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915/bios: s/dpfs/dfps/
In-Reply-To: <20240321161806.31714-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
 <20240321161806.31714-2-ville.syrjala@linux.intel.com>
Date: Fri, 22 Mar 2024 12:18:50 +0200
Message-ID: <877chulgc5.fsf@intel.com>
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

On Thu, 21 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We've misspelled the VBT DFPS (dynamic frames per second) field
> as DPFS. Fix it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 648934fcd123..f2506b0be790 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -614,7 +614,7 @@ struct bdb_driver_features {
>  	u16 tbt_enabled:1;					/* 165+ */
>  	u16 psr_enabled:1;					/* 165-227 */
>  	u16 ips_enabled:1;					/* 165+ */
> -	u16 dpfs_enabled:1;					/* 165+ */
> +	u16 dfps_enabled:1;					/* 165+ */
>  	u16 dmrrs_enabled:1;					/* 174-227 */
>  	u16 adt_enabled:1;					/* ???-228 */
>  	u16 hpd_wake:1;						/* 201-240 */

--=20
Jani Nikula, Intel
