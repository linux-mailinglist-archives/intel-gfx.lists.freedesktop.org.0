Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4EB80364D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 15:22:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DDBF10E298;
	Mon,  4 Dec 2023 14:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F4D010E271
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 14:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701699718; x=1733235718;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HDfE0/0lSUfamrsV6BPkuQ8hh2EgEVMmVEZd0bcIqo8=;
 b=nQtZP/bAzvxb5BF7XVQZU8XOtB0O5ytN4ammg/rX0w6zbtzP69ms5VFz
 lOpOkPvK0yT4UK5QFm8Gt/BWgOmEIMJ1so5bXpnJx4VNLHWm3ADVr8MBC
 3BN8snugEPha31yy1h3/YIyngdtByZ9xraBRxvx4uaPHQ87OJHR5oL0pq
 3/AVxPuAvGc6My0mI9i5RINeHIfvNglNc+RoYYauAtYg1lAGxz3lgjO2O
 hxty7CNrf367BfEJ2GTzfdagAsV7rY9WRy1SMDvu/5D62SK9mHAeKSw6o
 oXWDCFZ5m+NAWxj/XdtluXDHxC3QrTacHjQrEUoPXBlDa2ST6goLoIVsg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="384144477"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="384144477"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 06:09:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="763958989"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="763958989"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga007.jf.intel.com with ESMTP; 04 Dec 2023 06:09:57 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Dec 2023 16:09:52 +0200
Message-ID: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL connect-all
 quirks
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

Hi,

I'll send this first to intel-gfx to verify the i915 CI results. If
all ok, I'll send this series to ALSA/sound upstream.

This seriers is to address kms_hdmi_inject@inject-audio failures
reported in:
https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/3

Kai Vehmanen (3):
  ALSA: hda/hdmi: add connect-all quirk for NUC5CPYB
  ALSA: hda/hdmi: add connect-all quirk for ASUSTeK Prime B560M-A
  ALSA: hda/hdmi: add connect-all quirk for ASUSTeK Z170 Pro

 sound/pci/hda/patch_hdmi.c | 3 +++
 1 file changed, 3 insertions(+)

-- 
2.43.0

