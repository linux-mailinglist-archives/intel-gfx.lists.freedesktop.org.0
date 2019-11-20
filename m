Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9341040FC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B5D6E855;
	Wed, 20 Nov 2019 16:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F40236E855
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:41:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 08:41:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="408178320"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 20 Nov 2019 08:41:02 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Wed, 20 Nov 2019 22:10:17 +0530
Message-Id: <20191120164020.21352-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Wa_1604555607 implementation and
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
UmFtYWxpbmdhbSBDICgyKToKICBkcm0vaTkxNTogbWFya2luZyByZWFkYWJpbGl0eSBvZiBXQSBy
ZWdpc3RlcnMKICBkcm0vaTkxNTogU2tpcCB0aGUgV2FfMTYwNDU1NTYwNyB2ZXJpZmljYXRpb24K
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNDMgKysrKysr
KysrKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
ICAgIHwgIDQgKysKIDIgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRp
b25zKC0pCgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
