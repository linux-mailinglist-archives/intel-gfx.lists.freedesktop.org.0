Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 550B762C7D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A73B89FA9;
	Mon,  8 Jul 2019 23:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C83989FA9
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859633"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:18 -0700
Message-Id: <20190708231629.9296-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 14/25] drm/i915/tgl: update ddi/tc clock_off
 bits
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

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KCkluIEdFTiAxMiBQ
T1JUX0MgRERJIGNsa19vZmYgYml0IGlzIG5vdCBlcXVhbGx5IGRpc3RhbmNlZCB0byBBL0IsCml0
J3MgYXQgb2Zmc2V0IDI0LiBTaW1pbGFybHkgVEMgcG9ydCAoNS82KSBjbGsgb2ZmIGJpdHMgYXJl
IGF0Cm9mZnNldCAyMi8yMy4gRXh0ZW5kIHRoZSBtYWNyb3MgdG8gY292ZXIgdGhlIGFkZGl0aW9u
YWwgcG9ydHMuCgpTaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgOCArKysrKy0t
LQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAppbmRleCA1Y2E3NGVjYTA1YTQuLjQ1ODhkZjllMTFkZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCkBAIC05NzIzLDkgKzk3MjMsMTEgQEAgZW51bSBza2xfcG93ZXJf
Z2F0ZSB7CiAjZGVmaW5lIERQQ0xLQV9DRkdDUjBfSUNMCQkJX01NSU8oMHgxNjQyODApCiAjZGVm
aW5lICBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpCSgxIDw8ICgocG9ydCkgPT0gIFBP
UlRfRiA/IDIzIDogXAogCQkJCQkJICAgICAgKHBvcnQpICsgMTApKQotI2RlZmluZSAgSUNMX0RQ
Q0xLQV9DRkdDUjBfRERJX0NMS19PRkYocG9ydCkgICAoMSA8PCAoKHBvcnQpICsgMTApKQotI2Rl
ZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfVENfQ0xLX09GRih0Y19wb3J0KSAoMSA8PCAoKHRjX3Bv
cnQpID09IFBPUlRfVEM0ID8gXAotCQkJCQkJICAgICAgMjEgOiAodGNfcG9ydCkgKyAxMikpCisj
ZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwb3J0KQkoMSA8PCAoKHBvcnQp
ID09IFBPUlRfQyA/IDI0IDogXAorCQkJCQkJICAgICAgIChwb3J0KSArIDEwKSkKKyNkZWZpbmUg
IElDTF9EUENMS0FfQ0ZHQ1IwX1RDX0NMS19PRkYodGNfcG9ydCkJKDEgPDwgKCh0Y19wb3J0KSA8
IFBPUlRfVEM0ID8gXAorCQkJCQkJICAgICAgICh0Y19wb3J0KSArIDEyIDogXAorCQkJCQkJICAg
ICAgICh0Y19wb3J0KSAtIFBPUlRfVEM0ICsgMjEpKQogI2RlZmluZSAgRFBDTEtBX0NGR0NSMF9E
RElfQ0xLX1NFTF9TSElGVChwb3J0KQkoKHBvcnQpID09IFBPUlRfRiA/IDIxIDogXAogCQkJCQkJ
KHBvcnQpICogMikKICNkZWZpbmUgIERQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUxfTUFTSyhwb3J0
KQkoMyA8PCBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZUKHBvcnQpKQotLSAKMi4yMS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
