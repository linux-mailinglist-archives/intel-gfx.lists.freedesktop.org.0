Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C816417286A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 20:15:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B535B6E07D;
	Thu, 27 Feb 2020 19:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2BD36E07D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 19:15:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 11:15:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="242149163"
Received: from bpaauwe-desk1.fm.intel.com ([10.105.128.11])
 by orsmga006.jf.intel.com with ESMTP; 27 Feb 2020 11:15:49 -0800
From: Bob Paauwe <bob.j.paauwe@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 11:15:41 -0800
Message-Id: <20200227191542.20699-1-bob.j.paauwe@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200219211551.20125-2-bob.j.paauwe@intel.com>
References: <20200219211551.20125-2-bob.j.paauwe@intel.com>
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
