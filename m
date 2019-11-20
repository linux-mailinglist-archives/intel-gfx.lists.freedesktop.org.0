Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 349D5103EC5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 16:31:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D01F6E7D4;
	Wed, 20 Nov 2019 15:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49BDF6E7C0;
 Wed, 20 Nov 2019 15:31:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42931A0093;
 Wed, 20 Nov 2019 15:31:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 20 Nov 2019 15:31:19 -0000
Message-ID: <157426387926.19985.11016113490085842256@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_mo?=
 =?utf-8?q?re_dma-buf_lockdep_priming_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogbW9yZSBkbWEtYnVmIGxvY2tkZXAgcHJpbWlu
ZyAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzY5Njk1LwpTdGF0ZSA6IGZhaWx1cmUKCj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkcm0vbW9k
ZXNldDogUHJpbWUgbW9kZXNldCBsb2NrIHZzIGRtYV9yZXN2CkFwcGx5aW5nOiBkbWEtcmVzdjog
QWxzbyBwcmltZSBhY3F1aXJlIGN0eCBmb3IgbG9ja2RlcAplcnJvcjogc2hhMSBpbmZvcm1hdGlv
biBpcyBsYWNraW5nIG9yIHVzZWxlc3MgKGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jKS4KZXJy
b3I6IGNvdWxkIG5vdCBidWlsZCBmYWtlIGFuY2VzdG9yCmhpbnQ6IFVzZSAnZ2l0IGFtIC0tc2hv
dy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRjaCBmYWlsZWQgYXQg
MDAwMiBkbWEtcmVzdjogQWxzbyBwcmltZSBhY3F1aXJlIGN0eCBmb3IgbG9ja2RlcApXaGVuIHlv
dSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklm
IHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3Rl
YWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVu
ICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
