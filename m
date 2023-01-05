Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B8665F03E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 16:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9641F10E043;
	Thu,  5 Jan 2023 15:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 519CE10E043
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 15:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672933120; x=1704469120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Pb8afxV4bAlmjOA0dZq/Xwuhat9CaA3Xm7T/+Ng24Is=;
 b=fZbnt7Nsbq1m+yByt8gsqp7CDxmCapo6ACigOGzBIFpm59d7eL9Ix032
 MMtO0LDn1fab3h7CGohNp2W24emsUyZ4QWDCl3fdJ3i7K6SeeUyG/avO7
 VEOLRcux1kTGl8YUvqD0LVoBPXbsra7EH0xfFQijOUMtxGD+NiC0FxPdu
 0EniMxzTGNqAj//5mP+2bXufj7iAdGK2Pxhx2+C7atC32zmc1k4sEIY6Y
 mN5VmJRWzID7tAjJQtTYE4q86NsAgtiJiuCvok8A4x9euHqEX8IGeF+it
 VKaVn6egoMSv14si+5NJDFzt/qZtGwrBXuMvUepOJC0XrTYdOf/9X5G6r A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="320943581"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="320943581"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 07:38:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="648969665"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="648969665"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 07:38:37 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 16:38:31 +0100
Message-Id: <20230105153831.28256-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Update doc for __intel_wakeref_put()
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
Cc: --cc=andi.shyti@linux.intel.com, andrzej.hajda@intel.com,
 chris.p.wilson@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the __intel_wakeref_put() doc to reflect current behaviour.

Fixes: c7302f204490 ("drm/i915: Defer final intel_wakeref_put to process context")
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/intel_wakeref.h | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 4f4c2e15e736..b5e1c61b5003 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -135,14 +135,12 @@ intel_wakeref_might_get(struct intel_wakeref *wf)
  * @flags: control flags
  *
  * Release our hold on the wakeref. When there are no more users,
- * the runtime pm wakeref will be released after the @fn callback is called
- * underneath the wakeref mutex.
+ * the runtime pm wakeref will be released after the intel_wakeref_ops->put()
+ * callback is called underneath the wakeref mutex.
  *
- * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
- * is retained and an error reported.
+ * Note that intel_wakeref_ops->put() is allowed to fail, in which case the
+ * runtime-pm wakeref is retained.
  *
- * Returns: 0 if the wakeref was released successfully, or a negative error
- * code otherwise.
  */
 static inline void
 __intel_wakeref_put(struct intel_wakeref *wf, unsigned long flags)
-- 
2.38.0

