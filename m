Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8F9165170
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 22:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BD489DFA;
	Wed, 19 Feb 2020 21:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC1CB89DFA
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 21:15:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 13:15:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,462,1574150400"; d="scan'208";a="259053071"
Received: from bpaauwe-desk1.fm.intel.com ([10.105.128.11])
 by fmsmga004.fm.intel.com with ESMTP; 19 Feb 2020 13:15:56 -0800
From: Bob Paauwe <bob.j.paauwe@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 13:15:50 -0800
Message-Id: <20200219211551.20125-1-bob.j.paauwe@intel.com>
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

Test-with: 20200127192859.20029-1-bob.j.paauwe@intel.com

Stanislav Lisovskiy (1):
  drm/i915: Adding YUV444 packed format support for skl+ (V14)

 drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_sprite.c  | 6 ++++++
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 3 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
