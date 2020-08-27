Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC69254175
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 11:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3DD6EB3A;
	Thu, 27 Aug 2020 09:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8C26EB36;
 Thu, 27 Aug 2020 09:06:52 +0000 (UTC)
IronPort-SDR: mRy1ZuYHMJuWmr01Lqu/KBa8B0vzOMqrFKAlkATBeSS1H8tz8kQCD1VdRIaA2RDqaDiRiaoAeq
 CldYRR9B4pEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="156452644"
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="156452644"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 02:06:51 -0700
IronPort-SDR: CY6bsyEdtb8l5ZrF+r8k7hTwXOP7RVYN/6XAgKV5gI3Sq2oj3DavadYGvapOpx1T3zPhIYUkhH
 ceS2xh8ORdOw==
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="475131206"
Received: from jhaapako-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.249.33.115])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 02:06:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 27 Aug 2020 12:06:43 +0300
Message-ID: <87imd45ufw.fsf@intel.com>
MIME-Version: 1.0
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
Cc: , dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Dave & Daniel, just one fix for -rc3.

BR,
Jani.

The following changes since commit d012a7190fc1fd72ed48911e77ca97ba4521bccd:

  Linux 5.9-rc2 (2020-08-23 14:08:43 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2020-08-27

for you to fetch changes up to e5f10d6385cda083037915c12b130887c8831d2b:

  drm/i915: Fix cmd parser desc matching with masks (2020-08-25 11:01:34 +0300)

----------------------------------------------------------------
drm/i915 fixes for v5.9-rc3:
- Fix command parser desc matching with masks

----------------------------------------------------------------
Mika Kuoppala (1):
      drm/i915: Fix cmd parser desc matching with masks

 drivers/gpu/drm/i915/i915_cmd_parser.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
