Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB6A633C0D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8779210E3D4;
	Tue, 22 Nov 2022 12:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2277510E0C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118910; x=1700654910;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ykvsZwBVx2J5MphAP5kWxsG8/SMDEYBeyUW8QvXpqw0=;
 b=EqL5xqywdtFyJHMkp7Rww3OifW0q6js4PJLUjohu49uvJU68Uz5vNSYU
 s7TBupIHQseQHA1Q2vWxIq574ElZoF8IlsixK0cwnGPdJquFf60wOCcJp
 a6U6RgDCU+NYKlRrIghoUa1w9IqtnAYXKlYUDt0AlklWUCbsvEsr0PnaD
 1QMiFSlk66eKLDukqAQa9R8/kCX4zLn8zyqTp9GCwbmY6HXNtGFcd63jW
 yhQFq9HSs3HSX9MAGg9bfJvOHoPNWD+NOWZNKW33l+ACFdXKSMi/ky5U8
 oXOzQF3peApzMV5H3BijMnFl+dzelmBK1xCDvcZ6j/7h0Vo+luJhx2mei Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313829514"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="313829514"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395752"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395752"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:15 +0200
Message-Id: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/10] drm/i915/dvo: Further DVO fixes/cleanups
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

Decided to do a bit more work on the DVO code. Started
with just some register definition cleanups/modernization
but ended up actually fixing suspend/resume for a two
of my ADD cards.

Ville Syrjälä (10):
  drm/i915/dvo/ch7xxx: Fix suspend/resume
  drm/i915/dvo/sil164: Nuke pointless return statements
  drm/i915/dvo/sil164: Fix suspend/resume
  drm/i915/dvo: Parametrize DVO/DVO_SRCDIM registers
  drm/i915/dvo: Define a few more DVO register bits
  drm/i915/dvo: Rename the "active data order" bits
  drm/i915/dvo: Use REG_BIT() & co. for DVO registers
  drm/i915/dvo: Use intel_de_rmw() for DVO enable/disable
  drm/i915/dvo: Extract intel_dvo_regs.h
  drm/i915/dvo: Log about what was detected on which DVO port

 drivers/gpu/drm/i915/display/dvo_ch7xxx.c     | 22 ++++-
 drivers/gpu/drm/i915/display/dvo_sil164.c     | 12 ++-
 drivers/gpu/drm/i915/display/intel_dvo.c      | 87 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_dvo_dev.h  |  7 +-
 drivers/gpu/drm/i915/display/intel_dvo_regs.h | 54 ++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 40 ---------
 6 files changed, 126 insertions(+), 96 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dvo_regs.h

-- 
2.37.4

