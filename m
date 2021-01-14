Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFF42F6BD6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 21:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D56E76E10D;
	Thu, 14 Jan 2021 20:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C2D56E0F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:13:24 +0000 (UTC)
IronPort-SDR: I82ogr7RZgZ43mvzeYPA+7nKh1wvVeY/frMALVezzOAEXKnxSk6tzPklV801RszhcknsDzAJgf
 RORe7Fy8Z1iw==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="177658306"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="177658306"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:13:17 -0800
IronPort-SDR: 9NeYRReYHqdQ8jtIksGBG2ocqNCkkND2SRprVH8R243/1zWLJ6Xc+xJSb1qiTZ9if0J/u8Gmtc
 mwU7iAP0rB+w==
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="382394424"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 12:13:16 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 22:13:11 +0200
Message-Id: <20210114201314.783648-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 0/3] drm/i915/gen12: Add display render clear
 color decompression support
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
Cc: Nanley G Chery <nanley.g.chery@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v7 of [1] addressing the review comments from Chris and Nanley.
Tested on TGL and DG1.

[1] https://patchwork.freedesktop.org/series/84183/

Cc: Nanley G Chery <nanley.g.chery@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk

Imre Deak (1):
  drm/i915/gem: Add a helper to read data from a GEM object page

Radhakrishna Sripada (2):
  drm/framebuffer: Format modifier for Intel Gen 12 render compression
    with Clear Color
  drm/i915/tgl: Add Clear Color support for TGL Render Decompression

 drivers/gpu/drm/i915/display/intel_display.c  | 101 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   3 +
 drivers/gpu/drm/i915/display/intel_sprite.c   |  10 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  75 +++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   9 ++
 include/uapi/drm/drm_fourcc.h                 |  19 ++++
 7 files changed, 213 insertions(+), 6 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
