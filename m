Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1356CCDDDA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 11:00:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D1289D2E;
	Mon,  7 Oct 2019 09:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AA7989D2E;
 Mon,  7 Oct 2019 09:00:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23C48A3DED;
 Mon,  7 Oct 2019 09:00:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Abdiel Janulgue" <abdiel.janulgue@linux.intel.com>
Date: Mon, 07 Oct 2019 09:00:30 -0000
Message-ID: <20191007090030.14086.65999@emeril.freedesktop.org>
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_se?=
 =?utf-8?q?ries_starting_with_=5Bv2=2C5/5=5D_drm/i915=3A_Add_cpu_fault_han?=
 =?utf-8?q?dler_for_mmap=5Foffset_=28rev5=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyLDUv
NV0gZHJtL2k5MTU6IEFkZCBjcHUgZmF1bHQgaGFuZGxlciBmb3IgbW1hcF9vZmZzZXQgKHJldjUp
ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NTc5My8K
U3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTU6IEFkZCBj
cHUgZmF1bHQgaGFuZGxlciBmb3IgbW1hcF9vZmZzZXQKZXJyb3I6IHNoYTEgaW5mb3JtYXRpb24g
aXMgbGFja2luZyBvciB1c2VsZXNzIChkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jKS4KZXJyb3I6IGNvdWxkIG5vdCBidWlsZCBmYWtlIGFuY2VzdG9yCmhpbnQ6IFVzZSAn
Z2l0IGFtIC0tc2hvdy1jdXJyZW50LXBhdGNoJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaApQYXRj
aCBmYWlsZWQgYXQgMDAwMSBkcm0vaTkxNTogQWRkIGNwdSBmYXVsdCBoYW5kbGVyIGZvciBtbWFw
X29mZnNldApXaGVuIHlvdSBoYXZlIHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQgYW0g
LS1jb250aW51ZSIuCklmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4gImdpdCBh
bSAtLXNraXAiIGluc3RlYWQuClRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5jaCBhbmQgc3Rv
cCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
