Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4303A68CFA6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 07:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE2610E1D0;
	Tue,  7 Feb 2023 06:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6098F10E1D0
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 06:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675752221; x=1707288221;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fkac1jOY/28lJ3JxAPx+6g/K4esoC57cbYXRVHhnbyc=;
 b=SP1kt8+h1vZMTCPdvj1C5jo81bD7ZVuSTk4UXPp8naZRf5ZT4QSd0jXc
 tr0GN1qHibGLCJcnsy1lOnjgxxEgsNK5e0xD50Z98sjYlawOYMbvbBBBe
 6QiOYEGvA49nV0R9qa/0dsbrhOupK4gxeZsFWKd114z2BY3J6DzRcnLYZ
 JS2v5mncyTXkSLvprBHuS4PayyNtQgVGng9S2K8iuJpzg7YX/0EZlPmzV
 /hHYWxDVGQzfP1UGAkzYpoSGypdKL412hgehVVen15lCX6WrATa5BwZMn
 6FfCe97CH2uvnXMDfOx1mOJmnZ5TEDeeRVvObZDvhXpeFNYmrKFg4QHzZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309067894"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309067894"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 22:43:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="660107516"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="660107516"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 06 Feb 2023 22:43:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Feb 2023 08:43:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 08:43:34 +0200
Message-Id: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Fix eDP+DSI dual panel systems
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

Several fixes to light up the secondary (DSI) panel on
Lenovo ThinkBook Plus Gen 3.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/8016

Ville Syrjälä (3):
  drm/i915: Fix VBT DSI DVO port handling
  drm/i915: Populate encoder->devdata for DSI on icl+
  drm/i915: Pick the backlight controller based on VBT on ICP+

 drivers/gpu/drm/i915/display/icl_dsi.c        |  3 +-
 .../gpu/drm/i915/display/intel_backlight.c    | 34 +++++++++++--
 drivers/gpu/drm/i915/display/intel_bios.c     | 48 ++++++++++++++-----
 3 files changed, 68 insertions(+), 17 deletions(-)

-- 
2.39.1

