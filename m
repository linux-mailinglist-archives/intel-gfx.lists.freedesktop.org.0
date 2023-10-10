Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E8C7BF933
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139AA10E1DF;
	Tue, 10 Oct 2023 11:08:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A4D10E1D0;
 Tue, 10 Oct 2023 11:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696936077; x=1728472077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J+VBV1y++UYV3Qj8IXWA9wwRges8ZiJW4j3/3gnRLDY=;
 b=SSG/x7SbszNPYpDYuwR1deNt1eMywWavN1PVIpRnw0TKYjU4oPHBWupc
 JUmj6b6PrCrSjGugS2SyMbxpAJi/qPlccf4JdPpLhwTwLDii8EztddtES
 GE1I4sRimVg0+xjLDCq+bCmR7OQmFwI0lPPiJjT7Wmpw4rdwT0F5/fKnL
 qGcNaX/2nmHttDWqRdSXKNBQhuaAfGShMIjs+3Cyt5FELIfUJOZA1E9tm
 BNYY6KwKmBVz6KauFJVbBkDJE0L2x5bF2V7qFZ6sd8rP5pbgdoRx452FB
 KNMCbsAS56ttv1XCSF877dzJ5x0wGYL00SiEBIcPy+qN2b03rA0w1ePQM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450863382"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="450863382"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="819205885"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="819205885"
Received: from emikisch-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.174.67])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:07:21 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 12:07:10 +0100
Message-Id: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/4] Fix various intel_gpu_top UI layout
 issues
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

A collection of small fixes around various edge case scenarios.

Tvrtko Ursulin (4):
  tools/intel_gpu_top: Fix clients header width when no clients
  tools/intel_gpu_top: Fix client layout on first sample period
  tools/intel_gpu_top: Optimise interactive display a bit
  tools/intel_gpu_top: Handle narrow terminals more gracefully

 tools/intel_gpu_top.c | 66 +++++++++++++++++++++++++++++++++----------
 1 file changed, 51 insertions(+), 15 deletions(-)

-- 
2.39.2

