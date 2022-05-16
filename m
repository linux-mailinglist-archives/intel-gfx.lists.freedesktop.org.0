Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A35528091
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 11:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7770C10EF05;
	Mon, 16 May 2022 09:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F418510EF05
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 09:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652692298; x=1684228298;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3jveAccv5LS7WbpOf8IYIN1HjuU45v/EQg9WCG+UHDs=;
 b=V6zM3o5AwOm4hE7EDt5mDsyT2upt1kcO97qXRtp1b3qYporYY0Zg5wH6
 Z0XAH1MkhT/t8EgOr7iTOghgObZAgjleR9Q2PJE1SoN/Gj0gBxL3w5wme
 wkTU40deMoj/dUX26+WlNGzQGBUWpAD097k6VEUXmeDTovIFtN0Vo2iK0
 FjVKOhIejs/fuN1jA/YSjNRxnbbtEhOwDJ112vj7p/SSFSuVtv2OkAjaB
 xMw2oThZOXNj6KVuccD1K0zlOEFac73i7fI4rRDzt6iXlKSLxN1pHUIv9
 VzAvWonV/67wFSkqjwM4fnMdspnau2+HkiTbi/NJtodUb6dEG9AvWR1N4 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="269602328"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="269602328"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 02:11:38 -0700
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="522370442"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 02:11:37 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 May 2022 01:54:00 -0700
Message-Id: <20220516085402.3591249-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/2] drm/i915/tc: Prevent system hang when
 modesetting disconnected Type-C ports
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following two patches try to prevent a system hang when a modeset
is forced by userspace (Weston) on legacy Type-C ports that are
disconnected. This issue was accidentally discovered while trying
to modeset one of the HDMI ports on the TGL based Gigabyte system
(https://www.gigabyte.com/Mini-PcBarebone/GB-BSi3-1115G4-rev-10#ov)
using the following Weston settings (configured via weston.ini):

[output]
name=HDMI-A-3
mode=173.00 1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
force-on=true

Entering the name of the HDMI connector incorrectly above (for example
HDMI-A-3 (disconnected) instead of HDMI-A-2 (connected)) lead to 
warnings in the log followed by a system hang. To fix this issue,
the first patch prevents the selection of TBT PLL for legacy Type-C
ports and the second one rejects any attempts to modeset disconnected
Type-C ports.

Cc: Imre Deak <imre.deak@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Vivek Kasireddy (2):
  drm/i915/tc: Don't default disconnected legacy Type-C ports to TBT
    mode
  drm/i915: Reject the atomic modeset if an associated Type-C port is
    disconnected

 drivers/gpu/drm/i915/display/intel_atomic.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_tc.c     |  3 ++-
 2 files changed, 22 insertions(+), 1 deletion(-)

-- 
2.35.1

