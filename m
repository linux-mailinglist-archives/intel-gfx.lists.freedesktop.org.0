Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E5D10CA16
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 15:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9736E825;
	Thu, 28 Nov 2019 14:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CED06E820;
 Thu, 28 Nov 2019 14:05:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44414A0073;
 Thu, 28 Nov 2019 14:05:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 Nov 2019 14:05:07 -0000
Message-ID: <157494990727.21452.8533544259908260192@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191128113424.3885958-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191128113424.3885958-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/gem=3A_Excise_the_per-batch_whitelist_from_the_context_?=
 =?utf-8?b?KHJldjIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VtOiBFeGNpc2UgdGhlIHBl
ci1iYXRjaCB3aGl0ZWxpc3QgZnJvbSB0aGUgY29udGV4dCAocmV2MikKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMDQwLwpTdGF0ZSA6IGZhaWx1cmUK
Cj09IFN1bW1hcnkgPT0KCkFwcGx5aW5nOiBkcm0vaTkxNS9nZW06IEV4Y2lzZSB0aGUgcGVyLWJh
dGNoIHdoaXRlbGlzdCBmcm9tIHRoZSBjb250ZXh0ClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25z
dHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y29udGV4dC5jCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlw
ZXMuaApNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jCkZhbGxpbmcgYmFj
ayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJnZS4uLgpBdXRvLW1lcmdpbmcgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmMKQ09ORkxJQ1QgKGNvbnRlbnQpOiBNZXJn
ZSBjb25mbGljdCBpbiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYwplcnJv
cjogRmFpbGVkIHRvIG1lcmdlIGluIHRoZSBjaGFuZ2VzLgpoaW50OiBVc2UgJ2dpdCBhbSAtLXNo
b3ctY3VycmVudC1wYXRjaCcgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gKUGF0Y2ggZmFpbGVkIGF0
IDAwMDEgZHJtL2k5MTUvZ2VtOiBFeGNpc2UgdGhlIHBlci1iYXRjaCB3aGl0ZWxpc3QgZnJvbSB0
aGUgY29udGV4dApXaGVuIHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQg
YW0gLS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdp
dCBhbSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQg
c3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
