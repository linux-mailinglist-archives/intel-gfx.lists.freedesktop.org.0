Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 933B9DD162
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 23:49:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6243689141;
	Fri, 18 Oct 2019 21:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78FA89141
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 21:49:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18887539-1500050 for multiple; Fri, 18 Oct 2019 22:49:01 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191018165558.18518-1-matthew.auld@intel.com>
References: <20191018165558.18518-1-matthew.auld@intel.com>
Message-ID: <157143533944.10963.9211804474202386762@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 18 Oct 2019 22:48:59 +0100
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: support creating LMEM objects
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMTggMTc6NTU6NTMpCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjdhM2Y5NmUxZjc2Ngo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCj4gQEAgLTAsMCArMSw0MyBAQAo+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCj4gKy8qCj4gKyAqIENvcHlyaWdodCDC
qSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgImk5MTVfZHJ2
LmgiCj4gKyNpbmNsdWRlICJpbnRlbF9tZW1vcnlfcmVnaW9uLmgiCj4gKyNpbmNsdWRlICJnZW0v
aTkxNV9nZW1fbG1lbS5oIgo+ICsjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIgo+ICsj
aW5jbHVkZSAiaW50ZWxfcmVnaW9uX2xtZW0uaCIKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqCj4gK2xtZW1fY3JlYXRlX29iamVjdChzdHJ1Y3QgaW50ZWxfbWVtb3J5
X3JlZ2lvbiAqbWVtLAo+ICsgICAgICAgICAgICAgICAgICByZXNvdXJjZV9zaXplX3Qgc2l6ZSwK
PiArICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IGZsYWdzKQo+ICt7Cj4gKyAgICAgICBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IG1lbS0+aTkxNTsKPiArICAgICAgIHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gKwo+ICsgICAgICAgaWYgKHNpemUgPiBCSVQo
bWVtLT5tbS5tYXhfb3JkZXIpICogbWVtLT5tbS5jaHVua19zaXplKQo+ICsgICAgICAgICAgICAg
ICByZXR1cm4gRVJSX1BUUigtRTJCSUcpOwo+ICsKPiArICAgICAgIG9iaiA9IGk5MTVfZ2VtX29i
amVjdF9hbGxvYygpOwo+ICsgICAgICAgaWYgKCFvYmopCj4gKyAgICAgICAgICAgICAgIHJldHVy
biBFUlJfUFRSKC1FTk9NRU0pOwo+ICsKPiArICAgICAgIGRybV9nZW1fcHJpdmF0ZV9vYmplY3Rf
aW5pdCgmaTkxNS0+ZHJtLCAmb2JqLT5iYXNlLCBzaXplKTsKPiArICAgICAgIGk5MTVfZ2VtX29i
amVjdF9pbml0KG9iaiwgJmk5MTVfZ2VtX2xtZW1fb2JqX29wcyk7CgpBaCBuby4gVW5kZXIgdGhl
IGN1cnJlbnQgcGFydGl0aW9uaW5nLCB5b3UgYXJlIGxlYWtpbmcgdGhlIEdFTSBvYmplY3QKY2xh
c3Mgb3V0IG9mIGl0cyBoaWVyYXJjaHkuCgppbnRlbF9yZWdpb25fKi5jIHByb3ZpZGUgdGhlIGFi
c3RyYWN0aW9ucyB0byB3b3JrIHdpdGggdGhlIEhXLCB3aXRoCmdlbS9pOTE1X2dlbV9sbWVtLmMg
d3JhcHBpbmcgdGhhdCBpbnRvIGEgR0VNIG9iamVjdC4KCldoYXQncyB0aGUgZHJpdmluZyBmb3Jj
ZSB0byBwdXQgdGhlIF9HRU1fIG9iamVjdCBpbnRlcmZhY2UgaGVyZT8KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
