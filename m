Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 611FC502850
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 12:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB1E10F31B;
	Fri, 15 Apr 2022 10:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651E010F31B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 10:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650018684; x=1681554684;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FiQdORAjyRzyo/jWAOwlsfnr56XXdTyBCWEFk3ddUn4=;
 b=DRVKWnJNCmT1wB6vf0iSvyYsriEUoOHFRvtXOn7tAzZYQT4VO2QN2Fbq
 fyAhPNTXzqprQJ+5BhSm652N+Bc/w9G4h5U9R2V5aRzKS2BEw75ga21t+
 O8qy7z3OtxHjUcGOkQ8JlfR9+G8fEhGbXlTobhzk0liVaVLg4VkX5etYC
 bWNRteMsuJoZSZ+OLe4ZjL1jwIVRKnKkF8cKj8VkM2PAospcn2XxNmeyi
 ACjULSquHk8cagCyoSVn92sTgZ6rs0lxJM4oKLM88IW052lji0XzXj9Sm
 GBNBT8nlpBIPANBw7u5wIv3UU8eVBjeZDbjIl8OdGax8RgxfJH0AmlL84 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="250432893"
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="250432893"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 03:31:23 -0700
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="574301835"
Received: from pgooneti-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.255.34.169])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 03:31:21 -0700
Date: Fri, 15 Apr 2022 06:31:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YllJd9kJxzW33TfM@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <5b1cfcd6fc47dcc3d6aa9ed2f4412e7b6bf1159c.1649871650.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5b1cfcd6fc47dcc3d6aa9ed2f4412e7b6bf1159c.1649871650.git.ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/pcode: Add a couple of pcode
 helpers
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

On Wed, Apr 13, 2022 at 11:11:05AM -0700, Ashutosh Dixit wrote:
> Add a couple of helpers to help formatting pcode commands and improve code
> readability.
> 
> Cc: Mike Ruhl <michael.j.ruhl@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Original-author: Dale B Stimson <dale.b.stimson@intel.com>

The right thing to do here is to git commit --amend --author="Dale B Stimson <dale.b.stimson@intel.com>"
probably also good to reset the date with --date...

> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

and keep your signed-off-by here as well...

and also feel free add my rv-b after the author is fixed

Thanks,
Rodrigo.

> ---
>  drivers/gpu/drm/i915/i915_reg.h    |  3 +++
>  drivers/gpu/drm/i915/intel_pcode.c | 32 ++++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pcode.h | 12 +++++++++++
>  3 files changed, 47 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index fef71b242706..0d5a4ecd374a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6684,6 +6684,9 @@
>  
>  #define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
>  #define   GEN6_PCODE_READY			(1 << 31)
> +#define   GEN6_PCODE_MB_PARAM2			REG_GENMASK(23, 16)
> +#define   GEN6_PCODE_MB_PARAM1			REG_GENMASK(15, 8)
> +#define   GEN6_PCODE_MB_COMMAND			REG_GENMASK(7, 0)
>  #define   GEN6_PCODE_ERROR_MASK			0xFF
>  #define     GEN6_PCODE_SUCCESS			0x0
>  #define     GEN6_PCODE_ILLEGAL_CMD		0x1
> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> index 0cff212cc81b..87b9f5035741 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.c
> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> @@ -239,3 +239,35 @@ int intel_pcode_init(struct drm_i915_private *i915)
>  
>  	return 0;
>  }
> +
> +int __intel_gt_pcode_read(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 *val)
> +{
> +	intel_wakeref_t wakeref;
> +	u32 mbox;
> +	int err;
> +
> +	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd)
> +		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1)
> +		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		err = intel_gt_pcode_read(gt, mbox, val, NULL);
> +
> +	return err;
> +}
> +
> +int __intel_gt_pcode_write(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 val)
> +{
> +	intel_wakeref_t wakeref;
> +	u32 mbox;
> +	int err;
> +
> +	mbox = REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND, mbcmd)
> +		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1, p1)
> +		| REG_FIELD_PREP(GEN6_PCODE_MB_PARAM2, p2);
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		err = intel_gt_pcode_write(gt, mbox, val);
> +
> +	return err;
> +}
> diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
> index 96c954ec91f9..65175d82e033 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.h
> +++ b/drivers/gpu/drm/i915/intel_pcode.h
> @@ -36,4 +36,16 @@ int intel_gt_pcode_request(struct intel_gt *gt, u32 mbox, u32 request,
>  
>  int intel_pcode_init(struct drm_i915_private *i915);
>  
> +/*
> + * Helpers for dGfx PCODE mailbox command formatting
> + */
> +int __intel_gt_pcode_read(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 *val);
> +int __intel_gt_pcode_write(struct intel_gt *gt, u32 mbcmd, u32 p1, u32 p2, u32 val);
> +
> +#define __snb_pcode_read(i915, mbcmd, p1, p2, val) \
> +	__intel_gt_pcode_read(&(i915)->gt0, mbcmd, p1, p2, val)
> +
> +#define __snb_pcode_write(i915, mbcmd, p1, p2, val) \
> +	__intel_gt_pcode_write(&(i915)->gt0, mbcmd, p1, p2, val)
> +
>  #endif /* _INTEL_PCODE_H */
> -- 
> 2.34.1
> 
