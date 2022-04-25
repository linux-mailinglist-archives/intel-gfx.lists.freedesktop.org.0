Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B8650DF81
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 13:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2C210E525;
	Mon, 25 Apr 2022 11:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68C8310E525;
 Mon, 25 Apr 2022 11:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650887852; x=1682423852;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R76wGJEvkzwZLhagB0J5IKLp977b9vGQz0WkFVgLbMU=;
 b=cGHwDIaJm2thJaNy+Fic2MS73w3RrMPHz3Fm9i1rv4QlH6MriIduqioK
 0f+iGGy1jPmkQa8Jgq98WKygC+gPihZj7thIs2+nUQxtDx1GLqon888r3
 e5d+TZrkkovF4sRQJQ8Zo347zabcAmFuL+yhwx2Y/3YSsFfZtIabHWHzb
 iGiR/aXQZQrm6sIXWMW5qz4vr+vLL2xjeNf5CB6AOefoy3fIU1PfV0iyC
 rmIt6JPYwih0/IBJOqmsOGmdbTYQRF6DYOcnb4R6hFXJaBd3rzNIqN6J3
 x6FtLsRF2HiXbiBdGBAsa1hFBuQo3yiydl1jIgB8ASulz+sjNrafkTsfz Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="290363111"
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="290363111"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 04:57:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="557695887"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 04:57:30 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Mon, 25 Apr 2022 17:28:24 +0530
Message-Id: <20220425115828.21473-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] lrc selftest fixes
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

Few bug fixes for lrc selftest.

Resending the reviewed patches for CI feedback.

Chris Wilson (4):
  drm/i915/gt: Explicitly clear BB_OFFSET for new contexts
  drm/i915/selftests: Check for incomplete LRI from the context image
  drm/i915/selftest: Always cancel semaphore on error
  drm/i915/selftest: Clear the output buffers before GPU writes

 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         |  17 +++
 drivers/gpu/drm/i915/gt/selftest_lrc.c      | 115 ++++++++++++++++----
 3 files changed, 113 insertions(+), 20 deletions(-)

-- 
2.20.1

