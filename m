Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF16D610DAD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 11:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E4310E166;
	Fri, 28 Oct 2022 09:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DBF810E7CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 09:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666950623; x=1698486623;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bQ0TF4rEWejfVvKFJNDkySmUoryJzwDXFMBxmEP/CkQ=;
 b=V5gSKEWWSAR00Mp/McbTiy1JgugFBLI5fShHnbIVJgvDDqy9MwBZm+RE
 bANwAaOjpQhXEo2EeWB2rl4PtFae+GPbyvBnMJSb/SUPesbXAnxHUFzTS
 SUXGtiLL3q0bYf5HPaf2Ek/h3KRJWYUHyUX+gg1RzovMXGDmaHIUfXZXn
 7tsTkWVWJ1uAcwgnQ2uE3pH8dGVbjoMd7JMajBsEKE8br8JY+4xjmeUe8
 ukdhCYLKBYaSe3qTIzDsylEz8KhBGyX4C8/Y8UEcHChubZqRtP5nvqtuh
 4391DstOtEWPNSLl5ZlU1bC/EAHuylEnFAVm/+RPvNqYIQb70/mzAQRzb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="295867278"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="295867278"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:50:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="961963543"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="961963543"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:50:20 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 15:20:57 +0530
Message-Id: <20221028095058.3624647-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] Add selftest for slpc tile interaction
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

This test runs a workload on tiles simultaneously by requesting for RP0 frequency
and fails if there is a throttling error.

Rev2 : Fix build error

Riana Tauro (1):
  drm/i915/guc/slpc: Add selftest for slpc tile-tile interaction

 drivers/gpu/drm/i915/gt/selftest_slpc.c | 63 +++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

-- 
2.25.1

