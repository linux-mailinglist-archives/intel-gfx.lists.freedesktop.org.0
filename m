Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E2B2DCF95
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 11:38:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87EFF6E25B;
	Thu, 17 Dec 2020 10:38:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959EC6E25B;
 Thu, 17 Dec 2020 10:38:28 +0000 (UTC)
IronPort-SDR: d/1zEPMuKl9ACkAlp5Yl4MF276wfFpWWitYXS27dFhpIK4ZT8F8XD5iOpQJPnOsWJr0/VrUHnd
 Wi64V65tuU3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="171725565"
X-IronPort-AV: E=Sophos;i="5.78,426,1599548400"; d="scan'208";a="171725565"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 02:38:28 -0800
IronPort-SDR: 3LVOsPcwMkhISDxcig3IMkF8sMWj5BvIA+4SWRS3Kg/zSptm6qP0DR6Q3d+4dAflHufOAx/FaF
 l/2EjpIEtP8g==
X-IronPort-AV: E=Sophos;i="5.78,426,1599548400"; d="scan'208";a="339243388"
Received: from acherneg-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.210.48])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 02:38:26 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 17 Dec 2020 10:38:12 +0000
Message-Id: <20201217103812.1174024-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201217103812.1174024-1-tvrtko.ursulin@linux.intel.com>
References: <20201217103812.1174024-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] intel_gpu_top: Fix interactive mode
 on serial console
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

TIOCGWINSZ returns zero columns and rows on serial so lets assume 80x24.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index d1149eb8e14d..72ad7cbe9a8c 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1640,6 +1640,11 @@ int main(int argc, char **argv)
 		} else if (ioctl(0, TIOCGWINSZ, &ws) != -1) {
 			con_w = ws.ws_col;
 			con_h = ws.ws_row;
+			if (con_w == 0 && con_h == 0) {
+				/* Serial console. */
+				con_w = 80;
+				con_h = 24;
+			}
 		}
 
 		pmu_sample(engines);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
