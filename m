Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B90EE3D24C3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 15:42:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE9F6EA6E;
	Thu, 22 Jul 2021 13:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38BB16EA6E;
 Thu, 22 Jul 2021 13:42:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211707333"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="211707333"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 06:42:11 -0700
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="512612529"
Received: from bcappucc-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.213.179.144])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 06:42:09 -0700
Date: Thu, 22 Jul 2021 09:42:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YPl1sIyruD0U5Orl@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-intel-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

Here goes drm-intel-fixes-2021-07-22:

Couple reverts from Jason getting rid of asynchronous command parsing
and fence error propagation and a GVT fix of shadow ppgtt invalidation
with proper D3 state tracking from Colin.

Thanks,
Rodrigo.

The following changes since commit 2734d6c1b1a089fb593ef6a23d4b70903526fe0c:

  Linux 5.14-rc2 (2021-07-18 14:13:49 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-07-22

for you to fetch changes up to 6e0b6528d783b2b87bd9e1bea97cf4dac87540d7:

  drm/i915: Correct the docs for intel_engine_cmd_parser (2021-07-21 11:49:36 -0400)

----------------------------------------------------------------
Couple reverts from Jason getting rid of asynchronous command parsing
and fence error propagation and a GVT fix of shadow ppgtt invalidation
with proper D3 state tracking from Colin.

----------------------------------------------------------------
Colin Xu (1):
      drm/i915/gvt: Clear d3_entered on elsp cmd submission.

Jason Ekstrand (3):
      drm/i915: Revert "drm/i915/gem: Asynchronous cmdparser"
      Revert "drm/i915: Propagate errors on awaiting already signaled fences"
      drm/i915: Correct the docs for intel_engine_cmd_parser

Rodrigo Vivi (1):
      Merge tag 'gvt-fixes-2021-07-15' of https://github.com/intel/gvt-linux into drm-intel-fixes

 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     | 227 ++-------------------
 .../drm/i915/gem/selftests/i915_gem_execbuffer.c   |   4 +
 drivers/gpu/drm/i915/gvt/handlers.c                |  15 ++
 drivers/gpu/drm/i915/i915_cmd_parser.c             | 136 ++++++------
 drivers/gpu/drm/i915/i915_drv.h                    |   7 +-
 drivers/gpu/drm/i915/i915_request.c                |   8 +-
 6 files changed, 109 insertions(+), 288 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
