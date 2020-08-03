Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5F023A7FF
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 16:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E9896E2BC;
	Mon,  3 Aug 2020 14:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183976E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 14:01:52 +0000 (UTC)
IronPort-SDR: RnTKjF08ovr6kzFdTQWWkCJOoo79XZK4CjGieA2h9eHEcmZvrqN1FnWkiSccsGFdhMEuxF5VjB
 julTemBM063w==
X-IronPort-AV: E=McAfee;i="6000,8403,9701"; a="216521830"
X-IronPort-AV: E=Sophos;i="5.75,430,1589266800"; d="scan'208";a="216521830"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 07:01:51 -0700
IronPort-SDR: VcPBG4rvi824ci8aN+aPZ2Vg+jNu6lJuxQBiuEmHuz9o/DLTQB9XYHoRuYDvQQWigmWIAUyNic
 Shdp4FP2mJuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,430,1589266800"; d="scan'208";a="466507961"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.62.231])
 by orsmga005.jf.intel.com with ESMTP; 03 Aug 2020 07:01:50 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Aug 2020 17:01:44 +0300
Message-Id: <20200803140147.316523-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: timeline semaphore support
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

Hopefully last CI run with the IGT tests :)

Test-with: 20200803135851.316355-1-lionel.g.landwerlin@intel.com

Cheers,

Lionel Landwerlin (3):
  drm/i915: introduce a mechanism to extend execbuf2
  drm/i915: add syncobj timeline support
  drm/i915: peel dma-fence-chains wait fences

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 333 +++++++++++++++---
 drivers/gpu/drm/i915/i915_drv.c               |   3 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   1 +
 include/uapi/drm/i915_drm.h                   |  65 +++-
 4 files changed, 342 insertions(+), 60 deletions(-)

--
2.28.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
