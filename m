Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D690F3B2A2F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 10:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0D96EB19;
	Thu, 24 Jun 2021 08:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 476D96EB12;
 Thu, 24 Jun 2021 08:17:45 +0000 (UTC)
IronPort-SDR: pasd2f6vinlxuG6qwloWyOCc6hnubhZ9xbBMXgi3qg3Im4IHRq+whj8NwSaeyNFChacVga50MA
 cL65gZ5nASCQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="207465182"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="207465182"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 01:17:44 -0700
IronPort-SDR: bQZ+jYXhuYgt/8V+nSGkVbd1htSzWp+ErYd6tASVDJjJf5L/OUmFL0uSuM8eE4c3sxya76DGI9
 +0gwxb2Sl0Fw==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="454975741"
Received: from schulke-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.242])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 01:17:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 24 Jun 2021 11:17:36 +0300
Message-ID: <87czsbu15r.fsf@intel.com>
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


Hi Dave & Daniel -

One more fix for v5.13, stable material. Fix a memset zeroing memory
beyond the intended struct member.


drm-intel-fixes-2021-06-24:
drm/i915 fixes for v5.13:
- Fix memset size for infoframe.vsc to avoid clobbering data

BR,
Jani.

The following changes since commit 13311e74253fe64329390df80bed3f07314ddd61:

  Linux 5.13-rc7 (2021-06-20 15:03:15 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-06-24

for you to fetch changes up to 97ece1dfb2ebabda0be9b2e754d4423a47b60321:

  drm/i915/display: Do not zero past infoframes.vsc (2021-06-23 13:58:17 +0300)

----------------------------------------------------------------
drm/i915 fixes for v5.13:
- Fix memset size for infoframe.vsc to avoid clobbering data

----------------------------------------------------------------
Kees Cook (1):
      drm/i915/display: Do not zero past infoframes.vsc

 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
