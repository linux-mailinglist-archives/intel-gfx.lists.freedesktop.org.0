Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B7F58404B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 15:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576D411A1DC;
	Thu, 28 Jul 2022 13:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2C4410E2A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 13:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659016069; x=1690552069;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=UGqyXcTUnUjGpYqgi1yNe2FZZG5zNkpcvbkacO9HzWM=;
 b=cj+GOI2TG1uReobFNaEA/qihGnYQSIkW8RFASVt3WuO4amQ+fp4ACjq3
 YZ1sMHFBhXyGu5LQqtR1VJ7hyJj0BiUhKDxW1B29YUyT2PGdxr97Z46Qa
 Lc5GUvbEZjc29bMXBE28bvNmCeuRX7QP6v7T/ZGlnjzHBPC2hexGE/xen
 UdO5JnEDZ5ctV4daruTMcbJK+TLEX5Wd2rA6kk91Op7Hb2quM8NFmPEMR
 0DbkzBF/6pSXf+3UGa0OiYtuSLtkwhif/JB/r9tnUF+2F5ledruEyCIB5
 aAJuzI9dPRdewnBZ6ul2a1QX1Fp/jc1bJf0pWfvw9xDFuZQK3+sIqbEV8 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271553706"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="271553706"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 06:47:48 -0700
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="576477032"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 06:47:47 -0700
Date: Thu, 28 Jul 2022 16:47:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <YuKTfQ+VuOr9aui6@ideak-desk.fi.intel.com>
References: <20220727182919.334136-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20220727182919.334136-2-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220727182919.334136-2-madhumitha.tolakanahalli.pradeep@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DG2 DMC firmware
 to v2.07
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 27, 2022 at 11:29:19AM -0700, Madhumitha Tolakanahalli Pradeep wrote:
> The release notes mention that DMC v2.07 has a workaround
> for MMIO hang issue when DC States are enabled.
> 
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>

Thanks for the patch pushed to drm-intel-next.

There was one CI failure on BSW, unrelated to this DG2 specific change.

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index fa9ef591b885..ed28107cbd12 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -52,8 +52,8 @@
>  
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 06)
> -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 06)
> +#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
> +#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>  
>  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> -- 
> 2.37.1
> 
