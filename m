Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4042B2D961F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 11:11:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F59A6E1D7;
	Mon, 14 Dec 2020 10:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D7D36E150
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 10:11:12 +0000 (UTC)
IronPort-SDR: x2mD3YjcO9SljuT/W4AsQLRmWL5TzQJb8pAkTnnRlMj3JC9PgU3IdiU+IIALcZ4Mr5qcwePgGN
 DVkiCovFB6aA==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="238786614"
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="238786614"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 02:11:11 -0800
IronPort-SDR: rP5MQWf7en/gmKrobDQZrX54CERiUDLPXMQhiDVL9nT6xLU1PVFEQMct2l5duGUoTtQBJilFfw
 sG9Ah3N+FfsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="388149853"
Received: from lkp-server02.sh.intel.com (HELO a947d92d0467) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Dec 2020 02:11:09 -0800
Received: from kbuild by a947d92d0467 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kokov-0000F2-9L; Mon, 14 Dec 2020 10:11:09 +0000
Date: Mon, 14 Dec 2020 18:10:25 +0800
From: kernel test robot <lkp@intel.com>
To: Xiong Zhang <xiong.y.zhang@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <20201214101025.GA50122@45a86e22e0de>
References: <20201214070113.16177-1-xiong.y.zhang@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201214070113.16177-1-xiong.y.zhang@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [RFC PATCH] drm/i915: intel_detect_pch_virt() can be
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
Cc: jani.nikula@intel.com, kbuild-all@lists.01.org, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---
 intel_pch.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index ca5989700ecf23..a3f84327535688 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -184,7 +184,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
 	return id;
 }
 
-void intel_detect_pch_virt(struct drm_i915_private *dev_priv)
+static void intel_detect_pch_virt(struct drm_i915_private *dev_priv)
 {
 	unsigned short id;
 	enum intel_pch pch_type;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
