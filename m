Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6A86DE88B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 02:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3D410E6E0;
	Wed, 12 Apr 2023 00:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0755E10E6E0;
 Wed, 12 Apr 2023 00:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681260012; x=1712796012;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aaD12jApJdjOdFKvWMiBIy/OKR/4Mufy/Wi2SaZkQ9U=;
 b=Ehz/wir3ty9O8gB5au5C9O8AbLYyN+Ji4Tpm/4tbCe3NLHvMRWHshC8E
 /5lDWyFqGNXXGGQM4kL5aDWB8mBjM2+PazHOu5u6grLCkq+uK1eq98e8F
 CdBXq0DKfPhKY+JB86Qzi6XvsaugcvziePeZBGofU07ptClSnuhnBOmXr
 t3D2R3N5Eda43xRUdN01QKQuR9+YZg7goE7wqSjCsjEaihTKDoPQhAHUN
 okW73cJ96rfIUvMeDC/R1COthYJLPBjAk8JbItPenaLtcABOvtwB8iznl
 TghWU3r8tXiJt5I8TJqAUAVIv1KsU/dGK4GiIOaOuDIlFDp6cuxPjJ/Vq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="345557312"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="345557312"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 17:40:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="719166964"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="719166964"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga008.jf.intel.com with ESMTP; 11 Apr 2023 17:40:11 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue, 11 Apr 2023 17:42:18 -0700
Message-Id: <20230412004218.1634893-4-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230412004218.1634893-1-vinay.belgaumkar@intel.com>
References: <20230412004218.1634893-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/3] HAX: tests/i915: Try out the SLPC IGT
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

