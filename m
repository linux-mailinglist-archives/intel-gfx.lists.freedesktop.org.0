Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A278102227
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 11:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2FE6E51D;
	Tue, 19 Nov 2019 10:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586336E51D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 10:36:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 02:36:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="204479066"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 19 Nov 2019 02:36:38 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5424E5C1DF4; Tue, 19 Nov 2019 12:36:23 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191119100929.2628356-8-chris@chris-wilson.co.uk>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
 <20191119100929.2628356-8-chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 12:36:23 +0200
Message-ID: <87a78sxie0.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/17] drm/i915: Protect the obj->vma.list
 during iteration
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGFrZSB0
aGUgb2JqLT52bWEubG9jayB0byBwcmV2ZW50IG1vZGlmaWNhdGlvbnMgdG8gdGhlIGxpc3QgYXMg
d2UKPiBpdGVyYXRlLCB0byBhdm9pZCB0aGUgZHJlYWRlZCB0aGUgTlVMTCBwb2ludGVyLgo+Cj4g
PDE+WyAgMzQ3LjgyMDgyM10gQlVHOiBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLCBh
ZGRyZXNzOiAwMDAwMDAwMDAwMDAwMTUwCj4gPDE+WyAgMzQ3LjgyMDg1Nl0gI1BGOiBzdXBlcnZp
c29yIHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlCj4gPDE+WyAgMzQ3LjgyMDg3NF0gI1BGOiBl
cnJvcl9jb2RlKDB4MDAwMCkgLSBub3QtcHJlc2VudCBwYWdlCj4gPDY+WyAgMzQ3LjgyMDg5Ml0g
UEdEIDAgUDREIDAKPiA8ND5bICAzNDcuODIwOTA4XSBPb3BzOiAwMDAwIFsjMV0gUFJFRU1QVCBT
TVAgTk9QVEkKPiA8ND5bICAzNDcuODIwOTI2XSBDUFU6IDMgUElEOiAxMzAzIENvbW06IGdlbV9w
ZXJzaXN0ZW50XyBUYWludGVkOiBHICAgICBVICAgICAgICAgICAgNS40LjAtcmM3LUNJLUNJX0RS
TV83MzUyKyAjMQo+IDw0PlsgIDM0Ny44MjA5NTZdIEhhcmR3YXJlIG5hbWU6ICAvTlVDNkNBWUIs
IEJJT1MgQVlBUExDRUwuODZBLjAwNDkuMjAxOC4wNTA4LjEzNTYgMDUvMDgvMjAxOAo+IDw0Plsg
IDM0Ny44MjExMzJdIFJJUDogMDAxMDppOTE1X2dlbV9vYmplY3RfZmx1c2hfd3JpdGVfZG9tYWlu
KzB4ZDkvMHgxZDAgW2k5MTVdCj4gPDQ+WyAgMzQ3LjgyMTE1N10gQ29kZTogMGYgODQgZTkgMDAg
MDAgMDAgNDggOGIgODAgZTAgZmQgZmYgZmYgZjYgYzQgNDAgNzUgMTEgZTkgZWQgMDAgMDAgMDAg
NDggOGIgODAgZTAgZmQgZmYgZmYgZjYgYzQgNDAgNzQgMjYgNDggOGIgODMgYjAgMDAgMDAgMDAg
PDQ4PiA4YiBiOCA1MCAwMSAwMCAwMCBlOCBmYiAyMCBmYiBmZiA0OCA4YiA4MyAzMCAwMyAwMCAw
MCA0OSAzOSBjNAo+IDw0PlsgIDM0Ny44MjEyMTBdIFJTUDogMDAxODpmZmZmYzkwMDAwYTFmOGY4
IEVGTEFHUzogMDAwMTAyMDIKPiA8ND5bICAzNDcuODIxMjI5XSBSQVg6IDAwMDAwMDAwMDAwMDAw
MDAgUkJYOiBmZmZmYzkwMDAwODQ3OWEwIFJDWDogMDAwMDAwMDAwMDAwMDAxOAo+IDw0PlsgIDM0
Ny44MjEyNTJdIFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDAwMGQgUkRJ
OiBmZmZmODg4Mjc1YTA5MGIwCj4gPDQ+WyAgMzQ3LjgyMTI3NF0gUkJQOiBmZmZmODg4MjY3M2M4
MDQwIFIwODogZmZmZjg4ODI1OTkxYjhkMCBSMDk6IDAwMDAwMDAwMDAwMDAwMDAKPiA8ND5bICAz
NDcuODIxMjk3XSBSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjExOiAwMDAwMDAwMDAwMDAwMDAwIFIx
MjogZmZmZjg4ODI2NzNjODI4MAo+IDw0PlsgIDM0Ny44MjEzMTldIFIxMzogZmZmZjg4ODI2NzNj
ODM2OCBSMTQ6IDAwMDAwMDAwMDAwMDAwMDAgUjE1OiBmZmZmODg4MjY2YTU0MDAwCj4gPDQ+WyAg
MzQ3LjgyMTM0M10gRlM6ICAwMDAwN2Y3NTg2NWY0MjQwKDAwMDApIEdTOmZmZmY4ODgyNzdiODAw
MDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMAo+IDw0PlsgIDM0Ny44MjEzNjhdIENTOiAg
MDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKPiA8ND5bICAzNDcu
ODIxMzg5XSBDUjI6IDAwMDAwMDAwMDAwMDAxNTAgQ1IzOiAwMDAwMDAwMjVhZWUwMDAwIENSNDog
MDAwMDAwMDAwMDM0MDZlMAo+IDw0PlsgIDM0Ny44MjE0MTFdIENhbGwgVHJhY2U6Cj4gPDQ+WyAg
MzQ3LjgyMTU1NV0gIGk5MTVfZ2VtX29iamVjdF9wcmVwYXJlX3JlYWQrMHhlYS8weDJhMCBbaTkx
NV0KPiA8ND5bICAzNDcuODIxNzA2XSAgaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIrMHg1Y2UvMHhl
OTAgW2k5MTVdCj4gPDQ+WyAgMzQ3LjgyMTgzNF0gID8gX19pOTE1X3N3X2ZlbmNlX2NvbXBsZXRl
KzB4MWEwLzB4MjUwIFtpOTE1XQo+IDw0PlsgIDM0Ny44MjE5OTBdICBpOTE1X2dlbV9kb19leGVj
YnVmZmVyKzB4YjRjLzB4MjU1MCBbaTkxNV0KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dC5jCj4gaW5kZXggNjNiZDNmZjg0ZjVlLi40NTg5NDVlMTgyM2UgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gQEAgLTI3OSwxMCArMjc5LDEyIEBA
IGk5MTVfZ2VtX29iamVjdF9mbHVzaF93cml0ZV9kb21haW4oc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiwKPiAgCj4gIAlzd2l0Y2ggKG9iai0+d3JpdGVfZG9tYWluKSB7Cj4gIAljYXNl
IEk5MTVfR0VNX0RPTUFJTl9HVFQ6Cj4gKwkJc3Bpbl9sb2NrKCZvYmotPnZtYS5sb2NrKTsKPiAg
CQlmb3JfZWFjaF9nZ3R0X3ZtYSh2bWEsIG9iaikgewo+ICAJCQlpZiAoaTkxNV92bWFfdW5zZXRf
Z2d0dF93cml0ZSh2bWEpKQo+ICAJCQkJaW50ZWxfZ3RfZmx1c2hfZ2d0dF93cml0ZXModm1hLT52
bS0+Z3QpOwo+ICAJCX0KPiArCQlzcGluX3VubG9jaygmb2JqLT52bWEubG9jayk7Cj4gIAo+ICAJ
CWludGVsX2Zyb250YnVmZmVyX2ZsdXNoKG9iai0+ZnJvbnRidWZmZXIsIE9SSUdJTl9DUFUpOwo+
ICAJCWJyZWFrOwo+IC0tIAo+IDIuMjQuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
