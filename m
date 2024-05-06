Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D377C8BCA91
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 11:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DA710E815;
	Mon,  6 May 2024 09:23:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ChCF5Z3/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4DE510E815
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 09:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714987416; x=1746523416;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=FajDjKus3qZlodpKe3CP0nW81uuK5Ifbxhwlo1uumKc=;
 b=ChCF5Z3/i5ge3xDa+qMDrZrPBfCTfXhC9wM7WJVKRnrrqtu7eE48T4l3
 CsvPCgbUjF9SM3mCABujepNwBSXPqFyKiep1x2g9Qy+OILzd36wWNn63t
 mAgB9dei1CLKFSUgTGdfEFnxdeWvZFy2ShZJzWCYp4/4dgPdFE/vMcqCz
 M+2Z9P3v/G5/KrbH3TBInQlLXNOUsJon1P2yjktX3gWCec4gwXzPCmGVo
 RaJfyb3Xi+zG7865TI4vb8T8PILRfQG4IGZ1W30xWepF+zNjjWK7Drcpf
 7lF3RnopQA1Eqj0zbsSuRZxwF8IYruiTOUV4K8w760Kj0ow9zVAUpF1mU w==;
X-CSE-ConnectionGUID: XP41932OSVqF8tj03drIAw==
X-CSE-MsgGUID: TetMRHunTryK+mW8WEggPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14539935"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14539935"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:23:35 -0700
X-CSE-ConnectionGUID: s9cItvNUR22Rh9gaSq9aAw==
X-CSE-MsgGUID: 9+VGwD+aQ/imGopaQqlvlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28211816"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 02:23:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/35] drm/i915/bios: Add version notes for some blocks
In-Reply-To: <20240503122449.27266-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240503122449.27266-1-ville.syrjala@linux.intel.com>
 <20240503122449.27266-9-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 12:23:19 +0300
Message-ID: <87h6fbnvjs.fsf@intel.com>
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
> Document which VBT blocks were defined in which BDB version,
> for the cases where the spec actually states this accurately.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 0533025d133b..18f54311a6e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -147,7 +147,7 @@ enum bdb_block_id {
>  	BDB_EXT_MMIO_REGS		=3D 6, /* VBIOS only */
>  	BDB_SWF_IO			=3D 7, /* VBIOS only */
>  	BDB_SWF_MMIO			=3D 8, /* VBIOS only */
> -	BDB_PSR				=3D 9,
> +	BDB_PSR				=3D 9, /* 165+ */
>  	BDB_MODE_REMOVAL_TABLE		=3D 10,
>  	BDB_CHILD_DEVICE_TABLE		=3D 11,
>  	BDB_DRIVER_FEATURES		=3D 12,
> @@ -170,10 +170,10 @@ enum bdb_block_id {
>  	BDB_LFP_DATA			=3D 42,
>  	BDB_LFP_BACKLIGHT		=3D 43,
>  	BDB_LFP_POWER			=3D 44,
> -	BDB_MIPI_CONFIG			=3D 52,
> -	BDB_MIPI_SEQUENCE		=3D 53,
> -	BDB_COMPRESSION_PARAMETERS	=3D 56,
> -	BDB_GENERIC_DTD			=3D 58,
> +	BDB_MIPI_CONFIG			=3D 52, /* 175+ */
> +	BDB_MIPI_SEQUENCE		=3D 53, /* 177+ */
> +	BDB_COMPRESSION_PARAMETERS	=3D 56, /* 213+ */
> +	BDB_GENERIC_DTD			=3D 58, /* 229+ */
>  	BDB_SKIP			=3D 254, /* VBIOS only */
>  };

--=20
Jani Nikula, Intel
