Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 904FA50E8B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 16:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A6F289C18;
	Mon, 24 Jun 2019 14:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 097CF89BF0;
 Mon, 24 Jun 2019 14:36:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D529FA47E1;
 Mon, 24 Jun 2019 14:36:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 24 Jun 2019 14:36:13 -0000
Message-ID: <20190624143613.1476.80701@emeril.freedesktop.org>
References: <20190624135839.1661-1-christian.koenig@amd.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190624135839.1661-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5B1/6=5D_dma-buf=3A_add_dynamic_DMA-buf_handl?=
 =?utf-8?q?ing_v11?=
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
ZG1hLWJ1ZjogYWRkIGR5bmFtaWMgRE1BLWJ1ZiBoYW5kbGluZyB2MTEKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNjQ0LwpTdGF0ZSA6IGZhaWx1cmUK
Cj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkbWEtYnVmOiBhZGQgZHluYW1pYyBETUEtYnVmIGhh
bmRsaW5nIHYxMQpBcHBseWluZzogZHJtL3R0bTogcmVtb3ZlIHRoZSBiYWNraW5nIHN0b3JlIGlm
IG5vIHBsYWNlbWVudCBpcyBnaXZlbgpBcHBseWluZzogZHJtL3R0bTogdXNlIHRoZSBwYXJlbnQg
cmVzdiBmb3IgZ2hvc3Qgb2JqZWN0cyB2MgpBcHBseWluZzogZHJtL2FtZGdwdTogdXNlIGFsbG93
ZWRfZG9tYWlucyBmb3IgZXhwb3J0ZWQgRE1BLWJ1ZnMKQXBwbHlpbmc6IGRybS9hbWRncHU6IGFk
ZCBpbmRlcGVuZGVudCBETUEtYnVmIGV4cG9ydCB2NgpBcHBseWluZzogZHJtL2FtZGdwdTogYWRk
IGluZGVwZW5kZW50IERNQS1idWYgaW1wb3J0IHY3ClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25z
dHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZG1hX2J1Zi5jCk0JZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuaApN
CWRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYwpGYWxsaW5nIGJhY2sgdG8g
cGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYwpBdXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuaApDT05GTElDVCAoY29udGVudCk6IE1lcmdlIGNv
bmZsaWN0IGluIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmgKQXV0
by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMKZXJy
b3I6IEZhaWxlZCB0byBtZXJnZSBpbiB0aGUgY2hhbmdlcy4KaGludDogVXNlICdnaXQgYW0gLS1z
aG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoClBhdGNoIGZhaWxlZCBh
dCAwMDA2IGRybS9hbWRncHU6IGFkZCBpbmRlcGVuZGVudCBETUEtYnVmIGltcG9ydCB2NwpXaGVu
IHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0gLS1jb250aW51ZSIu
CklmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGlu
c3RlYWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywg
cnVuICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
