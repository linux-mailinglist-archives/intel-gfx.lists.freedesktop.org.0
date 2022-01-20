Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C519D494B0F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 10:49:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E44FC10E282;
	Thu, 20 Jan 2022 09:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1525A10E216;
 Thu, 20 Jan 2022 09:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642672146; x=1674208146;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0lsO0Veb4aJ3yYIApNUEO0AwR5SEUaWL3Q5A9UTuA/w=;
 b=FXc6QtNc4NB3zl79Fe/e67f+q2dx8ZBoGgpgfeD05fQG5mLOk2XyAPFQ
 1Y26rPJLIp4GpCvgKuWdrsNS5NBbJOSltnYMNH/aZMWHH7uT9ClD+DVZZ
 gxVtaGQ94x7eHJc+WmCb6qhqGyh61Jq/yjBZDx16gRO9lzUQJkWwzBdbz
 DmFhXfluw5PIBvACrF6Y44LeGVCgOmkC5hpTKpYRZzz2Fc0ADTcojbvL5
 cDB3tqSVbPqA+QMoMZnKzSX1biabBiDocHMeoobtYz5I5Jvw5B7lkrti1
 1RxG22keB1BTHSmX5hKdiG0stjPqkUSVtPO31nUKtCIH2mmDQ/mc38oSB g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="331665646"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="331665646"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 01:49:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="532701272"
Received: from davidfsc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 01:49:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 20 Jan 2022 11:48:56 +0200
Message-Id: <20220120094856.3004147-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/locking: fix drm_modeset_acquire_ctx
 kernel-doc
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
Cc: jani.nikula@intel.com, Stephen Rothwell <sfr@canb.auug.org.au>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The stack_depot member was added without kernel-doc, leading to below
warning. Fix it.

./include/drm/drm_modeset_lock.h:74: warning: Function parameter or
member 'stack_depot' not described in 'drm_modeset_acquire_ctx'

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Fixes: cd06ab2fd48f ("drm/locking: add backtrace for locking contended locks without backoff")
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/drm_modeset_lock.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/drm/drm_modeset_lock.h b/include/drm/drm_modeset_lock.h
index b84693fbd2b5..ec4f543c3d95 100644
--- a/include/drm/drm_modeset_lock.h
+++ b/include/drm/drm_modeset_lock.h
@@ -34,6 +34,7 @@ struct drm_modeset_lock;
  * struct drm_modeset_acquire_ctx - locking context (see ww_acquire_ctx)
  * @ww_ctx: base acquire ctx
  * @contended: used internally for -EDEADLK handling
+ * @stack_depot: used internally for contention debugging
  * @locked: list of held locks
  * @trylock_only: trylock mode used in atomic contexts/panic notifiers
  * @interruptible: whether interruptible locking should be used.
-- 
2.30.2

