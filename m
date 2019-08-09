Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 391E787B1E
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 15:27:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A81096EE06;
	Fri,  9 Aug 2019 13:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E0C66EE05;
 Fri,  9 Aug 2019 13:27:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47AB1A0084;
 Fri,  9 Aug 2019 13:27:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
Date: Fri, 09 Aug 2019 13:27:44 -0000
Message-ID: <20190809132744.30611.14072@emeril.freedesktop.org>
References: <20190806150134.104222-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190806150134.104222-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/8=5D_dma-buf=3A_fix_busy_wait_for_new_sha?=
 =?utf-8?q?red_fences?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvOF0g
ZG1hLWJ1ZjogZml4IGJ1c3kgd2FpdCBmb3IgbmV3IHNoYXJlZCBmZW5jZXMKVVJMICAgOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0OTUxLwpTdGF0ZSA6IGZhaWx1
cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkbWEtYnVmOiBmaXggYnVzeSB3YWl0IGZvciBu
ZXcgc2hhcmVkIGZlbmNlcwpVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0
cmVlLi4uCk0JZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMKRmFsbGluZyBiYWNrIHRvIHBh
dGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2RtYS1i
dWYvcmVzZXJ2YXRpb24uYwpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkgYXBwbGllZC4KQXBw
bHlpbmc6IGRtYS1idWY6IGZpeCBzaGFyZWQgZmVuY2UgbGlzdCBoYW5kbGluZyBpbiByZXNlcnZh
dGlvbl9vYmplY3RfY29weV9mZW5jZXMKVXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBh
IGJhc2UgdHJlZS4uLgpNCWRyaXZlcnMvZG1hLWJ1Zi9yZXNlcnZhdGlvbi5jCkZhbGxpbmcgYmFj
ayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJnZS4uLgpBdXRvLW1lcmdpbmcgZHJpdmVy
cy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMKTm8gY2hhbmdlcyAtLSBQYXRjaCBhbHJlYWR5IGFwcGxp
ZWQuCkFwcGx5aW5nOiBkcm0vaTkxNTogc3RvcCB1c2luZyBzZXFjb3VudCBmb3IgZmVuYyBwcnVu
aW5nClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCkZhbGxpbmcgYmFjayB0byBwYXRj
aGluZyBiYXNlIGFuZCAzLXdheSBtZXJnZS4uLgpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkg
YXBwbGllZC4KQXBwbHlpbmc6IGRybS9pOTE1OiB1c2UgbmV3IHJlc2VydmF0aW9uX29iamVjdF9m
ZW5jZXMgaGVscGVyCkFwcGx5aW5nOiBkbWEtYnVmOiBmdXJ0aGVyIHJlbGF4IHJlc2VydmF0aW9u
X29iamVjdF9hZGRfc2hhcmVkX2ZlbmNlCkFwcGx5aW5nOiBkbWEtYnVmOiBzaW1wbGlmeSByZXNl
cnZhdGlvbl9vYmplY3RfZ2V0X2ZlbmNlc19yY3UgYSBiaXQKZXJyb3I6IHNoYTEgaW5mb3JtYXRp
b24gaXMgbGFja2luZyBvciB1c2VsZXNzIChkcml2ZXJzL2RtYS1idWYvcmVzZXJ2YXRpb24uYyku
CmVycm9yOiBjb3VsZCBub3QgYnVpbGQgZmFrZSBhbmNlc3RvcgpoaW50OiBVc2UgJ2dpdCBhbSAt
LXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVk
IGF0IDAwMDYgZG1hLWJ1Zjogc2ltcGxpZnkgcmVzZXJ2YXRpb25fb2JqZWN0X2dldF9mZW5jZXNf
cmN1IGEgYml0CldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBh
bSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0
IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBz
dG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
