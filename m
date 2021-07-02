Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A16E3BA4CE
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 22:46:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9266E20F;
	Fri,  2 Jul 2021 20:46:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 349436E20F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 20:46:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10033"; a="208604703"
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="208604703"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2021 13:46:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,320,1616482800"; d="scan'208";a="490346471"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 02 Jul 2021 13:46:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Jul 2021 23:46:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jul 2021 23:46:03 +0300
Message-Id: <20210702204603.596-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210702204603.596-1-ville.syrjala@linux.intel.com>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/fbc: Allow higher compression
 limits on FBC1
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk9u
IEZCQzEgd2UgY2FuIHNwZWNpZnkgYW4gYXJiaXRyYXJ5IGNmYiBzdHJpZGUuIFRoZSBodyB3aWxs
CnNpbXBseSB0aHJvdyBhd2F5IGFueSBjb21wcmVzc2VkIGxpbmUgdGhhdCB3b3VsZCBleGNlZWQg
dGhlCnNwZWNpZmllZCBsaW1pdCBhbmQga2VlcCB1c2luZyB0aGUgdW5jb21wcmVzc2VkIGRhdGEg
aW5zdGVhZC4KVGh1cyB3ZSBjYW4gYWxsb3cgYXJiaXRyYXJ5IGNvbXByZXNzaW9uIGxpbWl0cy4K
ClRoZSBvbmUgdGhpbmcgd2UgaGF2ZSB0byBrZWVwIGluIG1pbmQgdGhvdWdoIGlzIHRoYXQgdGhl
IGNmYgpzdHJpZGUgaXMgc3BlY2lmaWVkIGluIHVuaXRzIG9mIDMyQiAoZ2VuMikgb3IgNjRCIChn
ZW4zKykuCkZvcnR1bmF0ZWx5IFgtdGlsZSBpcyBhbHJlYWR5IDEyOEIgKGdlbjIpIG9yIDUxMkIg
KGdlbjMrKSB3aWRlCnNvIGFzIGxvbmcgYXMgd2UgbGltaXQgb3V0c2VsdmVzIHRvIHRoZSBzYW1l
IDR4IGNvbXByZXNzaW9uCmxpbWl0IHRoYXQgRkJDMiBoYXMgd2UgYXJlIGd1YXJhbnRlZWQgdG8g
aGF2ZSBhIHN1ZmZpY2llbnRseQphbGlnbmVkIGNmYiBzdHJpZGUuCgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAyMCArKysrKysrLS0tLS0tLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggZGFmMjE5MWRkM2Y2
Li5kNDZlZTdiNDlkNjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
YwpAQCAtMTQ0LDE1ICsxNDQsMTMgQEAgc3RhdGljIHZvaWQgaTh4eF9mYmNfZGVhY3RpdmF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIHN0YXRpYyB2b2lkIGk4eHhfZmJj
X2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQlzdHJ1Y3Qg
aW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZkZXZfcHJpdi0+ZmJjLnBhcmFtczsKKwlz
dHJ1Y3QgaW50ZWxfZmJjICpmYmMgPSAmZGV2X3ByaXYtPmZiYzsKKwljb25zdCBzdHJ1Y3QgaW50
ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZmYmMtPnBhcmFtczsKIAlpbnQgY2ZiX3BpdGNo
OwogCWludCBpOwogCXUzMiBmYmNfY3RsOwogCi0JLyogTm90ZTogZmJjLmxpbWl0ID09IDEgZm9y
IGk4eHggKi8KLQljZmJfcGl0Y2ggPSBwYXJhbXMtPmNmYl9zaXplIC8gRkJDX0xMX1NJWkU7Ci0J
aWYgKHBhcmFtcy0+ZmIuc3RyaWRlIDwgY2ZiX3BpdGNoKQotCQljZmJfcGl0Y2ggPSBwYXJhbXMt
PmZiLnN0cmlkZTsKKwljZmJfcGl0Y2ggPSBwYXJhbXMtPmNmYl9zdHJpZGUgLyBmYmMtPmxpbWl0
OwogCiAJLyogRkJDX0NUTCB3YW50cyAzMkIgb3IgNjRCIHVuaXRzICovCiAJaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA9PSAyKQpAQCAtNDk4LDE4ICs0OTYsMTQgQEAgc3RhdGljIGludCBpbnRl
bF9mYmNfbWluX2xpbWl0KGludCBmYl9jcHApCiAKIHN0YXRpYyBpbnQgaW50ZWxfZmJjX21heF9s
aW1pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7Ci0JLyoKLQkgKiBGSVhN
RTogRkJDMSBjYW4gaGF2ZSBhcmJpdHJhcnkgY2ZiIHN0cmlkZSwKLQkgKiBzbyB3ZSBjb3VsZCBz
dXBwb3J0IGRpZmZlcmVudCBjb21wcmVzc2lvbiByYXRpb3MuCi0JICovCi0JaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA8IDUgJiYgIUlTX0c0WChkZXZfcHJpdikpCi0JCXJldHVybiAxOwotCiAJ
LyogV2FGYmNPbmx5MXRvMVJhdGlvOmN0ZyAqLwogCWlmIChJU19HNFgoZGV2X3ByaXYpKQogCQly
ZXR1cm4gMTsKIAotCS8qIEZCQzIgY2FuIG9ubHkgZG8gMToxLCAxOjIsIDE6NCAqLworCS8qCisJ
ICogRkJDMiBjYW4gb25seSBkbyAxOjEsIDE6MiwgMTo0LCB3ZSBsaW1pdAorCSAqIEZCQzEgdG8g
dGhlIHNhbWUgb3V0IG9mIGNvbnZlbmllbmNlLgorCSAqLwogCXJldHVybiA0OwogfQogCi0tIAoy
LjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
