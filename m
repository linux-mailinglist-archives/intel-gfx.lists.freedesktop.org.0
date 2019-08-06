Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 652AE82CDF
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 09:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1B16E311;
	Tue,  6 Aug 2019 07:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 863F488089;
 Tue,  6 Aug 2019 07:35:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C8ACA010A;
 Tue,  6 Aug 2019 07:35:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Masahiro Yamada" <yamada.masahiro@socionext.com>
Date: Tue, 06 Aug 2019 07:35:46 -0000
Message-ID: <20190806073546.1118.63915@emeril.freedesktop.org>
References: <20190806063923.1266-1-yamada.masahiro@socionext.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190806063923.1266-1-yamada.masahiro@socionext.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_kbui?=
 =?utf-8?q?ld=3A_allow_big_modules_to_sub-divide_Makefiles?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczoga2J1aWxkOiBhbGxvdyBiaWcgbW9kdWxlcyB0
byBzdWItZGl2aWRlIE1ha2VmaWxlcwpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjQ3NDUvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBw
bHlpbmc6IGtidWlsZDogdHJlYXQgYW4gb2JqZWN0IGFzIG11bHRpLXVzZWQgd2hlbiAkKGZvby0p
IGlzIHNldApBcHBseWluZzoga2J1aWxkOiBjbGVhbiB1cCBtb2RuYW1lIGNhbGN1bGF0aW9uCkFw
cGx5aW5nOiBrYnVpbGQ6IHJlbmFtZSBjbWRfYXJfYnVpbHRpbiB0byBjbWRfYXJfbm9fc3ltCkFw
cGx5aW5nOiBrYnVpbGQ6IHN1cHBvcnQgY29tcG9zaXRlIG9iamVjdHMgc3Bhbm5pbmcgYWNyb3Nz
IG11bHRpcGxlIE1ha2VmaWxlcwpBcHBseWluZzogZHJtOiBpOTE1OiBoaWVyYWNoaXplIE1ha2Vm
aWxlcwpVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L01ha2VmaWxlCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL01ha2VmaWxlCk0JZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvTWFrZWZpbGUKRmFsbGluZyBiYWNrIHRvIHBhdGNoaW5nIGJhc2UgYW5k
IDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9NYWtl
ZmlsZQpDT05GTElDVCAoY29udGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L01ha2VmaWxlCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
TWFrZWZpbGUKQ09ORkxJQ1QgKGNvbnRlbnQpOiBNZXJnZSBjb25mbGljdCBpbiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUKQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvTWFrZWZpbGUKQ09ORkxJQ1QgKGNvbnRlbnQpOiBNZXJnZSBjb25mbGljdCBpbiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L01ha2VmaWxlCkF1dG8tbWVyZ2luZyBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpDT05GTElDVCAoY29udGVudCk6IE1lcmdlIGNvbmZsaWN0
IGluIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmVycm9yOiBGYWlsZWQgdG8gbWVyZ2Ug
aW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0
byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwNSBkcm06IGk5MTU6IGhp
ZXJhY2hpemUgTWFrZWZpbGVzCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBy
dW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gs
IHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJh
bmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
