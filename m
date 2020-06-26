Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE2420B5AA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 18:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C403A6ECC9;
	Fri, 26 Jun 2020 16:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3042D6ECC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 16:09:59 +0000 (UTC)
IronPort-SDR: K+8/x50elADfPsTKC6Tjv0hhKvO9ozqMUaWvuQAoB+lcNH9Fb7QsQBYd/cRk0n5cTKxu+ckEdm
 i9FmncKVPwug==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="133758567"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="133758567"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 09:09:58 -0700
IronPort-SDR: fYyi8vyA5ibTslGbJVybWSDpeeYc+RXmy31Fn5ZieJLzxcyPVqcg9M4gxaIVfNUEezXFIxFBTO
 XCm/4XwS1nCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="479868658"
Received: from unknown (HELO joshikun.iind.intel.com) ([10.223.74.209])
 by fmsmga006.fm.intel.com with ESMTP; 26 Jun 2020 09:09:56 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 14:43:30 +0530
Message-Id: <20200626091333.17516-1-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/3] Send a hotplug when edid changes
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
Cc: daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

This series introduce to drm a way to determine if something else
except connection_status had changed during probing, which
can be used by other drivers as well. Another i915 specific part
uses this approach to determine if edid had changed without
changing the connection status and send a hotplug event.

Stanislav Lisovskiy (3):
  drm: Add helper to compare edids.
  drm: Introduce epoch counter to drm_connector
  drm/i915: Send hotplug event if edid had changed

 drivers/gpu/drm/drm_connector.c              | 16 ++++++++
 drivers/gpu/drm/drm_edid.c                   | 39 +++++++++++++++++++-
 drivers/gpu/drm/drm_probe_helper.c           | 38 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 24 +++++++-----
 include/drm/drm_connector.h                  |  2 +
 include/drm/drm_edid.h                       |  9 +++++
 6 files changed, 112 insertions(+), 16 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
