Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358C8900A8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 13:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6271A6E315;
	Fri, 16 Aug 2019 11:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F1026E315
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 11:21:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18161931-1500050 for multiple; Fri, 16 Aug 2019 12:21:05 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190816105501.31020-3-michal.wajdeczko@intel.com>
References: <20190816105501.31020-1-michal.wajdeczko@intel.com>
 <20190816105501.31020-3-michal.wajdeczko@intel.com>
Message-ID: <156595446382.11610.13402376826420583949@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 16 Aug 2019 12:21:03 +0100
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915/wopcm: Check WOPCM layout
 separately from calculations
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTE2IDExOjU0OjU4KQo+ICtzdGF0aWMg
aW5saW5lIGJvb2wgX19jaGVja19sYXlvdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IHUzMiB3b3BjbV9zaXplLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIg
Z3VjX3dvcGNtX2Jhc2UsIHUzMiBndWNfd29wY21fc2l6ZSwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgdTMyIGd1Y19md19zaXplLCB1MzIgaHVjX2Z3X3NpemUpCj4gK3sKPiAr
ICAgICAgIGNvbnN0IHUzMiBjdHhfcnN2ZCA9IGNvbnRleHRfcmVzZXJ2ZWRfc2l6ZShpOTE1KTsK
PiArICAgICAgIHUzMiBzaXplOwo+ICsKPiArICAgICAgIHNpemUgPSB3b3BjbV9zaXplIC0gY3R4
X3JzdmQ7CgpJIGRpZG4ndCBzcG90IHRoZSBwYXJhbm9pYSBmb3IKCmlmIChjdHhfcnN2ZCA+IHdv
cGNtX3NpemUpCglyZXR1cm4gZmFsc2U7CgpJcyB0aGF0IGJ1aWx0IGluIGVhcmxpZXI/IEV2ZW4g
c28sIHByb2JhYmx5IHN0aWxsIHdpc2UgdG8gaW5jbHVkZSBpdCBoZXJlCmFzIHdlbGwgdG8gZml0
IGluIHdpdGggdGhlIG92ZXJmbG93IGNoZWNrcy4KCj4gKyAgICAgICBpZiAodW5saWtlbHkocmFu
Z2Vfb3ZlcmZsb3dzKGd1Y193b3BjbV9iYXNlLCBndWNfd29wY21fc2l6ZSwgc2l6ZSkpKSB7Cj4g
KyAgICAgICAgICAgICAgIGRldl9lcnIoaTkxNS0+ZHJtLmRldiwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAiV09QQ006IGludmFsaWQgR3VDIHJlZ2lvbiBsYXlvdXQ6ICV1SyArICV1SyA+ICV1
S1xuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICBndWNfd29wY21fYmFzZSAvIFNaXzFLLCBn
dWNfd29wY21fc2l6ZSAvIFNaXzFLLAo+ICsgICAgICAgICAgICAgICAgICAgICAgIHNpemUgLyBT
Wl8xSyk7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiArICAgICAgIH0KPiArCj4g
KyAgICAgICBzaXplID0gZ3VjX2Z3X3NpemUgKyBHVUNfV09QQ01fUkVTRVJWRUQgKyBHVUNfV09Q
Q01fU1RBQ0tfUkVTRVJWRUQ7Cj4gKyAgICAgICBpZiAodW5saWtlbHkoZ3VjX3dvcGNtX3NpemUg
PCBzaXplKSkgewo+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGk5MTUtPmRybS5kZXYsICJXT1BD
TTogbm8gc3BhY2UgZm9yICVzOiAldUsgPCAldUtcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgaW50ZWxfdWNfZndfdHlwZV9yZXByKElOVEVMX1VDX0ZXX1RZUEVfR1VDKSwKPiArICAgICAg
ICAgICAgICAgICAgICAgICBndWNfd29wY21fc2l6ZSAvIFNaXzFLLCBzaXplIC8gU1pfMUspOwo+
ICsgICAgICAgICAgICAgICByZXR1cm4gZmFsc2U7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAg
c2l6ZSA9IGh1Y19md19zaXplICsgV09QQ01fUkVTRVJWRURfU0laRTsKPiArICAgICAgIGlmICh1
bmxpa2VseShndWNfd29wY21fYmFzZSA8IHNpemUpKSB7Cj4gKyAgICAgICAgICAgICAgIGRldl9l
cnIoaTkxNS0+ZHJtLmRldiwgIldPUENNOiBubyBzcGFjZSBmb3IgJXM6ICV1SyA8ICV1S1xuIiwK
PiArICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF91Y19md190eXBlX3JlcHIoSU5URUxfVUNf
RldfVFlQRV9IVUMpLAo+ICsgICAgICAgICAgICAgICAgICAgICAgIGd1Y193b3BjbV9iYXNlIC8g
U1pfMUssIHNpemUgLyBTWl8xSyk7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiAr
ICAgICAgIH0KPiArCj4gKyAgICAgICByZXR1cm4gY2hlY2tfaHdfcmVzdHJpY3Rpb25zKGk5MTUs
IGd1Y193b3BjbV9iYXNlLCBndWNfd29wY21fc2l6ZSwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaHVjX2Z3X3NpemUpOwo+ICB9CgpMb29rcyBzYWZlbHkgcGFyYW5vaWQg
dG8gbWUsClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
