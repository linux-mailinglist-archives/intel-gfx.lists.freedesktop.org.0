Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFD92C8EB4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A296E819;
	Mon, 30 Nov 2020 20:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE3146E817
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:08:29 +0000 (UTC)
IronPort-SDR: 3NATzqQqvRR9mCWyzs0+2wgYuBg+nY83p0+RsJoF7U5b2ggAoHmwZD4D0skdmygVIuSSGEtQkw
 uBoRw7Cd1+Zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="171918549"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="171918549"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:08:28 -0800
IronPort-SDR: tFMx4Fgacq3BI8psx3w71uLAlPqg4YACgiwmnL+J4UYatUAau5CkXh+dPKY2/0ZCo9+54mTGvo
 Zk2GZQcMxUCQ==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372631689"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:08:27 -0800
Date: Mon, 30 Nov 2020 12:08:26 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20201130200826.GE12833@orsosgc001.ra.intel.com>
References: <20201126105155.540350-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126105155.540350-1-lionel.g.landwerlin@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: also include Gen11 in
 OATAILPTR workaround
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 26, 2020 at 12:51:55PM +0200, Lionel Landwerlin wrote:
>CI shows this workaround is also needed on Gen11.
>
>Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Considering this failed on gen11, this is 

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh
>Fixes: 059a0beb486344 ("drm/i915/perf: workaround register corruption in OATAILPTR")
>---
> drivers/gpu/drm/i915/i915_perf.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 3640d0e229d2..acdfbe5344a4 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -913,7 +913,7 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
> 		intel_uncore_rmw(uncore, oastatus_reg,
> 				 GEN8_OASTATUS_COUNTER_OVERFLOW |
> 				 GEN8_OASTATUS_REPORT_LOST,
>-				 IS_GEN_RANGE(uncore->i915, 8, 10) ?
>+				 IS_GEN_RANGE(uncore->i915, 8, 11) ?
> 				 (GEN8_OASTATUS_HEAD_POINTER_WRAP |
> 				  GEN8_OASTATUS_TAIL_POINTER_WRAP) : 0);
> 	}
>-- 
>2.29.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
