Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D86534788
	for <lists+intel-gfx@lfdr.de>; Thu, 26 May 2022 02:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D7810E33A;
	Thu, 26 May 2022 00:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E2210E33A
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 May 2022 00:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653525475; x=1685061475;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ly6Z5LKWrchYoOaqyuSLEbY+Hiz3FfCib9JQhgMeWPI=;
 b=EAMH/ZO7+FFeGW4X0guoH9jA85gkTIwrlzBvBq+mVHNT5pHq/h3vhZIz
 UqL1gcRCVP92YUVNDdTSZff7Uvqf4cwj5IXMYeyR5qfTSThqYsxcjVCi0
 WiRUMkV/4zb7NhS48k7dm11nxQA6jC4gFJh0AFe6fsrTog4dDpgHdjo8o
 RinPf8Lyqq/G/KJvSi3IBLPpUenw4VSCP84AmihudFpPGKf3kbRxy578N
 5DHd4LN4buFWrDXxVjsCDjJ6IJiDCsqumunfKI8OXQNpEa4rF80XSxFy0
 Lzt00v/Y2usG/FQxqypSOOFwBnJI9mI0UMiLQd4Cd6WRmybk9JLnSABWt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10358"; a="254476173"
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="254476173"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 17:37:54 -0700
X-IronPort-AV: E=Sophos;i="5.91,252,1647327600"; d="scan'208";a="549287147"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.127])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 17:37:54 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 May 2022 17:19:38 -0700
Message-Id: <20220526001939.4031112-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] drm/i915/tc: Prevent system hang when
 modesetting disconnected Type-C ports (v2)
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

The following patch tries to prevent a system hang when a modeset
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
the following patch prevents the selection of TBT PLL for legacy Type-C
ports.

v2: Drop the second patch (that rejects modesets on disconnected tc
ports) from this series.

Cc: Imre Deak <imre.deak@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Vivek Kasireddy (1):
  drm/i915/tc: Don't default disconnected legacy Type-C ports to TBT
    mode (v2)

 drivers/gpu/drm/i915/display/intel_tc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

-- 
2.35.1

