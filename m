Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B095B2772
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 22:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 251BC10E59C;
	Thu,  8 Sep 2022 20:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3314F10E59C
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 20:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662667825; x=1694203825;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ny5YB1Z8nDlP48CDc3+3f3gvC1Q45xzy2JeetCqOexk=;
 b=YENKgrIuVnchHfn8ukb44J1icC0BqqiLVbCZ60SXI7Ch1o9/ggwleKRH
 Hpt2kZy3TwhIEp1dSgdJ761+wZOW6rkd3+ivNdrrxgKH6ibwf087dwF5x
 1wXM/VwLLRSJBWVsboOmtPIpGzUL3DhUnkIjmzzeXriTyWgaryYIBaQEc
 WlXSEX7IGlbinfwEk2XuJUDL8VpgOP2g9Z/sjW6GPbP/IPocgLXCuRAbC
 tbkafNw+tY/UYCam8ejsFML6ygw6MUN95bVQI5eWmp7lvad/LVbKNJJ2R
 jKMUP6gb7BW8k8BaG0dCVFWT8WvVuzFYFFhAErHp71gwsTYmysHLq46cc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383607997"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="383607997"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:10:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="718702453"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:10:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 13:08:13 -0700
Message-Id: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-df873
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH v1 0/3] drm/i915: A couple of if/else ladder
 refactors
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Refactor code to follow the same convention as last platform first.  This=0D
series includes one patch that had already been reviewed, for frequency rea=
d=0D
and 2 more refactors.=0D
=0D
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>=0D
=0D
---=0D
Lucas De Marchi (3):=0D
      drm/i915: Invert if/else ladder for frequency read=0D
      drm/i915/gt: Extract per-platform function for frequency read=0D
      drm/i915: Invert if/else ladder for stolen init=0D
=0D
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c     |  51 +++-----=0D
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 171 +++++++++++----------=
----=0D
 2 files changed, 93 insertions(+), 129 deletions(-)=0D
---=0D
base-commit: adc57f2b82896fed07bc8e34956c15bb1448fca2=0D
change-id: 20220908-if-ladder-df33a06d4f4e=0D
=0D
Best regards,=0D
-- =0D
Lucas De Marchi <lucas.demarchi@intel.com>=0D
