Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 974A6DC1A0
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 11:46:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B22C489A6D;
	Fri, 18 Oct 2019 09:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33BF689A6D;
 Fri, 18 Oct 2019 09:46:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 14030C057F31;
 Fri, 18 Oct 2019 09:46:34 +0000 (UTC)
Received: from gondolin (dhcp-192-202.str.redhat.com [10.33.192.202])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AD75B600C1;
 Fri, 18 Oct 2019 09:46:16 +0000 (UTC)
Date: Fri, 18 Oct 2019 11:46:14 +0200
From: Cornelia Huck <cohuck@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20191018114614.6f1e79dc.cohuck@redhat.com>
In-Reply-To: <20191017104836.32464-5-jasowang@redhat.com>
References: <20191017104836.32464-1-jasowang@redhat.com>
 <20191017104836.32464-5-jasowang@redhat.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Fri, 18 Oct 2019 09:46:34 +0000 (UTC)
Subject: Re: [Intel-gfx] [PATCH V4 4/6] mdev: introduce virtio device and
 its device ops
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
Cc: stefanha@redhat.com, christophe.de.dinechin@gmail.com, kvm@vger.kernel.org,
 mst@redhat.com, airlied@linux.ie, heiko.carstens@de.ibm.com,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 kwankhede@nvidia.com, rob.miller@broadcom.com, linux-s390@vger.kernel.org,
 sebott@linux.ibm.com, lulu@redhat.com, eperezma@redhat.com,
 pasic@linux.ibm.com, borntraeger@de.ibm.com, haotian.wang@sifive.com,
 cunming.liang@intel.com, farman@linux.ibm.com, idos@mellanox.com,
 gor@linux.ibm.com, intel-gfx@lists.freedesktop.org, xiao.w.wang@intel.com,
 freude@linux.ibm.com, parav@mellanox.com, zhihong.wang@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com,
 oberpar@linux.ibm.com, tiwei.bie@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, maxime.coquelin@redhat.com,
 lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxNyBPY3QgMjAxOSAxODo0ODozNCArMDgwMApKYXNvbiBXYW5nIDxqYXNvd2FuZ0By
