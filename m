Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F300E78BACD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 00:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B98E10E0F4;
	Mon, 28 Aug 2023 22:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AA3610E0F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 22:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693260508; x=1724796508;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5OGH/ZMZrM1UwqTlqg00VMd/zEBnurCUrQiEIetdQbg=;
 b=XKwUaGy84rUUkmi739wTEcnhajTVBnqyHcmK0UseILneaqpIW6zMzGpS
 +PBJerWHVFU1ya2aIB1DR/IJrTYXt/Zs5/ksNOBBz/Vi8pmSlk9oem5r1
 Jxo0EwN9MtIqEH/enoeZ/SImmOh7qjwKnLSX4NvSo4c/pwrPyfq4Bt4wj
 Uexh72frt8rl/qKWlSw4Uewl8Os9JrQtLMBQfLXekl3eUmBYCsyjyOgCH
 NwgEGg8Hux9Tr3r+wTAp+uFfiEoaHXMVS4gi1JPfzbRKUfenyagNUK3gL
 4xNsI8XnLS0aRKHFiWMFYa1uR5feoeDzuljsZftBF6nKl3BtIbQ7qbA7p w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="365420871"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="365420871"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 15:08:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="741575506"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="741575506"
Received: from kelvin-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.140.209])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 15:08:24 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 19:07:55 -0300
Message-ID: <20230828220756.119766-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] [CI] Test MTL DMC v2.16
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

The following changes since commit db99828b2466119dc068d56ffff4066192347105:

  copy-firmware: Introduce 'RawFile' keyword (2023-08-28 07:18:15 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-firmware CI-dmc-mtl_2.16

for you to fetch changes up to 918ffce8105a3514434c93e97fd54b80fb20a96e:

  [CI] MTL DMC v2.16 (2023-08-28 16:35:31 -0300)

----------------------------------------------------------------
Gustavo Sousa (1):
      [CI] MTL DMC v2.16

 i915/mtl_dmc_ver2_16.bin | Bin 0 -> 52388 bytes
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 i915/mtl_dmc_ver2_16.bin
