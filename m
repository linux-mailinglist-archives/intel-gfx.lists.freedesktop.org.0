Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA73B0FB3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 15:18:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1936ED42;
	Thu, 12 Sep 2019 13:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F26336ED40
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 13:18:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18464563-1500050 
 for multiple; Thu, 12 Sep 2019 14:18:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 14:18:00 +0100
Message-Id: <20190912131800.12420-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Disable preemption while being
 debugged
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

V2Ugc2VlIGZhaWx1cmVzIHdoZXJlIHRoZSBjb250ZXh0IGNvbnRpbnVlcyBleGVjdXRpbmcgcGFz
dCBhCnByZWVtcHRpb24gZXZlbnQsIGV2ZW50dWFsbHkgbGVhZGluZyB0byBzaXR1YXRpb25zIHdo
ZXJlIGEgcmVxdWVzdCBoYXMKZXhlY3V0ZWQgYmVmb3JlIHdlIGhhdmUgZXZlbnQgc3VibWl0dGVk
IGl0IHRvIEhXISBJdCBzZWVtcyBsaWtlIHRnbCBpcwppZ25vcmluZyBvdXIgUklOR19UQUlMIHVw
ZGF0ZXMsIGJ1dCBtb3JlIGxpa2VseSBpcyB0aGF0IHRoZXJlIGlzIGEKbWlzc2luZyB1cGRhdGUg
cmVxdWlyZWQgZm9yIG91ciBzZW1hcGhvcmUgd2FpdHMgYXJvdW5kIHByZWVtcHRpb24uCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1p
a2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IGIzY2M4NTYwNjk2Yi4uMmNhMzRhNWNm
N2QzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTc5OCw2ICs3OTgsNyBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX3RpZ2VybGFrZV8xMl9pbmZvID0g
ewogCS5lbmdpbmVfbWFzayA9CiAJCUJJVChSQ1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWRUNTMCkg
fCBCSVQoVkNTMCkgfCBCSVQoVkNTMiksCiAJLmhhc19yYzYgPSBmYWxzZSwgLyogWFhYIGRpc2Fi
bGVkIGZvciBkZWJ1Z2dpbmcgKi8KKwkuaGFzX2xvZ2ljYWxfcmluZ19wcmVlbXB0aW9uID0gZmFs
c2UsIC8qIFhYWCBkaXNhYmxlZCBmb3IgZGVidWdnaW5nICovCiB9OwogCiAjdW5kZWYgR0VOCi0t
IAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
