Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3131CE02C0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 13:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4BB46E5DC;
	Tue, 22 Oct 2019 11:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952086E5DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 11:21:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18924081-1500050 
 for multiple; Tue, 22 Oct 2019 12:21:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 12:21:11 +0100
Message-Id: <20191022112111.9317-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Synchronize checking active
 status with retirement
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

SWYgcmV0aXJlbWVudCBpcyBydW5uaW5nIG9uIGFub3RoZXIgdGhyZWFkLCB3ZSBtYXkgaW5zcGVj
dCB0aGUgc3RhdHVzIG9mCnRoZSBpOTE1X2FjdGl2ZSBiZWZvcmUgaXRzIHJldGlyZW1lbnQgY2Fs
bGJhY2sgaXMgY29tcGxldGUuIEFzIHdlIGV4cGVjdAppdCB0byBiZSBydW5uaW5nIHN5bmNocm9u
b3VzbHksIHdlIGNhbiB3YWl0IGZvciBhbnkgY2FsbGJhY2sgdG8gY29tcGxldGUKYnkgYWNxdWly
aW5nIHRoZSBpOTE1X2FjdGl2ZS5tdXRleC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KTWF5YmU/IEl0IHJlYWxseSBzaG91bGRuJ3Qg
bWFrZSBhIGRpZmZlcmVuY2UsIHRoZSBjYXNlIHdoZXJlIGl0IHdvdWxkCnNob3VsZCBub3QgYXBw
bHksIHN1cmVseS4uLgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2lu
ZV9oZWFydGJlYXQuYyB8IDEzICsrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
ZW5naW5lX2hlYXJ0YmVhdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5n
aW5lX2hlYXJ0YmVhdC5jCmluZGV4IDFmNWFiNTlhZDZlNy4uNWFmMjdjMzdiNjViIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5j
CkBAIC00OSwxMiArNDksMjAgQEAgc3RhdGljIHN0cnVjdCBwdWxzZSAqcHVsc2VfY3JlYXRlKHZv
aWQpCiAJcmV0dXJuIHA7CiB9CiAKK3N0YXRpYyB2b2lkIHB1bHNlX3VubG9ja193YWl0KHN0cnVj
dCBwdWxzZSAqcCkKK3sKKwltdXRleF9sb2NrKCZwLT5hY3RpdmUubXV0ZXgpOworCW11dGV4X3Vu
bG9jaygmcC0+YWN0aXZlLm11dGV4KTsKK30KKwogc3RhdGljIGludCBfX2xpdmVfaWRsZV9wdWxz
ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCQkgICAgIGludCAoKmZuKShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICpjcykpCiB7CiAJc3RydWN0IHB1bHNlICpwOwogCWludCBlcnI7
CiAKKwlHRU1fQlVHX09OKCFpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSk7CisKIAlw
ID0gcHVsc2VfY3JlYXRlKCk7CiAJaWYgKCFwKQogCQlyZXR1cm4gLUVOT01FTTsKQEAgLTczLDE2
ICs4MSwyMSBAQCBzdGF0aWMgaW50IF9fbGl2ZV9pZGxlX3B1bHNlKHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSwKIAlpOTE1X2FjdGl2ZV9yZWxlYXNlKCZwLT5hY3RpdmUpOwogCiAJR0VN
X0JVR19PTihpOTE1X2FjdGl2ZV9pc19pZGxlKCZwLT5hY3RpdmUpKTsKKwlHRU1fQlVHX09OKGxs
aXN0X2VtcHR5KCZlbmdpbmUtPmJhcnJpZXJfdGFza3MpKTsKIAogCWVyciA9IGZuKGVuZ2luZSk7
CiAJaWYgKGVycikKIAkJZ290byBvdXQ7CiAKKwlHRU1fQlVHX09OKCFsbGlzdF9lbXB0eSgmZW5n
aW5lLT5iYXJyaWVyX3Rhc2tzKSk7CisKIAlpZiAoaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzX3Rp
bWVvdXQoZW5naW5lLT5ndCwgSFogLyA1KSkgewogCQllcnIgPSAtRVRJTUU7CiAJCWdvdG8gb3V0
OwogCX0KIAorCXB1bHNlX3VubG9ja193YWl0KHApOyAvKiBzeW5jaHJvbml6ZSB3aXRoIHRoZSBy
ZXRpcmVtZW50IGNhbGxiYWNrICovCisKIAlpZiAoIWk5MTVfYWN0aXZlX2lzX2lkbGUoJnAtPmFj
dGl2ZSkpIHsKIAkJcHJfZXJyKCIlczogaGVhcnRiZWF0IHB1bHNlIGRpZCBub3QgZmx1c2ggaWRs
ZSB0YXNrc1xuIiwKIAkJICAgICAgIGVuZ2luZS0+bmFtZSk7Ci0tIAoyLjI0LjAucmMwCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
