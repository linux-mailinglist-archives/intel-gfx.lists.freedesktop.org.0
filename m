Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A0B17C063
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 15:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CBF6E453;
	Fri,  6 Mar 2020 14:38:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D993D89B11;
 Fri,  6 Mar 2020 14:38:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 06:38:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="230084884"
Received: from srware-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.25.112])
 by orsmga007.jf.intel.com with ESMTP; 06 Mar 2020 06:38:53 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  6 Mar 2020 14:38:49 +0000
Message-Id: <20200306143850.673-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] gem_wsim: Fix calibration for special
 VCS engine name
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

VCS is a special (non-physical) engine id/name which means load-balancing
in legacy workloads. As such when i915 balancing is not enabled it needs
to have a calibration as well.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index a1bbcef031bb..c196b25317ce 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -3353,6 +3353,8 @@ int main(int argc, char **argv)
 						engine_calib_map[eng] = calib_val;
 						if (eng == RCS)
 							engine_calib_map[DEFAULT] = calib_val;
+						else if (eng == VCS1 || eng == VCS2)
+							engine_calib_map[VCS] = calib_val;
 						has_nop_calibration = true;
 					}
 				} else {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
