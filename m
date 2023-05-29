Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F33C57148DD
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 13:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5CA10E276;
	Mon, 29 May 2023 11:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FEAB10E0AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 11:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685361036; x=1716897036;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dm6HKHkk8z4LtJ0MAigOoRa372UjhC87a9jngmcD50A=;
 b=T4RIQGj8C6Z+vyxDOPNlZrOTNaYT/6Cf2heHGBxkUiqv8RU1KCSqqQHK
 N+bFTkGNI6dIVpew5TNRNP4SLOno/sa9mYC4Jp60ojNzMoRj+ALMGNoN3
 npoiUdfadujDWCsJVYMNImaMkC4f3HgUoR1PMua85xjGAqTBZDT3JbVuy
 f77qJ1auONaSJOIRmRdE9WKByhX6UPlfzsj8F/YF4kdXrasAUiJChECOS
 N6HDOdwBi29O57koy82LtlWiBRs5k62UBbN+DAae+gpGld89LK4UtJjdN
 V3eg1yW6IwEm1BQBgDLxmpt0/ajIvvKdWYEvCwsrw12rCB5XY5npwz5WV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="418171553"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="418171553"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:50:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="700237586"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="700237586"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 29 May 2023 04:50:34 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 17:19:00 +0530
Message-Id: <20230529114902.1528192-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Change HDCP GSC message flow to use same
 object
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

Change HDCP GSC message memory allocation to use same object with
multiple pages one page pointing to input while other points to
output to avoid corruption of output message that can be caused by
overwriting.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Allocate a multipage object to hdcp_gsc_message
  drm/i915/hdcp: Modify intel_gsc_send_sync function

 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 82 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  3 +-
 2 files changed, 50 insertions(+), 35 deletions(-)

-- 
2.25.1

