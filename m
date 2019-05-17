Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5614521B9F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5433E8987C;
	Fri, 17 May 2019 16:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 896D48987C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:30:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16592113-1500050 for multiple; Fri, 17 May 2019 17:30:42 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190517162227.6436-5-michal.wajdeczko@intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-5-michal.wajdeczko@intel.com>
Message-ID: <155811064044.826.1853035905910280677@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 17:30:40 +0100
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/uc: Stop talking with GuC when
 resetting
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTE3IDE3OjIyOjI0KQo+IEtub3dpbmcg
dGhhdCBHdUMgd2lsbCBiZSByZXNldCBzb29uLCB3ZSBtYXkgc3RvcCBhbGwgY29tbXVuaWNhdGlv
bgo+IGltbWVkaWF0ZWx5IHdpdGhvdXQgZG9pbmcgZ3JhY2VmdWwgY2xlYW51cCBhcyBpdCBpcyBu
b3QgbmVlZGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53
YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2N0
LmggfCAgNSArKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jICAgICB8IDEz
ICsrKysrKysrKysrKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1
Y19jdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2N0LmgKPiBpbmRleCBmNWU3
ZjA2NjMzMDQuLjQxYmE1OTNhNGRmNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWNfY3QuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19j
dC5oCj4gQEAgLTk2LDQgKzk2LDkgQEAgdm9pZCBpbnRlbF9ndWNfY3RfZmluaShzdHJ1Y3QgaW50
ZWxfZ3VjX2N0ICpjdCk7Cj4gIGludCBpbnRlbF9ndWNfY3RfZW5hYmxlKHN0cnVjdCBpbnRlbF9n
dWNfY3QgKmN0KTsKPiAgdm9pZCBpbnRlbF9ndWNfY3RfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZ3Vj
X2N0ICpjdCk7Cj4gIAo+ICtzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfZ3VjX2N0X3N0b3Aoc3Ry
dWN0IGludGVsX2d1Y19jdCAqY3QpCj4gK3sKPiArICAgICAgIGN0LT5ob3N0X2NoYW5uZWwuZW5h
YmxlZCA9IGZhbHNlOwo+ICt9Cj4gKwo+ICAjZW5kaWYgLyogX0lOVEVMX0dVQ19DVF9IXyAqLwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdWMuYwo+IGluZGV4IDlkODZjZDgzMWVhNy4uODZlZGZhNWFkNzJl
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4gQEAgLTIyNCw2ICsyMjQsMTcgQEAgc3Rh
dGljIGludCBndWNfZW5hYmxlX2NvbW11bmljYXRpb24oc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+
ICAgICAgICAgcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIGd1Y19zdG9wX2NvbW11
bmljYXRpb24oc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19pOTE1KGd1Yyk7Cj4gKwo+ICsgICAgICAgaWYg
KEhBU19HVUNfQ1QoaTkxNSkpCgpEb2VzIHRoaXMgbm90IGZhbGwgb3V0IG9mIHNvbWUgbG9jYWwg
a25vd2xlZGdlPyBUaG91Z2ggZm9yIHRoZSBtb21lbnQgaXQKaXMgaGFybWxlc3MgdG8gc3RvcCBh
IG5vbi1leGlzdGVudCBpbnRlbF9ndWNfY3QuCgo+ICsgICAgICAgICAgICAgICBpbnRlbF9ndWNf
Y3Rfc3RvcCgmZ3VjLT5jdCk7CgpBbnkgc2VyaWFsaXNhdGlvbiByZXF1aXJlZCBoZXJlPyBPciBj
YXZlYXRzIGZvciBjYWxsZXJzIHRvIG9ic2VydmU/Cgo+ICsgICAgICAgZ3VjLT5zZW5kID0gaW50
ZWxfZ3VjX3NlbmRfbm9wOwo+ICsgICAgICAgZ3VjLT5oYW5kbGVyID0gaW50ZWxfZ3VjX3RvX2hv
c3RfZXZlbnRfaGFuZGxlcl9ub3A7Cj4gK30KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
