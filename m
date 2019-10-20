Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A9EDDF9C
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Oct 2019 19:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF9D899B0;
	Sun, 20 Oct 2019 17:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37574894DD;
 Sun, 20 Oct 2019 17:00:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EDDDA0088;
 Sun, 20 Oct 2019 17:00:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 20 Oct 2019 17:00:16 -0000
Message-ID: <20191020170016.5310.22258@emeril.freedesktop.org>
References: <20191020164343.11233-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191020164343.11233-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_dma-buf=3A_Prettify_typecasts?=
 =?utf-8?q?_for_dma-fence-chain?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZG1hLWJ1ZjogUHJldHRpZnkgdHlwZWNhc3RzIGZvciBkbWEtZmVuY2UtY2hhaW4KVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4Mjc0LwpTdGF0ZSA6IHdh
cm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMmRl
MjZhNjMwZDI3IGRtYS1idWY6IFByZXR0aWZ5IHR5cGVjYXN0cyBmb3IgZG1hLWZlbmNlLWNoYWlu
CmFhMjI1MGM5NTEyZCBkbWEtYnVmOiBSZXBvcnQgc2lnbmFsZWQgbGlua3MgaW5zaWRlIGRtYS1m
ZW5jZS1jaGFpbgphNDc2YTBiZjY4NjYgZG1hLWJ1ZjogRXhlcmNpc2UgZG1hLWZlbmNlLWNoYWlu
IHVuZGVyIHNlbGZ0ZXN0cwotOjMzOiBXQVJOSU5HOkZJTEVfUEFUSF9DSEFOR0VTOiBhZGRlZCwg
bW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5UQUlORVJTIG5lZWQgdXBkYXRpbmc/
CiMzMzogCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CgotOjYxOiBDSEVDSzpVTkNPTU1FTlRFRF9ERUZJ
TklUSU9OOiBzcGlubG9ja190IGRlZmluaXRpb24gd2l0aG91dCBjb21tZW50CiM2MTogRklMRTog
ZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS1jaGFpbi5jOjI0OgorCXNwaW5sb2NrX3QgbG9j
azsKCi06MjM1OiBXQVJOSU5HOkVNQkVEREVEX0ZVTkNUSU9OX05BTUU6IFByZWZlciB1c2luZyAn
IiVzLi4uIiwgX19mdW5jX18nIHRvIHVzaW5nICdmaW5kX3NlcW5vJywgdGhpcyBmdW5jdGlvbidz
IG5hbWUsIGluIGEgc3RyaW5nCiMyMzU6IEZJTEU6IGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVu
Y2UtY2hhaW4uYzoxOTg6CisJCXByX2VycigiUmVwb3J0ZWQgJWQgZm9yIGZpbmRfc2Vxbm8oMCkh
XG4iLCBlcnIpOwoKLToyNDQ6IFdBUk5JTkc6RU1CRURERURfRlVOQ1RJT05fTkFNRTogUHJlZmVy
IHVzaW5nICciJXMuLi4iLCBfX2Z1bmNfXycgdG8gdXNpbmcgJ2ZpbmRfc2Vxbm8nLCB0aGlzIGZ1
bmN0aW9uJ3MgbmFtZSwgaW4gYSBzdHJpbmcKIzI0NDogRklMRTogZHJpdmVycy9kbWEtYnVmL3N0
LWRtYS1mZW5jZS1jaGFpbi5jOjIwNzoKKwkJCXByX2VycigiUmVwb3J0ZWQgJWQgZm9yIGZpbmRf
c2Vxbm8oJWQ6JWQpIVxuIiwKCi06MjQ5OiBXQVJOSU5HOkVNQkVEREVEX0ZVTkNUSU9OX05BTUU6
IFByZWZlciB1c2luZyAnIiVzLi4uIiwgX19mdW5jX18nIHRvIHVzaW5nICdmaW5kX3NlcW5vJywg
dGhpcyBmdW5jdGlvbidzIG5hbWUsIGluIGEgc3RyaW5nCiMyNDk6IEZJTEU6IGRyaXZlcnMvZG1h
LWJ1Zi9zdC1kbWEtZmVuY2UtY2hhaW4uYzoyMTI6CisJCQlwcl9lcnIoIkluY29ycmVjdCBmZW5j
ZSByZXBvcnRlZCBieSBmaW5kX3NlcW5vKCVkOiVkKVxuIiwKCi06MjcyOiBXQVJOSU5HOkVNQkVE
REVEX0ZVTkNUSU9OX05BTUU6IFByZWZlciB1c2luZyAnIiVzLi4uIiwgX19mdW5jX18nIHRvIHVz
aW5nICdmaW5kX3NlcW5vJywgdGhpcyBmdW5jdGlvbidzIG5hbWUsIGluIGEgc3RyaW5nCiMyNzI6
IEZJTEU6IGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtY2hhaW4uYzoyMzU6CisJCQlwcl9l
cnIoIkVycm9yIG5vdCByZXBvcnRlZCBmb3IgZnV0dXJlIGZlbmNlOiBmaW5kX3NlcW5vKCVkOiVk
KSFcbiIsCgotOjI4NjogV0FSTklORzpFTUJFRERFRF9GVU5DVElPTl9OQU1FOiBQcmVmZXIgdXNp
bmcgJyIlcy4uLiIsIF9fZnVuY19fJyB0byB1c2luZyAnZmluZF9zZXFubycsIHRoaXMgZnVuY3Rp
b24ncyBuYW1lLCBpbiBhIHN0cmluZwojMjg2OiBGSUxFOiBkcml2ZXJzL2RtYS1idWYvc3QtZG1h
LWZlbmNlLWNoYWluLmM6MjQ5OgorCQkJcHJfZXJyKCJJbmNvcnJlY3QgZmVuY2UgcmVwb3J0ZWQg
YnkgZmluZF9zZXFubyglZDolZClcbiIsCgotOjczNzogV0FSTklORzpFTUJFRERFRF9GVU5DVElP
Tl9OQU1FOiBQcmVmZXIgdXNpbmcgJyIlcy4uLiIsIF9fZnVuY19fJyB0byB1c2luZyAnZG1hX2Zl
bmNlX2NoYWluJywgdGhpcyBmdW5jdGlvbidzIG5hbWUsIGluIGEgc3RyaW5nCiM3Mzc6IEZJTEU6
IGRyaXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UtY2hhaW4uYzo3MDA6CisJcHJfaW5mbygic2l6
ZW9mKGRtYV9mZW5jZV9jaGFpbik9JXp1XG4iLAoKdG90YWw6IDAgZXJyb3JzLCA3IHdhcm5pbmdz
LCAxIGNoZWNrcywgNzI1IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
