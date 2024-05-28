Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF4B8D162C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 10:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 337FB10E205;
	Tue, 28 May 2024 08:24:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZ+eckjK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82BA510E205
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 08:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716884642; x=1748420642;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jVTIGBDsI18PmcFpciuGtyZHh5jUbVEzM6SQZaYTESo=;
 b=mZ+eckjKnNq1ZpNFWC+53rVUtJJaPWQ39iNLC6bO/4uCl9P+SHCLRVBj
 Mumofgq0aEgP6lc3hrTCDarDorF74z3yLZvoTBfZK7SQnv9q6NBrhewIC
 I6irM0PNNvVGAC5BqnKF69AxocHC3FsrJ54pj4f90XXdobViV9qNLGaIP
 KbqEGWOGXXhU/yuAHbP7k9Jp9N6JieyynaSAWVDrEcwTd6zfXwnLcsv0W
 0B/ragcxbHPcAC0j78W6qbxEmqr+FWgtQfe5mYf2xSD5HPDceTzZMREFn
 zDwgQwNRZbcsBIbs4nduGUqU/WtqqHH+escLfDp0G8/3MSwb8qPFAyh2T A==;
X-CSE-ConnectionGUID: BVkwBh57R8uM/Std3A2YkA==
X-CSE-MsgGUID: W2abStADSp2ydv6Bae9hbA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35729775"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="35729775"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 01:24:00 -0700
X-CSE-ConnectionGUID: y/MqRbwsSh6uDS59RK4qoQ==
X-CSE-MsgGUID: +XyZ5U9BS/aRBwWFHxpY8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="34978384"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa008.fm.intel.com with ESMTP; 28 May 2024 01:23:59 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 0/1] WA for Re-initialize dispcnlunitt1 xosc clock
Date: Tue, 28 May 2024 13:48:20 +0530
Message-Id: <20240528081821.2809508-1-mitulkumar.ajitkumar.golani@intel.com>
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

The dispcnlunit1_cp_xosc_clk should be de-asserted in display off
and only asserted in display on. But during observation it found
clk remains active in display OFF. As workaround, Display driver
shall execute set-reset sequence at the end of the Initialize
Sequence.

Wa_15013987218

Mitul Golani (1):
  drm/i915/display: WA for Re-initialize dispcnlunitt1 xosc clock

 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 1 file changed, 8 insertions(+)

-- 
2.25.1

