Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B113D2BBB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 20:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F7C6EA1A;
	Thu, 22 Jul 2021 18:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DFD6E983;
 Thu, 22 Jul 2021 18:08:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="297278078"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="297278078"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 11:08:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="577390173"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jul 2021 11:08:12 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m6d7D-0000bk-2r; Thu, 22 Jul 2021 18:08:11 +0000
Date: Fri, 23 Jul 2021 02:07:22 +0800
From: kernel test robot <lkp@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20210722180722.GA97350@7fac44280d7d>
References: <20210721161120.24610-7-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210721161120.24610-7-vinay.belgaumkar@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] [RFC PATCH] drm/i915/guc/slpc: slpc_decode_min_freq()
 can be static
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
Cc: kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:217:5: warning: symbol 'slpc_decode_min_freq' was not declared. Should it be static?
drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:229:5: warning: symbol 'slpc_decode_max_freq' was not declared. Should it be static?

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---
 intel_guc_slpc.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 48db2a8f67d1d..372606a451451 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -214,7 +214,7 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 	return slpc_shared_data_init(slpc);
 }
 
-u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
+static u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
 {
 	struct slpc_shared_data *data = slpc->vaddr;
 
@@ -226,7 +226,7 @@ u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
 		GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
 }
 
-u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
+static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
 {
 	struct slpc_shared_data *data = slpc->vaddr;
 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
