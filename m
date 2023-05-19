Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DA2709412
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 11:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A8210E5EF;
	Fri, 19 May 2023 09:50:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F0F10E5F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 May 2023 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684489853; x=1716025853;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lbEhOFyAcKd4NTULTFTTmA/PUX7ucKNthkzTPmAqZ34=;
 b=IxZjjaTxH8qN2aXkle1YxNbbxi8AR4DxbF1YArGkSftHar7b1AsOhJ99
 x4pt73ClHD4XjhtOlLUit3jxNONnd9Szh50gwDKHnS2lnKTX23mZnviMf
 0HnpHfPtasbu1JeaULueVm+/wsY1/Z5LpS+Ric2I/hLKxb2HO6d1vlIit
 hdcoG2dxWzodivlwmw1v23x2yIK1wti+CelxdXej6pQGvYzR+7IEhFR9R
 kEDzdKx1Ab2fdAtU54iMMg4399ZtKyQAoYV+mBZkmPV14ZsLifUPab6i0
 SWb6CGOhmYQB9yXCRvYSMAenDUbWqYDO8G5s1aZNGjQbiRrwGkVDEbXVA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="380543172"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="380543172"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 02:50:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="679999094"
X-IronPort-AV: E=Sophos;i="6.00,176,1681196400"; d="scan'208";a="679999094"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 19 May 2023 02:50:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 May 2023 15:19:16 +0530
Message-Id: <20230519094918.1182044-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Use different intel_hdcp_gsc_message
 instances
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

Use different intel_hdcp_gsc_message instances to send
and receive the messages from gsc since there are chances
using the same instance can cause corruption of data.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Create hdcp_gsc_message in and out
  drm/i915/hdcp: Fill in hdcp_gsc_out message

 .../gpu/drm/i915/display/intel_display_core.h |  3 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 98 ++++++++++++-------
 2 files changed, 64 insertions(+), 37 deletions(-)

-- 
2.25.1

