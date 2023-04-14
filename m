Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7B66E2A8C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 21:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF2FF10EE81;
	Fri, 14 Apr 2023 19:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C92910EE78;
 Fri, 14 Apr 2023 19:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681499741; x=1713035741;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aaD12jApJdjOdFKvWMiBIy/OKR/4Mufy/Wi2SaZkQ9U=;
 b=OYA7h6obRCIhaQbOIhun8YLIBteS+X1EuzJasFl/qUQCYj98CBELDG07
 86LEKA3EL6IlEn9P8yn+9oaqXXKeMZdgf2rUPqSb6mEegn9vq0jiKVcuw
 q0HsgrEyIuv6bceypebQ0VURCIKd6bcLv5YjLHEdiVPZvftIaPVUj3IKF
 4knMPhsOUFS+hV0VF533vtV1qdXuJhZ5zD4Jb0lCHcMAPNn8tAtpOb0k+
 YZVR97bNGSP9S2JBZCE1b6Jk6aJE66z50ZCljMPOaiCv2ow68wFCtRNNl
 w+TLkoQJ9S1D5X6cHlOL3PXSPzERuO1O3RkqGh6qIeH/CFyt1bjWOXCzq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="430841989"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="430841989"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 12:15:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="667304519"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="667304519"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga006.jf.intel.com with ESMTP; 14 Apr 2023 12:15:41 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:16:39 -0700
Message-Id: <20230414191639.2565389-5-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230414191639.2565389-1-vinay.belgaumkar@intel.com>
References: <20230414191639.2565389-1-vinay.belgaumkar@intel.com>
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

