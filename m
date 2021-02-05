Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5911E3113CF
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 22:47:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B559D6F4EA;
	Fri,  5 Feb 2021 21:47:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F2D6F4EA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 21:47:18 +0000 (UTC)
IronPort-SDR: nDjy5HSWL9Q2o37Q/7uP3FitDfv1VC/U9V9oW/+rCYo3aQ45GlzvqWIwCdH+F2bTfSK4KfqLp2
 H1+l3SIGNZEA==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="178933145"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="178933145"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 13:47:17 -0800
IronPort-SDR: POGMad7SqtNm/MnMnR5jFCPudeoEU5LaGLLGvjUeWOatuws1JjZ/0905mA03r3f+gIZAzXACZG
 673u775CDfkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="360562275"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 05 Feb 2021 13:47:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 23:47:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 23:46:28 +0200
Message-Id: <20210205214634.19341-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
References: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 09/15] drm/i915: Sprinkle a few missing locks
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
aW5kZXggMGNiMjAxNjNmYjFmLi5iZDFlYWMyODIwMzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMTkyNyw4ICsxOTI3LDEyIEBAIHN0YXRpYyB2b2lkIGNu
bF9kZGlfZGlzYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwog
CWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKIAorCW11dGV4X2xvY2soJmk5MTUtPmRw
bGwubG9jayk7CisKIAlpbnRlbF9kZV9ybXcoaTkxNSwgRFBDTEtBX0NGR0NSMCwKIAkJICAgICAw
LCBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpKTsKKworCW11dGV4X3VubG9jaygmaTkx
NS0+ZHBsbC5sb2NrKTsKIH0KIAogc3RhdGljIHZvaWQgc2tsX2RkaV9lbmFibGVfY2xvY2soc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCkBAIC0xOTU3LDggKzE5NjEsMTIgQEAgc3RhdGlj
IHZvaWQgc2tsX2RkaV9kaXNhYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
KQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNl
LmRldik7CiAJZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0OwogCisJbXV0ZXhfbG9jaygm
aTkxNS0+ZHBsbC5sb2NrKTsKKwogCWludGVsX2RlX3JtdyhpOTE1LCBEUExMX0NUUkwyLAogCQkg
ICAgIDAsIERQTExfQ1RSTDJfRERJX0NMS19PRkYocG9ydCkpOworCisJbXV0ZXhfdW5sb2NrKCZp
OTE1LT5kcGxsLmxvY2spOwogfQogCiB2b2lkIGhzd19kZGlfZW5hYmxlX2Nsb2NrKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
