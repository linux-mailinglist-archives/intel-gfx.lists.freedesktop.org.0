Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1AB64E542
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B93210E5A5;
	Fri, 16 Dec 2022 00:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CA410E5A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151094; x=1702687094;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YC2KkeAEfYrUH+Fi4TR2NBwVYdtfOfPVOq6XLykDwQw=;
 b=jRiSs3oIrdjF/mIeX0ekTFO7vz3DR/kU4hogo3x/6Krht5XtKL9I0H5q
 IKzNjjAmUEDQ5oaYo50Jw8Fsgh68nfmMkthsMGmpDprTlVxaFE8jZGUWI
 6I1v2oGhZbatzQIWd9HL3O6ohcHkk/UQwreXI9vtGKaUeB0pzU2Y4Vn0T
 P5bLDMMnkn13IF9XoZzVJLLHdR4CAmXHq3G+eyzt5snbDdY9Rzyn10vSL
 IvUgCF1S16DJP34xtrLHAApVNyI9lSAWnmADo+PFXpK8ngFC4Fx5lJjVg
 0Q+y/ZN67Iv73HAW8SAXBzrSDUdWxbEXJ0wGd+03b6zawltda7++QTh/I Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103795"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103795"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100152"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100152"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:37:57 +0200
Message-Id: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/13] drm/i915/dsb: DSB fixes/cleanups
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

Bunch of DSB related fixes/refactoring/etc.

Ville Syrjälä (13):
  drm/i915/dsb: Stop with the RMW
  drm/i915/dsb: Inline DSB_CTRL writes into intel_dsb_commit()
  drm/i915/dsb: Align DSB register writes to 8 bytes
  drm/i915/dsb: Fix DSB command buffer size checks
  drm/i915/dsb: Extract assert_dsb_has_room()
  drm/i915/dsb: Extract intel_dsb_emit()
  drm/i915/dsb: Improve the indexed reg write checks
  drm/i915/dsb: Handle the indexed vs. not inside the DSB code
  drm/i915/dsb: Introduce intel_dsb_align_tail()
  drm/i915/dsb: Allow the caller to pass in the DSB buffer size
  drm/i915/dsb: Add mode DSB opcodes
  drm/i915/dsb: Define more DSB registers
  drm/i915/dsb: Pimp debug/error prints

 drivers/gpu/drm/i915/display/intel_color.c |  47 ++--
 drivers/gpu/drm/i915/display/intel_dsb.c   | 268 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_dsb.h   |   5 +-
 drivers/gpu/drm/i915/i915_reg.h            |  50 +++-
 4 files changed, 202 insertions(+), 168 deletions(-)

-- 
2.37.4

