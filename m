Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 748E69F890A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 01:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F47E10EE30;
	Fri, 20 Dec 2024 00:40:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jysG3K/x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF04010EE21;
 Fri, 20 Dec 2024 00:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734655251; x=1766191251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hk7rdBEEdwQJsvxSiF8Agykuy22vHBKPKY19LVizAUc=;
 b=jysG3K/x8ZWinnAt/qSdQ5iSpn+3z4ejRsZ19xdEExJB+vTy6lXb4vIQ
 hSyybLQTiDtLEmnLTYiSdDByRsKKQ7Jjfar4ZNu1rIdIVs+GEKYoD0uLB
 D+KVDf1CYKveCtizSTjww5zShWfEFUsYhwUqmv31sZDURcIrGdv/waL0M
 z+FuZpncI7mXUFoP6s83tKVg1AWt8u5o/Fk09expaB62u95utnvavgKcl
 OM5anFqOuaAzhLNXtH/49PxorMqPhEP8e9ag96jfMbh9nywwYuW+jVuFM
 HC7Lvf+wjGc5Mj9lhuuOi02Y+B0Xs80dONngsJWck5NFEbkNTJKLGBwgO Q==;
X-CSE-ConnectionGUID: BXUT5UrYS8Wv1AdHD5bv+g==
X-CSE-MsgGUID: z64B2twhRUerDNlwsrelZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="46576429"
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="46576429"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 16:40:51 -0800
X-CSE-ConnectionGUID: WLOxbazkSW22CTlqtASzHA==
X-CSE-MsgGUID: sY2axfmuT0ezFfAOByr4KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="103233315"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 19 Dec 2024 16:40:50 -0800
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: [PATCH i-g-t v2 1/4] tools/gputop: Define data structs for PMU stats
Date: Thu, 19 Dec 2024 16:37:31 -0800
Message-Id: <20241220003734.69174-2-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
References: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Prep work for adding PMU support in gputop.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tools/gputop.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/tools/gputop.c b/tools/gputop.c
index 43b01f566..4e3663417 100644
--- a/tools/gputop.c
+++ b/tools/gputop.c
@@ -42,6 +42,34 @@ static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "
 #define ANSI_HEADER "\033[7m"
 #define ANSI_RESET "\033[0m"
 
+struct pmu_pair {
+	uint64_t cur;
+	uint64_t prev;
+};
+
+struct pmu_counter {
+	uint64_t type;
+	uint64_t config;
+	unsigned int idx;
+	struct pmu_pair val;
+	double scale;
+	const char *units;
+	bool present;
+};
+
+#define MAX_GTS 4
+
+struct pmu_info {
+	char device_events_path[300];
+	int pmu_fd;
+	struct pmu_counter req_freq[MAX_GTS];
+	struct pmu_counter act_freq[MAX_GTS];
+	struct pmu_counter c6[MAX_GTS];
+	int num_gts;
+	int num_counters;
+	uint64_t ts_cur, ts_prev;
+};
+
 static void n_spaces(const unsigned int n)
 {
 	unsigned int i;
-- 
2.38.1

