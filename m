Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8F867775
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE46A6E3D8;
	Sat, 13 Jul 2019 01:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 473A66E39C
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850907"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:21 -0700
Message-Id: <20190713010940.17711-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/22] drm/i915/tgl: update ddi/tc clock_off bits
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
Cc: Mahesh Kumar <mahesh1.kumar@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KCkluIEdFTiAxMiBQ
T1JUX0MgRERJIGNsa19vZmYgYml0IGlzIG5vdCBlcXVhbGx5IGRpc3RhbmNlZCB0byBBL0IsCml0
J3MgYXQgb2Zmc2V0IDI0LiBTaW1pbGFybHkgVEMgcG9ydCAoNS82KSBjbGsgb2ZmIGJpdHMgYXJl
IGF0Cm9mZnNldCAyMi8yMy4gRXh0ZW5kIHRoZSBtYWNyb3MgdG8gY292ZXIgdGhlIGFkZGl0aW9u
YWwgcG9ydHMuCgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
aW5kZXggZGVmNzFmZDJlNGQxLi5kODczZDlmYmJmMGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aApAQCAtOTc0OSw4ICs5NzQ5LDkgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAKICNkZWZpbmUg
SUNMX0RQQ0xLQV9DRkdDUjAJCQlfTU1JTygweDE2NDI4MCkKICNkZWZpbmUgIElDTF9EUENMS0Ff
Q0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSkJKDEgPDwgX1BJQ0socGh5LCAxMCwgMTEsIDI0KSkKLSNk
ZWZpbmUgIElDTF9EUENMS0FfQ0ZHQ1IwX1RDX0NMS19PRkYodGNfcG9ydCkgKDEgPDwgKCh0Y19w
b3J0KSA9PSBQT1JUX1RDNCA/IFwKLQkJCQkJCSAgICAgIDIxIDogKHRjX3BvcnQpICsgMTIpKQor
I2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfVENfQ0xLX09GRih0Y19wb3J0KQkoMSA8PCAoKHRj
X3BvcnQpIDwgUE9SVF9UQzQgPyBcCisJCQkJCQkgICAgICAgKHRjX3BvcnQpICsgMTIgOiBcCisJ
CQkJCQkgICAgICAgKHRjX3BvcnQpIC0gUE9SVF9UQzQgKyAyMSkpCiAjZGVmaW5lICBJQ0xfRFBD
TEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9TSElGVChwaHkpCSgocGh5KSAqIDIpCiAjZGVmaW5lICBJ
Q0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9NQVNLKHBoeSkJKDMgPDwgSUNMX0RQQ0xLQV9D
RkdDUjBfRERJX0NMS19TRUxfU0hJRlQocGh5KSkKICNkZWZpbmUgIElDTF9EUENMS0FfQ0ZHQ1Iw
X0RESV9DTEtfU0VMKHBsbCwgcGh5KQkoKHBsbCkgPDwgSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NM
S19TRUxfU0hJRlQocGh5KSkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
