Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E215396D8
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 21:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87AEC10E110;
	Tue, 31 May 2022 19:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6CE910E110
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 19:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654024727; x=1685560727;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Xo2jvmfkVbzyWa8kmglFtKc3H/pLdlclCP/T1tUDPaI=;
 b=VCkdpQJcagjO9YPmginkN1f0ZC6AmLyxK86zzj3DuY36yVOMMD0FRgrn
 TF4RvyncC1I6/kEpUERHL4Vhl4oFt6Obx/zvYcZeBfq+XsShedC8/oChY
 d0kQiyXtgGPvKXCjlygoUVI0ahvplZN3v31JnErHiPddf+ncTnAxUjzR6
 A9LJiL+zx2pPKjztoCmxPEgg9n5BIHABOGjgFSVInnnUSLeczH/GmtAD9
 AiNS65Rhri+IMr1gEHobMlwUk0uzjvrkywtGzSJ7Sq8dZ2fDHzJmJxoIN
 gxIpmAR4LLjAjzsCU6li7Cga9FqMp2PxUbVzitlPlv2aS+aRW5qVQgPRr g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="361735606"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="361735606"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 12:18:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="633184103"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 31 May 2022 12:18:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 May 2022 22:18:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 May 2022 22:18:38 +0300
Message-Id: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] drm/i915: Accept more fixed modes with
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

v2: Mainly for CI since v1 failed to apply for some reason, also
    addressed a few review comments

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
 drivers/gpu/drm/i915/display/intel_panel.c    | 53 +++++++++++++----
 drivers/gpu/drm/i915/display/intel_panel.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 58 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.c      | 22 +++++--
 9 files changed, 138 insertions(+), 37 deletions(-)

-- 
2.35.1

