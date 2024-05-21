Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB018CA9D1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE5810E07C;
	Tue, 21 May 2024 08:17:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TtTUJY3u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBDE110E07C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716279448; x=1747815448;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x6MRAHGXpDlstTTYwT4p6mfYHlVBHGppdjBio8ncfgw=;
 b=TtTUJY3uKPX99hqt6pQUB8YaEFQjA+W32W2rq37nRZlK3KEffaCmTcNs
 L2nt1YEOXA9j/IxlEteS1OIiejLjtjy35uRlVhmaT519giDDFAwo24tyu
 25c3eaYeOjynAKikg5ExRWT2j+lebnZnr3twp/7e2IEuvZxJjIDDWmjwv
 a/6Fx8e+CfI+n7sWel9KS89k0ES7PL2nE4Zc+/1l6jvQ2onfWiYv6cB8+
 E/G+hzUc9TM5oc+nSfPa0scUMAKo2+k6OliggMYv4jyOovohvHFlnnpP2
 dVu2BZUILDgORd+lD+sCPpafFGxQaBFqg638Bv0yPethske5xm06sBiQP A==;
X-CSE-ConnectionGUID: dtf8rbPQRr+FDtzU6ksimw==
X-CSE-MsgGUID: x1oH40MOSeeqtG/QtYd/4w==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12394151"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12394151"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:17:25 -0700
X-CSE-ConnectionGUID: eG5FKuJUS9WG0p42nP7QJQ==
X-CSE-MsgGUID: c0x3Ji6CQc+OhcChAfQSZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="32858109"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa006.fm.intel.com with ESMTP; 21 May 2024 01:17:22 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Fixes in hdcp remote capability
Date: Tue, 21 May 2024 13:44:55 +0530
Message-ID: <20240521081458.1500327-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

This patch series aims to avoid page fault errors caused by aux
early assignment as connector may not be mst and using encoder
to check for connector type.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Move aux assignment after connector type check
  drm/i915/hdcp: Check mst_port to determine connector type

 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
2.43.2

