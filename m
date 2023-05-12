Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDC8700942
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 15:36:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D781D10E6B4;
	Fri, 12 May 2023 13:36:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 886 seconds by postgrey-1.36 at gabe;
 Fri, 12 May 2023 11:35:14 UTC
Received: from mail-vip.corpemail.net (mail-vip.corpemail.net
 [162.243.126.186])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A82010E692;
 Fri, 12 May 2023 11:35:14 +0000 (UTC)
Received: from unicom145.biz-email.net
 by unicom145.biz-email.net ((D)) with ASMTP (SSL) id IIA00119;
 Fri, 12 May 2023 19:13:19 +0800
Received: from localhost.localdomain (10.200.104.82) by
 jtjnmail201619.home.langchao.com (10.100.2.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 19:13:18 +0800
From: Deming Wang <wangdeming@inspur.com>
To: <airlied@gmail.com>, <daniel@ffwll.ch>
Date: Fri, 12 May 2023 07:13:11 -0400
Message-ID: <20230512111311.1587-1-wangdeming@inspur.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.200.104.82]
X-ClientProxiedBy: Jtjnmail201616.home.langchao.com (10.100.2.16) To
 jtjnmail201619.home.langchao.com (10.100.2.19)
tUid: 2023512191319d0d6894cdd4f3444744f1ce04e532078
X-Abuse-Reports-To: service@corp-email.com
Abuse-Reports-To: service@corp-email.com
X-Complaints-To: service@corp-email.com
X-Report-Abuse-To: service@corp-email.com
X-Mailman-Approved-At: Fri, 12 May 2023 13:36:09 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/gvt: fix typo in comment
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
Cc: Deming Wang <wangdeming@inspur.com>, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Spelling mistake (triple letters) in comment.

Signed-off-by: Deming Wang <wangdeming@inspur.com>
---
 drivers/gpu/drm/i915/gvt/gvt.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 2d65800d8e93..c933e9a1c5ad 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -709,7 +709,7 @@ static inline void intel_gvt_mmio_set_cmd_write_patch(
  * @offset: register offset
  *
  * Returns:
- * True if GPU commmand write to an MMIO should be patched
+ * True if GPU command write to an MMIO should be patched
  */
 static inline bool intel_gvt_mmio_is_cmd_write_patch(
 			struct intel_gvt *gvt, unsigned int offset)
-- 
2.27.0

