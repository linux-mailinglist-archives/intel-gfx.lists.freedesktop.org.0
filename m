Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A50956C13C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 20:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A4C6E294;
	Wed, 17 Jul 2019 18:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C35506E294;
 Wed, 17 Jul 2019 18:59:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9205A3C0D;
 Wed, 17 Jul 2019 18:59:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 17 Jul 2019 18:59:29 -0000
Message-ID: <20190717185929.6887.71124@emeril.freedesktop.org>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_MCR_fixes_and_more?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogTUNSIGZpeGVzIGFuZCBtb3JlClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MzgzMS8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjUz
MDQ4ZjM5ZGRkMCBkcm0vaTkxNTogRml4IEdFTjhfTUNSX1NFTEVDVE9SIHByb2dyYW1taW5nCjk4
NzRlMzQ5MzFhZSBkcm0vaTkxNTogVHJ1c3QgcHJvZ3JhbW1lZCBNQ1IgaW4gcmVhZF9zdWJzbGlj
ZV9yZWcKLTo1OTogQ0hFQ0s6TVVMVElQTEVfQVNTSUdOTUVOVFM6IG11bHRpcGxlIGFzc2lnbm1l
bnRzIHNob3VsZCBiZSBhdm9pZGVkCiM1OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmM6MTAxMjoKKwlvbGRfbWNyID0gbWNyID0gaW50ZWxfdW5jb3JlX3Jl
YWRfZncodW5jb3JlLCBHRU44X01DUl9TRUxFQ1RPUik7Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2Fy
bmluZ3MsIDEgY2hlY2tzLCA2NSBsaW5lcyBjaGVja2VkCjA1OTg4ZDI2OTNlMyBkcm0vaTkxNTog
Rml4IGFuZCBpbXByb3ZlIE1DUiBzZWxlY3Rpb24gbG9naWMKNDc4Mjc2MTQwNzI5IGRybS9pOTE1
OiBTa2lwIENTIHZlcmlmaWNhdGlvbiBvZiBMMyBiYW5rIHJlZ2lzdGVycwo2OWM4ZjRhNzdhNjIg
ZHJtL2k5MTUvaWNsOiBWZXJpZnkgZW5naW5lIHdvcmthcm91bmRzIGluIEdFTjhfTDNTUUNSRUc0
CmQzMDY4YjNhYzc5ZiBkcm0vaTkxNS9pY2w6IEFkZCBXYV8xNDA5MTc4MDkyCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
