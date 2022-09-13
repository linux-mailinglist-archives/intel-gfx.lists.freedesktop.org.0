Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1D45B7C86
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 23:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0725B10E4BB;
	Tue, 13 Sep 2022 21:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43DEF10E052;
 Tue, 13 Sep 2022 21:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663103425; x=1694639425;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qWNJBk9w0yprXVPnC3GofzALWQJ0BpvxEeSmdRBPqcc=;
 b=UeIbTYOrN/ICRC+wi5tb5FP17+jD64hColQWKpn+0znrR8HOZuQM0sAj
 1ilTgXaOoccoiTcS19us0kizAuKUcR81QwCqF6wHvFzqZ80JT7tkYv1LG
 8R0OUGFQLdhqvFYgeNwtU7CysqNXtEP70tTHQDdpIghqOKGEiGIozapkG
 9KMxk6C4si85+arXKb4FIWgKCFDAh5JrdPi0BIQP8Vp+jYQ7mGIu0Vwa6
 oonw99Gy/D6LvcWL91eZ2i1KGeu+ai/G5XfcMljENHQlv0tOE8ml9xNK0
 9pZK1Ty/TvaSPPAvB1S5+SVDPhRCXhaRSpIVNmSxL+OsIXuSFjVkQiffF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="384556957"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="384556957"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 14:10:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="685023933"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 14:10:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 13 Sep 2022 14:09:55 -0700
Message-Id: <20220908-if-ladder-v2-0-7a7b15545c93@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-bbe61
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH v2 0/3] drm/i915: A couple of if/else ladder
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Refactor code to follow the same convention as last platform first.  This=0D
series includes one patch that had already been reviewed, for frequency rea=
d=0D
and 2 more refactors.=0D
=0D
v2: Fix patch 2 not considering intel_gt_check_clock_frequency() call to re=
ad=0D
frequency (Gustavo)=0D
=0D
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>=0D
---=0D
Lucas De Marchi (3):=0D
      drm/i915: Invert if/else ladder for frequency read=0D
      drm/i915/gt: Extract per-platform function for frequency read=0D
      drm/i915: Invert if/else ladder for stolen init=0D
=0D
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c     |  51 +++-----=0D
 drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c | 174 ++++++++++++---------=
----=0D
 2 files changed, 97 insertions(+), 128 deletions(-)=0D
---=0D
base-commit: 088771790e5d121c70c358468abbebb4710eb02f=0D
change-id: 20220908-if-ladder-df33a06d4f4e=0D
=0D
Best regards,=0D
-- =0D
Lucas De Marchi <lucas.demarchi@intel.com>=0D
