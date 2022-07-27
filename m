Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE8F58359B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 01:24:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB75110E38E;
	Wed, 27 Jul 2022 23:24:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93EA010E38E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 23:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658964263; x=1690500263;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iPRK/FsQbpTgD57NMu8KiQIxud6OaRJw2IiUP+ze+HA=;
 b=DmwGTDwqGmh+7JNLmOde7rCkQUpfWFNwD8AfPK59ODCE2j0+ovXqjUBE
 IbPNPXXZEqP4GzoPriq1eXs1mLuvPlDY+s1if+sMZzhLOG/uJI5mD971b
 RDafKnunXnsaShwRV0OJ3oeBILdf8xJnuEaV/gdkU8+cDnK2ua9YhHUHR
 C1FllCjlmOWq4F+mBvcmP1vdIv4pgMI73Aygmt4mKP/wLkEX5/RDkx6My
 h52iZdBpeZ3ZVP6fHXDH3Atfnp4FWC8aw7lPjnidzhmYIpOJ4/3bze659
 QO9KvKcSIoqWwCoRpYr4kqg7DuKT/decNug8ss97MzjWNe7ZQs7UmTV/N Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="314155278"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="314155278"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:24:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659415377"
Received: from unknown (HELO anushasr-mobl7.intel.com) ([10.212.185.30])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:24:18 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 16:23:40 -0700
Message-Id: <20220727232344.533581-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Add CDCLK checks to atomic check phase
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

The intention is to check for squashing, crawling conditions
at atomic check phase and prepare for commit phase. This basically
means the in-flight cdclk state is available. intel_cdclk_can_squash(),
intel_cdclk_can_crawl() and intel_cdclk_needs_modeset() have changes
to accommodate this.

Anusha Srivatsa (4):
  drm/i915/display: Add CDCLK actions to intel_cdclk_state
  drm/i915/display: s/intel_cdclk_can_squash/intel_cdclk_squash
  drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
  drm/i915/display: Add cdclk checks to atomic check

 drivers/gpu/drm/i915/display/intel_cdclk.c | 151 ++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_cdclk.h |  13 ++
 2 files changed, 112 insertions(+), 52 deletions(-)

-- 
2.25.1

