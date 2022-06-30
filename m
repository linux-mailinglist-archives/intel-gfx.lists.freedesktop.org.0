Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58631561EBB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 17:06:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8B1A11B255;
	Thu, 30 Jun 2022 15:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8179D11B255
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 15:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656601563; x=1688137563;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Iu7nbQzdt3HBoLaNbSHQyD6IMtnZ5lmPT/9hfPMy6Kg=;
 b=nHyxHyZiVb0Q+A2tdCZAo+EUAtqqJNQSuYgAxm2I2sthzTj0eBfhPkly
 7S9wCD3ysdY4WVgE0Tcc0VEv4hCcLHDZWVb5pizXGkyLXF2IwKvsfP8/I
 iyXye1XyXGNOzK2DB/sogS9Ltfm4fo9MmR3Tp5vXStIm1lhdJE6FelF5+
 0s/kPWp6PXjGNG0gejhSqo+ab2lDom4VTE4xVgA7Kvy0+O/GH1oJunwuE
 +sL7QhFfQPhqeRNMx3e6M4QUgpyfws0PADYaEE/tD1WYvB5de5pHgw1Bv
 X1tH6S8c4axy94kjfaYAMMIvUvGyqGToYY6BMOavXwlqKa5f3WQPdFeI8 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="344059972"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="344059972"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 08:06:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="588789862"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga007.jf.intel.com with SMTP; 30 Jun 2022 08:06:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jun 2022 18:06:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jun 2022 18:05:57 +0300
Message-Id: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: PCH type cleanup
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

Clear out some unnecessary PCH types.

Ville Syrjälä (3):
  drm/i915: Use short PCH names consistently
  drm/i915: Nuke PCH_MCC
  drm/i915: Nuke PCH_JSP

 drivers/gpu/drm/i915/display/intel_ddi.c         |  2 +-
 .../gpu/drm/i915/display/intel_display_power.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c        |  2 +-
 drivers/gpu/drm/i915/intel_pch.c                 | 16 +++++++++-------
 drivers/gpu/drm/i915/intel_pch.h                 |  8 ++------
 5 files changed, 14 insertions(+), 16 deletions(-)

-- 
2.35.1

