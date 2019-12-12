Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E41DF11D97A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 23:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA6D6E21F;
	Thu, 12 Dec 2019 22:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1786E21F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 22:37:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 14:37:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="245907403"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2019 14:37:38 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:37:32 -0800
Message-Id: <20191212223735.666014-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] AUX power well fixes
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

A few fixes related to AUX power wells for various platforms:
 * EHL shouldn't use TC power well handling on C/D since all of its
   outputs are combo.
 * TGL shouldn't be applying Display WA #1178; doing so causes failures
   to enable power wells in some cases.

There's some ambiguity as to whether WA#1178 is even still relevant to
ICL or not; we're checking with the hardware architects on that, but
this series leaves it in place for ICL for now.

Matt Roper (3):
  drm/i915/ehl: Define EHL powerwells independently of ICL
  drm/i915/tgl: Drop Wa#1178
  drm/i915/icl: Cleanup combo PHY aux power well handlers

 .../drm/i915/display/intel_display_power.c    | 193 +++++++++++++++---
 1 file changed, 166 insertions(+), 27 deletions(-)

-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
