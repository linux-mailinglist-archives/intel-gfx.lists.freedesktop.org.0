Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A79D630FAD8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 19:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E70B16EE1E;
	Thu,  4 Feb 2021 18:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D9C6EE1A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 18:11:17 +0000 (UTC)
IronPort-SDR: MB61ivwBO71PiNVjBGG44kq5rg/ngYr7wj5q3bYqqiDafMHSy+CvMJae68PQWcrPOhnTh+oocN
 zi6vpagvcbBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181447737"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="181447737"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 10:11:17 -0800
IronPort-SDR: Poo81VkeHseUJgbsTNsxKNaJLpy++SENUgi1vUZVF8gdADC+ZFCXxsZ0ThoBagfWA4NmWoghsM
 VL1zq6HqSl7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="373077798"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 04 Feb 2021 10:11:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 20:11:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 20:10:42 +0200
Message-Id: <20210204181048.24202-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
References: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/14] drm/i915: Sprinkle a few missing locks
 around shared DDI clock registers
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjdXJyZW50IGNvZGUgYXR0ZW1wdHMgdG8gcHJvdGVjdCB0aGUgUk1XcyBpbnRvIGdsb2JhbApj
bG9jayByb3V0aW5nIHJlZ2lzdGVycyB3aXRoIGEgbXV0ZXgsIGJ1dCBmb3JnZXRzIHRvIGRvIHNv
CmluIGEgZmV3IHBsYWNlcy4gTGV0J3MgcmVtZWR5IHRoYXQuCgpOb3RlIHRoYXQgYXQgdGhlIG1v
bWVudCB3ZSBzZXJpYWxpemUgYWxsIG1vZGVzZXRzIG9udG8gc2luZ2xlCndxLCBzbyB0aGlzIHNo
b3VsZG4ndCBhY3R1YWxseSBtYXR0ZXIuIEJ1dCBtYXliZSBvbmUgZGF5IHdlCndpc2ggdG8gYXR0
ZW1wdCBwYXJhbGxlbCBtb2Rlc2V0cyBhZ2Fpbi4uLgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
OCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
aW5kZXggNzZhYTdkMmRiYTUyLi4wYjJhMWUwYzFiOGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzQ1Nyw4ICszNDU3LDEyIEBAIHN0YXRpYyB2b2lkIGNu
bF9kZGlfZGlzYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwog
CWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKIAorCW11dGV4X2xvY2soJmk5MTUtPmRw
bGwubG9jayk7CisKIAlpbnRlbF9kZV9ybXcoaTkxNSwgRFBDTEtBX0NGR0NSMCwKIAkJICAgICAw
LCBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpKTsKKworCW11dGV4X3VubG9jaygmaTkx
NS0+ZHBsbC5sb2NrKTsKIH0KIAogc3RhdGljIHZvaWQgc2tsX2RkaV9lbmFibGVfY2xvY2soc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCkBAIC0zNDg3LDggKzM0OTEsMTIgQEAgc3RhdGlj
IHZvaWQgc2tsX2RkaV9kaXNhYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
KQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNl
LmRldik7CiAJZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0OwogCisJbXV0ZXhfbG9jaygm
aTkxNS0+ZHBsbC5sb2NrKTsKKwogCWludGVsX2RlX3JtdyhpOTE1LCBEUExMX0NUUkwyLAogCQkg
ICAgIDAsIERQTExfQ1RSTDJfRERJX0NMS19PRkYocG9ydCkpOworCisJbXV0ZXhfdW5sb2NrKCZp
OTE1LT5kcGxsLmxvY2spOwogfQogCiBzdGF0aWMgdm9pZCBoc3dfZGRpX2VuYWJsZV9jbG9jayhz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
