Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F262D09C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 22:44:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE026E29A;
	Tue, 28 May 2019 20:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8B096E29A;
 Tue, 28 May 2019 20:44:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B997A0073;
 Tue, 28 May 2019 20:44:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 28 May 2019 20:44:33 -0000
Message-ID: <20190528204433.27713.49619@emeril.freedesktop.org>
References: <20190528195724.2786-1-matthew.auld@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190528195724.2786-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv5=2C1/2=5D_drm/i915/gtt=3A_grab_wak?=
 =?utf-8?q?eref_in_gen6=5Falloc=5Fva=5Frange?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y1LDEv
Ml0gZHJtL2k5MTUvZ3R0OiBncmFiIHdha2VyZWYgaW4gZ2VuNl9hbGxvY192YV9yYW5nZQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjEyNzUvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cAoxY2RkZDBhOTgyZjggZHJtL2k5MTUvZ3R0OiBncmFiIHdha2VyZWYgaW4gZ2VuNl9hbGxvY192
YV9yYW5nZQoyZGVhOGM4YTFjNDIgZHJtL2k5MTU6IGFkZCBpbi1rZXJuZWwgYmxpdHRlciBjbGll
bnQKLTozNzogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0
ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojMzc6IApuZXcgZmls
ZSBtb2RlIDEwMDY0NAoKLTo0MDI6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJv
dW5kIHRoYXQgJy0nIChjdHg6VnhWKQojNDAyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jOjIyOgorCQkqY3MrKyA9IFhZX0NPTE9SX0JMVF9DTUQg
fCBCTFRfV1JJVEVfUkdCQSB8ICg3LTIpOwogCQkgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXgoKLTo0MTE6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJy
ZWQgYXJvdW5kIHRoYXQgJy0nIChjdHg6VnhWKQojNDExOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jOjMxOgorCQkqY3MrKyA9IFhZX0NPTE9SX0JM
VF9DTUQgfCBCTFRfV1JJVEVfUkdCQSB8ICg2LTIpOwogCQkgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgXgoKLTo1NDM6IFdBUk5JTkc6TElORV9TUEFDSU5HOiBN
aXNzaW5nIGEgYmxhbmsgbGluZSBhZnRlciBkZWNsYXJhdGlvbnMKIzU0MzogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0LmM6MTg6CisJ
c3RydWN0IHJuZF9zdGF0ZSBwcm5nOworCUlHVF9USU1FT1VUKGVuZCk7CgotOjY3NjogV0FSTklO
RzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0aW9ucwoj
Njc2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX29i
amVjdF9ibHQuYzoxODoKKwlzdHJ1Y3Qgcm5kX3N0YXRlIHBybmc7CisJSUdUX1RJTUVPVVQoZW5k
KTsKCi06NzEyOiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBsZWFzZSBkb24ndCB1c2UgbXVsdGlwbGUg
YmxhbmsgbGluZXMKIzcxMjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9vYmplY3RfYmx0LmM6NTQ6CisKKwoKLTo3Nzg6IENIRUNLOlNQQUNJTkc6IHNw
YWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzc3ODogRklMRTogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmg6MTgzOgorI2RlZmluZSBY
WV9DT0xPUl9CTFRfQ01ECQkoMjw8MjkgfCAweDUwPDwyMikKICAgICAgICAgICAgICAgICAgICAg
ICAgIAkJICBeCgotOjc3ODogQ0hFQ0s6U1BBQ0lORzogc3BhY2VzIHByZWZlcnJlZCBhcm91bmQg
dGhhdCAnPDwnIChjdHg6VnhWKQojNzc4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ncHVfY29tbWFuZHMuaDoxODM6CisjZGVmaW5lIFhZX0NPTE9SX0JMVF9DTUQJCSgyPDwy
OSB8IDB4NTA8PDIyKQogICAgICAgICAgICAgICAgICAgICAgICAgCQkgICAgICAgICAgICAgXgoK
dG90YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdzLCA1IGNoZWNrcywgNzI3IGxpbmVzIGNoZWNrZWQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
