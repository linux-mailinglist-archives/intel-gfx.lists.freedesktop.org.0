Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC14553535F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 20:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 371D810E44A;
	Thu, 26 May 2022 18:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6124010E5C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 18:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653590142; x=1685126142;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+EUocINekoqFeNtHdyaRpia9wZM7qan0E8dYjr6lPcI=;
 b=WEPmkhokc2yGJUfvnAgvy9mcvcb3h6nlWiKeRJTmzm/R6O+ghRNDvpTL
 jPotCAhNjtm42pq/rGeH6ZpjT/jSC2Q7c2hM132+TZlgab3wqUNcP8B/y
 V/3UucDzsAiEtSRnWmPLpn3UYqxiOcQbIjPkW4Rucu+JEluMjclOWCVKA
 AqQmdywWCBEYRz2oeGWgIGNlYQ5jeNnIFbr0waumWWXzq+2N3Tl8xdBTa
 ewxP9pmdmebxE3IUNrTqRwBfOvGXw7lZk/VnCai0keIEPdKjoUWHfiUBV
 tDTJtzuuJJnh2OEuvjOQqMHbxQH9f88/jBcskhuQTZa3Jf6em6exOPTHZ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="360635475"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="360635475"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 11:35:41 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="609831388"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 11:35:41 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 May 2022 11:35:33 -0700
Message-Id: <cover.1653589699.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/gt: Expose per gt defaults in sysfs
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

Create a gt/gtN/.defaults directory (similar to
engine/<engine-name>/.defaults) to expose default parameter values for each
gt in sysfs. This allows userspace to restore default parameter values
after they may have changed.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Ashutosh Dixit (2):
  drm/i915/gt: Expose per-gt RPS defaults in sysfs
  drm/i915/gt: Expose default value for media_freq_factor in per-gt
    sysfs

 drivers/gpu/drm/i915/gt/intel_gt_sysfs.c    | 10 +--
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h    |  6 ++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 69 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_types.h    | 11 ++++
 drivers/gpu/drm/i915/gt/intel_rps.c         |  3 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 19 ++++--
 6 files changed, 108 insertions(+), 10 deletions(-)

-- 
2.34.1

