Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 167FF20EF3A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 09:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0186989AA6;
	Tue, 30 Jun 2020 07:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AEA489AA6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 07:23:23 +0000 (UTC)
IronPort-SDR: 7KvhVC0GgZeD+6qfpYzBpd+jWuIcJJL2ZiWITCEOEJcNVVdZmr79RaHrC/EeNG79PNG+8+Gwtv
 +y1ZRnT7G8ww==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="126291934"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="126291934"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 00:23:22 -0700
IronPort-SDR: m9thB38rbwMRBB7wbyqU6KQLOr4uDwYUlWhM0ro4blKQvAz8syXBDYoazA0HdYq03bB6+Ckb8M
 wW9vwxR4NQBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="295126407"
Received: from unknown (HELO joshikun.iind.intel.com) ([10.223.74.209])
 by orsmga002.jf.intel.com with ESMTP; 30 Jun 2020 00:23:21 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 05:56:57 +0530
Message-Id: <20200630002700.5451-1-kunal1.joshi@intel.com>
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

 drivers/gpu/drm/drm_connector.c              | 16 +++++++++
 drivers/gpu/drm/drm_edid.c                   | 37 ++++++++++++++++++-
 drivers/gpu/drm/drm_probe_helper.c           | 38 +++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_hotplug.c | 24 +++++++------
 include/drm/drm_connector.h                  |  2 ++
 include/drm/drm_edid.h                       |  9 +++++
 6 files changed, 110 insertions(+), 16 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
