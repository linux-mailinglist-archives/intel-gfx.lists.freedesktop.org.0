Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A592D203A91
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 17:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE656E826;
	Mon, 22 Jun 2020 15:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D6C6E1A8;
 Mon, 22 Jun 2020 15:19:00 +0000 (UTC)
IronPort-SDR: kWKOXErhZqdr1F/Z8RakebeFs7M4Q2sJ5jJGWO7nBnxSHlo8HlOFX1aLbJtY1WabtvJk2JAAxz
 OS11Hx7LVlpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="145296410"
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="145296410"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:18:59 -0700
IronPort-SDR: dyLSyLo3I+4Qp1kCXoBS5zWTIe8pn2NN0bn8T5U89fvAtYueySOuctCBNFH/JNWV+JruOMKKJf
 X4ju+TXzErwA==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="451871640"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 08:18:58 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 17:18:37 +0200
Message-Id: <20200622151845.4520-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 0/8] tests/core_hotunplug: New
 subtests and enhancements
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a bunch of new test variants, enhance debugging of hotunplug driver
issues.

Janusz Krzysztofik (8):
  tests/core_hotunplug: Duplicate debug messages in dmesg
  tests/core_hotunplug: Use PCI device sysfs entry, not DRM
  tests/core_hotunplug: Add unbind-unplug-rescan variant
  tests/core_hotunplug: Add 'lateclose before recover' variants
  tests/core_hotunplug: Add 'GEM address space' variant
  tests/core_hotunplug: Add 'GEM object' variant
  tests/core_hotunplug: Add 'PRIME handle' variant
  tests/core_hotunplug: Add 'GEM batch' variant

 tests/core_hotunplug.c | 331 +++++++++++++++++++++++++++++++++++------
 1 file changed, 284 insertions(+), 47 deletions(-)

-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
