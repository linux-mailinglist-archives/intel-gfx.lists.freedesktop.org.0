Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A39FF821DF1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jan 2024 15:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B59010E029;
	Tue,  2 Jan 2024 14:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B6FF10E029
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 14:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704206526; x=1735742526;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JLYBwdRxciDsNtad0syoBAdbe63y21ZOa/rP3h+mcNg=;
 b=I0ZvnEalQ7IWhUVQF6K4Bx7SIZlZQTocbwycKecM8+tjruCw8wGAQU4L
 hOAb4f4/eUFSVrcC9MU+vDm0J82Fz7DE1ZpPzbCUDP2TrMM4+7GKDFgbS
 lrnXpu2HrQGRc168dUVi8oYbQ69Tks1SqmI2OM4sL3bkwwAzJvdiFv+Xs
 S44JtnFsmYQxuXD8JQXnpZ9KCr8gFL+D3c83Cf1Wp1kQGp7gAeZGu5jSJ
 9DOs7pH+57yGVpzpBkr7RFkmvct2KJsrwE8J5Ji/FBqojrvotR8bVplL/
 1cgAA12IiijPyzprccmS3zl2wPtqHn+MCLT26fMG/UhnO2fTy5CmheixU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="377041251"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="377041251"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 06:42:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="808530301"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="808530301"
Received: from dmaryin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.224])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 06:42:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/xe: Add workaround 14019877138
In-Reply-To: <20240102135408.734232-1-tejas.upadhyay@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240102135408.734232-1-tejas.upadhyay@intel.com>
Date: Tue, 02 Jan 2024 16:41:51 +0200
Message-ID: <87v88b23ww.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 02 Jan 2024, Tejas Upadhyay <tejas.upadhyay@intel.com> wrote:
> WA 14019877138 needed for Graphics 12.70/71 both

You're changing i915. The subject prefix should be drm/i915.

BR,
Jani.

>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3eacbc50caf8..270b56fc85e2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -820,6 +820,9 @@ static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_18019271663 */
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> +
> +	/* Wa_14019877138 */
> +	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,

-- 
Jani Nikula, Intel
