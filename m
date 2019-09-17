Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D38AB4BBF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 12:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB9C6EBA6;
	Tue, 17 Sep 2019 10:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E2B989B03;
 Tue, 17 Sep 2019 10:15:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B6C58307D8BE;
 Tue, 17 Sep 2019 10:15:05 +0000 (UTC)
Received: from [10.72.12.121] (ovpn-12-121.pek2.redhat.com [10.72.12.121])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2A90E5C219;
 Tue, 17 Sep 2019 10:14:42 +0000 (UTC)
To: "Tian, Kevin" <kevin.tian@intel.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "kwankhede@nvidia.com" <kwankhede@nvidia.com>,
 "alex.williamson@redhat.com" <alex.williamson@redhat.com>
References: <20190912094012.29653-1-jasowang@redhat.com>
 <20190912094012.29653-2-jasowang@redhat.com>
 <AADFC41AFE54684AB9EE6CBC0274A5D19D579F2F@SHSMSX104.ccr.corp.intel.com>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <89567b95-be92-24b5-b205-9fe2d2dc4c93@redhat.com>
Date: Tue, 17 Sep 2019 18:14:38 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <AADFC41AFE54684AB9EE6CBC0274A5D19D579F2F@SHSMSX104.ccr.corp.intel.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 17 Sep 2019 10:15:06 +0000 (UTC)
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] mdev: device id support
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
Cc: "sebott@linux.ibm.com" <sebott@linux.ibm.com>,
 "mst@redhat.com" <mst@redhat.com>, "airlied@linux.ie" <airlied@linux.ie>,
 "heiko.carstens@de.ibm.com" <heiko.carstens@de.ibm.com>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>,
 "rob.miller@broadcom.com" <rob.miller@broadcom.com>,
 "pasic@linux.ibm.com" <pasic@linux.ibm.com>,
 "borntraeger@de.ibm.com" <borntraeger@de.ibm.com>,
 "farman@linux.ibm.com" <farman@linux.ibm.com>,
 "idos@mellanox.com" <idos@mellanox.com>,
 "gor@linux.ibm.com" <gor@linux.ibm.com>, "Liang,
 Cunming" <cunming.liang@intel.com>, "Wang, Xiao W" <xiao.w.wang@intel.com>,
 "freude@linux.ibm.com" <freude@linux.ibm.com>,
 "akrowiak@linux.ibm.com" <akrowiak@linux.ibm.com>,
 "pmorel@linux.ibm.com" <pmorel@linux.ibm.com>, "Bie,
 Tiwei" <tiwei.bie@intel.com>, "cohuck@redhat.com" <cohuck@redhat.com>,
 "oberpar@linux.ibm.com" <oberpar@linux.ibm.com>,
 "maxime.coquelin@redhat.com" <maxime.coquelin@redhat.com>, "Wang,
 Zhihong" <zhihong.wang@intel.com>, "Zhu, Lingshan" <lingshan.zhu@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwMTkvOS8xNyDkuIvljYgzOjU1LCBUaWFuLCBLZXZpbiB3cm90ZToKPj4gRnJvbTogSmFz
