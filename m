Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA456D69E0
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 19:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAD4B10E733;
	Tue,  4 Apr 2023 17:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B53DC10E72C;
 Tue,  4 Apr 2023 17:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680628161; x=1712164161;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xwebPoZvbky6TZ3jA/T2nagvjd2faYC+IdY1C5bxw5c=;
 b=fe9pQQ04kta38Ze2rivdHaRTil+Y77GT1w4woJnfbCKfvXUm0fHGWGOU
 yCocDWl9QM0y3MkjwF+pAi1EZJac6Eh9fnrQlWzdz6pVu38wjfwm8stZT
 K1Ue/4FTypqH81J5ZwXJRoxuVW8/Hr1vFBqAvJQO/Ez7e9BKGBNSfibvx
 GqIQwEev5QI+UWw0TxSmAGxmniN1hU5vUJ8XrEwhlpY3v6ZBNUT0jfn/l
 o+YBg8fSoTDPcXjZQr18iJhf1pTSyQbP9O9WieP0J0wrG2ihDAW8fypBb
 SLu9WRoHrSsP4lOyImQrNo2qYAnjDF9UZzey1QVjXXcieidohUvAwvGIU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="344818321"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="344818321"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 10:07:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="932520523"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="932520523"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 10:07:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  4 Apr 2023 10:07:37 -0700
Message-Id: <20230404170737.1856619-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2] tools: Add tool to dump GuC/HuC CSS
 header
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we are now using unversioned GuC/HuC, it's useful to be able to
dump the firmware blob and get that information from the CSS header.
Add a tool that decodes that information and dumps the raw header.

Example output:

	$ tools/intel-gfx-fw-info /lib/firmware/i915/tgl_guc_70.bin
	version: 70.5.1
	date: 2022-09-09
	raw dump:
	00000000  06 00 00 00 a1 00 00 00  00 00 01 00 00 00 00 00   ................
	00000010  86 80 00 00 09 09 22 20  71 17 01 00 40 00 00 00   ......" q...@...
	00000020  40 00 00 00 01 00 00 00  09 21 45 00 73 79 73 5f   @........!E.sys_
	00000030  67 62 73 62 50 43 2d 31  2e 30 2e 33 31 35 30 00   gbsbPC-1.0.3150.
	00000040  01 05 46 00 00 00 00 00  00 00 00 00 00 00 00 00   ..F.............
	00000050  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
	00000060  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
	00000070  00 00 00 00 00 00 00 00  00 10 80 00 00 01 40 00   ..............@.

	struct uc_css_header:
	- module_type: 0x6
	- header_size_dw: 0xa1
	- header_version: 0x10000
	- module_id: 0x0
	- module_vendor: 0x8086
	- date: 0x20220909
	- size_dw: 0x11771
	- key_size_dw: 0x40
	- modulus_size_dw: 0x40
	- exponent_size_dw: 0x1
	- time: 0x452109
	- username: b'sys_gbsb'
	- buildnumber: b'PC-1.0.3150\x00'
	- sw_version: 0x460501
	- vf_version: 0x0
	- reserved0: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
	- rsvd: <rsvd private_data_size=0x801000, reserved1=0x801000>
	- header_info: 0x400100

v2:
  - Comments in the struct don't need to be removed: the defines do.
    Just comment them out with a "//" which should bring people's
    attention to it since it's not an approved way for comments
    according to kernel coding style
  - Better logging handling, without an explicit logger object
  - Catch ImportError for the dissect.cstruct dependency (Gustavo)

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>
Acked-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tools/intel-gfx-fw-info | 138 ++++++++++++++++++++++++++++++++++++++++
 tools/meson.build       |   2 +-
 2 files changed, 139 insertions(+), 1 deletion(-)
 create mode 100755 tools/intel-gfx-fw-info

