Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 660F815AF6E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 19:10:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5617C6E0E7;
	Wed, 12 Feb 2020 18:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A16D6EAD2;
 Wed, 12 Feb 2020 18:10:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 10:10:12 -0800
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="313474497"
Received: from dbstims-dev.fm.intel.com ([10.1.27.172])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 12 Feb 2020 10:10:12 -0800
From: Dale B Stimson <dale.b.stimson@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 10:09:44 -0800
Message-Id: <32b091595fd9cc5bbe7878afd6a25f57342a885e.1581530821.git.dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1581530821.git.dale.b.stimson@intel.com>
References: <cover.1581530821.git.dale.b.stimson@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] i915/gem_mmio_base.c - get mmio_base
 from debugfs (if possible)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
---
 lib/Makefile.sources     |   2 +
 lib/i915/gem_mmio_base.c | 346 +++++++++++++++++++++++++++++++++++++++
 lib/i915/gem_mmio_base.h |  19 +++
 lib/igt.h                |   1 +
 lib/meson.build          |   1 +
 5 files changed, 369 insertions(+)
 create mode 100644 lib/i915/gem_mmio_base.c
 create mode 100644 lib/i915/gem_mmio_base.h

diff --git a/lib/Makefile.sources b/lib/Makefile.sources
index 3e573f267..4c5d50d5d 100644
--- a/lib/Makefile.sources
+++ b/lib/Makefile.sources
@@ -7,6 +7,8 @@ lib_source_list =	 	\
 	i915/gem_context.h	\
 	i915/gem_engine_topology.c	\
 	i915/gem_engine_topology.h	\
+	i915/gem_mmio_base.c	\
+	i915/gem_mmio_base.h	\
 	i915/gem_scheduler.c	\
 	i915/gem_scheduler.h	\
 	i915/gem_submission.c	\
