Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1C39B1559
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2024 08:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C1C110E411;
	Sat, 26 Oct 2024 06:27:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WbmJjdTy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF97710E402
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2024 06:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729924030; x=1761460030;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MAGouAwClj/J/WNsHAA7MpiV14Iy2Xvb6ZX6Oi2b/Us=;
 b=WbmJjdTyeFwkNrSMbfnBuRvy/v+5WDjliIwGYI4Pd70gAoYcdIy/EJIw
 K+CT26xPY0KQY9D6pzwAvLghrpfOGjQKx+GxgLUN/A9cuTjt2kfLNQdXG
 0WqSiLPFDibMAPatfy6lBIHjprbeWLgFp/v7FQ1Ln/8bM4ZgPI80JVBXG
 nKn9c08+W3tjX8zEGJi+cgxs7FYFujTt4fjd+b1sYI1B25ksDHOtBqRId
 ORdywTTn/5wS6oAzR2ArLCG30XC63G5riWRdNgALC+/p81LlIIM0qLHXc
 45P/zI+4+e+cl7f82EAHmL8v5gDi4tyZN3EUWWD3HeMc/P/X0x6pf6sUk g==;
X-CSE-ConnectionGUID: PAKOjE6/T7+lb77b6i0OEA==
X-CSE-MsgGUID: 2wjCGJ54Q6yKxw8W9vCB+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="40177202"
X-IronPort-AV: E=Sophos;i="6.11,234,1725346800"; d="scan'208";a="40177202"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 23:27:09 -0700
X-CSE-ConnectionGUID: xtZ1fX+hTJGsehoLPVHPyg==
X-CSE-MsgGUID: D+lDKBRlRQGR6VFaPVQ5Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,234,1725346800"; d="scan'208";a="118586616"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2.lan)
 ([10.125.111.191])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 23:27:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 3/3] drm/xe: Stop accumulating LRC timestamp on job_free
Date: Sat, 26 Oct 2024 01:26:58 -0500
Message-ID: <20241026062658.28060-4-lucas.demarchi@intel.com>
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

The exec queue timestamp is only really useful when it's being queried
through the fdinfo. There's no need to update it so often, on every
job_free. Tracing a simple app like vkcube running shows an update
rate of ~ 120Hz.

The update on job_free() is used to cover a gap: if exec
queue is created and destroyed rapidily, before a new query, the
timestamp still needs to be accumulated and accounted on the xef.
Initial implementation in commit 6109f24f87d7 ("drm/xe: Add helper to
accumulate exec queue runtime") couldn't do it on the exec_queue_fini
since the xef could be gone at that point. However since commit
ce8c161cbad4 ("drm/xe: Add ref counting for xe_file") the xef is
refcounted and the exec queue has a reference.

Improve the fix in commit 2149ded63079 ("drm/xe: Fix use after free when
client stats are captured") by reducing the frequency in which the
update is needed.

Fixes: 2149ded63079 ("drm/xe: Fix use after free when client stats are captured")
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/xe/xe_exec_queue.c | 6 ++++++
 drivers/gpu/drm/xe/xe_guc_submit.c | 2 --
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_exec_queue.c b/drivers/gpu/drm/xe/xe_exec_queue.c
index b15ca84b2422..bc2fc917e0de 100644
--- a/drivers/gpu/drm/xe/xe_exec_queue.c
+++ b/drivers/gpu/drm/xe/xe_exec_queue.c
@@ -260,8 +260,14 @@ void xe_exec_queue_fini(struct xe_exec_queue *q)
 {
 	int i;
 
+	/*
+	 * Before releasing our ref to lrc and xef, accumulate our run ticks
+	 */
+	xe_exec_queue_update_run_ticks(q);
+
 	for (i = 0; i < q->width; ++i)
 		xe_lrc_put(q->lrc[i]);
+
 	__xe_exec_queue_free(q);
 }
 
diff --git a/drivers/gpu/drm/xe/xe_guc_submit.c b/drivers/gpu/drm/xe/xe_guc_submit.c
index e5d7c767a744..ebe4665d9159 100644
--- a/drivers/gpu/drm/xe/xe_guc_submit.c
+++ b/drivers/gpu/drm/xe/xe_guc_submit.c
@@ -747,8 +747,6 @@ static void guc_exec_queue_free_job(struct drm_sched_job *drm_job)
 {
 	struct xe_sched_job *job = to_xe_sched_job(drm_job);
 
-	xe_exec_queue_update_run_ticks(job->q);
-
 	trace_xe_sched_job_free(job);
 	xe_sched_job_put(job);
 }
-- 
2.47.0

