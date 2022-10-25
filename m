Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A95E560C493
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 09:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B449A10E2A7;
	Tue, 25 Oct 2022 07:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAEFC10E193;
 Tue, 25 Oct 2022 06:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666681155; x=1698217155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=So/5Sulmzc9H36se1cSsT2qQZxRGz3l6Ri60arDoMHo=;
 b=RHNolNlUNHtY7JXl2FNX9bOQ9eZHhgRnBRIVCFa+0ZKLSHxLUP8uEXVq
 EiacRiY+vyE6Ar2RxH7S/ZMltdmiNTjIXvTjYhrPdd4LAxvXpu2YiXjIv
 J8EX4lMvy4MGx+oVbQoShzqFVQzlD9QZDV6jB2h6RFtHqUKgl1jcT9LEG
 RkuWxw7T/uqqwPuwi7k2PK+idbVnphVc9hQLCAGoBM3j6gLCRoNqbDtc7
 6v5qEq4AyV6W0Mp5x/98ncbh6NPufavpaonL6YA1cbgGzKGu9GaYp0WbX
 3B4FSKoeXGs0KdFAcD5ShqmAUZEEeIfVVspwLuav4Xe+J5U48+W1hArGk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="308697610"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="308697610"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 23:59:15 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="806564442"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="806564442"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 23:59:15 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 24 Oct 2022 23:59:03 -0700
Message-Id: <20221025065905.13325-18-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
References: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 17/19] drm/i915/vm_bind: Limit vm_bind mode
 to non-recoverable contexts
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Only support vm_bind mode with non-recoverable contexts.
With new vm_bind mode with eb3 submission path, we need not
support older recoverable contexts.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 76c6419b7ae0..9a7eaa574966 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1617,6 +1617,12 @@ i915_gem_create_context(struct drm_i915_private *i915,
 	INIT_LIST_HEAD(&ctx->stale.engines);
 
 	if (pc->vm) {
+		/* Only non-recoverable contexts are allowed in vm_bind mode */
+		if (i915_gem_vm_is_vm_bind_mode(pc->vm) &&
+		    (pc->user_flags & BIT(UCONTEXT_RECOVERABLE))) {
+			err = -EINVAL;
+			goto err_ctx;
+		}
 		vm = i915_vm_get(pc->vm);
 	} else if (HAS_FULL_PPGTT(i915)) {
 		struct i915_ppgtt *ppgtt;
-- 
2.21.0.rc0.32.g243a4c7e27

