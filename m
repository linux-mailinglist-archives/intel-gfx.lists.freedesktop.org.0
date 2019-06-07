Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9E238718
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 11:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E4489C48;
	Fri,  7 Jun 2019 09:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B483989958;
 Fri,  7 Jun 2019 09:32:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AB34EA0071;
 Fri,  7 Jun 2019 09:32:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 07 Jun 2019 09:32:29 -0000
Message-ID: <20190607093229.32139.6182@emeril.freedesktop.org>
References: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190607082557.31670-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_Reset_only_a?=
 =?utf-8?q?ffected_engines_when_handling_error_capture?=
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
cm9yIGNhcHR1cmUKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzYxNzU4LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0
Y2ggb3JpZ2luL2RybS10aXAKOWEwNTc5MDM3MjJmIGRybS9pOTE1OiBSZXNldCBvbmx5IGFmZmVj
dGVkIGVuZ2luZXMgd2hlbiBoYW5kbGluZyBlcnJvciBjYXB0dXJlCjI0NjdiZWY2ZGMzOCBkcm0v
aTkxNTogVGlkeSBlbmdpbmUgbWFzayB0eXBlcyBpbiBoYW5nY2hlY2sKZTcxYjRkMTE1ZTYyIGRy
bS9pOTE1OiBNYWtlIEdlbjYvNyBSSU5HX0ZBVUxUX1JFRyBhY2Nlc3MgZW5naW5lIGNlbnRyaWMK
LToyMTogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAnZW5naW5l
X18nIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojMjE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZS5oOjcxOgorI2RlZmluZSBHRU42X1JJTkdfRkFVTFRfUkVHX1JF
QUQoZW5naW5lX18pIFwKKwlpbnRlbF91bmNvcmVfcmVhZCgoZW5naW5lX18pLT51bmNvcmUsIFJJ
TkdfRkFVTFRfUkVHKGVuZ2luZV9fKSkKCi06MjQ6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFj
cm8gYXJndW1lbnQgcmV1c2UgJ2VuZ2luZV9fJyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzI0
OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaDo3NDoKKyNkZWZp
bmUgR0VONl9SSU5HX0ZBVUxUX1JFR19QT1NUSU5HX1JFQUQoZW5naW5lX18pIFwKKwlpbnRlbF91
bmNvcmVfcG9zdGluZ19yZWFkKChlbmdpbmVfXyktPnVuY29yZSwgUklOR19GQVVMVF9SRUcoZW5n
aW5lX18pKQoKLToyNzogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVz
ZSAnZW5naW5lX18nIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojMjc6IEZJTEU6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oOjc3OgorI2RlZmluZSBHRU42X1JJTkdfRkFV
TFRfUkVHX1JNVyhlbmdpbmVfXywgY2xlYXJfXywgc2V0X18pIFwKKyh7IFwKKwl1MzIgX192YWw7
IFwKK1wKKwlfX3ZhbCA9IGludGVsX3VuY29yZV9yZWFkKChlbmdpbmVfXyktPnVuY29yZSwgXAor
CQkJCSAgUklOR19GQVVMVF9SRUcoZW5naW5lX18pKTsgXAorCV9fdmFsICY9IH5jbGVhcl9fOyBc
CisJX192YWwgfD0gc2V0X187IFwKKwlpbnRlbF91bmNvcmVfd3JpdGUoKGVuZ2luZV9fKS0+dW5j
b3JlLCBSSU5HX0ZBVUxUX1JFRyhlbmdpbmVfXyksIFwKKwkJCSAgIF9fdmFsKTsgXAorfSkKCi06
Mjc6IENIRUNLOk1BQ1JPX0FSR19QUkVDRURFTkNFOiBNYWNybyBhcmd1bWVudCAnY2xlYXJfXycg
bWF5IGJlIGJldHRlciBhcyAnKGNsZWFyX18pJyB0byBhdm9pZCBwcmVjZWRlbmNlIGlzc3Vlcwoj
Mjc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oOjc3OgorI2Rl
ZmluZSBHRU42X1JJTkdfRkFVTFRfUkVHX1JNVyhlbmdpbmVfXywgY2xlYXJfXywgc2V0X18pIFwK
Kyh7IFwKKwl1MzIgX192YWw7IFwKK1wKKwlfX3ZhbCA9IGludGVsX3VuY29yZV9yZWFkKChlbmdp
bmVfXyktPnVuY29yZSwgXAorCQkJCSAgUklOR19GQVVMVF9SRUcoZW5naW5lX18pKTsgXAorCV9f
dmFsICY9IH5jbGVhcl9fOyBcCisJX192YWwgfD0gc2V0X187IFwKKwlpbnRlbF91bmNvcmVfd3Jp
dGUoKGVuZ2luZV9fKS0+dW5jb3JlLCBSSU5HX0ZBVUxUX1JFRyhlbmdpbmVfXyksIFwKKwkJCSAg
IF9fdmFsKTsgXAorfSkKCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgNCBjaGVja3MsIDUy
IGxpbmVzIGNoZWNrZWQKYmNkYTdlZDkxYzAyIGRybS9pOTE1OiBFeHRyYWN0IGVuZ2luZSBmYXVs
dCByZXNldCB0byBhIGhlbHBlcgoxMzkwYjdmN2YzNWIgZHJtL2k5MTU6IFVuZXhwb3J0IGk5MTVf
Z2VtX2luaXQvZmluaV9hbGlhc2luZ19wcGd0dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
