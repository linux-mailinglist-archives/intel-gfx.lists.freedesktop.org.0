Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C3E104221
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 18:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 100316E9BD;
	Wed, 20 Nov 2019 17:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D440A6E9BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 17:32:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 09:32:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="215870412"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 20 Nov 2019 09:32:36 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed, 20 Nov 2019 23:01:53 +0530
Message-Id: <20191120173155.20168-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Wa_1604555607 implementation and
 verification skip
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW1wbGVtZW50cyB0aGUgV2FfMTYwNDU1NTYwNyBhbmQgc2tpcHMgaXRzIHZlcmlmaWNhdGlvbiBh
cyB0aGUgRkZfTU9ERVMyCnJlZ2lzdGVyIGlzIHdyaXRlb25seSB0aWxsIFRHTCBCMC4KClRlc3Qt
d2l0aDogMjAxOTExMjAxNDU3MTIuMjc0OTYtMS1yYW1hbGluZ2FtLmNAaW50ZWwuY29tCgpNaWNo
ZWwgVGhpZXJyeSAoMSk6CiAgZHJtL2k5MTUvdGdsOiBJbXBsZW1lbnQgV2FfMTYwNDU1NTYwNwoK
UmFtYWxpbmdhbSBDICgxKToKICBkcm0vaTkxNTogU2tpcCB0aGUgV2FfMTYwNDU1NTYwNyB2ZXJp
ZmljYXRpb24KCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwg
MjYgKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
ICAgICAgICAgICAgIHwgIDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCsp
CgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
