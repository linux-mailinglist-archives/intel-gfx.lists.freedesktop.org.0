Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D2E7C9EAF
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 07:26:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51F610E113;
	Mon, 16 Oct 2023 05:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD9D10E113
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 05:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697434005; x=1728970005;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/PTdmsHWJqq3UmgR+FSUVBYT5Ye/6n0s4uVUoZf2U8Y=;
 b=lkJ6Bm5diSvkOQTCBQhvLuWKBZgD/Md/gfAjopJFDjneAAkrA1JCxIOu
 cF4BSBIGw7GkkyZPeNUkjg00+Z2bJzsxdE/6BGF/hRWUm2YsAAomFzvCS
 Ay9IxEL21WHPxMKMb2DuTtqk0ouGjgsehZY8w87/GeDacVTGqAx8yVIUz
 GJ//AyxsD1AwVdziwCu8bMD/N37L3QCrWp8MSfiY3bfIIQlEJjGnAhVZO
 ug7XIWyn8syEnYZ2+CJuB0gvefFshU3ynnlvFaGCzDNrbntSMrBJ6x8HN
 OK/yvSUTLQkyAJPfj5BZ6NewLFn0DT6ZX0Hyy+ey1laCYbvU+0QCUIvV9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="382673607"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="382673607"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 22:26:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="759262704"
X-IronPort-AV: E=Sophos;i="6.03,228,1694761200"; d="scan'208";a="759262704"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2023 22:26:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 10:50:36 +0530
Message-Id: <20231016052038.1905913-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Add helper for range_bpg_offset and minor
 fixes
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

Ankit Nautiyal (2):
  drm/i915/dsc: Use helper to calculate range_bpg_offset
  drm/i915/vdsc: Remove old comment about DSC 444 support

 drivers/gpu/drm/i915/display/intel_vdsc.c | 60 +++++++++++------------
 1 file changed, 30 insertions(+), 30 deletions(-)

-- 
2.40.1

