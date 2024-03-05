Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8744E871885
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:47:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9BE6112954;
	Tue,  5 Mar 2024 08:47:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Waclyx8M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 061B0112954
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709628454; x=1741164454;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8axjKd00vCDMSWDPojOPYh3nhTAUh99EB1bH+dTDU/8=;
 b=Waclyx8MHQ1+QBn2rVIJfRYSUIwD2qlGFrfT0dPp4zdYmCdEJFhN0ys2
 1Jr5W144yMHs7D6Wc0jh3DfFrlgaWfr8ognJwjG2R9QoDYP5LhzQYjPn+
 66vzcbdzlil2fP0HzESPlhhPYF2iF4XVL1b5s5tfApPiiGr/0xfrjdV5I
 mFJ0kyc5YXKGjmNpHjx0J02uN+pHRDUvq9Jhxi9XA8TYYm7vZ3Ras+rFn
 BXR7PD/TycH8we5pj0aYoS7I5PasAt6WAK0r9Vrn/TcRu5o+QBX2itfFs
 vhqh/I3hNqr3AXiMNDqrsTtBw2fZaPzVE8AMeYAq8cr8z3cNKnq/BlM1k A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7112465"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7112465"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:47:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="827773662"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="827773662"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 00:47:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Mar 2024 10:47:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915: Make crtc disable more atomic
Date: Tue,  5 Mar 2024 10:47:27 +0200
Message-ID: <20240305084730.19182-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

Make the crtc disable more atomic (in terms of plane disable).

And also also track which pipes need disabling in the same way
as skl_commit_modeset_enables(), which should make the whole
thing bit less messy as we don't have to keep on checking the
same conditions multiple times.

Ville Syrjälä (3):
  drm/i915: Precompute disable_pipes bitmask in
    intel_commit_modeset_disables()
  drm/i915: Disable planes more atomically during modesets
  drm/i915: Simplify intel_old_crtc_state_disables() calling convention

 drivers/gpu/drm/i915/display/intel_display.c | 48 +++++++++++---------
 1 file changed, 27 insertions(+), 21 deletions(-)

-- 
2.43.0

