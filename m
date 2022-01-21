Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31746495FCF
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:30:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E24710EB09;
	Fri, 21 Jan 2022 13:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EACB10EB20
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642771826; x=1674307826;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NNRmPD8U1hhPaDvpz8wjr08/GkH9ErXRdGch1fXyYT8=;
 b=JPZS5JTrNb79SzbhyzjUCIUXeN9kfhxM15suY9aA32sYUPv3KS/ORgBA
 BjkuxxO9x3UCOn2I0/I0v/DDlDajJF3efZofouoRVgiudk9ixizWQddHq
 qLkwd7Tmsl+dlUddZ+E72KqNRt0BU4E6qvazTvI/52e59xEII43+STkuD
 0EMJ6X3+PRPET+W/j/icTaAW9ap2wbI9Fl8tZJf5ky21qSO9HuGW47AjM
 CY5iTqRZDZ+RBmd6DmW+WQJK72UJSkAVnIi3ROHiUQUFXuHY0dEG0KIOR
 IUTLwMBcOYJO6GkufMhTLa16hYCBYyBo2kAbeNX1sS4LgCLTpNbiM8SLf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245872035"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245872035"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:30:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533274516"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:30:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:29:57 +0200
Message-Id: <20220121132957.3778555-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: nuke local versions of
 WARN_ON/WARN_ON_ONCE
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

In general, we should avoid redefining kernel macros like this. It can
get confusing, and what gets used will depend on whether the header is
included or not. Moreover, we should prefer drm_WARN_ON() and
drm_WARN_ON_ONCE() anyway, which include the stringified error condition
in the message.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 7a5925072466..bfafd0afd117 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -37,21 +37,6 @@ struct timer_list;
 
 #define FDO_BUG_URL "https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs"
 
-#undef WARN_ON
-/* Many gcc seem to no see through this and fall over :( */
-#if 0
-#define WARN_ON(x) ({ \
-	bool __i915_warn_cond = (x); \
-	if (__builtin_constant_p(__i915_warn_cond)) \
-		BUILD_BUG_ON(__i915_warn_cond); \
-	WARN(__i915_warn_cond, "WARN_ON(" #x ")"); })
-#else
-#define WARN_ON(x) WARN((x), "%s", "WARN_ON(" __stringify(x) ")")
-#endif
-
-#undef WARN_ON_ONCE
-#define WARN_ON_ONCE(x) WARN_ONCE((x), "%s", "WARN_ON_ONCE(" __stringify(x) ")")
-
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
 
-- 
2.30.2

