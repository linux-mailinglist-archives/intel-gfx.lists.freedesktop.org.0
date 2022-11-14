Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 108E4627DEC
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:39:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC6410E01F;
	Mon, 14 Nov 2022 12:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86F3C10E01F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668429541; x=1699965541;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=31ZHXwqn9CeExrCyryUXIoTsetuAckNiHyB86lafr4o=;
 b=Sl16J2yCnfOQY840VMQbbUvIRI+ZKs93pimTNOUfeQPih75QDWdOTcif
 6aACDEcMcvaxqZKqgDaKU9TAVYpZvF6wWJTIsOKt5uUKn8DNMtiqgycXl
 MOaigJUw9c0pd4ZJh/HPbsgi6OLXmh4rXg/tY+DqTyhA7Oaz3yFLAtcod
 Sj2O2ShrliQHLjomGOohyJW3HptVY9FUv5I4MjIC485pmRPUml0xLZ72M
 OHiFd9Av2G9i1r0aRf96fn7/MwcjXVrsBFEsyoX54uH2nM9aOjtq0cZ89
 +qbNEIXejl+7rqL4ufitccUlHB3FS/3UdcIlzxzmvinrzdYSzfMzj2HAh A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="299476476"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="299476476"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:39:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="701990002"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="701990002"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:38:58 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 18:08:40 +0530
Message-Id: <20221114123843.880902-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 0/3] Cold Reset IGT Test
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cold Reset IGT Test.

v2:
Address some review comments from Kamil and Badal.

Anshuman Gupta (3):
  lib/igt_pm: Refactor get firmware_node fd
  test/device_reset: Refactor initiate_device_reset
  tests/device_reset: Add cold reset IGT test

 lib/igt_pm.c         |  76 ++++++++++++++++++++----
 lib/igt_pm.h         |   1 +
 tests/device_reset.c | 138 +++++++++++++++++++++++++++++++++++++++----
 3 files changed, 191 insertions(+), 24 deletions(-)

-- 
2.25.1

