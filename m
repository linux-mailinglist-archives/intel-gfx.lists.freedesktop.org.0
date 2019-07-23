Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8FF71841
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 14:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946896E1CE;
	Tue, 23 Jul 2019 12:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDCDA6E1B7;
 Tue, 23 Jul 2019 12:30:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5621A011B;
 Tue, 23 Jul 2019 12:30:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 23 Jul 2019 12:30:09 -0000
Message-ID: <20190723123009.27089.10507@emeril.freedesktop.org>
References: <20190723111913.20475-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190723111913.20475-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_mei=3A_Abort_writes_if_incomplete_after_1s?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogbWVpOiBBYm9ydCB3cml0ZXMgaWYgaW5jb21w
bGV0ZSBhZnRlciAxcwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjQwNzMvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2tw
YXRjaCBvcmlnaW4vZHJtLXRpcAo5NmFkOWQyYWI4NzYgbWVpOiBBYm9ydCB3cml0ZXMgaWYgaW5j
b21wbGV0ZSBhZnRlciAxcwotOjEwOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5FOiBQb3Nz
aWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVtIDc1IGNo
YXJzIHBlciBsaW5lKQojMTA6IAo8Mz4gWzMwOC41NDQ5NDNdIElORk86IHRhc2sgaTkxNV9tb2R1
bGVfbG9hOjI2MTIgYmxvY2tlZCBmb3IgbW9yZSB0aGFuIDYxIHNlY29uZHMuCgotOjcyOiBDSEVD
SzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJl
bnRoZXNpcwojNzI6IEZJTEU6IGRyaXZlcnMvbWlzYy9tZWkvYnVzLmM6NzA6CisJCXJldHMgPSB3
YWl0X2V2ZW50X2ludGVycnVwdGlibGVfdGltZW91dChjbC0+dHhfd2FpdCwKIAkJCQljbC0+d3Jp
dGluZ19zdGF0ZSA9PSBNRUlfV1JJVEVfQ09NUExFVEUgfHwKCi06MTAwOiBDSEVDSzpQQVJFTlRI
RVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwoj
MTAwOiBGSUxFOiBkcml2ZXJzL21pc2MvbWVpL2NsaWVudC5jOjE3NzE6CisJCXJldHMgPSB3YWl0
X2V2ZW50X2ludGVycnVwdGlibGVfdGltZW91dChjbC0+dHhfd2FpdCwKIAkJCQljbC0+d3JpdGlu
Z19zdGF0ZSA9PSBNRUlfV1JJVEVfQ09NUExFVEUgfHwKCi06MTE3OiBDSEVDSzpQQVJFTlRIRVNJ
U19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMTE3
OiBGSUxFOiBkcml2ZXJzL21pc2MvbWVpL21haW4uYzoyOTg6CisJCXJldHMgPSB3YWl0X2V2ZW50
X2ludGVycnVwdGlibGVfdGltZW91dChjbC0+dHhfd2FpdCwKIAkJCQljbC0+d3JpdGluZ19zdGF0
ZSA9PSBNRUlfV1JJVEVfQ09NUExFVEUgfHwKCi06MTQxOiBDSEVDSzpQQVJFTlRIRVNJU19BTElH
Tk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMTQxOiBGSUxF
OiBkcml2ZXJzL21pc2MvbWVpL21haW4uYzo2Njc6CisJCXJldHMgPSB3YWl0X2V2ZW50X2ludGVy
cnVwdGlibGVfdGltZW91dChjbC0+dHhfd2FpdCwKIAkJCQljbC0+d3JpdGluZ19zdGF0ZSA9PSBN
RUlfV1JJVEVfQ09NUExFVEUgfHwKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgNCBjaGVj
a3MsIDc4IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
