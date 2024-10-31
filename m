Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 305439B7F5D
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 16:56:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C284810E40D;
	Thu, 31 Oct 2024 15:56:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOKu81if";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 213C810E40D
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730390210; x=1761926210;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=22UTKBANdYhV2tX69oUTehpTkGT89OOnaktGHxvfj4g=;
 b=TOKu81ifCL8SgganN5pRnzlw71mGNjYcbZpCqsqLJgFFvzNjXRpUGKp3
 oSQZLnAl6XHzubTRTEikP67YqrrxZM+SDlsgmieNNJKlQ/tbZYBjZvBlb
 ORmJeeyEUeH4QzLVeCJFiuND7Z6fYfpd/44fZxHf6yMC8U3ZkknrRXQMc
 o+mkmJTkrUrfMxClQOGOn6xcJtFEa20HIUJJCzmyTHMR5UY6LDsbI46z/
 kCZcB8bXaWID36A3VPhRIlGWJLivXTAKg0mRQZEVYrDJ1x8b20JVhJzSo
 uUG7YsgLs4eIy3x3qssXYfgGNYXrE/utWpz1c+OCDabUigL4Lao3+M507 Q==;
X-CSE-ConnectionGUID: eY9OzsqFRiKijrIbKXb/Nw==
X-CSE-MsgGUID: lEyHyPteR2K7e//r2Cg4Tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="29575313"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29575313"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 08:56:50 -0700
X-CSE-ConnectionGUID: U3yOeznBQaSlG/9oFQ3Tjw==
X-CSE-MsgGUID: qA3zJdTdSa+3FMYX7EtH7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82791557"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 Oct 2024 08:56:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2024 17:56:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/6] drm/i915: Sanitize MBUS joining
Date: Thu, 31 Oct 2024 17:56:40 +0200
Message-ID: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Sanitize MBUS joining in case the BIOS enabled it with
not active pipes, or we disabled the only active pipe
eg. due to intel_crtc_needs_link_reset().

Ville Syrjälä (6):
  drm/i915: Relocate the SKL wm sanitation code
  drm/i915: Extract pipe_mbus_dbox_ctl()
  drm/i915: Extract pipe_mbus_dbox_ctl_update()
  drm/i915: Extract mbus_ctl_join_update()
  drm/i915: Sanitize MBUS joining
  drm/i915: Simplify xelpdp_is_only_pipe_per_dbuf_bank()

 drivers/gpu/drm/i915/display/skl_watermark.c | 561 ++++++++++---------
 1 file changed, 303 insertions(+), 258 deletions(-)

-- 
2.45.2

