Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9705BA1E0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 22:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5060410E293;
	Thu, 15 Sep 2022 20:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1B7D10E2AF;
 Thu, 15 Sep 2022 20:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663274381; x=1694810381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B08nbAn1T4J1Zj6o5L1S+QfkxcLeN0Cm0ZRsGzBC3BY=;
 b=jM2RCvzZci7hAMNNtGCChzD8A14R7fwfg0mhDIYjwVTipDqNS04hwWyf
 fROz9JoerObgbtKo248aDMD7Uutphue3nhrcOvc5rUT4BabNAxt2G3SEw
 uJD03D9NaQC1Emwg7xPWXxeXqcaxQ8dUwlMTkxKUUc7jAljZRQdtG337E
 rqZc3y/tG3sVZ1MiKWibvfp2fCQt03xFY3B9xJqLwoYzzgr8aqhJWvyzv
 Q5LvBae5LZ3AEWDqlRGi5clH4Pu+CmMCgO9iQTNeekLDnEVYZeMHafVJN
 dsRQLbG0hXifZ/9ngQNGjxz+h2uQisWdT3vNwSZRNPSdIaZVxPtoaC9xu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="300193623"
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="300193623"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 13:39:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="647991375"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 13:39:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Date: Thu, 15 Sep 2022 13:39:05 -0700
Message-Id: <20220915-stolen-v1-1-117c5f295bb2@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220915-stolen-v1-0-117c5f295bb2@intel.com>
References: <20220915-stolen-v1-0-117c5f295bb2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-bbe61
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/4] drm/i915: Move dsm assignment to be
 after adjustment
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
Cc: tejas.upadhyay@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce possible side effects of assigning the region and bailing out due
to errors.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index acc561c0f0aa..42f4769bb4ac 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -418,14 +418,14 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
 	if (resource_size(&mem->region) == 0)
 		return 0;
 
-	i915->dsm = mem->region;
-
-	if (i915_adjust_stolen(i915, &i915->dsm))
+	if (i915_adjust_stolen(i915, &mem->region))
 		return 0;
 
 	GEM_BUG_ON(i915->dsm.start == 0);
 	GEM_BUG_ON(i915->dsm.end <= i915->dsm.start);
 
+	i915->dsm = mem->region;
+
 	stolen_top = i915->dsm.end + 1;
 	reserved_base = stolen_top;
 	reserved_size = 0;

-- 
b4 0.10.0-dev-bbe61
