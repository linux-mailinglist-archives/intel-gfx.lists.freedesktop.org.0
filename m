Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0209D9AECAF
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 18:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F7910E397;
	Thu, 24 Oct 2024 16:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cw6ZpCUD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C8410E395
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 16:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729788840; x=1761324840;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JH6i8l6Zf91CpB2e1SwE1XPaJRguYwsozWBV6IzM/HE=;
 b=Cw6ZpCUDzHNjrqc1tu+qFN2X4PagzkihSUXjeDBJlrvsbBFZLdfv6nKv
 foNQIYkJG5IMIVDjbMacBrB+HjjmZwTGQ80vmAS0786u36aLFAQezsnom
 jUFXPKwjfZ4a5WkjKFDnRYM6pdltv4chfC/H15c6JaNnopNiLZx8epMq7
 gkFQR9s6lZ0+JRugqWx+s65VXkRIzJCEUjsd01Q1Ug1hHkC96+1L91GrZ
 TmGEmRzXBapB+64UpQxEP1/uXsYzrAMF40v09183yF1HGN9RMm3IXXUiZ
 w+MCsNtFuHoCTdT9je3XxNNOABQJDzmuFYd5/yWo9CTEWSpexjMiupltV g==;
X-CSE-ConnectionGUID: aSv+ry/XR8GVHVFay5rzIA==
X-CSE-MsgGUID: fAhJl9uqR1azkusckL6LyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40047937"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40047937"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 09:54:00 -0700
X-CSE-ConnectionGUID: FPLmK9y3SyOpFZzC52fs/w==
X-CSE-MsgGUID: 2oQ/cdfrQ4CyT/+146yaSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80757432"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Oct 2024 09:53:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Oct 2024 19:53:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/color: Debug improvements and intel_display
 conversion
Date: Thu, 24 Oct 2024 19:53:52 +0300
Message-ID: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
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

Improve the debug prints in intel_color.c a bit, and convert it to
intel_display while at it.

Ville Syrjälä (4):
  drm/i915/color: Pimp debugs
  drm/i915: Handle intel_plane and intel_plane_state in
    to_intel_display()
  drm/i915/color: Convert color management code to intel_display
  drm/i915/color: Make color .get_config() mandatory

 drivers/gpu/drm/i915/display/intel_color.c    | 673 +++++++++---------
 drivers/gpu/drm/i915/display/intel_color.h    |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   4 +-
 .../drm/i915/display/intel_display_types.h    |   8 +-
 4 files changed, 356 insertions(+), 335 deletions(-)

-- 
2.45.2

