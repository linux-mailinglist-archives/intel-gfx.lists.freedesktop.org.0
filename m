Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7526B2B57
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 17:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE60710E19E;
	Thu,  9 Mar 2023 16:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CE6D10E19E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 16:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678381143; x=1709917143;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Pr++LT93MofPxr0vf47P94d72Fiy6Jf7JYW2a0Q+Tbk=;
 b=Y62R9CLGrcOvXRu78/F4u6RELmFw4YffaoYaBrSe6hcSSI2nTXic1ZE3
 lcvSPQxnMr1u8a6X3cTX5xzGfi0X6xGpF82XKBcDyVshcPigF0ERew0G4
 eOu/r6V1MsZnNYXOVEqdJkriEDA4j9WcSX8TkqUDTS64Qq1nB4M6GitLA
 P8gA8Kqf4pidnS+aT+n+5iNKeGkht4Raf1h0YWIxkpDfzNP8/9j9UkraY
 q0xZM+cQeG0Cn5ABa0EGbgyxMIHTZRqXnm9HUoHpDx78HAMGcpHZKq4iQ
 ARW6eIT/plCtuYDrOl4IQm1+JwecfPXckjgziDRKSR4wLSKUU2l6yAE19 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="364143017"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="364143017"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 08:59:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="670816916"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="670816916"
Received: from nirmoyda-desk.igk.intel.com ([10.102.42.231])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 08:59:00 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Mar 2023 17:58:52 +0100
Message-Id: <20230309165852.1251-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Update engine_init_common
 documentation
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change the function doc to reflect updated name.

Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ad3413242100..83532630b639 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1429,7 +1429,7 @@ create_kernel_context(struct intel_engine_cs *engine)
 }
 
 /**
- * intel_engines_init_common - initialize cengine state which might require hw access
+ * engines_init_common - initialize engine state which might require hw access
  * @engine: Engine to initialize.
  *
  * Initializes @engine@ structure members shared between legacy and execlists
-- 
2.39.0

