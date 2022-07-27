Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC1D58359E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 01:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D75E10E931;
	Wed, 27 Jul 2022 23:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5BF10E219
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 23:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658964445; x=1690500445;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l+ImM9ctqe198PBSB635lw/zeCLo+hS8u/6ai/4SB4I=;
 b=OluyN/tp2yQoBkop+308wnJLOTH97o+RlzDu7D8NMb3J98XPw6F2s3u/
 06EDnBFPJtwSkCI9n/1TW9yookCW5whq/B6mrPhBFcWBGqWa6qYVgBbYy
 Ob5H2jdEtU47go98FWUvIFfnKTx3dhoxRH7i6cUObTKjKfTpzz1oZFgsh
 fdrPj1c1HnHMvYRRFUWq2qV1G5nN+XkdWOWXrC1iWLpisqWv00N6a66et
 h6h5JIBZsvXo5VkHQFU6IiEIqj4yKcUo1K3DiazZ3+SNpZ5KWLza/qjjd
 xlONR8dDopBY/8Ov4CpTTcV8BngBNbNUfT8X8ovfS5GP/KtfnqFL2znp6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288384971"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288384971"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:27:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="597595467"
Received: from unknown (HELO anushasr-mobl7.intel.com) ([10.212.185.30])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:27:24 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 16:26:39 -0700
Message-Id: <20220727232643.533884-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Move CDCLK checks to atomic check phase
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

Cc: Matt Roper <matthew.d.roper@intel.com>

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

