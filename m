Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD2993CFBE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 10:40:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB46610E2E2;
	Fri, 26 Jul 2024 08:40:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RE8Xa3EB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62C4C10E027;
 Fri, 26 Jul 2024 08:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721983256; x=1753519256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KUIsNVfb3a0rUEWJ95cv4D+/nROly11Sq37YDXprtEY=;
 b=RE8Xa3EBPRH6fdWTHCGCtj500rotYqlBWA1jhSugHn7v2t/gQ9xk+B7b
 oo8JxclJchZanyeqN16XmqYyLMFLIHt5TZ02KwKkOBK2/oKhNnanVaHHV
 SKugC12zXYXgsA/dgLUA3rDS+IQxGWP4DkCLCj+lFncaS2FL6OoIfCw/B
 /orm34TQVpv0w0tOugO4yd3oCjN5V/epQ31gvZCrwGY96Zfd6ixSlKf1g
 qYxolnuq2KmEcJbvlYOiUsRj9dgzI24yZpQUge9+scQvykgt9NGx7FCH9
 OiVsD1WRs83WE48d2gESUZmqZvPzzm/ZvEplpmlYK8mgJsqzxlKUqsksE w==;
X-CSE-ConnectionGUID: F6THY3M8QFK7N8/BM2ACjQ==
X-CSE-MsgGUID: tGcE2NCPQ8WjFCoD/GQNSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19951833"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="19951833"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 01:40:55 -0700
X-CSE-ConnectionGUID: 04oFdMS0QeGvOCGA1+P41g==
X-CSE-MsgGUID: vD1jYG2XSW+oErLxAKVuww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="57477869"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.60])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 01:40:53 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: [PATCH i-g-t 1/2] tests/device_reset: Wait for device nodes to
 re-appear
Date: Fri, 26 Jul 2024 10:34:56 +0200
Message-ID: <20240726084022.356654-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240726084022.356654-4-janusz.krzysztofik@linux.intel.com>
References: <20240726084022.356654-4-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
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

CI sporadically reports the following issue:

(device_reset:1335) DEBUG: rebind the driver to the device
(device_reset:1335) DEBUG: reopen the device
(device_reset:1335) drmtest-DEBUG: Looking for devices to open using filter 0: sys:/sys/devices/pci0000:00/0000:00:02.0
(device_reset:1335) drmtest-DEBUG: Filter matched  | /dev/dri/renderD128
(device_reset:1335) drmtest-WARNING: No card matches the filter! [sys:/sys/devices/pci0000:00/0000:00:02.0]
(device_reset:1335) CRITICAL: Test assertion failure function healthcheck, file ../../../usr/src/igt-gpu-tools/tests/device_reset.c:393:
(device_reset:1335) CRITICAL: Failed assertion: dev->fds.dev >= 0
(device_reset:1335) CRITICAL: Last errno: 22, Invalid argument
(device_reset:1335) CRITICAL: file descriptor dev->fds.dev failed

After rebinding a DRM device driver, we now immediately start looking for
DRM devices that match our PCI filter established before unbind.  The
above messages indicate that occasionally not all device nodes are ready
by the time we are doing that.

Introduce a delay to give the kernel a chance to re-create in devtmpfs all
device nodes we are going to scan for.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11626
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/device_reset.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tests/device_reset.c b/tests/device_reset.c
index a669e1224e..8ed3ef5220 100644
--- a/tests/device_reset.c
+++ b/tests/device_reset.c
@@ -385,6 +385,8 @@ static bool is_i915_wedged(int i915)
 static void healthcheck(struct device_fds *dev)
 {
 	if (dev->fds.dev == -1) {
+		/* give the kernel a breath for re-creating device nodes in devtmpfs */
+		sleep(1);
 		/* refresh device list */
 		igt_devices_scan(true);
 		igt_debug("reopen the device\n");
-- 
2.45.2

