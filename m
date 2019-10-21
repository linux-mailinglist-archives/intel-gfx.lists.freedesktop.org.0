Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C21CDF6AB
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 22:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689516E252;
	Mon, 21 Oct 2019 20:24:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A521A6E252
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 20:24:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18917542-1500050 for multiple; Mon, 21 Oct 2019 21:24:10 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191021192747.24804-1-matthew.auld@intel.com>
References: <20191021192747.24804-1-matthew.auld@intel.com>
Message-ID: <157168944833.2684.16894999414940625794@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 21 Oct 2019 21:24:08 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915: support creating LMEM
 objects
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMjEgMjA6Mjc6NDEpCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjE5OTUzMjA1NmUxYgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCj4gQEAgLTAsMCArMSwxNiBAQAo+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCj4gKy8qCj4gKyAqIENvcHlyaWdodCDC
qSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgImk5MTVfZHJ2
LmgiCj4gKyNpbmNsdWRlICJpbnRlbF9tZW1vcnlfcmVnaW9uLmgiCj4gKyNpbmNsdWRlICJnZW0v
aTkxNV9nZW1fbG1lbS5oIgo+ICsjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIgo+ICsj
aW5jbHVkZSAiaW50ZWxfcmVnaW9uX2xtZW0uaCIKPiArCj4gK2NvbnN0IHN0cnVjdCBpbnRlbF9t
ZW1vcnlfcmVnaW9uX29wcyBpbnRlbF9yZWdpb25fbG1lbV9vcHMgPSB7Cj4gKyAgICAgICAuaW5p
dCA9IGludGVsX21lbW9yeV9yZWdpb25faW5pdF9idWRkeSwKPiArICAgICAgIC5yZWxlYXNlID0g
aW50ZWxfbWVtb3J5X3JlZ2lvbl9yZWxlYXNlX2J1ZGR5LAo+ICsgICAgICAgLmNyZWF0ZV9vYmpl
Y3QgPSBfX2k5MTVfZ2VtX2xtZW1fb2JqZWN0X2NyZWF0ZSwKCkkgdGhpbmsgdGhlIGZhY3Rvcnkg
aXMgbWlzcGxhY2VkLCBidXQgd2lsbCBkbyBmb3Igbm93LiAoSSdtIG5vdCBmb25kIG9mCm9wcy5j
cmVhdGVfb2JqZWN0IGhlcmUsIHRoYXQgc2hvdWxkIGJlIGEgR0VNIGZhY3RvcnkuKQpSZXZpZXdl
ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
