Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAABD6CBAEC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 11:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C349410E45B;
	Tue, 28 Mar 2023 09:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB7B10E45B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 09:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679995865; x=1711531865;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iun8ooTFBbRfXUN863UoJCwJfXFvX4QoSgISSctPvsA=;
 b=GqbkjmZLtNaOvjc17E5Y1Q4Alffi4vfyKEx5dbwNFYp+xBkT8FvA+trL
 tVKVtQq8W7B7In1pPppwsgLNbDcCNJUAkfbD8ovHXz5RGZ07Vb/Wdy/NN
 qyxLEuEqiT+hig3t8nOa5a6Y38zVLRtPcmYcHPzH9Uf3sn/ALSLQKM/vE
 raYGrWjFFsESBI3iMlRXW9mNcMvT2Q00Fwn8Rjh6CrFHW1N8hrLLaXlyX
 EGKYxxEm7FTu+ARMZ101neZCNmjTHi9NrtuDHEhy3Hzk/QqZn0m5kJQ0K
 p0v8a1mDWbe3n6ebiu5dGBFJdSj/+104+43fBQQYcpsoV6JxMVwPEj1X5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="403129637"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403129637"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 02:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686343646"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686343646"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 02:31:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 12:31:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 12:30:41 +0300
Message-Id: <20230328093042.7469-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
References: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/psr: Include PSR_PERF_CNT in
 debugfs output on all platforms
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The fact that DC states reset the PSR perofrmance counter
is no reason not to include it in the debug output.
But let's keep the comment there to remind people about
that caveat.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 142cd174475e..807bf1b77ca7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2819,12 +2819,10 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	/*
 	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
 	 */
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_PERF_CNT(intel_dp->psr.transcoder));
-		seq_printf(m, "Performance counter: %u\n",
-			   REG_FIELD_GET(EDP_PSR_PERF_CNT_MASK, val));
-	}
+	val = intel_de_read(dev_priv,
+			    EDP_PSR_PERF_CNT(intel_dp->psr.transcoder));
+	seq_printf(m, "Performance counter: %u\n",
+		   REG_FIELD_GET(EDP_PSR_PERF_CNT_MASK, val));
 
 	if (psr->debug & I915_PSR_DEBUG_IRQ) {
 		seq_printf(m, "Last attempted entry at: %lld\n",
-- 
2.39.2

