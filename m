Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA970560A10
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 21:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1070D10ED94;
	Wed, 29 Jun 2022 19:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E8910ED34;
 Wed, 29 Jun 2022 19:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656529906; x=1688065906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9vMACVS+tUfgpQ8RA/xGcGR2d8E9t3AiKd2S59YHMsM=;
 b=mzx9Tb9V7Lc7REF9uj/WeUEsFB3TMMFBLl/9W4wgAZi0otuNvDEBwupa
 Rcqmd9NXj217nvmxkkiRyP4idKKegFg0J1jWCONnoqKhtr27NEozDcLDD
 AaleNszNmU6JCPv6xpRBQuQxxKDLs45+0W3VySiTb1QLX4uub4pozXiED
 StVljHq6btmP4DZNNiOEkIPji/3s4BsM3psb8V214Ql82W1LMfWeXpwt/
 kyvq3AzSbXD+aMWD5FyJYJIKTPCXH5h8wtGS4o2CHrHGdp/fnYdpQ5+y9
 jsCLKWTc47D386XKADih1oVR+Y7IAU/qhfnBV+SjjLR3OoZCsURwVmKeI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="368439257"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="368439257"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:20 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="733297173"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 12:07:19 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 29 Jun 2022 20:06:58 +0100
Message-Id: <20220629190658.395463-9-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629190658.395463-1-matthew.auld@intel.com>
References: <20220629190658.395463-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 9/9] lib/i915: request CPU_ACCESS for fb
 objects
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

kms_frontbuffer_tracking@basic falls over if the fb needs to be migrated
from non-mappable device memory, to the mappable part, due to being
temporarily pinned for scanout, when hitting the CPU fault handler,
which just gives us SIGBUS. If the device has a small BAR let's attempt
to use the mappable portion, if possible.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 lib/ioctl_wrappers.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
index 09eb3ce7..7713e78b 100644
--- a/lib/ioctl_wrappers.c
+++ b/lib/ioctl_wrappers.c
@@ -635,7 +635,8 @@ uint32_t gem_buffer_create_fb_obj(int fd, uint64_t size)
 	uint32_t handle;
 
 	if (gem_has_lmem(fd))
-		handle = gem_create_in_memory_regions(fd, size, REGION_LMEM(0));
+		handle = gem_create_with_cpu_access_in_memory_regions(fd, size,
+								      REGION_LMEM(0));
 	else
 		handle = gem_create(fd, size);
 
-- 
2.36.1

