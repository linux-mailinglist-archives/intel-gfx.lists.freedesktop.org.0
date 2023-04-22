Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 087DA6EB68C
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 03:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42FDB10EF2D;
	Sat, 22 Apr 2023 01:01:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DA410EF24;
 Sat, 22 Apr 2023 01:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682125294; x=1713661294;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aaD12jApJdjOdFKvWMiBIy/OKR/4Mufy/Wi2SaZkQ9U=;
 b=A2fTT2oGL7SNnGqrWTrN4d7xokzmmpotob5cf4hJjNEwX4/sMvsBfJvO
 oPAS+HfXgA+ht1qcYD3XhoEhrZvY6ubTycbrd4683KvnEAfoMzfCanwH2
 N86se59v8RfuOlc5aw6Kyo7J0hFQ4bs0KFU+Ib2p+czcZ0angR1SSvALb
 6o3BWRH52Fv/pheky6zOKwpr7RuaPFB6G9AN9yVwxWR8pYKdQIG6PZcd/
 +AkwpJQlzmU8Sz5s4d7tQR8tvsyPCKuugSEJz0alGq6jRRX5M0CsiPIVI
 G35bAN+u9Qau//9M8zhVTOuf0KZtjUDKh+QIOPwY9lqTyCc79qpGsJ3u8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="411385221"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="411385221"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 18:01:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="938678709"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="938678709"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga006.fm.intel.com with ESMTP; 21 Apr 2023 18:01:34 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 21 Apr 2023 18:01:03 -0700
Message-Id: <20230422010103.1028886-5-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230422010103.1028886-1-vinay.belgaumkar@intel.com>
References: <20230422010103.1028886-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/4] HAX: tests/i915: Try out the SLPC IGT
 tests
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

Trying out for CI. Do not review.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel-ci/fast-feedback.testlist | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
index d9fcb62d..653668dd 100644
--- a/tests/intel-ci/fast-feedback.testlist
+++ b/tests/intel-ci/fast-feedback.testlist
@@ -139,6 +139,8 @@ igt@prime_self_import@basic-with_fd_dup
 igt@prime_self_import@basic-with_one_bo
 igt@prime_self_import@basic-with_one_bo_two_files
 igt@prime_self_import@basic-with_two_bos
+igt@i915_pm_freq_api@freq-basic-api
+igt@i915_pm_freq_api@freq-reset
 igt@prime_vgem@basic-fence-flip
 igt@prime_vgem@basic-fence-mmap
 igt@prime_vgem@basic-fence-read
-- 
2.38.1

