Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C1F8A572
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 20:13:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C00D89C46;
	Mon, 12 Aug 2019 18:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 509DE89C46
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 18:13:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17973294-1500050 for multiple; Mon, 12 Aug 2019 19:13:06 +0100
MIME-Version: 1.0
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190812175405.14479-1-jose.souza@intel.com>
References: <20190812175405.14479-1-jose.souza@intel.com>
Message-ID: <156563358435.2301.14514442251909819406@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 12 Aug 2019 19:13:04 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix missing parentheses on
 TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKb3PDqSBSb2JlcnRvIGRlIFNvdXphICgyMDE5LTA4LTEyIDE4OjU0OjA1KQo+IElu
IHRoaXMgY2FzZSB3ZSB3YW50IHRvIGFwcGx5IHRoZSBtYXNrIGFuZCB0aGVuIHNoaWZ0IHNvIHRo
ZQo+IHBhcmVudGhlc2VzIGlzIG5lZWRlZC4KPiAKPiBTUEFOSyEgU1BBTkshIFNQQU5LISBOYXVn
aHR5IHByb2dyYW1tZXIhCj4gCj4gRml4ZXM6IDk3NDlhNWI2YzA5ZiAoImRybS9pOTE1L3RnbDog
Rml4IHRoZSByZWFkIG9mIHRoZSBEREkgdGhhdCB0cmFuc2NvZGVyIGlzIGF0dGFjaGVkIHRvIikK
PiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBp
bmRleCA0YTk0N2JkMGEyOTQuLmRlZjZkYmRjN2UyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAo+IEBAIC05NDMzLDcgKzk0MzMsNyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPiAgI2Rl
ZmluZSAgVFJBTlNfRERJX1NFTEVDVF9QT1JUKHgpICAgICAgKCh4KSA8PCBUUkFOU19ERElfUE9S
VF9TSElGVCkKPiAgI2RlZmluZSAgVEdMX1RSQU5TX0RESV9TRUxFQ1RfUE9SVCh4KSAgKCgoeCkg
KyAxKSA8PCBUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQpCj4gICNkZWZpbmUgIFRSQU5TX0RESV9G
VU5DX0NUTF9WQUxfVE9fUE9SVCh2YWwpICAgICgoKHZhbCkgJiBUUkFOU19ERElfUE9SVF9NQVNL
KSA+PiBUUkFOU19ERElfUE9SVF9TSElGVCkKPiAtI2RlZmluZSAgVEdMX1RSQU5TX0RESV9GVU5D
X0NUTF9WQUxfVE9fUE9SVCh2YWwpICgoKHZhbCkgJiBUR0xfVFJBTlNfRERJX1BPUlRfTUFTSyA+
PiBUR0xfVFJBTlNfRERJX1BPUlRfU0hJRlQpIC0gMSkKPiArI2RlZmluZSAgVEdMX1RSQU5TX0RE
SV9GVU5DX0NUTF9WQUxfVE9fUE9SVCh2YWwpICgoKCh2YWwpICYgVEdMX1RSQU5TX0RESV9QT1JU
X01BU0spID4+IFRHTF9UUkFOU19ERElfUE9SVF9TSElGVCkgLSAxKQoKVGhhdCBtYWtlcyB0aGUg
bW9zdCBzZW5zZSBpbiB0aGUgcG9zc2libGUgdmFyaWF0aW9ucyBvZiAoOikKUmV2aWV3ZWQtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
