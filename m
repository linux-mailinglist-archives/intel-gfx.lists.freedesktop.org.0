Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9C5667CF1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 18:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B41110E326;
	Thu, 12 Jan 2023 17:47:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5EA510E324;
 Thu, 12 Jan 2023 17:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673545667; x=1705081667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ILgqxmkG7xi2TIdzfakuV56plI8HVj7HODrUz0W83z8=;
 b=ZmMpCr/jJTy5NS7rioIMwUI9D+2P8uvyiLOupPUXrUDTBBhJt90iTgdg
 6Tl46g4bJsGj6Bak0XDK/4BpN6fkUbr8igraQB4UyDPmAjxQSUcsSlm3I
 DKwNedM27GNoohhTdVEas0sSPPKZ/CD9IX24BvovhvuxbX5Tz4tcFENcU
 IPj7B7AAxPp0GQpADkjvUP22q4Rgou1v1Zl8YCd6lU/F8QFQm1svSq09q
 4HGmTNKQqDmYIUz+neQsmk/PJScvPtD7xJOm+3bb1Ml+y7Xv9UvCxfnqz
 U2D02dMpRF+OxGItI9kFH+2NPtwr9EsskpKlgrIHTUkB/PAVn1SQNPUqX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="321471446"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="321471446"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="635468304"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="635468304"
Received: from jacton-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.195.171])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:42 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 17:47:30 +0000
Message-Id: <20230112174730.1101192-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/4] intel_gpu_top: Aggregate engine
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

