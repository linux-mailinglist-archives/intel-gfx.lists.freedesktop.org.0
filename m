Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8798D6480C9
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 11:18:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 950F410E518;
	Fri,  9 Dec 2022 10:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9566710E519
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 10:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670581126; x=1702117126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DEPp7qk7GtOL5rnZusjDN4mo4wl+W+Ir8XnO3Rq567w=;
 b=JP8WUXy8QRjFhrQHfeZiZ4M4v2g5dS74wyBWBv6Z2huykE+B8vQmr0LR
 EIJahYnZBhu8v6XG8x7RfU733Qpr8x6jFE+jYn4KaGJLfZBikiK0b0tXh
 Loa+e4vSerPZ6tJgCsHzkl4J76vE3CfaIQfLtoOh5hbCXV8Q4ra6LTlwt
 ieOfhE8iFxHBSrSIPnLqcUn4Bv/KbZZt7uAqt03VTag/SdVDREgSCdViy
 UQnSnAz6ICwNgVZ8ocPZr4iHMFPtPJb8DP1vgESTm//4x/fy80O3WMlDm
 8TUNKIrbV1LvHqSy2kr6Iw1NuHrUEFElF5GQv5hsZAjC82eOxGjRtQrZ5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="316135180"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="316135180"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 02:18:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="649510758"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="649510758"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga007.fm.intel.com with ESMTP; 09 Dec 2022 02:18:44 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: alsa-devel@alsa-project.org,
	tiwai@suse.de
Date: Fri,  9 Dec 2022 12:18:19 +0200
Message-Id: <20221209101822.3893675-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] ALSA: hda/hdmi: i915 keepalive fixes
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A series with multiple fixes to i915 keepalive (KAE)
functionality. First patch fixes issue that is hit on
some A750/770 cards:
https://gitlab.freedesktop.org/drm/intel/-/issues/7353

The two other improve behaviour especially with certain
USB-C docks.

Changes in v2:
 - check for errors from pin_id_to_pin_index()
 
Kai Vehmanen (3):
  ALSA: hda/hdmi: fix i915 silent stream programming flow
  ALSA: hda/hdmi: set default audio parameters for KAE silent-stream
  ALSA: hda/hdmi: fix stream-id config keep-alive for rt suspend

 include/sound/hda_codec.h  |   1 +
 sound/pci/hda/hda_codec.c  |   3 +-
 sound/pci/hda/patch_hdmi.c | 119 ++++++++++++++++++++++++++++++++++++-
 3 files changed, 119 insertions(+), 4 deletions(-)


base-commit: 81a2da5a10a6eaa6ae16108eed4e74651cc296bf
-- 
2.38.1
