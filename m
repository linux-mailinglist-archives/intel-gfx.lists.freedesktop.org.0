Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FFB6B433F
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 15:12:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D367910E2DD;
	Fri, 10 Mar 2023 14:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C40810E2DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 14:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678457520; x=1709993520;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i6ItQ63j+Yxjwed91mU6bmJf4zav9uIxwHbyZs+qIsE=;
 b=ntdZj2EtlM8lB+sKd70T0x6HE7UJTfMm006j5f2qqQaH4bQujt7yAdl1
 ZiL2eR/FJk1eHfUK1TjGZIfOIcpGZpl/OTXUqvgKBRDR1SEMiQpr/D28W
 BqVx/OiWuKpJH4rBVgRhRIgCGaH/SZvUuduE2/M5C++TQEx5GXaV3Nz18
 6bUTnKFNyk4z7vX/nuBbyxsL803Ykv6q0Nkdhm8/mcLIrELnYnL11p2ja
 1Z7XYHD1xiph6IuTDWSSs2s0kj12Ufs1QaYBCOIwr9P3ddGJ2Trr6WDJI
 K8bBzuVs7tbdsmN8K2zdzWUCxqchK3X2lj6WHxSVQmKvIjG9BSNLpqKie Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="336753659"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="336753659"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 06:11:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="923701871"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="923701871"
Received: from nirmoyda-desk.igk.intel.com ([10.102.42.231])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 06:11:58 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Mar 2023 15:11:38 +0100
Message-Id: <20230310141138.6592-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/active: Fix missing debug object
 activation
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

debug_active_activate() expected ref->count to be zero
which is not true anymore as __i915_active_activate() calls
debug_active_activate() after incrementing the count.

Fixes: 04240e30ed06 ("drm/i915: Skip taking acquire mutex for no ref->active callback")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v5.10+
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_active.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index a9fea115f2d2..1c3066eb359a 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -92,7 +92,7 @@ static void debug_active_init(struct i915_active *ref)
 static void debug_active_activate(struct i915_active *ref)
 {
 	lockdep_assert_held(&ref->tree_lock);
-	if (!atomic_read(&ref->count)) /* before the first inc */
+	if (atomic_read(&ref->count) == 1) /* after the first inc */
 		debug_object_activate(ref, &active_debug_desc);
 }
 
-- 
2.39.0

