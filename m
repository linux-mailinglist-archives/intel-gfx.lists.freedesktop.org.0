Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A147B57DE6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 10:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3A96E828;
	Thu, 27 Jun 2019 08:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8321C6E828
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 08:07:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17039803-1500050 for multiple; Thu, 27 Jun 2019 09:07:43 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-2-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190627080045.8814-2-lionel.g.landwerlin@intel.com>
Message-ID: <156162285976.20851.11525618963254901671@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 09:07:39 +0100
Subject: Re: [Intel-gfx] [PATCH v5 01/10] drm/i915/perf: add missing delay
 for OA muxes configuration
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAwOTowMDozNikKPiBTaWduZWQt
b2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+
Cj4gRml4ZXM6IDE5ZjgxZGYyODU5ZWIxICgiZHJtL2k5MTUvcGVyZjogQWRkIE9BIHVuaXQgc3Vw
cG9ydCBmb3IgR2VuIDgrIikKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJm
LmMgfCAyMyArKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMjMgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gaW5kZXggZDI4YTViZjgw
YmQ3Li45MDllMjI4MzVlODQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+IEBAIC0x
ODM4LDYgKzE4MzgsMjkgQEAgc3RhdGljIGludCBnZW44X2VuYWJsZV9tZXRyaWNfc2V0KHN0cnVj
dCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4gIAo+ICAgICAgICAgY29uZmlnX29hX3JlZ3Mo
ZGV2X3ByaXYsIG9hX2NvbmZpZy0+bXV4X3JlZ3MsIG9hX2NvbmZpZy0+bXV4X3JlZ3NfbGVuKTsK
PiAgCj4gKyAgICAgICAvKiBJdCBhcHBhcmVudGx5IHRha2VzIGEgZmFpcmx5IGxvbmcgdGltZSBm
b3IgYSBuZXcgTVVYCj4gKyAgICAgICAgKiBjb25maWd1cmF0aW9uIHRvIGJlIGJlIGFwcGxpZWQg
YWZ0ZXIgdGhlc2UgcmVnaXN0ZXIgd3JpdGVzLgo+ICsgICAgICAgICogVGhpcyBkZWxheSBkdXJh
dGlvbiB3YXMgZGVyaXZlZCBlbXBpcmljYWxseSBiYXNlZCBvbiB0aGUKPiArICAgICAgICAqIHJl
bmRlcl9iYXNpYyBjb25maWcgYnV0IGhvcGVmdWxseSBpdCBjb3ZlcnMgdGhlIG1heGltdW0KPiAr
ICAgICAgICAqIGNvbmZpZ3VyYXRpb24gbGF0ZW5jeS4KPiArICAgICAgICAqCj4gKyAgICAgICAg
KiBBcyBhIGZhbGxiYWNrLCB0aGUgY2hlY2tzIGluIF9hcHBlbmRfb2FfcmVwb3J0cygpIHRvIHNr
aXAKPiArICAgICAgICAqIGludmFsaWQgT0EgcmVwb3J0cyBkbyBhbHNvIHNlZW0gdG8gd29yayB0
byBkaXNjYXJkIHJlcG9ydHMKPiArICAgICAgICAqIGdlbmVyYXRlZCBiZWZvcmUgdGhpcyBjb25m
aWcgaGFzIGNvbXBsZXRlZCAtIGFsYmVpdCBub3QKPiArICAgICAgICAqIHNpbGVudGx5LgoKSWYg
eW91IGtub3cgdGhlIGluaXRpYWwgYmF0Y2ggb2YgcmVwb3J0cyBpcyBpbnZhbGlkIGFmdGVyIGNo
YW5naW5nIHRoZQpyZWdpc3Rlciwgd2h5IG5vdCBqdXN0IHNpbGVudGx5IGRpc2NhcmQgdGhlbSB1
bnRpbCB5b3Ugc2VlIFggdmFsaWQKcmVwb3J0cz8gTm8gZ3JhdHVpdG91cyBzbGVlcHMgcmVxdWly
ZWQsIHN0aWxsIGEgbWFnaWMgbnVtYmVyIChhbGJlaXQgaXQKbWF5IGJlIGEgc21hbGwgbnVtYmVy
KS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
