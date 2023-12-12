Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA8180F525
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 19:03:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B82DC10E202;
	Tue, 12 Dec 2023 18:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9260C10E202
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 18:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702404178; x=1733940178;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ayqhRIc9dgwvnjmceqphIju0LV+Me6hxEmO8snQNvkQ=;
 b=jrt3YMnBRfL3VgxbnbW8LFKCym+sYAtp4jWJ9xDc7LQRbEsWzYVGm0lO
 PtNQiIfe4H5K1cYZ57mnH2bwv93USD1GC/aKrcQtNX9VzoLAcs0EZYybN
 0F138JPMPyOb3/rFsvXgwNUNXZXkcP30cXG6OviVMRGQwqKdBsQYHbm2M
 AMUQV54mvayWOYF6aGwChrkY/iX5bEYLpFyQqQh6fxfIh7sg1hxlctKg3
 HBr6sdzMt5qmwlgunvcyiZ/loYmw2VZxuQtMYOrGboVSVgb8IH4XjyQzm
 N09lk9KBYI5lFUEVNO5H/X+9IZbCkV4PuSG0lmSRRrtPSigMZEmJf2C0u g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="374350731"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="374350731"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 10:02:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="897003069"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="897003069"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004.jf.intel.com with ESMTP; 12 Dec 2023 10:02:55 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/6] ALSA: hda/hdmi: align force-connect quirks with upstream
Date: Tue, 12 Dec 2023 20:02:47 +0200
Message-ID: <20231212180253.2883124-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

The recent work on display audio force-connect quirks got merged 
upstream, but in a slightly modified form. This series replaces the patches
in drm-intel/topic/core-for-CI with clean versions of patches merged
to sound upstream.

There is one functional difference, the upstream version dropped
one SSID (1043:8694). This was reported as an affected configuration,
but when cross-checking the series for upstream submission, no
such system was found. So CI results should be equivalent with this 
series.

Kai Vehmanen (6):
  Revert "ALSA: hda/hdmi: add force-connect quirk for ASUSTeK Z170M Pro"
  Revert "ALSA: hda/hdmi: add connect-all quirk for ASUSTeK Z170 Pro"
  Revert "ALSA: hda/hdmi: add connect-all quirk for ASUSTeK Prime
    B560M-A"
  Revert "ALSA: hda/hdmi: add connect-all quirk for NUC5CPYB"
  ALSA: hda/hdmi: add force-connect quirks for ASUSTeK Z170 variants
  ALSA: hda/hdmi: add force-connect quirk for NUC5CPYB

 sound/pci/hda/patch_hdmi.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

-- 
2.43.0

