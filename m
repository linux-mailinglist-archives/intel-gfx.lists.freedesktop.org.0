Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 082F8B36E2E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 17:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6155310E685;
	Tue, 26 Aug 2025 15:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kF0bu8jO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6749F10E079
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756223033; x=1787759033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CvEQ6QFqtpRuIjWlQrPo7dQP+d9Q4DRdX/k5APELPGc=;
 b=kF0bu8jOb8gKOy+bYDq672v6VjfSiFX2XmEC3qur+UUZHZXFF5GctJPy
 2YFyujfSGVcEw+dSUaqm66lwxBLLGZE/RAneMG62d/ktHvyitUZvB2jtK
 8IeMwUcEn6aydDRl/wAx235CWOGDg/S930kKM4eMbS/B98j0IXvL92yBp
 0YAVMRWz0Nb2NxZdM3pscMNaROxtGoBO+/YMaOnypUqXJ36aLP06lQ5vm
 XB6lbcOnvTq6cLMRECwcBG1i0Icb4WBucxIUvbfGVWXNpwmBUnrY5bRJD
 /40n5OYJt1k+rY1oL84vaz9C0iADfHEbKanchfbQuL9nhd9oo+Z7Oxr4Q Q==;
X-CSE-ConnectionGUID: DNwo1f9+SBOZ+HwnDkAjyQ==
X-CSE-MsgGUID: ao21cJY3TtCpWaRNMZvldQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58527757"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58527757"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 08:43:52 -0700
X-CSE-ConnectionGUID: ulzOlJ/iRXq174OjOKfXlg==
X-CSE-MsgGUID: axzi1WERSOatXnvof+2slQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200498319"
Received: from dut4086lnl.fm.intel.com ([10.105.10.138])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 08:43:53 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 matthew.brost@intel.com, john.c.harrison@intel.com
Subject: [PATCH 2/2] drm/xe/xe_vm: Add error injection support to lock and prep
Date: Tue, 26 Aug 2025 15:43:55 +0000
Message-ID: <20250826154352.90434-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250826154352.90434-4-jonathan.cavitt@intel.com>
References: <20250826154352.90434-4-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add error injection support to the function
vm_bind_ioctl_ops_lock_and_prep.  This necessitates marking the function
as noinline.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
---
 drivers/gpu/drm/xe/xe_vm.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
index 1a8841116e40..e527c90b8c33 100644
--- a/drivers/gpu/drm/xe/xe_vm.c
+++ b/drivers/gpu/drm/xe/xe_vm.c
@@ -3201,9 +3201,10 @@ static int vm_bind_ioctl_ops_prefetch_ranges(struct xe_vm *vm, struct xe_vma_ops
 	return 0;
 }
 
-static int vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
-					   struct xe_vm *vm,
-					   struct xe_vma_ops *vops)
+static noinline int
+vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
+				struct xe_vm *vm,
+				struct xe_vma_ops *vops)
 {
 	struct xe_vma_op *op;
 	int err;
@@ -3220,6 +3221,7 @@ static int vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
 
 	return 0;
 }
+ALLOW_ERROR_INJECTION(vm_bind_ioctl_ops_lock_and_prep, ERRNO);
 
 static void op_trace(struct xe_vma_op *op)
 {
-- 
2.43.0

