Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D06938817
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 12:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09FC89C3B;
	Fri,  7 Jun 2019 10:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BF36C89C3B;
 Fri,  7 Jun 2019 10:41:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA7C3A00EA;
 Fri,  7 Jun 2019 10:41:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 07 Jun 2019 10:41:48 -0000
Message-ID: <20190607104148.32140.56514@emeril.freedesktop.org>
References: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_Reset_only_a?=
 =?utf-8?q?ffected_engines_when_handling_error_capture_=28rev3=29?=
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
NV0gZHJtL2k5MTU6IFJlc2V0IG9ubHkgYWZmZWN0ZWQgZW5naW5lcyB3aGVuIGhhbmRsaW5nIGVy
cm9yIGNhcHR1cmUgKHJldjMpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3Nlcmllcy82MTc1OC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBj
aGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjBiY2YyNmVhNjQ0NiBkcm0vaTkxNTogUmVzZXQgb25s
eSBhZmZlY3RlZCBlbmdpbmVzIHdoZW4gaGFuZGxpbmcgZXJyb3IgY2FwdHVyZQowN2VmMmFhMDNl
YjggZHJtL2k5MTU6IFRpZHkgZW5naW5lIG1hc2sgdHlwZXMgaW4gaGFuZ2NoZWNrCjhhMWE0NzMz
ODZhYyBkcm0vaTkxNTogTWFrZSBHZW42LzcgUklOR19GQVVMVF9SRUcgYWNjZXNzIGVuZ2luZSBj
ZW50cmljCi06MjQ6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2Ug
J2VuZ2luZV9fJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzI0OiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaDo3MToKKyNkZWZpbmUgR0VONl9SSU5HX0ZBVUxU
X1JFR19SRUFEKGVuZ2luZV9fKSBcCisJaW50ZWxfdW5jb3JlX3JlYWQoKGVuZ2luZV9fKS0+dW5j
b3JlLCBSSU5HX0ZBVUxUX1JFRyhlbmdpbmVfXykpCgotOjI3OiBDSEVDSzpNQUNST19BUkdfUkVV
U0U6IE1hY3JvIGFyZ3VtZW50IHJldXNlICdlbmdpbmVfXycgLSBwb3NzaWJsZSBzaWRlLWVmZmVj
dHM/CiMyNzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmg6NzQ6
CisjZGVmaW5lIEdFTjZfUklOR19GQVVMVF9SRUdfUE9TVElOR19SRUFEKGVuZ2luZV9fKSBcCisJ
aW50ZWxfdW5jb3JlX3Bvc3RpbmdfcmVhZCgoZW5naW5lX18pLT51bmNvcmUsIFJJTkdfRkFVTFRf
UkVHKGVuZ2luZV9fKSkKCi06MzA6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1l
bnQgcmV1c2UgJ2VuZ2luZV9fJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzMwOiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaDo3NzoKKyNkZWZpbmUgR0VONl9S
SU5HX0ZBVUxUX1JFR19STVcoZW5naW5lX18sIGNsZWFyX18sIHNldF9fKSBcCisoeyBcCisJdTMy
IF9fdmFsOyBcCitcCisJX192YWwgPSBpbnRlbF91bmNvcmVfcmVhZCgoZW5naW5lX18pLT51bmNv
cmUsIFwKKwkJCQkgIFJJTkdfRkFVTFRfUkVHKGVuZ2luZV9fKSk7IFwKKwlfX3ZhbCAmPSB+KGNs
ZWFyX18pOyBcCisJX192YWwgfD0gKHNldF9fKTsgXAorCWludGVsX3VuY29yZV93cml0ZSgoZW5n
aW5lX18pLT51bmNvcmUsIFJJTkdfRkFVTFRfUkVHKGVuZ2luZV9fKSwgXAorCQkJICAgX192YWwp
OyBcCit9KQoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAzIGNoZWNrcywgNTIgbGluZXMg
Y2hlY2tlZAo0ZjUxMzQ5YjA1NDcgZHJtL2k5MTU6IEV4dHJhY3QgZW5naW5lIGZhdWx0IHJlc2V0
IHRvIGEgaGVscGVyCjViODM0ZTg2MGYwMyBkcm0vaTkxNTogVW5leHBvcnQgaTkxNV9nZW1faW5p
dC9maW5pX2FsaWFzaW5nX3BwZ3R0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
