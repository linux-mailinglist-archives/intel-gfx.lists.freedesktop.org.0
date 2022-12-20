Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDE2651C31
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 09:12:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6D410E097;
	Tue, 20 Dec 2022 08:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25EEB10E09C
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 08:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671523902; x=1703059902;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TAhZxCvYfnRyioHTQDyjFjRVE/OndgPusu44Pv8ZLDM=;
 b=aJHuNANDHgeJ8ljv8WXenjcePEl2HAz6NMuqTT1biG3ilWyOcZ65jusa
 p0rrjuvXHJsJxSW713sYlklIxmDNjT252CY9rRvcChPoSAoHUwZO1ltJ5
 Mm7COlXB0KYP69i8OmCXZ9Og/Gq0m+6PSIufIcUzmcKd2pwzWpaPYweI0
 0KvCvymII74ZFFIUB4z/t6A978DWrxtTCEAuB1vjivNURt7+JpN4s+gEB
 OD/d0RYqcbC9H4FetggLIQehaMQ1R+qFjLK9TZz9A6URrt1kQE/LvcAaR
 2mtp6UgiIShDa8NHh5m/loHtZA+C4Wf4SNk2Nh8THJURoini8np4RBZjA Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="317191913"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="317191913"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 00:11:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="896326182"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="896326182"
Received: from asignori-mobl3.ger.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.252.46.89])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 00:11:40 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 10:11:15 +0200
Message-Id: <20221220081117.169803-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/2] drm/i915/mtl: handle some MTL scaler
 limitations
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

Hi,

I'm resending this series with a cover letter, because the patches
didn't seem to arrive in patchwork as they should.

The versioning history is in the patches themselves.

Please review.

Cheers,
Luca.


Animesh Manna (1):
  drm/i915/mtl: Limit scaler input to 4k in plane scaling

Luca Coelho (1):
  drm/i915/mtl: limit second scaler vertical scaling in ver >= 14

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   | 83 ++++++++++++++++---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 30 ++++++-
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 20 +----
 drivers/gpu/drm/i915/display/skl_scaler.c     | 31 +++++--
 .../drm/i915/display/skl_universal_plane.c    | 45 +++++-----
 8 files changed, 151 insertions(+), 68 deletions(-)

-- 
2.38.1

