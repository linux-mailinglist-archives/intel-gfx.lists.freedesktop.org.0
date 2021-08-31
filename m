Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F10643FC1BA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Aug 2021 06:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B548A89AB6;
	Tue, 31 Aug 2021 04:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2103E89AB6
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Aug 2021 04:04:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="215269007"
X-IronPort-AV: E=Sophos;i="5.84,365,1620716400"; d="scan'208";a="215269007"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 21:04:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,365,1620716400"; d="scan'208";a="530860164"
Received: from lkp-server01.sh.intel.com (HELO 4fbc2b3ce5aa) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Aug 2021 21:03:59 -0700
Received: from kbuild by 4fbc2b3ce5aa with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mKv0A-0005sg-D6; Tue, 31 Aug 2021 04:03:58 +0000
Date: Tue, 31 Aug 2021 12:03:51 +0800
From: kernel test robot <lkp@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
Cc: kbuild-all@lists.01.org, Srinivasan Shanmugam <srinivasan.s@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Message-ID: <20210831040351.GA32319@c992b1c84ab4>
References: <20210830162240.3891502-3-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210830162240.3891502-3-ayaz.siddiqui@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [RFC PATCH] drm/i915/gt: get_ctx_reg_count() can be
 static
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

drivers/gpu/drm/i915/gt/intel_mocs.c:496:5: warning: symbol 'get_ctx_reg_count' was not declared. Should it be static?

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---
 intel_mocs.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index c52640523c218..728d0340cc622 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -493,7 +493,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 	return flags;
 }
 
-int get_ctx_reg_count(const struct drm_i915_aux_table *aux)
+static int get_ctx_reg_count(const struct drm_i915_aux_table *aux)
 {
 	int count = 0;
 
