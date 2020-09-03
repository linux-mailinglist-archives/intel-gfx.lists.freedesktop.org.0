Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EABB25BE17
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 11:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1256E96D;
	Thu,  3 Sep 2020 09:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFEE56E96D;
 Thu,  3 Sep 2020 09:08:41 +0000 (UTC)
IronPort-SDR: jVQwnx7JhfCUiMDVgJ3Zp4Att3N4YeZWJX5nZ0tMmb8VIU0Op6H2nbAc+9iBqJX0O0H7n2SkbS
 0rf3wshYa8ug==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="137594932"
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="137594932"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 02:08:41 -0700
IronPort-SDR: caTYvbvfMEHR5U/pFc9WfuubkHNtxwnAO7LQ8oWngipPEMHTPrw/nQxxzhGkyAoz3wpbVsjjg4
 6c2nv6B4YYkA==
X-IronPort-AV: E=Sophos;i="5.76,386,1592895600"; d="scan'208";a="326142259"
Received: from cbanica1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.22.177])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2020 02:08:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>, 
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Thu, 03 Sep 2020 12:08:34 +0300
Message-ID: <87sgbz2pnx.fsf@intel.com>
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

drm-intel-fixes-2020-09-03:
drm/i915 fixes for v5.9-rc4:
- Clang build warning fix
- HDCP fixes

BR,
Jani.

The following changes since commit f75aef392f869018f78cfedf3c320a6b3fcfda6b:

  Linux 5.9-rc3 (2020-08-30 16:01:54 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2020-09-03

for you to fetch changes up to 57537b4e1d37002ed8cbd0a9be082104749e9d8f:

  drm/i915: Clear the repeater bit on HDCP disable (2020-09-02 10:48:23 +0300)

----------------------------------------------------------------
drm/i915 fixes for v5.9-rc4:
- Clang build warning fix
- HDCP fixes

----------------------------------------------------------------
Nathan Chancellor (1):
      drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state

Sean Paul (2):
      drm/i915: Fix sha_text population code
      drm/i915: Clear the repeater bit on HDCP disable

 drivers/gpu/drm/i915/display/intel_combo_phy.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_hdcp.c      | 32 +++++++++++++++++++++-----
 include/drm/drm_hdcp.h                         |  3 +++
 3 files changed, 31 insertions(+), 8 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
