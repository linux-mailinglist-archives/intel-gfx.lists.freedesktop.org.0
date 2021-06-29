Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 776C33B7879
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 21:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9053C6E8F6;
	Tue, 29 Jun 2021 19:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 759AE6E8F0;
 Tue, 29 Jun 2021 19:17:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195372666"
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="195372666"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 12:17:19 -0700
X-IronPort-AV: E=Sophos;i="5.83,309,1616482800"; d="scan'208";a="425589407"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 12:17:19 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 29 Jun 2021 12:35:09 -0700
Message-Id: <20210629193511.124099-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] GuC submission / DRM scheduler integration
 plan + new uAPI
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

Subject and patches say it all.

v2: Address comments, patches have details of changes
v3: Address comments, patches have details of changes
v4: Address comments, patches have details of changes
v5: Fix checkpatch and docs warnings

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Matthew Brost (2):
  drm/doc/rfc: i915 GuC submission / DRM scheduler
  drm/doc/rfc: i915 new parallel submission uAPI plan

 Documentation/gpu/rfc/i915_parallel_execbuf.h | 122 +++++++++++++++
 Documentation/gpu/rfc/i915_scheduler.rst      | 148 ++++++++++++++++++
 Documentation/gpu/rfc/index.rst               |   4 +
 3 files changed, 274 insertions(+)
 create mode 100644 Documentation/gpu/rfc/i915_parallel_execbuf.h
 create mode 100644 Documentation/gpu/rfc/i915_scheduler.rst

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
