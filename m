Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2FF92A967
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 21:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1898A10E232;
	Mon,  8 Jul 2024 19:00:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="euVPA7wo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E81889DC0
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 19:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720465219; x=1752001219;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JGcnK6d2DBkeyDbMCr/jmMwnEljSFkExbr9D7BhUVoI=;
 b=euVPA7woemftX0rKSiQZlAbnHH+CG0TlKwNZG1tPkldxzSoU9jzhSBaZ
 A1iMhAAQYFuIEGx1VQKTmEisyi6cpIg62xbA5/k3kKe8I6Q8y9kbezxb1
 X67xRr48REWjALjFj3fBINhrqZnRmmbXTZ9vS9XHl6S0VrkivnicoEoLf
 zoXZp8ppBPoqAUI0W22xccKinvNptu1uJLeMgIjdFft1VREYOGQ2o1GJW
 SHy2VaDx3ynzhCXtKmZCSc5tVDKefkHp0HWyyoaoQf5izTZIqXoCXin0O
 auodBDJ/xaR54vWd7Mk8LvuIbPQY624OwP9gNOCVWAjs77BZIRXDsMxuM A==;
X-CSE-ConnectionGUID: fGt45ZHcSlmjsk+kg+y7oQ==
X-CSE-MsgGUID: iYimSQc+TnGfpUdy7JKMsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17821044"
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="17821044"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:17 -0700
X-CSE-ConnectionGUID: HJfpa4s2QH+dVnYwDE8F8Q==
X-CSE-MsgGUID: QwDyO/EqTu6nKo6AlW9ilQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,192,1716274800"; d="scan'208";a="85140007"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 12:00:17 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 0/6] drm/i915/dp: Fix LTTPR detection
Date: Mon,  8 Jul 2024 22:00:23 +0300
Message-ID: <20240708190029.271247-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

This is v2 of [1], addressing the review comments from Ville.

[1] https://lore.kernel.org/all/20240703155937.1674856-1-imre.deak@intel.com

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Imre Deak (6):
  drm/i915/dp: Reset intel_dp->link_trained before retraining the link
  drm/i915/dp: Don't switch the LTTPR mode on an active link
  drm/i915/dp: Reset cached LTTPR count if number of LTTPRs is
    unsupported
  drm/i915/dp: Keep cached LTTPR mode up-to-date
  drm/dp: Add helper to dump an LTTPR PHY descriptor
  drm/i915/dp: Dump the LTTPR PHY descriptors

 drivers/gpu/drm/display/drm_dp_helper.c       | 66 ++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +
 .../drm/i915/display/intel_dp_link_training.c | 70 ++++++++++++++++---
 include/drm/display/drm_dp.h                  |  4 ++
 include/drm/display/drm_dp_helper.h           |  2 +
 5 files changed, 124 insertions(+), 20 deletions(-)

-- 
2.43.3

