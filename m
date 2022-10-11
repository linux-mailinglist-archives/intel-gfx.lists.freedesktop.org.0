Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E53E85FAB2B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 05:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DE810E797;
	Tue, 11 Oct 2022 03:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F0C10E797
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 03:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665458886; x=1696994886;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pfZSAc8wnnVqjLJSKca2gAe0G7UVzN1ZMRHlyfKogOg=;
 b=lCiNZnaLDvi76MA6d+z3Uuleu0d3q+WT7QJswrBxbXeN1/ffaPOiKxhz
 pbg7Q3RuAu+E7sILWOlzkC/CsrHQNX2J+GpTXhXsmcTdK5Ly2yUWYj6YI
 j4+ZOhC47HpO+LhrUIXt/tu0uPtQUbcFTjpQAXvyhvW8l7qY0WKtYomV2
 doLZ1Z99bpn1GMbGXwDT3s9qliPXNr0S8eQwJ4rR4/YsZgwL7pS5mxbst
 HP2JcABfOYl5Zj1ADb6Fj3HK8zPCfIsRk/GTlDUwslx0uqx6nQGsDYRxX
 yOs2BJ2pMu5k7wHtnTCj+s+XRy9jM/90o+aPEyYAId/jcaEva+a81cxjI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="330870691"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="330870691"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 20:28:06 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="694894377"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="694894377"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 20:28:06 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Oct 2022 20:27:58 -0700
Message-Id: <cover.1665458639.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Firm up gt park/unpark
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

A couple of patches to firm up gt park/unpark.

Ashutosh Dixit (2):
  drm/i915/gt: Don't do display work on platforms without display
  drm/i915/gt: Warn if not in RC6 when GT is parked

 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 42 +++++++++++++++++----------
 drivers/gpu/drm/i915/gt/intel_rc6.c   | 15 ++++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.h   |  1 +
 3 files changed, 42 insertions(+), 16 deletions(-)

-- 
2.34.1

