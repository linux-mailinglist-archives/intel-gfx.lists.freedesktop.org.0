Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D91289FFA2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 12:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F024899D6;
	Wed, 28 Aug 2019 10:21:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D41899D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 10:21:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 03:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,440,1559545200"; d="scan'208";a="180524849"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 28 Aug 2019 03:21:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Aug 2019 13:20:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2019 13:20:59 +0300
Message-Id: <20190828102059.2512-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Limit MST to <= 8bpc once again
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
Cc: Geoffrey Bennett <gmux22@gmail.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk15
IGF0dGVtcHQgYXQgYWxsb3dpbmcgTVNUIHRvIHVzZSB0aGUgaGlnaGVyIGNvbG9yIGRlcHRocyBo
YXMKcmVncmVzc2VkIHNvbWUgY29uZmlndXJhdGlvbnMuIEFwcGFyZW50bHkgcGVvcGxlIGhhdmUg
c2V0dXBzCndoZXJlIGFsbCBNU1Qgc3RyZWFtcyB3aWxsIGZpdCBpbnRvIHRoZSBEUCBsaW5rIHdp
dGggOGJwYyBidXQKd29uJ3QgZml0IHdpdGggaGlnaGVyIGNvbG9yIGRlcHRocy4KCldoYXQgd2Ug
cmVhbGx5IHNob3VsZCBiZSBkb2luZyBpcyByZWR1Y2luZyB0aGUgYnBjIGZvciBhbGwgdGhlCnN0
cmVhbXMgb24gdGhlIHNhbWUgbGluayB1bnRpbCB0aGV5IHN0YXJ0IHRvIGZpdC4gQnV0IHRoYXQg
cmVxdWlyZXMKYSBiaXQgbW9yZSB3b3JrLCBzbyBpbiB0aGUgbWVhbnRpbWUgbGV0J3MgcmV2ZXJ0
IGJhY2sgY2xvc2VyIHRvCnRoZSBvbGQgYmVoYXZpb3IgYW5kIGxpbWl0IE1TVCB0byBhdCBtb3N0
IDhicGMuCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpDYzogTHl1ZGUgUGF1bCA8bHl1ZGVA
cmVkaGF0LmNvbT4KQ2M6IEdlb2ZmcmV5IEJlbm5ldHQgPGdtdXgyMkBnbWFpbC5jb20+CkZpeGVz
OiBmMTQ3NzIxOTg2OWMgKCJkcm0vaTkxNTogUmVtb3ZlIHRoZSA4YnBjIHNoYWNrbGVzIGZyb20g
RFAgTVNUIikKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMTUwNQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMgfCAxMCArKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMKaW5kZXggMmM1YWMzZGQ2NDdmLi42ZGYyNDBhMDFiOGMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwpAQCAtMTI4LDcgKzEyOCwxNSBAQCBz
dGF0aWMgaW50IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKIAlsaW1pdHMubWF4X2xhbmVfY291bnQgPSBpbnRlbF9kcF9tYXhfbGFuZV9j
b3VudChpbnRlbF9kcCk7CiAKIAlsaW1pdHMubWluX2JwcCA9IGludGVsX2RwX21pbl9icHAocGlw
ZV9jb25maWcpOwotCWxpbWl0cy5tYXhfYnBwID0gcGlwZV9jb25maWctPnBpcGVfYnBwOworCS8q
CisJICogRklYTUU6IElmIGFsbCB0aGUgc3RyZWFtcyBjYW4ndCBmaXQgaW50byB0aGUgbGluayB3
aXRoCisJICogdGhlaXIgY3VycmVudCBwaXBlX2JwcCB3ZSBzaG91bGQgcmVkdWNlIHBpcGVfYnBw
IGFjcm9zcworCSAqIHRoZSBib2FyZCB1bnRpbCB0aGluZ3Mgc3RhcnQgdG8gZml0LiBVbnRpbCB0
aGVuIHdlCisJICogbGltaXQgdG8gPD0gOGJwYyBzaW5jZSB0aGF0J3Mgd2hhdCB3YXMgaGFyZGNv
ZGVkIGZvciBhbGwKKwkgKiBNU1Qgc3RyZWFtcyBwcmV2aW91c2x5LiBUaGlzIGhhY2sgc2hvdWxk
IGJlIHJlbW92ZWQgb25jZQorCSAqIHdlIGhhdmUgdGhlIHByb3BlciByZXRyeSBsb2dpYyBpbiBw
bGFjZS4KKwkgKi8KKwlsaW1pdHMubWF4X2JwcCA9IG1pbihwaXBlX2NvbmZpZy0+cGlwZV9icHAs
IDI0KTsKIAogCWludGVsX2RwX2FkanVzdF9jb21wbGlhbmNlX2NvbmZpZyhpbnRlbF9kcCwgcGlw
ZV9jb25maWcsICZsaW1pdHMpOwogCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
