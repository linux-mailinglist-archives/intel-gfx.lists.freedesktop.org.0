Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4CBA6C7A2
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Mar 2025 05:55:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D14410E2B6;
	Sat, 22 Mar 2025 04:55:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iB5iZUkD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E97DA10E2A0;
 Sat, 22 Mar 2025 04:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742619342; x=1774155342;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O0u1f2Ivsm2MQslx/kmB8f6FC7M6h6113eup1od2cFI=;
 b=iB5iZUkDesOAtE7TpEx1wHqIEfxHTQotjuaglMCFx4b74FjVu5XZhvHm
 NQvXuRIlqBxSzuP6Nf/hMCLZbE+Xz5S0JH5x7k2BrGWi0c77XLANN7SAz
 b2TTfOypK1qjD+RuLwT2wzEY+0k9wk9dx5xhf0s4z/CYi+LZi1g2mhThr
 inRb1hZ+cGH7YuoH7WbtYcr5omMiIVYo/tBeUpJ+5UVkUPaCDS9iVVlUe
 OtQoNo8zKlm2uv1KBti1o2S9GFhsyRWRYkzv1aXlBpAlnZc86XyS0vvVg
 Gh3ijZC7x0I2z5YCaJGVS4B8fqaOHzkrdkRNOKOhjv9Zg/PMIsECwFbJf Q==;
X-CSE-ConnectionGUID: zjKAnTirRMeUGbGrhIlFrA==
X-CSE-MsgGUID: PX7DjsR7TwmKKKc+UTUO2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="54526772"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="54526772"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 21:55:36 -0700
X-CSE-ConnectionGUID: azs+t67dS3GrqmPm6PGU2w==
X-CSE-MsgGUID: OMJB0JB9R9G/7X5faEe5Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="124353796"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 21:55:34 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [RESEND 0/2] Fix vrr.enable handling and add logging for fixed_rr
Date: Sat, 22 Mar 2025 10:13:43 +0530
Message-ID: <20250322044345.3827137-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

This series is split from the main series [1] for merging the fixes early,
while other patches of the series are still in review:

The commit:
a27217f9d1856 ("drm/i915/vrr: Track vrr.enable only for variable timing")
adds a change in reading the vrr.enable, which is causing issue when GOP
enables VRR timing generator with fixed timings.

Add the fixed_rr status in crtc_state_dump and remove the check for
fixed_rr during readout.

[1] Use VRR timing generator for fixed refresh rate modes
https://patchwork.freedesktop.org/series/134383/

Ankit Nautiyal (2):
  drm/i915/display: Add fixed_rr to crtc_state dump
  drm/i915/vrr: Avoid reading vrr.enable based on fixed_rr check

 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_vrr.c             | 4 +---
 drivers/gpu/drm/i915/display/intel_vrr.h             | 1 +
 3 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.45.2

