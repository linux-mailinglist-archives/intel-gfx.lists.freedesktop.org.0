Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAE26407D6
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 14:44:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B0C510E707;
	Fri,  2 Dec 2022 13:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA9210E0BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 13:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669988655; x=1701524655;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P9LTZzxBF4hKZiHgc1+5qi/byCe3trhei8w2TPRMnSY=;
 b=I0glwI7Ld4NgQKM2K3GaqA1MVHg9+aArk5djIX4gnD01QUqeeKTv7HcY
 vPP9/e2Wz2PKIrxCqKb8SVYjtiX4xmorK+hOTyig4pXT431YUs4TEPxvN
 yXp+Ro7gSmj88YupMmTbENGRmI18UOcEvc0oi/hnFPXAvM/c5dtaNgDR/
 uQs/bvi+QRuI7u9bfYgcvws3cjp7Rk2+1cOusBVCt4rPIBSVBtJf0rO3Q
 W6roNUjAvJIe0uH0bv/Wa7SmW/mSZtO+BBge/w+HZtUAxPeiXlK3PLXls
 fR7WXOigEkpBlR8igjuj39Y7XiUO0RpLb+wSiyALggk8hgVJY8zRFuc6e g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="317102397"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="317102397"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 05:44:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="622703988"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="622703988"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 02 Dec 2022 05:44:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Dec 2022 15:44:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:44:08 +0200
Message-Id: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/vrr: VRR fixes
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

Fix a bunch of VRR problems:
- inconsistent register latch point on icl/tgl
- bogus guardband/vblank exit length calculations on adl+
- adjustments to the vrr enable/disable seqeuence to avoid
  pipe/transcoder getting stuck on mtl when switching from
  vrr mode to non-vrr mode

Ville Syrjälä (4):
  drm/i915/vrr: Make registers latch in a consitent place on icl/tgl
  drm/i915/vrr: Fix guardband/vblank exit length calculation for adl+
  drm/i915/vrr: Reorder transcoder vs. vrr enable/disable
  drm/i915/vrr: Be more careful with the bits in TRANS_VRR_CTL

 drivers/gpu/drm/i915/display/intel_ddi.c |  8 ++--
 drivers/gpu/drm/i915/display/intel_vrr.c | 59 ++++++++++++------------
 2 files changed, 34 insertions(+), 33 deletions(-)

-- 
2.37.4

