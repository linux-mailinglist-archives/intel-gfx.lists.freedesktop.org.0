Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B81803221
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 13:05:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7543510E354;
	Mon,  4 Dec 2023 12:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B425E10E39C
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 12:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701691533; x=1733227533;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l9HgdDQeAEFhQogo2z9VldmKXXAiuKm6U9qwtNxB+ps=;
 b=TqCFcIYyia+zjF17ICtBb++6l201Bb/odh+6xhPfM2PCyOiqVJPNcW+w
 TBTioUe16/mR7x7lxx8VgIqXLMO7wNtghIFEMci6n+zQVCZ4Euj5oQn4o
 XTUXxbWxwwdpArzvAQxll7kDAFFn5tfZlqirn/HHVG8OFqyzdlyNj9Frp
 XgCnj9J0lFA3DafTzEjfypAGDH/OhkYl7xIojMpjWtMeCpZgSooF8xI05
 j5AJtrN1CigC442Qpnw1+TKcwEW/YA30OpXw+iuu1lZjdKhG8p88VH859
 czCL4E8OOq63gJBl6KR1Mzaxg+QsYyVfB/nbakHl2pyMrxpPkpSBRFfQb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="460216914"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="460216914"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 04:05:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="836565365"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="836565365"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 04 Dec 2023 04:05:19 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Dec 2023 13:58:53 +0200
Message-Id: <20231204115856.176240-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/display: Convert link bitrate to
 clock
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

While reading HW state for C10 and C20 chips, let's update the PLL
clock rates. For C20 the clock rate differs from link bit rate on
DP2.0 cases and hence a conversion from link bitrate to clock is
needed.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Mika Kahola (3):
  drm/i915/display: Move C20 HW readout
  drm/i915/display: Convert link bitrate to corresponding PLL clock
  drm/i915/display: Print out debug messages for clock rates

 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 161 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |   2 +-
 3 files changed, 100 insertions(+), 64 deletions(-)

-- 
2.34.1

