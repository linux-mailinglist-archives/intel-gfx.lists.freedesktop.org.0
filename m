Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9CF9D0BF
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 15:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84DCA89F41;
	Mon, 26 Aug 2019 13:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC28089F41
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 13:38:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18266641-1500050 
 for multiple; Mon, 26 Aug 2019 14:38:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 14:38:37 +0100
Message-Id: <20190826133837.6784-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Ignore coherency failures
 on Broadwater
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

V2UndmUgYmVlbiBpZ25vcmluZyBzaW1pbGFyIGNvaGVyZW5jeSBpc3N1ZXMgaW4gSUdUIGZvciBC
cm9hZHdhdGVyLCBhbmQKc3BlY2lmaWNhbGx5IEJyb2Fkd2F0ZXIgKG9yaWdpbmFsIGdlbjQpIGFu
ZCBub3QsIGZvciBleGFtcGxlLCBDcmVzdGxpbmUKKHNhbWUgZ2VuZXJhdGlvbiBhcyBCcm9hZHdh
dGVyLCBidXQgdGhlIG1vYmlsZSB2YXJpYW50KS4gV2l0aG91dCBhbnkKbWVhbnMgdG8gcmVwcm9k
dWNlIGxvY2FsbHksIGZpeGluZyB3aWxsIGJlIHNsb3csIHNvIHRlbGwgQ0kgdG8gaWdub3JlCmFu
eSBmYWlsdXJlIHVudGlsIHdlIGFyZSByZWFkeSB3aXRoIGEgZml4LgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKb29uYXMgTGFodGlu
ZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRl
eCAxNzAwNmQ1MGI2M2YuLmE4MDE0YzU5YjM4OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMKQEAgLTExMTksNiArMTExOSw4IEBAIGJvb2wgaW50ZWxfZW5naW5l
X2Nhbl9zdG9yZV9kd29yZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJY2FzZSAz
OgogCQkvKiBtYXliZSBvbmx5IHVzZXMgcGh5c2ljYWwgbm90IHZpcnR1YWwgYWRkcmVzc2VzICov
CiAJCXJldHVybiAhKElTX0k5MTVHKGVuZ2luZS0+aTkxNSkgfHwgSVNfSTkxNUdNKGVuZ2luZS0+
aTkxNSkpOworCWNhc2UgNDoKKwkJcmV0dXJuICFJU19JOTY1RyhlbmdpbmUtPmk5MTUpOyAvKiB3
aG8ga25vd3MhICovCiAJY2FzZSA2OgogCQlyZXR1cm4gZW5naW5lLT5jbGFzcyAhPSBWSURFT19E
RUNPREVfQ0xBU1M7IC8qIGIwcmtlZCAqLwogCWRlZmF1bHQ6Ci0tIAoyLjIzLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
