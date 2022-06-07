Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE9153F2EA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 02:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CDD111BEEA;
	Tue,  7 Jun 2022 00:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2DAF11BEEA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 00:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654561368; x=1686097368;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iGPIRFhUuHavfkrNK7dO0uElROavSpX6IybiSMV2JeI=;
 b=C7ilHTnaMbDe6VahAOX4vwrFGn38GY0h6s5Hjxnt14JBkOHUfQ5/B3sm
 OnJIbA6DK0ZUaTU2scT6r3S9slxUYr1D3X9fqLoLjeuoHEsUKlXUmsvfo
 4Gnsy6/98GRqgM7bvghlc40C/duQC6OzBohbT+PAtBTaSVLootlavKniW
 S3VhIAZZOW4siLcBgQq3C2yBnH3R03qakz8muJVF5EmMuAnkrW3+jfwUQ
 Z8xaB2447FRpigDvtoTQZSzjq9UrpSJ614wuJS+gS4Fr+qzeV1LDfxCEt
 HjBw37d62RP2ksB3SPOWzbjRJkFkTOznYUV87x9/k/2GGsY3MaVnPTXFO A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="274237670"
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="274237670"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 17:22:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,282,1647327600"; d="scan'208";a="682504242"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2022 17:22:48 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jun 2022 17:23:13 -0700
Message-Id: <20220607002314.1451656-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 0/1] GuC-Log flush-completes be asynchronous
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

This series updates GuC relay-logging and error-capture
to send the Host-To-GuC action for KMD log flush completion
as an asynchronmous event as opposed to a blocking call.

Alan Previn (1):
  drm/i915/guc: Asynchronous flush of GuC log regions

 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 3 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c     | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)


base-commit: fb41937d097981b11a2856d507c2f1b9064bef76
-- 
2.25.1

