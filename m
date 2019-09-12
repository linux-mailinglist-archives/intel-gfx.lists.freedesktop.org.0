Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7041BB0F3D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 14:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3821D6ED35;
	Thu, 12 Sep 2019 12:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F3586ED35
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 12:57:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18464246-1500050 
 for multiple; Thu, 12 Sep 2019 13:56:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org,
	torvalds@linux-foundation.org
Date: Thu, 12 Sep 2019 13:56:34 +0100
Message-Id: <20190912125634.29054-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <CAHk-=wjKv_Zw2zGHduyrQH_VQzxXYzwKdwwzzpsdnsdx=EK30Q@mail.gmail.com>
References: <CAHk-=wjKv_Zw2zGHduyrQH_VQzxXYzwKdwwzzpsdnsdx=EK30Q@mail.gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/userptr: Acquire the page lock
 around set_page_dirty()"
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
Cc: tiwai@suse.de, linux-kernel@vger.kernel.org, leho@kraav.com,
 Jani Nikula <jani.nikula@intel.com>, MKoutny@suse.com, stable@vger.kernel.org,
 Martin.Wilck@suse.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHVzZXJwdHIgcHV0X3BhZ2VzIGNhbiBiZSBjYWxsZWQgZnJvbSBpbnNpZGUgdHJ5X3RvX3Vu
bWFwLCBhbmQgc28KZW50ZXJzIHdpdGggdGhlIHBhZ2UgbG9jayBoZWxkIG9uIG9uZSBvZiB0aGUg
b2JqZWN0J3MgYmFja2luZyBwYWdlcy4gV2UKY2Fubm90IHRha2UgdGhlIHBhZ2UgbG9jayBvdXJz
ZWx2ZXMgZm9yIGZlYXIgb2YgcmVjdXJzaW9uLgoKUmVwb3J0ZWQtYnk6IExpb25lbCBMYW5kd2Vy
bGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KUmVwb3J0ZWQtYnk6IE1hcnRpbiBX
aWxjayA8TWFydGluLldpbGNrQHN1c2UuY29tPgpSZXBvcnRlZC1ieTogTGVvIEtyYWF2IDxsZWhv
QGtyYWF2LmNvbT4KRml4ZXM6IGFhNTZhMjkyY2U2MiAoImRybS9pOTE1L3VzZXJwdHI6IEFjcXVp
cmUgdGhlIHBhZ2UgbG9jayBhcm91bmQgc2V0X3BhZ2VfZGlydHkoKSIpClJlZmVyZW5jZXM6IGh0
dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjAzMzE3ClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+CkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCi0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyB8IDEwICstLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwppbmRleCA3NGRhMzU2MTFkN2MuLjExYjIz
MWMxODdjNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Vz
ZXJwdHIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5j
CkBAIC02NzIsMTUgKzY3Miw3IEBAIGk5MTVfZ2VtX3VzZXJwdHJfcHV0X3BhZ2VzKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAKIAlmb3JfZWFjaF9zZ3RfcGFnZShwYWdlLCBzZ3Rf
aXRlciwgcGFnZXMpIHsKIAkJaWYgKG9iai0+bW0uZGlydHkpCi0JCQkvKgotCQkJICogQXMgdGhp
cyBtYXkgbm90IGJlIGFub255bW91cyBtZW1vcnkgKGUuZy4gc2htZW0pCi0JCQkgKiBidXQgZXhp
c3Qgb24gYSByZWFsIG1hcHBpbmcsIHdlIGhhdmUgdG8gbG9jawotCQkJICogdGhlIHBhZ2UgaW4g
b3JkZXIgdG8gZGlydHkgaXQgLS0gaG9sZGluZwotCQkJICogdGhlIHBhZ2UgcmVmZXJlbmNlIGlz
IG5vdCBzdWZmaWNpZW50IHRvCi0JCQkgKiBwcmV2ZW50IHRoZSBpbm9kZSBmcm9tIGJlaW5nIHRy
dW5jYXRlZC4KLQkJCSAqIFBsYXkgc2FmZSBhbmQgdGFrZSB0aGUgbG9jay4KLQkJCSAqLwotCQkJ
c2V0X3BhZ2VfZGlydHlfbG9jayhwYWdlKTsKKwkJCXNldF9wYWdlX2RpcnR5KHBhZ2UpOwogCiAJ
CW1hcmtfcGFnZV9hY2Nlc3NlZChwYWdlKTsKIAkJcHV0X3BhZ2UocGFnZSk7Ci0tIAoyLjIzLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
