Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF5E1BF50
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 00:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2609E890B1;
	Mon, 13 May 2019 22:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75CC3890B1;
 Mon, 13 May 2019 22:00:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B653A0088;
 Mon, 13 May 2019 22:00:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <John.C.Harrison@Intel.com>
Date: Mon, 13 May 2019 22:00:33 -0000
Message-ID: <20190513220033.3912.76288@emeril.freedesktop.org>
References: <20190513210904.5824-1-John.C.Harrison@Intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190513210904.5824-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Engine_relative_MMIO_=28rev6=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEVuZ2luZSByZWxhdGl2ZSBN
TUlPIChyZXY2KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvNTcxMTcvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRj
aCBvcmlnaW4vZHJtLXRpcAoxZDBlMDIwZWE4NTAgZHJtL2k5MTU6IEVuZ2luZSByZWxhdGl2ZSBN
TUlPCi06OTA6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJyon
IChjdHg6VnhWKQojOTA6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9j
b21tYW5kcy5oOjEzMDoKKyNkZWZpbmUgX19NSV9MT0FEX1JFR0lTVEVSX0lNTSh4KQlNSV9JTlNU
UigweDIyLCAyKih4KS0xKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCSAgICAg
ICAgICAgICAgICBeCgotOjkwOiBDSEVDSzpTUEFDSU5HOiBzcGFjZXMgcHJlZmVycmVkIGFyb3Vu
ZCB0aGF0ICctJyAoY3R4OlZ4VikKIzkwOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ncHVfY29tbWFuZHMuaDoxMzA6CisjZGVmaW5lIF9fTUlfTE9BRF9SRUdJU1RFUl9JTU0o
eCkJTUlfSU5TVFIoMHgyMiwgMiooeCktMSkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAkgICAgICAgICAgICAgICAgICAgIF4KCi06OTI6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBw
cmVmZXJyZWQgYXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzkyOiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaDoxMzI6CisjZGVmaW5lICAgTUlfTFJJ
X0FERF9DU19NTUlPX1NUQVJUX0dFTjExCSgxPDwxOSkKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAJICBeCgotOjM3OTogQ0hFQ0s6U1BBQ0lORzogc3BhY2VzIHByZWZl
cnJlZCBhcm91bmQgdGhhdCAnLycgKGN0eDpWeFYpCiMzNzk6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYzoxNjk5OgorCSpjcysrID0gaTkxNV9nZXRfbHJp
X2NtZChycS0+ZW5naW5lLCBHRU43X0wzTE9HX1NJWkUvNCk7CiAJICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KCi06NDM0OiBDSEVDSzpDQU1FTENB
U0U6IEF2b2lkIENhbWVsQ2FzZTogPHJlZ0xSST4KIzQzNDogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYzo0NDU6CisJCXUzMiByZWdMUkkgPSBpOTE1
X2dldF9scmlfcmVnKGVuZ2luZSwgZW5naW5lLT53aGl0ZWxpc3QubGlzdFtpXS5yZWcpOwoKLTo1
Mjg6IEVSUk9SOlNQQUNJTkc6IHNwYWNlIHByb2hpYml0ZWQgYWZ0ZXIgdGhhdCBvcGVuIHBhcmVu
dGhlc2lzICcoJwojNTI4OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJz
ZXIuYzoyMjQ6CisJQ01EKCAgX19NSV9MT0FEX1JFR0lTVEVSX0lNTSgxKSwgICAgICAgIFNNSSwg
ICAhRiwgIDB4RkYsICAgVywKCi06NTI5OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFs
aWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNTI5OiBGSUxFOiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYzoyMjU6CisJQ01EKCAgX19NSV9MT0FEX1JF
R0lTVEVSX0lNTSgxKSwgICAgICAgIFNNSSwgICAhRiwgIDB4RkYsICAgVywKIAkgICAgICAucmVn
ID0geyAub2Zmc2V0ID0gMSwgLm1hc2sgPSAweDAwN0ZGRkZDLCAuc3RlcCA9IDIgfSAgICApLAoK
dG90YWw6IDEgZXJyb3JzLCAwIHdhcm5pbmdzLCA2IGNoZWNrcywgNTE0IGxpbmVzIGNoZWNrZWQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
