Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0376ACECA2
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 11:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0389A10E91F;
	Thu,  5 Jun 2025 09:12:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZGrlO+Vb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A01C10E8D4;
 Thu,  5 Jun 2025 09:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749114739; x=1780650739;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E2ts/1ZJ0gHt/DfH6D0opn1tvV8fbVm9TC8yiwlJIks=;
 b=ZGrlO+Vby4Y+3rZfzuB/Zc4GO8Ra9ygsX0HJm8xS7JhsG0edZHteVrsU
 /vDm7yWoy+XMG0xCoYWLt4duBv21FlwPqE/stP0O+UC0z1uhY3/wOLn5y
 dDmpJy7Oa06DTNsq4oGfcv+LEX4oChc2IRwqZf7SW5F0nbw1xJDuBrKLh
 j6Kk++cJU6fCcAaJjeeskHNGyia3VkPMwRQ/x0ucVsHX2KvFsfZixjhQl
 9Ee98sg+gm8oZo91w44CqJA63RV5k8v1RLCGbbGAMK302THugF6c6BO0a
 34BIzgMubHAmK5RkNUkpjQ52LZeWQ4a+7w1G0iRlq7oopKFVUoAQ/cnFa g==;
X-CSE-ConnectionGUID: bdCOWKrNSzidpBl13ITczw==
X-CSE-MsgGUID: +ud9gJ4XTdievA4dWoxaqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="50462049"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="50462049"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 02:12:19 -0700
X-CSE-ConnectionGUID: +Y4LTVZ7T7ufBUdcfBHKPA==
X-CSE-MsgGUID: jugivFaWRBOgF7vwPfVDTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="182659834"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP; 05 Jun 2025 02:12:18 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 0/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Date: Thu,  5 Jun 2025 11:12:57 +0200
Message-ID: <20250605091300.3739436-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

Next version of v1 [1].

[1] https://lore.kernel.org/all/20250513113526.2758433-1-michal.grzelak@intel.com

Test-with: 20250513121918.2758842-1-michal.grzelak@intel.com

Best regards,
Michał

---
Changelog:
v1->v2
- set other reasons than "PSR setup timing not met"
- clear no_psr_reason when activating PSR.

Michał Grzelak (1):
  drm/i915/display: Add no_psr_reason to PSR debugfs

 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 38 ++++++++++++-------
 2 files changed, 26 insertions(+), 14 deletions(-)

-- 
2.45.2

