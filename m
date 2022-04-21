Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 830EF509FF1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 14:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F6810E340;
	Thu, 21 Apr 2022 12:46:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECBAA10E166
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 12:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650545206; x=1682081206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=svwuBrmkMdINm7XO4GeNUrkBcrlU0ZrPsz66uXtymrg=;
 b=G13Y6ukD/XzbdHUM0zKv5D1UsmZVpd96OyXdxjZ4QCNfY3KFvyrSmnnX
 XwZQBP4+kPIElFvvX2ocIQulo9B7krXAVGWmExuTgIyU0soM9EKnQVefz
 1J9dRDQ5ajAJrTXpC4DfZJ5TkgMQA1gOfkrh/s7ckgjwFxuQUsQJWgD8q
 KxlgmBu7XflxL1yRdBpO69+rCQKh11pvF9fuPjscQcO+a92Q1Zm0eFcMm
 HenNkFD7V8Kemwp4ydoegP4yiCrpVxlAI8T0UiCX/hfwhqOUx7hI6fK5f
 h+7wMEfwKkkn403POGKuQ2Ex/ymxNpG6vgwZHCD9qQqxiEPkCeRA0qggL w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="289451723"
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="289451723"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2022 05:46:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="562559272"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 21 Apr 2022 05:46:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Apr 2022 15:46:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Apr 2022 15:46:39 +0300
Message-Id: <20220421124640.18467-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421124640.18467-1-ville.syrjala@linux.intel.com>
References: <20220421124640.18467-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH xf86-video-intel 2/3] sna: Dump fences also on
 -ENOBUFS
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Since kernel commit 78d2ad7eb4e1 ("drm/i915/gt: Fix
-EDEADLK handling regression") running out of fences
will result in -ENOBUFS instead of -EDEADLK (the latter
having been stolen by ww mutextes for their internal use).
Adjust the fence dumping to expect either errno value.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/kgem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/sna/kgem.c b/src/sna/kgem.c
index 7b645da8da5f..ac0b61d54ec8 100644
--- a/src/sna/kgem.c
+++ b/src/sna/kgem.c
@@ -4263,7 +4263,7 @@ void _kgem_submit(struct kgem *kgem)
 
 		if (ret == -ENOSPC)
 			dump_gtt_info(kgem);
-		if (ret == -EDEADLK)
+		if (ret == -EDEADLK || ret == -ENOBUFS)
 			dump_fence_regs(kgem);
 
 		if (DEBUG_SYNC) {
-- 
2.35.1

