Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5D162F2CC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65CBD10E22E;
	Fri, 18 Nov 2022 10:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C161E10E22E;
 Fri, 18 Nov 2022 10:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768191; x=1700304191;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4hF6EH9szqPAAzwvJNvLoutYbdoI2iKcXrJV8Zzbx/g=;
 b=AUvKlklQStETZ/jobE1rtBsyNRVCEIb0f5tWsikT7DjjmVPJCkrXRDUK
 TUN7E9nqLU1qcPlfQmSttxJ1mqLSI7r4FzKXWTrQFvl20Rz2iYumGKWzS
 c9j5mRQ0UeW6d+nNK5jbDvxgIjyj4vny9amLZUSYMubzHJeQbzJb8suhI
 mHiB0qEuTgC8sPVpQEf29tpiu0eb0qoHohayaqJgTbtikF+ic5rttc9nF
 6CEPU8e+4b43+a+HEU/m8mSgdSm6LP37LetHcdLHLRNwg71pADSoGhyoZ
 j+tqXPzC1N7Op3OY1WZdcyUuijEErpAox7BWWcVeKTqR574GreM98vsyV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="311812863"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="311812863"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:43:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="729188056"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="729188056"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.29.15])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:43:06 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Fri, 18 Nov 2022 11:42:20 +0100
Message-Id: <20221118104222.57328-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915: Fix timeout handling when
 retiring requests
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
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@intel.com>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fixes for issues discovered via code review while working on
https://gitlab.freedesktop.org/drm/intel/issues/7349.

v2:
PATCH 1: fix the issue on the caller side, not the provider,
	 reword commit message and description.
PATCH 2: move the added lines down so flush_submission() is not affected,
	 reword commit message and description.
PATCH 3: drop -- controversial, not needed.

Janusz Krzysztofik (2):
  drm/i915: Fix negative value passed as remaining time
  drm/i915: Never return 0 if not all requests retired

 drivers/gpu/drm/i915/gt/intel_gt.c          | 11 +++++++++--
 drivers/gpu/drm/i915/gt/intel_gt_requests.c |  3 +++
 2 files changed, 12 insertions(+), 2 deletions(-)

-- 
2.25.1

