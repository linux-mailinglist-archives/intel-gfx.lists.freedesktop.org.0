Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FB04BA95E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 20:14:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E3710E42C;
	Thu, 17 Feb 2022 19:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADFF010E400;
 Thu, 17 Feb 2022 19:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645125234; x=1676661234;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8ZKLLLN8J0C2eGmj8qBLKfoPHChkVDCKnZQ1jwxA+p8=;
 b=CC3K3zmDZi2UB2GBDD961PV+3AHZlERjHqG/wWj6Rql9rMy7xyikszJ0
 42Sk0+jqqKN1sJHP38RdCAyyyQLGlruHlh9gRZnfh6j960yDnmwczxNod
 YoPxCWz4DIXqKuDNp2VNaEHYSlvwDs5SDODYfrnyuAzZKYkCeUASecL7+
 acOIgJVXmw/WMP7bQ9DWVICLV5JDj2fN0OxuhAea3kPgbO+it72wVBpv6
 saaTkbrDypuWGbRB4TLG/RyH6jcUulsGBsJZRtwGjAJoVKguwbJdQSPdf
 Q8arEqy+6HTz8QagSOTAqrokvzl+JiD9l6oapdgpLpMKilzMsMfXO5MRK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="238356532"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="238356532"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 11:13:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="637310519"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 11:13:54 -0800
Date: Thu, 17 Feb 2022 11:13:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20220217191354.GG34157@unerlige-ril-10.165.21.154>
References: <20220215053115.6023-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220215053115.6023-1-ramalingam.c@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Skip the i915_perf_init for
 dg2
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 15, 2022 at 11:01:15AM +0530, Ramalingam C wrote:
>i915_perf is not enabled for dg2 yet, hence skip the feature
>initialization.
>
>Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
>cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_perf.c | 4 ++++
> 1 file changed, 4 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 36f1325baa7d..5ac9604d07b3 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -4373,6 +4373,10 @@ void i915_perf_init(struct drm_i915_private *i915)
>
> 	/* XXX const struct i915_perf_ops! */
>
>+	/* i915_perf is not enabled for DG2 yet */
>+	if (IS_DG2(i915))
>+		return;
>+

lgtm

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh
> 	perf->oa_formats = oa_formats;
> 	if (IS_HASWELL(i915)) {
> 		perf->ops.is_valid_b_counter_reg = gen7_is_valid_b_counter_addr;
>-- 
>2.20.1
>
