Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 392B6A78AB8
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 11:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2FBC10E715;
	Wed,  2 Apr 2025 09:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2xfFreJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01FD10E6EE;
 Wed,  2 Apr 2025 09:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743585061; x=1775121061;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=l0PuWpWzgl/OnRWGbsxWubKjSSVdwcHLkJP2hx0jvcw=;
 b=j2xfFreJnBVI1XVCDWkzheafIwzMdm50hjax91o/dow8R5WE76bHMJTk
 n4BGq8DhLdCJNXvCD4jwmHjkebw5Uecw1vrmx+lPl8BEhEeyYdiyvmnFt
 UEKBuMmLM/P7RR6s5ck5o53mZrBCXZN5v7zhpXVwF1X/KeSSaVUn9IjaN
 OYJG+1kBQpv5H62J+QS3CUaDlkLqnemR3134T87YWLnA+ZIZlxpIHr1SR
 N/SHx+svuyt9NQ1u1DD5zhTcel0rhqsQSOH1C+dFMlr0tbI9IL8M4SR5i
 7KRDd/w8JRGaOXfg/dE5g/ApXKQToUpYJoxxDqCljrtqg9bdKzAVQMpFd A==;
X-CSE-ConnectionGUID: WLggso4JRlGXHtGri0PTeg==
X-CSE-MsgGUID: LZiwiyFIR5ibhLFIGb48Pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="47656226"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="47656226"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 02:11:00 -0700
X-CSE-ConnectionGUID: 030vLCIcRiebUzj7DcRABQ==
X-CSE-MsgGUID: VvnF/Z8gSLSERdF6BdfWGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="131364922"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa005.fm.intel.com with ESMTP; 02 Apr 2025 02:10:59 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v3 0/2] Remove UHBR13.5 for ICL, DG2
Date: Wed, 02 Apr 2025 14:26:26 +0530
Message-Id: <20250402-dprates-v3-0-9e5d8ca989dd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALr77GcC/zXMQQrCMBCF4auUWZswTdIWXfUe4iKmUxswSZmko
 pTe3SC4/OB/b4dM7CnDpdmB6eWzT7FCnxpwi40PEn6qBoWqQ4NKTCvbQlmgcdbRXQ2daaHWK9P
 s37+n66165hREWZjsf2+wwzNq7E0vNepBtyhaYXmLkmXYuCyf0cdCT+lSgOP4Agi/+WOcAAAA
X-Change-ID: 20250402-dprates-04caceb27541
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, imre.deak@intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
Arun R Murthy (2):
      drm/i915/display/dp: Remove UHBR13.5 for icl
      drm/i915/display/dp: Remove the uhbr13.5 pll state values

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 26 --------------------
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 35 ---------------------------
 3 files changed, 1 insertion(+), 62 deletions(-)
---
base-commit: 8a0f86f7106709c73acb1477af9ad5f267d7a340
change-id: 20250402-dprates-04caceb27541

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

