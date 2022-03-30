Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC844EBDAE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 11:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A3510F726;
	Wed, 30 Mar 2022 09:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A977A10F726
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 09:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648632673; x=1680168673;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wKF/yngpOTtqMUikEjAK2s1z1fuecwlbfL/l3sJ7p+U=;
 b=ZQJSyEoPJ46kPlezawwIioOSC/sUxaVYUarekTEthch7nlxDyqNmhaho
 54R0PaFJT/9ix70ar/oKYrQKJTrCgezlMJePdcnAhHLfnhC+uyJ5Xpaiq
 VbV+J7IZAUexCIZS/0QlsNCtRbGlFqRupC5j3ArpezGJ0uHyirFteQQOL
 7LcTdiJft7fGf9R2lbz2MA3nLcQSNK+88EguupLU7jC2AwSG4GeW7R0Dm
 lje2rNB0N9A6uKQClD53pth66xnZE0nag5dKKPvI7JaDPgsh6ln0rlX1u
 rW4i7zt/uvCZzq/mKUO+uw0kg3N6r2DG9inylsfSVmDpinyQ20T2t81ON g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="320197809"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="320197809"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:31:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="565457332"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:31:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220321141532.xz2qvxwucvj3d4hx@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220321135955.922791-1-jani.nikula@intel.com>
 <20220321141532.xz2qvxwucvj3d4hx@ldmartin-desk2>
Date: Wed, 30 Mar 2022 12:31:09 +0300
Message-ID: <87a6d7dbxe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 21 Mar 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Mar 21, 2022 at 03:59:55PM +0200, Jani Nikula wrote:
>>The initialization is there only to silence the compiler, but use the
>>correct initializer for i915_reg_t.
>>
>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks, pushed a while back.

BR,
Jani.

>
> Lucas De Marchi
>
>>---
>> drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>>index 6d7ec3bf1f32..5423bfd301ad 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
>>@@ -767,7 +767,7 @@ static int mi_set_context(struct i915_request *rq,
>> 	if (GRAPHICS_VER(i915) == 7) {
>> 		if (num_engines) {
>> 			struct intel_engine_cs *signaller;
>>-			i915_reg_t last_reg = {}; /* keep gcc quiet */
>>+			i915_reg_t last_reg = INVALID_MMIO_REG; /* keep gcc quiet */
>>
>> 			*cs++ = MI_LOAD_REGISTER_IMM(num_engines);
>> 			for_each_engine(signaller, engine->gt, id) {
>>-- 
>>2.30.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
