Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F192117891
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 22:39:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884A26E529;
	Mon,  9 Dec 2019 21:39:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A8166E529
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 21:39:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 13:39:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="207042512"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 09 Dec 2019 13:39:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Dec 2019 23:39:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 23:39:09 +0200
Message-Id: <20191209213909.5402-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Implement pps w/a #1124 for bxt+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBwYW5lbCBwb3dlciBzZXF1ZW5jZXIgY2FuIGdldCBjb25mdXNlZCBpZiB3ZSBmb2xsb3cgYQpQ
UF9PTl9ERUxBWVMgd3JpdGUgd2l0aCBhIFBQX0NPTlRST0wgcG93ZXIgc3RhdGUgdGFyZ2V0IHdy
aXRlLgpBcHBhcmVudGx5IGl0IGNhbiBsYXRjaCB0aGUgb2xkIFBQX09OX0RFTEFZUyB2YWx1ZSBp
bnN0ZWFkIG9mCnRoZSBuZXcgb25lLiBJbnN0ZWFkIG9mIG11Y2tpbmcgYWJvdXQgd2l0aCBjbG9j
ayBnYXRpbmcgZGlzYWJsZXMKdW50aWwgd2UgZW5hYmxlIHRoZSBwb3dlciBzZXF1ZW5jZXIgbGV0
J3MganVzdCBkbyB0aGUgdHJpdmlhbAoxMDB1cysgZGVsYXkuCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDExICsrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwppbmRleCAwZjQ5NjExNWMzNDUuLjljYjJlYzkxMDM5ZiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNjg3Niw2ICs2ODc2LDE3IEBAIGludGVsX2Rw
X2luaXRfcGFuZWxfcG93ZXJfc2VxdWVuY2VyX3JlZ2lzdGVycyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAogCX0gZWxzZSB7CiAJCXUzMiBwcF9jdGw7CiAKKwkJLyoKKwkJICogRGlzcGxheSBX
QSAjMTEyNDogYnh0LGdsayxjbmwKKwkJICogIldBOiBXYWl0IGF0IGxlYXN0IDEwMHVzIGJldHdl
ZW4gcHJvZ3JhbW1pbmcKKwkJICogIFBQX09OX0RFTEFZUyBhbmQgZW5hYmxpbmcgUG93ZXIgU3Rh
dGUgVGFyZ2V0IGluCisJCSAqICBQUF9DT05UUk9MLCBvciBkaXNhYmxlIGRwbHMgY2xvY2sgZ2F0
aW5nIGJlZm9yZQorCQkgKiAgcHJvZ3JhbW1pbmcgUFBfT05fREVMQVlTIGFuZCBsZWF2ZSBkaXNh
YmxlZCB1bnRpbAorCQkgKiAgYWZ0ZXIgZW5hYmxpbmcgUG93ZXIgU3RhdGUgVGFyZ2V0IGluIFBQ
X0NPTlRST0wuIgorCQkgKi8KKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkKKwkJCXVz
bGVlcF9yYW5nZSgxMDAsIDIwMCk7CisKIAkJcHBfY3RsID0gSTkxNV9SRUFEKHJlZ3MucHBfY3Ry
bCk7CiAJCXBwX2N0bCAmPSB+QlhUX1BPV0VSX0NZQ0xFX0RFTEFZX01BU0s7CiAJCXBwX2N0bCB8
PSBSRUdfRklFTERfUFJFUChCWFRfUE9XRVJfQ1lDTEVfREVMQVlfTUFTSywgRElWX1JPVU5EX1VQ
KHNlcS0+dDExX3QxMiwgMTAwMCkpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
