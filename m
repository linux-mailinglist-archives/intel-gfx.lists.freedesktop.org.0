Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2704A034D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 23:10:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2097F10E16A;
	Fri, 28 Jan 2022 22:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B700710E16A
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 22:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643407831; x=1674943831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o6HuYlnP32PX1lqgHE1fsvZCwjUKZXMxGSqa7+v9E8k=;
 b=COIT096c3NQnPUSzJHwJWNMzKlsSWGOPqZCssiAN3s9DypDPcQX1kT8O
 uaqc1iFCWtX5Wrw8MxOF7lEcgpxoh30yyuZFUBS9m4vka8/jlPl5BXK+v
 YYhosl5TTq04uIWzMwTVF6NGEtMSbgiGyL/OlUBsXty+M1Dbk4NsWiwX2
 NVuvDe7TnaUeTmQjNfeR3gK998XLAfDDZ0jnQosV61nPOub2s0XsdiqrP
 Va3hbFt75UTZaovCGBJMtjy8stpj3yIZ7uKLqhtEQo4wW71nGQHf8AiUu
 yPLI3g3+oioNJV6/QEbbDI1H7KxddRYWv5X68/6XodgK8hNneLKFyuYP4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="247155723"
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="247155723"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 14:10:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="496265942"
Received: from bainsko-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.109.18])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 14:10:29 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 14:10:20 -0800
Message-Id: <20220128221020.188253-5-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220128221020.188253-1-michael.cheng@intel.com>
References: <20220128221020.188253-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/: Re-work clflush_write32
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com, matthew.auld@intel.com,
 mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use drm_clflush_virt_range instead of clflushopt and remove the memory
barrier, since drm_clflush_virt_range takes care of that.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 498b458fd784..0854276ff7ba 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1332,10 +1332,8 @@ static void *reloc_vaddr(struct i915_vma *vma,
 static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
 {
 	if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
-		if (flushes & CLFLUSH_BEFORE) {
-			clflushopt(addr);
-			mb();
-		}
+		if (flushes & CLFLUSH_BEFORE)
+			drm_clflush_virt_range(addr, sizeof(addr));
 
 		*addr = value;
 
@@ -1347,7 +1345,7 @@ static void clflush_write32(u32 *addr, u32 value, unsigned int flushes)
 		 * to ensure ordering of clflush wrt to the system.
 		 */
 		if (flushes & CLFLUSH_AFTER)
-			clflushopt(addr);
+			drm_clflush_virt_range(addr, sizeof(addr));
 	} else
 		*addr = value;
 }
-- 
2.25.1

