Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12893667CEF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 18:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5130810E323;
	Thu, 12 Jan 2023 17:47:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25D410E31F;
 Thu, 12 Jan 2023 17:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673545662; x=1705081662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H54qSIyekzhmo/TxBRoVw6YjytfjL7u3pgLCyX2Ft+g=;
 b=iV3wdRBQu+zc5ne5DFqNkzklaf87w6WWS7eOJlyevkT3CIOUedvQoGWf
 jnV2H0U4TEdm/+d2uXzO8HKOWrPTbkB3x1QjF8R4a8TYmhU6wQfiGK7/W
 q/Bxws4ngzv32bPpQZT3nTmuADnr1KSx/QDAeY8d6iEwcWQGG4YnuLYGJ
 9HUFxUW+QtWikeTZh9h9LFsELF8zfsQGqiXTNdZZQGwMit6gyZP8KTabn
 j8P/W9Mw2e73OEOl963QvCHwcUYhAP3yqZiEpRcL+c873/V1Xf9PYL+Kq
 L8SvTV/SxFy2USGpA58SSEcqP7gVBs5l7rXZeR/VI22cZlmNEFlt4qAGb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="321471421"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="321471421"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="635468288"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="635468288"
Received: from jacton-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.195.171])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:39 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 17:47:28 +0000
Message-Id: <20230112174730.1101192-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/4] intel_gpu_top: Automatically enclose
 JSON output into brackets
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Parsers need the whole output enclosed into square brackets so every
period sample becomes an array element.

So far we have been suggesting this in the man page but we can trivially
make the tool output that itself.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
---
 man/intel_gpu_top.rst | 2 +-
 tools/intel_gpu_top.c | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index b0c95446a011..3317e04816b4 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -85,7 +85,7 @@ Filter types: ::
 JSON OUTPUT
 ===========
 
-To parse the JSON as output by the tool the consumer should wrap its entirety into square brackets ([ ]). This will make each sample point a JSON array element and will avoid "Multiple root elements" JSON validation error.
+JSON output will be correctly terminated when the tool cleanly exits, otherwise one square bracket needs to be added before parsing.
 
 LIMITATIONS
 ===========
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 6de8a164fcff..c4d98de4fe31 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2597,6 +2597,9 @@ int main(int argc, char **argv)
 	scan_clients(clients, false);
 	codename = igt_device_get_pretty_name(&card, false);
 
+	if (output_mode == JSON)
+		printf("[\n");
+
 	while (!stop_top) {
 		struct clients *disp_clients;
 		bool consumed = false;
@@ -2683,6 +2686,9 @@ int main(int argc, char **argv)
 			usleep(period_us);
 	}
 
+	if (output_mode == JSON)
+		printf("]\n");
+
 	if (clients)
 		free_clients(clients);
 
-- 
2.34.1

