Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99502934A97
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A95710E623;
	Thu, 18 Jul 2024 08:59:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/uxGgcl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57D1810E623;
 Thu, 18 Jul 2024 08:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721293180; x=1752829180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VYLAr990tEkPuXGapjWuMjcZ6vMwHh5OxGpP5ikC3uU=;
 b=P/uxGgclfgK1OuJ74lVFSj2uFg6+iQio0t4ZWpYPayOpRMLV2cOvoiZf
 VMU2i8Wn08hmxMw96rk5O73VId76FrJmMnHz0VBL0xx0Gj+QLiF0vSnKr
 WEgV07u7uqknQ7cox2MzL+kAS/gEkMufuXxQyttLbiYGOsuqDpXZbKlxd
 c10BdOX7HUahCBo30PocZ5ssAgQSFqP7ZXDYeMn8NfNtA4ZPlN2x8uRvM
 1Oqos0I9vkNgjSq9EpvSO530fNYTSYdOOdm5PnC1/t3/mL2YlrOR3qWud
 d0lCoLBqhmx533St7RwDxcNzwJ0SAfumD8v8JoEBADCCg/65P7908tiEt Q==;
X-CSE-ConnectionGUID: kflr+59TT4mQb3tEfsir7A==
X-CSE-MsgGUID: Xt28Wj6RQxW5z9OYTZe3pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="30001929"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="30001929"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:40 -0700
X-CSE-ConnectionGUID: h/v0MyfFSSWqNSkltE23uQ==
X-CSE-MsgGUID: +IsBVdzISza+OuKnrUwPpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="73929463"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.184])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:38 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v4 3/5] lib/gem_engine_topology: Fix premature break
 from primary find loop
Date: Thu, 18 Jul 2024 10:55:14 +0200
Message-ID: <20240718085912.15434-10-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
References: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
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

When looking for a primary counterpart of a render device, we try to open
each primary minor.  When one fails, we should continue rather then break,
since contiguity of minor numbers assigned to devices is not guaranteed.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/i915/gem_engine_topology.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
index c878e95f08..8589af5c1a 100644
--- a/lib/i915/gem_engine_topology.c
+++ b/lib/i915/gem_engine_topology.c
@@ -479,7 +479,7 @@ static int __open_primary(int dir)
 		sprintf(buf, "/sys/dev/char/%d:%d", major, minor);
 		dir = openat(fd, buf, O_RDONLY);
 		if (dir < 0)
-			break;
+			continue;
 
 		if (readlinkat(dir, "device", device, sizeof(device)) > 0 &&
 		    !strcmp(device, target))
-- 
2.45.2

