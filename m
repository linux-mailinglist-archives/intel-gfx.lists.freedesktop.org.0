Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72663789172
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Aug 2023 00:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0098B10E15C;
	Fri, 25 Aug 2023 22:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55EAA10E161
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 22:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693001514; x=1724537514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mjiBL1Py3CZLf2eU16oKpsikBRw7uHYromAX1u7tKnc=;
 b=bGS7wu60vcqQd0kIlIhsa72lxn4SBLlTqLDRwsEw/JIp3oljFZj8gXwH
 zLMyR3T+XA8uiJQkd3y5C5cgZlg4lJ6FDBKGZOgg0pURN9Ch0TxqsAz42
 D4FxDbCgdBr5o4XcqIyxtdh3xXYko+29NUiT55tqs5vRBJlJAahoTeLYt
 ER7Xt8czXvXjZR4FW2cez/3bqrepn3OxcrTdz2Z2oonBwfFU36YIPAclS
 sn4UWKMtpTNsShvLUivkzRNHhbzWaCeLSLUMHfpC7h3ZKgmPkvAPK3w8f
 1Nd2uaJt7OfALtedKnIw76eXgrz0Nppow5SFOK7qtDqG5CPynFSW01b86 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="461178844"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="461178844"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 15:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="827728649"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="827728649"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 15:11:53 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 15:01:13 -0700
Message-Id: <20230825220113.2273092-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230825220113.2273092-1-jonathan.cavitt@intel.com>
References: <20230825220113.2273092-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/gt: Remove interruptible flag from
 wait_for_space
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
Cc: chris.p.wilson@linux.intel.com, jonathan.cavitt@intel.com,
 andi.shyti@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When performing the i915_request_wait in wait_for_space, which itself is
called by intel_ring_begin, we do not need to apply the
I915_TASK_INTERRUPTIBLE flag.  So, remove it.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ring.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 59da4b7bd262..73deac91a037 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -214,9 +214,7 @@ wait_for_space(struct intel_ring *ring,
 	if (GEM_WARN_ON(&target->link == &tl->requests))
 		return -ENOSPC;
 
-	timeout = i915_request_wait(target,
-				    I915_WAIT_INTERRUPTIBLE,
-				    MAX_SCHEDULE_TIMEOUT);
+	timeout = i915_request_wait(target, 0, MAX_SCHEDULE_TIMEOUT);
 	if (timeout < 0)
 		return timeout;
 
-- 
2.25.1

