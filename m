Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E1885FA8C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 14:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A2B10E946;
	Thu, 22 Feb 2024 13:58:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aOkucWsV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0586210E948
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 13:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708610332; x=1740146332;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hb6mwgaj7qxUKh5pDLUzl5dsbQpa7yv4lOKhJ02zXsU=;
 b=aOkucWsV6b1AKBQt8QINydarT5ILOhaT/iHfYtZawhXL9EO91O7pEdkn
 vbmVPosqeGy6V3v7WGdfj6NplFMEetPfkX7wFtblpjVgySDl6brZmFTkn
 UCUWsfqlc34c58+mimSZirM2KEWjhwQOEx+VwIgIRSy/CD9XnjoA+xNyN
 nhfTRwJeeVn/Wf4EEfORmO8a4N++Nqv1HUTqtzy1BxIFrQSKE41P6bG46
 /axkzlPeGRrdM1h54JpvilYPF1d0KN1zMK2DzpQIZIS8diryDQs0egwlz
 xBoGqVT0BjRl8e12+exTyuijVEdeFXGEeTiFnkyZJyWv0QnUAipdVYbAa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="28275101"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="28275101"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 05:58:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="36503954"
Received: from tgv15d-lfw01b-20.inn.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.20.2])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 05:58:50 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: linux-firmware@kernel.org
Cc: intel-gfx@lists.freedesktop.org
Subject: PR for MTL DMC v2.21
Date: Thu, 22 Feb 2024 10:58:34 -0300
Message-ID: <20240222135834.75378-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

The following changes since commit 97b693d243f0bb464819fa3f8326edd4091032e4:

  Merge branch 'mediatek' into 'main' (2024-02-20 15:13:01 +0000)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware mtl_dmc_2.21

for you to fetch changes up to 98502ba83a6db0e4dc99aa1fa292e48b1dc8d0ce:

  i915: Update MTL DMC v2.21 (2024-02-22 10:51:16 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      i915: Update MTL DMC v2.21

 WHENCE           |   2 +-
 i915/mtl_dmc.bin | Bin 52476 -> 52476 bytes
 2 files changed, 1 insertion(+), 1 deletion(-)
