Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 931E558EEF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 02:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAE66E853;
	Fri, 28 Jun 2019 00:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C386E853
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 00:22:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050937-1500050 for multiple; Fri, 28 Jun 2019 01:22:11 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-35-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-35-matthew.auld@intel.com>
Message-ID: <156168132921.21955.7495951189953158615@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 01:22:09 +0100
Subject: Re: [Intel-gfx] [PATCH v2 34/37] drm/i915: Introduce
 GEM_OBJECT_SETPARAM with I915_PARAM_MEMORY_REGION
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MzApCj4gK2ludCBpOTE1X2dl
bV9zZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4gK3sKPiAr
ICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJhbSAqYXJncyA9IGRhdGE7CgpU
aGUgcGxhbiB3YXMgdG8gdXNlIHRoZSB1cHBlcl8zMl9iaXRzKCkgb3Igd2hhdGV2ZXIgYXMgdGhl
IGNsYXNzLiBUbwpmdXR1cmUgcHJvb2YsIEkgd291bGQgcmVjb21tZW5kIGJlaW5nIG1vcmUgZXhw
bGljaXQgd2l0aCBhIHN3aXRjaC4KCj4gKyAgICAgICBpZiAoYXJncy0+cGFyYW0gPD0gSTkxNV9D
T05URVhUX1BBUkFNX01BWCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIGk5MTVfZ2VtX2NvbnRl
eHRfc2V0cGFyYW1faW9jdGwoZGV2LCBkYXRhLCBmaWxlKTsKPiArCj4gKyAgICAgICByZXR1cm4g
aTkxNV9nZW1fb2JqZWN0X3NldHBhcmFtX2lvY3RsKGRldiwgZGF0YSwgZmlsZSk7Cj4gK30KCj4g
IC8qIEFsbG93IGRyaXZlcnMgdG8gc3VibWl0IGJhdGNoYnVmZmVycyBkaXJlY3RseSB0byBoYXJk
d2FyZSwgcmVseWluZwo+ICAgKiBvbiB0aGUgc2VjdXJpdHkgbWVjaGFuaXNtcyBwcm92aWRlZCBi
eSBoYXJkd2FyZS4KPiBAQCAtMTU5NSwxMSArMTU5NywzNiBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X2NvbnRleHRfcGFyYW0gewo+ICAgKiAgIGk5MTVfY29udGV4dF9lbmdpbmVzX2JvbmQgKEk5MTVf
Q09OVEVYVF9FTkdJTkVTX0VYVF9CT05EKQo+ICAgKi8KPiAgI2RlZmluZSBJOTE1X0NPTlRFWFRf
UEFSQU1fRU5HSU5FUyAgICAgMHhhCj4gKwo+ICsjZGVmaW5lIEk5MTVfQ09OVEVYVF9QQVJBTV9N
QVggICAgICAgICAweGZmZmZmZmZmCj4gIC8qIE11c3QgYmUga2VwdCBjb21wYWN0IC0tIG5vIGhv
bGVzIGFuZCB3ZWxsIGRvY3VtZW50ZWQgKi8KCkhhaGFoYS4gR29vZCBvbmUuCgpUaGUgcmVzdCBv
ZiB0aGUgcGF0Y2ggaXMgY2xlYXJseSB2ZXJ5IGVhcmx5IHByb29mIG9mIGNvbmNlcHQgYXMgaXQg
bmVlZHMKdGhlIGxvY2tpbmcgcmV3b3JrZWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
