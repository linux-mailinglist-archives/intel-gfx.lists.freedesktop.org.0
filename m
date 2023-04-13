Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A056D6E076A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 09:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D37B10E10A;
	Thu, 13 Apr 2023 07:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46D0E10E10A;
 Thu, 13 Apr 2023 07:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681370052; x=1712906052;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=28t0yGOogTZXFJOe2H2OpUqJYAQxtIeEwTbjrejrOTs=;
 b=FdG0M08y3FX8NsqJUpgGZoIlrVzws7QvgQ/Be+IaHJU1U+UA5YW5MTM7
 FuRd0NWOg0lK94gIQF2vzEi/DRvoBnRao2R0lMwxrJHqyvlOIBzjMKR/g
 Bpif/YQfqCXhGJFTmVu9m4RYBHszYFSdGnJaD0YEK0GoEChIg2lxmeNde
 YhVFhiEZEbH600LoLMwSzVHpUYrK3UcddYA3k2zMkzETcTbgPtnNr3z5P
 LHaCE7/riDr1zhwxW2q0GbU5yWCCNA+eCehubXkfQbf7RF/sJk69aX0SO
 L0iE4RxLBsrkChEFfaEWxLd0uzo6M0Hq0HtACiRFV1O4bK4zbB5rOGBA2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="341605318"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="341605318"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 00:14:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="721925906"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="721925906"
Received: from svadali-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.55.23])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 00:14:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 13 Apr 2023 10:13:57 +0300
Message-ID: <877cugckzu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave & Daniel -

One DSI fix, stable material.

drm-intel-fixes-2023-04-13:
drm/i915 fixes for v6.3-rc7:
- Fix dual link DSI for TGL+

BR,
Jani.

The following changes since commit 09a9639e56c01c7a00d6c0ca63f4c7c41abe075d:

  Linux 6.3-rc6 (2023-04-09 11:15:57 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2023-04-13

for you to fetch changes up to 6b8446859c971a5783a2cdc90adf32e64de3bd23:

  drm/i915/dsi: fix DSS CTL register offsets for TGL+ (2023-04-11 11:41:57 +0300)

----------------------------------------------------------------
drm/i915 fixes for v6.3-rc7:
- Fix dual link DSI for TGL+

----------------------------------------------------------------
Jani Nikula (1):
      drm/i915/dsi: fix DSS CTL register offsets for TGL+

 drivers/gpu/drm/i915/display/icl_dsi.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
