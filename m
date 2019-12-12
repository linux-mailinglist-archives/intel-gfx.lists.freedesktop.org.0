Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0992C11CD89
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 13:52:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D9EA6ED38;
	Thu, 12 Dec 2019 12:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B9F86ED3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 12:52:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 04:52:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="225912167"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga002.jf.intel.com with ESMTP; 12 Dec 2019 04:52:17 -0800
Received: from mperes-DESK.fi.intel.com (mperes-desk.fi.intel.com
 [10.237.72.73])
 by linux.intel.com (Postfix) with ESMTP id E3F36580409;
 Thu, 12 Dec 2019 04:52:16 -0800 (PST)
From: Martin Peres <martin.peres@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:51:51 +0200
Message-Id: <20191212125151.118946-2-martin.peres@linux.intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212125151.118946-1-martin.peres@linux.intel.com>
References: <20191212125151.118946-1-martin.peres@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] MAINTAINERS: update the i915 bug filing
 instruction
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reflects the fact that freedesktop.org's bugzilla instance is no
more, and bugs got migrated to gitlab.freedesktop.org/drm/intel.

Signed-off-by: Martin Peres <martin.peres@linux.intel.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index c6278faccdc8..e1db0a8b0904 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8313,7 +8313,7 @@ M:	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
 M:	Rodrigo Vivi <rodrigo.vivi@intel.com>
 L:	intel-gfx@lists.freedesktop.org
 W:	https://01.org/linuxgraphics/
-B:	https://01.org/linuxgraphics/documentation/how-report-bugs
+B:	https://gitlab.freedesktop.org/drm/intel/wikis/home
 C:	irc://chat.freenode.net/intel-gfx
 Q:	http://patchwork.freedesktop.org/project/intel-gfx/
 T:	git git://anongit.freedesktop.org/drm-intel
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
