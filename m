Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB25C8937A5
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 05:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B1410E03F;
	Mon,  1 Apr 2024 03:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="adslGdbJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D10E310E03F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 03:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711940611; x=1743476611;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PWYir4YcyofpxSiIt87SgSg9vuVptTrMlSBgcPQmB/k=;
 b=adslGdbJBhCxhkWebBhPMmOrEkfgdYpBnT4r4eUuAyxMFl0lJcafappO
 C25XTsW5ZeOz/BhLiFmiVl9xJEK5xAuOYQey2Q+CrPqsEw9/vEAX3VTJl
 RtsWzImgM3I0BDmO5OL0OoDeTNJxEqo/ctnzSZMvaNXPu7E/TOEK+jIRh
 j9XOlbZUjJi7btii1OfUwFCeTusz76tr1vvybwBNZC6H9IH6Angpb/rXN
 oIVhTHGySq4YJJT6ODR1UlmgadkKixfOp0edNZzWqvB16/bDT7WROw+Sz
 AWUAeiDklybG41RsvOj+A+YDbmhyebnPs1PX9YEEgLsP0l+ZuSljhNAfo g==;
X-CSE-ConnectionGUID: c+n13Ti6TGGcOYCAHzMsNw==
X-CSE-MsgGUID: C9yjHkSVRBmw5kHoIbPJ0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="10843524"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="10843524"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2024 20:03:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17972357"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 31 Mar 2024 20:03:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Fix UBSAN warning in hdcp_info
Date: Mon,  1 Apr 2024 08:31:04 +0530
Message-ID: <20240401030106.274787-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

This patch series fixes the UBSAN warning which gets called
when hdcp_info is invoked accompanied by some other logical fixes
required in the hdcp capability function.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/display: Initialize capability variables
  drm/i915/hdcp: Fix get remote hdcp capability function

 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c         | 5 ++++-
 2 files changed, 5 insertions(+), 2 deletions(-)

-- 
2.43.2

