Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 747F5F0B4F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 01:54:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48A156E0E2;
	Wed,  6 Nov 2019 00:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39DB56E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 00:54:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 16:54:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="285501581"
Received: from jausmus-gentoo-dev6.jf.intel.com (HELO jausmus-gentoo-dev6)
 ([10.54.75.43])
 by orsmga001.jf.intel.com with SMTP; 05 Nov 2019 16:54:15 -0800
Received: by jausmus-gentoo-dev6 (sSMTP sendmail emulation);
 Tue, 05 Nov 2019 16:55:38 -0800
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Nov 2019 16:55:26 -0800
Message-Id: <20191106005526.1500-1-james.ausmus@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add second TGL PCH ID
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW5vdGhlciBUR1AgSUQgaGFzIHNob3duIHVwLCBzbyBsZXQncyBhZGQgaXQgdG8gYXZvaWQgU291
dGggRGlzcGxheQpicmVha2FnZSBvbiBzeXN0ZW1zIHRoYXQgaGF2ZSB0aGlzIElELgoKQ2M6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbWVzIEF1
c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wY2guYyB8IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmggfCAxICsK
IDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2gu
YwppbmRleCAwMDBiYTQzZTJjMDIuLmZkMjIzNTViOWE5NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cGNoLmMKQEAgLTg1LDYgKzg1LDcgQEAgaW50ZWxfcGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LCB1bnNpZ25lZCBzaG9ydCBpZCkKIAkJV0FSTl9PTighSVNf
RUxLSEFSVExBS0UoZGV2X3ByaXYpKTsKIAkJcmV0dXJuIFBDSF9NQ0M7CiAJY2FzZSBJTlRFTF9Q
Q0hfVEdQX0RFVklDRV9JRF9UWVBFOgorCWNhc2UgSU5URUxfUENIX1RHUDJfREVWSUNFX0lEX1RZ
UEU6CiAJCURSTV9ERUJVR19LTVMoIkZvdW5kIFRpZ2VyIExha2UgTFAgUENIXG4iKTsKIAkJV0FS
Tl9PTighSVNfVElHRVJMQUtFKGRldl9wcml2KSk7CiAJCXJldHVybiBQQ0hfVEdQOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wY2guaAppbmRleCAxMTE1YzZhMDUyMmMuLjUyZDE0NWRjZGIxNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcGNoLmgKQEAgLTQ3LDYgKzQ3LDcgQEAgZW51bSBpbnRlbF9wY2ggewog
I2RlZmluZSBJTlRFTF9QQ0hfSUNQX0RFVklDRV9JRF9UWVBFCQkweDM0ODAKICNkZWZpbmUgSU5U
RUxfUENIX01DQ19ERVZJQ0VfSURfVFlQRQkJMHg0QjAwCiAjZGVmaW5lIElOVEVMX1BDSF9UR1Bf
REVWSUNFX0lEX1RZUEUJCTB4QTA4MAorI2RlZmluZSBJTlRFTF9QQ0hfVEdQMl9ERVZJQ0VfSURf
VFlQRQkJMHg0MzgwCiAjZGVmaW5lIElOVEVMX1BDSF9KU1BfREVWSUNFX0lEX1RZUEUJCTB4NEQ4
MAogI2RlZmluZSBJTlRFTF9QQ0hfSlNQMl9ERVZJQ0VfSURfVFlQRQkJMHgzODgwCiAjZGVmaW5l
IElOVEVMX1BDSF9QMlhfREVWSUNFX0lEX1RZUEUJCTB4NzEwMAotLSAKMi4yMy4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
