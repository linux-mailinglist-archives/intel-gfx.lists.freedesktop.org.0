Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 187FF9D921
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 00:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B9889C29;
	Mon, 26 Aug 2019 22:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B17E89C0D;
 Mon, 26 Aug 2019 22:31:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5178EA47DA;
 Mon, 26 Aug 2019 22:31:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 26 Aug 2019 22:31:29 -0000
Message-ID: <20190826223129.13706.63090@emeril.freedesktop.org>
References: <20190826205459.29447-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190826205459.29447-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/8=5D_drm/i915/tgl=3A_Guard_an?=
 =?utf-8?q?d_warn_if_more_than_one_eDP_panel_is_present?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
OF0gZHJtL2k5MTUvdGdsOiBHdWFyZCBhbmQgd2FybiBpZiBtb3JlIHRoYW4gb25lIGVEUCBwYW5l
bCBpcyBwcmVzZW50ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy82NTgzNS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3Bh
dGNoIG9yaWdpbi9kcm0tdGlwCjY2OTQ0MDU3ZDkzNSBkcm0vaTkxNS90Z2w6IEd1YXJkIGFuZCB3
YXJuIGlmIG1vcmUgdGhhbiBvbmUgZURQIHBhbmVsIGlzIHByZXNlbnQKOTI0ZDRjMmE3NjM1IGRy
bS9pOTE1OiBEbyBub3QgcmVhZCBQU1IyIHJlZ2lzdGVyIGluIHRyYW5zY29kZXJzIHdpdGhvdXQg
UFNSMgo1Y2YzMTUwNzE2ZTkgZHJtL2k5MTUvdGdsOiBBZGQgbWF4aW11bSByZXNvbHV0aW9uIHN1
cHBvcnRlZCBieSBQU1IyIEhXCmQ2Y2Q2MmQ4YzA3MSBkcm06IEFkZCBmb3JfZWFjaF9vbGRuZXdf
aW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKCkKLTozMDogV0FSTklORzpMT05HX0xJTkU6IGxp
bmUgb3ZlciAxMDAgY2hhcmFjdGVycwojMzA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oOjQxNDoKKyNkZWZpbmUgZm9yX2VhY2hfb2xkbmV3X2ludGVs
X2NydGNfaW5fc3RhdGVfcmV2ZXJzZShfX3N0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwgbmV3
X2NydGNfc3RhdGUsIF9faSkgXAoKLTozMDogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBh
cmd1bWVudCByZXVzZSAnX19zdGF0ZScgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMzMDogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5Lmg6NDE0OgorI2Rl
ZmluZSBmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKF9fc3RhdGUs
IGNydGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgX19pKSBcCisJZm9yICgoX19p
KSA9IChfX3N0YXRlKS0+YmFzZS5kZXYtPm1vZGVfY29uZmlnLm51bV9jcnRjIC0gMTsgXAorCSAg
ICAgKF9faSkgPj0gMCAgJiYgXAorCSAgICAgKChjcnRjKSA9IHRvX2ludGVsX2NydGMoKF9fc3Rh
dGUpLT5iYXNlLmNydGNzW19faV0ucHRyKSwgXAorCSAgICAgIChvbGRfY3J0Y19zdGF0ZSkgPSB0
b19pbnRlbF9jcnRjX3N0YXRlKChfX3N0YXRlKS0+YmFzZS5jcnRjc1tfX2ldLm9sZF9zdGF0ZSks
IFwKKwkgICAgICAobmV3X2NydGNfc3RhdGUpID0gdG9faW50ZWxfY3J0Y19zdGF0ZSgoX19zdGF0
ZSktPmJhc2UuY3J0Y3NbX19pXS5uZXdfc3RhdGUpLCAxKTsgXAorCSAgICAgKF9faSktLSkgXAor
CQlmb3JfZWFjaF9pZihjcnRjKQoKLTozMDogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBh
cmd1bWVudCByZXVzZSAnY3J0YycgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMzMDogRklMRTog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5Lmg6NDE0OgorI2RlZmlu
ZSBmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKF9fc3RhdGUsIGNy
dGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgX19pKSBcCisJZm9yICgoX19pKSA9
IChfX3N0YXRlKS0+YmFzZS5kZXYtPm1vZGVfY29uZmlnLm51bV9jcnRjIC0gMTsgXAorCSAgICAg
KF9faSkgPj0gMCAgJiYgXAorCSAgICAgKChjcnRjKSA9IHRvX2ludGVsX2NydGMoKF9fc3RhdGUp
LT5iYXNlLmNydGNzW19faV0ucHRyKSwgXAorCSAgICAgIChvbGRfY3J0Y19zdGF0ZSkgPSB0b19p
bnRlbF9jcnRjX3N0YXRlKChfX3N0YXRlKS0+YmFzZS5jcnRjc1tfX2ldLm9sZF9zdGF0ZSksIFwK
KwkgICAgICAobmV3X2NydGNfc3RhdGUpID0gdG9faW50ZWxfY3J0Y19zdGF0ZSgoX19zdGF0ZSkt
PmJhc2UuY3J0Y3NbX19pXS5uZXdfc3RhdGUpLCAxKTsgXAorCSAgICAgKF9faSktLSkgXAorCQlm
b3JfZWFjaF9pZihjcnRjKQoKLTozMDogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1
bWVudCByZXVzZSAnX19pJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzMwOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaDo0MTQ6CisjZGVmaW5lIGZv
cl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlX3JldmVyc2UoX19zdGF0ZSwgY3J0Yywg
b2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCBfX2kpIFwKKwlmb3IgKChfX2kpID0gKF9f
c3RhdGUpLT5iYXNlLmRldi0+bW9kZV9jb25maWcubnVtX2NydGMgLSAxOyBcCisJICAgICAoX19p
KSA+PSAwICAmJiBcCisJICAgICAoKGNydGMpID0gdG9faW50ZWxfY3J0YygoX19zdGF0ZSktPmJh
c2UuY3J0Y3NbX19pXS5wdHIpLCBcCisJICAgICAgKG9sZF9jcnRjX3N0YXRlKSA9IHRvX2ludGVs
X2NydGNfc3RhdGUoKF9fc3RhdGUpLT5iYXNlLmNydGNzW19faV0ub2xkX3N0YXRlKSwgXAorCSAg
ICAgIChuZXdfY3J0Y19zdGF0ZSkgPSB0b19pbnRlbF9jcnRjX3N0YXRlKChfX3N0YXRlKS0+YmFz
ZS5jcnRjc1tfX2ldLm5ld19zdGF0ZSksIDEpOyBcCisJICAgICAoX19pKS0tKSBcCisJCWZvcl9l
YWNoX2lmKGNydGMpCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDMgY2hlY2tzLCAxNSBs
aW5lcyBjaGVja2VkCmU4NzM4YjFmYjllNSBkcm0vaTkxNTogRGlzYWJsZSBwaXBlcyBpbiByZXZl
cnNlIG9yZGVyCjAyYWUwNjBlY2NhZSBkcm0vaTkxNS90Z2w6IEltcGxlbWVudCBUR0wgRGlzcGxh
eVBvcnQgdHJhaW5pbmcgc2VxdWVuY2UKYWI5NmRhYjdlMTIwIGRybS9pOTE1L3RnbDogRG8gbm90
IGFwcGx5IFdhSW5jcmVhc2VEZWZhdWx0VExCRW50cmllcyBmcm9tIEdFTjEyIG9ud2FyZHMKNWYz
MzJhZGJjYjRiIGRybS9pOTE1L3RnbC9wZXJmOiB1c2UgdGhlIHNhbWUgb2EgY3R4X2lkIGZvcm1h
dCBhcyBpY2wKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
