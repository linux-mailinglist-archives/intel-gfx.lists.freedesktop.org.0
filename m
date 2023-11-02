Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6067DFC67
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 23:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA2110E17F;
	Thu,  2 Nov 2023 22:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8ED910E17F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 22:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698964195; x=1730500195;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eNrfnrdwXJqUUQMoRZCjXBYR5m2OWz/yxJz2VYsOQ/o=;
 b=jPk39CC/W6Ckm4IEEDLEQ9xNBJSU7kMhOnyegXDjffgznc9gH1miohfn
 uixkNgYjdgjo1RBsIqDTCcx0+4li+9rxc5MN6NPiCKR8qVM38p38edwfO
 NvKfmL1fT/mybBEStWUyWFxCV7Iw98pXxessA7SyHa/2ytj4ObEXV5zfG
 mPQHK/JghRLZ8BL74g4QzsGZ7gyUMmD48dsIS9LAWpEQok0m1WybixFNa
 g1JlmzwBhskIb8k80H3y6ibYnDjRKdXPc/QBZeOChr8UMnfTqDfPROvVF
 6SiAtG2UwvwEGib4YDGdYPNrxdyGgSKm4ptCS7UUaUGp0Z9CxwYwMyByW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="453131145"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="453131145"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 15:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="934925357"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="934925357"
Received: from jpauw-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.251.215.30])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 15:29:53 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Nov 2023 00:29:40 +0200
Message-Id: <20231102222941.144583-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/1] drm/i915/xe2lpd: alternate WA for
 underruns with PSR2 and FBC
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement the alternate WA for the underruns when both PSR2
and FBC is enabled.

Vinod Govindapillai (1):
  drm/i915/xe2lpd: alternate WA for underruns with PSR2 and FBC

 drivers/gpu/drm/i915/display/intel_fbc.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

-- 
2.34.1

