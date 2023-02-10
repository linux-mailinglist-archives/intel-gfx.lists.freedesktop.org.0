Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5A1691F89
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 14:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0023410E251;
	Fri, 10 Feb 2023 13:07:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8272D10E135;
 Fri, 10 Feb 2023 13:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676034420; x=1707570420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zD70VZdjgnOic3K1qhG8DBPtshCjC6Dxxa8vF3F1mg4=;
 b=GzX1EMq781ZPxETaUhYmWZWbyXelIp5tSpr17CK4q1R73jhB8ruyCnrd
 SmaggYFJnEWYIdBsxRE82rrJfIocexHBl8tgh7bTDYVdvwJq0Oqm50APX
 jSEQ6H5EItP7yO41bN4kKDsS0YqR7pcVM6dxr0l7W0MpGCPTTlR204ktj
 2tNzvsIaTtjz1HjnDr0R1qbkdXbxV73Fio7+gAm6H8GhYacn8FKN5Zt7J
 Q/tEkwBLCtMB6r1FjkEeZHRwOXg2xLngVq4uZgHy/ajObdpNt7V1AcLaW
 u+BDOfsf8rScLVlYRyaxTAmoLO3dBfAAXtlsiBO/gLnRadSVGUCfNtpC+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="329045878"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="329045878"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 05:07:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="731711286"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="731711286"
Received: from athornbe-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.209.249])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 05:06:59 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 10 Feb 2023 13:06:44 +0000
Message-Id: <20230210130647.580135-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230210130647.580135-1-tvrtko.ursulin@linux.intel.com>
References: <20230210130647.580135-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/5] drm/syncobj: Mark syncobj waits as external
 waiters
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Use the previously added dma-fence tracking of explicit waiters.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/drm_syncobj.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_syncobj.c b/drivers/gpu/drm/drm_syncobj.c
index 0c2be8360525..776b90774a64 100644
--- a/drivers/gpu/drm/drm_syncobj.c
+++ b/drivers/gpu/drm/drm_syncobj.c
@@ -1065,9 +1065,9 @@ static signed long drm_syncobj_array_wait_timeout(struct drm_syncobj **syncobjs,
 			if ((flags & DRM_SYNCOBJ_WAIT_FLAGS_WAIT_AVAILABLE) ||
 			    dma_fence_is_signaled(fence) ||
 			    (!entries[i].fence_cb.func &&
-			     dma_fence_add_callback(fence,
-						    &entries[i].fence_cb,
-						    syncobj_wait_fence_func))) {
+			     dma_fence_add_wait_callback(fence,
+							 &entries[i].fence_cb,
+							 syncobj_wait_fence_func))) {
 				/* The fence has been signaled */
 				if (flags & DRM_SYNCOBJ_WAIT_FLAGS_WAIT_ALL) {
 					signaled_count++;
-- 
2.34.1

