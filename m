Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 251094A5FE2
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 16:20:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44CC610E679;
	Tue,  1 Feb 2022 15:20:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 417D110E679;
 Tue,  1 Feb 2022 15:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643728808; x=1675264808;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PNhrJrS75NKLO4vityCGIW7qwbRLrGEYg7rgUpxWM8M=;
 b=LWsDn3x+8BO8ZQ2BBCP67LuhrnIN1uqOTapPB6mFVsnZrdWR2ilXTOKt
 joAvhc7T2rM1vt3P2EXV/PfP9K1xRt6ss7nX8jZ8dAz0A6tW4TOuNw+Dw
 7KIOTqZcG1BbT7Xc2A98kV+kuVxM173q9rP0hvKwtfWdFruZ2km229VlS
 Ur79aBM7Zb5mRFraNTmj4VXIJxzEqDq/jkxYcnfAQiWGavWe5I6wh2nPB
 WwW7igJtlPCajiBxh2Dl08nwdC1LKHXzzWvzMC5YVNZujNjHJQkk+eMUq
 RGrwVx5QZ7VrTBHjZhxfzxa0OZLCfEJZJkN1Dht+k8gG+1mWQtoZWANfN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="235105811"
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="235105811"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 07:19:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="482415341"
Received: from bconlan-mobl1.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.212.46])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 07:19:55 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  1 Feb 2022 15:19:46 +0000
Message-Id: <20220201151946.258360-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Improve error message when
 insufficient privilege
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Print out end user friendly help text when the running user has
insufficient privilege for accessing system wide performance counters.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Issue: https://gitlab.freedesktop.org/drm/intel/-/issues/5018
---
 tools/intel_gpu_top.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 81c724d1fe1c..0404a5881b40 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1761,6 +1761,15 @@ int main(int argc, char **argv)
 	if (ret) {
 		fprintf(stderr,
 			"Failed to initialize PMU! (%s)\n", strerror(errno));
+		if (errno == EACCES && geteuid())
+			fprintf(stderr,
+"\n"
+"When running as a normal user CAP_PERFMON is required to access performance\n"
+"monitoring. See \"man 7 capabilities\", \"man 8 setcap\", or contact your\n"
+"distribution vendor for assistance.\n"
+"\n"
+"More information can be found at 'Perf events and tool security' document:\n"
+"https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
 		ret = EXIT_FAILURE;
 		goto err;
 	}
-- 
2.32.0