diff --git a/tools/intel-gfx-fw-info b/tools/intel-gfx-fw-info
new file mode 100755
index 000000000..77903bbb7
--- /dev/null
+++ b/tools/intel-gfx-fw-info
@@ -0,0 +1,138 @@
+#!/usr/bin/env python3
+# pylint: disable=C0301
+# SPDX-License-Identifier: (GPL-2.0 OR MIT)
+#
+# Copyright (C) 2023 Intel Corporation
+
+import argparse
+import logging
+import sys
+import typing
+
+# struct definition below should match the one from i915
+# (drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h) and xe
+# (drivers/gpu/drm/xe/xe_uc_fw_abi.h).
+#
+# For compatibility reasons with dissect.cstruct python module, the following
+# things are changed from the original kernel definition:
+#
+#       1) #define in the middle of the struct removed: comment them out
+#       2) No anonymous union - not compatible with the
+#          dumpstruct(): give it a name
+
+CDEF = """
+typedef uint32 u32;
+
+struct uc_css_header {
+	u32 module_type;
+	/*
+	 * header_size includes all non-uCode bits, including css_header, rsa
+	 * key, modulus key and exponent data.
+	 */
+	u32 header_size_dw;
+	u32 header_version;
+	u32 module_id;
+	u32 module_vendor;
+	u32 date;
+// #define CSS_DATE_DAY				(0xFF << 0)
+// #define CSS_DATE_MONTH			(0xFF << 8)
+// #define CSS_DATE_YEAR			(0xFFFF << 16)
+	u32 size_dw; /* uCode plus header_size_dw */
+	u32 key_size_dw;
+	u32 modulus_size_dw;
+	u32 exponent_size_dw;
+	u32 time;
+// #define CSS_TIME_HOUR			(0xFF << 0)
+// #define CSS_DATE_MIN				(0xFF << 8)
+// #define CSS_DATE_SEC				(0xFFFF << 16)
+	char username[8];
+	char buildnumber[12];
+	u32 sw_version;
+// #define CSS_SW_VERSION_UC_MAJOR		(0xFF << 16)
+// #define CSS_SW_VERSION_UC_MINOR		(0xFF << 8)
+// #define CSS_SW_VERSION_UC_PATCH		(0xFF << 0)
+	u32 vf_version;
+	u32 reserved0[12];
+	union {
+		u32 private_data_size; /* only applies to GuC */
+		u32 reserved1;
+	} rsvd;
+	u32 header_info;
+};
+"""
+
+logging.basicConfig(format="%(levelname)s: %(message)s")
+
+try:
+    from dissect import cstruct
+except:
+    logging.critical(
+        "Could not import dissect.cstruct module. See https://github.com/fox-it/dissect.cstruct for installation options"
+    )
+    raise SystemExit(1)
+
+
+def ffs(x: int) -> int:
+    """Returns the index, counting from 0, of the
+    least significant set bit in `x`.
+    """
+    return (x & -x).bit_length() - 1
+
+
+def FIELD_GET(mask: int, value: int) -> int:
+    return (value & mask) >> ffs(mask)
+
+
+def decode(fw) -> str:
+    data = []
+
+    CSS_SW_VERSION_UC_MAJOR = 0xFF << 16
+    CSS_SW_VERSION_UC_MINOR = 0xFF << 8
+    CSS_SW_VERSION_UC_PATCH = 0xFF
+    major = FIELD_GET(CSS_SW_VERSION_UC_MAJOR, fw.sw_version)
+    minor = FIELD_GET(CSS_SW_VERSION_UC_MINOR, fw.sw_version)
+    patch = FIELD_GET(CSS_SW_VERSION_UC_PATCH, fw.sw_version)
+    data += [f"version: {major}.{minor}.{patch}"]
+
+    CSS_DATE_DAY = 0xFF
+    CSS_DATE_MONTH = 0xFF << 8
+    CSS_DATE_YEAR = 0xFFFF << 16
+    day = FIELD_GET(CSS_DATE_DAY, fw.date)
+    month = FIELD_GET(CSS_DATE_MONTH, fw.date)
+    year = FIELD_GET(CSS_DATE_YEAR, fw.date)
+    data += [f"date: {year:02x}-{month:02x}-{day:02x}"]
+
+    return data
+
+
+def parse_args(argv: typing.List[str]) -> argparse.Namespace:
+    description = "Dump GuC/HuC firmware header"
+    parser = argparse.ArgumentParser(prog="intel-gfx-fw-info", description=description)
+
+    parser.add_argument("filename", help="GuC/HuC firmware file")
+
+    return parser.parse_args(argv)
+
+
+def main(argv: typing.List[str]) -> int:
+    args = parse_args(argv)
+
+    cparser = cstruct.cstruct()
+    cparser.load(CDEF)
+
+    try:
+        with open(args.filename, mode="rb") as f:
+            fw = cparser.uc_css_header(f)
+    except FileNotFoundError as e:
+        logging.fatal(e)
+        return 1
+
+    print(*decode(fw), sep="\n")
+    print("raw dump:", end="")
+    cstruct.dumpstruct(fw, color=sys.stdout.isatty())
+
+    return 0
+
+
+if __name__ == "__main__":
+    sys.exit(main(sys.argv[1:]))
diff --git a/tools/meson.build b/tools/meson.build
index 4c45f16b9..88c58adfe 100644
--- a/tools/meson.build
+++ b/tools/meson.build
@@ -81,7 +81,7 @@ executable('intel_reg', sources : intel_reg_src,
 	     '-DIGT_DATADIR="@0@"'.format(join_paths(prefix, datadir)),
 	   ])
 
-install_data('intel_gpu_abrt', install_dir : bindir)
+install_data(['intel_gpu_abrt', 'intel-gfx-fw-info'], install_dir : bindir)
 
 install_subdir('registers', install_dir : datadir)
 
-- 
2.39.0

