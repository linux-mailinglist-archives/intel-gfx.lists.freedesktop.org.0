Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC12C6757C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 21:44:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6FBA6E373;
	Fri, 12 Jul 2019 19:44:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 038426E372;
 Fri, 12 Jul 2019 19:44:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1BD3A0094;
 Fri, 12 Jul 2019 19:44:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 12 Jul 2019 19:44:12 -0000
Message-ID: <20190712194412.29165.68723@emeril.freedesktop.org>
References: <20190712192953.9187-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190712192953.9187-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gt=3A_Use_intel=5Fgt_as_the_primary_object_for_hand?=
 =?utf-8?q?ling_resets?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFVzZSBpbnRlbF9ndCBh
cyB0aGUgcHJpbWFyeSBvYmplY3QgZm9yIGhhbmRsaW5nIHJlc2V0cwpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjM2NjIvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAphZDI1OGY3ZmYw
YzkgZHJtL2k5MTUvZ3Q6IFVzZSBpbnRlbF9ndCBhcyB0aGUgcHJpbWFyeSBvYmplY3QgZm9yIGhh
bmRsaW5nIHJlc2V0cwotOjI4OiBXQVJOSU5HOk1FTU9SWV9CQVJSSUVSOiBtZW1vcnkgYmFycmll
ciB3aXRob3V0IGNvbW1lbnQKIzI4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYzo0Mjc1OgorCXNtcF9tYl9fYWZ0ZXJfYXRvbWljKCk7CgotOjE4NDA6
IFdBUk5JTkc6TUVNT1JZX0JBUlJJRVI6IG1lbW9yeSBiYXJyaWVyIHdpdGhvdXQgY29tbWVudAoj
MTg0MDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYzoxMjYzOgor
CXNtcF9tYl9fYWZ0ZXJfYXRvbWljKCk7CgotOjIwNjU6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTog
TWFjcm8gYXJndW1lbnQgcmV1c2UgJ1cnIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojMjA2NTog
RklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuaDo2NDoKKyNkZWZpbmUg
aW50ZWxfd2VkZ2Vfb25fdGltZW91dChXLCBHVCwgVElNRU9VVCkJCQkJXAorCWZvciAoX19pbnRl
bF9pbml0X3dlZGdlKChXKSwgKEdUKSwgKFRJTUVPVVQpLCBfX2Z1bmNfXyk7CVwKKwkgICAgIChX
KS0+Z3Q7CQkJCQkJCVwKKwkgICAgIF9faW50ZWxfZmluaV93ZWRnZSgoVykpKQoKLToyMDgwOiBX
QVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMp
LCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMyMDgwOiAKbmV3IGZpbGUgbW9kZSAx
MDA2NDQKCi06NDQ5NjogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVz
ZSAnVCcgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiM0NDk2OiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3NlbGZ0ZXN0Lmg6OTQ6CisjZGVmaW5lIGludGVsX2d0X2xpdmVfc3VidGVz
dHMoVCwgZGF0YSkgKHsgXAorCXR5cGVjaGVjayhzdHJ1Y3QgaW50ZWxfZ3QgKiwgZGF0YSk7IFwK
KwlfX2k5MTVfc3VidGVzdHMoX19mdW5jX18sIFwKKwkJCV9faW50ZWxfZ3RfbGl2ZV9zZXR1cCwg
X19pbnRlbF9ndF9saXZlX3RlYXJkb3duLCBcCisJCQlULCBBUlJBWV9TSVpFKFQpLCBkYXRhKTsg
XAorfSkKCnRvdGFsOiAwIGVycm9ycywgMyB3YXJuaW5ncywgMiBjaGVja3MsIDQzMTUgbGluZXMg
Y2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
