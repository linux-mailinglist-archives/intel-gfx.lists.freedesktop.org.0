Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8765A242D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 11:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE6710E7D6;
	Fri, 26 Aug 2022 09:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8500C10E7D6
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 09:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661505744; x=1693041744;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Na2g4qUROuGv7+44tTjZpVsaYexwZtQKDe4Dq4fd+pc=;
 b=Qv/6xfbMoDUVkrNR1o0zCXuTl4qkhynNeNl4R4qY68es0WMAXI2Sde6C
 c82+Oh9WIF+DYCQ/55rYe7S6BsrQvG7F0cqMFkjudmSvmJnMA7GUeXtOQ
 zY52MHwQ5bBkESZhsNVAYjt8F24pQ3AD4dj0Y8Oer3Ifw33+j+lOiIe+V
 dA2aUoIGSJ8vQPQPkiEYndK8jPOTdl3mDdnNkxKlqfGIU3H9x960hWmhT
 WIILt2WgjMQLjXTOBby7RiHmdAWrcjouly1hjnGhXcosRYjOqCivkzOWC
 KKszQwVogrhRO52tQvFoSt42f1SQR8eKckIWWTChkgWZK/3sHKoNZy6XM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="358432155"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="358432155"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 02:22:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="752816990"
Received: from nischal-desktop.iind.intel.com ([10.223.74.174])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 02:22:21 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: gfx-internal-devel@eclists.intel.com, intel-gfx@lists.freedesktop.org,
 nischal.varide@intel.com, maarten.lankhorst@intel.com,
 uma.shankar@intel.com, suresh.kumar.kurmi@intel.com
Date: Fri, 26 Aug 2022 14:52:09 +0530
Message-Id: <20220826092210.9716-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v1 0/1] Enabling Smooth Sync Feature.
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

When async flips are enabled to reduce latency, onscreen tears caused by
the immediate transition from an older image to a newer image within a
frame can be observable.The Smooth Sync feature uses both blending and
dithering to smoothly transition from the old image to the new image
over a programmable number of scanlines.

Nischal Varide (1):
  INTEL_DII: drm/i915/display: Enabling Smooth Sync Feature.

 drivers/gpu/drm/i915/display/intel_display.c  | 66 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  3 +
 .../drm/i915/display/skl_universal_plane.c    | 31 +++++++--
 .../drm/i915/display/skl_universal_plane.h    |  3 +
 4 files changed, 97 insertions(+), 6 deletions(-)

-- 
2.36.0

