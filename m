Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA864123334
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 18:09:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5D76E1B8;
	Tue, 17 Dec 2019 17:09:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43CAF6E1B8
 for <Intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 17:09:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 09:09:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="217870136"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by orsmga003.jf.intel.com with ESMTP; 17 Dec 2019 09:09:35 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 17:09:33 +0000
Message-Id: <20191217170933.8108-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191217161814.8358-1-tvrtko.ursulin@linux.intel.com>
References: <20191217161814.8358-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Fix pid leak with banned clients
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
Cc: Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Get_pid_task() needs to be paired with a put_pid or we leak a pid
reference every time a banned client tries to create a context.

v2:
 * task_pid_nr helper exists! (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: b083a0870c79 ("drm/i915: Add per client max context ban limit")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 46b4d1d643f8..6618c0c6506c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -2194,8 +2194,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	ext_data.fpriv = file->driver_priv;
 	if (client_is_banned(ext_data.fpriv)) {
 		DRM_DEBUG("client %s[%d] banned from creating ctx\n",
-			  current->comm,
-			  pid_nr(get_task_pid(current, PIDTYPE_PID)));
+			  current->comm, task_pid_nr(current));
 		return -EIO;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
