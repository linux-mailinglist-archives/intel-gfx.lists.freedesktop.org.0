Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5274D7575
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Mar 2022 14:33:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC5F10E08C;
	Sun, 13 Mar 2022 13:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79BC210E059;
 Sun, 13 Mar 2022 13:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647178391; x=1678714391;
 h=from:to:cc:subject:date:message-id;
 bh=ykVafHM3ByK1CQuj00RtrljBNP5QggTlyYDTPr8OqrE=;
 b=WtZ0gHCqKr8y7BQ1a4X13p2vQP58p0ccrSoYIw83p7sfOrk8knGYEGlQ
 owmiRGdR1nSpYCwe/YRZDfEfUAlXadp81sSgFK8vyOZQTDHXEMyaVXI4e
 SiVv1ryMNB0sqGMYhl3fbg31zyWnJ9/Oudm+eAG+pwokwoW0LhzazWK1b
 r1sZCbyaokbkaBS19R5zTKC4mX771cooMjvRr/9SbHSbfYLbOrFZwXN1u
 wRFgroigrcZaWoDMRKBI0tW2phsYTZveauap6hLTpjsnnXkr+xJfIImH8
 fStBkEjOpZ1cUxKjtNcVNv0o3OLInv4p6Hor3kLs+F7wyjBFoVSv7SWpe Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10284"; a="255600686"
X-IronPort-AV: E=Sophos;i="5.90,178,1643702400"; d="scan'208";a="255600686"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2022 06:33:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,178,1643702400"; d="scan'208";a="515101460"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by orsmga006.jf.intel.com with ESMTP; 13 Mar 2022 06:33:09 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Sun, 13 Mar 2022 21:46:57 +0800
Message-Id: <20220313134702.24175-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [v7 0/5] enhanced edid driver compatibility
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Support to parse multiple CEA extension blocks and HF-EEODB to
extend drm edid driver's capability.

v4: add one more patch to support HF-SCDB
v5: HF-SCDB and HF-VSDBS carry the same SCDS data. Reuse
    drm_parse_hdmi_forum_vsdb() to parse this packet.
v6: save proper extension block index if CTA data information
    was found in DispalyID block.
v7: using different parameters to store CEA and DisplayID block index.
    configure DisplayID extansion block index before search available
    DisplayID block.

Lee Shawn C (5):
  drm/edid: seek for available CEA and DisplayID block from specific
    EDID block index
  drm/edid: parse multiple CEA extension block
  drm/edid: read HF-EEODB ext block
  drm/edid: parse HF-EEODB CEA extension block
  drm/edid: check for HF-SCDB block

 drivers/gpu/drm/drm_connector.c |   8 +-
 drivers/gpu/drm/drm_displayid.c |  15 ++-
 drivers/gpu/drm/drm_edid.c      | 216 +++++++++++++++++++++++++-------
 include/drm/drm_displayid.h     |   4 +-
 include/drm/drm_edid.h          |   3 +-
 5 files changed, 194 insertions(+), 52 deletions(-)

-- 
2.17.1

