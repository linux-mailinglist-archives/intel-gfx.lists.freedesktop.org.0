Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A315BC08
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 14:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45281899E9;
	Mon,  1 Jul 2019 12:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D585899E9
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 12:45:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17085022-1500050 for multiple; Mon, 01 Jul 2019 13:45:39 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
 <20190701113437.4043-3-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190701113437.4043-3-lionel.g.landwerlin@intel.com>
Message-ID: <156198513580.1583.10574327742753464735@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 13:45:35 +0100
Subject: Re: [Intel-gfx] [PATCH v6 02/11] drm/i915/perf: introduce a
 versioning of the i915-perf uapi
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wMSAxMjozNDoyOCkKPiBSZXBvcnRp
bmcgdGhpcyB2ZXJzaW9uIHdpbGwgaGVscCBhcHBsaWNhdGlvbiBmaWd1cmUgb3V0IHdoYXQgbGV2
ZWwgb2YKPiB0aGUgc3VwcG9ydCB0aGUgcnVubmluZyBrZXJuZWwgcHJvdmlkZXMuCj4gCj4gU2ln
bmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgIDMgKysrCj4g
IGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgfCAyMSArKysrKysrKysrKysrKysrKysr
KysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCj4gaW5kZXggNzk0YzY4MTRhNmQwLi5mYTAyZThmMDMzZDcgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKPiBAQCAtNDgzLDYgKzQ4Myw5IEBAIHN0YXRpYyBpbnQgaTkxNV9n
ZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgICAg
ICAgY2FzZSBJOTE1X1BBUkFNX01NQVBfR1RUX0NPSEVSRU5UOgo+ICAgICAgICAgICAgICAgICB2
YWx1ZSA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5oYXNfY29oZXJlbnRfZ2d0dDsKPiAgICAgICAg
ICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICBjYXNlIEk5MTVfUEFSQU1fUEVSRl9SRVZJU0lPTjoK
PiArICAgICAgICAgICAgICAgdmFsdWUgPSAxOwoKSSB3b3VsZCBzdWdnZXN0IG1ha2luZyBpOTE1
X3BlcmZfaW9jdGxfdmVyc2lvbigpIGFuZCBwdXR0aW5nIHRoZSB2YWx1ZQoxIHRoZXJlIHNvIHlv
dSBjYW4gZG9jdW1lbnQgY2hhbmdlcyB3aXRoaW4gaTkxNV9wZXJmLmMKLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
