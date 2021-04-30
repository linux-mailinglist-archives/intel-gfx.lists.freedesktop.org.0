Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E10336F782
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 11:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2BD6F4F8;
	Fri, 30 Apr 2021 09:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00D1B6E140;
 Fri, 30 Apr 2021 09:05:49 +0000 (UTC)
IronPort-SDR: UlscRMSlUDHauuhOwsBxJTceEX2/C/8yVf4IhfpTTzJBZUVvdDzEvbxCYfdvnGYCyciK8SnooC
 X1dRgOJLzCeg==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="261180249"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="261180249"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 02:05:48 -0700
IronPort-SDR: OGsU5bP6QqAVdafe3Z6sjxhhevqNMIYLgSSumqEA7bT3vIMMFeCmRi0DhSwvL1TnYVZEPdyPK1
 xuXwDsXAWL1g==
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="431333339"
Received: from angiepch-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.52.49])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 02:05:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Fri, 30 Apr 2021 12:05:41 +0300
Message-ID: <87wnsk16sa.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PULL] drm-intel-next-fixes for the merge window #2
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
Cc: , dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave & Daniel -

One more fix for -rc1.

drm-intel-next-fixes-2021-04-30:
drm/i915 GVT fixes for v5.13-rc1:
- Fix a possible division by zero in vgpu display rate calculation

BR,
Jani.

The following changes since commit 270e3cc5aa382f63ea20b93c3d20162a891dc638:

  drm/i915: Fix docbook descriptions for i915_gem_shrinker (2021-04-26 11:54:33 +0300)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-next-fixes-2021-04-30

for you to fetch changes up to c7b397e9ca4d6828e3e3f504c80bcb1fe535c348:

  Merge tag 'gvt-next-fixes-2021-04-29' of https://github.com/intel/gvt-linux into drm-intel-next-fixes (2021-04-29 13:15:51 +0300)

----------------------------------------------------------------
drm/i915 GVT fixes for v5.13-rc1:
- Fix a possible division by zero in vgpu display rate calculation

----------------------------------------------------------------
Colin Xu (1):
      drm/i915/gvt: Prevent divided by zero when calculating refresh rate

Jani Nikula (1):
      Merge tag 'gvt-next-fixes-2021-04-29' of https://github.com/intel/gvt-linux into drm-intel-next-fixes

 drivers/gpu/drm/i915/gvt/handlers.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
