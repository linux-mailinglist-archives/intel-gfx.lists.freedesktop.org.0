Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C849E753
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 14:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDAB8898B7;
	Tue, 27 Aug 2019 12:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92EA2898B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 12:06:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18277119-1500050 
 for multiple; Tue, 27 Aug 2019 13:06:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Aug 2019 13:06:15 +0100
Message-Id: <20190827120615.31390-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Flush the post-sync
 breadcrumb write harder
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

UXVpdGUgcmFyZWx5IHdlIHNlZSB0aGF0IHRoZSBDUyBjb21wbGV0aW9uIGV2ZW50IGZpcmVzIGJl
Zm9yZSB0aGUKYnJlYWRjcnVtYiBpcyBjb2hlcmVudCwgd2hpY2ggcHJlc3VtYWJseSBpcyBhIHJl
c3VsdCBvZiB0aGUgQ1NfU1RBTEwgbm90CndhaXRpbmcgZm9yIHRoZSBwb3N0LXN5bmMgb3BlcmF0
aW9uLiBUcnkgZm9sbG93aW5nIGluIGEgRENfRkxVU0ggaW50bwp0aGUgZm9sbG93aW5nIHBpcGVj
b250cm9sIHRvIHNlZSBpZiB0aGF0IG1ha2VzIGFueSBkaWZmZXJlbmNlLgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3Bw
YWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCA4MGEzZjFkYmI0NTYuLjQ4MDQ2
ZDQ0NTczMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTI5NzEsNiArMjk3
MSw3IEBAIHN0YXRpYyB1MzIgKmdlbjhfZW1pdF9maW5pX2JyZWFkY3J1bWJfcmNzKHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJlcXVlc3QsIHUzMiAqY3MpCiAJLyogWFhYIGZsdXNoK3dyaXRlK0NTX1NU
QUxMIGFsbCBpbiBvbmUgdXBzZXRzIGdlbV9jb25jdXJyZW50X2JsdDprYmwgKi8KIAljcyA9IGdl
bjhfZW1pdF9waXBlX2NvbnRyb2woY3MsCiAJCQkJICAgIFBJUEVfQ09OVFJPTF9GTFVTSF9FTkFC
TEUgfAorCQkJCSAgICBQSVBFX0NPTlRST0xfRENfRkxVU0hfRU5BQkxFIHwKIAkJCQkgICAgUElQ
RV9DT05UUk9MX0NTX1NUQUxMLAogCQkJCSAgICAwKTsKIAotLSAKMi4yMy4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
