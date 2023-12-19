Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EFD81818A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 07:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9947A10E189;
	Tue, 19 Dec 2023 06:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FAE10E189
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 06:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702967557; x=1734503557;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uRjk7c8h30SeOTmIw/heZmW7xTpng6hhWHFlGeZ/wvc=;
 b=P55YIr6l7JZoYUYdrWLa4FRnHPgSL2M1yhwN9XxXURLTr9rPkcQiwbEG
 GuWWZcRFdFz/kM4NOyu5GGAb5uap4uLxvaqUlyZCJdsNW4whQ1mq+ekX+
 +hd5ii6NSVNVQODAK3Yx9ZV26ngz1Ipin462/X+mmlr3KjrNTjCQ0K+Wg
 DU7G92peXJOPVEtwPtQKkTGlhL6eE7uKrYm2wVoMkLnxeFgL5sWsTOG6r
 BmaC2kFrxs5VOoXaqUmW7fLXHfvpjyAoYjRxTytdck93D2KtvC23ha0Up
 3HSd54qRSUjYy9XWh8oi2+M8OAE37FA/RpGQPcTeKsOkkfyKczvNbpZeZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2466435"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
   d="scan'208";a="2466435"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="17836829"
Received: from amoested-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.33.246])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:35 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] ALPM AUX Wake Configuration
Date: Tue, 19 Dec 2023 08:32:17 +0200
Message-Id: <20231219063221.505982-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This patch set is adding some missing AUX wake related configuration
for Lunarlake.

Also ALPM parameters are moved to separate struct because amount of
parameters is about to increase in upcoming patches.

Additionally all ALPM related register definitions are added for
Lunarlake.

Jouni Högander (4):
  drm/i915/alpm: Add ALPM register definitions
  drm/i915/psr: Add alpm_parameters struct
  drm/i915/alpm: Calculate ALPM Entry check
  drm/i915/alpm: Alpm aux wake configuration for lnl

 .../drm/i915/display/intel_display_types.h    |  11 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  69 ++++++++++--
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 103 ++++++++++++++++++
 3 files changed, 169 insertions(+), 14 deletions(-)

-- 
2.34.1

