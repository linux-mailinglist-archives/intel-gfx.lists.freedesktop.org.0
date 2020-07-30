Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 211AC232C34
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 09:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6576E862;
	Thu, 30 Jul 2020 07:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1073C6E862
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 07:03:27 +0000 (UTC)
IronPort-SDR: rTKx0mOynX58qAp6nNHZSvN6HFrqfiVJI1U+JgQTe5fTnjMQPUmJo7YGbXSn2JqTFXngnIkVqk
 vaqb6j7sYWcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="149011881"
X-IronPort-AV: E=Sophos;i="5.75,413,1589266800"; d="scan'208";a="149011881"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 00:03:27 -0700
IronPort-SDR: luCXkMxnJKvBdRfvSbKV42icgE3SWKRLTgdqL2CQpzARSSLtO8GbBQiXl+XgxY5Xaoe5khtPhx
 oL71HdIJgkYA==
X-IronPort-AV: E=Sophos;i="5.75,413,1589266800"; d="scan'208";a="328881225"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2020 00:03:25 -0700
Date: Thu, 30 Jul 2020 12:21:25 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200730065124.GA30770@intel.com>
References: <20200729130912.30093-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200729130912.30093-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Check for an LPSP encoder
 before dereferencing
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wNy0yOSBhdCAxNDowOToxMiArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEF2
b2lkIGEgR1BGIGF0Cj4gCj4gPDE+WyAgIDIwLjE3NzMyMF0gQlVHOiBrZXJuZWwgTlVMTCBwb2lu
dGVyIGRlcmVmZXJlbmNlLCBhZGRyZXNzOiAwMDAwMDAwMDAwMDAwMDdjCj4gPDE+WyAgIDIwLjE3
NzMyMl0gI1BGOiBzdXBlcnZpc29yIHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlCj4gPDE+WyAg
IDIwLjE3NzMyM10gI1BGOiBlcnJvcl9jb2RlKDB4MDAwMCkgLSBub3QtcHJlc2VudCBwYWdlCj4g
PDY+WyAgIDIwLjE3NzMyNF0gUEdEIDAgUDREIDAKPiA8ND5bICAgMjAuMTc3MzI3XSBPb3BzOiAw
MDAwIFsjMV0gUFJFRU1QVCBTTVAgUFRJCj4gPDQ+WyAgIDIwLjE3NzMyOF0gQ1BVOiAxIFBJRDog
OTQ0IENvbW06IGRlYnVnZnNfdGVzdCBOb3QgdGFpbnRlZCA1LjguMC1yYzctQ0ktQ0lfRFJNXzg4
MTQrICMxCj4gPDQ+WyAgIDIwLjE3NzMzMF0gSGFyZHdhcmUgbmFtZTogRGVsbCBJbmMuIFhQUyAx
MyA5MzYwLzA4MjNWVywgQklPUyAyLjkuMCAwNy8wOS8yMDE4Cj4gPDQ+WyAgIDIwLjE3NzM3Ml0g
UklQOiAwMDEwOmk5MTVfbHBzcF9jYXBhYmlsaXR5X3Nob3crMHg0NC8weGMwIFtpOTE1XQo+IDw0
PlsgICAyMC4xNzczNzRdIENvZGU6IDBmIGI2IDgxIGNhIDBkIDAwIDAwIDNjIDBiIDc0IDc3IDc2
IDE5IDNjIDBjIDc1IDQ0IDgzIDdlIDdjIDAxIDdlIDJmIDQ4IGM3IGM2IGQ3IGI5IDQ3IGEwIGU4
IDQzIGRmIDA2IGUxIDMxIGMwIGMzIDNjIDA5IDcyIDJiIDw4Yj4gNDYgN2MgODUgYzAgNzUgZTYg
OGIgODIgZTQgMDAgMDAgMDAgODkgYzIgODMgZTIgZmIgODMgZmEgMGEgNzQKPiA8ND5bICAgMjAu
MTc3Mzc2XSBSU1A6IDAwMTg6ZmZmZmM5MDAwMGNlYmUzOCBFRkxBR1M6IDAwMDEwMjQ2Cj4gPDQ+
WyAgIDIwLjE3NzM3N10gUkFYOiAwMDAwMDAwMDAwMDAwMDA5IFJCWDogZmZmZjg4ODI2N2ZlNmE1
OCBSQ1g6IGZmZmY4ODgyNTJkMTAwMDAKPiA8ND5bICAgMjAuMTc3Mzc4XSBSRFg6IGZmZmY4ODgy
NGE5YTQwMDAgUlNJOiAwMDAwMDAwMDAwMDAwMDAwIFJESTogZmZmZjg4ODI2N2ZlNmEzMAo+IDw0
PlsgICAyMC4xNzczNzldIFJCUDogMDAwMDAwMDAwMDAwMDAwMCBSMDg6IDAwMDAwMDAwMDAwMDAw
MDAgUjA5OiAwMDAwMDAwMDAwMDAwMDAxCj4gPDQ+WyAgIDIwLjE3NzM4MF0gUjEwOiAwMDAwMDAw
MDAwMDAwMDAxIFIxMTogMDAwMDAwMDAwMDAwMDAwMCBSMTI6IGZmZmZjOTAwMDBjZWJmMDgKPiA8
ND5bICAgMjAuMTc3MzgxXSBSMTM6IDAwMDAwMDAwZmZmZmZmZmYgUjE0OiAwMDAwMDAwMDAwMDAw
MDAxIFIxNTogZmZmZjg4ODI2N2ZlNmEzMAo+IDw0PlsgICAyMC4xNzczODNdIEZTOiAgMDAwMDdm
NmY5YzZiNWU0MCgwMDAwKSBHUzpmZmZmODg4Mjc2NDgwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAw
MDAwMDAwMDAKPiA8ND5bICAgMjAuMTc3Mzg0XSBDUzogIDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAg
Q1IwOiAwMDAwMDAwMDgwMDUwMDMzCj4gPDQ+WyAgIDIwLjE3NzM4NV0gQ1IyOiAwMDAwMDAwMDAw
MDAwMDdjIENSMzogMDAwMDAwMDI1NWYwNDAwNiBDUjQ6IDAwMDAwMDAwMDAzNjA2ZTAKPiA8ND5b
ICAgMjAuMTc3Mzg2XSBDYWxsIFRyYWNlOgo+IDw0PlsgICAyMC4xNzczOTBdICBzZXFfcmVhZCsw
eGNiLzB4NDIwCj4gCj4gd2hpY2ggaXMgcHJlc3VtYWJseSBmcm9tIGhhdmluZyBubyBlbmNvZGVy
IGF0dGFjaGVkIGF0IHRoYXQgdGltZS4KPiAKPiBGaXhlczogODgwNjIxMWZlN2IzICgiZHJtL2k5
MTU6IEFkZCBpOTE1X2xwc3BfY2FwYWJpbGl0eSBkZWJ1Z2ZzIikKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogQW5pbWVzaCBNYW5u
YSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4gQ2M6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1h
bi5ndXB0YUBpbnRlbC5jb20+Cj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+Cj4gQ2M6ICJWaWxsZSBTeXJqw6Rsw6QiIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1
Z2ZzLmMgfCA3ICsrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPiBpbmRleCAzNjQ0NzUyY2M1ZWMuLjVhNWNmZTI1MDg1
YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfZGVidWdmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RlYnVnZnMuYwo+IEBAIC0yMDQ0LDkgKzIwNDQsMTIgQEAgREVGSU5FX1NIT1dfQVRU
UklCVVRFKGk5MTVfaGRjcF9zaW5rX2NhcGFiaWxpdHkpOwo+ICBzdGF0aWMgaW50IGk5MTVfbHBz
cF9jYXBhYmlsaXR5X3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+ICB7Cj4g
IAlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gbS0+cHJpdmF0ZTsKPiAtCXN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0KPiAtCQkJaW50ZWxfYXR0YWNoZWRfZW5jb2Rlcih0
b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHRvX2k5MTUoY29ubmVjdG9yLT5kZXYpOwo+ICsJc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXI7Cj4gKwo+ICsJZW5jb2RlciA9IGludGVsX2F0dGFjaGVkX2VuY29kZXIodG9f
aW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOwo+ICsJaWYgKCFlbmNvZGVyKQo+ICsJCXJldHVy
biAtRU5PREVWOwo+ICAKPiAgCWlmIChjb25uZWN0b3ItPnN0YXR1cyAhPSBjb25uZWN0b3Jfc3Rh
dHVzX2Nvbm5lY3RlZCkKPiAgCQlyZXR1cm4gLUVOT0RFVjsKPiAtLSAKPiAyLjIwLjEKPiAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
