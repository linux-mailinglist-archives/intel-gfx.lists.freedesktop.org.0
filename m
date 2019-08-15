Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89ACB8F468
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 21:22:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBCEE6EA53;
	Thu, 15 Aug 2019 19:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D01D6EA51;
 Thu, 15 Aug 2019 19:22:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9381BA47DB;
 Thu, 15 Aug 2019 19:22:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 15 Aug 2019 19:22:24 -0000
Message-ID: <20190815192224.31004.12790@emeril.freedesktop.org>
References: <20190810153430.30636-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190810153430.30636-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5Bv5=5D_dma-fence=3A_Propagate_errors_to_dma-?=
 =?utf-8?q?fence-array_container_=28rev7=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y1XSBk
bWEtZmVuY2U6IFByb3BhZ2F0ZSBlcnJvcnMgdG8gZG1hLWZlbmNlLWFycmF5IGNvbnRhaW5lciAo
cmV2NykKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1
MDI3LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkbWEtZmVuY2U6
IFByb3BhZ2F0ZSBlcnJvcnMgdG8gZG1hLWZlbmNlLWFycmF5IGNvbnRhaW5lcgpVc2luZyBpbmRl
eCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS1hcnJheS5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBt
ZXJnZS4uLgpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkgYXBwbGllZC4KQXBwbHlpbmc6IGRt
YS1mZW5jZTogUmVwb3J0IHRoZSBjb21wb3NpdGUgc3luY19maWxlIHN0YXR1cwpVc2luZyBpbmRl
eCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVycy9kbWEtYnVmL3N5
bmNfZmlsZS5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJnZS4u
LgpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkgYXBwbGllZC4KQXBwbHlpbmc6IGRtYS1mZW5j
ZTogUmVmYWN0b3Igc2lnbmFsaW5nIGZvciBtYW51YWwgaW52b2NhdGlvbgpVc2luZyBpbmRleCBp
bmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVycy9kbWEtYnVmL01ha2Vm
aWxlCk0JZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfYnJlYWRjcnVtYnMuYwpNCWluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgKRmFsbGlu
ZyBiYWNrIHRvIHBhdGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCkF1dG8tbWVyZ2luZyBp
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9icmVhZGNydW1icy5jCkF1dG8tbWVyZ2luZyBkcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLmMKQXV0by1tZXJnaW5nIGRyaXZlcnMvZG1hLWJ1Zi9NYWtlZmlsZQpDT05GTElDVCAo
Y29udGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIGRyaXZlcnMvZG1hLWJ1Zi9NYWtlZmlsZQplcnJv
cjogRmFpbGVkIHRvIG1lcmdlIGluIHRoZSBjaGFuZ2VzLgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNo
b3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0
IDAwMDMgZG1hLWZlbmNlOiBSZWZhY3RvciBzaWduYWxpbmcgZm9yIG1hbnVhbCBpbnZvY2F0aW9u
CldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9ibGVtLCBydW4gImdpdCBhbSAtLWNvbnRp
bnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMgcGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tp
cCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNo
aW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
