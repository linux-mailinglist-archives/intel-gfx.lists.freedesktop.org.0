Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E440C1A1789
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 23:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491AB6E90E;
	Tue,  7 Apr 2020 21:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4338D6E90E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 21:55:50 +0000 (UTC)
IronPort-SDR: fQ3V5skfOKVrebQa5X9j5Inr/RH1B3FGLawNE/x5koH7vxqlzRNhsx/FHcWE6DM9x0ZajOxU/C
 +sMH61FE/JLQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 14:55:49 -0700
IronPort-SDR: Be+qmYlOJfrCSylINTJ6T84PsMyhKSjjJKhHA/YBvvMsRfwahsdaoQkklNRgyVK9/fHSUI/GRj
 t6jkjS0ucRXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="269563535"
Received: from bpaauwe-desk1.fm.intel.com ([10.105.128.11])
 by orsmga002.jf.intel.com with ESMTP; 07 Apr 2020 14:55:49 -0700
From: Bob Paauwe <bob.j.paauwe@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue,  7 Apr 2020 14:55:45 -0700
Message-Id: <20200407215546.5445-1-bob.j.paauwe@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Adding YUV444 packed format support for skl+
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

Test-with: <20200407215146.5331-1-bob.j.paauwe@intel.com>

Stanislav Lisovskiy (1):
  drm/i915: Adding YUV444 packed format support for skl+ (V15)

 drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_sprite.c  | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 3 files changed, 14 insertions(+), 1 deletion(-)

-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
