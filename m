Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29AA84C5108
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 22:55:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC8510E21C;
	Fri, 25 Feb 2022 21:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE9410E30A;
 Fri, 25 Feb 2022 21:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645826099; x=1677362099;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3FiPFq2sbS6fmZmh3NK3Cw0ngU8/e2t41F/uQBvxjI8=;
 b=aW86uxwGFHq/C1YrcpNQFG1QKhnEbZx76qyKOu7uu7tndqz+sLAwuj18
 yHq1xGpx7+vVP+EVYaJxejzWZv6FX0YzOz1pAgKbA/LZjurNwhB2axwtc
 NRAFNnGPNoB0pVFZNHVQMYhamBZZ/R3eVskcCZ+JWMpX99nJ8PwnnqcQ/
 GG86xsTK4gyo9om7aicsYaXmc177GMrui0FgnqParSWlGPjfIuShEAfRR
 syb98c1Nsj6N0IqpVbd7HRg6SX+MZNzOpBh0sUSVM7jn2AV0sjCLC4RjN
 1Q2Uh1kT4zla6wstT01Un2HDNpTgqNkrMUnSPMof0Gqv6zWll0iSx5cKy g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="252782968"
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="252782968"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 13:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="638369705"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2022 13:54:54 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 13:57:04 -0800
Message-Id: <20220225215705.248707-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Fix i915 error_state_read ptr use
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix pointer offset usage in error_state_read
when there is no i915_gpu_coredump but buf offset
is non-zero.

Alan Previn (1):
  drm/i915/reset: Fix error_state_read ptr + offset use

 drivers/gpu/drm/i915/i915_sysfs.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

-- 
2.25.1

