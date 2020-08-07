Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A4A23F307
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 21:24:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7FA26E1BC;
	Fri,  7 Aug 2020 19:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C3C56E1BC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 19:24:13 +0000 (UTC)
IronPort-SDR: l8PdBKjBPGj397sot4v5xtuUwylaXVyomiF1ZXXL6LX0GF3o9x+f0blrhk21u3XDe6G6hiV61z
 HGIhN7Wh27ag==
X-IronPort-AV: E=McAfee;i="6000,8403,9706"; a="153148860"
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="153148860"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 12:24:12 -0700
IronPort-SDR: gHwVFAb3sLXbLGPBsmYkZL2pQ0myuJRisqZG4wAA7/klDroqfiV2UqkibpGsH+WxK/1DRTlpLP
 m0pn9N2rSiXg==
X-IronPort-AV: E=Sophos;i="5.75,446,1589266800"; d="scan'208";a="494139298"
Received: from msundar1-mobl4.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.136.42])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 12:24:12 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Aug 2020 12:26:29 -0700
Message-Id: <20200807192629.64134-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200807192629.64134-1-jose.souza@intel.com>
References: <20200807192629.64134-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 2/2] drm/i915/tgl: Add new voltage swing table
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBuZXcgSEJSMiB0YWJsZSBmb3IgVEdMLVUgYW5kIFRHTC1ZIGlzIHJlcXVpcmVkIHRvIHBh
c3MKRGlzcGxheVBvcnQgY29tcGxpYW5jZS4KCkJTcGVjOiA0OTI5MQpDYzogS2hhbGVkIEFsbWFo
YWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogS2hhbGVk
IEFsbWFoYWxsYXd5PGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxOSArKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDcxNGIyYmM5NmYyMy4uZGU1YjIxNjU2MWQ4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTcwNiw2ICs3MDYs
MjAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyB0Z2xfY29tYm9fcGh5
X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMltdID0KIAl7IDB4NiwgMHg3RiwgMHgzRiwgMHgwMCwg
MHgwMCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLwogfTsKIAorc3RhdGljIGNvbnN0IHN0
cnVjdCBjbmxfZGRpX2J1Zl90cmFucyB0Z2xfdXlfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNf
ZHBfaGJyMltdID0geworCQkJCQkJLyogTlQgbVYgVHJhbnMgbVYgZGIgICAgKi8KKwl7IDB4QSwg
MHgzNSwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAgICAqLworCXsg
MHhBLCAweDRGLCAweDM2LCAweDAwLCAweDA5IH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICov
CisJeyAweEMsIDB4NjAsIDB4MzIsIDB4MDAsIDB4MEQgfSwJLyogMzUwICAgNzAwICAgICAgNi4w
ICAgKi8KKwl7IDB4QywgMHg3RiwgMHgyRCwgMHgwMCwgMHgxMiB9LAkvKiAzNTAgICA5MDAgICAg
ICA4LjIgICAqLworCXsgMHhDLCAweDQ3LCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDUwMCAgIDUw
MCAgICAgIDAuMCAgICovCisJeyAweEMsIDB4NkYsIDB4MzYsIDB4MDAsIDB4MDkgfSwJLyogNTAw
ICAgNzAwICAgICAgMi45ICAgKi8KKwl7IDB4NiwgMHg3RCwgMHgzMiwgMHgwMCwgMHgwRCB9LAkv
KiA1MDAgICA5MDAgICAgICA1LjEgICAqLworCXsgMHg2LCAweDYwLCAweDNDLCAweDAwLCAweDAz
IH0sCS8qIDY1MCAgIDcwMCAgICAgIDAuNiAgICovCisJeyAweDYsIDB4N0YsIDB4MzQsIDB4MDAs
IDB4MEIgfSwJLyogNjAwICAgOTAwICAgICAgMy41ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgzRiwg
MHgwMCwgMHgwMCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLworfTsKKwogLyoKICAqIENs
b25lZCB0aGUgSE9CTCBlbnRyeSB0byBjb21wbHkgd2l0aCB0aGUgdm9sdGFnZSBhbmQgcHJlLWVt
cGhhc2lzIGVudHJpZXMKICAqIHRoYXQgRGlzcGxheVBvcnQgc3BlY2lmaWNhdGlvbiByZXF1aXJl
cwpAQCAtMTA4Nyw2ICsxMTAxLDExIEBAIHRnbF9nZXRfY29tYm9fYnVmX3RyYW5zKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgdHlwZSwgaW50IHJhdGUsCiAJaWYgKHR5cGUgPT0g
SU5URUxfT1VUUFVUX0hETUkgfHwgdHlwZSA9PSBJTlRFTF9PVVRQVVRfRURQKSB7CiAJCXJldHVy
biBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhlbmNvZGVyLCB0eXBlLCByYXRlLCBuX2VudHJpZXMp
OwogCX0gZWxzZSBpZiAocmF0ZSA+IDI3MDAwMCkgeworCQlpZiAoSVNfVEdMX1UoZGV2X3ByaXYp
IHx8IElTX1RHTF9ZKGRldl9wcml2KSkgeworCQkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUodGds
X3V5X2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicjIpOworCQkJcmV0dXJuIHRnbF91
eV9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyOworCQl9CisKIAkJKm5fZW50cmll
cyA9IEFSUkFZX1NJWkUodGdsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicjIpOwog
CQlyZXR1cm4gdGdsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicjI7CiAJfQotLSAK
Mi4yOC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
