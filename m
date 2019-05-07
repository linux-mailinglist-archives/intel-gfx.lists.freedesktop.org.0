Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D85B16388
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 14:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 640B76E7B8;
	Tue,  7 May 2019 12:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BC266E7B8;
 Tue,  7 May 2019 12:14:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03E65A0005;
 Tue,  7 May 2019 12:14:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 07 May 2019 12:14:10 -0000
Message-ID: <20190507121410.856.77840@emeril.freedesktop.org>
References: <20190507105557.5385-1-matthew.auld@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190507105557.5385-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=2C1/2=5D_drm/i915/gtt=3A_grab_wak?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDEv
Ml0gZHJtL2k5MTUvZ3R0OiBncmFiIHdha2VyZWYgaW4gZ2VuNl9hbGxvY192YV9yYW5nZQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAzNjQvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cAo4NWE2NGUwMjZjYzUgZHJtL2k5MTUvZ3R0OiBncmFiIHdha2VyZWYgaW4gZ2VuNl9hbGxvY192
YV9yYW5nZQoxMmM3ODI3ZWQ4MGEgZHJtL2k5MTU6IGFkZCBpbi1rZXJuZWwgYmxpdHRlciBjbGll
bnQKLTo0MzogQ0hFQ0s6U1BBQ0lORzogc3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAnPDwn
IChjdHg6VnhWKQojNDM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9j
b21tYW5kcy5oOjE4MzoKKyNkZWZpbmUgWFlfQ09MT1JfQkxUX0NNRAkJKDI8PDI5IHwgMHg1MDw8
MjIpCiAgICAgICAgICAgICAgICAgICAgICAgICAJCSAgXgoKLTo0MzogQ0hFQ0s6U1BBQ0lORzog
c3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAnPDwnIChjdHg6VnhWKQojNDM6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oOjE4MzoKKyNkZWZpbmUg
WFlfQ09MT1JfQkxUX0NNRAkJKDI8PDI5IHwgMHg1MDw8MjIpCiAgICAgICAgICAgICAgICAgICAg
ICAgICAJCSAgICAgICAgICAgICBeCgotOjQ4OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBh
ZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBk
YXRpbmc/CiM0ODogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjMwODogQ0hFQ0s6Q09NUEFSSVNP
Tl9UT19OVUxMOiBDb21wYXJpc29uIHRvIE5VTEwgY291bGQgYmUgd3JpdHRlbiAiIXdvcmsiCiMz
MDg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2NsaWVudF9ibHQuYzoyNTY6
CisJaWYgKHdvcmsgPT0gTlVMTCkgewoKLTo0MTA6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVm
ZXJyZWQgYXJvdW5kIHRoYXQgJy0nIChjdHg6VnhWKQojNDEwOiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9vYmplY3RfYmx0LmM6Mjg6CisJCSpjcysrID0gWFlfQ09MT1JfQkxU
X0NNRCB8IEJMVF9XUklURV9SR0JBIHwgKDctMik7CiAJCSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBeCgotOjQxOTogQ0hFQ0s6U1BBQ0lORzogc3BhY2VzIHBy
ZWZlcnJlZCBhcm91bmQgdGhhdCAnLScgKGN0eDpWeFYpCiM0MTk6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX29iamVjdF9ibHQuYzozNzoKKwkJKmNzKysgPSBYWV9DT0xPUl9C
TFRfQ01EIHwgQkxUX1dSSVRFX1JHQkEgfCAoNi0yKTsKIAkJICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF4KCi06NTM5OiBXQVJOSU5HOkxJTkVfU1BBQ0lORzog
TWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFyYXRpb25zCiM1Mzk6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0LmM6MTg6CisJc3Ry
dWN0IHJuZF9zdGF0ZSBwcm5nOworCUlHVF9USU1FT1VUKGVuZCk7CgotOjY3NjogV0FSTklORzpM
SU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0aW9ucwojNjc2
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fb2JqZWN0X2Js
dC5jOjE4OgorCXN0cnVjdCBybmRfc3RhdGUgcHJuZzsKKwlJR1RfVElNRU9VVChlbmQpOwoKdG90
YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdzLCA1IGNoZWNrcywgNzE5IGxpbmVzIGNoZWNrZWQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
