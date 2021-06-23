Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA1D3B2370
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 00:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E6A6E93E;
	Wed, 23 Jun 2021 22:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002C46E93E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 22:13:26 +0000 (UTC)
IronPort-SDR: wgEX2zZrXHGR5oVYvVK+wocKqNAbWVHtRA6wXPmi5R7r84HdiAcjV9+omJKNc2Cjs0txnvbpuk
 SFbEFpcJmJ3A==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207171776"
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="207171776"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 15:13:26 -0700
IronPort-SDR: SPwCob8PrUkqJ+/iVI2wilqC33yp68Scns4ok4QaDOdMer0HDrKIOoIs9SAFAgFgx700f66BhW
 9KgOdVdXjTKw==
X-IronPort-AV: E=Sophos;i="5.83,295,1616482800"; d="scan'208";a="406829111"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 15:13:24 -0700
Date: Wed, 23 Jun 2021 15:13:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20210623221322.GA951094@mdroper-desk1.amr.corp.intel.com>
References: <20210531064845.4389-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210531064845.4389-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Extend QGV point restrict
 mask to 0x3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 31, 2021 at 09:48:44AM +0300, Stanislav Lisovskiy wrote:
> According to BSpec there is now also a code 0x02,
> which corresponds to QGV point being rejected,
> this code so lets extend mask to check this.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 4979b4965a82..0037e3d4049a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9349,7 +9349,7 @@ enum {
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
>  #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
>  #define     ICL_PCODE_POINTS_RESTRICTED		0x0
> -#define     ICL_PCODE_POINTS_RESTRICTED_MASK	0x1
> +#define     ICL_PCODE_POINTS_RESTRICTED_MASK	0x3
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
>  #define   ICL_PCODE_EXIT_TCCOLD			0x12
> -- 
> 2.24.1.485.gad05a3d8e5
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
