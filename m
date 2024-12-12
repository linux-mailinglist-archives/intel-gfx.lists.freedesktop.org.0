Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8849EE8DE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 15:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD9AC10EDFF;
	Thu, 12 Dec 2024 14:31:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gmwvZwA5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6312D10EDF3;
 Thu, 12 Dec 2024 14:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734013917; x=1765549917;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w0bcFDWzFcPS7BefNSUZNiYF4lL80HKhXtQG4idMI6E=;
 b=gmwvZwA5KfOhJZ5L9ySO7PuNJMBMjjPBD/5x3Uoe20ecmq4tv8pepYeO
 xx7BQhWdO7vzjcIcMAacYpbSYJACDfnjYOefvq6kJkMR4qY8g2wyfoZC1
 cYGhdsx1Sm7gisA8Jka4w7Hn1zY2rHSkKLuujP84bH8dIyn4Db6CLN8TZ
 2x/GLgz0hlULYyLJpQB0UkWI9lUDtRiA8Ze+hvkRfhMRlAEY26iUu0l5A
 s/dHeAdgpeG/I+LutKpLZygsQw5EHXkMOdD1XMr1kvMCBWwc0wtG8Z4Mm
 nEOsZWbI9F6ix7YSEuqhsm/8UxuSeQO1Si3glT+RCzxoEtIBoynivtarf w==;
X-CSE-ConnectionGUID: NsRFz3VATeuUTQzCeiKNeA==
X-CSE-MsgGUID: HP//1wmqTi2yBeQUgm1ubg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38362113"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38362113"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 06:31:57 -0800
X-CSE-ConnectionGUID: FzmgD4yxTteS9510WTIW8A==
X-CSE-MsgGUID: tA6ucr8nSNuaGGHgkMZb8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="101262092"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa004.jf.intel.com with ESMTP; 12 Dec 2024 06:31:55 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/2]  Consider joiner calculation for panel fitting
Date: Thu, 12 Dec 2024 20:03:27 +0530
Message-Id: <20241212143329.938202-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

 There is an issue when pch_pfit and joiner gets enabled together.
Compute final pfit dst after pipe_src width is adjusted for joiner.

Nemesa Garg (2):
  drm/i915/display: After joiner compute pfit_dst
  drm/i915/display: Initialize pipe_src in compute stage

 drivers/gpu/drm/i915/display/intel_display.c | 58 ++++++++++++++++++--
 1 file changed, 54 insertions(+), 4 deletions(-)

-- 
2.25.1

