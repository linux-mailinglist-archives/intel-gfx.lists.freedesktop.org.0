Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4364032D8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 05:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DB286E107;
	Wed,  8 Sep 2021 03:11:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0086E107
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 03:11:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="242666263"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="242666263"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 20:11:23 -0700
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="695290854"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 20:11:23 -0700
Date: Tue, 7 Sep 2021 20:11:49 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210908031149.GQ11424@nvishwa1-DESK>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-14-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210830121006.2978297-14-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 13/19] drm/i915: Take object lock in
 i915_ggtt_pin if ww is not set
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

On Mon, Aug 30, 2021 at 02:10:00PM +0200, Maarten Lankhorst wrote:
>i915_vma_wait_for_bind needs the vma lock held, fix the caller.
>

Need an lock assert in i915_vma_wait_for_bind()?

Niranjana

>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> drivers/gpu/drm/i915/i915_vma.c | 40 +++++++++++++++++++++++----------
> 1 file changed, 28 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
>index 5e0eaa9ea890..77319619dba0 100644
>--- a/drivers/gpu/drm/i915/i915_vma.c
>+++ b/drivers/gpu/drm/i915/i915_vma.c
>@@ -1322,23 +1322,15 @@ static void flush_idle_contexts(struct intel_gt *gt)
> 	intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
> }
>
>-int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>-		  u32 align, unsigned int flags)
>+static int __i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>+			   u32 align, unsigned int flags)
> {
> 	struct i915_address_space *vm = vma->vm;
> 	int err;
>
>-	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
>-
>-#ifdef CONFIG_LOCKDEP
>-	WARN_ON(!ww && dma_resv_held(vma->obj->base.resv));
>-#endif
>-
> 	do {
>-		if (ww)
>-			err = i915_vma_pin_ww(vma, ww, 0, align, flags | PIN_GLOBAL);
>-		else
>-			err = i915_vma_pin(vma, 0, align, flags | PIN_GLOBAL);
>+		err = i915_vma_pin_ww(vma, ww, 0, align, flags | PIN_GLOBAL);
>+
> 		if (err != -ENOSPC) {
> 			if (!err) {
> 				err = i915_vma_wait_for_bind(vma);
>@@ -1357,6 +1349,30 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
> 	} while (1);
> }
>
>+int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>+		  u32 align, unsigned int flags)
>+{
>+	struct i915_gem_ww_ctx _ww;
>+	int err;
>+
>+	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
>+
>+	if (ww)
>+		return __i915_ggtt_pin(vma, ww, align, flags);
>+
>+#ifdef CONFIG_LOCKDEP
>+	WARN_ON(dma_resv_held(vma->obj->base.resv));
>+#endif
>+
>+	for_i915_gem_ww(&_ww, err, true) {
>+		err = i915_gem_object_lock(vma->obj, &_ww);
>+		if (!err)
>+			err = __i915_ggtt_pin(vma, &_ww, align, flags);
>+	}
>+
>+	return err;
>+}
>+
> static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
> {
> 	/*
>-- 
>2.32.0
>
