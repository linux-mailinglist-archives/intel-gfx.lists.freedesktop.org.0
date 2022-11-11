Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 222A5625A7B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 13:31:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A840D10E167;
	Fri, 11 Nov 2022 12:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C0410E167
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 12:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668169884; x=1699705884;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=plxW158INzx06NBmiuIvEnbfWd2CyrGDmr+dNmGWwaM=;
 b=aiDVFpEeTF5EhZleEKhZZenV7H2RPFQUq2rAI35qBK5uf1s/M14ywqj0
 kHP6PRgVAoNowUgjUK2A6/fqHTDU2j0ON/qTF4aI6biI/Z0fpbG258fB5
 t6dj2YLPFP//ypcCXlcguNQ7A78pPEu9fRMvgoJt2wWs3D5fJ0Fq+9MBg
 u5nlcAhiHP2wOsvXmmEteTQQohM5/2JNIRiZk/LYIqcL1Mxm2BSxjFNOm
 +F5rnwyDKSf3sbyDzUTmrmRuakychE5QzxF3I22V4Q2QuvNFYOoDqgGpr
 2tY30tZN0qryxQifa+TYe33g4+d9zpwamSPVXKICtiqI4BC3I+rG/jvVq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397883327"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="397883327"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 04:31:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="632023081"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="632023081"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Nov 2022 04:31:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Nov 2022 14:31:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Nov 2022 14:31:16 +0200
Message-Id: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Per-device display tracepoints
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

Resurrect my old patch to include the device name in the display
tracepoints. Seems like a good with discrete GPUs being a thing.

Ville Syrjälä (4):
  drm/i915: Pass intel_plane to plane tracepoints
  drm/i915: Print plane name in fbc tracepoints
  drm/i915: Pass i915 to frontbuffer tracepoints
  drm/i915: Add device name to display tracepoints

 .../gpu/drm/i915/display/intel_atomic_plane.c |   6 +-
 .../drm/i915/display/intel_display_trace.h    | 206 ++++++++++++------
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   4 +-
 3 files changed, 140 insertions(+), 76 deletions(-)

-- 
2.37.4

