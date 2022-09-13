Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E97545B7442
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 17:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB23810E76D;
	Tue, 13 Sep 2022 15:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1E810E76C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 15:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663082544; x=1694618544;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XnA1GMOVKq4bNGeCtkz2tYQH1sKxi6NAaqApQWfNo9s=;
 b=nPXJ7d0INfYfbvNJWHlr9NuBi1BG9zpNQf+nK/kRwJyW9HyOWz8PP2me
 0jZGHY5sDFBh0Ajrj7I43gQ+6QR7dz3zygUbB0/cvCJn9AFGKInIN+aLi
 IjATvENNlFHhxtrCQ+jAKLPt6RvmBRIAfdu3/bFB3A6jfJqkv+vqLHd+D
 wKIWJLNIiFxE35XaYFF6Kkp7Wk8uSpnLxyf1tf3uSuvRWnLyxFcY9WrCO
 zedrEbgbp53CLmWxREZnMR4lzwrsqqtC2mrCN/OAq6sqytm0Dq2C4oq8f
 D7Y1QSovks0CNUKwb1H5oFzi73EsPGXER2k1rtx24KA9kdBV7NZ137DaO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="298963920"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="298963920"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="593977776"
Received: from abaczek-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.8.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:12 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 17:21:47 +0200
Message-Id: <cover.1663081418.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/4] lrc selftest fixes
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
Cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Ramalingam C <ramalingampc2008@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Few bug fixes for lrc selftest.

v5:
  - Add Reviewed-by tag to "drm/i915/selftests: Check
    for incomplete LRI from the context image" patch, as
    it got reviewed in different series:
    https://patchwork.freedesktop.org/series/108487/

Chris Wilson (4):
  drm/i915/gt: Explicitly clear BB_OFFSET for new contexts
  drm/i915/selftests: Check for incomplete LRI from the context image
  drm/i915/selftest: Always cancel semaphore on error
  drm/i915/selftest: Clear the output buffers before GPU writes

 drivers/gpu/drm/i915/gt/intel_engine_regs.h |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c         |  20 ++++
 drivers/gpu/drm/i915/gt/selftest_lrc.c      | 115 ++++++++++++++++----
 3 files changed, 116 insertions(+), 20 deletions(-)

--
2.25.1
