Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 116D738C60C
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 13:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6446E17B;
	Fri, 21 May 2021 11:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B831892DE;
 Fri, 21 May 2021 09:33:16 +0000 (UTC)
Received: from dggems702-chm.china.huawei.com (unknown [172.30.72.58])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4FmhDc07LvzmXQq;
 Fri, 21 May 2021 17:30:56 +0800 (CST)
Received: from dggeme759-chm.china.huawei.com (10.3.19.105) by
 dggems702-chm.china.huawei.com (10.3.19.179) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Fri, 21 May 2021 17:33:13 +0800
Received: from [127.0.0.1] (10.40.188.144) by dggeme759-chm.china.huawei.com
 (10.3.19.105) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 21
 May 2021 17:33:13 +0800
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-8-daniel.vetter@ffwll.ch>
From: "tiantao (H)" <tiantao6@huawei.com>
Message-ID: <5898097e-021f-0850-92ca-3c42cc28d525@huawei.com>
Date: Fri, 21 May 2021 17:33:12 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210521090959.1663703-8-daniel.vetter@ffwll.ch>
X-Originating-IP: [10.40.188.144]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggeme759-chm.china.huawei.com (10.3.19.105)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 21 May 2021 11:55:08 +0000
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/vram-helpers: Create
 DRM_GEM_VRAM_PLANE_HELPER_FUNCS
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
Cc: David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, "tiantao \(H\)" <tiantao6@hisilicon.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Thomas
 Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@redhat.com>, Daniel
 Vetter <daniel.vetter@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CtTaIDIwMjEvNS8yMSAxNzowOSwgRGFuaWVsIFZldHRlciDQtLXAOgo+IExpa2Ugd2UgaGF2ZSBm
