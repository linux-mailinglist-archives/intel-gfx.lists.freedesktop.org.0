Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9316764A9FA
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 23:10:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF5C10E141;
	Mon, 12 Dec 2022 22:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B6589EFF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 22:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670882949; x=1702418949;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=51Yg+ZLLJ7t5EAPJt0Mxqb1N5tAAbOhWjT6iLmfYS44=;
 b=cOOYJw2vI3NQxJ82VYmXc+6LEXfU8y+ET9h2dFRL9zpSq4PH/5MBYaMU
 +GrzBowkq9xgbiU6OBxFcJb3EL5Wdq/CTihqFb5YSODuDOf1YOlQmcaKZ
 XxbDLZRiaP7u0yXxvLQJx484Wqrj+5FAlor2xlr7YWrI3VLoLumAhHohf
 Czb7CF1xeJCSUKeTaQwqLhOcyTRMnY3uLgm2LbQV5RG+DloGOQpg0oZ8W
 kG5FmDEHOGRjv0lqVF3VFWlaYB2us/KsJmp1CJz1pIijQHQ5LrlbwZqv/
 lrA7lJP92vdweDVBaV47gfjmF+Zh3exi5KLPpCn5ehKKCeX/rTiRVe8hD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="345031085"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="345031085"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 14:09:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="641882374"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="641882374"
Received: from unerlige-desk.jf.intel.com ([10.165.21.199])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 14:09:07 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 14:08:58 -0800
Message-Id: <20221212220902.1819159-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/4] drm/i915/mtl: Add OAG 32 bit format
 support for MTL
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

Enable OA for MTL by adding 32-bit OA format support and relevant fixes.

v4: Rebase

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (4):
  drm/i915/mtl: Resize noa_wait BO size to save restore GPR regs
  drm/i915/mtl: Add Wa_14015846243 to fix OA vs CS timestamp mismatch
  drm/i915/mtl: Update OA mux whitelist for MTL
  drm/i915/mtl: Add OA support by enabling 32 bit OAG formats for MTL

 drivers/gpu/drm/i915/gt/intel_gt_types.h |  6 ---
 drivers/gpu/drm/i915/i915_perf.c         | 49 ++++++++++++++++++------
 2 files changed, 38 insertions(+), 17 deletions(-)

-- 
2.38.1

