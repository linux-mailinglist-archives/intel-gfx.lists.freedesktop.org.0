Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD68667CEE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 18:47:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C3D10E31E;
	Thu, 12 Jan 2023 17:47:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D721B10E1A9;
 Thu, 12 Jan 2023 17:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673545659; x=1705081659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SdqECjK18X4s1Hdgg9NXuRf4k+LudJfR1Lia9IX2/8M=;
 b=S0ee24ZK+/+YmJXiRvGLq/zelFyTmZ4mo8Oo0dcT2ZLi2RE2LJbOhZ5r
 O6hTdbILhV+ybSMeZyfI0sDwjizWiYoYD21qZLy/Xta7/fZywvWoA4hRL
 j89cmeH7W7LqFIseQkC/dwQLKkkF0l9PwJ8JQTg9PtUH/OZafj+5xk0mH
 3U28RQaKiF/4O2DcD2eJX9vc5hUvmr15HQQ6AJ7AcDFnGzcrTFKOarcLA
 MLIlV6eLOuVvAAkvkWV0B4f6G416C7HiWdTpx21HVXkiH4QC03CTgCX1p
 /U1IOp0MZQcGr5qTIgigN47Md0G19AGI3av3CLd3ob5XqWigWTI4IMK7U g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="321471406"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="321471406"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="635468281"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="635468281"
Received: from jacton-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.195.171])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:37 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 17:47:27 +0000
Message-Id: <20230112174730.1101192-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/4] intel_gpu_top: Fix man page formatting
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

New lines are not respected when rst2man generates the page so try to work
around that by followin advice from the Internet.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 man/intel_gpu_top.rst | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 748c7740c800..b0c95446a011 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -53,13 +53,14 @@ RUNTIME CONTROL
 
 Supported keys:
 
-    'q'    Exit from the tool.
-    'h'    Show interactive help.
-    '1'    Toggle between aggregated engine class and physical engine mode.
-    'n'    Toggle display of numeric client busyness overlay.
-    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
-    'i'    Toggle display of clients which used no GPU time.
-    'H'    Toggle between per PID aggregation and individual clients.
+|
+|    'q'    Exit from the tool.
+|    'h'    Show interactive help.
+|    '1'    Toggle between aggregated engine class and physical engine mode.
+|    'n'    Toggle display of numeric client busyness overlay.
+|    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
+|    'i'    Toggle display of clients which used no GPU time.
+|    'H'    Toggle between per PID aggregation and individual clients.
 
 DEVICE SELECTION
 ================
-- 
2.34.1

