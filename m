Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 459015ED857
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 10:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73BC310E381;
	Wed, 28 Sep 2022 08:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26EF10E360
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 08:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664355546; x=1695891546;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Np3T7N3TObKdC03YyyrEGgEcgZ2sQDTB9ZVnepcaT5k=;
 b=OuTVcKGg1g14Q6/IBIHYMzHNQWT3CcIRsuQ7m6B23LX3effJq0zCrzdq
 i+jcRC/MTUO7X4ZhQjxAkFe3s9q0z/rSnb1qPGQhDRMsJKgFKC+TVPAaC
 S8M2FiYfO2EvlsgdSvDhtqTWFoguDsXp/iHPljf7jtbV3jB5jBu9Pz6Hh
 FiZcXeFoJ5DsgmpSHY+sBPAMNQHOIOFl3TJHOH3bHe6MxEMEIZkeZ8pnY
 yTXhBKA3r1eEekUqysjzZWZeiW2SVvHTL6ErGuq+WsbTX7xMsxvgOkY16
 wTbrri5LjfNG8eGLdiZbwxbv8YyMqH1xMgFcAXrZLhUtPQZ7z9cQZlqDL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="303030944"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="303030944"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 01:58:56 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="690319962"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="690319962"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.5.184])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 01:58:53 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Wed, 28 Sep 2022 10:58:24 +0200
Message-Id: <20220928085826.243721-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [core-for-CI][PATCH v2 0/2] iommu: Remove iova cpu
 hotplugging flushing
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Manual revert of commit f598a497bc7d ("iova: Add CPU hotplug handler to
flush rcaches").  It is trying to instantiate a cpuhp notifier from inside
a cpuhp callback.  That code replaced intel_iommu implementation of
flushing per-IOVA domain CPU rcaches which used a single instance of cpuhp
held for the module lifetime.

v2: Restore formerly reverted commit ac9a5d522bb8 "iommu/dma: Fix race
    condition during iova_domain initialization" after we have this more
    effective fix applied.  The former occurred not sufficient and is no
    longer needed once we have the latter in place.

Note: I'm no longer CCing IOMMU nor mainstream, they have been already
      warned.


Chris Wilson (1):
  iommu: Remove iova cpu hotplugging flushing

Janusz Krzysztofik (1):
  Restore "iommu/dma: Fix race condition during iova_domain
    initialization"

 drivers/iommu/dma-iommu.c  | 17 +++++++++++++----
 drivers/iommu/iova.c       | 28 ----------------------------
 include/linux/cpuhotplug.h |  1 -
 include/linux/iova.h       |  1 -
 4 files changed, 13 insertions(+), 34 deletions(-)

-- 
2.25.1

