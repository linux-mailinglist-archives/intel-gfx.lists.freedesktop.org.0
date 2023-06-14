Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F19172F0D6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 02:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64B410E078;
	Wed, 14 Jun 2023 00:14:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9C610E078;
 Wed, 14 Jun 2023 00:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686701680; x=1718237680;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kwujelMKhGKgMpKZYrnaE/Vq4NE5f6UnxXsKCxLJM1M=;
 b=ad0KXvcPUORctr3V5oUwaDAQSmRM3R1Hv60TTyPPIOblpPk5RcE7WXAV
 ndQbjKomuweFIb4wvd3vYPMLP6PyWK0Rt1DNyqQLfVS82W0nusDkH1Ink
 353m3YL2U3lklbyWYy6WWsZYZ+pV4eJx4DMTVG5cHHwVufU/COFz71d4m
 29e7KJmMqPGIW/tXC7C50mxqxxv2qAhDTPWDjQ9gvm+RK7sH161p4nHyu
 nhxWeIfSj8OvfRSSkITkEFG5NV6NyRBMv978QHT6Xn6aZLtgkqG3AxLoS
 z6SFNVU+cINkeC5lRpB/0EqDx+fOZ66AJg1E1PA/Fvf2CUco8za6Nsx3v Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338836096"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="338836096"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 17:14:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="711842222"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="711842222"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 17:14:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Tue, 13 Jun 2023 17:13:13 -0700
Message-Id: <20230614001315.1552497-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/2] Add mmio register rw tracing
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patchset adds xe_reg_rw mmio tracing event for the xe driver. This
tracing event should be helpful for developers especially to debug Display
code.

Radhakrishna Sripada (2):
  drm/xe: Move mmio read/write functions to xe_mmio.c
  drm/xe: Add reg read/write trace

 .../drm/xe/compat-i915-headers/intel_uncore.h |   8 +-
 drivers/gpu/drm/xe/xe_mmio.c                  | 187 ++++++++++++++++++
 drivers/gpu/drm/xe/xe_mmio.h                  | 136 +++----------
 drivers/gpu/drm/xe/xe_trace.h                 |  26 +++
 4 files changed, 239 insertions(+), 118 deletions(-)

-- 
2.34.1

