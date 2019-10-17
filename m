Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 725C1DB0AA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 17:02:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA736EABA;
	Thu, 17 Oct 2019 15:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 249216E081;
 Thu, 17 Oct 2019 15:02:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E105A3ECB;
 Thu, 17 Oct 2019 15:02:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Oct 2019 15:02:32 -0000
Message-ID: <20191017150232.5568.64300@emeril.freedesktop.org>
References: <20191017080144.16899-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191017080144.16899-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Add_coverage_of_mocs_registers_=28rev2?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBBZGQgY292
ZXJhZ2Ugb2YgbW9jcyByZWdpc3RlcnMgKHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODEzNS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjcxNmViYTczYjE2ZiBkcm0vaTkx
NS9zZWxmdGVzdHM6IEFkZCBjb3ZlcmFnZSBvZiBtb2NzIHJlZ2lzdGVycwotOjI4OiBXQVJOSU5H
OkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2Vz
IE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/CiMyODogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cgot
OjMzOiBXQVJOSU5HOlNQRFhfTElDRU5TRV9UQUc6IE1pc3Npbmcgb3IgbWFsZm9ybWVkIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyIHRhZyBpbiBsaW5lIDEKIzMzOiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9tb2NzLmM6MToKKy8qCgotOjM0OiBXQVJOSU5HOlNQRFhfTElD
RU5TRV9UQUc6IE1pc3BsYWNlZCBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0YWcgLSB1c2UgbGlu
ZSAxIGluc3RlYWQKIzM0OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9t
b2NzLmM6MjoKKyAqIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKCi06MjE3OiBDSEVDSzpT
UEFDSU5HOiBzcGFjZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0ICcvJyAoY3R4OlZ4VikKIzIxNzog
RklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbW9jcy5jOjE4NToKKwltZW1z
ZXQzMihhcmctPnZhZGRyLCBTVEFDS19NQUdJQywgUEFHRV9TSVpFL3NpemVvZih1MzIpKTsKIAkg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgoKLToyMjY6IEVSUk9S
OlNQQUNJTkc6IHNwYWNlIHJlcXVpcmVkIGJlZm9yZSB0aGUgb3BlbiBwYXJlbnRoZXNpcyAnKCcK
IzIyNjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbW9jcy5jOjE5NDoK
KwlpZihlcnIpCgotOjI4MzogQ0hFQ0s6QlJBQ0VTOiBCbGFuayBsaW5lcyBhcmVuJ3QgbmVjZXNz
YXJ5IGJlZm9yZSBhIGNsb3NlIGJyYWNlICd9JwojMjgzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9tb2NzLmM6MjUxOgorCit9CgotOjI4NDogQ0hFQ0s6TElORV9TUEFD
SU5HOiBQbGVhc2UgdXNlIGEgYmxhbmsgbGluZSBhZnRlciBmdW5jdGlvbi9zdHJ1Y3QvdW5pb24v
ZW51bSBkZWNsYXJhdGlvbnMKIzI4NDogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2Vs
ZnRlc3RfbW9jcy5jOjI1MjoKK30KK3N0YXRpYyBpbnQgbGl2ZV9tb2NzX3Jlc2V0KHZvaWQgKmFy
ZykKCnRvdGFsOiAxIGVycm9ycywgMyB3YXJuaW5ncywgMyBjaGVja3MsIDMyMyBsaW5lcyBjaGVj
a2VkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
