Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3544F4EE2CC
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 22:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F4910E36E;
	Thu, 31 Mar 2022 20:43:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC5710E2F6
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648759433; x=1680295433;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yS1rx8ydRGn9t2+CMjkiuYG+nFy+xCptvKn51tAohZg=;
 b=FGqltfoh4TM+ex1aJ/6izv1OdZjVyNdY3uKzD507KrblY2zoaB9H1DwK
 EZlZgtQgOe1qZltISbXHImCSgFqx0RQApR/5xoP/L4YXU8FUAB12F6h1J
 G3LPw3z2ZISgfSBjwbNbrABNP4zPdtEeKrzHxBD25g0zch/Spv70n0dcp
 sjRVXZ3kIOli7klaxBU4xeSxZX7V0TukoisgxUbK0LQULuZdP6e4QKUTz
 1ru1tbjGmDwiWl1096ue7Jtbdj6sFGxvKF7tU9bcBY2t7wnooJoyFGbVQ
 WvbfaNCVhxRBg/zY4TKnokLESBbBDvb90plJH67dskFVVo399zNjjL+I3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259937280"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259937280"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 13:43:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="695637107"
Received: from rwjacks2-mobl1.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.212.148.29])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 13:43:52 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 13:43:42 -0700
Message-Id: <20220331204343.1256150-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/1] Splitting up platform-specific calls
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
Cc: lucas.demarchi@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Based on upstream discussions, we are trying to modify existing x86-only
calls so that they become arch-neutral.

In this case, we are focusing on i915_run_as_guest and removing the
hypervisor checks for the non-x86 case.

v2: Revised to use kernel's platform-splitting scheme.
v3: Revised to use simple if-else structure.
v4: Modified into more arch-neutral split.
v5: Rebased on top of the run_as_guest -> i915_run_as_guest changes
v6: Added suggestion of x86-only inclusion for asm/hypervisor.h

Casey Bowman (1):
  Split i915_run_as_guest into x86 and non-x86

 drivers/gpu/drm/i915/i915_utils.h | 8 ++++++++
 1 file changed, 8 insertions(+)

-- 
2.25.1

