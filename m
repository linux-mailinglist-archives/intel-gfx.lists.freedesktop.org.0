Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDED6E72C5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 07:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 416E810E53A;
	Wed, 19 Apr 2023 05:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CE510E176
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 05:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681883760; x=1713419760;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Ds8DrroSSQHoB3L/9paKV4YMV4rBphQJcSxSdVSPVg=;
 b=goUpnPgytPrS4aFiM1KRxb6pxfd2Q2EckaoSaRcezhS3sBfU7HtIQoaF
 dZGGjAJvEUfzVMXyrrol509S+Tjr2QiHzrWZFO2oJUqXSiYPbqBFmZKS5
 Les7Uns5e1pNr7XOmFAGnBILzGjiFhCGuwEntp+av5DQoL7+JE8oynTHY
 pFLkYWUzOUBoCOLuVy52I7R2Li/2uPADykLaqJbZ7bIlqfPQYcnqs5o4r
 KKRj9eWQGB7gEKGFrPwTP2IRiDPIGlSdTnkzzzzdXyZVGXlbt/g7o9Hph
 HWmfhB6h4Dhxv3PPuWbX+dZzfldQWru2OG4elxT6KdNVlFEbUqFzrXJdX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="347216192"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="347216192"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 22:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="693910480"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="693910480"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga007.fm.intel.com with ESMTP; 18 Apr 2023 22:55:57 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Apr 2023 11:30:33 +0530
Message-Id: <20230419060036.3422635-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Consider multi-gt instead of to_gt()
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

drm/i915/gt: drm/i915/gem: drm/i915/selftests:
Consider multi-gt instead of to_gt()

In order to enable complete multi-GT, use the GT
reference obtained directly from the engine, rather
than relying on the to_gt(), which only provides a
reference to the primary GT.

Problem appear when it runs on platform like MTL
where different set of engines are possible on
different GTs.

Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Tejas Upadhyay (3):
  drm/i915/gt: Consider multi-gt instead of to_gt()
  drm/i915/gem: Consider multi-gt instead of to_gt()
  drm/i915/selftests: Consider multi-gt instead of to_gt()

 .../drm/i915/gem/selftests/i915_gem_context.c |  4 +-
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
 .../gpu/drm/i915/selftests/igt_live_test.c    | 46 +++++++++++--------
 3 files changed, 30 insertions(+), 22 deletions(-)

-- 
2.25.1

