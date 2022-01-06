Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 534E7486ACA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 21:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA98510E795;
	Thu,  6 Jan 2022 20:02:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95AAF10E795
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 20:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641499362; x=1673035362;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i7URaiuQh6NajZUBNq6QyBsBAQnVjMSLXQazR8DYHdE=;
 b=dqZF4cyB+m3xJX03N+WX5HH+DI1NM1Af23NKkNkP4H1uHIxJ+hUxZDQ8
 OEaDTDDuqP+6Rjn/ootE92bJRsApd1MlPqORYaqFpeIasG+GUejqUeQpt
 mgGovLNP8Pp5v7S8OuI6qOFFeIWygcbPiqmi2G9FWDJNj6nHTP3RcBqax
 ihthAtV6kYcp6pSZfaqaLRzr2eZ1+DnqCDiLG1UF8TkvYOf5+6+iK/iTb
 19S4AbAtV8UN5knT51XK9/aK1dToG515mDjl9IYbgYKKE1F3KpLY/nv2c
 8fyutnfnT8q68YsaaUHSrzYexotaaAzsOaUNa/R3IbuGsJyjfbNfE6Ytr Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="303475488"
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="303475488"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 12:02:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,267,1635231600"; d="scan'208";a="763620587"
Received: from jhli-desk1.jf.intel.com ([10.54.74.139])
 by fmsmga005.fm.intel.com with ESMTP; 06 Jan 2022 12:02:40 -0800
From: Juston Li <juston.li@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jan 2022 12:02:35 -0800
Message-Id: <20220106200236.489656-1-juston.li@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] drm/i915/pxp: Hold RPM wakelock during
 PXP unbind
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
Cc: alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Similar to commit b8d8436840ca ("drm/i915/gt: Hold RPM wakelock during
PXP suspend") but to fix the same warning for unbind during shutdown

See https://patchwork.freedesktop.org/series/98310/ for trybot pass with
DRM_I915_PXP enabled.

Changes since v1:
 - Rebased to latest drm-tip

Juston Li (1):
  drm/i915/pxp: Hold RPM wakelock during PXP unbind

 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

-- 
2.31.1

