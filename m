Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DC51BD91F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:10:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 047276EA94;
	Wed, 29 Apr 2020 10:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F1B96EA94
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:10:44 +0000 (UTC)
IronPort-SDR: fE+toA7aL9S1NSIUEeoxyYkDavduq2ZPVPsz8RNEHeHkzifouhXfKQof/8ufIBHmJT2sGSCgca
 tMX3ncZVxU3g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:10:43 -0700
IronPort-SDR: CopZbLiwybhMx+AZQdQZiA/ljoEtco+yEzh/+Nkrm/FoTlU7TGMS/TRvpDofQnbsK+VQP8HDAZ
 ieGTi2ZQudJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="302958383"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 Apr 2020 03:10:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:10:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:24 +0300
Message-Id: <20200429101034.8208-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/12] drm/i915/fbc: Use the correct plane stride
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNv
bnN1bHQgdGhlIGFjdHVhbCBwbGFuZSBzdHJpZGUgaW5zdGVhZCBvZiB0aGUgZmIgc3RyaWRlLiBU
aGUgdHdvCndpbGwgZGlzYWdyZWUgd2hlbiB3ZSByZW1hcCB0aGUgZ3R0LiBUaGUgcGxhbmUgc3Ry
aWRlIGlzIHdoYXQgdGhlCmh3IHdpbGwgYmUgZmVkIHNvIHRoYXQncyB3aGF0IHdlIHNob3VsZCBs
b29rIGF0IGZvciB0aGUgRkJDCnJldHJpY3Rpb25zL2NmYiBhbGxvY2F0aW9uLgoKU2luY2Ugd2Ug
bm8gbG9uZ2VyIHJlcXVpcmUgYSBmZW5jZSB3ZSBhcmUgZ29pbmcgdG8gYXR0ZW1wdCB1c2luZwpG
QkMgd2l0aCByZW1hcHBpbmcsIGFuZCBzbyB3ZSBzaG91bGQgbG9vayBhdCBjb3JyZWN0IHN0cmlk
ZS4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KRml4
ZXM6IDY5MWY3YmE1OGQ1MiAoImRybS9pOTE1L2Rpc3BsYXkvZmJjOiBNYWtlIGZlbmNlcyBhIG5p
Y2UtdG8taGF2ZSBmb3IgR0VOOSsiKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpp
bmRleCA3MTk0ZjliYzYyYzUuLjE5MmM1ZmYxNDJlZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jCkBAIC03MDcsOCArNzA3LDggQEAgc3RhdGljIHZvaWQgaW50ZWxf
ZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAljYWNoZS0+
cGxhbmUucGl4ZWxfYmxlbmRfbW9kZSA9IHBsYW5lX3N0YXRlLT5ody5waXhlbF9ibGVuZF9tb2Rl
OwogCiAJY2FjaGUtPmZiLmZvcm1hdCA9IGZiLT5mb3JtYXQ7Ci0JY2FjaGUtPmZiLnN0cmlkZSA9
IGZiLT5waXRjaGVzWzBdOwogCWNhY2hlLT5mYi5tb2RpZmllciA9IGZiLT5tb2RpZmllcjsKKwlj
YWNoZS0+ZmIuc3RyaWRlID0gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lWzBdLnN0cmlkZTsKIAog
CWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBwbGFuZV9zdGF0ZS0+ZmxhZ3MgJiBQTEFORV9I
QVNfRkVOQ0UgJiYKIAkJICAgICFwbGFuZV9zdGF0ZS0+dm1hLT5mZW5jZSk7Ci0tIAoyLjI0LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
