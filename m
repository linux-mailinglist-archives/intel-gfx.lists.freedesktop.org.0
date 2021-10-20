Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 535A8434296
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 02:29:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5319A6E213;
	Wed, 20 Oct 2021 00:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C336E213
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 00:29:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="228534866"
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="228534866"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:29:48 -0700
X-IronPort-AV: E=Sophos;i="5.87,165,1631602800"; d="scan'208";a="532441058"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 17:29:48 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Jouni Hogander <jouni.hogander@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 19 Oct 2021 17:35:58 -0700
Message-Id: <20211020003558.222198-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211020003558.222198-1-jose.souza@intel.com>
References: <20211020003558.222198-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add warn_on in
 intel_psr_pause()
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

Right now the only user of psr_pause/resume is intel_cdclk but
additional users will be added in the future and we may need
do reference counting for PSR pause and resume, for now only adding a
warn_on so this cases do not go unnoticed.

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Jouni Hogander <jouni.hogander@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7a205fd5023bb..49c2dfbd40554 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1346,6 +1346,7 @@ void intel_psr_disable(struct intel_dp *intel_dp,
  */
 void intel_psr_pause(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 
 	if (!CAN_PSR(intel_dp))
@@ -1358,6 +1359,9 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 		return;
 	}
 
+	/* If we ever hit this, we will need to add refcount to pause/resume */
+	drm_WARN_ON(&dev_priv->drm, psr->paused);
+
 	intel_psr_exit(intel_dp);
 	intel_psr_wait_exit_locked(intel_dp);
 	psr->paused = true;
-- 
2.33.1

