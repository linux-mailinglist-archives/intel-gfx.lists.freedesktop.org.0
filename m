Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF1050A70F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 19:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD9410E716;
	Thu, 21 Apr 2022 17:26:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D76210E716
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 17:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650562007; x=1682098007;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gpkNZmal1L7rE+GKg/lNcg+2mHpUb2vmTUQUikQr3jU=;
 b=bt9MPUULvJaqSsaRct5CTI0UfxmQcURYe3jlSmV+hNqaBSjMiZxthaNX
 PpxIvmv0ka9rxlT4qiDaIYuyRTluT7NEPy+CPCtjvU6aE+OrVq8FvugO8
 3s0jBzJTOMEsooIZeKVeBlD14mwOnm43FOypFwlovJsc5xnUyDWct0cEY
 xegUtqP9TH+wpqV8JCy/1OcOgX4ttSDodRWmeHVXWcDhDgE1n1JlDYCS5
 XHTHhOoFX9HEEeeFw5yS7oVLixUDNkJrbq5DVx6cQMaeXDC+J35ENuUx2
 FuhaTQCzhYCn0clq9iGnkFfz+Yt+PPMA4EurpowWrqCEuqYPJ7QYonSis A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="263893674"
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="263893674"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 10:26:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,279,1643702400"; d="scan'208";a="577363144"
Received: from jmadhugu-mobl1.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.213.110.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 10:26:44 -0700
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Thu, 21 Apr 2022 22:56:34 +0530
Message-Id: <20220421172635.76236-1-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Refactor CT access to use iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

ver2: remove newly added iosys map api from ver1
ver3: address review comments
ver4: remove accessing vaddr

This is continuation to the below patch series to use iosys map
APIs, to use CT commands and descriptors.
https://patchwork.freedesktop.org/series/99711/

Siva Mullati (1):
  drm/i915/guc: Convert ct buffer to iosys_map

 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 197 +++++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
 2 files changed, 124 insertions(+), 82 deletions(-)

-- 
2.33.0

