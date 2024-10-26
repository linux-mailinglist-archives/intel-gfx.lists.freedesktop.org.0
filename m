Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A75E09B155A
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2024 08:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C5C10EB7E;
	Sat, 26 Oct 2024 06:27:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kng8FBaB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521C110E3FF
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2024 06:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729924029; x=1761460029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EuoIEako/BaOClz/Tl33jfqFXdSg5lrE2smGeabOIIs=;
 b=kng8FBaBRAgjnMTh2fsHrc+H67oJzLVE8Wp7Ji51n5zdmC4AeSMAD+hH
 Bj1jX92+b99wTlH382QInENEP1S/535ZTvw0VglzTOH5jGoNPeZcZhp4Y
 eKHviCmt2ysTg6y+SLonTh0Y10MivxGq9ErjwKZqh9StK0PYWM+3+zw7g
 8kMZgKTu2YTsRfNrfymlwqHKCE9uenPx/dtY1XvGs17OpyE72IzCqWQur
 JglFGWvFi0DgYwar2Gmr9v/ai6mj9MugFCjwi5yg9OxatcbUSozxsXOSi
 G+Ht6BIGoQc2fIGEFV+NAMG2UzY4StTRIEuaPrW77BSCutTX+jRIWJmxJ w==;
X-CSE-ConnectionGUID: dm0xywWgQ4SxgEJnSwZG1g==
X-CSE-MsgGUID: N4lvGEqaTmaxHo4mN5y4fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="40177201"
X-IronPort-AV: E=Sophos;i="6.11,234,1725346800"; d="scan'208";a="40177201"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 23:27:09 -0700
X-CSE-ConnectionGUID: RRJb0c2LQzuoDmT/oeePyg==
X-CSE-MsgGUID: qSnoPxKcS3StPe6SotAC6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,234,1725346800"; d="scan'208";a="118586612"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2.lan)
 ([10.125.111.191])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 23:27:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 2/3] drm/xe: Accumulate exec queue timestamp on destroy
Date: Sat, 26 Oct 2024 01:26:57 -0500
Message-ID: <20241026062658.28060-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026062658.28060-1-lucas.demarchi@intel.com>
References: <20241026062658.28060-1-lucas.demarchi@intel.com>
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

When the exec queue is destroyed, there's a race between a query to the
fdinfo and the exec queue value being updated: after the destroy ioctl,
if the fdinfo is queried before a call to guc_exec_queue_free_job(),
the wrong utilization is reported: it's not accumulated on the query
since the queue was removed from the array, and the value wasn't updated
yet by the free_job().

Explicitly accumulate the engine utilization so the right value is
visible after the ioctl return.

Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2667
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/xe/xe_exec_queue.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_exec_queue.c b/drivers/gpu/drm/xe/xe_exec_queue.c
index d098d2dd1b2d..b15ca84b2422 100644
--- a/drivers/gpu/drm/xe/xe_exec_queue.c
+++ b/drivers/gpu/drm/xe/xe_exec_queue.c
@@ -829,6 +829,14 @@ int xe_exec_queue_destroy_ioctl(struct drm_device *dev, void *data,
 
 	xe_exec_queue_kill(q);
 
+	/*
+	 * After killing and destroying the exec queue, make sure userspace has
+	 * an updated view of the run ticks, regardless if this was the last
+	 * ref: since the exec queue is removed from xef->exec_queue.xa, a
+	 * query to fdinfo after this returns could not account for this load.
+	 */
+	xe_exec_queue_update_run_ticks(q);
+
 	trace_xe_exec_queue_close(q);
 	xe_exec_queue_put(q);
 
-- 
2.47.0

