Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4227E23B72C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 11:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45236E452;
	Tue,  4 Aug 2020 09:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B0F16E451
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Aug 2020 09:00:06 +0000 (UTC)
IronPort-SDR: d1RxYnfqB3nOYF0soKyn/VASN6tD2ViXheLi41MjeNvrURXsqq6CcelccaOiJloq+RCXqut7LV
 RHnv7oFPYqHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="153442622"
X-IronPort-AV: E=Sophos;i="5.75,433,1589266800"; d="scan'208";a="153442622"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2020 02:00:03 -0700
IronPort-SDR: TiOJLL0G89wGCRq8BG+BEupXoxEMG/FUpjmM2yqdLk59YL52B7ub7wVkZGNAjiSLWWE7cB3RiP
 x3UX/4ntXcdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,433,1589266800"; d="scan'208";a="315261470"
Received: from wrottner-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.61.120])
 by fmsmga004.fm.intel.com with ESMTP; 04 Aug 2020 02:00:02 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Aug 2020 11:59:52 +0300
Message-Id: <20200804085954.350343-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: add syncobj timeline support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

Squashing Chris' patch from yesterday.

Test-with: 20200804085057.349998-1-lionel.g.landwerlin@intel.com

Cheers,

Lionel Landwerlin (2):
  drm/i915: introduce a mechanism to extend execbuf2
  drm/i915: add syncobj timeline support

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 367 ++++++++++++++----
 drivers/gpu/drm/i915/i915_drv.c               |   3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   1 +
 include/uapi/drm/i915_drm.h                   |  60 ++-
 4 files changed, 342 insertions(+), 89 deletions(-)

--
2.28.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