ZWRoYXQuY29tPiB3cm90ZToKCj4gVGhpcyBwYXRjaCBpbXBsZW1lbnRzIGJhc2ljIHN1cHBvcnQg
Zm9yIG1kZXYgZHJpdmVyIHRoYXQgc3VwcG9ydHMKPiB2aXJ0aW8gdHJhbnNwb3J0IGZvciBrZXJu
ZWwgdmlydGlvIGRyaXZlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBXYW5nIDxqYXNvd2Fu
Z0ByZWRoYXQuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYyB8ICAx
MiArKysKPiAgaW5jbHVkZS9saW51eC9tZGV2LmggICAgICAgICAgfCAgIDQgKwo+ICBpbmNsdWRl
L2xpbnV4L3ZpcnRpb19tZGV2LmggICB8IDE1MSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTY3IGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGluY2x1ZGUvbGludXgvdmlydGlvX21kZXYuaAo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYyBiL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfY29y
ZS5jCj4gaW5kZXggZDBmMzExM2M4MDcxLi41ODM0ZjZiN2M3YTUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMKPiArKysgYi9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2
X2NvcmUuYwo+IEBAIC01Nyw2ICs1NywxOCBAQCB2b2lkIG1kZXZfc2V0X3ZmaW9fb3BzKHN0cnVj
dCBtZGV2X2RldmljZSAqbWRldiwKPiAgfQo+ICBFWFBPUlRfU1lNQk9MKG1kZXZfc2V0X3ZmaW9f
b3BzKTsKPiAgCj4gKy8qIFNwZWNpZnkgdGhlIHZpcnRpbyBkZXZpY2Ugb3BzIGZvciB0aGUgbWRl
diBkZXZpY2UsIHRoaXMKPiArICogbXVzdCBiZSBjYWxsZWQgZHVyaW5nIGNyZWF0ZSgpIGNhbGxi
YWNrIGZvciB2aXJ0aW8gbWRldiBkZXZpY2UuCj4gKyAqLwoKQ2hhbmdlIHRoaXMgYXMgZm9yIHRo
ZSB2ZmlvIGNvbW1lbnQgKGxhc3QgcGF0Y2g/KQoKPiArdm9pZCBtZGV2X3NldF92aXJ0aW9fb3Bz
KHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwKPiArCQkJIGNvbnN0IHN0cnVjdCB2aXJ0aW9fbWRl
dl9kZXZpY2Vfb3BzICp2aXJ0aW9fb3BzKQo+ICt7Cj4gKwlCVUdfT04obWRldi0+Y2xhc3NfaWQp
OwoKcy9CVUdfT04vV0FSTl9PTi8KCj4gKwltZGV2LT5jbGFzc19pZCA9IE1ERVZfQ0xBU1NfSURf
VklSVElPOwo+ICsJbWRldi0+ZGV2aWNlX29wcyA9IHZpcnRpb19vcHM7Cj4gK30KPiArRVhQT1JU
X1NZTUJPTChtZGV2X3NldF92aXJ0aW9fb3BzKTsKPiArCj4gIGNvbnN0IHZvaWQgKm1kZXZfZ2V0
X2Rldl9vcHMoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KQo+ICB7Cj4gIAlyZXR1cm4gbWRldi0+
ZGV2aWNlX29wczsKCiguLi4pCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3ZpcnRpb19t
ZGV2LmggYi9pbmNsdWRlL2xpbnV4L3ZpcnRpb19tZGV2LmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYjk2NWI1MGY5YjI0Cj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2luY2x1ZGUvbGludXgvdmlydGlvX21kZXYuaAo+IEBAIC0wLDAgKzEsMTUxIEBACj4gKy8q
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KPiArLyoKPiArICogVmly
dGlvIG1lZGlhdGVkIGRldmljZSBkcml2ZXIKPiArICoKPiArICogQ29weXJpZ2h0IDIwMTksIFJl
ZCBIYXQgQ29ycC4KPiArICogICAgIEF1dGhvcjogSmFzb24gV2FuZyA8amFzb3dhbmdAcmVkaGF0
LmNvbT4KPiArICovCj4gKyNpZm5kZWYgX0xJTlVYX1ZJUlRJT19NREVWX0gKPiArI2RlZmluZSBf
TElOVVhfVklSVElPX01ERVZfSAo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgo+
ICsjaW5jbHVkZSA8bGludXgvbWRldi5oPgo+ICsjaW5jbHVkZSA8dWFwaS9saW51eC92aG9zdC5o
Pgo+ICsKPiArI2RlZmluZSBWSVJUSU9fTURFVl9ERVZJQ0VfQVBJX1NUUklORwkJInZpcnRpby1t
ZGV2Igo+ICsjZGVmaW5lIFZJUlRJT19NREVWX0ZfVkVSU0lPTl8xIDB4MQo+ICsKPiArc3RydWN0
IHZpcnRpb19tZGV2X2NhbGxiYWNrIHsKPiArCWlycXJldHVybl90ICgqY2FsbGJhY2spKHZvaWQg
KmRhdGEpOwo+ICsJdm9pZCAqcHJpdmF0ZTsKPiArfTsKPiArCj4gKy8qKgo+ICsgKiBzdHJ1Y3Qg
dmZpb19tZGV2X2RldmljZV9vcHMgLSBTdHJ1Y3R1cmUgdG8gYmUgcmVnaXN0ZXJlZCBmb3IgZWFj
aAo+ICsgKiBtZGV2IGRldmljZSB0byByZWdpc3RlciB0aGUgZGV2aWNlIHRvIHZpcnRpby1tZGV2
IG1vZHVsZS4KPiArICoKPiArICogQHNldF92cV9hZGRyZXNzOgkJU2V0IHRoZSBhZGRyZXNzIG9m
IHZpcnRxdWV1ZQo+ICsgKgkJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNlCj4gKyAqCQkJCUBpZHg6
IHZpcnRxdWV1ZSBpbmRleAo+ICsgKgkJCQlAZGVzY19hcmVhOiBhZGRyZXNzIG9mIGRlc2MgYXJl
YQo+ICsgKgkJCQlAZHJpdmVyX2FyZWE6IGFkZHJlc3Mgb2YgZHJpdmVyIGFyZWEKPiArICoJCQkJ
QGRldmljZV9hcmVhOiBhZGRyZXNzIG9mIGRldmljZSBhcmVhCj4gKyAqCQkJCVJldHVybnMgaW50
ZWdlcjogc3VjY2VzcyAoMCkgb3IgZXJyb3IgKDwgMCkKClByb2JhYmx5IGR1bWIgcXVlc3Rpb24g
KGhhdmUgbm90IHJlYWQgdGhlIG5leHQgcGF0Y2hlcyB5ZXQpOiBJcyB0aGlzCmFnbm9zdGljIHJl
Z2FyZGluZyBzcGxpdCBvciBwYWNrZWQgcXVldWVzPwoKPiArICogQHNldF92cV9udW06CQlTZXQg
dGhlIHNpemUgb2YgdmlydHF1ZXVlCj4gKyAqCQkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2UKPiAr
ICoJCQkJQGlkeDogdmlydHF1ZXVlIGluZGV4Cj4gKyAqCQkJCUBudW06IHRoZSBzaXplIG9mIHZp
cnRxdWV1ZQo+ICsgKiBAa2lja192cToJCQlLaWNrIHRoZSB2aXJ0cXVldWUKPiArICoJCQkJQG1k
ZXY6IG1lZGlhdGVkIGRldmljZQo+ICsgKgkJCQlAaWR4OiB2aXJ0cXVldWUgaW5kZXgKPiArICog
QHNldF92cV9jYjoJCQlTZXQgdGhlIGludGVycnVwdCBjYWxsYmFjayBmdW5jdGlvbiBmb3IKPiAr
ICoJCQkJYSB2aXJ0cXVldWUKPiArICoJCQkJQG1kZXY6IG1lZGlhdGVkIGRldmljZQo+ICsgKgkJ
CQlAaWR4OiB2aXJ0cXVldWUgaW5kZXgKPiArICoJCQkJQGNiOiB2aXJ0aW8tbWRldiBpbnRlcnJ1
cHQgY2FsbGJhY2sgc3RydWN0dXJlCj4gKyAqIEBzZXRfdnFfcmVhZHk6CQlTZXQgcmVhZHkgc3Rh
dHVzIGZvciBhIHZpcnRxdWV1ZQo+ICsgKgkJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNlCj4gKyAq
CQkJCUBpZHg6IHZpcnRxdWV1ZSBpbmRleAo+ICsgKgkJCQlAcmVhZHk6IHJlYWR5ICh0cnVlKSBu
b3QgcmVhZHkoZmFsc2UpCj4gKyAqIEBnZXRfdnFfcmVhZHk6CQlHZXQgcmVhZHkgc3RhdHVzIGZv
ciBhIHZpcnRxdWV1ZQo+ICsgKgkJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNlCj4gKyAqCQkJCUBp
ZHg6IHZpcnRxdWV1ZSBpbmRleAo+ICsgKgkJCQlSZXR1cm5zIGJvb2xlYW46IHJlYWR5ICh0cnVl
KSBvciBub3QgKGZhbHNlKQo+ICsgKiBAc2V0X3ZxX3N0YXRlOgkJU2V0IHRoZSBzdGF0ZSBmb3Ig
YSB2aXJ0cXVldWUKPiArICoJCQkJQG1kZXY6IG1lZGlhdGVkIGRldmljZQo+ICsgKgkJCQlAaWR4
OiB2aXJ0cXVldWUgaW5kZXgKPiArICoJCQkJQHN0YXRlOiB2aXJ0cXVldWUgc3RhdGUgKGxhc3Rf
YXZhaWxfaWR4KQo+ICsgKgkJCQlSZXR1cm5zIGludGVnZXI6IHN1Y2Nlc3MgKDApIG9yIGVycm9y
ICg8IDApCj4gKyAqIEBnZXRfdnFfc3RhdGU6CQlHZXQgdGhlIHN0YXRlIGZvciBhIHZpcnRxdWV1
ZQo+ICsgKgkJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNlCj4gKyAqCQkJCUBpZHg6IHZpcnRxdWV1
ZSBpbmRleAo+ICsgKgkJCQlSZXR1cm5zIHZpcnRxdWV1ZSBzdGF0ZSAobGFzdF9hdmFpbF9pZHgp
Cj4gKyAqIEBnZXRfdnFfYWxpZ246CQlHZXQgdGhlIHZpcnRxdWV1ZSBhbGlnbiByZXF1aXJlbWVu
dAo+ICsgKgkJCQlmb3IgdGhlIGRldmljZQo+ICsgKgkJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNl
Cj4gKyAqCQkJCVJldHVybnMgdmlydHF1ZXVlIGFsZ2luIHJlcXVpcmVtZW50Cj4gKyAqIEBnZXRf
ZmVhdHVyZXM6CQlHZXQgdmlydGlvIGZlYXR1cmVzIHN1cHBvcnRlZCBieSB0aGUgZGV2aWNlCj4g
KyAqCQkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2UKPiArICoJCQkJUmV0dXJucyB0aGUgdmlydGlv
IGZlYXR1cmVzIHN1cHBvcnQgYnkgdGhlCj4gKyAqCQkJCWRldmljZQo+ICsgKiBAZ2V0X2ZlYXR1
cmVzOgkJU2V0IHZpcnRpbyBmZWF0dXJlcyBzdXBwb3J0ZWQgYnkgdGhlIGRyaXZlcgoKcy9nZXRf
ZmVhdHVyZXMvc2V0X2ZlYXR1cmVzLwoKPiArICoJCQkJQG1kZXY6IG1lZGlhdGVkIGRldmljZQo+
ICsgKgkJCQlAZmVhdHVyZXM6IGZlYXR1cmUgc3VwcG9ydCBieSB0aGUgZHJpdmVyCj4gKyAqCQkJ
CVJldHVybnMgaW50ZWdlcjogc3VjY2VzcyAoMCkgb3IgZXJyb3IgKDwgMCkKPiArICogQHNldF9j
b25maWdfY2I6CQlTZXQgdGhlIGNvbmZpZyBpbnRlcnJ1cHQgY2FsbGJhY2sKPiArICoJCQkJQG1k
ZXY6IG1lZGlhdGVkIGRldmljZQo+ICsgKgkJCQlAY2I6IHZpcnRpby1tZGV2IGludGVycnVwdCBj
YWxsYmFjayBzdHJ1Y3R1cmUKPiArICogQGdldF92cV9udW1fbWF4OgkJR2V0IHRoZSBtYXggc2l6
ZSBvZiB2aXJ0cXVldWUKPiArICoJCQkJQG1kZXY6IG1lZGlhdGVkIGRldmljZQo+ICsgKgkJCQlS
ZXR1cm5zIHUxNjogbWF4IHNpemUgb2YgdmlydHF1ZXVlCj4gKyAqIEBnZXRfZGV2aWNlX2lkOgkJ
R2V0IHZpcnRpbyBkZXZpY2UgaWQKPiArICoJCQkJQG1kZXY6IG1lZGlhdGVkIGRldmljZQo+ICsg
KgkJCQlSZXR1cm5zIHUzMjogdmlydGlvIGRldmljZSBpZAo+ICsgKiBAZ2V0X3ZlbmRvcl9pZDoJ
CUdldCB2aXJ0aW8gdmVuZG9yIGlkCj4gKyAqCQkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2UKPiAr
ICoJCQkJUmV0dXJucyB1MzI6IHZpcnRpbyB2ZW5kb3IgaWQKCkhvdyBpcyB0aGUgdmVuZG9yIGlk
IGRlZmluZWQ/IEFzIGZvciBub3JtYWwgdmlydGlvLXBjaSBkZXZpY2VzPwoKPiArICogQGdldF9z
dGF0dXM6IAkJR2V0IHRoZSBkZXZpY2Ugc3RhdHVzCj4gKyAqCQkJCUBtZGV2OiBtZWRpYXRlZCBk
ZXZpY2UKPiArICoJCQkJUmV0dXJucyB1ODogdmlydGlvIGRldmljZSBzdGF0dXMKPiArICogQHNl
dF9zdGF0dXM6IAkJU2V0IHRoZSBkZXZpY2Ugc3RhdHVzCj4gKyAqCQkJCUBtZGV2OiBtZWRpYXRl
ZCBkZXZpY2UKPiArICoJCQkJQHN0YXR1czogdmlydGlvIGRldmljZSBzdGF0dXMKPiArICogQGdl
dF9jb25maWc6IAkJUmVhZCBmcm9tIGRldmljZSBzcGVjaWZpYyBjb25maWd1cmF0aW9uIHNwYWNl
Cj4gKyAqCQkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2UKPiArICoJCQkJQG9mZnNldDogb2Zmc2V0
IGZyb20gdGhlIGJlZ2lubmluZyBvZgo+ICsgKgkJCQljb25maWd1cmF0aW9uIHNwYWNlCj4gKyAq
CQkJCUBidWY6IGJ1ZmZlciB1c2VkIHRvIHJlYWQgdG8KPiArICoJCQkJQGxlbjogdGhlIGxlbmd0
aCB0byByZWFkIGZyb20KPiArICoJCQkJY29uZmlncmF0aW9uIHNwYWNlCj4gKyAqIEBzZXRfY29u
ZmlnOiAJCVdyaXRlIHRvIGRldmljZSBzcGVjaWZpYyBjb25maWd1cmF0aW9uIHNwYWNlCj4gKyAq
CQkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2UKPiArICoJCQkJQG9mZnNldDogb2Zmc2V0IGZyb20g
dGhlIGJlZ2lubmluZyBvZgo+ICsgKgkJCQljb25maWd1cmF0aW9uIHNwYWNlCj4gKyAqCQkJCUBi
dWY6IGJ1ZmZlciB1c2VkIHRvIHdyaXRlIGZyb20KPiArICoJCQkJQGxlbjogdGhlIGxlbmd0aCB0
byB3cml0ZSB0bwo+ICsgKgkJCQljb25maWdyYXRpb24gc3BhY2UKPiArICogQGdldF9tZGV2X2Zl
YXR1cmVzOgkJR2V0IHRoZSBmZWF0dXJlIG9mIHZpcnRpbyBtZGV2IGRldmljZQo+ICsgKgkJCQlA
bWRldjogbWVkaWF0ZWQgZGV2aWNlCj4gKyAqCQkJCVJldHVybnMgdGhlIG1kZXYgZmVhdHVyZXMg
KEFQSSkgc3VwcG9ydCBieQo+ICsgKgkJCQl0aGUgZGV2aWNlLgoKV2hhdCBraW5kIG9mICdmZWF0
dXJlcycgYXJlIHN1cHBvc2VkIHRvIGdvIGluIHRoZXJlPyBBcmUgdGhlc2UgYml0cywKbGlrZSB5
b3UgZGVmaW5lZCBmb3IgVklSVElPX01ERVZfRl9WRVJTSU9OXzEgYWJvdmU/Cgo+ICsgKiBAZ2V0
X2dlbmVyYXRpb246CQlHZXQgZGV2aWNlIGdlbmVyYXRvbgo+ICsgKgkJCQlAbWRldjogbWVkaWF0
ZWQgZGV2aWNlCj4gKyAqCQkJCVJldHVybnMgdTMyOiBkZXZpY2UgZ2VuZXJhdGlvbgoKSXMgdGhh
dCBjYWxsYmFjayBtYW5kYXRvcnk/Cgo+ICsgKi8KPiArc3RydWN0IHZpcnRpb19tZGV2X2Rldmlj
ZV9vcHMgewo+ICsJLyogVmlydHF1ZXVlIG9wcyAqLwo+ICsJaW50ICgqc2V0X3ZxX2FkZHJlc3Mp
KHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwKPiArCQkJICAgICAgdTE2IGlkeCwgdTY0IGRlc2Nf
YXJlYSwgdTY0IGRyaXZlcl9hcmVhLAo+ICsJCQkgICAgICB1NjQgZGV2aWNlX2FyZWEpOwo+ICsJ
dm9pZCAoKnNldF92cV9udW0pKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdTE2IGlkeCwgdTMy
IG51bSk7Cj4gKwl2b2lkICgqa2lja192cSkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB1MTYg
aWR4KTsKPiArCXZvaWQgKCpzZXRfdnFfY2IpKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdTE2
IGlkeCwKPiArCQkJICBzdHJ1Y3QgdmlydGlvX21kZXZfY2FsbGJhY2sgKmNiKTsKPiArCXZvaWQg
KCpzZXRfdnFfcmVhZHkpKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdTE2IGlkeCwgYm9vbCBy
ZWFkeSk7Cj4gKwlib29sICgqZ2V0X3ZxX3JlYWR5KShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYs
IHUxNiBpZHgpOwo+ICsJaW50ICgqc2V0X3ZxX3N0YXRlKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYsIHUxNiBpZHgsIHU2NCBzdGF0ZSk7Cj4gKwl1NjQgKCpnZXRfdnFfc3RhdGUpKHN0cnVjdCBt
ZGV2X2RldmljZSAqbWRldiwgdTE2IGlkeCk7Cj4gKwo+ICsJLyogRGV2aWNlIG9wcyAqLwo+ICsJ
dTE2ICgqZ2V0X3ZxX2FsaWduKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwo+ICsJdTY0ICgq
Z2V0X2ZlYXR1cmVzKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwo+ICsJaW50ICgqc2V0X2Zl
YXR1cmVzKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsIHU2NCBmZWF0dXJlcyk7Cj4gKwl2b2lk
ICgqc2V0X2NvbmZpZ19jYikoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LAo+ICsJCQkgICAgICBz
dHJ1Y3QgdmlydGlvX21kZXZfY2FsbGJhY2sgKmNiKTsKPiArCXUxNiAoKmdldF92cV9udW1fbWF4
KShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwo+ICsJdTMyICgqZ2V0X2RldmljZV9pZCkoc3Ry
dWN0IG1kZXZfZGV2aWNlICptZGV2KTsKPiArCXUzMiAoKmdldF92ZW5kb3JfaWQpKHN0cnVjdCBt
ZGV2X2RldmljZSAqbWRldik7Cj4gKwl1OCAoKmdldF9zdGF0dXMpKHN0cnVjdCBtZGV2X2Rldmlj
ZSAqbWRldik7Cj4gKwl2b2lkICgqc2V0X3N0YXR1cykoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2
LCB1OCBzdGF0dXMpOwo+ICsJdm9pZCAoKmdldF9jb25maWcpKHN0cnVjdCBtZGV2X2RldmljZSAq
bWRldiwgdW5zaWduZWQgaW50IG9mZnNldCwKPiArCQkJICAgdm9pZCAqYnVmLCB1bnNpZ25lZCBp
bnQgbGVuKTsKPiArCXZvaWQgKCpzZXRfY29uZmlnKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYs
IHVuc2lnbmVkIGludCBvZmZzZXQsCj4gKwkJCSAgIGNvbnN0IHZvaWQgKmJ1ZiwgdW5zaWduZWQg
aW50IGxlbik7Cj4gKwl1NjQgKCpnZXRfbWRldl9mZWF0dXJlcykoc3RydWN0IG1kZXZfZGV2aWNl
ICptZGV2KTsKPiArCXUzMiAoKmdldF9nZW5lcmF0aW9uKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYpOwo+ICt9Owo+ICsKPiArdm9pZCBtZGV2X3NldF92aXJ0aW9fb3BzKHN0cnVjdCBtZGV2X2Rl
dmljZSAqbWRldiwKPiArCQkJIGNvbnN0IHN0cnVjdCB2aXJ0aW9fbWRldl9kZXZpY2Vfb3BzICp2
aXJ0aW9fb3BzKTsKPiArCj4gKyNlbmRpZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
