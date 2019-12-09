Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57851117013
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 16:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C816E49D;
	Mon,  9 Dec 2019 15:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCC816E49D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 15:14:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19514392-1500050 for multiple; Mon, 09 Dec 2019 15:14:09 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191209150137.18578-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191209150137.18578-1-ville.syrjala@linux.intel.com>
Message-ID: <157590444829.6399.3246113185824774519@skylake-alporthouse-com>
Date: Mon, 09 Dec 2019 15:14:08 +0000
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel 1/2] sna: Fix dirtyfb
 detection
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTEyLTA5IDE1OjAxOjM2KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gRml4IHRoZSBh
Y2NpZGVudGFsbHkgc3dhcHBlZCBicHAgYW5kIGRlcHRoIHZhbHVlcyBwYXNzZWQgdG8KPiB0aGUg
YWRkZmIgaW9jdGwgd2hlbiB3ZSdyZSB0ZXN0aW5nIGZvciBkaXJ0eWZiIHByZXNlbmNlLgo+IEN1
cnJlbnRseSB0aGUgYWRkZmIgZmFpbHMgZXZlcnkgdGltZSBzbyB3ZSBkb24ndCBldmVuIHRlc3QK
PiB0aGUgYWN0dWFsIGRpcnR5ZmIgaW9jdGwuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgc3JjL3NuYS9r
Z2VtLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvc3JjL3NuYS9rZ2VtLmMgYi9zcmMvc25hL2tnZW0u
Ywo+IGluZGV4IDljMDcwOGE2MzVmYi4uNmEzNTA2N2M0MTA3IDEwMDY0NAo+IC0tLSBhL3NyYy9z
bmEva2dlbS5jCj4gKysrIGIvc3JjL3NuYS9rZ2VtLmMKPiBAQCAtMTUzOCw4ICsxNTM4LDggQEAg
c3RhdGljIGJvb2wgdGVzdF9oYXNfZGlydHlmYihzdHJ1Y3Qga2dlbSAqa2dlbSkKPiAgICAgICAg
IGNyZWF0ZS53aWR0aCA9IDMyOwo+ICAgICAgICAgY3JlYXRlLmhlaWdodCA9IDMyOwo+ICAgICAg
ICAgY3JlYXRlLnBpdGNoID0gNCozMjsKPiAtICAgICAgIGNyZWF0ZS5icHAgPSAyNDsKPiAtICAg
ICAgIGNyZWF0ZS5kZXB0aCA9IDMyOyAvKiB7YnBwOjI0LCBkZXB0aDozMn0gLT4geDhyOGc4Yjgg
Ki8KPiArICAgICAgIGNyZWF0ZS5icHAgPSAzMjsKPiArICAgICAgIGNyZWF0ZS5kZXB0aCA9IDI0
OyAvKiB7YnBwOjMyLCBkZXB0aDoyNH0gLT4geDhyOGc4YjggKi8KCkkgZGlkIGdvb2QuCgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
