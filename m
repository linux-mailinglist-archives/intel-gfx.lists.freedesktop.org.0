Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC0E8FA3E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 07:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0242D6EACA;
	Fri, 16 Aug 2019 05:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4ABF6EAC8
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 05:10:08 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id e8so2375659wme.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 22:10:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pA2fpvvcdL22Tw3JJeWd3hmbVNVGFjb0aFoBlDBUCEI=;
 b=Vqjf40VRDq8cwxDomQV5WAsuM48guDYuuUqjy9hmFgxvGB8PxuGg/yivAiTwduQkPN
 PZNTfC0LQneWyo6n4NO9ui+MJF4cKHbWyNZDi1JMIpg6ZfODRnX7CQ04tmiN97qPuoKh
 nnDleGntI3MwIhx6nCDxAb+sYGKE4OboDrPw7bkZduFc3kkpvtO1H50FgizytguVMENZ
 hCGrmf8b9EjYcLdY9p89G7+6ibRA9sjn8nz11d/5FwuwhhFEScnx13QfdGQy2AQoZ+vW
 5wIG+/aMA4yw28Kp5hfEG16rkiHKydIu1g+A6ZekTA7JKK+i//o4Qdu+hZk6lGOwi0c2
 FQLA==
X-Gm-Message-State: APjAAAW57No6wKSJCePG22eO4bQjeCgs4wqMKccSoGo4UafQecbBVpRK
 0H2nPBCjZr+Keu67IxtLK2Wxip1Xw/ofOPahyfs=
X-Google-Smtp-Source: APXvYqwjsOeHqreWogz7uPp1S2one5c8nU+ej2Ek2VSOPeNNLAyn/NzowCLVKiBe5dKAyvk2Qgo/vlgvGptspX7TVwE=
X-Received: by 2002:a05:600c:2c9:: with SMTP id 9mr5021963wmn.79.1565932207339; 
 Thu, 15 Aug 2019 22:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190816012343.36433-1-daniele.ceraolospurio@intel.com>
 <20190816012343.36433-5-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190816012343.36433-5-daniele.ceraolospurio@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Thu, 15 Aug 2019 22:09:54 -0700