b24gV2FuZwo+PiBTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDEyLCAyMDE5IDU6NDAgUE0KPj4K
Pj4gTWRldiBidXMgb25seSBzdXBwb3J0IHZmaW8gZHJpdmVyIHJpZ2h0IG5vdywgc28gaXQgZG9l
c24ndCBpbXBsZW1lbnQKPj4gbWF0Y2ggbWV0aG9kLiBCdXQgaW4gdGhlIGZ1dHVyZSwgd2UgbWF5
IGFkZCBkcml2ZXJzIG90aGVyIHRoYW4gdmZpbywKPj4gb25lIGV4YW1wbGUgaXMgdmlydGlvLW1k
ZXZbMV0gZHJpdmVyLiBUaGlzIG1lYW5zIHdlIG5lZWQgdG8gYWRkIGRldmljZQo+PiBpZCBzdXBw
b3J0IGluIGJ1cyBtYXRjaCBtZXRob2QgdG8gcGFpciB0aGUgbWRldiBkZXZpY2UgYW5kIG1kZXYg
ZHJpdmVyCj4+IGNvcnJlY3RseS4KPiAiZGV2aWNlIGlkIiBzb3VuZCBhIGJpdCBjb25mdXNpbmcg
dG8gbWUgLSBpdCB1c3VhbGx5IG1lYW5zIHNvbWV0aGluZwo+IHVuaXF1ZSB0byBlYWNoIGRldmlj
ZSwgd2hpbGUgaGVyZSBpdCBpcyB1c2VkIHRvIGluZGljYXRlIGV4cGVjdGVkIGRyaXZlcgo+IHR5
cGVzICh2ZmlvLCB2aXJ0aW8sIGV0Yy4pLiBidXQgdXNpbmcgImJ1cyBpZCIgaXMgYWxzbyBub3Qg
Z29vZCAtIHdlIGhhdmUKPiBvbmx5IG9uZSBtZGV2IGJ1cyBoZXJlLiBUaGVuIHdoYXQgYWJvdXQg
ImNsYXNzIGlkIj8KCgpJJ20gZmluZSB3aXRoIHRoaXMuCgpUaGFua3MKCgo+Cj4+IFNvIHRoaXMg
cGF0Y2ggYWRkIGlkX3RhYmxlIHRvIG1kZXZfZHJpdmVyIGFuZCBpZCBmb3IgbWRldiBwYXJlbnQs
IGFuZAo+PiBpbXBsZW1lbnQgdGhlIG1hdGNoIG1ldGhvZCBmb3IgbWRldiBidXMuCj4+Cj4+IFsx
XSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOS85LzEwLzEzNQo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndnQva3ZtZ3QuYyAgfCAgMiArLQo+PiAgIGRyaXZlcnMvczM5MC9jaW8vdmZp
b19jY3dfb3BzLmMgICB8ICAyICstCj4+ICAgZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29w
cy5jIHwgIDMgKystCj4+ICAgZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMgICAgIHwgMTQg
KysrKysrKysrKysrLS0KPj4gICBkcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2RyaXZlci5jICAgfCAx
NCArKysrKysrKysrKysrKwo+PiAgIGRyaXZlcnMvdmZpby9tZGV2L21kZXZfcHJpdmF0ZS5oICB8
ICAxICsKPj4gICBkcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYyAgICAgfCAgNiArKysrKysK
Pj4gICBpbmNsdWRlL2xpbnV4L21kZXYuaCAgICAgICAgICAgICAgfCAgNiArKysrKy0KPj4gICBp
bmNsdWRlL2xpbnV4L21vZF9kZXZpY2V0YWJsZS5oICAgfCAgNiArKysrKysKPj4gICBzYW1wbGVz
L3ZmaW8tbWRldi9tYm9jaHMuYyAgICAgICAgfCAgMiArLQo+PiAgIHNhbXBsZXMvdmZpby1tZGV2
L21kcHkuYyAgICAgICAgICB8ICAyICstCj4+ICAgc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jICAg
ICAgICAgIHwgIDIgKy0KPj4gICAxMiBmaWxlcyBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspLCA5
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0
L2t2bWd0LmMKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQva3ZtZ3QuYwo+PiBpbmRleCAy
M2FhM2U1MGNiZjguLjE5ZDUxYTM1ZjAxOSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Z0L2t2bWd0LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0
LmMKPj4gQEAgLTE2MjUsNyArMTYyNSw3IEBAIHN0YXRpYyBpbnQga3ZtZ3RfaG9zdF9pbml0KHN0
cnVjdCBkZXZpY2UgKmRldiwgdm9pZAo+PiAqZ3Z0LCBjb25zdCB2b2lkICpvcHMpCj4+ICAgCQly
ZXR1cm4gLUVGQVVMVDsKPj4gICAJaW50ZWxfdmdwdV9vcHMuc3VwcG9ydGVkX3R5cGVfZ3JvdXBz
ID0ga3ZtX3ZncHVfdHlwZV9ncm91cHM7Cj4+Cj4+IC0JcmV0dXJuIG1kZXZfcmVnaXN0ZXJfZGV2
aWNlKGRldiwgJmludGVsX3ZncHVfb3BzKTsKPj4gKwlyZXR1cm4gbWRldl9yZWdpc3Rlcl92Zmlv
X2RldmljZShkZXYsICZpbnRlbF92Z3B1X29wcyk7Cj4+ICAgfQo+Pgo+PiAgIHN0YXRpYyB2b2lk
IGt2bWd0X2hvc3RfZXhpdChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3MzOTAvY2lvL3ZmaW9fY2N3X29wcy5jCj4+IGIvZHJpdmVycy9zMzkwL2Npby92ZmlvX2Nj
d19vcHMuYwo+PiBpbmRleCA1ZWI2MTExNmNhNmYuLmY4N2Q5NDA5ZTI5MCAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9zMzkwL2Npby92ZmlvX2Njd19vcHMuYwo+PiArKysgYi9kcml2ZXJzL3MzOTAv
Y2lvL3ZmaW9fY2N3X29wcy5jCj4+IEBAIC01NzgsNyArNTc4LDcgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBtZGV2X3BhcmVudF9vcHMKPj4gdmZpb19jY3dfbWRldl9vcHMgPSB7Cj4+Cj4+ICAgaW50
IHZmaW9fY2N3X21kZXZfcmVnKHN0cnVjdCBzdWJjaGFubmVsICpzY2gpCj4+ICAgewo+PiAtCXJl
dHVybiBtZGV2X3JlZ2lzdGVyX2RldmljZSgmc2NoLT5kZXYsICZ2ZmlvX2Njd19tZGV2X29wcyk7
Cj4+ICsJcmV0dXJuIG1kZXZfcmVnaXN0ZXJfdmZpb19kZXZpY2UoJnNjaC0+ZGV2LAo+PiAmdmZp
b19jY3dfbWRldl9vcHMpOwo+PiAgIH0KPj4KPj4gICB2b2lkIHZmaW9fY2N3X21kZXZfdW5yZWco
c3RydWN0IHN1YmNoYW5uZWwgKnNjaCkKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvczM5MC9jcnlw
dG8vdmZpb19hcF9vcHMuYwo+PiBiL2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYwo+
PiBpbmRleCAwNjA0YjQ5YTRkMzIuLmVhY2JkZTNjN2E5NyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5jCj4+ICsrKyBiL2RyaXZlcnMvczM5MC9jcnlwdG8v
dmZpb19hcF9vcHMuYwo+PiBAQCAtMTI5NSw3ICsxMjk1LDggQEAgaW50IHZmaW9fYXBfbWRldl9y
ZWdpc3Rlcih2b2lkKQo+PiAgIHsKPj4gICAJYXRvbWljX3NldCgmbWF0cml4X2Rldi0+YXZhaWxh
YmxlX2luc3RhbmNlcywKPj4gTUFYX1pERVZfRU5UUklFU19FWFQpOwo+Pgo+PiAtCXJldHVybiBt
ZGV2X3JlZ2lzdGVyX2RldmljZSgmbWF0cml4X2Rldi0+ZGV2aWNlLAo+PiAmdmZpb19hcF9tYXRy
aXhfb3BzKTsKPj4gKwlyZXR1cm4gbWRldl9yZWdpc3Rlcl92ZmlvX2RldmljZSgmbWF0cml4X2Rl
di0+ZGV2aWNlLAo+PiArCQkJCQkgJnZmaW9fYXBfbWF0cml4X29wcyk7Cj4+ICAgfQo+Pgo+PiAg
IHZvaWQgdmZpb19hcF9tZGV2X3VucmVnaXN0ZXIodm9pZCkKPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdmZpby9tZGV2L21kZXZfY29yZS5jCj4+IGIvZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3Jl
LmMKPj4gaW5kZXggYjU1OGQ0Y2ZkMDgyLi5mYzA3ZmYzZWJlOTYgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvdmZpby9tZGV2L21kZXZfY29yZS5jCj4+ICsrKyBiL2RyaXZlcnMvdmZpby9tZGV2L21k
ZXZfY29yZS5jCj4+IEBAIC0xMzUsMTEgKzEzNSwxNCBAQCBzdGF0aWMgaW50IG1kZXZfZGV2aWNl
X3JlbW92ZV9jYihzdHJ1Y3QgZGV2aWNlCj4+ICpkZXYsIHZvaWQgKmRhdGEpCj4+ICAgICogbWRl
dl9yZWdpc3Rlcl9kZXZpY2UgOiBSZWdpc3RlciBhIGRldmljZQo+PiAgICAqIEBkZXY6IGRldmlj
ZSBzdHJ1Y3R1cmUgcmVwcmVzZW50aW5nIHBhcmVudCBkZXZpY2UuCj4+ICAgICogQG9wczogUGFy
ZW50IGRldmljZSBvcGVyYXRpb24gc3RydWN0dXJlIHRvIGJlIHJlZ2lzdGVyZWQuCj4+ICsgKiBA
aWQ6IGRldmljZSBpZC4KPj4gICAgKgo+PiAgICAqIEFkZCBkZXZpY2UgdG8gbGlzdCBvZiByZWdp
c3RlcmVkIHBhcmVudCBkZXZpY2VzLgo+PiAgICAqIFJldHVybnMgYSBuZWdhdGl2ZSB2YWx1ZSBv
biBlcnJvciwgb3RoZXJ3aXNlIDAuCj4+ICAgICovCj4+IC1pbnQgbWRldl9yZWdpc3Rlcl9kZXZp
Y2Uoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBzdHJ1Y3QKPj4gbWRldl9wYXJlbnRfb3BzICpv
cHMpCj4+ICtpbnQgbWRldl9yZWdpc3Rlcl9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+PiAr
CQkJIGNvbnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgKm9wcywKPj4gKwkJCSB1OCBpZCkKPj4g
ICB7Cj4+ICAgCWludCByZXQ7Cj4+ICAgCXN0cnVjdCBtZGV2X3BhcmVudCAqcGFyZW50Owo+PiBA
QCAtMTc1LDYgKzE3OCw3IEBAIGludCBtZGV2X3JlZ2lzdGVyX2RldmljZShzdHJ1Y3QgZGV2aWNl
ICpkZXYsIGNvbnN0Cj4+IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgKm9wcykKPj4KPj4gICAJcGFy
ZW50LT5kZXYgPSBkZXY7Cj4+ICAgCXBhcmVudC0+b3BzID0gb3BzOwo+PiArCXBhcmVudC0+ZGV2
aWNlX2lkID0gaWQ7Cj4+Cj4+ICAgCWlmICghbWRldl9idXNfY29tcGF0X2NsYXNzKSB7Cj4+ICAg
CQltZGV2X2J1c19jb21wYXRfY2xhc3MgPQo+PiBjbGFzc19jb21wYXRfcmVnaXN0ZXIoIm1kZXZf
YnVzIik7Cj4+IEBAIC0yMDgsNyArMjEyLDEzIEBAIGludCBtZGV2X3JlZ2lzdGVyX2RldmljZShz
dHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0Cj4+IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgKm9wcykK
Pj4gICAJCXB1dF9kZXZpY2UoZGV2KTsKPj4gICAJcmV0dXJuIHJldDsKPj4gICB9Cj4+IC1FWFBP
UlRfU1lNQk9MKG1kZXZfcmVnaXN0ZXJfZGV2aWNlKTsKPj4gKwo+PiAraW50IG1kZXZfcmVnaXN0
ZXJfdmZpb19kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LAo+PiArCQkJICAgICAgY29uc3Qgc3Ry
dWN0IG1kZXZfcGFyZW50X29wcyAqb3BzKQo+PiArewo+PiArCXJldHVybiBtZGV2X3JlZ2lzdGVy
X2RldmljZShkZXYsIG9wcywgTURFVl9JRF9WRklPKTsKPj4gK30KPj4gK0VYUE9SVF9TWU1CT0wo
bWRldl9yZWdpc3Rlcl92ZmlvX2RldmljZSk7Cj4+Cj4+ICAgLyoKPj4gICAgKiBtZGV2X3VucmVn
aXN0ZXJfZGV2aWNlIDogVW5yZWdpc3RlciBhIHBhcmVudCBkZXZpY2UKPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdmZpby9tZGV2L21kZXZfZHJpdmVyLmMKPj4gYi9kcml2ZXJzL3ZmaW8vbWRldi9t
ZGV2X2RyaXZlci5jCj4+IGluZGV4IDBkMzIyM2FlZTIwYi4uZmQ1ZTk1NDFkMThlIDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2RyaXZlci5jCj4+ICsrKyBiL2RyaXZlcnMv
dmZpby9tZGV2L21kZXZfZHJpdmVyLmMKPj4gQEAgLTY5LDggKzY5LDIyIEBAIHN0YXRpYyBpbnQg
bWRldl9yZW1vdmUoc3RydWN0IGRldmljZSAqZGV2KQo+PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+
Cj4+ICtzdGF0aWMgaW50IG1kZXZfbWF0Y2goc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2
aWNlX2RyaXZlciAqZHJ2KQo+PiArewo+PiArCXVuc2lnbmVkIGludCBpOwo+PiArCXN0cnVjdCBt
ZGV2X2RldmljZSAqbWRldiA9IHRvX21kZXZfZGV2aWNlKGRldik7Cj4+ICsJc3RydWN0IG1kZXZf
ZHJpdmVyICptZHJ2ID0gdG9fbWRldl9kcml2ZXIoZHJ2KTsKPj4gKwljb25zdCBzdHJ1Y3QgbWRl
dl9kZXZpY2VfaWQgKmlkcyA9IG1kcnYtPmlkX3RhYmxlOwo+PiArCj4+ICsJZm9yIChpID0gMDsg
aWRzW2ldLmlkOyBpKyspCj4+ICsJCWlmIChpZHNbaV0uaWQgPT0gbWRldi0+cGFyZW50LT5kZXZp
Y2VfaWQpCj4+ICsJCQlyZXR1cm4gMTsKPj4gKwlyZXR1cm4gMDsKPj4gK30KPj4gKwo+PiAgIHN0
cnVjdCBidXNfdHlwZSBtZGV2X2J1c190eXBlID0gewo+PiAgIAkubmFtZQkJPSAibWRldiIsCj4+
ICsJLm1hdGNoCQk9IG1kZXZfbWF0Y2gsCj4+ICAgCS5wcm9iZQkJPSBtZGV2X3Byb2JlLAo+PiAg
IAkucmVtb3ZlCQk9IG1kZXZfcmVtb3ZlLAo+PiAgIH07Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaAo+PiBiL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfcHJp
dmF0ZS5oCj4+IGluZGV4IDdkOTIyOTUwY2FhZi4uN2ZjODE1MzY3MWUwIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaAo+PiArKysgYi9kcml2ZXJzL3ZmaW8v
bWRldi9tZGV2X3ByaXZhdGUuaAo+PiBAQCAtMjIsNiArMjIsNyBAQCBzdHJ1Y3QgbWRldl9wYXJl
bnQgewo+PiAgIAlzdHJ1Y3QgbGlzdF9oZWFkIHR5cGVfbGlzdDsKPj4gICAJLyogU3luY2hyb25p
emUgZGV2aWNlIGNyZWF0aW9uL3JlbW92YWwgd2l0aCBwYXJlbnQgdW5yZWdpc3RyYXRpb24KPj4g
Ki8KPj4gICAJc3RydWN0IHJ3X3NlbWFwaG9yZSB1bnJlZ19zZW07Cj4+ICsJdTggZGV2aWNlX2lk
Owo+PiAgIH07Cj4+Cj4+ICAgc3RydWN0IG1kZXZfZGV2aWNlIHsKPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jCj4+IGIvZHJpdmVycy92ZmlvL21kZXYvdmZpb19t
ZGV2LmMKPj4gaW5kZXggMzA5NjRhNGUwYTI4Li44ODdjNTdmMTA4ODAgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jCj4+ICsrKyBiL2RyaXZlcnMvdmZpby9tZGV2
L3ZmaW9fbWRldi5jCj4+IEBAIC0xMjAsMTAgKzEyMCwxNiBAQCBzdGF0aWMgdm9pZCB2ZmlvX21k
ZXZfcmVtb3ZlKHN0cnVjdCBkZXZpY2UgKmRldikKPj4gICAJdmZpb19kZWxfZ3JvdXBfZGV2KGRl
dik7Cj4+ICAgfQo+Pgo+PiArc3RhdGljIHN0cnVjdCBtZGV2X2RldmljZV9pZCBpZF90YWJsZVtd
ID0gewo+PiArCXsgTURFVl9JRF9WRklPIH0sCj4+ICsJeyAwIH0sCj4+ICt9Owo+PiArCj4+ICAg
c3RhdGljIHN0cnVjdCBtZGV2X2RyaXZlciB2ZmlvX21kZXZfZHJpdmVyID0gewo+PiAgIAkubmFt
ZQk9ICJ2ZmlvX21kZXYiLAo+PiAgIAkucHJvYmUJPSB2ZmlvX21kZXZfcHJvYmUsCj4+ICAgCS5y
ZW1vdmUJPSB2ZmlvX21kZXZfcmVtb3ZlLAo+PiArCS5pZF90YWJsZSA9IGlkX3RhYmxlLAo+PiAg
IH07Cj4+Cj4+ICAgc3RhdGljIGludCBfX2luaXQgdmZpb19tZGV2X2luaXQodm9pZCkKPj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWRldi5oIGIvaW5jbHVkZS9saW51eC9tZGV2LmgKPj4g
aW5kZXggMGNlMzBjYTc4ZGIwLi5mODUwNDUzOTIxMjAgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUv
bGludXgvbWRldi5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvbWRldi5oCj4+IEBAIC0xMTgsNiAr
MTE4LDcgQEAgc3RydWN0IG1kZXZfdHlwZV9hdHRyaWJ1dGUKPj4gbWRldl90eXBlX2F0dHJfIyNf
bmFtZSA9CQlcCj4+ICAgICogQHByb2JlOiBjYWxsZWQgd2hlbiBuZXcgZGV2aWNlIGNyZWF0ZWQK
Pj4gICAgKiBAcmVtb3ZlOiBjYWxsZWQgd2hlbiBkZXZpY2UgcmVtb3ZlZAo+PiAgICAqIEBkcml2
ZXI6IGRldmljZSBkcml2ZXIgc3RydWN0dXJlCj4+ICsgKiBAaWRfdGFibGU6IHRoZSBpZHMgc2Vy
dmljZWQgYnkgdGhpcyBkcml2ZXIuCj4+ICAgICoKPj4gICAgKiovCj4+ICAgc3RydWN0IG1kZXZf
ZHJpdmVyIHsKPj4gQEAgLTEyNSw2ICsxMjYsNyBAQCBzdHJ1Y3QgbWRldl9kcml2ZXIgewo+PiAg
IAlpbnQgICgqcHJvYmUpKHN0cnVjdCBkZXZpY2UgKmRldik7Cj4+ICAgCXZvaWQgKCpyZW1vdmUp
KHN0cnVjdCBkZXZpY2UgKmRldik7Cj4+ICAgCXN0cnVjdCBkZXZpY2VfZHJpdmVyIGRyaXZlcjsK
Pj4gKwljb25zdCBzdHJ1Y3QgbWRldl9kZXZpY2VfaWQgKmlkX3RhYmxlOwo+PiAgIH07Cj4+Cj4+
ICAgI2RlZmluZSB0b19tZGV2X2RyaXZlcihkcnYpCWNvbnRhaW5lcl9vZihkcnYsIHN0cnVjdCBt
ZGV2X2RyaXZlciwgZHJpdmVyKQo+PiBAQCAtMTM1LDcgKzEzNyw3IEBAIGNvbnN0IGd1aWRfdCAq
bWRldl91dWlkKHN0cnVjdCBtZGV2X2RldmljZQo+PiAqbWRldik7Cj4+Cj4+ICAgZXh0ZXJuIHN0
cnVjdCBidXNfdHlwZSBtZGV2X2J1c190eXBlOwo+Pgo+PiAtaW50IG1kZXZfcmVnaXN0ZXJfZGV2
aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qgc3RydWN0Cj4+IG1kZXZfcGFyZW50X29wcyAq
b3BzKTsKPj4gK2ludCBtZGV2X3JlZ2lzdGVyX3ZmaW9fZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRl
diwgY29uc3Qgc3RydWN0Cj4+IG1kZXZfcGFyZW50X29wcyAqb3BzKTsKPj4gICB2b2lkIG1kZXZf
dW5yZWdpc3Rlcl9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2KTsKPj4KPj4gICBpbnQgbWRldl9y
ZWdpc3Rlcl9kcml2ZXIoc3RydWN0IG1kZXZfZHJpdmVyICpkcnYsIHN0cnVjdCBtb2R1bGUgKm93
bmVyKTsKPj4gQEAgLTE0NSw0ICsxNDcsNiBAQCBzdHJ1Y3QgZGV2aWNlICptZGV2X3BhcmVudF9k
ZXYoc3RydWN0Cj4+IG1kZXZfZGV2aWNlICptZGV2KTsKPj4gICBzdHJ1Y3QgZGV2aWNlICptZGV2
X2RldihzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwo+PiAgIHN0cnVjdCBtZGV2X2RldmljZSAq
bWRldl9mcm9tX2RldihzdHJ1Y3QgZGV2aWNlICpkZXYpOwo+Pgo+PiArI2RlZmluZSBNREVWX0lE
X1ZGSU8gMSAvKiBWRklPIGRldmljZSAqLwo+PiArCj4+ICAgI2VuZGlmIC8qIE1ERVZfSCAqLwo+
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tb2RfZGV2aWNldGFibGUuaAo+PiBiL2luY2x1
ZGUvbGludXgvbW9kX2RldmljZXRhYmxlLmgKPj4gaW5kZXggNTcxNGZkMzVhODNjLi5mMWZjMTQz
ZGYwNDIgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgvbW9kX2RldmljZXRhYmxlLmgKPj4g
KysrIGIvaW5jbHVkZS9saW51eC9tb2RfZGV2aWNldGFibGUuaAo+PiBAQCAtODIxLDQgKzgyMSwx
MCBAQCBzdHJ1Y3Qgd21pX2RldmljZV9pZCB7Cj4+ICAgCWNvbnN0IHZvaWQgKmNvbnRleHQ7Cj4+
ICAgfTsKPj4KPj4gKy8qIE1ERVYgKi8KPj4gKwo+PiArc3RydWN0IG1kZXZfZGV2aWNlX2lkIHsK
Pj4gKwlfX3U4IGlkOwo+PiArfTsKPj4gKwo+PiAgICNlbmRpZiAvKiBMSU5VWF9NT0RfREVWSUNF
VEFCTEVfSCAqLwo+PiBkaWZmIC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgYi9z
YW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYwo+PiBpbmRleCBhYzVjOGMxN2IxZmYuLjcxYTQ0Njli
ZTg1ZCAxMDA2NDQKPj4gLS0tIGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKPj4gKysrIGIv
c2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKPj4gQEAgLTE0NjgsNyArMTQ2OCw3IEBAIHN0YXRp
YyBpbnQgX19pbml0IG1ib2Noc19kZXZfaW5pdCh2b2lkKQo+PiAgIAlpZiAocmV0KQo+PiAgIAkJ
Z290byBmYWlsZWQyOwo+Pgo+PiAtCXJldCA9IG1kZXZfcmVnaXN0ZXJfZGV2aWNlKCZtYm9jaHNf
ZGV2LCAmbWRldl9mb3BzKTsKPj4gKwlyZXQgPSBtZGV2X3JlZ2lzdGVyX3ZmaW9fZGV2aWNlKCZt
Ym9jaHNfZGV2LCAmbWRldl9mb3BzKTsKPj4gICAJaWYgKHJldCkKPj4gICAJCWdvdG8gZmFpbGVk
MzsKPj4KPj4gZGlmZiAtLWdpdCBhL3NhbXBsZXMvdmZpby1tZGV2L21kcHkuYyBiL3NhbXBsZXMv
dmZpby1tZGV2L21kcHkuYwo+PiBpbmRleCBjYzg2YmY2NTY2ZTQuLmQzMDI5ZGQyN2Q5MSAxMDA2
NDQKPj4gLS0tIGEvc2FtcGxlcy92ZmlvLW1kZXYvbWRweS5jCj4+ICsrKyBiL3NhbXBsZXMvdmZp
by1tZGV2L21kcHkuYwo+PiBAQCAtNzc1LDcgKzc3NSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IG1k
cHlfZGV2X2luaXQodm9pZCkKPj4gICAJaWYgKHJldCkKPj4gICAJCWdvdG8gZmFpbGVkMjsKPj4K
Pj4gLQlyZXQgPSBtZGV2X3JlZ2lzdGVyX2RldmljZSgmbWRweV9kZXYsICZtZGV2X2ZvcHMpOwo+
PiArCXJldCA9IG1kZXZfcmVnaXN0ZXJfdmZpb19kZXZpY2UoJm1kcHlfZGV2LCAmbWRldl9mb3Bz
KTsKPj4gICAJaWYgKHJldCkKPj4gICAJCWdvdG8gZmFpbGVkMzsKPj4KPj4gZGlmZiAtLWdpdCBh
L3NhbXBsZXMvdmZpby1tZGV2L210dHkuYyBiL3NhbXBsZXMvdmZpby1tZGV2L210dHkuYwo+PiBp
bmRleCA5MmU3NzBhMDZlYTIuLjc0NGM4OGE2YjIyYyAxMDA2NDQKPj4gLS0tIGEvc2FtcGxlcy92
ZmlvLW1kZXYvbXR0eS5jCj4+ICsrKyBiL3NhbXBsZXMvdmZpby1tZGV2L210dHkuYwo+PiBAQCAt
MTQ2OCw3ICsxNDY4LDcgQEAgc3RhdGljIGludCBfX2luaXQgbXR0eV9kZXZfaW5pdCh2b2lkKQo+
PiAgIAlpZiAocmV0KQo+PiAgIAkJZ290byBmYWlsZWQyOwo+Pgo+PiAtCXJldCA9IG1kZXZfcmVn
aXN0ZXJfZGV2aWNlKCZtdHR5X2Rldi5kZXYsICZtZGV2X2ZvcHMpOwo+PiArCXJldCA9IG1kZXZf
cmVnaXN0ZXJfdmZpb19kZXZpY2UoJm10dHlfZGV2LmRldiwgJm1kZXZfZm9wcyk7Cj4+ICAgCWlm
IChyZXQpCj4+ICAgCQlnb3RvIGZhaWxlZDM7Cj4+Cj4+IC0tCj4+IDIuMTkuMQo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBpbnRlbC1ndnQt
ZGV2IG1haWxpbmcgbGlzdAo+PiBpbnRlbC1ndnQtZGV2QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWd2
dC1kZXYKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
