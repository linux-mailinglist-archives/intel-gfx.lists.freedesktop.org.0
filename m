Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1B27C4D5F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7864210E5BF;
	Wed, 11 Oct 2023 08:39:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F0E010E5BA;
 Wed, 11 Oct 2023 08:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697013535; x=1728549535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wf02qoXVdjnJGDlfKvDeTnbCTJPsQ8sJHvRemqn+kcA=;
 b=i/ZSy9brUKVg0Zqs/VH5SPc1wI9nLth8EhKXF7BLYGMqtyoxF/FpIXZd
 KcwmUCSSvnWv/f0aED0eAaCExR1iXCj6lKBfOgiK+BX2q9DfSYVaWS4He
 4ET+AFRVR/h5pL+jIgX7d5ZG7WOkSen/wDFIpMR0jZ+Li+CG03fo9wWkA
 CmBGM8iGcAqLKFW2HScABjD93aNLlz1807H0ipT3F2LTTLyCreuf/pxMc
 qvaPK2eto32uH0SP4kmQkSUO4pruhJHzgL87lnPEtwLXcjKuyOn0DgMLM
 PwW+a2rz8BWdWVRiTH6sPe8mpx3syClkr7v3QZRxRvivR14mHqcdVE5Eb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383473317"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="383473317"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:38:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="877584896"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="877584896"
Received: from cjodwyer-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.194.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:38:53 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 09:38:45 +0100
Message-Id: <20231011083845.798413-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011083845.798413-1-tvrtko.ursulin@linux.intel.com>
References: <20231011083845.798413-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/4] tools/intel_gpu_top: Handle narrow
 terminals more gracefully
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Instead of asserting just skip trying to print columns when terminal is
too narrow.

At the same time fix some type confusion to fix calculations going huge.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Closes: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/143
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tools/intel_gpu_top.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 006879c4ae67..00506c63db4e 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -972,7 +972,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
 	int bar_len, i, len = max_len - 2;
 	const int w = 8;
 
-	assert(max_len > 0);
+	if (len < 2) /* For edge lines '|' */
+		return;
 
 	bar_len = ceil(w * percent * len / max);
 	if (bar_len > w * len)
@@ -986,6 +987,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
 		printf("%s", bars[i]);
 
 	len -= (bar_len + (w - 1)) / w;
+	if (len < 1)
+		return;
 	n_spaces(len);
 
 	putchar('|');
@@ -2001,8 +2004,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 				 4 : clients->max_name_len; /* At least "NAME" */
 
 	if (output_mode == INTERACTIVE) {
-		unsigned int num_active = 0;
-		int len;
+		int len, num_active = 0;
 
 		if (lines++ >= con_h)
 			return lines;
-- 
2.39.2

