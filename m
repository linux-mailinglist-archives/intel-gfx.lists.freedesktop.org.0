Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B41D54608D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 10:55:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE00311272C;
	Fri, 10 Jun 2022 08:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6F910FF89
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 08:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654851298; x=1686387298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cN7N3qv+dWvhd1Tp2kb0tdhGskZtfaYDvThEHNqBJdc=;
 b=WPgYm2ys3oA318Ez62q1cuz+afUxgIb3zx4uKBgb8IokuHHKqv/M/oGd
 e2OR7q5hozFAz305iDTHYACg1gC+jE0XtNMgYdWMAcp+1xPMShURny0WJ
 0YemehGzhgs985f7lmbkR5NJQMgOErCy6LfwbH8oXG0NhXdD5GGddxKwr
 UIFrcWZVqCkRyesrCoEuEFLDOA0lWs+itryxjm+x/09Cetsd4Vc0Cilsa
 68YW92j8LFATSMI5pA2EuGpm+ujHGFfrz7b9ttZsRDxZ4T5lSFMc/sjji
 5jkhLsLweuuhs02utzol5QWmd8FtU3D2xRf7pGKYXeu3ur+KCLuD5kfmf g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="278704903"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="278704903"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 01:54:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="586105700"
Received: from seamusk-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.39.102])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 01:54:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 11:54:26 +0300
Message-Id: <20220610085429.52935-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/3] Disable connector polling for a headless
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

v3:
 - dummy intel_opregion_headless_sku is now static inline
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

