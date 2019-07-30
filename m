Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DE77A2B9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DB36E43C;
	Tue, 30 Jul 2019 08:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479206E43C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:03:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 01:03:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="176702425"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 01:03:08 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:06:43 +0530
Message-Id: <20190730073648.5157-2-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190730073648.5157-1-vandita.kulkarni@intel.com>
References: <20190730073648.5157-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 1/6] drm/i915/tgl/dsi: Program TRANS_VBLANK register
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJvZ3JhbSB2YmxhbmsgcmVnaXN0ZXIgZm9yIG1pcGkgZHNpIGluIHZpZGVvIG1vZGUKb24gVEdM
LgoKU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCA5ICsr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pY2xfZHNpLmMKaW5kZXggYTQyMzQ4YmUwNDM4Li43YjhmZGIxNmI2NTEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC04NjIsNiArODYyLDE1IEBA
IGdlbjExX2RzaV9zZXRfdHJhbnNjb2Rlcl90aW1pbmdzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogCQlkc2lfdHJhbnMgPSBkc2lfcG9ydF90b190cmFuc2NvZGVyKHBvcnQpOwogCQlJ
OTE1X1dSSVRFKFZTWU5DU0hJRlQoZHNpX3RyYW5zKSwgdnN5bmNfc2hpZnQpOwogCX0KKworCS8q
IHByb2dyYW0gVFJBTlNfVkJMQU5LIHJlZ2lzdGVyLCBzaG91bGQgYmUgc2FtZSBhcyB2dG90YWwg
cHJvZ3JhbW1lZCAqLworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CisJCWZvcl9l
YWNoX2RzaV9wb3J0KHBvcnQsIGludGVsX2RzaS0+cG9ydHMpIHsKKwkJCWRzaV90cmFucyA9IGRz
aV9wb3J0X3RvX3RyYW5zY29kZXIocG9ydCk7CisJCQlJOTE1X1dSSVRFKFZCTEFOSyhkc2lfdHJh
bnMpLAorCQkJCSAgICh2YWN0aXZlIC0gMSkgfCAoKHZ0b3RhbCAtIDEpIDw8IDE2KSk7CisJCX0K
Kwl9CiB9CiAKIHN0YXRpYyB2b2lkIGdlbjExX2RzaV9lbmFibGVfdHJhbnNjb2RlcihzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcikKLS0gCjIuMjEuMC41LmdhZWI1ODJhCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
