Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE7A8E383
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 06:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C84006E896;
	Thu, 15 Aug 2019 04:20:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1DF06E896
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 04:20:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18145847-1500050 
 for multiple; Thu, 15 Aug 2019 05:20:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Aug 2019 05:20:30 +0100
Message-Id: <20190815042031.27750-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Move tasklet kicking to
 __i915_request_queue caller
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

U2luY2UgX19pOTE1X3JlcXVlc3RfcXVldWUoKSBtYXkgYmUgY2FsbGVkIGZyb20gaGFyZGlycSAo
dGltZXIpIGNvbnRleHQsCndlIGNhbm5vdCB1c2UgbG9jYWxfYmhfZGlzYWJsZS9lbmFibGUgYXQg
dGhlIGxvd2VyIGxldmVsLiBBcyB3ZSBkbyB3YW50CnRvIGtpY2sgdGhlIHRhc2tsZXQgdG8gc3Bl
ZWQgdXAgaW5pdGlhbCBzdWJtaXNzaW9uIG9yIHByZWVtcHRpb24gZm9yCm5vcm1hbCBjbGllbnQg
c3VibWlzc2lvbiwgbGlmdCBpdCB0byB0aGUgbm9ybWFsIHByb2Nlc3MgY29udGV4dApjYWxscGF0
aC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgNCArKy0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmMKaW5kZXggNDAyMTMzNGRkMmM1Li44YTJiYzFkMzE3ZTQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCkBAIC0xMjAzLDEyICsxMjAzLDEwIEBAIHZvaWQg
X19pOTE1X3JlcXVlc3RfcXVldWUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAJICogZGVjaWRl
IHdoZXRoZXIgdG8gcHJlZW1wdCB0aGUgZW50aXJlIGNoYWluIHNvIHRoYXQgaXQgaXMgcmVhZHkg
dG8KIAkgKiBydW4gYXQgdGhlIGVhcmxpZXN0IHBvc3NpYmxlIGNvbnZlbmllbmNlLgogCSAqLwot
CWxvY2FsX2JoX2Rpc2FibGUoKTsKIAlpOTE1X3N3X2ZlbmNlX2NvbW1pdCgmcnEtPnNlbWFwaG9y
ZSk7CiAJaWYgKGF0dHIgJiYgcnEtPmVuZ2luZS0+c2NoZWR1bGUpCiAJCXJxLT5lbmdpbmUtPnNj
aGVkdWxlKHJxLCBhdHRyKTsKIAlpOTE1X3N3X2ZlbmNlX2NvbW1pdCgmcnEtPnN1Ym1pdCk7Ci0J
bG9jYWxfYmhfZW5hYmxlKCk7IC8qIEtpY2sgdGhlIGV4ZWNsaXN0cyB0YXNrbGV0IGlmIGp1c3Qg
c2NoZWR1bGVkICovCiB9CiAKIHZvaWQgaTkxNV9yZXF1ZXN0X2FkZChzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKQEAgLTEyNDcsNyArMTI0NSw5IEBAIHZvaWQgaTkxNV9yZXF1ZXN0X2FkZChzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAlpZiAobGlzdF9lbXB0eSgmcnEtPnNjaGVkLnNpZ25hbGVy
c19saXN0KSkKIAkJYXR0ci5wcmlvcml0eSB8PSBJOTE1X1BSSU9SSVRZX1dBSVQ7CiAKKwlsb2Nh
bF9iaF9kaXNhYmxlKCk7CiAJX19pOTE1X3JlcXVlc3RfcXVldWUocnEsICZhdHRyKTsKKwlsb2Nh
bF9iaF9lbmFibGUoKTsgLyogS2ljayB0aGUgZXhlY2xpc3RzIHRhc2tsZXQgaWYganVzdCBzY2hl
ZHVsZWQgKi8KIAogCS8qCiAJICogSW4gdHlwaWNhbCBzY2VuYXJpb3MsIHdlIGRvIG5vdCBleHBl
Y3QgdGhlIHByZXZpb3VzIHJlcXVlc3Qgb24KLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
