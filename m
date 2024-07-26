Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FB093CFBF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 10:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1899B10E949;
	Fri, 26 Jul 2024 08:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PN3S0dEa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2553010E2E2;
 Fri, 26 Jul 2024 08:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721983257; x=1753519257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8xWWu+PWqebv8qoXzp8Wljp1LNvMa6pBjufA7QTtDlo=;
 b=PN3S0dEaz+ZnihzkrdzWoQrOnj7LcELnZ+5YFsSpiK2T8+VHtGHn4SnG
 7etN6vqalcjkMM7ZEDrLHlW/ypyRMfCbMpH/pLr105YTe+0HrdV4sKxFH
 zYIk/gthsKF9SEvRTpLBhWYobfFyv4oXUXNlzw6c0lvtkPZ4V7Rx8QFUw
 G8WK3dyFE8xN/1zrV+XtxTID/lU8aJDKz0its32XSvC3nCHq/4s+p/Br3
 5BlJ1FK7lMsUwFKCq5SqaveMLK5NnP30yeu6CA8rryOBhKBf4sq8S6p2d
 oAOEiDpg1VxRuK9IaWKZbd5MDu+ISVDF+WbWsPSSnL/iNgQOq64ZQtY19 Q==;
X-CSE-ConnectionGUID: 7MsALi2WSDCnjzMFEFhwGw==
X-CSE-MsgGUID: sQXwcpXRQvuGB2mFRny+lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19951836"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="19951836"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 01:40:57 -0700
X-CSE-ConnectionGUID: Z+i8Aqa7RpyAAXwhziDt+w==
X-CSE-MsgGUID: yiT5TwDVTeuKap8S8TDo0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="57477870"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.60])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 01:40:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: [PATCH i-g-t 2/2] tests/core_hotunplug: Fix inline comment on missing
 device nodes
Date: Fri, 26 Jul 2024 10:34:57 +0200
Message-ID: <20240726084022.356654-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240726084022.356654-4-janusz.krzysztofik@linux.intel.com>
References: <20240726084022.356654-4-janusz.krzysztofik@linux.intel.com>
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

The comment incorrectly blames udev for being responsible for delays in
re-creation of device nodes after driver rebind.  While that could be
true many years ago, nowadays that's the role of kernel devtmpfs.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/core_hotunplug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
index db7a5c5e84..145fe141ed 100644
--- a/tests/core_hotunplug.c
+++ b/tests/core_hotunplug.c
@@ -480,7 +480,7 @@ static void node_healthcheck(struct hotunplug *priv, unsigned flags)
 
 static bool healthcheck(struct hotunplug *priv, bool recover)
 {
-	/* give udev some time to recreate device nodes before we continue */
+	/* give devtmpfs some time to recreate device nodes before we continue */
 	sleep(1);
 
 	/* device name may have changed, rebuild IGT device list */
-- 
2.45.2

