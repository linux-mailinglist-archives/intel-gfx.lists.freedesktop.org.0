Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 433514E2A46
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 15:15:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E675E10E496;
	Mon, 21 Mar 2022 14:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D31CE10E361
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 14:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647872132; x=1679408132;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Mgs+y89A4vaKHRIwUURY4wx3cjkCnx/Gt/RI6XqlSQs=;
 b=V+kQen6y2LoXuaNRzNSU5vVPZAp7XR+tH28fVVv1vobXmsFBZXJk3W+d
 XMmDrCmvlC/nljOfLLFKTnaAYoTG13BKwvgqn8NUbCuBVY8LVwbHoRv1/
 pkO6MlssrPG+D0cd9ONIU4bznNmGGDwQGPm6VIRrrUQ02LDYevdwuBTyd
 uT7TP8rRWQ9wV4RGuJg5x7ytWseSnd59oCjbiitwpOOCwryQ0KNPbCAlK
 /HNn8W6skxUtvrhCF8ue+9Ss/kkVYujEHl1I4qcTSGKTaehxFUe84qMbX
 mVCViEDMcwk9D5cPWGTXyFGim1BhmBWK26273AWCRw5qkYEpwRGu72RdZ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="257511162"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="257511162"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 07:15:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="582881537"
Received: from navjotka-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.145.9])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 07:15:32 -0700
Date: Mon, 21 Mar 2022 07:15:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220321141532.xz2qvxwucvj3d4hx@ldmartin-desk2>
References: <20220321135955.922791-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220321135955.922791-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: fix i915_reg_t initialization
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

On Mon, Mar 21, 2022 at 03:59:55PM +0200, Jani Nikula wrote:
>The initialization is there only to silence the compiler, but use the
>correct initializer for i915_reg_t.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>index 6d7ec3bf1f32..5423bfd301ad 100644
>--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>@@ -767,7 +767,7 @@ static int mi_set_context(struct i915_request *rq,
> 	if (GRAPHICS_VER(i915) == 7) {
> 		if (num_engines) {
> 			struct intel_engine_cs *signaller;
>-			i915_reg_t last_reg = {}; /* keep gcc quiet */
>+			i915_reg_t last_reg = INVALID_MMIO_REG; /* keep gcc quiet */
>
> 			*cs++ = MI_LOAD_REGISTER_IMM(num_engines);
> 			for_each_engine(signaller, engine->gt, id) {
>-- 
>2.30.2
>
