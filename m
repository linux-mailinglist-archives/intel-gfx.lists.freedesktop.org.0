Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6832D6CB374
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 03:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3F8A10E424;
	Tue, 28 Mar 2023 01:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A711A10E285;
 Tue, 28 Mar 2023 01:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679968683; x=1711504683;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tuAqCxni9Q7yPHdLRb4PvkgGhene0MYoVt6Tq8eplGw=;
 b=GEjNXx3UHzWjgvkKbcnt0I2Ld+byTU6RLyRuCRPHbFs8ihe2RSVFW3fl
 6QEF7yp+VnH9IKkyhWHgMWlfI3PGCJC0EAimJQDl+Izd+hHQ1LWSc1zVU
 vk11m3xhv0Dho+ql4CYHZYTucDVeeDwndgMrhT2SaZepSQePAsBeLZwmZ
 SzmzM2AYUo+Bjt7ZC11DpigIBZE1JcqKi+IfLjZqD+zmjZ2FUe78Z/xDz
 UOrCt1h7ASy1tV7l2WlkcwO0trsf+X3HWsE9ow/9wxAxTvYXswBjIhHQZ
 DZy9eRw1Fig+QXuEcaVoi7r1jSdBQXfS9neGrhRSb1D8cknSq+BylNgx2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="342846064"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="342846064"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 18:58:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="683669929"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="683669929"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga002.jf.intel.com with ESMTP; 27 Mar 2023 18:58:05 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Mon, 27 Mar 2023 19:00:26 -0700
Message-Id: <20230328020028.2143954-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/2] tests/slpc: Add basic IGT test
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

Borrow some subtests from xe_guc_pc. Also add per GT debugfs helpers.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Vinay Belgaumkar (2):
  lib/debugfs: Add per GT debugfs helpers
  i915_pm_freq_api: Add some basic SLPC igt tests

 lib/igt_debugfs.c             |  60 ++++++++++++++
 lib/igt_debugfs.h             |   4 +
 tests/i915/i915_pm_freq_api.c | 151 ++++++++++++++++++++++++++++++++++
 tests/meson.build             |   1 +
 4 files changed, 216 insertions(+)
 create mode 100644 tests/i915/i915_pm_freq_api.c

-- 
2.38.1

