Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EA1C2432
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 17:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834806E04B;
	Mon, 30 Sep 2019 15:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 78F2789CE0;
 Mon, 30 Sep 2019 15:24:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 722CEA0093;
 Mon, 30 Sep 2019 15:24:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Sep 2019 15:24:06 -0000
Message-ID: <20190930152406.32574.42960@emeril.freedesktop.org>
References: <20190930110917.21194-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190930110917.21194-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Exercise_context_switching_in_parallel?=
 =?utf-8?q?l_=28rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBFeGVyY2lz
ZSBjb250ZXh0IHN3aXRjaGluZyBpbiBwYXJhbGxlbGwgKHJldjQpClVSTCAgIDogaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NzM5NS8KU3RhdGUgOiB3YXJuaW5nCgo9
PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQ3NTlmZjA3NzM1
MiBkcm0vaTkxNS9zZWxmdGVzdHM6IEV4ZXJjaXNlIGNvbnRleHQgc3dpdGNoaW5nIGluIHBhcmFs
bGVsCi06MzY6IFdBUk5JTkc6TElORV9TUEFDSU5HOiBNaXNzaW5nIGEgYmxhbmsgbGluZSBhZnRl
ciBkZWNsYXJhdGlvbnMKIzM2OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX2NvbnRleHQuYzoxNjg6CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBhcmctPmNlWzBdLT5lbmdpbmUtPmk5MTU7CisJSUdUX1RJTUVPVVQoZW5kX3RpbWUpOwoK
LTo3NzogV0FSTklORzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRl
Y2xhcmF0aW9ucwojNzc6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fY29udGV4dC5jOjIwOToKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGFyZy0+Y2VbMF0tPmVuZ2luZS0+aTkxNTsKKwlJR1RfVElNRU9VVChlbmRfdGltZSk7CgotOjEw
NzogV0FSTklORzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xh
cmF0aW9ucwojMTA3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2NvbnRleHQuYzoyMzk6CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBh
cmc7CisJc3RhdGljIGludCAoKiBjb25zdCBmdW5jW10pKHZvaWQgKmFyZykgPSB7CgotOjExNTog
V0FSTklORzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0
aW9ucwojMTE1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX2NvbnRleHQuYzoyNDc6CisJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBpdDsKKwlp
bnQgKCogY29uc3QgKmZuKSh2b2lkICphcmcpOwoKLToyMDE6IENIRUNLOkNPTVBBUklTT05fVE9f
TlVMTDogQ29tcGFyaXNvbiB0byBOVUxMIGNvdWxkIGJlIHdyaXR0ZW4gIiFkYXRhW25dLmNlWzBd
IgojMjAxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X2NvbnRleHQuYzozMzM6CisJCQlpZiAoZGF0YVtuXS5jZVswXSA9PSBOVUxMKQoKdG90YWw6IDAg
ZXJyb3JzLCA0IHdhcm5pbmdzLCAxIGNoZWNrcywgMjM3IGxpbmVzIGNoZWNrZWQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
