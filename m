Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 630DA2E151
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 17:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B22389CCE;
	Wed, 29 May 2019 15:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F21E89CCE;
 Wed, 29 May 2019 15:41:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38620A011A;
 Wed, 29 May 2019 15:41:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Wed, 29 May 2019 15:41:07 -0000
Message-ID: <20190529154107.29224.99162@emeril.freedesktop.org>
References: <20190529123108.24422-1-matthew.auld@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190529123108.24422-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv6=2C1/2=5D_drm/i915/gtt=3A_grab_wak?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y2LDEv
Ml0gZHJtL2k5MTUvZ3R0OiBncmFiIHdha2VyZWYgaW4gZ2VuNl9hbGxvY192YV9yYW5nZQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjEzMjMvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cAplYjA1ZWFjYzRjYmEgZHJtL2k5MTUvZ3R0OiBncmFiIHdha2VyZWYgaW4gZ2VuNl9hbGxvY192
YV9yYW5nZQo1MTQxMTRlMDViYTcgZHJtL2k5MTU6IGFkZCBpbi1rZXJuZWwgYmxpdHRlciBjbGll
bnQKLTozODogV0FSTklORzpGSUxFX1BBVEhfQ0hBTkdFUzogYWRkZWQsIG1vdmVkIG9yIGRlbGV0
ZWQgZmlsZShzKSwgZG9lcyBNQUlOVEFJTkVSUyBuZWVkIHVwZGF0aW5nPwojMzg6IApuZXcgZmls
ZSBtb2RlIDEwMDY0NAoKLTo0MDM6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJv
dW5kIHRoYXQgJy0nIChjdHg6VnhWKQojNDAzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jOjIyOgorCQkqY3MrKyA9IFhZX0NPTE9SX0JMVF9DTUQg
fCBCTFRfV1JJVEVfUkdCQSB8ICg3LTIpOwogCQkgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXgoKLTo0MTI6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJy
ZWQgYXJvdW5kIHRoYXQgJy0nIChjdHg6VnhWKQojNDEyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jOjMxOgorCQkqY3MrKyA9IFhZX0NPTE9SX0JM
VF9DTUQgfCBCTFRfV1JJVEVfUkdCQSB8ICg2LTIpOwogCQkgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgXgoKLTo1NDQ6IFdBUk5JTkc6TElORV9TUEFDSU5HOiBN
aXNzaW5nIGEgYmxhbmsgbGluZSBhZnRlciBkZWNsYXJhdGlvbnMKIzU0NDogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0LmM6MTg6CisJ
c3RydWN0IHJuZF9zdGF0ZSBwcm5nOworCUlHVF9USU1FT1VUKGVuZCk7CgotOjY3NzogV0FSTklO
RzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0aW9ucwoj
Njc3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX29i
amVjdF9ibHQuYzoxODoKKwlzdHJ1Y3Qgcm5kX3N0YXRlIHBybmc7CisJSUdUX1RJTUVPVVQoZW5k
KTsKCi06Nzc4OiBDSEVDSzpTUEFDSU5HOiBzcGFjZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0ICc8
PCcgKGN0eDpWeFYpCiM3Nzg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dw
dV9jb21tYW5kcy5oOjE4MzoKKyNkZWZpbmUgWFlfQ09MT1JfQkxUX0NNRAkJKDI8PDI5IHwgMHg1
MDw8MjIpCiAgICAgICAgICAgICAgICAgICAgICAgICAJCSAgXgoKLTo3Nzg6IENIRUNLOlNQQUNJ
Tkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzc3ODogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmg6MTgzOgorI2Rl
ZmluZSBYWV9DT0xPUl9CTFRfQ01ECQkoMjw8MjkgfCAweDUwPDwyMikKICAgICAgICAgICAgICAg
ICAgICAgICAgIAkJICAgICAgICAgICAgIF4KCnRvdGFsOiAwIGVycm9ycywgMyB3YXJuaW5ncywg
NCBjaGVja3MsIDcyNiBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
