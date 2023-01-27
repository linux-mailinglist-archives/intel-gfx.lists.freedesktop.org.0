Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A825667E2D0
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 12:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D9910E459;
	Fri, 27 Jan 2023 11:12:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F5110E454;
 Fri, 27 Jan 2023 11:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674817971; x=1706353971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HfP297QW8gIkpCYO2BzVqMKCU4NmSe3qOUmwVqCBKVY=;
 b=AOvh6kldbekhwZIIaEjbe2EqpxFaljvatmQW7IhjJiRf9fNMGWKGo/3p
 3BT0nvc31nFQWYktJd4bTqJWginvdoywxPlOYHstKxKAs6Qz0d++2jEjA
 m1ICibruRBlTWJ5Q8VI5ehNZfy7/t7xunYfRPDK3kFcvsUqOBkHvbZA/S
 20fV+9t9Ll7akgtHyuqxGwrGciN0kOl7nPy/AY6QHMsc3AL8VC+rRYq43
 Trus0QEP7gypP9v2CwyE3lemTsb3sEzAIlfOq/6RXaPFRR+i0NziMPooa
 4+tDVU+8ARMs0ZXwXlYtmmPE92iGw+63ZI81m3TerriqWwQg/gZwKbOUb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328352645"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="328352645"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908638121"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="908638121"
Received: from jgeary-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:50 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 11:12:36 +0000
Message-Id: <20230127111241.3624629-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/6] intel_gpu_top: Fix man page formatting
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

v2:
 * Improve some wording.
 * Tidy -o option description.
 * Update dates.
 * Convert the filter list to table.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com> # v1
---
 man/intel_gpu_top.rst | 55 ++++++++++++++++++++-----------------------
 1 file changed, 25 insertions(+), 30 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 748c7740c800..4417bcff0d5b 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -7,9 +7,9 @@ Display a top-like summary of Intel GPU usage
 ---------------------------------------------
 .. include:: defs.rst
 :Author: IGT Developers <igt-dev@lists.freedesktop.org>
-:Date: 2020-03-18
+:Date: 2023-01-27
 :Version: |PACKAGE_STRING|
-:Copyright: 2009,2011,2012,2016,2018,2019,2020 Intel Corporation
+:Copyright: 2009,2011,2012,2016,2018,2019,2020,2023 Intel Corporation
 :Manual section: |MANUAL_SECTION|
 :Manual group: |MANUAL_GROUP|
 
@@ -23,7 +23,7 @@ DESCRIPTION
 
 **intel_gpu_top** is a tool to display usage information on Intel GPU's.
 
-The tool gathers data using perf performance counters (PMU) exposed by i915 and other platform drivers like RAPL (power) and Uncore IMC (memory bandwidth).
+The tool presents data collected from performance counters (PMU), exposed by i915 and other platform drivers like RAPL (power) and Uncore IMC (memory bandwidth).
 
 OPTIONS
 =======
@@ -37,49 +37,44 @@ OPTIONS
 -l
     List plain text data.
 
--o <file path | ->
-    Output to the specified file instead of standard output.
-    '-' can also be specified to explicitly select standard output.
+-o <file>, or -o -
+    Output to the specified file instead of standard output. '-' can also be specified to explicitly select standard output.
 
 -s <ms>
     Refresh period in milliseconds.
+
 -L
-    List available GPUs on the platform.
+    List available GPUs on the system.
+
 -d
-    Select a specific GPU using supported filter.
+    Select a specific GPU using one of the supported filters.
 
 RUNTIME CONTROL
 ===============
 
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
+|    '1'    Toggle between aggregated by engine class and physical engine mode.
+|    'n'    Toggle display of numeric client busyness overlay.
+|    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
+|    'i'    Toggle display of clients which used no GPU time.
+|    'H'    Toggle between per PID aggregation and individual clients.
 
 DEVICE SELECTION
 ================
 
-User can select specific GPU for performance monitoring on platform where multiple GPUs are available.
-A GPU can be selected by sysfs path, drm node or using various PCI sub filters.
-
-Filter types: ::
-
-    ---
-    filter   syntax
-    ---
-    sys      sys:/sys/devices/pci0000:00/0000:00:02.0
-             find device by its sysfs path
-
-    drm      drm:/dev/dri/* path
-             find drm device by /dev/dri/* node
+On systems where multiple GPUs are present it is possible to select a specific GPU to be monitored. A GPU can be selected by sysfs path, drm device node or using various PCI sub filters.
 
-    pci      pci:[vendor=%04x/name][,device=%04x][,card=%d]
-             vendor is hex number or vendor name
+==========  ====================================================== ======================
+**Filter**  **Syntax**                                             **GPU selection criteria**
+==========  ====================================================== ======================
+sys          | ``sys:/sys/devices/pci0000:00/0000:00:02.0``        Select using the sysfs path.
+drm          | ``drm:/dev/dri/<node>``                             Select using the /dev/dri/\* device node.
+pci          | ``pci:[vendor=%04x/name][,device=%04x][,card=%d]``  Select using the PCI addrress. Vendor is hexadecinal number or vendor name.
+==========  ====================================================== ======================
 
 JSON OUTPUT
 ===========
-- 
2.34.1