Message-ID: <CAKi4VAJm5NJhofo57mygqQNsb-MMj_C=nnp_yT8EqtMRS-SepA@mail.gmail.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=pA2fpvvcdL22Tw3JJeWd3hmbVNVGFjb0aFoBlDBUCEI=;
 b=hLggtIpiBDFm/imFvGs4odqv8eGHpU3IMouIGIF1XLAPLm5e9p5Ttc/yvJa7EN0UA8
 p+q/QYwGQm4vD9V9UKfp0QurR8FCG5P3cirAn3QCsoYVAJ6ywIebNJZ6fZJpqEZ+fHgq
 7HXuvd18Ith52SvhsTHnszUlqEalOq4IywXhD0AfQ8wDxl861Q3BCpyLiBnuXV3VUZxr
 52mO32SsBhRB6yX66o/BDWGryg2iJ/jSajI9347dX4B4LlUj8OaKRip7Js/YlbQWQFDm
 dwBQ4g8/PpnFnnQHg8EluxCVYwIL6Liv2xY0YJvrd+GQ7JFrvUQ8xGHbPsKPEMOOO23V
 KjHA==
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Dynamically allocate s0ix
 struct for VLV
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgNjoyNCBQTSBEYW5pZWxlIENlcmFvbG8gU3B1cmlvCjxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKPgo+IFRoaXMgaXMgb25seSBy
ZXF1aXJlZCBmb3IgYSBzaW5nbGUgcGxhdGZvcm0gc28gbm8gbmVlZCB0byByZXNlcnZlIHRoZQo+
IG1lbW9yeSBvbiBhbGwgb2YgdGhlbS4KPgo+IFRoaXMgcmVtb3ZlcyB0aGUgbGFzdCBkaXJlY3Qg
ZGVwZW5kZW5jeSBvZiBpOTE1X2Rydi5oIG9uIGk5MTVfcmVnLmgKPiAoYXBhcnQgZnJvbSB0aGUg
aTkxNV9yZWdfdCBkZWZpbml0aW9uKS4KPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYyB8IDEwNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgIDY0ICstLS0tLS0tLS0tLS0tLS0tLS0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxMDAgaW5zZXJ0aW9ucygrKSwgNzEgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKPiBpbmRleCAyNTQxYTNhMWMyMjkuLjE3MjNiMmRkZmNjZCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IEBAIC04MCw2ICs4MCw2OCBAQAo+Cj4gIHN0YXRp
YyBzdHJ1Y3QgZHJtX2RyaXZlciBkcml2ZXI7Cj4KPiArc3RydWN0IHZsdl9zMGl4X3N0YXRlIHsK
PiArICAgICAgIC8qIEdBTSAqLwo+ICsgICAgICAgdTMyIHdyX3dhdGVybWFyazsKPiArICAgICAg
IHUzMiBnZnhfcHJpb19jdHJsOwo+ICsgICAgICAgdTMyIGFyYl9tb2RlOwo+ICsgICAgICAgdTMy
IGdmeF9wZW5kX3RsYjA7Cj4gKyAgICAgICB1MzIgZ2Z4X3BlbmRfdGxiMTsKPiArICAgICAgIHUz
MiBscmFfbGltaXRzW0dFTjdfTFJBX0xJTUlUU19SRUdfTlVNXTsKPiArICAgICAgIHUzMiBtZWRp
YV9tYXhfcmVxX2NvdW50Owo+ICsgICAgICAgdTMyIGdmeF9tYXhfcmVxX2NvdW50Owo+ICsgICAg
ICAgdTMyIHJlbmRlcl9od3NwOwo+ICsgICAgICAgdTMyIGVjb2NoazsKPiArICAgICAgIHUzMiBi
c2RfaHdzcDsKPiArICAgICAgIHUzMiBibHRfaHdzcDsKPiArICAgICAgIHUzMiB0bGJfcmRfYWRk
cjsKPiArCj4gKyAgICAgICAvKiBNQkMgKi8KPiArICAgICAgIHUzMiBnM2RjdGw7Cj4gKyAgICAg
ICB1MzIgZ3Nja2djdGw7Cj4gKyAgICAgICB1MzIgbWJjdGw7Cj4gKwo+ICsgICAgICAgLyogR0NQ
ICovCj4gKyAgICAgICB1MzIgdWNnY3RsMTsKPiArICAgICAgIHUzMiB1Y2djdGwzOwo+ICsgICAg
ICAgdTMyIHJjZ2N0bDE7Cj4gKyAgICAgICB1MzIgcmNnY3RsMjsKPiArICAgICAgIHUzMiByc3Rj
dGw7Cj4gKyAgICAgICB1MzIgbWlzY2NwY3RsOwo+ICsKPiArICAgICAgIC8qIEdQTSAqLwo+ICsg
ICAgICAgdTMyIGdmeHBhdXNlOwo+ICsgICAgICAgdTMyIHJwZGV1aHd0YzsKPiArICAgICAgIHUz
MiBycGRldWM7Cj4gKyAgICAgICB1MzIgZWNvYnVzOwo+ICsgICAgICAgdTMyIHB3cmR3bnVwY3Rs
Owo+ICsgICAgICAgdTMyIHJwX2Rvd25fdGltZW91dDsKPiArICAgICAgIHUzMiBycF9kZXVjc3c7
Cj4gKyAgICAgICB1MzIgcmN1Ym1hYmR0bXI7Cj4gKyAgICAgICB1MzIgcmNlZGF0YTsKPiArICAg
ICAgIHUzMiBzcGFyZTJnaDsKPiArCj4gKyAgICAgICAvKiBEaXNwbGF5IDEgQ1ogZG9tYWluICov
Cj4gKyAgICAgICB1MzIgZ3RfaW1yOwo+ICsgICAgICAgdTMyIGd0X2llcjsKPiArICAgICAgIHUz
MiBwbV9pbXI7Cj4gKyAgICAgICB1MzIgcG1faWVyOwo+ICsgICAgICAgdTMyIGd0X3NjcmF0Y2hb
R0VON19HVF9TQ1JBVENIX1JFR19OVU1dOwo+ICsKPiArICAgICAgIC8qIEdUIFNBIENaIGRvbWFp
biAqLwo+ICsgICAgICAgdTMyIHRpbGVjdGw7Cj4gKyAgICAgICB1MzIgZ3RfZmlmb2N0bDsKPiAr
ICAgICAgIHUzMiBndGxjX3dha2VfY3RybDsKPiArICAgICAgIHUzMiBndGxjX3N1cnZpdmU7Cj4g
KyAgICAgICB1MzIgcG13Z2ljejsKPiArCj4gKyAgICAgICAvKiBEaXNwbGF5IDIgQ1ogZG9tYWlu
ICovCj4gKyAgICAgICB1MzIgZ3VfY3RsMDsKPiArICAgICAgIHUzMiBndV9jdGwxOwo+ICsgICAg
ICAgdTMyIHBjYnI7Cj4gKyAgICAgICB1MzIgY2xvY2tfZ2F0ZV9kaXMyOwo+ICt9Owo+ICsKPiAg
c3RhdGljIGludCBpOTE1X2dldF9icmlkZ2VfZGV2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKPiAgewo+ICAgICAgICAgaW50IGRvbWFpbiA9IHBjaV9kb21haW5fbnIoZGV2X3By
aXYtPmRybS5wZGV2LT5idXMpOwo+IEBAIC00NjYsNiArNTI4LDI4IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX2RldGVjdF9wcmVwcm9kdWN0aW9uX2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKPiAgICAgICAgIH0KPiAgfQo+Cj4gK3N0YXRpYyBpbnQgdmx2X2FsbG9jX3MwaXhfc3Rh
dGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gK3sKPiArICAgICAgIGlmICghSVNf
VkFMTEVZVklFVyhpOTE1KSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gKwo+ICsgICAg
ICAgLyogd2Ugd3JpdGUgYWxsIHRoZSB2YWx1ZXMgaW4gdGhlIHN0cnVjdHVyZSwgc28gbm8gbmVl
ZCB0byB6ZXJvIGl0IG91dCAqLwo+ICsgICAgICAgaTkxNS0+czBpeF9zdGF0ZSA9IGttYWxsb2Mo
c2l6ZW9mKHN0cnVjdCB2bHZfczBpeF9zdGF0ZSksIEdGUF9LRVJORUwpOwo+ICsgICAgICAgaWYg
KCFpOTE1LT5zMGl4X3N0YXRlKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT01FTTsKPiAr
Cj4gKyAgICAgICByZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgdmx2X2ZyZWVfczBp
eF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArewo+ICsgICAgICAgaWYg
KCFpOTE1LT5zMGl4X3N0YXRlKQo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKwo+ICsgICAg
ICAga2ZyZWUoaTkxNS0+czBpeF9zdGF0ZSk7Cj4gKyAgICAgICBpOTE1LT5zMGl4X3N0YXRlID0g
TlVMTDsKPiArfQo+ICsKPiAgLyoqCj4gICAqIGk5MTVfZHJpdmVyX2Vhcmx5X3Byb2JlIC0gc2V0
dXAgc3RhdGUgbm90IHJlcXVpcmluZyBkZXZpY2UgYWNjZXNzCj4gICAqIEBkZXZfcHJpdjogZGV2
aWNlIHByaXZhdGUKPiBAQCAtNTA4LDEzICs1OTIsMTcgQEAgc3RhdGljIGludCBpOTE1X2RyaXZl
cl9lYXJseV9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAgICAg
ICBpZiAocmV0IDwgMCkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPgo+ICsgICAgICAg
cmV0ID0gdmx2X2FsbG9jX3MwaXhfc3RhdGUoZGV2X3ByaXYpOwo+ICsgICAgICAgaWYgKHJldCA8
IDApCj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyX3dvcmtxdWV1ZXM7Cj4gKwo+ICAgICAgICAg
aW50ZWxfd29wY21faW5pdF9lYXJseSgmZGV2X3ByaXYtPndvcGNtKTsKPgo+ICAgICAgICAgaW50
ZWxfZ3RfaW5pdF9lYXJseSgmZGV2X3ByaXYtPmd0LCBkZXZfcHJpdik7Cj4KPiAgICAgICAgIHJl
dCA9IGk5MTVfZ2VtX2luaXRfZWFybHkoZGV2X3ByaXYpOwo+ICAgICAgICAgaWYgKHJldCA8IDAp
Cj4gLSAgICAgICAgICAgICAgIGdvdG8gZXJyX3dvcmtxdWV1ZXM7Cj4gKyAgICAgICAgICAgICAg
IGdvdG8gZXJyX2d0Owo+Cj4gICAgICAgICAvKiBUaGlzIG11c3QgYmUgY2FsbGVkIGJlZm9yZSBh
bnkgY2FsbHMgdG8gSEFTX1BDSF8qICovCj4gICAgICAgICBpbnRlbF9kZXRlY3RfcGNoKGRldl9w
cml2KTsKPiBAQCAtNTM2LDggKzYyNCwxMCBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX2Vhcmx5
X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPgo+ICBlcnJfZ2VtOgo+
ICAgICAgICAgaTkxNV9nZW1fY2xlYW51cF9lYXJseShkZXZfcHJpdik7Cj4gLWVycl93b3JrcXVl
dWVzOgo+ICtlcnJfZ3Q6Cj4gICAgICAgICBpbnRlbF9ndF9kcml2ZXJfbGF0ZV9yZWxlYXNlKCZk
ZXZfcHJpdi0+Z3QpOwo+ICsgICAgICAgdmx2X2ZyZWVfczBpeF9zdGF0ZShkZXZfcHJpdik7Cj4g
K2Vycl93b3JrcXVldWVzOgo+ICAgICAgICAgaTkxNV93b3JrcXVldWVzX2NsZWFudXAoZGV2X3By
aXYpOwo+ICAgICAgICAgcmV0dXJuIHJldDsKPiAgfQo+IEBAIC01NTMsNiArNjQzLDcgQEAgc3Rh
dGljIHZvaWQgaTkxNV9kcml2ZXJfbGF0ZV9yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKPiAgICAgICAgIGludGVsX3Bvd2VyX2RvbWFpbnNfY2xlYW51cChkZXZfcHJp
dik7Cj4gICAgICAgICBpOTE1X2dlbV9jbGVhbnVwX2Vhcmx5KGRldl9wcml2KTsKPiAgICAgICAg
IGludGVsX2d0X2RyaXZlcl9sYXRlX3JlbGVhc2UoJmRldl9wcml2LT5ndCk7Cj4gKyAgICAgICB2
bHZfZnJlZV9zMGl4X3N0YXRlKGRldl9wcml2KTsKPiAgICAgICAgIGk5MTVfd29ya3F1ZXVlc19j
bGVhbnVwKGRldl9wcml2KTsKPgo+ICAgICAgICAgcG1fcW9zX3JlbW92ZV9yZXF1ZXN0KCZkZXZf
cHJpdi0+c2JfcW9zKTsKPiBAQCAtMjEzNyw3ICsyMjI4LDcgQEAgc3RhdGljIGludCBpOTE1X3Bt
X3Jlc3RvcmUoc3RydWN0IGRldmljZSAqa2RldikKPiAgICovCj4gIHN0YXRpYyB2b2lkIHZsdl9z
YXZlX2d1bml0X3MwaXhfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+
ICB7Cj4gLSAgICAgICBzdHJ1Y3Qgdmx2X3MwaXhfc3RhdGUgKnMgPSAmZGV2X3ByaXYtPnZsdl9z
MGl4X3N0YXRlOwo+ICsgICAgICAgc3RydWN0IHZsdl9zMGl4X3N0YXRlICpzID0gZGV2X3ByaXYt
PnMwaXhfc3RhdGU7Cj4gICAgICAgICBpbnQgaTsKPgo+ICAgICAgICAgLyogR0FNIDB4NDAwMC0w
eDQ3NzAgKi8KPiBAQCAtMjE0Nyw3ICsyMjM4LDcgQEAgc3RhdGljIHZvaWQgdmx2X3NhdmVfZ3Vu
aXRfczBpeF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAgICAg
ICBzLT5nZnhfcGVuZF90bGIwICAgICAgICA9IEk5MTVfUkVBRChHRU43X0dGWF9QRU5EX1RMQjAp
Owo+ICAgICAgICAgcy0+Z2Z4X3BlbmRfdGxiMSAgICAgICAgPSBJOTE1X1JFQUQoR0VON19HRlhf
UEVORF9UTEIxKTsKPgo+IC0gICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUocy0+bHJh
X2xpbWl0cyk7IGkrKykKPiArICAgICAgIGZvciAoaSA9IDA7IGkgPCBHRU43X0xSQV9MSU1JVFNf
UkVHX05VTTsgaSsrKQo+ICAgICAgICAgICAgICAgICBzLT5scmFfbGltaXRzW2ldID0gSTkxNV9S
RUFEKEdFTjdfTFJBX0xJTUlUUyhpKSk7Cj4KPiAgICAgICAgIHMtPm1lZGlhX21heF9yZXFfY291
bnQgID0gSTkxNV9SRUFEKEdFTjdfTUVESUFfTUFYX1JFUV9DT1VOVCk7Cj4gQEAgLTIxOTEsNyAr
MjI4Miw3IEBAIHN0YXRpYyB2b2lkIHZsdl9zYXZlX2d1bml0X3MwaXhfc3RhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAgICAgICAgcy0+cG1faW1yICAgICAgICAgICAg
ICAgPSBJOTE1X1JFQUQoR0VONl9QTUlNUik7Cj4gICAgICAgICBzLT5wbV9pZXIgICAgICAgICAg
ICAgICA9IEk5MTVfUkVBRChHRU42X1BNSUVSKTsKPgo+IC0gICAgICAgZm9yIChpID0gMDsgaSA8
IEFSUkFZX1NJWkUocy0+Z3Rfc2NyYXRjaCk7IGkrKykKPiArICAgICAgIGZvciAoaSA9IDA7IGkg
PCBHRU43X0dUX1NDUkFUQ0hfUkVHX05VTTsgaSsrKQo+ICAgICAgICAgICAgICAgICBzLT5ndF9z
Y3JhdGNoW2ldID0gSTkxNV9SRUFEKEdFTjdfR1RfU0NSQVRDSChpKSk7Cj4KPiAgICAgICAgIC8q
IEdUIFNBIENaIGRvbWFpbiwgMHgxMDAwMDAtMHgxMzgxMjQgKi8KPiBAQCAtMjIxOCw3ICsyMzA5
LDcgQEAgc3RhdGljIHZvaWQgdmx2X3NhdmVfZ3VuaXRfczBpeF9zdGF0ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4KPiAgc3RhdGljIHZvaWQgdmx2X3Jlc3RvcmVfZ3VuaXRf
czBpeF9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIHsKPiAtICAg
ICAgIHN0cnVjdCB2bHZfczBpeF9zdGF0ZSAqcyA9ICZkZXZfcHJpdi0+dmx2X3MwaXhfc3RhdGU7
Cj4gKyAgICAgICBzdHJ1Y3Qgdmx2X3MwaXhfc3RhdGUgKnMgPSBkZXZfcHJpdi0+czBpeF9zdGF0
ZTsKPiAgICAgICAgIHUzMiB2YWw7Cj4gICAgICAgICBpbnQgaTsKPgo+IEBAIC0yMjI5LDcgKzIz
MjAsNyBAQCBzdGF0aWMgdm9pZCB2bHZfcmVzdG9yZV9ndW5pdF9zMGl4X3N0YXRlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgICAgICAgIEk5MTVfV1JJVEUoR0VON19HRlhf
UEVORF9UTEIwLCAgcy0+Z2Z4X3BlbmRfdGxiMCk7Cj4gICAgICAgICBJOTE1X1dSSVRFKEdFTjdf
R0ZYX1BFTkRfVExCMSwgIHMtPmdmeF9wZW5kX3RsYjEpOwo+Cj4gLSAgICAgICBmb3IgKGkgPSAw
OyBpIDwgQVJSQVlfU0laRShzLT5scmFfbGltaXRzKTsgaSsrKQo+ICsgICAgICAgZm9yIChpID0g
MDsgaSA8IEdFTjdfTFJBX0xJTUlUU19SRUdfTlVNOyBpKyspCgp3aHk/CgpMdWNhcyBEZSBNYXJj
aGkKCj4gICAgICAgICAgICAgICAgIEk5MTVfV1JJVEUoR0VON19MUkFfTElNSVRTKGkpLCBzLT5s
cmFfbGltaXRzW2ldKTsKPgo+ICAgICAgICAgSTkxNV9XUklURShHRU43X01FRElBX01BWF9SRVFf
Q09VTlQsIHMtPm1lZGlhX21heF9yZXFfY291bnQpOwo+IEBAIC0yMjczLDcgKzIzNjQsNyBAQCBz
dGF0aWMgdm9pZCB2bHZfcmVzdG9yZV9ndW5pdF9zMGl4X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPiAgICAgICAgIEk5MTVfV1JJVEUoR0VONl9QTUlNUiwgICAgICAg
ICAgcy0+cG1faW1yKTsKPiAgICAgICAgIEk5MTVfV1JJVEUoR0VONl9QTUlFUiwgICAgICAgICAg
cy0+cG1faWVyKTsKPgo+IC0gICAgICAgZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUocy0+Z3Rf
c2NyYXRjaCk7IGkrKykKPiArICAgICAgIGZvciAoaSA9IDA7IGkgPCBHRU43X0dUX1NDUkFUQ0hf
UkVHX05VTTsgaSsrKQo+ICAgICAgICAgICAgICAgICBJOTE1X1dSSVRFKEdFTjdfR1RfU0NSQVRD
SChpKSwgcy0+Z3Rfc2NyYXRjaFtpXSk7Cj4KPiAgICAgICAgIC8qIEdUIFNBIENaIGRvbWFpbiwg
MHgxMDAwMDAtMHgxMzgxMjQgKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBpbmRleCBjNjcy
MmQ1NGNjZDUuLjliNDFmMjIwOWI2OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBA
IC01MjcsNjggKzUyNyw2IEBAIHN0cnVjdCBpOTE1X3N1c3BlbmRfc2F2ZWRfcmVnaXN0ZXJzIHsK
PiAgICAgICAgIHUxNiBzYXZlR0NER01CVVM7Cj4gIH07Cj4KPiAtc3RydWN0IHZsdl9zMGl4X3N0
YXRlIHsKPiAtICAgICAgIC8qIEdBTSAqLwo+IC0gICAgICAgdTMyIHdyX3dhdGVybWFyazsKPiAt
ICAgICAgIHUzMiBnZnhfcHJpb19jdHJsOwo+IC0gICAgICAgdTMyIGFyYl9tb2RlOwo+IC0gICAg
ICAgdTMyIGdmeF9wZW5kX3RsYjA7Cj4gLSAgICAgICB1MzIgZ2Z4X3BlbmRfdGxiMTsKPiAtICAg
ICAgIHUzMiBscmFfbGltaXRzW0dFTjdfTFJBX0xJTUlUU19SRUdfTlVNXTsKPiAtICAgICAgIHUz
MiBtZWRpYV9tYXhfcmVxX2NvdW50Owo+IC0gICAgICAgdTMyIGdmeF9tYXhfcmVxX2NvdW50Owo+
IC0gICAgICAgdTMyIHJlbmRlcl9od3NwOwo+IC0gICAgICAgdTMyIGVjb2NoazsKPiAtICAgICAg
IHUzMiBic2RfaHdzcDsKPiAtICAgICAgIHUzMiBibHRfaHdzcDsKPiAtICAgICAgIHUzMiB0bGJf
cmRfYWRkcjsKPiAtCj4gLSAgICAgICAvKiBNQkMgKi8KPiAtICAgICAgIHUzMiBnM2RjdGw7Cj4g
LSAgICAgICB1MzIgZ3Nja2djdGw7Cj4gLSAgICAgICB1MzIgbWJjdGw7Cj4gLQo+IC0gICAgICAg
LyogR0NQICovCj4gLSAgICAgICB1MzIgdWNnY3RsMTsKPiAtICAgICAgIHUzMiB1Y2djdGwzOwo+
IC0gICAgICAgdTMyIHJjZ2N0bDE7Cj4gLSAgICAgICB1MzIgcmNnY3RsMjsKPiAtICAgICAgIHUz
MiByc3RjdGw7Cj4gLSAgICAgICB1MzIgbWlzY2NwY3RsOwo+IC0KPiAtICAgICAgIC8qIEdQTSAq
Lwo+IC0gICAgICAgdTMyIGdmeHBhdXNlOwo+IC0gICAgICAgdTMyIHJwZGV1aHd0YzsKPiAtICAg
ICAgIHUzMiBycGRldWM7Cj4gLSAgICAgICB1MzIgZWNvYnVzOwo+IC0gICAgICAgdTMyIHB3cmR3
bnVwY3RsOwo+IC0gICAgICAgdTMyIHJwX2Rvd25fdGltZW91dDsKPiAtICAgICAgIHUzMiBycF9k
ZXVjc3c7Cj4gLSAgICAgICB1MzIgcmN1Ym1hYmR0bXI7Cj4gLSAgICAgICB1MzIgcmNlZGF0YTsK
PiAtICAgICAgIHUzMiBzcGFyZTJnaDsKPiAtCj4gLSAgICAgICAvKiBEaXNwbGF5IDEgQ1ogZG9t
YWluICovCj4gLSAgICAgICB1MzIgZ3RfaW1yOwo+IC0gICAgICAgdTMyIGd0X2llcjsKPiAtICAg
ICAgIHUzMiBwbV9pbXI7Cj4gLSAgICAgICB1MzIgcG1faWVyOwo+IC0gICAgICAgdTMyIGd0X3Nj
cmF0Y2hbR0VON19HVF9TQ1JBVENIX1JFR19OVU1dOwo+IC0KPiAtICAgICAgIC8qIEdUIFNBIENa
IGRvbWFpbiAqLwo+IC0gICAgICAgdTMyIHRpbGVjdGw7Cj4gLSAgICAgICB1MzIgZ3RfZmlmb2N0
bDsKPiAtICAgICAgIHUzMiBndGxjX3dha2VfY3RybDsKPiAtICAgICAgIHUzMiBndGxjX3N1cnZp
dmU7Cj4gLSAgICAgICB1MzIgcG13Z2ljejsKPiAtCj4gLSAgICAgICAvKiBEaXNwbGF5IDIgQ1og
ZG9tYWluICovCj4gLSAgICAgICB1MzIgZ3VfY3RsMDsKPiAtICAgICAgIHUzMiBndV9jdGwxOwo+
IC0gICAgICAgdTMyIHBjYnI7Cj4gLSAgICAgICB1MzIgY2xvY2tfZ2F0ZV9kaXMyOwo+IC19Owo+
IC0KPiAgc3RydWN0IGludGVsX3Jwc19laSB7Cj4gICAgICAgICBrdGltZV90IGt0aW1lOwo+ICAg
ICAgICAgdTMyIHJlbmRlcl9jMDsKPiBAQCAtMTYyMiw3ICsxNTYwLDcgQEAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgewo+ICAgICAgICAgdTMyIHN1c3BlbmRfY291bnQ7Cj4gICAgICAgICBib29s
IHBvd2VyX2RvbWFpbnNfc3VzcGVuZGVkOwo+ICAgICAgICAgc3RydWN0IGk5MTVfc3VzcGVuZF9z
YXZlZF9yZWdpc3RlcnMgcmVnZmlsZTsKPiAtICAgICAgIHN0cnVjdCB2bHZfczBpeF9zdGF0ZSB2
bHZfczBpeF9zdGF0ZTsKPiArICAgICAgIHZvaWQgKnMwaXhfc3RhdGU7Cj4KPiAgICAgICAgIGVu
dW0gewo+ICAgICAgICAgICAgICAgICBJOTE1X1NBR1ZfVU5LTk9XTiA9IDAsCj4gLS0KPiAyLjIy
LjAKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAoKCgotLSAKTHVjYXMgRGUgTWFyY2hpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
