Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C65E5622A72
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065A710E5AA;
	Wed,  9 Nov 2022 11:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A5710E5AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667993156; x=1699529156;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ky0RIwK5+4tNc3K/uCgCPi9jU7UZaz7CkQxm/bXh1io=;
 b=RzcaZdzBLWp8SBYXTXLKjnb7GXvMx6PIgjz96RWera85m1dpxkmPiGjp
 IZzfamgU/GVaZr+n2BE8BTFS2STpPfG3hHW3SWxz+R/WMHqvz+97pl99k
 QMfBZszaKJkzudwgMNJvBNIFhHT8xTCHCPS8Ic36qCE0wpYjgsVLQoqVE
 NTvedsnRMaHl22tOs7XrgV+j5G1O4JyLEwOK9rF1HDfDFJk5LJ9d7AdxZ
 0yG5nwXOyyd5+xbE68zqJ6oiax3uZ754wM/3T4RiOMqsFV6gM7s9LL3Jv
 dsfVzqJrO2F8XaUBBmn/m+uGR6wdwRTqo/dscaOUUhMX6TGSa+Ped03aV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="373099384"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="373099384"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:25:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725943971"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="725943971"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:25:52 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 16:55:40 +0530
Message-Id: <20221109112541.275021-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/1] Add selftest for slpc tile interaction
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
and checks if there is throttling

Rev2 : Fix build error
Rev3 : Addressed cosmetic review comments
Rev4 : Run test on media engines if gt type is GT_MEDIA

Riana Tauro (1):
  drm/i915/guc/slpc: Add selftest for slpc tile-tile interaction

 drivers/gpu/drm/i915/gt/selftest_slpc.c | 70 +++++++++++++++++++++++--
 1 file changed, 66 insertions(+), 4 deletions(-)

-- 
2.25.1

