Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0723C5FAF45
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 11:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8E910E206;
	Tue, 11 Oct 2022 09:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90FBC10E206
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 09:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665480328; x=1697016328;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GB7AFFmwjmdK/flOTySr8LGAa9tFr8IzhQ6DOhO14d8=;
 b=AbHeYezt45VpNzVzmTP6GV2pJRhY1wbCjr6IkQcfbqNQNg1tdn1CGQgS
 gpwJNhTAB+Y4L+hX8Ft5XCuPZdtzSY4ZJZKfYpgla852doP9tEq/mkjUr
 Xop+Mf+rhFo5Ky2yUjWuJRh+k2qGaBjtarcomTrrYjlVeI8ENos0SAxSS
 BMN+6TBOMCSvW0Uo2EuUAwrVujT4DUxExxf4fkNFGH9LPaopwTjZE2RAM
 Up5/vkHAxFsuOytac7C3iUb/UqCFOF7jox4sufsBvDG5SiyC0pOtMGBcE
 awbr6iW0MJwsS/7IM6fYnxWWKW5rI7cANscaUZWnGwcu/y1DTyA2T56dm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="284838054"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="284838054"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 02:25:28 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="730908283"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="730908283"
Received: from mlankhor-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.41.37])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 02:25:26 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:25:06 +0300
Message-Id: <20221011092508.445966-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Provision to ignore long HPDs in CI
 systems
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As some faulty displays generate long HPDs even while connected to ports
can cause CI execution issues. Add a provision to ignore such long HPDs
in such systems with control through debugfs

Vinod Govindapillai (2):
  drm/i915/display: ignore long HPDs based on a flag
  drm/i915/display: debugfs entry to control ignore long hpd flag

 .../gpu/drm/i915/display/intel_display_core.h | 11 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 ++++++
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 25 +++++++++++++++++++
 3 files changed, 43 insertions(+)

-- 
2.34.1

