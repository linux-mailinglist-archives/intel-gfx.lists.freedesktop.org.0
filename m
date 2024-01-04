Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7486823B13
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 04:22:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658E810E377;
	Thu,  4 Jan 2024 03:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5AA710E35B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 03:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704338554; x=1735874554;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g7ZwdJOgzaxgB4TeDjwiHuexqqrXIJ0Y91uT/O6sar4=;
 b=Z5JuD+Sqsky7h7mXbZ9IfTi41wBC49wRM1svBDcN7nCrhejTbzKl1G7r
 WWMkXCoKRMV6rJlkQ8ZRYFkoocdhpgrZBN1fJzSKsfC/UQhdQe6uOVAxu
 lFtQM47AcauZXLsX5hTbwr8fGHIr53Zy/xkcTMm9Mct91quHF03f4IFuJ
 EsgyizngGFEo/HBS+E+o467mMlQ/t6DhRwF5AV/qv2Yvmx4iHunzEeNfO
 0AfL1Nq1JKUDz/qT0oxDZRtSVORqUUJk8N88L8cbzgHlXRvEHTZi5nOv4
 M0WFs5qHKkJO2YkImGBpbdvqw8/IVvpqwLY768UIHEMob7X1X24K8XPJf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="483295286"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="483295286"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="850623666"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="850623666"
Received: from rpasham-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.176.66])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 19:22:28 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] Update bxt_sanitize_cdclk() for Xe2_LPD
Date: Thu,  4 Jan 2024 00:21:46 -0300
Message-ID: <20240104032150.118954-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
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

This series fixes an issue observed during module load due to missing
bits in bxt_sanitize_cdclk() specific to Xe2_LPD.

The first patch contains the fix itself. The subsequent patches
refactor the code so that bxt_sanitize_cdclk() and _bxt_set_cdclk() use
the same function for deriving the value for CDCLK_CTL, hopefully making
it harder for the same kind of problem to happen again.

Gustavo Sousa (4):
  drm/i915/xe2lpd: Update bxt_sanitize_cdclk()
  drm/i915/cdclk: Extract bxt_cdclk_ctl()
  drm/i915/cdclk: Reorder bxt_sanitize_cdclk()
  drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing

 drivers/gpu/drm/i915/display/intel_cdclk.c | 100 ++++++++++-----------
 1 file changed, 48 insertions(+), 52 deletions(-)

-- 
2.43.0

