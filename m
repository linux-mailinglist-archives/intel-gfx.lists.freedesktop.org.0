Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E7E687CA0
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 12:47:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A072E10E17C;
	Thu,  2 Feb 2023 11:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8037510E17C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 11:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675338436; x=1706874436;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HzDbjNe1w3Zli3nUZECS7i12T9vYqmfrG0yz/Cvo/wg=;
 b=DkmIGLpUgIim2Hmr4GeFIHKMqGGeGWR+gFpYzNvPGQB/1hCUhgl/GNP+
 2WHJ4omktEkb3OpRQtZJA0qKbrukAwWlqy1bMN/o+jot3J3GbYH05SF0Z
 z721/T9jQFbxJumUd7OFkEC1eRFKNIEMxYSsBsQcgyQh4ALxMyHNUE3Gu
 8DReG8e9doxpL02GlfpPNWMsQLlQxTUxfMVDZICGTDQzSQcTJTKgUbXYE
 z5alZgZAibXztPDi69eBKxnC5kBbGOI1w0tvTj6kUdmswpjMEBvfSnAqx
 X7Q7vlCnRsz9np80tw/Dk2oml8HfwpIIPS9hJ+KENAHbIVmjBbQsRYhLl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="316423245"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="316423245"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 03:47:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="839160567"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="839160567"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 02 Feb 2023 03:47:14 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 17:16:12 +0530
Message-Id: <20230202114613.3177235-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Fix logic to get slice_height for dp
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

According to bspec :49259 VDSC spec implies that 108 lines is an optimal
slice height, but any size can be used as long as vertical active
integer multiple and maximum vertical slice count requirements are met.
Add a fix in this patch to go for most optimal lines and move ahead from
there instead of primitively using 8 lines.

Suraj Kandpal (1):
  drm/i915/dp: Fix logic to fetch slice_height

 drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++----------
 1 file changed, 17 insertions(+), 11 deletions(-)

-- 
2.25.1

