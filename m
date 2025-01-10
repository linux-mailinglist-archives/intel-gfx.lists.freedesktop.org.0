Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0D4A0864E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 05:52:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA97C10EFA9;
	Fri, 10 Jan 2025 04:52:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O5eJ8ECx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA42810EFA9;
 Fri, 10 Jan 2025 04:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736484775; x=1768020775;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kaTKKwAeJJxH8qtnElCQoDDAoFSGgFhJT1QPSgj2Cro=;
 b=O5eJ8ECx+wzJ6juzfi8uSAgfrN1BcTVJ4b5hlGG8vMYRjv0pFjgoqLHP
 IEgXf6Bfd0d5KaYtWL/RWXdJCZVgzDRLTEa47A30ubjKbDVLbkIho0WTT
 jpjZ/L7hKL2hJ7KXo++iyTFw5MYeQIKF+CZ2dz5mUJZzEU2HCcVUeXej3
 XgzlYq+e4H2G7wN4xEeknHa6jG7unYNjqDstljSkVbniu6/8xZbM2k8te
 iznjc+rbJ77ZA7ZU3Pa8spwKYiADYbP15tfqCMDG8VnPu7BVYV9BPaZ6J
 vlM033MKp5apT3rkn5eaGjeVEBUXCCftFKr/Lednxz1djOam0tN+AgEvS A==;
X-CSE-ConnectionGUID: muBwkqGORZGNj2wOy0zDOg==
X-CSE-MsgGUID: T1xUEAfhT3WIBokAmP1msg==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36930865"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36930865"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 20:52:55 -0800
X-CSE-ConnectionGUID: 4VZ6lGxCRpuEFilhuRiSlg==
X-CSE-MsgGUID: 58mINgm+TGiUQv5FI9W7ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="108619982"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 20:52:53 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [RESEND 0/2] Add helper for range_bpg_offset and minor fixes
Date: Fri, 10 Jan 2025 10:11:29 +0530
Message-ID: <20250110044131.3162682-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

Simplify calculation for range_bpg_offset.
Remove old comment.

Resend from old series https://patchwork.freedesktop.org/series/125159/

Ankit Nautiyal (2):
  drm/i915/dsc: Use helper to calculate range_bpg_offset
  drm/i915/dsc: Remove old comment about DSC 444 support

 drivers/gpu/drm/i915/display/intel_vdsc.c | 60 +++++++++++------------
 1 file changed, 30 insertions(+), 30 deletions(-)

-- 
2.45.2

