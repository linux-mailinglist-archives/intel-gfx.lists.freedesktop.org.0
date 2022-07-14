Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78818574D06
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 14:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F62311283A;
	Thu, 14 Jul 2022 12:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D159A11283A;
 Thu, 14 Jul 2022 12:06:34 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4FE26B824E2;
 Thu, 14 Jul 2022 12:06:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B28FC341CE;
 Thu, 14 Jul 2022 12:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657800390;
 bh=KmRjlo5sbsszPv9K0jtghWeUlvqMrr55yKQvb6zPzNs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JSjp5jx6cfCt///J1mo3XF+62gpUWYsvyei5+wgUOyi1B4GEPSi3FNgzxaO+43X30
 dy9gGoFW4i556U0vDALNE3JH+GUIUkI+6Ajg12NgdVK0EFd+0Ljp3eNA6e/3yRTq0o
 ol1ONHJpYnXa7v1Cr0dXzU50cjxyLYXae4e3Jc8cBtO8wWcyBNykHLH1lDoth2bShZ
 1n2gKfMTWEXeK95IdhFjyqUiKXle8E1ZD2LsZ9Thswxq2E91MUHuytjx+NsnRslYFQ
 ApJO6ZgwdNXNin9b1yGWB1OiyIK5XMV4TJLSbSR5eVMZlplvw0q/jhkTuJ1jvnqpEl
 nf1kWQdUFsNWA==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oBxbv-0059sY-Q8;
 Thu, 14 Jul 2022 13:06:27 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Thu, 14 Jul 2022 13:06:07 +0100
Message-Id: <1ed105f9fd605e1ccdaecc18c394c17eaec1035e.1657800199.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657800199.git.mchehab@kernel.org>
References: <cover.1657800199.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/21] drm/i915/gt: document
 with_intel_gt_pm_if_awake()
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris.p.wilson@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a kernel-doc markup to document this new macro.

Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v2 00/21] at: https://lore.kernel.org/all/cover.1657800199.git.mchehab@kernel.org/

 drivers/gpu/drm/i915/gt/intel_gt_pm.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index a334787a4939..4d4caf612fdc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -55,6 +55,13 @@ static inline void intel_gt_pm_might_put(struct intel_gt *gt)
 	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
 	     intel_gt_pm_put(gt), tmp = 0)
 
+/**
+ * with_intel_gt_pm_if_awake - if GT is PM awake, get a reference to prevent
+ *	it to sleep, run some code and then put the reference away.
+ *
+ * @gt: pointer to the gt
+ * @wf: pointer to a temporary wakeref.
+ */
 #define with_intel_gt_pm_if_awake(gt, wf) \
 	for (wf = intel_gt_pm_get_if_awake(gt); wf; intel_gt_pm_put_async(gt), wf = 0)
 
-- 
2.36.1

