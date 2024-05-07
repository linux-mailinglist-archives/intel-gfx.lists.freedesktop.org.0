Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 522868BD9E4
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 05:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C649410E090;
	Tue,  7 May 2024 03:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N5WimYHH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F5810E090
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 03:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715053985; x=1746589985;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x6MRAHGXpDlstTTYwT4p6mfYHlVBHGppdjBio8ncfgw=;
 b=N5WimYHHr9jg7DZEozDTTmjnvvFaIzQKEjlLqMPhEsseM0Cm101Umugc
 ClcApS4bguO8Ez/AHbYTlJZtpwHX5UdemTzaC4SEufa9HfET0m7x8quBJ
 pXyTWjHQiveCsPTnb2qynkJRQQMftrPXzfEwD2jHUUDQymyuYTAsd+YJQ
 9Rb0GcHHnalHvV5nKrqTsXkpGPMmr7fuce7EWOeJL6zbeFl2nH8ALVBr0
 vKLYX/Cg1B4dqNe5cY3RypcsoE1HRInAAo1QIwQJYYB6eEnCNU7QyX3F2
 wBG1ZsqA+vhuu+sqrIzFq8msCjwLJ+SpCreacY3BwOg/vcza8SvPxxGwC w==;
X-CSE-ConnectionGUID: JE2z4n7RTLeCmPfGJiDyBw==
X-CSE-MsgGUID: 3M3g5faOQXCBthSeGKQbLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21501932"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="21501932"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 20:53:04 -0700
X-CSE-ConnectionGUID: bH0k4noTSam0+6wJEX/KfA==
X-CSE-MsgGUID: Y8JURVo1QamLSITDZ8/gHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28452071"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa006.fm.intel.com with ESMTP; 06 May 2024 20:53:02 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Fixes in hdcp remote capability
Date: Tue,  7 May 2024 09:20:35 +0530
Message-ID: <20240507035037.1025012-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

This patch series aims to avoid page fault errors caused by aux
early assignment as connector may not be mst and using encoder
to check for connector type.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Move aux assignment after connector type check
  drm/i915/hdcp: Check mst_port to determine connector type

 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
2.43.2

