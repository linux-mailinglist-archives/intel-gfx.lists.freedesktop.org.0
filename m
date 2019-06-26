Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 643F656940
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 14:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7E16E40E;
	Wed, 26 Jun 2019 12:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 99BCE6E40E;
 Wed, 26 Jun 2019 12:34:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48C67A0119;
 Wed, 26 Jun 2019 12:34:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel@ffwll.ch>
Date: Wed, 26 Jun 2019 12:34:47 -0000
Message-ID: <20190626123447.9079.37619@emeril.freedesktop.org>
References: <20190625124654.122364-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190625124654.122364-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/6=5D_dma-buf=3A_add_dynamic_DMA-buf_handl?=
 =?utf-8?q?ing_v12_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNl0g
ZG1hLWJ1ZjogYWRkIGR5bmFtaWMgRE1BLWJ1ZiBoYW5kbGluZyB2MTIgKHJldjIpClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjcwMy8KU3RhdGUgOiBm
YWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZG1hLWJ1ZjogYWRkIGR5bmFtaWMgRE1B
LWJ1ZiBoYW5kbGluZyB2MTIKZXJyb3I6IHBhdGNoIGZhaWxlZDogaW5jbHVkZS9kcm0vdHRtL3R0
bV9ib19hcGkuaDoyMTQKZXJyb3I6IGluY2x1ZGUvZHJtL3R0bS90dG1fYm9fYXBpLmg6IHBhdGNo
IGRvZXMgbm90IGFwcGx5CmVycm9yOiBwYXRjaCBmYWlsZWQ6IGluY2x1ZGUvbGludXgvcmVzZXJ2
YXRpb24uaDo3NAplcnJvcjogaW5jbHVkZS9saW51eC9yZXNlcnZhdGlvbi5oOiBwYXRjaCBkb2Vz
IG5vdCBhcHBseQplcnJvcjogRGlkIHlvdSBoYW5kIGVkaXQgeW91ciBwYXRjaD8KSXQgZG9lcyBu
b3QgYXBwbHkgdG8gYmxvYnMgcmVjb3JkZWQgaW4gaXRzIGluZGV4LgpoaW50OiBVc2UgJ2dpdCBh
bSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKVXNpbmcgaW5k
ZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLgpQYXRjaCBmYWlsZWQgYXQgMDAw
MSBkbWEtYnVmOiBhZGQgZHluYW1pYyBETUEtYnVmIGhhbmRsaW5nIHYxMgpXaGVuIHlvdSBoYXZl
IHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIuCklmIHlvdSBw
cmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuClRv
IHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQg
YW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
