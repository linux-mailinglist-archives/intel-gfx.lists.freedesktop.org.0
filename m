Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFA56E17A4
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 00:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48C6D10E384;
	Thu, 13 Apr 2023 22:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E55610E409;
 Thu, 13 Apr 2023 22:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681425713; x=1712961713;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aaD12jApJdjOdFKvWMiBIy/OKR/4Mufy/Wi2SaZkQ9U=;
 b=KfeMz+ZCVB1pDaeJsKaLIDzU6a6dxw3sDYsJhpjyidK2TlybOE3EAmvi
 Cytg+23eZLXZ4BWBxcWcTYUc6OWf4l8wDdm6AJaUtG7EnpSBwJIaODRPl
 xaFlMj9xLUkyHrxs/BWCvXrDzFWU4sOkvYoyw+IuMxDwILEVhYVwB2NLt
 IDv8Fgn2EHZXnZlYZPc4ivnNVcqB6Va9SZwnRa60yHAduX+QaYXewP7sC
 tJ/s3QxesORi2lv2UjMfOQgl4qFutb5h0Al9Fg/mbZBQtw3RdXEaWuYKa
 2I2j2csH1EY0ZY5hlh3K8mjHTj+KngUk9fhn9OdppQU29LXqrd6hYOoIV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="344322303"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="344322303"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 15:41:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="863960943"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="863960943"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga005.jf.intel.com with ESMTP; 13 Apr 2023 15:41:52 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 13 Apr 2023 15:44:14 -0700
Message-Id: <20230413224414.2313507-5-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230413224414.2313507-1-vinay.belgaumkar@intel.com>
References: <20230413224414.2313507-1-vinay.belgaumkar@intel.com>
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

