Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC81B70E054
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 17:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB6A10E453;
	Tue, 23 May 2023 15:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A4810E453;
 Tue, 23 May 2023 15:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684855389; x=1716391389;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GoEJJvJ815DRywyGkQuqmiP8Ye/nAR4lU2Wro1UwMY0=;
 b=HslhNdHDlWOt2x3xw/KQQZ/7y4V+lwCGihNOuEl+64wLHZU2tP5J2EFd
 UJTLGa+4n61KLHoerQ4Qp3Mkv7zZR4P48Jm+QfmqqHCYk3U2JvLEF6yNT
 SnZfn5kLq9u51+xw1gNyph+bdREsw/rX8TshVdZvDtZENCd1pe1sIoscU
 jJAjZefx10TU+dN7XXzNPEm7PGDmpR6VeH9Am4fzDDBx0tzuaLKh55IEI
 lgXyg3zRTmez7kdSEe1YN9RRMlozgb4UQuy9tHTiqaAjq/ey93QJ4O+ab
 iJEMSaifvJLiymAya2em3gjNr6wnhTbK15JP/Fb+wstMB81/EGJbH5Vr0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="332888182"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="332888182"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 08:19:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="878259413"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="878259413"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 08:19:21 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 May 2023 08:19:16 -0700
Message-Id: <20230523151918.4170499-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/pmu: couple of cleanups
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ashutosh Dixit (2):
  drm/i915/pmu: Turn off the timer to sample frequencies when GT is
    parked
  drm/i915/pmu: Make PMU sample array two-dimensional

 drivers/gpu/drm/i915/i915_pmu.c | 72 +++++++++++----------------------
 drivers/gpu/drm/i915/i915_pmu.h |  2 +-
 2 files changed, 24 insertions(+), 50 deletions(-)

-- 
2.38.0

