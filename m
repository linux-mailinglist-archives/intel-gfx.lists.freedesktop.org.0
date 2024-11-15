Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F7F9CE62D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 15:59:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD2010E878;
	Fri, 15 Nov 2024 14:59:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXpCHexj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1686610E874;
 Fri, 15 Nov 2024 14:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731682752; x=1763218752;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hBOAE2RTjyPmrQRcJkFYy2Lcawech20g3zIxxm8bjhU=;
 b=ZXpCHexjBk5tcJKn0SFx+FFZi0alMKTuZYtz9lgGZ9ixbX8EJf6wPDqd
 F/LAFDUFLHC0s4KFX1oVDG0stjetnR9DHcoUwhk3qFJ+lpDi8zq9dJ6I2
 5B4/lo1Stb11icNarLgub9GLoIxen0FzMfKe9zj08GhEEosxbfIEgPdeH
 FcdZz3YptOqOOMGvkISAycTKwoororDjTkkfEljvJC4Iz+Jl+f6q6GQAq
 nLyrXswKhLC/uyLUvOBI3K9xQn02hCMq8QpUq4otFAmXPqhnefC/wkm8p
 NCSRJax4hZuyl5IgQFME9wCGihOOYL3zCZ1zpkOis5IFFETSXWyWOaawu Q==;
X-CSE-ConnectionGUID: YaxIzB87QrKciFksWd0gsQ==
X-CSE-MsgGUID: ooDgHTysREW4VvCWNtuSIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="19300265"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="19300265"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 06:59:12 -0800
X-CSE-ConnectionGUID: J/YgMEQ4StaBn2zUxkK7pQ==
X-CSE-MsgGUID: LzB8/H00T+KLQXQbg2u+lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="111875377"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.84])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 06:59:10 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t] intel-ci: Blocklist igt@i915_module_load@load
Date: Fri, 15 Nov 2024 15:58:19 +0100
Message-ID: <20241115145854.19330-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.47.0
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

This test expects the i915 module not loaded, and it SKIPs if it finds one
already loaded.  It was intended only for CI BAT runs as the very first
test executed.  It's not suitable for CI runs with random test selection
and ordering.

Since omitting it from non-BAT runs doesn't affect coverage, blocklist it
instead of maintaining as expected SKIP.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel-ci/blacklist.txt | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/tests/intel-ci/blacklist.txt b/tests/intel-ci/blacklist.txt
index cfc5491d53..cdbfbcaef9 100644
--- a/tests/intel-ci/blacklist.txt
+++ b/tests/intel-ci/blacklist.txt
@@ -4,6 +4,16 @@
 igt@xe.*
 
 igt@meta_test(@.*)?
+
+###############################################
+# Expects the i915 module not loaded, SKIPs if one is loaded.
+# Intended only for CI BAT runs as the very first test executed.
+# Not suitable for CI runs with random test selection and ordering.
+# Omitting it from non-BAT runs doesn't affect coverage, then
+# let's blocklist it instead of maintainig as expected SKIP.
+###############################################
+igt@i915_module_load@load
+
 ###############################################
 # Handle module reloads with great care!
 #
-- 
2.47.0

