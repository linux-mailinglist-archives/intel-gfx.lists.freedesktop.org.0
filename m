Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C3E2857E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 20:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5927689D87;
	Thu, 23 May 2019 18:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85ACD89CE3;
 Thu, 23 May 2019 18:00:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79964A0074;
 Thu, 23 May 2019 18:00:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 23 May 2019 18:00:05 -0000
Message-ID: <20190523180005.12610.56016@emeril.freedesktop.org>
References: <20190523172204.25413-1-matthew.auld@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190523172204.25413-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv4=2C1/2=5D_drm/i915/gtt=3A_grab_wak?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y0LDEv
Ml0gZHJtL2k5MTUvZ3R0OiBncmFiIHdha2VyZWYgaW4gZ2VuNl9hbGxvY192YV9yYW5nZQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjEwNTUvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cAo0NTA4YTIzZDk0YTQgZHJtL2k5MTUvZ3R0OiBncmFiIHdha2VyZWYgaW4gZ2VuNl9hbGxvY192
YV9yYW5nZQpjMjJkOTlmZjMxNDMgZHJtL2k5MTU6IGFkZCBpbi1rZXJuZWwgYmxpdHRlciBjbGll
bnQKLTo0NDogQ0hFQ0s6U1BBQ0lORzogc3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAnPDwn
IChjdHg6VnhWKQojNDQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9j
b21tYW5kcy5oOjE4MzoKKyNkZWZpbmUgWFlfQ09MT1JfQkxUX0NNRAkJKDI8PDI5IHwgMHg1MDw8
MjIpCiAgICAgICAgICAgICAgICAgICAgICAgICAJCSAgXgoKLTo0NDogQ0hFQ0s6U1BBQ0lORzog
c3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAnPDwnIChjdHg6VnhWKQojNDQ6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oOjE4MzoKKyNkZWZpbmUg
WFlfQ09MT1JfQkxUX0NNRAkJKDI8PDI5IHwgMHg1MDw8MjIpCiAgICAgICAgICAgICAgICAgICAg
ICAgICAJCSAgICAgICAgICAgICBeCgotOjQ5OiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBh
ZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBk
YXRpbmc/CiM0OTogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjQxMTogQ0hFQ0s6U1BBQ0lORzog
c3BhY2VzIHByZWZlcnJlZCBhcm91bmQgdGhhdCAnLScgKGN0eDpWeFYpCiM0MTE6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX29iamVjdF9ibHQuYzoyMjoKKwkJKmNzKysgPSBY
WV9DT0xPUl9CTFRfQ01EIHwgQkxUX1dSSVRFX1JHQkEgfCAoNy0yKTsKIAkJICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KCi06NDIwOiBDSEVDSzpTUEFDSU5H
OiBzcGFjZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0ICctJyAoY3R4OlZ4VikKIzQyMDogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fb2JqZWN0X2JsdC5jOjMxOgorCQkqY3MrKyA9
IFhZX0NPTE9SX0JMVF9DTUQgfCBCTFRfV1JJVEVfUkdCQSB8ICg2LTIpOwogCQkgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgoKLTo1NDc6IFdBUk5JTkc6TElO
RV9TUEFDSU5HOiBNaXNzaW5nIGEgYmxhbmsgbGluZSBhZnRlciBkZWNsYXJhdGlvbnMKIzU0Nzog
RklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2NsaWVudF9ibHQu
YzoxODoKKwlzdHJ1Y3Qgcm5kX3N0YXRlIHBybmc7CisJSUdUX1RJTUVPVVQoZW5kKTsKCi06Njg1
OiBXQVJOSU5HOkxJTkVfU1BBQ0lORzogTWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFy
YXRpb25zCiM2ODU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dl
bV9vYmplY3RfYmx0LmM6MTg6CisJc3RydWN0IHJuZF9zdGF0ZSBwcm5nOworCUlHVF9USU1FT1VU
KGVuZCk7Cgp0b3RhbDogMCBlcnJvcnMsIDMgd2FybmluZ3MsIDQgY2hlY2tzLCA3MjggbGluZXMg
Y2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