diff --git a/lib/i915/gem_mmio_base.c b/lib/i915/gem_mmio_base.c
new file mode 100644
index 000000000..8718c092f
--- /dev/null
+++ b/lib/i915/gem_mmio_base.c
@@ -0,0 +1,346 @@
+//  Copyright (C) 2020 Intel Corporation
+//
+//  SPDX-License-Identifier: MIT
+
+#include <ctype.h>
+
+#include <fcntl.h>
+
+#include "igt.h"
+
+struct eng_mmio_base_s {
+	char       name[8];
+	uint32_t   mmio_base;
+};
+
+struct eng_mmio_base_table_s {
+	unsigned int           mb_cnt;
+	struct eng_mmio_base_s mb_tab[GEM_MAX_ENGINES];
+};
+
+
+static struct eng_mmio_base_table_s *_gem_engine_mmio_info_dup(
+	const struct eng_mmio_base_table_s *mbpi)
+{
+	struct eng_mmio_base_table_s *mbpo;
+	size_t nbytes;
+
+	nbytes = offsetof(typeof(struct eng_mmio_base_table_s), mb_tab[mbpi->mb_cnt]);
+	mbpo = malloc(nbytes);
+	igt_assert(mbpo);
+	memcpy(mbpo, mbpi, nbytes);
+
+	return mbpo;
+}
+
+void gem_engine_mmio_base_info_free(struct eng_mmio_base_table_s *mbp)
+{
+	free(mbp);
+}
+
+static void _gem_engine_mmio_info_legacy_add(struct eng_mmio_base_table_s *mbp,
+	const char *eng_name, uint32_t mmio_base)
+{
+	if (mmio_base) {
+		strncpy(mbp->mb_tab[mbp->mb_cnt].name, eng_name,
+			sizeof(mbp->mb_tab[0].name));
+		mbp->mb_tab[mbp->mb_cnt].mmio_base = mmio_base;
+		mbp->mb_cnt++;
+	}
+}
+
+/**
+ * _gem_engine_mmio_base_info_get_legacy:
+ * @fd_dev: file descriptor upon which device is open or -1 to use defaults.
+ *
+ * Provides per-engine mmio_base information from legacy built-in values
+ * for the case when the information is not otherwise available.
+ *
+ * Returns:
+ * Pointer to dynamically allocated struct eng_mmio_base_table_s describing
+ * engine config or NULL.
+ * The allocated size does not include unused engine entries.
+ * If non-NULL, it is caller's responsibility to free.
+ */
+static struct eng_mmio_base_table_s *_gem_engine_mmio_base_info_get_legacy(int fd_dev)
+{
+	int gen;
+	uint32_t mmio_base;
+	struct eng_mmio_base_table_s mbt;
+	struct eng_mmio_base_table_s *mbp;
+
+	memset(&mbt, 0, sizeof(mbt));
+
+	gen = intel_gen(intel_get_drm_devid(fd_dev));
+
+	/* The mmio_base values for engine instances 1 and higher cannot
+	 * be reliability determinated a priori. */
+
+	_gem_engine_mmio_info_legacy_add(&mbt, "rcs0", 0x2000);
+	_gem_engine_mmio_info_legacy_add(&mbt, "bcs0", 0x22000);
+
+	if (gen < 6)
+		mmio_base = 0x4000;
+	else if (gen < 11)
+		mmio_base = 0x12000;
+	else
+		mmio_base = 0x1c0000;
+	_gem_engine_mmio_info_legacy_add(&mbt, "vcs0", mmio_base);
+
+	if (gen < 11)
+		mmio_base = 0x1a000;
+	else
+		mmio_base = 0x1c8000;
+	_gem_engine_mmio_info_legacy_add(&mbt, "vecs0", mmio_base);
+
+	if (mbt.mb_cnt <= 0)
+		return NULL;
+
+	mbp = _gem_engine_mmio_info_dup(&mbt);
+
+	return mbp;
+}
+
+
+/**
+ * _gem_engine_mmio_base_info_get_debugfs:
+ * @fd_dev: file descriptor upon which device is open or -1 to use defaults.
+ *
+ * Obtains per-engine mmio_base information from debugfs.
+ *
+ * Returns:
+ * Pointer to dynamically allocated struct eng_mmio_base_table_s describing
+ * engine config or NULL.
+ * The allocated size does not include unused engine entries.
+ * If non-NULL, it is caller's responsibility to free.
+ *
+ * Looking in debugfs for per-engine instances of:
+ *	<engine_name>
+ *              ...
+ *		MMIO base: <u32_hex_number>
+ *
+ * Example of relevant lines from debugfs:
+ *	vcs0
+ *		MMIO base:  0x001c0000
+ *	vcs1
+ *		MMIO base:  0x001d0000
+ *
+ * In order to qualify as the introduction of a new per-engine section, an
+ * input line must consist solely of an engine name.  An engine name must
+ * be 7 or fewer characters in length and must consist of an engine class
+ * name of 3 or more lower case characters followed by an instance number.
+ */
+static struct eng_mmio_base_table_s *_gem_engine_mmio_base_info_get_debugfs(int fd_dev)
+{
+	static const char pth_ei[] = "i915_engine_info";
+	static const char str_mmio_base[] = "MMIO base:";
+	const size_t len_mmio_base = sizeof(str_mmio_base) - 1;
+	FILE *fpi;
+	char line_buf[128];
+	char *plne;
+	char *p_name;
+	char *pbeg;
+	size_t line_len;
+	struct eng_mmio_base_table_s mbt;
+	struct eng_mmio_base_table_s *mbp;
+	const size_t name_max = sizeof(mbt.mb_tab[0].name);
+	int ec;
+	int eng_found;
+	int nc;
+	int fd_ei;
+	int eof_seen;
+
+	fd_ei = igt_debugfs_open(fd_dev, pth_ei, O_RDONLY);
+	if (fd_ei < 0)
+		return NULL;
+
+	fpi = fdopen(fd_ei, "r");
+	if (!fpi) {
+		if (errno != ENOENT) {
+			igt_warn("open failed: %s: %s\n", pth_ei,
+				strerror(errno));
+		}
+		return NULL;
+	}
+
+	memset(&mbt, 0, sizeof(mbt));
+
+	ec = 0;
+	eng_found = 0;
+	eof_seen = 0;
+	while (!eof_seen) {
+		plne = fgets(line_buf, sizeof(line_buf), fpi);
+		if (!plne) {
+			eof_seen = 1;
+			plne = line_buf;
+			plne[0] = '\0';
+		}
+
+		if (plne[0]) {
+			/* Ignore lines that exceed allowed length. */
+			line_len = strlen(plne);
+			if (plne[line_len-1] != '\n') {
+				for (;;) {
+					plne = fgets(line_buf,
+						sizeof(line_buf), fpi);
+					if (!plne)
+						break;
+					line_len = strlen(plne);
+					if (plne[line_len-1] == '\n')
+						break;
+				}
+				continue;
+			}
+			plne[line_len-1] = '\0';
+
+			p_name = NULL;
+			nc = 0;
+			do {
+				for (; nc < name_max; nc++) {
+					if (!islower(plne[nc]))
+						break;
+				}
+				if (nc < 3)
+					break;
+				if (!isdigit(plne[nc]))
+					break;
+				for (; nc < name_max; nc++) {
+					if (!isdigit(plne[nc]))
+						break;
+				}
+				if ((nc >= name_max) || plne[nc])
+					break;
+				p_name = plne;
+			} while (0);
+		}
+
+		if (eof_seen || p_name) {
+			if (eng_found) {
+				eng_found = 0;
+				if ((ec + 1) >= GEM_MAX_ENGINES)
+					continue;
+				ec++;
+			}
+		}
+
+		if (p_name) {
+			strncpy(mbt.mb_tab[ec].name, p_name, nc);
+			eng_found = 1;
+			continue;
+		}
+
+		if (eng_found) {
+			pbeg = plne;
+			while (isspace(pbeg[0]))
+				pbeg++;
+			if (strncmp(pbeg, str_mmio_base, len_mmio_base) == 0) {
+				unsigned long int ulv;
+				uint32_t uiv;
+				char *ep;
+
+				pbeg += len_mmio_base;
+				ulv = strtoul(pbeg, &ep, 16);
+
+				uiv = (uint32_t) ulv;
+				igt_assert_f(((pbeg != ep) && (ulv == uiv)),
+					"invalid number: %s\n", plne);
+
+				while (isspace(*ep))
+					ep++;
+				igt_assert_f((!*ep),
+					"junk follows number: \"%s\"\n", plne);
+
+				mbt.mb_tab[ec].mmio_base = uiv;
+			}
+		}
+	}
+
+	if (fpi)
+		fclose(fpi);
+
+	mbt.mb_cnt = ec;
+
+	if (mbt.mb_cnt <= 0)
+		return NULL;
+
+	mbp = _gem_engine_mmio_info_dup(&mbt);
+
+	return mbp;
+}
+
+/**
+ * gem_engine_mmio_base_info_get:
+ * @fd_dev: file descriptor upon which device is open or -1 to use defaults.
+ *
+ * Obtains per-engine mmio_base information.  Multiple sub-functions will
+ * be tried in order of preference.
+ *
+ * Returns:
+ * Pointer to dynamically allocated struct eng_mmio_base_table_s describing
+ * engine config or NULL.
+ * The allocated size does not include unused engine entries.
+ * If non-NULL, it is caller's responsibility to free.
+ */
+struct eng_mmio_base_table_s *gem_engine_mmio_base_info_get(int fd_dev)
+{
+	struct eng_mmio_base_table_s *mbp = NULL;
+
+	/* If and when better ways are provided to find the mmio_base
+	 * information, they may be added them here in order of preference.
+	 */
+
+#if 0
+	if (!mbp)
+		mbp = _mmio_base_info_get_via_sysfs(fd_dev);
+#endif
+
+	if (!mbp)
+		mbp = _gem_engine_mmio_base_info_get_debugfs(fd_dev);
+
+	if (!mbp)
+		mbp = _gem_engine_mmio_base_info_get_legacy(fd_dev);
+
+	if (!mbp)
+		igt_warn("Per-engine mmio_base data is not present\n");
+
+	return mbp;
+}
+
+/**
+ * gem_engine_mmio_base_info_dump:
+ *
+ * Dumps engine mmio_base data.
+ *
+ * Returns: void
+ */
+void gem_engine_mmio_base_info_dump(const struct eng_mmio_base_table_s *mbp)
+{
+	int ix;
+	const struct eng_mmio_base_s *e_mb;
+
+	fprintf(stdout, "engine names and mmio_base addresses:\n");
+
+	for (ix = 0; ix < mbp->mb_cnt; ix++) {
+		e_mb = mbp->mb_tab + ix;
+		if (e_mb->mmio_base) {
+			fprintf(stdout, "%-8s 0x%8.8x\n",
+				e_mb->name, e_mb->mmio_base);
+		}
+	}
+}
+
+uint32_t gem_engine_mmio_base(const struct eng_mmio_base_table_s *mbp,
+	const char *eng_name)
+{
+	int ix;
+	const struct eng_mmio_base_s *e_mb;
+
+	for (ix = 0; ix < mbp->mb_cnt; ix++) {
+		e_mb = mbp->mb_tab + ix;
+		if (e_mb->mmio_base && !strcmp(eng_name, e_mb->name)) {
+			return e_mb->mmio_base;
+		}
+	}
+
+	return 0;
+}
diff --git a/lib/i915/gem_mmio_base.h b/lib/i915/gem_mmio_base.h
new file mode 100644
index 000000000..1e138690f
--- /dev/null
+++ b/lib/i915/gem_mmio_base.h
@@ -0,0 +1,19 @@
+//  Copyright (C) 2020 Intel Corporation
+//
+//  SPDX-License-Identifier: MIT
+
+#ifndef GEM_MMIO_BASE_H
+#define GEM_MMIO_BASE_H
+
+struct eng_mmio_base_table_s;
+
+struct eng_mmio_base_table_s *gem_engine_mmio_base_info_get(int fd_dev);
+
+void gem_engine_mmio_base_info_free(struct eng_mmio_base_table_s *mbp);
+
+void gem_engine_mmio_base_info_dump(const struct eng_mmio_base_table_s *mbp);
+
+uint32_t gem_engine_mmio_base(const struct eng_mmio_base_table_s *mbp,
+	const char *eng_name);
+
+#endif /* GEM_MMIO_BASE_H */
diff --git a/lib/igt.h b/lib/igt.h
index a6c4e44d2..8e70dcb02 100644
--- a/lib/igt.h
+++ b/lib/igt.h
@@ -55,5 +55,6 @@
 #include "rendercopy.h"
 #include "i915/gem_mman.h"
 #include "i915/gem_engine_topology.h"
+#include "i915/gem_mmio_base.h"
 
 #endif /* IGT_H */
diff --git a/lib/meson.build b/lib/meson.build
index e87e58036..def72c2bd 100644
--- a/lib/meson.build
+++ b/lib/meson.build
@@ -2,6 +2,7 @@ lib_sources = [
 	'drmtest.c',
 	'i915/gem_context.c',
 	'i915/gem_engine_topology.c',
+	'i915/gem_mmio_base.c',
 	'i915/gem_scheduler.c',
 	'i915/gem_submission.c',
 	'i915/gem_ring.c',
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
