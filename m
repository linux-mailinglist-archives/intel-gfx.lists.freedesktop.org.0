Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2C548C568
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 15:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7BCB10F1EF;
	Wed, 12 Jan 2022 14:01:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A12B10E688
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 14:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641996089; x=1673532089;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7D+/8g2IqdGzm+GVApENEBLB6S+DQg6nfw4TazJ1V5Y=;
 b=OQjYEIoyRJ3h4YAesAdD01uIu55eMZoAG2cQxkn3DcPKV5LSvbEIFU1h
 gXRs8qw5CSaOXXsRR8tqlDz4up32yodVog8Boy1HiELZDoN1glykmmiKE
 dEiuhl3yn8fxqRIJohJBNyuSS8+6+zCTegMDwgT7YMFuiueOuSAUm93Mg
 yhcEoh7liPKzNHBUwfxFp2n8sQmnlxRNfayirfJaGoBSQmmZpywsu5EYK
 yM6XO75MttH0JB24RvyG/x0yV7ai2bSqVbW254A5fZia/2aUB0Dc0IeIc
 lFvqPoQAAWzT+0Yae/TqlzoC+pb20SPnRQX32TPyZh/bQStD1PY2Z08Wo A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="242555296"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="242555296"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 06:01:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="474913263"
Received: from tmsbuild050.tm.intel.com ([10.237.53.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 06:01:08 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 16:00:29 +0200
Message-Id: <20220112140031.39823-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/2] Add has_psr2_sel_fech flag
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

Currently igt-gpu-tools is not aware of DG2 being not capable to
perform selective fetch. This is causing PSR2 testcases failing
on DG2 when PSR2 capable display is attached.

This patch set is adding new information into intel_device_info to see
whether display is psr2 selective fetch capable. Also check for psr2
sel fetch capability is converted to use this instead of checking
individual platforms separately.

This new flag can be utilized by igt-gpu-tools via i915_capabilities
debugfs interface.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Kahola, Mika <mika.kahola@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>

Jouni Högander (2):
  drm/i915: add new flag has_psr2_sel_fetch
  drm/i915: Use new has_psr2_sel_fetch flag

 drivers/gpu/drm/i915/display/intel_psr.c | 7 -------
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/i915_pci.c          | 8 ++++++++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 4 files changed, 10 insertions(+), 8 deletions(-)

-- 
2.34.0

