Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBC2A68E3F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 14:51:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E5B810E506;
	Wed, 19 Mar 2025 13:51:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LcLjkwof";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E32E610E500;
 Wed, 19 Mar 2025 13:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742392310; x=1773928310;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=enOeT0PlSEVb1gUp2uQSlsibxECoX0b1n3pYPBUF6nQ=;
 b=LcLjkwofvtAkI/UGhnNkvhWVIhNDZ9nsvYA5TgurzTDkbHTi9WxPjSs6
 oBUW4yH8kGBNqsNUsxDy7gDjz2wtMFjF3ZSoaeU2XdkGJgYcrTDahNVZL
 RRETuDlCUG5kEOxL85q3DlzMvyLmP3T6ISzpfbusxI7pwUJfiRYslq/4C
 qWnCfE3LILzCqp29WaMu+606H5xq1k6Mqgfn1Y+cznYV6/zK5CNoXxc7f
 6UshGnlAyM2QI4HlktSPag8QHaP1zakZQFlFVecZPFcz52FaLraIri5ZR
 ubLkXZwTYj9ytm3vvDN8UaoUe5e50gNp/uxOVPwTEY/nD6h0NRTLMYosm A==;
X-CSE-ConnectionGUID: BYIPdv8OSsulivylyL+NKQ==
X-CSE-MsgGUID: yG1q+RQFRvKSmRu/9LJNSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="53796094"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="53796094"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 06:51:49 -0700
X-CSE-ConnectionGUID: 4sLErQA4SVu3MY8Cf3ST2Q==
X-CSE-MsgGUID: 6lv+X84FSdivaPEY647lLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="123121437"
Received: from vpanait-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.245.246.3])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 06:51:46 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jouni.hogander@intel.com,
 ville.syrjala@intel.com, uma.shankar@intel.com, jani.saarinen@intel.com,
 jeevan.b@intel.com
Subject: [PATCH v2 0/2] update to FBC, PSR combo handling in xe2lpd
Date: Wed, 19 Mar 2025 15:51:28 +0200
Message-ID: <20250319135130.122703-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Keep FBC disabled in case selective update is on in xe2lpd onwards
as well as we are still seeing some strange underruns in some panels
while disabling PSR2 if FBC is enabled. Also get rid of the redundant
panel replay dependency check.

Vinod Govindapillai (2):
  drm/i915/fbc: keep FBC disabled if selective update is on in xe2lpd
  drm/i915/fbc: remove panel_replay dependency from fbc wa checks

 drivers/gpu/drm/i915/display/intel_fbc.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

-- 
2.43.0