b3IgdGhlIHNoYWRvdyBoZWxwZXJzIHRvbywgYW5kIHJvbGwgaXQgb3V0IHRvIGRyaXZlcnMuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
PiBDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiBDYzogVGhvbWFzIFppbW1l
cm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4gQ2M6IEhhbnMgZGUgR29lZGUgPGhkZWdvZWRl
QHJlZGhhdC5jb20+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4K
PiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFRpYW4gVGFvIDx0aWFudGFvNkBoaXNpbGljb24uY29t
Pgo+IENjOiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5j
b20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vYXN0L2FzdF9tb2RlLmMgICAgICAgICAgICAg
ICAgIHwgIDMgKy0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaGlzaWxpY29uL2hpYm1jL2hpYm1jX2Ry
bV9kZS5jIHwgIDMgKy0tCj4gICBkcml2ZXJzL2dwdS9kcm0vdmJveHZpZGVvL3Zib3hfbW9kZS5j
ICAgICAgICAgIHwgIDMgKy0tCj4gICBpbmNsdWRlL2RybS9kcm1fZ2VtX3ZyYW1faGVscGVyLmgg
ICAgICAgICAgICAgIHwgMTIgKysrKysrKysrKysrCj4gICA0IGZpbGVzIGNoYW5nZWQsIDE1IGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FzdC9hc3RfbW9kZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FzdC9hc3RfbW9kZS5jCj4gaW5k
ZXggMzZkOTU3NWFhMjdiLi4yMDU1N2QyYzJmYWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FzdC9hc3RfbW9kZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FzdC9hc3RfbW9kZS5j
Cj4gQEAgLTYxMiw4ICs2MTIsNyBAQCBhc3RfcHJpbWFyeV9wbGFuZV9oZWxwZXJfYXRvbWljX2Rp
c2FibGUoc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsCj4gICB9Cj4gICAKPiAgIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyBhc3RfcHJpbWFyeV9wbGFuZV9oZWxwZXJf
ZnVuY3MgPSB7Cj4gLQkucHJlcGFyZV9mYiA9IGRybV9nZW1fdnJhbV9wbGFuZV9oZWxwZXJfcHJl
cGFyZV9mYiwKPiAtCS5jbGVhbnVwX2ZiID0gZHJtX2dlbV92cmFtX3BsYW5lX2hlbHBlcl9jbGVh
bnVwX2ZiLAo+ICsJRFJNX0dFTV9WUkFNX1BMQU5FX0hFTFBFUl9GVU5DUywKPiAgIAkuYXRvbWlj
X2NoZWNrID0gYXN0X3ByaW1hcnlfcGxhbmVfaGVscGVyX2F0b21pY19jaGVjaywKPiAgIAkuYXRv
bWljX3VwZGF0ZSA9IGFzdF9wcmltYXJ5X3BsYW5lX2hlbHBlcl9hdG9taWNfdXBkYXRlLAo+ICAg
CS5hdG9taWNfZGlzYWJsZSA9IGFzdF9wcmltYXJ5X3BsYW5lX2hlbHBlcl9hdG9taWNfZGlzYWJs
ZSwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9oaWJtYy9oaWJtY19k
cm1fZGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24vaGlibWMvaGlibWNfZHJtX2RlLmMK
PiBpbmRleCAyOWI4MzMyYjJiY2EuLmNjZjgwZTM2OWI0YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaGlzaWxpY29uL2hpYm1jL2hpYm1jX2RybV9kZS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2hpc2lsaWNvbi9oaWJtYy9oaWJtY19kcm1fZGUuYwo+IEBAIC0xNTgsOCArMTU4LDcg
QEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fcGxhbmVfZnVuY3MgaGlibWNfcGxhbmVfZnVuY3Mg
PSB7Cj4gICB9Owo+ICAgCj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJf
ZnVuY3MgaGlibWNfcGxhbmVfaGVscGVyX2Z1bmNzID0gewo+IC0JLnByZXBhcmVfZmIJPSBkcm1f
Z2VtX3ZyYW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIsCj4gLQkuY2xlYW51cF9mYgk9IGRybV9n
ZW1fdnJhbV9wbGFuZV9oZWxwZXJfY2xlYW51cF9mYiwKPiArCURSTV9HRU1fVlJBTV9QTEFORV9I
RUxQRVJfRlVOQ1MsCj4gICAJLmF0b21pY19jaGVjayA9IGhpYm1jX3BsYW5lX2F0b21pY19jaGVj
aywKPiAgIAkuYXRvbWljX3VwZGF0ZSA9IGhpYm1jX3BsYW5lX2F0b21pY191cGRhdGUsCj4gICB9
OwpSZXZpZXdlZC1ieTogVGlhbiBUYW8gPHRpYW50YW82QGhpc2lsaWNvbi5jb20+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92Ym94dmlkZW8vdmJveF9tb2RlLmMgYi9kcml2ZXJzL2dw
dS9kcm0vdmJveHZpZGVvL3Zib3hfbW9kZS5jCj4gaW5kZXggOTY0MzgxZDU1ZmMxLi45NzJjODNi
NzIwYWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Zib3h2aWRlby92Ym94X21vZGUu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS92Ym94dmlkZW8vdmJveF9tb2RlLmMKPiBAQCAtNDg4
LDggKzQ4OCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBlcl9mdW5jcyB2
Ym94X3ByaW1hcnlfaGVscGVyX2Z1bmNzID0gewo+ICAgCS5hdG9taWNfY2hlY2sgPSB2Ym94X3By
aW1hcnlfYXRvbWljX2NoZWNrLAo+ICAgCS5hdG9taWNfdXBkYXRlID0gdmJveF9wcmltYXJ5X2F0
b21pY191cGRhdGUsCj4gICAJLmF0b21pY19kaXNhYmxlID0gdmJveF9wcmltYXJ5X2F0b21pY19k
aXNhYmxlLAo+IC0JLnByZXBhcmVfZmIJPSBkcm1fZ2VtX3ZyYW1fcGxhbmVfaGVscGVyX3ByZXBh
cmVfZmIsCj4gLQkuY2xlYW51cF9mYgk9IGRybV9nZW1fdnJhbV9wbGFuZV9oZWxwZXJfY2xlYW51
cF9mYiwKPiArCURSTV9HRU1fVlJBTV9QTEFORV9IRUxQRVJfRlVOQ1MsCj4gICB9Owo+ICAgCj4g
ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wbGFuZV9mdW5jcyB2Ym94X3ByaW1hcnlfcGxhbmVf
ZnVuY3MgPSB7Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9nZW1fdnJhbV9oZWxwZXIu
aCBiL2luY2x1ZGUvZHJtL2RybV9nZW1fdnJhbV9oZWxwZXIuaAo+IGluZGV4IDI3ZWQ3ZTkyNDNi
OS4uZjQ4ZDE4MWM4MjRiIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9nZW1fdnJhbV9o
ZWxwZXIuaAo+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9nZW1fdnJhbV9oZWxwZXIuaAo+IEBAIC0x
MjQsNiArMTI0LDE4IEBAIHZvaWQKPiAgIGRybV9nZW1fdnJhbV9wbGFuZV9oZWxwZXJfY2xlYW51
cF9mYihzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPiAgIAkJCQkgICAgIHN0cnVjdCBkcm1fcGxh
bmVfc3RhdGUgKm9sZF9zdGF0ZSk7Cj4gICAKPiArLyoqCj4gKyAqIERSTV9HRU1fVlJBTV9QTEFO
RV9IRUxQRVJfRlVOQ1MgLQo+ICsgKglJbml0aWFsaXplcyBzdHJ1Y3QgZHJtX3BsYW5lX2hlbHBl
cl9mdW5jcyBmb3IgVlJBTSBoYW5kbGluZwo+ICsgKgo+ICsgKiBEcml2ZXJzIG1heSB1c2UgR0VN
IEJPcyBhcyBWUkFNIGhlbHBlcnMgZm9yIHRoZSBmcmFtZWJ1ZmZlciBtZW1vcnkuIFRoaXMKPiAr
ICogbWFjcm8gaW5pdGlhbGl6ZXMgc3RydWN0IGRybV9wbGFuZV9oZWxwZXJfZnVuY3MgdG8gdXNl
IHRoZSByZXNwZWN0aXZlIGhlbHBlcgo+ICsgKiBmdW5jdGlvbnMuCj4gKyAqLwo+ICsjZGVmaW5l
IERSTV9HRU1fVlJBTV9QTEFORV9IRUxQRVJfRlVOQ1MgXAo+ICsJLnByZXBhcmVfZmIgPSBkcm1f
Z2VtX3ZyYW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIsIFwKPiArCS5jbGVhbnVwX2ZiID0gZHJt
X2dlbV92cmFtX3BsYW5lX2hlbHBlcl9jbGVhbnVwX2ZiCj4gKwo+ICAgLyoKPiAgICAqIEhlbHBl
cnMgZm9yIHN0cnVjdCBkcm1fc2ltcGxlX2Rpc3BsYXlfcGlwZV9mdW5jcwo+ICAgICovCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
