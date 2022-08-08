Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC26958C68B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Aug 2022 12:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1716A8CF4F;
	Mon,  8 Aug 2022 10:36:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF7518B443
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Aug 2022 10:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659954974; x=1691490974;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Uitz1AQeKzsnKAgNl4GYza6NDJOvbPxA29Bk49zJuFc=;
 b=V59yuIgIYjDQ4OcizcZ7L58rk9vSXVyvOr05+b0dr+5rCPA0dQQ47m5/
 kCILKgyEWOCnvP87ZmdDKZBRZkNnSOvez36B6s1SEN+oRbyFophlaFviP
 vrfpG5wjdiGpcUXdUhGaK3CubzTbtmMzyTCHJFd5QMvir9eWGxu8UvVP2
 RZHaqx8xEg2sVTDf7/5lGpEur5r2KJ3a0AiEzXUErkEb+Mhi+hJfomC3D
 bNSO8P1kNqkwMJCXaYvjdOKv5litfvl3QRAO66mHojB1Qp2wNpyjrTKD7
 0EkHnYk1TkqY3rra0ujAm2pGhW9QPhRwDB7KCm7c93Fu4Ioa2/ajY0lXO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="354559011"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="354559011"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:36:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="632839281"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 03:36:10 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Aug 2022 16:05:54 +0530
Message-Id: <20220808103555.345-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/1] Avoid parent bridge rpm on mmap mappings
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
Cc: daniel@ffwll.ch, chris.p.wilson@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFC proposal to get community feedback to handle the lmem
mmap memory mappings. We can have two solutions.

1. Avoid rpm for any mmap mapping.
2. Update the page tables while entering to runtime suspend to raise
   a page fault while device in D3.

Solution 2 will incur huge latency versus solution 1 which effectively 
disable the runtime PM.

Caveat with solution 1 that, it doesn't address the case when user 
directly maps PCI Bar resource i.e. below mentioned resource. 
"/sys/bus/pci/devices/0000\:03\:00.0/resource2" 

Anshuman Gupta (1):
  drm/i915/dgfx: Avoid parent bridge rpm on mmap mappings

 drivers/gpu/drm/i915/gem/i915_gem_mman.c | 11 ++++++++
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c  |  8 ++++++
 drivers/gpu/drm/i915/intel_runtime_pm.c  | 35 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.h  |  2 ++
 4 files changed, 56 insertions(+)

-- 
2.26.2

