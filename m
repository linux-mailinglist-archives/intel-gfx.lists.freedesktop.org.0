Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7564C65886
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 16:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBBEB6E153;
	Thu, 11 Jul 2019 14:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F486E153;
 Thu, 11 Jul 2019 14:10:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17224918-1500050 
 for multiple; Thu, 11 Jul 2019 15:10:06 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 15:10:04 +0100
Message-Id: <20190711141004.8728-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] intel_l3_parity: Restore support for
 Ivybridge
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGUgZmFuY3kgc2Vjb25kIHNsaWNlIG9mIEhhc3dlbGwsIHdlIGxvc3Qgc3VwcG9ydCBm
b3IgSXZ5YnJpZGdlCndpdGggaXRzIHBhbHRyeSBzaW5nbGUgc2xpY2UuCgpGaXhlczogOGRkY2Zk
Njg4MmE5ICgiaW50ZWxfbDNfcGFyaXR5OiBzbGljZSBzdXBwb3J0IikKVGVzdGNhc2U6IGlndC90
b29sc190ZXN0L3N5c2ZzX2wzX3Bhcml0eQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0b29scy9pbnRlbF9sM19wYXJpdHkuYyB8IDkg
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
dG9vbHMvaW50ZWxfbDNfcGFyaXR5LmMgYi90b29scy9pbnRlbF9sM19wYXJpdHkuYwppbmRleCBk
OGM5OTdhZjkuLmRjM2QwODA0OCAxMDA2NDQKLS0tIGEvdG9vbHMvaW50ZWxfbDNfcGFyaXR5LmMK
KysrIGIvdG9vbHMvaW50ZWxfbDNfcGFyaXR5LmMKQEAgLTE5NSw2ICsxOTUsOSBAQCBpbnQgbWFp
bihpbnQgYXJnYywgY2hhciAqYXJndltdKQogCiAJZm9yX2VhY2hfc2xpY2UoaSkgewogCQlmZFtp
XSA9IG9wZW5hdChkaXIsIHBhdGhbaV0sIE9fUkRXUik7CisJCWlmIChmZFtpXSA8IDApCisJCQlj
b250aW51ZTsKKwogCQlpZiAocmVhZChmZFtpXSwgbDNsb2dzW2ldLCBOVU1fUkVHUyAqIHNpemVv
Zih1aW50MzJfdCkpIDwgMCkgewogCQkJcGVycm9yKHBhdGhbaV0pOwogCQkJZXhpdCg3Nyk7CkBA
IC0zMzMsNiArMzM2LDkgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKIAogCS8q
IFBlciBzbGljZSBvcGVyYXRpb25zICovCiAJZm9yX2VhY2hfc2xpY2UoaSkgeworCQlpZiAoZmRb
aV0gPCAwKQorCQkJY29udGludWU7CisKIAkJc3dpdGNoIChhY3Rpb24pIHsKIAkJCWNhc2UgJ2wn
OgogCQkJCWR1bXBpdChpKTsKQEAgLTM3NCw2ICszODAsOSBAQCBpbnQgbWFpbihpbnQgYXJnYywg
Y2hhciAqYXJndltdKQogCQlleGl0KEVYSVRfU1VDQ0VTUyk7CiAKIAlmb3JfZWFjaF9zbGljZShp
KSB7CisJCWlmIChmZFtpXSA8IDApCisJCQljb250aW51ZTsKKwogCQlyZXQgPSB3cml0ZShmZFtp
XSwgbDNsb2dzW2ldLCBOVU1fUkVHUyAqIHNpemVvZih1aW50MzJfdCkpOwogCQlpZiAocmV0ID09
IC0xKSB7CiAJCQlwZXJyb3IoIldyaXRpbmcgc3lzZnMiKTsKLS0gCjIuMjIuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
