Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CE474D8B4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 16:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF2D10E17D;
	Mon, 10 Jul 2023 14:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43EB10E17D
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 14:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688998444; x=1720534444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r+Y4MnkAaEiMin2v4tuR3LJZq/mmbkPQN38NGj84L3A=;
 b=b2jbSPYnJgGFhnnoOdnJfQpf2jwjhrhfMcsBwh350WHLo1v3pKKqKmq1
 PWSdI5Pilmg6Osya7g33J846Kum58VaBltSUx5/5eOWZdI26u5F0YExa6
 1Uqt212Lpo6iBLlcYgdpsH4HQkmLij+w2NSb/WChzMCK/6gUjllh22hGz
 GCOceJZLVAnQ9YoJ/6I2fWiqveoN9A9NdZmoLemC3N26IeOWLvjD8rH7n
 m2AnbFtU4rqacQfT1tDf/D1RiptCF0/bjjow9ZBoBev6DscqI98irduwN
 IVC3VXEDgl1pxmj41MXgaTftAqOEdIys72crKcUSXCZ5WJ5Qhwi/1o4xw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="366927450"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="366927450"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 07:14:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="834291292"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="834291292"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 07:14:02 -0700
From: Imre Deak <imre.deak@intel.com>
To: stable@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Mon, 10 Jul 2023 17:13:58 +0300
Message-Id: <20230710141359.754365-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] v6.1 stable backport request
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Stable team, please apply patch 1/1 in this patchset along with its
dependencies to the v6.1 stable tree. The patch required a trivial
rebase adding a header include, hence resending it, while its 2
dependencies listed at Cc: stable lines in the commit message can be
cherry-picked as-is.

Thanks,
Imre

Imre Deak (1):
  drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_tc.c       | 51 +++++++++++++++++--
 2 files changed, 48 insertions(+), 4 deletions(-)

-- 
2.37.2

