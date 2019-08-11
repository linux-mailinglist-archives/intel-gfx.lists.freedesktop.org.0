Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C400892A4
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 18:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F35986E382;
	Sun, 11 Aug 2019 16:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB73F6E37F;
 Sun, 11 Aug 2019 16:38:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4C50A0118;
 Sun, 11 Aug 2019 16:38:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 11 Aug 2019 16:38:42 -0000
Message-ID: <20190811163842.32131.8237@emeril.freedesktop.org>
References: <20190810153430.30636-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190810153430.30636-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5Bv5=5D_dma-fence=3A_Propagate_errors_to_dma-?=
 =?utf-8?q?fence-array_container_=28rev6=29?=
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
cmV2NikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1
MDI3LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkbWEtZmVuY2U6
IFByb3BhZ2F0ZSBlcnJvcnMgdG8gZG1hLWZlbmNlLWFycmF5IGNvbnRhaW5lcgpBcHBseWluZzog
ZG1hLWZlbmNlOiBSZXBvcnQgdGhlIGNvbXBvc2l0ZSBzeW5jX2ZpbGUgc3RhdHVzCkFwcGx5aW5n
OiBkbWEtZmVuY2U6IFJlZmFjdG9yIHNpZ25hbGluZyBmb3IgbWFudWFsIGludm9jYXRpb24KQXBw
bHlpbmc6IGRtYS1mZW5jZTogSGF2ZSBkbWFfZmVuY2Vfc2lnbmFsIGNhbGwgc2lnbmFsX2xvY2tl
ZApVc2luZyBpbmRleCBpbmZvIHRvIHJlY29uc3RydWN0IGEgYmFzZSB0cmVlLi4uCk0JZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAz
LXdheSBtZXJnZS4uLgpBdXRvLW1lcmdpbmcgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCkNP
TkZMSUNUIChjb250ZW50KTogTWVyZ2UgY29uZmxpY3QgaW4gZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jCmVycm9yOiBGYWlsZWQgdG8gbWVyZ2UgaW4gdGhlIGNoYW5nZXMuCmhpbnQ6IFVzZSAn
Z2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRj
aCBmYWlsZWQgYXQgMDAwNCBkbWEtZmVuY2U6IEhhdmUgZG1hX2ZlbmNlX3NpZ25hbCBjYWxsIHNp
Z25hbF9sb2NrZWQKV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0
IGFtIC0tY29udGludWUiLgpJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJn
aXQgYW0gLS1za2lwIiBpbnN0ZWFkLgpUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5k
IHN0b3AgcGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
