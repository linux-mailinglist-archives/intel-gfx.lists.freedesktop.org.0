Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60210337148
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 12:28:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689016EC05;
	Thu, 11 Mar 2021 11:28:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BD76E4FE;
 Thu, 11 Mar 2021 11:28:15 +0000 (UTC)
IronPort-SDR: zuFQGZp3nXJVtnvEcDaETh2Ont5H4enkmORU4KZSt1WgvJuwiAHmcnsMZXqs8VoX1fo3A3hYVS
 f3opZ3WfNK0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252668862"
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="252668862"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 03:28:14 -0800
IronPort-SDR: 2toK/gpDXmqIhoXRbB/I1TnCo7z9qTPyFYBfYkyTt3BmieNbS7P7MKm/4BjPZpv1Ic+7EgnVd0
 FuBWlnUWG7Ew==
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="438171636"
Received: from kmosiien-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.212.236.4])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 03:28:11 -0800
Date: Thu, 11 Mar 2021 06:28:09 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YEn+yXnNFFoW5+CF@intel.com>
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

Things are very quiet. Only 1 fix this round.
Since I will be out next week, if this trend continues I will
accumulate 2 weeks and send when in -rc4. 

Here goes drm-intel-fixes-2021-03-11:

- Wedge the GPU if command parser setup fails (Tvrtko)

Thanks,
Rodrigo.

The following changes since commit fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8:

  Linux 5.12-rc1 (2021-02-28 16:05:19 -0800)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-intel tags/drm-intel-fixes-2021-03-11

for you to fetch changes up to c3d2c6770b4bc34f4de9f4097e5f0ded75d6b98d:

  drm/i915: Wedge the GPU if command parser setup fails (2021-03-04 10:38:33 -0500)

----------------------------------------------------------------
- Wedge the GPU if command parser setup fails (Tvrtko)

----------------------------------------------------------------
Tvrtko Ursulin (1):
      drm/i915: Wedge the GPU if command parser setup fails

 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  7 ++++++-
 drivers/gpu/drm/i915/i915_cmd_parser.c    | 19 +++++++++++++------
 drivers/gpu/drm/i915/i915_drv.h           |  2 +-
 3 files changed, 20 insertions(+), 8 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
