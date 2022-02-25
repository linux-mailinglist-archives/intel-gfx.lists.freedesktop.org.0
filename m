Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6970E4C4595
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 14:13:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919D710E212;
	Fri, 25 Feb 2022 13:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AAD510E1F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 13:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645794802; x=1677330802;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o11jFLc6zBonsObum2uwTf2bBQtUCSaCu/GLqEfFC7I=;
 b=I2ECQ50NPpaGx6WFJ199m0DWbZ0p0jKM9670wHKjOrrcLeDeX8WSbI62
 eXWCqwItVaC4M5y8dXBT9WdposPdoDkfGRY4Uwf7Czqm2PXVt7cGzhmN6
 Syf88zMI2go7K2NmvlRz+t850ZsJbDDngdKRJ7sWCbIIgOp8nH+wJOcPj
 TM3HWhGMz9cjhoTCv+daDXgHo5Mrb051+8DLaRu0Fr+0fdWtGC2ibFgLQ
 NDl5UkWrLma8DGPy3D89XytJSoZPUG1SEngdvs2oEt6PA7yslsdEOUC2j
 ygzl4RtpANRiGoF3bxjC2FRtOZlPev6XMM/ZFGtJYJtwYeJtYmbavIfbQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="313209634"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="313209634"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 05:13:21 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="549253890"
Received: from asaechnx-mobl2.ccr.corp.intel.com (HELO
 hades.ger.corp.intel.com) ([10.252.49.63])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 05:13:20 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 15:13:14 +0200
Message-Id: <20220225131316.1433515-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Fix prime_mmap to work when using LMEM
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
Cc: thomas.hellstrom@linux.intel.com, matthew.auld@intel.com,
 daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The current implementation of i915 prime mmap only worked when initializing
drm_i915_gem_object with shmem_region.
When using LMEM, drm_i915_gem_object is initialized with ttm_system_region.
In order to make prime mmap work even this case, when using LMEM
(when using ttm in i915), dma_buf_ops.mmap callback calls drm_gem_prime_mmap().
drm_gem_prime_mmap() of drm core calls internally i915_gem_mmap() so that
prime mmap can perform normally.
The fake offset is processed inside drm_gem_prime_mmap().
    
Testcase: igt/prime_mmap
This patch makes  all of igt/prime_mmap tests success on gpus which use LMEM.

And these series remove defining and using a duplicate function: i915_gem_unmap_dma_buf()

After landing this patch. I'm going to send refactoring rfc patches that
handles the drm_driver.gem_prime_mmap callback, drm_gem_object_funcs.mmap
callback and drm_gem_object_funcs.vm_ops calllback.
ref: https://01.org/linuxgraphics/gfx-docs/drm/gpu/todo.html?#clean-up-mmap-forwarding
     https://www.kernel.org/doc/html/latest/gpu/todo.html#struct-drm-gem-object-funcs

Gwan-gyeong Mun (2):
  drm/i915/dmabuf: Update dma_buf_ops.unmap_dma_buf callback to use
    drm_gem_unmap_dma_buf()
  drm/i915/dmabuf: Fix prime_mmap to work when using LMEM

 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

-- 
2.34.1

