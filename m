Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCFD7C6770
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 10:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F67110E468;
	Thu, 12 Oct 2023 08:15:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EABE210E442;
 Thu, 12 Oct 2023 08:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697098558; x=1728634558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fHoj1IsAZty2I0ZpHfNKydpjxbohb3jClnXT5IDWVHs=;
 b=GpEULarO3f6Fn7dxvRwtlqXnsPaNr+W99UbVQ9+j4zSmQbhDB9/M6AVI
 VrdqqaUxAqAQZTaXGNP8i3LAKS+UH3LkKfElAIRp+L0UX7I3s/x3+foce
 xKCj7RDu20FiTtKuB/xZvjyQQI0XWBEC0DkyihFU8UykSMkBfMralZxAv
 IacWAuWpXppiG/EkIhXGXK7iXTRj7wyfovGdYPl8jGIJ0HW/sCGZoy15I
 lZDAZPAgqIwiex2vf4TE8Wax1MYa5zX9cu9yfThq8uuH/m5eFOWvVfi2j
 IKmL8axk6x+6fbqGkPmhbTWbuOsd3XoGj36QqDeUIxWq2ZW5pJOOWxkUi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3454673"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; 
   d="scan'208";a="3454673"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:15:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="783599294"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="783599294"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.239.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:15:55 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 09:15:39 +0100
Message-Id: <20231012081547.852052-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/9] tests/i915/drm_fdinfo: Check engine
 info is supported
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

On top of checking that parsing works, check that there are some engines
present. This will be needed once the memory stats are added and so return
value from __igt_parse_drm_fdinfo() will then be possible to be greater
than zero even when engine stats are not supported.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/intel/drm_fdinfo.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
index aca19db50680..344c44dce78b 100644
--- a/tests/intel/drm_fdinfo.c
+++ b/tests/intel/drm_fdinfo.c
@@ -737,6 +737,7 @@ igt_main
 
 		igt_require_gem(i915);
 		igt_require(igt_parse_drm_fdinfo(i915, &info, NULL, 0, NULL, 0));
+		igt_require(info.num_engines);
 
 		ctx = intel_ctx_create_all_physical(i915);
 
-- 
2.39.2

