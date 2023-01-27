Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8153867E2D2
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 12:13:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C282E10E45F;
	Fri, 27 Jan 2023 11:13:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B412810E45A;
 Fri, 27 Jan 2023 11:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674817976; x=1706353976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/qHkGQFLJZlAAXAn7zVWr+8FIvWlDhfkV9s87Hkkg9Y=;
 b=gWrBlhMUv7SaQKIxBsU5Pbih9PQUG1sURHwTdpVsTadqd+Cg3Cj8XP1s
 QR9Uv7/qUx63V1UDw4j9f9HiBvr/Xa9uo1cI4TYckAGHq0hzdgzsGiq2W
 K1yMLFnlImChtgnQyzfK0t2qP/MMcoIlvWMyeSfWf4bOQ+H2kKVgzLmnr
 bONfIlseis7OM2qZpbDYXk1vc0rYVan1atGVYnloOxRIb4Q0SmafpRL68
 CPxOoM3psZBZrnzgm/ctRMdcI2uf/1Nkx985agt6KddL8o7oJYoFu56TE
 JfHPfl+TXIYvpEHVK+f81U8desDJ4gJRZYbjOfhw4ibtK8a/xuVaFVBGC w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328352657"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="328352657"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908638131"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="908638131"
Received: from jgeary-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:54 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 11:12:39 +0000
Message-Id: <20230127111241.3624629-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/6] intel_gpu_top: Aggregate engine
 classes in all output modes
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

Use the same default for stdout and JSON output modes as it is for
interactive.

Previously added command line switch can be used to go back to showing all
physical engines.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tools/intel_gpu_top.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index e91b47baf72b..7aa233570463 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2509,11 +2509,12 @@ int main(int argc, char **argv)
 	if (signal(SIGINT, sigint_handler) == SIG_ERR)
 		fprintf(stderr, "Failed to install signal handler!\n");
 
+	class_view = !physical_engines;
+
 	switch (output_mode) {
 	case INTERACTIVE:
 		pops = &term_pops;
 		interactive_stdin();
-		class_view = !physical_engines;
 		break;
 	case STDOUT:
 		pops = &stdout_pops;
-- 
2.34.1

