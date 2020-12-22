Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D462E0639
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 07:51:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 173466E14B;
	Tue, 22 Dec 2020 06:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8757D6E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 06:51:30 +0000 (UTC)
IronPort-SDR: cmuIjBwXtXa/E6q8lRCJXsjjhNYsHmiDzmR1Tz/bVqNb0TzcDHBxFuYzW/11jC0iKJwAI0JXWH
 VnF4oG4cZBNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="162883454"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="162883454"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 22:51:29 -0800
IronPort-SDR: +Je3dN8hISz42P/a0lyx4D/TTvX6E09zF/j9eR4ma5Mx3KnB/RYFX/mGEw4P6L1fBWVzUqZzDq
 Er+AeDm8aLuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="356209207"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 21 Dec 2020 22:51:28 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Dec 2020 12:03:57 +0530
Message-Id: <20201222063400.9509-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Multi DSB instance support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As an enhancement of dsb multi instance support added which can be
used by color framework for big lut programming in future.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (3):
  drm/i915/dsb: multi dsb instance support in prepare() and cleanup()
  drm/i915/dsb: multi dsb instance support in dsb-write()
  drm/i915/dsb: multi dsb instance support in dsb-commit()

 drivers/gpu/drm/i915/display/intel_atomic.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_color.c    |  40 ++--
 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 185 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dsb.h      |   4 +-
 6 files changed, 136 insertions(+), 110 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
