Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 822B260DEA6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 12:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250AC10E26A;
	Wed, 26 Oct 2022 10:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DAD210E26A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666779105; x=1698315105;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BGDzrZnNqnSNAq95ALS+SDE3qag219PUpz01cTuupRU=;
 b=fHlSbmclUpL8/4Dv8zK8oD1IbdVr9nlv8kQaZR956kfOc0V3unOgJps+
 C2FszD5lwKFXWKw18aCDV6AE1LNIg1xL/Dv/6IzLsvYWvXLiAJEeRzi/C
 5e4STtnThI5yVGP1QqcvVUheLCeloRvlLICdPNlw+ISg4EXCQrWBaG5FF
 YyLXHud2lfAkfMRHlCDBnjXjl8+rcuTUUOMWFx4kPgW7OBjis56YW2/Q2
 MNWx5LCA/dbZPtO/sHMVkK4kvwYRgfv6d/MMtpJC6r3kLKOGsXaMDyU/i
 vulxaV2Bi/Zf1G7RMFW3Vgy44f//K4XDqTw+UXkkQ9CjJPdB4gHzv1JLr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394222254"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="394222254"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 03:11:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="695305840"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="695305840"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 26 Oct 2022 03:11:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 13:11:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 13:11:26 +0300
Message-Id: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915/sdvo: Fix LVDS fixed mode setup
 and clean up output setup
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

Try to fix the LVDS EDID based fixed mode setup a bit. It got broken
when I moved it to happen during connector init rather than doing
it in a roundabout way from .get_modes().

I also did a bunch of refactoring to the output setup code because
the code was a mess.

Note that a lot of the output handling (especially for multi-output
encoders) is still pretty broken so more patches probably still
coming at some point.

Ville Syrjälä (8):
  drm/i915/sdvo: Filter out invalid outputs more sensibly
  drm/i915/sdvo: Setup DDC fully before output init
  drm/i915/sdvo: Grab mode_config.mutex during LVDS init to avoid WARNs
  drm/i915/sdvo: Simplify output setup debugs
  drm/i915/sdvo: Don't add DDC modes for LVDS
  drm/i915/sdvo: Get rid of the output type<->device index stuff
  drm/i915/sdvo: Reduce copy-pasta in output setup
  drm/i915/sdvo: Fix debug print

 drivers/gpu/drm/i915/display/intel_sdvo.c | 166 +++++++++++-----------
 1 file changed, 83 insertions(+), 83 deletions(-)

-- 
2.37.4

