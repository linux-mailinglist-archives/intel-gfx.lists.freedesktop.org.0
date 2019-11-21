Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79866104CEB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 08:51:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3C16EB3F;
	Thu, 21 Nov 2019 07:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB316EB3F
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 07:51:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 23:51:43 -0800
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="201033539"
Received: from jlahtine-mobl.fi.intel.com (HELO localhost) ([10.237.66.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 23:51:41 -0800
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191121071044.97798-1-chris@chris-wilson.co.uk>
References: <20191121071044.97798-1-chris@chris-wilson.co.uk>
Message-ID: <157432269785.8129.7334831534014713428@jlahtine-mobl.fi.intel.com>
User-Agent: alot/0.7
Date: Thu, 21 Nov 2019 09:51:38 +0200
Subject: Re: [Intel-gfx] [PATCH 1/5] Revert "drm/i915/gt: Wait for new
 requests in intel_gt_retire_requests()"
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjEgMDk6MTA6NDApCj4gRnJvbSBpbnNpZGUg
YW4gYWN0aXZlIHRpbWVsaW5lIGluIHRoZSBleGVjYnVmIGlvY3RsLCB3ZSBtYXkgdHJ5IHRvCj4g
cmVjbGFpbSBzb21lIHNwYWNlIGluIHRoZSBHR1RULiBXZSBuZWVkIEdHVFQgc3BhY2UgZm9yIGFs
bCBvYmplY3RzIG9uCj4gIWZ1bGwtcHBndHQgcGxhdGZvcm1zLCBhbmQgZm9yIGNvbnRleHQgaW1h
Z2VzIGV2ZXJ5d2hlcmUuIEhvd2V2ZXIsIHRvCj4gZnJlZSB1cCBzcGFjZSBpbiB0aGUgR0dUVCB3
ZSBtYXkgbmVlZCB0byByZW1vdmUgc29tZSBwaW5uZWQgb2JqZWN0cwo+IChlLmcuIGNvbnRleHQg
aW1hZ2VzKSB0aGF0IHJlcXVpcmUgZmx1c2hpbmcgdGhlIGlkbGUgYmFycmllcnMgdG8gcmVtb3Zl
Lgo+IEZvciB0aGlzIHdlIHVzZSB0aGUgYmlnIGhhbW1lciBvZiBpbnRlbF9ndF93YWl0X2Zvcl9p
ZGxlKCkKPiAKPiBIb3dldmVyLCBjb21taXQgNzkzNmEyMmRkNDY2ICgiZHJtL2k5MTUvZ3Q6IFdh
aXQgZm9yIG5ldyByZXF1ZXN0cyBpbgo+IGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpIikgd2ls
bCBjb250aW51ZSBzcGlubmluZyBvbiB0aGUgd2FpdCBpZiBhCj4gdGltZWxpbmUgaXMgYWN0aXZl
IGJ1dCBsYWNrcyByZXF1ZXN0cywgYXMgaXMgdGhlIGNhc2UgZHVyaW5nIGV4ZWNidWYKPiByZXNl
cnZhdGlvbi4gU3Bpbm5pbmcgZm9yZXZlciBpcyBxdWl0ZSB0aW1lIGNvbnN1bWluZywgc28gcmV2
ZXJ0IHRoYXQKPiBjb21taXQgYW5kIHN0YXJ0IGFnYWluLgo+IAo+IEluIHByYWN0aWNlLCB0aGUg
ZWZmZWN0IGNvbW1pdCA3OTM2YTIyZGQ0NjYgd2FzIHRyeWluZyB0byBhY2hpZXZlIGlzCj4gYWNj
b21wbGlzaGVkIGJ5IGNvbW1pdCAxNjgzZDI0YzE0NzAgKCJkcm0vaTkxNS9ndDogTW92ZSBuZXcg
dGltZWxpbmVzCj4gdG8gdGhlIGVuZCBvZiBhY3RpdmVfbGlzdCIpLCBzbyB0aGVyZSBpcyBubyBp
bW1lZGlhdGUgcnVzaCB0byByZXBsYWNlCj4gdGhlIGxvb3BpbmcuCj4gCj4gVGVzdGNhc2U6IGln
dC9nZW1fZXhlY19yZWxvYy9iYXNpYy1yYW5nZQo+IEZpeGVzOiA3OTM2YTIyZGQ0NjYgKCJkcm0v
aTkxNS9ndDogV2FpdCBmb3IgbmV3IHJlcXVlc3RzIGluIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0
cygpIikKPiBSZWZlcmVuY2VzOiAxNjgzZDI0YzE0NzAgKCJkcm0vaTkxNS9ndDogTW92ZSBuZXcg
dGltZWxpbmVzIHRvIHRoZSBlbmQgb2YgYWN0aXZlX2xpc3QiKQo+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25h
cy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRpbmVu
IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmVnYXJkcywgSm9vbmFzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
