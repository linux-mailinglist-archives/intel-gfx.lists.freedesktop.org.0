Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 091F8792F06
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 21:36:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0910310E498;
	Tue,  5 Sep 2023 19:36:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B78610E507
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 19:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693942587; x=1725478587;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7S8eSz6M+3zc1fnVmvef5kMVklTti7szYoPz/CVngzk=;
 b=AuGKScY4GzfbbwyHqxO0p2RwJhfNgR3FOGGbCLUOmpJSnaKvBLcdjhd3
 YW3FfhHR3uv1+P3E4192cEUGStceMfmM0mFXbUmbJX5IpVYSRT26d18fL
 zah8Jp/449lvSDkUsBQyCIGLGinQBETKOHVRydkVgQ9LNLcPwEYY+8LvC
 ug/MThWmfe8KxDoxJikXjqGvmLX215wud9PIA+1Rhm5mmkGnzvDOWw6Re
 QXg1XvR1JyBwoxhTaMXwrK1n/34LZD7jTZtPfXnO6Q6jfpxS7WHcGjtz+
 2MuND5v71TQFE8J49sFfBd4p9NU/tf+hnLhdRWBZZBkBFgBswO6iNHTuH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="361916572"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="361916572"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 12:36:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="734776170"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="734776170"
Received: from wangyuan-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.215.226])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 12:36:25 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue,  5 Sep 2023 21:36:12 +0200
Message-Id: <20230905193614.69771-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Drop caches per GT
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

this bit of code escaped the multi-gt wave from a couple of years
ago.

Andi

Andi Shyti (2):
  drm/i915: Split gt cache flushing and gt idling functions
  drm/i915: When asked to drop the cache, do it per GT

 drivers/gpu/drm/i915/i915_debugfs.c | 44 +++++++++++++++++++++--------
 1 file changed, 33 insertions(+), 11 deletions(-)

-- 
2.40.1

