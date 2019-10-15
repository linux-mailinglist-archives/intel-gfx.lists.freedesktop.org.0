Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89132D813E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4923C89CE1;
	Tue, 15 Oct 2019 20:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF3589950
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:44:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849357-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:42 +0100
Message-Id: <20191015204451.19372-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 03/12] drm/i915/tgl: Include ro parts of l3 to
 invalidate
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpBaW0g
Zm9yIGNvbXBsZXRlbmVzcyBhbmQgaW52YWxpZGF0ZSBhbHNvIHRoZSBybyBwYXJ0cwppbiBsMyBj
YWNoZS4gVGhpcyBtaWdodCBhbGxvdyB0byBnZXQgcmlkIG9mIHRoZSBwcmVwYXJzZXIKZGlzYWJs
ZS9lbmFibGUgd29ya2Fyb3VuZCBvbiBpbnZhbGlkYXRpb24gcGF0aC4KCkNjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MTAxNTE1NDQ0OS4xMDMzOC0yLW1pa2Eua3VvcHBh
bGFAbGludXguaW50ZWwuY29tCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1
X2NvbW1hbmRzLmggfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAg
ICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKaW5kZXggOGU2M2NmZmNhYmUw
Li5hZmM4NjlkYzc4NWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2dwdV9jb21tYW5kcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9j
b21tYW5kcy5oCkBAIC0yMzMsNiArMjMzLDcgQEAKICNkZWZpbmUgICBQSVBFX0NPTlRST0xfUkVO
REVSX1RBUkdFVF9DQUNIRV9GTFVTSAkoMTw8MTIpIC8qIGdlbjYrICovCiAjZGVmaW5lICAgUElQ
RV9DT05UUk9MX0lOU1RSVUNUSU9OX0NBQ0hFX0lOVkFMSURBVEUJKDE8PDExKSAvKiBNQlogb24g
SUxLICovCiAjZGVmaW5lICAgUElQRV9DT05UUk9MX1RFWFRVUkVfQ0FDSEVfSU5WQUxJREFURQkJ
KDE8PDEwKSAvKiBHTTQ1KyBvbmx5ICovCisjZGVmaW5lICAgUElQRV9DT05UUk9MX0wzX1JPX0NB
Q0hFX0lOVkFMSURBVEUJCVJFR19CSVQoMTApIC8qIGdlbjEyICovCiAjZGVmaW5lICAgUElQRV9D
T05UUk9MX0lORElSRUNUX1NUQVRFX0RJU0FCTEUJCSgxPDw5KQogI2RlZmluZSAgIFBJUEVfQ09O
VFJPTF9OT1RJRlkJCQkJKDE8PDgpCiAjZGVmaW5lICAgUElQRV9DT05UUk9MX0ZMVVNIX0VOQUJM
RQkJCSgxPDw3KSAvKiBnZW43KyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRl
eCAyMTYzNWRiOGQ3NmMuLjJmZTMzOTIyOGI4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKQEAgLTMyMzEsNiArMzIzMSw3IEBAIHN0YXRpYyBpbnQgZ2VuMTJfZW1pdF9mbHVzaF9y
ZW5kZXIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwKIAkJZmxhZ3MgfD0gUElQRV9DT05U
Uk9MX1ZGX0NBQ0hFX0lOVkFMSURBVEU7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9DT05TVF9D
QUNIRV9JTlZBTElEQVRFOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfU1RBVEVfQ0FDSEVfSU5W
QUxJREFURTsKKwkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX0wzX1JPX0NBQ0hFX0lOVkFMSURBVEU7
CiAKIAkJZmxhZ3MgfD0gUElQRV9DT05UUk9MX1NUT1JFX0RBVEFfSU5ERVg7CiAJCWZsYWdzIHw9
IFBJUEVfQ09OVFJPTF9RV19XUklURTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
