Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 156DF545D04
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 09:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7488210F76F;
	Fri, 10 Jun 2022 07:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9186D10F76F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 07:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654845444; x=1686381444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rPxO+vIYRD9IlRVuuMz30nc//zuJJqu8lfiz0gHVDBg=;
 b=hXO1gGWfaVzmd1Kps41qJybBdwLntjvA4M9mAi4MTeKTIn83pR4/eiee
 OlqtCrjvyyHoGDSydrR9K3hFJk+eLY9i4z6J91eVfQowIPDJklReEGDgK
 7F59ACEBRDsdihqzZtOTlrgc12UnQA3mT9VKC8kPj0Mbt2B5KHcacmYsU
 UOFMvmu4JYMTBEA1aq7NIM+B+M1NuhLd/GFo3rj+APbfyPoHKDp+ZOUeT
 xnFqfYGVvldEz0YZZo8c5a3WYtT8b1SMfBRUZq2Hd1xdsPPQMSqDP5oDx
 JFBLYLZudMFn6OuCNHkHRqJ+YoRVXnz4lTmcIgX6hqCsKAlIZAp50fOWm g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="302917243"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="302917243"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:17:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="828090937"
Received: from seamusk-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.39.102])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:17:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 10:17:01 +0300
Message-Id: <20220610071704.4150527-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] Disable connector polling for a headless
 sku
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch set disables connector polling when entering runtime
suspend for headless sku to prevent waking it up again when poll
is performed.

v2:
 - integrate headless check into INTEL_DISPLAY_ENABLED

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>

Jouni Högander (3):
  drm/i915/opregion: add function to check if headless sku
  drm/i915: Do not start connector polling if display is disabled
  drm/i915: Do not start connector polling on headless sku

 drivers/gpu/drm/i915/display/intel_hotplug.c  |  3 ++-
 drivers/gpu/drm/i915/display/intel_opregion.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h |  7 +++++++
 drivers/gpu/drm/i915/i915_drv.h               |  4 +++-
 4 files changed, 26 insertions(+), 2 deletions(-)

-- 
2.25.1

