Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D9643204
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 02:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E8C89263;
	Thu, 13 Jun 2019 00:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7A98A89263;
 Thu, 13 Jun 2019 00:31:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 736ABA0096;
 Thu, 13 Jun 2019 00:31:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shyam Saini" <shyam.saini@amarulasolutions.com>
Date: Thu, 13 Jun 2019 00:31:53 -0000
Message-ID: <20190613003153.21001.53014@emeril.freedesktop.org>
References: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190611193836.2772-1-shyam.saini@amarulasolutions.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_include=3A_linux=3A_Regularise_the_use_of_FIELD=5FSIZEOF_mac?=
 =?utf-8?q?ro?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogaW5jbHVkZTogbGludXg6IFJlZ3VsYXJpc2Ug
dGhlIHVzZSBvZiBGSUVMRF9TSVpFT0YgbWFjcm8KVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzYxOTgyLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkg
PT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKOWMxYzc5MDhkZjg4IGluY2x1ZGU6
IGxpbnV4OiBSZWd1bGFyaXNlIHRoZSB1c2Ugb2YgRklFTERfU0laRU9GIG1hY3JvCi06MTE2OiBD
SEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBw
YXJlbnRoZXNpcwojMTE2OiBGSUxFOiBmcy9iZWZzL2xpbnV4dmZzLmM6NDQyOgorCQkJCUZJRUxE
X1NJWkVPRihzdHJ1Y3QgYmVmc19pbm9kZV9pbmZvLAogCQkJCQlpX2RhdGEuc3ltbGluayksCgot
OjE1NTogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNo
IG9wZW4gcGFyZW50aGVzaXMKIzE1NTogRklMRTogZnMvZnJlZXZ4ZnMvdnhmc19zdXBlci5jOjMz
MzoKKwkJCUZJRUxEX1NJWkVPRihzdHJ1Y3Qgdnhmc19pbm9kZV9pbmZvLAogCQkJCXZpaV9pbW1l
ZC52aV9pbW1lZCksCgotOjE2ODogQ0hFQ0s6UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1l
bnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50aGVzaXMKIzE2ODogRklMRTogZnMvb3JhbmdlZnMv
c3VwZXIuYzo2NTA6CisJCQkJCUZJRUxEX1NJWkVPRihzdHJ1Y3Qgb3JhbmdlZnNfaW5vZGVfcywK
IAkJCQkJCWxpbmtfdGFyZ2V0KSwKCi06MTgxOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6
IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojMTgxOiBGSUxFOiBmcy91
ZnMvc3VwZXIuYzoxNDczOgorCQkJCUZJRUxEX1NJWkVPRihzdHJ1Y3QgdWZzX2lub2RlX2luZm8s
CiAJCQkJCWlfdTEuaV9zeW1saW5rKSwKCi06MjMyOiBDSEVDSzpNQUNST19BUkdfUFJFQ0VERU5D
RTogTWFjcm8gYXJndW1lbnQgJ3QnIG1heSBiZSBiZXR0ZXIgYXMgJyh0KScgdG8gYXZvaWQgcHJl
Y2VkZW5jZSBpc3N1ZXMKIzIzMjogRklMRTogaW5jbHVkZS9saW51eC9zdGRkZWYuaDoyOToKKyNk
ZWZpbmUgRklFTERfU0laRU9GKHQsIGYpIChzaXplb2YoKCh0ICopMCktPmYpKQoKLToyMzI6IENI
RUNLOk1BQ1JPX0FSR19QUkVDRURFTkNFOiBNYWNybyBhcmd1bWVudCAnZicgbWF5IGJlIGJldHRl
ciBhcyAnKGYpJyB0byBhdm9pZCBwcmVjZWRlbmNlIGlzc3VlcwojMjMyOiBGSUxFOiBpbmNsdWRl
L2xpbnV4L3N0ZGRlZi5oOjI5OgorI2RlZmluZSBGSUVMRF9TSVpFT0YodCwgZikgKHNpemVvZigo
KHQgKikwKS0+ZikpCgotOjM3MjogQ0hFQ0s6TUFDUk9fQVJHX1BSRUNFREVOQ0U6IE1hY3JvIGFy
Z3VtZW50ICd0JyBtYXkgYmUgYmV0dGVyIGFzICcodCknIHRvIGF2b2lkIHByZWNlZGVuY2UgaXNz
dWVzCiMzNzI6IEZJTEU6IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9icGZfdXRpbC5oOjY5
OgorI2RlZmluZSBGSUVMRF9TSVpFT0YodCwgZikgKHNpemVvZigoKHQgKikwKS0+ZikpCgotOjM3
MjogQ0hFQ0s6TUFDUk9fQVJHX1BSRUNFREVOQ0U6IE1hY3JvIGFyZ3VtZW50ICdmJyBtYXkgYmUg
YmV0dGVyIGFzICcoZiknIHRvIGF2b2lkIHByZWNlZGVuY2UgaXNzdWVzCiMzNzI6IEZJTEU6IHRv
b2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9icGZfdXRpbC5oOjY5OgorI2RlZmluZSBGSUVMRF9T
SVpFT0YodCwgZikgKHNpemVvZigoKHQgKikwKS0+ZikpCgp0b3RhbDogMCBlcnJvcnMsIDAgd2Fy
bmluZ3MsIDggY2hlY2tzLCAyNjggbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
