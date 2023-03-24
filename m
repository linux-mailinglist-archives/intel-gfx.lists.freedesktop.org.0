Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F17336C8892
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 23:48:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8612210E1B5;
	Fri, 24 Mar 2023 22:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248B310E18A;
 Fri, 24 Mar 2023 22:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679698086; x=1711234086;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gS23WQF0smEFqjTnZOEFCeY5HfivQIwMpIDcncHuxqw=;
 b=fxtdr/qjsE9gJyOcS7H0ecx3VMd0gbU2kCFcFBNozf0POFYBEWhYZZyi
 0jb+oUkpn5wvcWc5kS90O3djL7Y3FDu39tcOyX7C0s+vVDubjlwFzTxmT
 NEFGYzCGbC5fcnAt37ssDZWXBgE6wz96avYQsQkH065VKfSy0dKuYi5tu
 NqOgBJZTacvD82jlEz3AsSELK7735oZwBMZeYr6PkPdFN4jFQ5rbBO2D+
 b6gfAIE38tgSezWc4BJFJcZqhMmrcZfMZqyDsqnEUqAtpGrS+XHrtmRpS
 Ft7BcLChAffNg/MGd0HNLXcUzQSETz7TMPcsX3J/K0VyKogOlT9LofRqi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="320303888"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="320303888"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 15:48:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="1012444486"
X-IronPort-AV: E=Sophos;i="5.98,289,1673942400"; d="scan'208";a="1012444486"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga005.fm.intel.com with ESMTP; 24 Mar 2023 15:48:05 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 24 Mar 2023 15:49:57 -0700
Message-Id: <20230324224959.1727662-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/2] tests/i915/slpc: Add basic IGT test
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

Borrow some subtests from xe_guc_pc. Also add per GT debugfs helpers.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (2):
  lib/debugfs: Add per GT debugfs helpers
  i915_guc_pc: Add some basic SLPC igt tests

 lib/igt_debugfs.c        |  60 ++++++++++++++++
 lib/igt_debugfs.h        |   4 ++
 tests/i915/i915_guc_pc.c | 151 +++++++++++++++++++++++++++++++++++++++
 tests/meson.build        |   1 +
 4 files changed, 216 insertions(+)
 create mode 100644 tests/i915/i915_guc_pc.c

-- 
2.38.1

