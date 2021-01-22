Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CF7300ACA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 19:15:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42FE36EA2E;
	Fri, 22 Jan 2021 18:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1168E6EA2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 18:15:23 +0000 (UTC)
IronPort-SDR: DC8KGyWi8R1Ez4QUd5NUhEe5geNERxShSoS4ed00olWf0h8ZmqP1D3gRnHZrPq+M8LS2wjBxvk
 P8SKfb8QrFDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="243560501"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="243560501"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 10:15:21 -0800
IronPort-SDR: WE90vae0fbLykUfO4wSvHF00JdfeG6w04GzxQ8NFLfqQ4vEUgMi4BDzYfJcOY7UD+hJy5qJ68Y
 FD+x+cDm4Ktg==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="357118705"
Received: from lcfenner-mobl1.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.20.148])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 10:15:20 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 18:15:13 +0000
Message-Id: <20210122181514.541436-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dmabuf: don't trust the
 dma_buf->size
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At least for the time being, we need to limit our object sizes such that
the number of pages can fit within a 32b signed int. It looks like we
should also apply the same restriction to any imported dma-buf.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 04e9c04545ad..dc11497f830b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -244,6 +244,16 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 		}
 	}
 
+	/*
+	 * XXX: There is a prevalence of the assumption that we fit the
+	 * object's page count inside a 32bit _signed_ variable. Let's document
+	 * this and catch if we ever need to fix it. In the meantime, if you do
+	 * spot such a local variable, please consider fixing!
+	 */
+
+	if (dma_buf->size >> PAGE_SHIFT > INT_MAX)
+		return ERR_PTR(-E2BIG);
+
 	/* need to attach */
 	attach = dma_buf_attach(dma_buf, dev->dev);
 	if (IS_ERR(attach))
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
