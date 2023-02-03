Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50728689794
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:16:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3432F10E776;
	Fri,  3 Feb 2023 11:16:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09FCC10E763;
 Fri,  3 Feb 2023 11:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675423006; x=1706959006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P2waiUjSSpkxcxmZPg8GNGr5X5DhoLCZaXfAXxFMtss=;
 b=lVr5vvp9EdDzbimLk9K4aM6/mLvgBhxrBNewrhtGn3bwoXJX4LrjNXtV
 3X3ir1aXJaOSk67BzAPYakEq7QxB1WPjA7kUZOePxeXNlewLU/WxxRT/f
 WjejjwGTySem1WJa9r5lNgJJkWIWcZxweVHqZfCZpIwnuzZ+W7tryv4qJ
 suCtOPNzhziFSqgzogqgl2q8SkjVsybeivSEx+HFiEwLgTqvIkWqAI4oD
 6G/b8QP+JfQmdXucPHLGVBFpfKXGeHr1gLzpl6LVETIUhWViz8pDrFa7+
 L7PLF/tgpjiCUSa+V0EuPrcxVvsooAf3rDl5c5aiSWNuZsqCdjIRKMJo2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="308363118"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="308363118"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:16:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="698036038"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="698036038"
Received: from lhime-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.220.100])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:16:44 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri,  3 Feb 2023 11:16:34 +0000
Message-Id: <20230203111636.4138202-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203111636.4138202-1-tvrtko.ursulin@linux.intel.com>
References: <20230203111636.4138202-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/3] intel_gpu_top: Do not repeat header
 lines in non-interactive output
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
Cc: Caleb Callaway <caleb.callaway@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

If output is redirected to a file, or a pipe, lets not repeat the headers
because that can usually mean user is trying to parse the data later and
so repeated headers are a hindrance.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Caleb Callaway <caleb.callaway@intel.com>
---
 tools/intel_gpu_top.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 0a1de41b3374..e2a7f4753099 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1391,6 +1391,7 @@ static unsigned int stdout_level;
 
 #define STDOUT_HEADER_REPEAT 20
 static unsigned int stdout_lines = STDOUT_HEADER_REPEAT;
+static bool stdout_header_repeat;
 
 static void
 stdout_open_struct(const char *name)
@@ -1580,16 +1581,22 @@ static const struct print_operations term_pops = {
 
 static bool print_groups(struct cnt_group **groups)
 {
-	unsigned int headers = stdout_lines % STDOUT_HEADER_REPEAT + 1;
+	static bool headers_printed = false;
 	bool print_data = true;
 
-	if (output_mode == STDOUT && (headers == 1 || headers == 2)) {
-		for (struct cnt_group **grp = groups; *grp; grp++)
-			print_data = pops->print_group(*grp, headers);
+	if (output_mode == STDOUT &&
+	    (stdout_header_repeat || !headers_printed)) {
+		unsigned int headers = stdout_lines % STDOUT_HEADER_REPEAT + 1;
+
+		if (headers == 1 || headers == 2)
+			for (struct cnt_group **grp = groups; *grp; grp++)
+				print_data = pops->print_group(*grp, headers);
+
+		headers_printed = print_data;
 	}
 
 	for (struct cnt_group **grp = groups; print_data && *grp; grp++)
-		pops->print_group(*grp, false);
+		pops->print_group(*grp, 0);
 
 	return print_data;
 }
@@ -2512,6 +2519,8 @@ int main(int argc, char **argv)
 		out = stdout;
 	}
 
+	stdout_header_repeat = output_mode == STDOUT && isatty(fileno(out));
+
 	if (signal(SIGINT, sigint_handler) == SIG_ERR)
 		fprintf(stderr, "Failed to install signal handler!\n");
 
-- 
2.34.1

