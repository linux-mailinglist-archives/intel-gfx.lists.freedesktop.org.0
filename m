Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 382232552E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 18:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E00289491;
	Tue, 21 May 2019 16:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F14389468;
 Tue, 21 May 2019 16:14:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3808AA47E5;
 Tue, 21 May 2019 16:14:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 May 2019 16:14:32 -0000
Message-ID: <20190521161432.13173.92661@emeril.freedesktop.org>
References: <20190521124318.26310-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190521124318.26310-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C01/10=5D_drm/i915=3A_Restore_co?=
 =?utf-8?q?ntrol_over_ppgtt_for_context_creation_ABI?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDAx
LzEwXSBkcm0vaTkxNTogUmVzdG9yZSBjb250cm9sIG92ZXIgcHBndHQgZm9yIGNvbnRleHQgY3Jl
YXRpb24gQUJJClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82MDkwOS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCjBlZjMyOGZjM2Y2ZiBkcm0vaTkxNTogUmVzdG9yZSBjb250cm9sIG92
ZXIgcHBndHQgZm9yIGNvbnRleHQgY3JlYXRpb24gQUJJCi06ODE6IFdBUk5JTkc6TE9OR19MSU5F
OiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzgxOiBGSUxFOiBpbmNsdWRlL3VhcGkvZHJtL2k5
MTVfZHJtLmg6NDIwOgorI2RlZmluZSBEUk1fSU9DVExfSTkxNV9HRU1fVk1fQ1JFQVRFCURSTV9J
T1dSKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fSTkxNV9HRU1fVk1fQ1JFQVRFLCBzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX3ZtX2NvbnRyb2wpCgotOjgyOiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVy
IDEwMCBjaGFyYWN0ZXJzCiM4MjogRklMRTogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oOjQy
MToKKyNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfR0VNX1ZNX0RFU1RST1kJRFJNX0lPVyAoRFJNX0NP
TU1BTkRfQkFTRSArIERSTV9JOTE1X0dFTV9WTV9ERVNUUk9ZLCBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X3ZtX2NvbnRyb2wpCgotOjgyOiBXQVJOSU5HOlNQQUNJTkc6IHNwYWNlIHByb2hpYml0ZWQgYmV0
d2VlbiBmdW5jdGlvbiBuYW1lIGFuZCBvcGVuIHBhcmVudGhlc2lzICcoJwojODI6IEZJTEU6IGlu
Y2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaDo0MjE6CisjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dF
TV9WTV9ERVNUUk9ZCURSTV9JT1cgKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fSTkxNV9HRU1fVk1f
REVTVFJPWSwgc3RydWN0IGRybV9pOTE1X2dlbV92bV9jb250cm9sKQoKLTo4MjogRVJST1I6Q09N
UExFWF9NQUNSTzogTWFjcm9zIHdpdGggY29tcGxleCB2YWx1ZXMgc2hvdWxkIGJlIGVuY2xvc2Vk
IGluIHBhcmVudGhlc2VzCiM4MjogRklMRTogaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oOjQy
MToKKyNkZWZpbmUgRFJNX0lPQ1RMX0k5MTVfR0VNX1ZNX0RFU1RST1kJRFJNX0lPVyAoRFJNX0NP
TU1BTkRfQkFTRSArIERSTV9JOTE1X0dFTV9WTV9ERVNUUk9ZLCBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X3ZtX2NvbnRyb2wpCgp0b3RhbDogMSBlcnJvcnMsIDMgd2FybmluZ3MsIDAgY2hlY2tzLCA2NCBs
aW5lcyBjaGVja2VkCjk1NzVkZWQwYzNiYyBkcm0vaTkxNTogQWxsb3cgYSBjb250ZXh0IHRvIGRl
ZmluZSBpdHMgc2V0IG9mIGVuZ2luZXMKLTo0Mzc6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFj
cm8gYXJndW1lbnQgcmV1c2UgJ3AnIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojNDM3OiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmg6MTEwOgorI2RlZmluZSBjaGVja19z
dHJ1Y3Rfc2l6ZShwLCBtZW1iZXIsIG4sIHN6KSBcCisJbGlrZWx5KF9fY2hlY2tfc3RydWN0X3Np
emUoc2l6ZW9mKCoocCkpLCBcCisJCQkJICAgc2l6ZW9mKCoocCktPm1lbWJlcikgKyBfX211c3Rf
YmVfYXJyYXkoKHApLT5tZW1iZXIpLCBcCisJCQkJICAgbiwgc3opKQoKLTo0Mzc6IENIRUNLOk1B
Q1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1c2UgJ21lbWJlcicgLSBwb3NzaWJsZSBz
aWRlLWVmZmVjdHM/CiM0Mzc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMu
aDoxMTA6CisjZGVmaW5lIGNoZWNrX3N0cnVjdF9zaXplKHAsIG1lbWJlciwgbiwgc3opIFwKKwls
aWtlbHkoX19jaGVja19zdHJ1Y3Rfc2l6ZShzaXplb2YoKihwKSksIFwKKwkJCQkgICBzaXplb2Yo
KihwKS0+bWVtYmVyKSArIF9fbXVzdF9iZV9hcnJheSgocCktPm1lbWJlciksIFwKKwkJCQkgICBu
LCBzeikpCgotOjQzNzogQ0hFQ0s6TUFDUk9fQVJHX1BSRUNFREVOQ0U6IE1hY3JvIGFyZ3VtZW50
ICdtZW1iZXInIG1heSBiZSBiZXR0ZXIgYXMgJyhtZW1iZXIpJyB0byBhdm9pZCBwcmVjZWRlbmNl
IGlzc3VlcwojNDM3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmg6MTEw
OgorI2RlZmluZSBjaGVja19zdHJ1Y3Rfc2l6ZShwLCBtZW1iZXIsIG4sIHN6KSBcCisJbGlrZWx5
KF9fY2hlY2tfc3RydWN0X3NpemUoc2l6ZW9mKCoocCkpLCBcCisJCQkJICAgc2l6ZW9mKCoocCkt
Pm1lbWJlcikgKyBfX211c3RfYmVfYXJyYXkoKHApLT5tZW1iZXIpLCBcCisJCQkJICAgbiwgc3op
KQoKdG90YWw6IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAzIGNoZWNrcywgNDI4IGxpbmVzIGNoZWNr
ZWQKZjkwYmUwNmY1ZTAzIGRybS9pOTE1OiBFeHRlbmQgSTkxNV9DT05URVhUX1BBUkFNX1NTRVUg
dG8gc3VwcG9ydCBsb2NhbCBjdHgtPmVuZ2luZVtdCjNhMjM5YjgwZDM5YyBkcm0vaTkxNTogUmUt
ZXhwb3NlIFNJTkdMRV9USU1FTElORSBmbGFncyBmb3IgY29udGV4dCBjcmVhdGlvbgplZWQ2MjNm
NzhkYzkgZHJtL2k5MTU6IEFsbG93IHVzZXJzcGFjZSB0byBjbG9uZSBjb250ZXh0cyBvbiBjcmVh
dGlvbgotOjIxMzogRVJST1I6QlJBQ0tFVF9TUEFDRTogc3BhY2UgcHJvaGliaXRlZCBiZWZvcmUg
b3BlbiBzcXVhcmUgYnJhY2tldCAnWycKIzIxMzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fY29udGV4dC5jOjE4NTg6CisjZGVmaW5lIE1BUCh4LCB5KSBbaWxvZzIoSTkxNV9D
T05URVhUX0NMT05FXyMjeCldID0geQoKdG90YWw6IDEgZXJyb3JzLCAwIHdhcm5pbmdzLCAwIGNo
ZWNrcywgMjM1IGxpbmVzIGNoZWNrZWQKNmJhNDkxNTYzN2UwIGRybS9pOTE1OiBMb2FkIGJhbGFu
Y2luZyBhY3Jvc3MgYSB2aXJ0dWFsIGVuZ2luZQpkOWQ2ODU2MTAyMjQgZHJtL2k5MTU6IEFwcGx5
IGFuIGV4ZWN1dGlvbl9tYXNrIHRvIHRoZSB2aXJ0dWFsX2VuZ2luZQplNTYxODVjYTJmODAgZHJt
L2k5MTU6IEV4dGVuZCBleGVjdXRpb24gZmVuY2UgdG8gc3VwcG9ydCBhIGNhbGxiYWNrCjM2Njlm
ZGM0MmEyYiBkcm0vaTkxNS9leGVjbGlzdHM6IFZpcnR1YWwgZW5naW5lIGJvbmRpbmcKM2UwMzY5
YmMyMTc3IGRybS9pOTE1OiBBbGxvdyBzcGVjaWZpY2F0aW9uIG9mIHBhcmFsbGVsIGV4ZWNidWYK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
