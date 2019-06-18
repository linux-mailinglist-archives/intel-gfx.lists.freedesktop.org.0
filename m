Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7C74A5EF
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 17:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A576E175;
	Tue, 18 Jun 2019 15:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6D6E16E175;
 Tue, 18 Jun 2019 15:56:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66E7BA00EA;
 Tue, 18 Jun 2019 15:56:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Date: Tue, 18 Jun 2019 15:56:04 -0000
Message-ID: <20190618155604.30451.4256@emeril.freedesktop.org>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_prim?=
 =?utf-8?q?e_doc_polish_and_=2E=2E=2E_a_few_cleanups_=28rev6=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogcHJpbWUgZG9jIHBvbGlzaCBhbmQgLi4uIGEg
ZmV3IGNsZWFudXBzIChyZXY2KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvNjIxMzUvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQXBwbHlp
bmc6IGRybS90b2RvOiBVcGRhdGUgZHJtX2dlbV9vYmplY3RfZnVuY3MgdG9kbyBldmVuIG1vcmUK
QXBwbHlpbmc6IGRybS9nZW06IFVuZXhwb3J0IGRybV9nZW1fKHVuKXBpbi92KHVuKW1hcApVc2lu
ZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW0uYwpNCWRyaXZlcnMvZ3B1L2RybS9kcm1faW50ZXJuYWwuaApNCWluY2x1ZGUv
ZHJtL2RybV9nZW0uaApGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVy
Z2UuLi4KTm8gY2hhbmdlcyAtLSBQYXRjaCBhbHJlYWR5IGFwcGxpZWQuCkFwcGx5aW5nOiBkcm0v
cHJpbWU6IFVwZGF0ZSBkb2NzCmVycm9yOiBzaGExIGluZm9ybWF0aW9uIGlzIGxhY2tpbmcgb3Ig
dXNlbGVzcyAoZHJpdmVycy9ncHUvZHJtL2RybV9wcmltZS5jKS4KZXJyb3I6IGNvdWxkIG5vdCBi
dWlsZCBmYWtlIGFuY2VzdG9yCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNo
JyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQgMDAwMyBkcm0vcHJpbWU6
IFVwZGF0ZSBkb2NzCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdp
dCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAi
Z2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFu
ZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
