Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDA22C8105
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 10:30:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA916E40C;
	Mon, 30 Nov 2020 09:30:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB186E40C
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 09:30:55 +0000 (UTC)
IronPort-SDR: 58XipkhnBjy3EWcFiuU5pelaOxVmHyhPxhyZJjW0IxEJ6cVQMwZSseMM3yo0X01FJ7qGXTnhsA
 uJ5790X8k+6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="160378864"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="160378864"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 01:30:54 -0800
IronPort-SDR: R3eI/c8BAoBxG+tBKC7K9kNj+CpEpOFQsDyBZwDdZxCmT73raYjLT1lGpVu20TMg5B96mAzOkx
 3lyuNbTP2a3w==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="367055031"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 01:30:52 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 14:46:44 +0530
Message-Id: <20201130091646.25576-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/2] Display glitches fixes
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

This series addressed the display glitches observed on
TGL chrome-OS platform.

Anshuman Gupta (2):
  drm/i915/dp: optimize pps_lock wherever required
  drm/i915/display: Protect pipe_update against dc3co exit

 drivers/gpu/drm/i915/display/intel_display.c |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c      | 47 +++++++++++++++++++-
 2 files changed, 48 insertions(+), 2 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
