Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AABA1536838
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 22:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1190F10ED30;
	Fri, 27 May 2022 20:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6716410E8AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 20:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653684596; x=1685220596;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uFGzTGE9vCs2OhjAGd3MfvfHqZ7XtvYxw1Qw3PoDiFE=;
 b=MRcry1FqBKx2ZemzjNadUOdqPgv45wlVoxDq28cPf/IGyYVRnFa7W9S8
 mtKocqI/m97tCkZnfivMyP5Fkzn/MqWhQz+J5FHWtJHYJyGGnteFWZ45m
 NhJc+Q6aQ8O0YoOJRQzrnJrybanmTD0lZLUeO05rdvSpiSc8AMT+Ybon8
 klYuxp+9qTPDZpdtyWqnRg5E4vh6QJflQ/keff9BTvtnVOWtkNUwlW/Pj
 oUr7DGPKj8mHsrA9yGfQbnEuTCsNVV80757rPSfZvxWzOj8yA9uCLhL/t
 eKgTVjfGn9Gbv0ka3vp2bDvhEEdWMdkXwopuvHES6byyX6cJeO51Sfxez g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="274674112"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="274674112"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 13:49:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="604091653"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 27 May 2022 13:49:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 May 2022 23:49:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 May 2022 23:49:43 +0300
Message-Id: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Accept more fixed modes with
 VRR/DMRRS panels
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

VRR panels generally declare modes with different timings instead
of just modes with different clocks that we get with DRRS panels.
Let's accept more fixed modes for VRR panels.

There are also funny machines that declare DMRRS support but not
DRRS support. Treating those as static DRRS seems like the easiest
short term solution.

Ville Syrjälä (6):
  drm/i915: Parse VRR capability from VBT
  drm/i915: Print out rejected fixed modes
  drm/i915: Accept more fixed modes with VRR panels
  drm/i915/bios: Fix aggressiveness typos
  drm/i915/bios: Define more BDB contents
  drm/i915: Treat DMRRS as static DRRS

 drivers/gpu/drm/i915/display/intel_bios.c     | 29 ++++++++--
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_panel.c    | 52 +++++++++++++----
 drivers/gpu/drm/i915/display/intel_panel.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 58 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.c      | 22 +++++--
 9 files changed, 137 insertions(+), 37 deletions(-)

-- 
2.35.1

