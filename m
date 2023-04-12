Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 160D26DF229
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 12:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BD5210E378;
	Wed, 12 Apr 2023 10:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2958A10E1FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 10:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681296384; x=1712832384;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8jXEgxUaOaW0RAsPKCP7ZIK1viXlbEXzDAAf15VQOvc=;
 b=iVxpJcyWze4vSahW9Ir1+3WmQWJZYQgHtgQSk6Ud5eSND1IEvjuz254u
 z6HjZj1WZZw6uF4jEkyeqttqLsWgbx1H4L8uH8E4ESZUUHGwC/wezRGqP
 C43/5Ah48OsdEsyvdNBklP4hsTm9+YEbD9PlQ3Kagtpq0Vco+7Of0Mx6q
 BdK8Kg5aDpB+cOqZ5pYP249+Hyy7qxzzKlMigIGMvzE1TtrvEx5qV4x4P
 /kufmEleoEKkYdPUlEaVGu+oAy+WwjIPsC5KG2CP16EcOQlzjwTmS12jw
 HBUQLbxu0xQJwfeUTLAUFFe0XOX7RqJE6mlkhUwvAYJjfSEQT+FrEKERx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="327970199"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="327970199"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 03:46:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="639173997"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="639173997"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 03:46:15 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org,
	jani.nikula@intel.com
Date: Wed, 12 Apr 2023 16:11:51 +0530
Message-Id: <20230412104152.828326-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [V2 0/1] drm/i915/debugfs: New debugfs for display
 clock frequencies
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

Instead of mixing display & non-display stuff together, move
display specific clock info to new debugfs. This patch will
create a new debugfs "i915_cdclk_info" to expose Current & Max
cdclk and Max pixel clock frequency info.

Test-with: 20230412103448.826946-1-bhanuprakash.modem@intel.com

Bhanuprakash Modem (1):
  drm/i915/debugfs: New debugfs for display clock frequencies

 drivers/gpu/drm/i915/display/intel_cdclk.c    | 25 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  1 +
 .../drm/i915/display/intel_display_debugfs.c  |  1 +
 3 files changed, 27 insertions(+)

--
2.40.0

