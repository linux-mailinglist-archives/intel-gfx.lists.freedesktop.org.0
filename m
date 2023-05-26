Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C8F712ACD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEA0B10E820;
	Fri, 26 May 2023 16:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AA2710E829
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119137; x=1716655137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t1Qw8eRIGl23tyFfXNPfYO6ZhhJVetVy+Tz6JiIz5ww=;
 b=XfqP7D8jGz7k7Os+hlDDTCKOXgnzd1bDwNazcgDq7MDHTIrvwOiUbBwA
 VeR2Gf28xgQ+s8q2VtOQ/pKH8ZROG54Vcf3jrGWbmrffQEr4+en9RSvS/
 07Zjtx+lyieBhO9x1rAEcS4zSbNwf7heMLaIwq7LWb0/FkR4Ru4XDbTW8
 j1hrPka4Jva7WEKcZ4b3eweFKpk5DEcK9svB+/gJEs/JEV9WMFNlU7vQM
 jjpBy3XzpCiQZCD71gQhFZn1ckO3e+/J/v22w1Ek3IzALuAKmc/DGK0IW
 pN76XlGMdryJPeRrEVNeANUbqc9GszKvmSit6iWOsnd//4f6U/DWs338V g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="420006257"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="420006257"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="951949660"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="951949660"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:38:04 +0300
Message-Id: <e7654682f6bd6a9f6af74f4b6eb5fff7b527e412.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/15] drm/i915/selftest: annotate maybe unused
 but set variable unused
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for re-enabling -Wunused-but-set-variable.

The variable is indeed 'unused' as the name suggests, but we can't just
drop it because i915_vma_unbind_unlocked() is annotated
__must_check. Apparently the selftest does not really need to check the
value.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 36940ef10108..5c397a2df70e 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -391,7 +391,7 @@ static void close_object_list(struct list_head *objects,
 			      struct i915_address_space *vm)
 {
 	struct drm_i915_gem_object *obj, *on;
-	int ignored;
+	int __maybe_unused ignored;
 
 	list_for_each_entry_safe(obj, on, objects, st_link) {
 		struct i915_vma *vma;
-- 
2.39.2

