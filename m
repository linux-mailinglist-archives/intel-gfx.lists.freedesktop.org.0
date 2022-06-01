Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BCA53A9D8
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 17:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3166410E212;
	Wed,  1 Jun 2022 15:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6040210E212
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jun 2022 15:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654096753; x=1685632753;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HKLWWugxZIBYq0aFVcSzrXOyOcOoAT66qyANx+YeUXg=;
 b=NacsvfO4VjIwRZYxdcckVMVHOa0iKbzaPzQqzTv3YHiGnE7LyW42sg/E
 hmzanYWtAu7keaV7afL990NYaHGJqJsQMErdRF2bMiOyHL8QM8hO+rnOH
 3U8ORw8MGmw2rlfPi74bBHKjmk1difR3CGUtNgldDTRE/0R8ea/QtsZy0
 +KpGemArQuEP2cov0zcwU2JhgBTy2mpv/XpkaZk61DAB/IV/zVps0yXyq
 orTbI+Kc1wzwJJJejqWcamualYoclsAVJwp2SQN5W5gMuO/Sbk83pHup0
 s6tj/qr6jLuMrZPsyIJT5Zf6OyEBvutwjxNT5+fCEBbFUfRq/5112ElGY w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="275347072"
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="275347072"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 08:19:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="606318379"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 01 Jun 2022 08:19:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jun 2022 18:19:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jun 2022 18:19:04 +0300
Message-Id: <20220601151907.18725-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Parse more eDP link rate stuff
 from VBT
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

VBT has gained a couple of new ways to specify fast link training
and maximum link rates. Parse all of it.

Ville Syrjälä (3):
  drm/i915: Initialize eDP source rates after per-panel VBT parsing
  drm/i915: Update eDP fast link training link rate parsing
  drm/i915: Parse max link rate from the eDP BDB block

 drivers/gpu/drm/i915/display/intel_bios.c     | 36 ++++++++++++-------
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 33 ++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 ++
 4 files changed, 52 insertions(+), 20 deletions(-)

-- 
2.35.1

