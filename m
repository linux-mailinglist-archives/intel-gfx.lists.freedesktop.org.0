Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 254BF5ECBDE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 20:06:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2378A10E04A;
	Tue, 27 Sep 2022 18:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C69E510E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 18:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664301981; x=1695837981;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8t6WiiidZkW1zX75LCnP+o/+DQpQzXJhcIzrac0TweM=;
 b=abal0svmLb1PGeQpvNLPb7dVu0upXCsxmppy2MnWeDKAbxCOmY3uAisx
 fLnc+nrUi5emPsXpfhHhebVaStyyTq9sFC5jsF50GUgmMeFZIijiHPn6z
 WeddRdtUuyHkIoRL+aao9qhfJYnK7cE+sRxwuwK6C+d54VQQxQ7OoYvKz
 5yZoAtsNoeQ7wna/uDetVULJXvFpKtVt97TA0DzBBwvZ0an0QYZhLqggA
 6dsgpsT4i4Kx5feyvLMKgEX8dxrApZYqRbcF2UeCAamIsXlkc9NlAshFv
 3BiGteUOrKR72ugdhqklrbTvJy/mXPwW9hi52B/i+WBvb0rKvn7DxHGwt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="288543252"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="288543252"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 11:06:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="599269976"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="599269976"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 27 Sep 2022 11:06:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Sep 2022 21:06:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 21:06:12 +0300
Message-Id: <20220927180615.25476-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Relax fixed mode selection further
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

After much head scratching I've concluded that the "static DRRS"
stuff is useless for us and we should just ignore it. Instead
we start to trust the EDID a bit more and use all the suitable
fixed modes we find in there, whether or not we have DRRS/VRR/etc.

Ville Syrjälä (3):
  drm/i915: Simplify intel_panel_add_edid_alt_fixed_modes()
  drm/i915: Allow alternate fixed modes always for eDP
  drm/i915: Allow alternate fixed modes always for LVDS

 drivers/gpu/drm/i915/display/intel_dp.c    | 4 +---
 drivers/gpu/drm/i915/display/intel_lvds.c  | 4 +---
 drivers/gpu/drm/i915/display/intel_panel.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_panel.h | 2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c  | 2 +-
 5 files changed, 6 insertions(+), 10 deletions(-)

-- 
2.35.1

