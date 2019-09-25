Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C767EBDD9E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 14:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17925898EE;
	Wed, 25 Sep 2019 12:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0EC2898EE;
 Wed, 25 Sep 2019 12:02:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5CB9A30860D1;
 Wed, 25 Sep 2019 12:02:13 +0000 (UTC)
Received: from [10.72.12.148] (ovpn-12-148.pek2.redhat.com [10.72.12.148])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 73BBC5C1D4;
 Wed, 25 Sep 2019 12:01:29 +0000 (UTC)
To: Alex Williamson <alex.williamson@redhat.com>
References: <20190924135332.14160-1-jasowang@redhat.com>
 <20190924135332.14160-3-jasowang@redhat.com>
 <20190924170627.083f9f1b@x1.home>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <5671c368-9cfb-ab48-c0c0-ac18bad0fbe7@redhat.com>
Date: Wed, 25 Sep 2019 20:01:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190924170627.083f9f1b@x1.home>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Wed, 25 Sep 2019 12:02:14 +0000 (UTC)
Subject: Re: [Intel-gfx] [PATCH V2 2/8] mdev: class id support
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
Cc: christophe.de.dinechin@gmail.com, kvm@vger.kernel.org, mst@redhat.com,
 airlied@linux.ie, heiko.carstens@de.ibm.com, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, kwankhede@nvidia.com,
 rob.miller@broadcom.com, linux-s390@vger.kernel.org, sebott@linux.ibm.com,
 lulu@redhat.com, eperezma@redhat.com, pasic@linux.ibm.com,
 borntraeger@de.ibm.com, haotian.wang@sifive.com, cunming.liang@intel.com,
 farman@linux.ibm.com, idos@mellanox.com, gor@linux.ibm.com,
 intel-gfx@lists.freedesktop.org, xiao.w.wang@intel.com, freude@linux.ibm.com,
 parav@mellanox.com, zhihong.wang@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com,
 oberpar@linux.ibm.com, tiwei.bie@intel.com, netdev@vger.kernel.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, maxime.coquelin@redhat.com,
 lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwMTkvOS8yNSDkuIrljYg3OjA2LCBBbGV4IFdpbGxpYW1zb24gd3JvdGU6Cj4gT24gVHVl
LCAyNCBTZXAgMjAxOSAyMTo1MzoyNiArMDgwMAo+IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhh
dC5jb20+IHdyb3RlOgo+Cj4+IE1kZXYgYnVzIG9ubHkgc3VwcG9ydHMgdmZpbyBkcml2ZXIgcmln
aHQgbm93LCBzbyBpdCBkb2Vzbid0IGltcGxlbWVudAo+PiBtYXRjaCBtZXRob2QuIEJ1dCBpbiB0
aGUgZnV0dXJlLCB3ZSBtYXkgYWRkIGRyaXZlcnMgb3RoZXIgdGhhbiB2ZmlvLAo+PiB0aGUgZmly
c3QgZHJpdmVyIGNvdWxkIGJlIHZpcnRpby1tZGV2LiBUaGlzIG1lYW5zIHdlIG5lZWQgdG8gYWRk
Cj4+IGRldmljZSBjbGFzcyBpZCBzdXBwb3J0IGluIGJ1cyBtYXRjaCBtZXRob2QgdG8gcGFpciB0
aGUgbWRldiBkZXZpY2UKPj4gYW5kIG1kZXYgZHJpdmVyIGNvcnJlY3RseS4KPj4KPj4gU28gdGhp
cyBwYXRjaCBhZGRzIGlkX3RhYmxlIHRvIG1kZXZfZHJpdmVyIGFuZCBjbGFzc19pZCBmb3IgbWRl
dgo+PiBwYXJlbnQgd2l0aCB0aGUgbWF0Y2ggbWV0aG9kIGZvciBtZGV2IGJ1cy4KPiBEZXNjcmlw
dGlvbiBuZWVkcyB0byBiZSByZXZpc2VkIGZyb20gdjEsIGNsYXNzX2lkIGlzIG5vIGxvbmdlciBv
biB0aGUKPiBwYXJlbnQuCgoKWWVzLCB3aWxsIGZpeC4KCgo+PiBTaWduZWQtb2ZmLWJ5OiBKYXNv
biBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgo+PiAtLS0KPj4gIERvY3VtZW50YXRpb24vZHJp
dmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QgfCAgMyArKysKPj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d2dC9rdm1ndC5jICAgICAgICAgICAgICAgICAgfCAgMSArCj4+ICBkcml2ZXJz
L3MzOTAvY2lvL3ZmaW9fY2N3X29wcy5jICAgICAgICAgICAgICAgICAgIHwgIDEgKwo+PiAgZHJp
dmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5jICAgICAgICAgICAgICAgICB8ICAxICsKPj4g
IGRyaXZlcnMvdmZpby9tZGV2L21kZXZfY29yZS5jICAgICAgICAgICAgICAgICAgICAgfCAgNyAr
KysrKysrCj4+ICBkcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2RyaXZlci5jICAgICAgICAgICAgICAg
ICAgIHwgMTQgKysrKysrKysrKysrKysKPj4gIGRyaXZlcnMvdmZpby9tZGV2L21kZXZfcHJpdmF0
ZS5oICAgICAgICAgICAgICAgICAgfCAgMSArCj4+ICBkcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21k
ZXYuYyAgICAgICAgICAgICAgICAgICAgIHwgIDYgKysrKysrCj4+ICBpbmNsdWRlL2xpbnV4L21k
ZXYuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDggKysrKysrKysKPj4gIGluY2x1
ZGUvbGludXgvbW9kX2RldmljZXRhYmxlLmggICAgICAgICAgICAgICAgICAgfCAgOCArKysrKysr
Kwo+PiAgc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgICAgICAgICAgICAgICAgICAgICAgICB8
ICAxICsKPj4gIHNhbXBsZXMvdmZpby1tZGV2L21kcHkuYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgMSArCj4+ICBzYW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDEgKwo+PiAgMTMgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQtZGV2
aWNlLnJzdCBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5y
c3QKPj4gaW5kZXggMjVlYjdkNWI4MzRiLi5hNWJkYzYwZDYyYTEgMTAwNjQ0Cj4+IC0tLSBhL0Rv
Y3VtZW50YXRpb24vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QKPj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQtZGV2aWNlLnJzdAo+PiBAQCAt
MTAyLDEyICsxMDIsMTQgQEAgc3RydWN0dXJlIHRvIHJlcHJlc2VudCBhIG1lZGlhdGVkIGRldmlj
ZSdzIGRyaXZlcjo6Cj4+ICAgICAgICAqIEBwcm9iZTogY2FsbGVkIHdoZW4gbmV3IGRldmljZSBj
cmVhdGVkCj4+ICAgICAgICAqIEByZW1vdmU6IGNhbGxlZCB3aGVuIGRldmljZSByZW1vdmVkCj4+
ICAgICAgICAqIEBkcml2ZXI6IGRldmljZSBkcml2ZXIgc3RydWN0dXJlCj4+ICsgICAgICAqIEBp
ZF90YWJsZTogdGhlIGlkcyBzZXJ2aWNlZCBieSB0aGlzIGRyaXZlcgo+PiAgICAgICAgKi8KPj4g
ICAgICAgc3RydWN0IG1kZXZfZHJpdmVyIHsKPj4gIAkgICAgIGNvbnN0IGNoYXIgKm5hbWU7Cj4+
ICAJICAgICBpbnQgICgqcHJvYmUpICAoc3RydWN0IGRldmljZSAqZGV2KTsKPj4gIAkgICAgIHZv
aWQgKCpyZW1vdmUpIChzdHJ1Y3QgZGV2aWNlICpkZXYpOwo+PiAgCSAgICAgc3RydWN0IGRldmlj
ZV9kcml2ZXIgICAgZHJpdmVyOwo+PiArCSAgICAgY29uc3Qgc3RydWN0IG1kZXZfY2xhc3NfaWQg
KmlkX3RhYmxlOwo+PiAgICAgICB9Owo+PiAgCj4+ICBBIG1lZGlhdGVkIGJ1cyBkcml2ZXIgZm9y
IG1kZXYgc2hvdWxkIHVzZSB0aGlzIHN0cnVjdHVyZSBpbiB0aGUgZnVuY3Rpb24gY2FsbHMKPj4g
QEAgLTE2NSw2ICsxNjcsNyBAQCByZWdpc3RlciBpdHNlbGYgd2l0aCB0aGUgbWRldiBjb3JlIGRy
aXZlcjo6Cj4+ICAJZXh0ZXJuIGludCAgbWRldl9yZWdpc3Rlcl9kZXZpY2Uoc3RydWN0IGRldmlj
ZSAqZGV2LAo+PiAgCSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVj
dCBtZGV2X3BhcmVudF9vcHMgKm9wcyk7Cj4+ICAKPj4gKwo+PiAgSG93ZXZlciwgdGhlIG1kZXZf
cGFyZW50X29wcyBzdHJ1Y3R1cmUgaXMgbm90IHJlcXVpcmVkIGluIHRoZSBmdW5jdGlvbiBjYWxs
Cj4+ICB0aGF0IGEgZHJpdmVyIHNob3VsZCB1c2UgdG8gdW5yZWdpc3RlciBpdHNlbGYgd2l0aCB0
aGUgbWRldiBjb3JlIGRyaXZlcjo6Cj4gVW5pbnRlbmRlZCBleHRyYSBsaW5lPyAgRG9lc24ndCBz
ZWVtIHRvIG1hdGNoIHN1cnJvdW5kaW5nIGZvcm1hdHRpbmcuCj4KPiBDYWxsaW5nIG1kZXZfc2V0
X2NsYXNzX2lkKCkgYXMgcGFydCBvZiBjcmVhdGUgc2VlbXMgcmVsYXRpdmVseQo+IGZ1bmRhbWVu
dGFsIHRvIHRoZSB2ZW5kb3IgZHJpdmVyIHdpdGggdGhpcyBjaGFuZ2UsIGl0IHNob3VsZCBiZSBh
ZGRlZAo+IHRvIHRoZSBkb2N1bWVudGF0aW9uLgoKClJpZ2h0LgoKCj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9rdm1ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Z0L2t2bWd0LmMKPj4gaW5kZXggMjNhYTNlNTBjYmY4Li5mNzkzMjUyYTNkMmEgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9rdm1ndC5jCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d2dC9rdm1ndC5jCj4+IEBAIC02NzgsNiArNjc4LDcgQEAgc3RhdGljIGlu
dCBpbnRlbF92Z3B1X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2
aWNlICptZGV2KQo+PiAgCQkgICAgIGRldl9uYW1lKG1kZXZfZGV2KG1kZXYpKSk7Cj4+ICAJcmV0
ID0gMDsKPj4gIAo+PiArCW1kZXZfc2V0X2NsYXNzX2lkKG1kZXYsIE1ERVZfSURfVkZJTyk7Cj4+
ICBvdXQ6Cj4+ICAJcmV0dXJuIHJldDsKPj4gIH0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvczM5
MC9jaW8vdmZpb19jY3dfb3BzLmMgYi9kcml2ZXJzL3MzOTAvY2lvL3ZmaW9fY2N3X29wcy5jCj4+
IGluZGV4IGYwZDcxYWI3N2M1MC4uZDI1OGVmMWZlZGI5IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3MzOTAvY2lvL3ZmaW9fY2N3X29wcy5jCj4+ICsrKyBiL2RyaXZlcnMvczM5MC9jaW8vdmZpb19j
Y3dfb3BzLmMKPj4gQEAgLTEyOSw2ICsxMjksNyBAQCBzdGF0aWMgaW50IHZmaW9fY2N3X21kZXZf
Y3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCj4+
ICAJCQkgICBwcml2YXRlLT5zY2gtPnNjaGlkLnNzaWQsCj4+ICAJCQkgICBwcml2YXRlLT5zY2gt
PnNjaGlkLnNjaF9ubyk7Cj4+ICAKPj4gKwltZGV2X3NldF9jbGFzc19pZChtZGV2LCBNREVWX0lE
X1ZGSU8pOwo+PiAgCXJldHVybiAwOwo+PiAgfQo+PiAgCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3MzOTAvY3J5cHRvL3ZmaW9fYXBfb3BzLmMgYi9kcml2ZXJzL3MzOTAvY3J5cHRvL3ZmaW9fYXBf
b3BzLmMKPj4gaW5kZXggNWMwZjUzYzZkZGU3Li4yY2ZkOTYxMTJhYTAgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYwo+PiArKysgYi9kcml2ZXJzL3MzOTAv
Y3J5cHRvL3ZmaW9fYXBfb3BzLmMKPj4gQEAgLTM0Myw2ICszNDMsNyBAQCBzdGF0aWMgaW50IHZm
aW9fYXBfbWRldl9jcmVhdGUoc3RydWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBtZGV2X2Rldmlj
ZSAqbWRldikKPj4gIAlsaXN0X2FkZCgmbWF0cml4X21kZXYtPm5vZGUsICZtYXRyaXhfZGV2LT5t
ZGV2X2xpc3QpOwo+PiAgCW11dGV4X3VubG9jaygmbWF0cml4X2Rldi0+bG9jayk7Cj4+ICAKPj4g
KwltZGV2X3NldF9jbGFzc19pZChtZGV2LCBNREVWX0lEX1ZGSU8pOwo+PiAgCXJldHVybiAwOwo+
PiAgfQo+PiAgCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYyBi
L2RyaXZlcnMvdmZpby9tZGV2L21kZXZfY29yZS5jCj4+IGluZGV4IGI1NThkNGNmZDA4Mi4uODc2
NGNmNGEyNzZkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYwo+
PiArKysgYi9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYwo+PiBAQCAtNDUsNiArNDUsMTIg
QEAgdm9pZCBtZGV2X3NldF9kcnZkYXRhKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdm9pZCAq
ZGF0YSkKPj4gIH0KPj4gIEVYUE9SVF9TWU1CT0wobWRldl9zZXRfZHJ2ZGF0YSk7Cj4+ICAKPj4g
K3ZvaWQgbWRldl9zZXRfY2xhc3NfaWQoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB1MTYgaWQp
Cj4+ICt7Cj4+ICsJbWRldi0+Y2xhc3NfaWQgPSBpZDsKPj4gK30KPj4gK0VYUE9SVF9TWU1CT0wo
bWRldl9zZXRfY2xhc3NfaWQpOwo+PiArCj4+ICBzdHJ1Y3QgZGV2aWNlICptZGV2X2RldihzdHJ1
Y3QgbWRldl9kZXZpY2UgKm1kZXYpCj4+ICB7Cj4+ICAJcmV0dXJuICZtZGV2LT5kZXY7Cj4+IEBA
IC0xMzUsNiArMTQxLDcgQEAgc3RhdGljIGludCBtZGV2X2RldmljZV9yZW1vdmVfY2Ioc3RydWN0
IGRldmljZSAqZGV2LCB2b2lkICpkYXRhKQo+PiAgICogbWRldl9yZWdpc3Rlcl9kZXZpY2UgOiBS
ZWdpc3RlciBhIGRldmljZQo+PiAgICogQGRldjogZGV2aWNlIHN0cnVjdHVyZSByZXByZXNlbnRp
bmcgcGFyZW50IGRldmljZS4KPj4gICAqIEBvcHM6IFBhcmVudCBkZXZpY2Ugb3BlcmF0aW9uIHN0
cnVjdHVyZSB0byBiZSByZWdpc3RlcmVkLgo+PiArICogQGlkOiBkZXZpY2UgaWQuCj4+ICAgKgo+
PiAgICogQWRkIGRldmljZSB0byBsaXN0IG9mIHJlZ2lzdGVyZWQgcGFyZW50IGRldmljZXMuCj4+
ICAgKiBSZXR1cm5zIGEgbmVnYXRpdmUgdmFsdWUgb24gZXJyb3IsIG90aGVyd2lzZSAwLgo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9kcml2ZXIuYyBiL2RyaXZlcnMvdmZp
by9tZGV2L21kZXZfZHJpdmVyLmMKPj4gaW5kZXggMGQzMjIzYWVlMjBiLi5iN2M0MGNlODZlZTMg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfZHJpdmVyLmMKPj4gKysrIGIv
ZHJpdmVycy92ZmlvL21kZXYvbWRldl9kcml2ZXIuYwo+PiBAQCAtNjksOCArNjksMjIgQEAgc3Rh
dGljIGludCBtZGV2X3JlbW92ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICAJcmV0dXJuIDA7Cj4+
ICB9Cj4+ICAKPj4gK3N0YXRpYyBpbnQgbWRldl9tYXRjaChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0
cnVjdCBkZXZpY2VfZHJpdmVyICpkcnYpCj4+ICt7Cj4+ICsJdW5zaWduZWQgaW50IGk7Cj4+ICsJ
c3RydWN0IG1kZXZfZGV2aWNlICptZGV2ID0gdG9fbWRldl9kZXZpY2UoZGV2KTsKPj4gKwlzdHJ1
Y3QgbWRldl9kcml2ZXIgKm1kcnYgPSB0b19tZGV2X2RyaXZlcihkcnYpOwo+PiArCWNvbnN0IHN0
cnVjdCBtZGV2X2NsYXNzX2lkICppZHMgPSBtZHJ2LT5pZF90YWJsZTsKPj4gKwo+PiArCWZvciAo
aSA9IDA7IGlkc1tpXS5pZDsgaSsrKQo+PiArCQlpZiAoaWRzW2ldLmlkID09IG1kZXYtPmNsYXNz
X2lkKQo+IFdpdGggdGhlIHByb3Bvc2VkIEFQSSBoZXJlLCBtZGV2LT5jbGFzc19pZCBjYW4gYmUg
TlVMTCwgZG8gd2UgYWxsb3cKPiBkZXZpY2VzIHRvIGV4aXN0IGluIHRoYXQgc3RhdGUgb3Igc2hv
dWxkIG1kZXZfZGV2aWNlX2NyZWF0ZSgpIGdlbmVyYXRlCj4gYW4gZXJyb3IgaWYgdGhlIC5jcmVh
dGUoKSBjYWxsYmFjayBkb2Vzbid0IHJlZ2lzdGVyIGEgdHlwZT8gIE9yIGEKPiB3YXJuX29uY2Ug
YW5kIGFzc3VtZSBNREVWX0lEX1ZGSU8/ICBUaGUgbGF0dGVyIHNlZW1zIHByZXR0eSBza2V0Y2h5
Cj4gd2hlbiB3ZSBnZXQgdG8gcGF0Y2ggNS84LiAgVGhhbmtzLAoKCkl0IGxvb2tzIHRvIG1lIHRo
ZSBlcnJvciBmcm9tIG1kZXZfZGV2aWNlX2NyZWF0ZSgpIGlzIGJldHRlci4KClRoYW5rcwoKCj4K
PiBBbGV4Cj4KPj4gKwkJCXJldHVybiAxOwo+PiArCXJldHVybiAwOwo+PiArfQo+PiArCj4+ICBz
dHJ1Y3QgYnVzX3R5cGUgbWRldl9idXNfdHlwZSA9IHsKPj4gIAkubmFtZQkJPSAibWRldiIsCj4+
ICsJLm1hdGNoCQk9IG1kZXZfbWF0Y2gsCj4+ICAJLnByb2JlCQk9IG1kZXZfcHJvYmUsCj4+ICAJ
LnJlbW92ZQkJPSBtZGV2X3JlbW92ZSwKPj4gIH07Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Zm
aW8vbWRldi9tZGV2X3ByaXZhdGUuaCBiL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfcHJpdmF0ZS5o
Cj4+IGluZGV4IDdkOTIyOTUwY2FhZi4uYzY1ZjQzNmMxODY5IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaAo+PiArKysgYi9kcml2ZXJzL3ZmaW8vbWRldi9t
ZGV2X3ByaXZhdGUuaAo+PiBAQCAtMzMsNiArMzMsNyBAQCBzdHJ1Y3QgbWRldl9kZXZpY2Ugewo+
PiAgCXN0cnVjdCBrb2JqZWN0ICp0eXBlX2tvYmo7Cj4+ICAJc3RydWN0IGRldmljZSAqaW9tbXVf
ZGV2aWNlOwo+PiAgCWJvb2wgYWN0aXZlOwo+PiArCXUxNiBjbGFzc19pZDsKPj4gIH07Cj4+ICAK
Pj4gICNkZWZpbmUgdG9fbWRldl9kZXZpY2UoZGV2KQljb250YWluZXJfb2YoZGV2LCBzdHJ1Y3Qg
bWRldl9kZXZpY2UsIGRldikKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9tZGV2L3ZmaW9f
bWRldi5jIGIvZHJpdmVycy92ZmlvL21kZXYvdmZpb19tZGV2LmMKPj4gaW5kZXggMzA5NjRhNGUw
YTI4Li5mZDJhNGQ5YTNmMjYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvdmZpby9tZGV2L3ZmaW9f
bWRldi5jCj4+ICsrKyBiL2RyaXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jCj4+IEBAIC0xMjAs
MTAgKzEyMCwxNiBAQCBzdGF0aWMgdm9pZCB2ZmlvX21kZXZfcmVtb3ZlKHN0cnVjdCBkZXZpY2Ug
KmRldikKPj4gIAl2ZmlvX2RlbF9ncm91cF9kZXYoZGV2KTsKPj4gIH0KPj4gIAo+PiArc3RhdGlj
IHN0cnVjdCBtZGV2X2NsYXNzX2lkIGlkX3RhYmxlW10gPSB7Cj4+ICsJeyBNREVWX0lEX1ZGSU8g
fSwKPj4gKwl7IDAgfSwKPj4gK307Cj4+ICsKPj4gIHN0YXRpYyBzdHJ1Y3QgbWRldl9kcml2ZXIg
dmZpb19tZGV2X2RyaXZlciA9IHsKPj4gIAkubmFtZQk9ICJ2ZmlvX21kZXYiLAo+PiAgCS5wcm9i
ZQk9IHZmaW9fbWRldl9wcm9iZSwKPj4gIAkucmVtb3ZlCT0gdmZpb19tZGV2X3JlbW92ZSwKPj4g
KwkuaWRfdGFibGUgPSBpZF90YWJsZSwKPj4gIH07Cj4+ICAKPj4gIHN0YXRpYyBpbnQgX19pbml0
IHZmaW9fbWRldl9pbml0KHZvaWQpCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21kZXYu
aCBiL2luY2x1ZGUvbGludXgvbWRldi5oCj4+IGluZGV4IDBjZTMwY2E3OGRiMC4uMzk3NDY1MGMw
NzRmIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L21kZXYuaAo+PiArKysgYi9pbmNsdWRl
L2xpbnV4L21kZXYuaAo+PiBAQCAtMTE4LDYgKzExOCw3IEBAIHN0cnVjdCBtZGV2X3R5cGVfYXR0
cmlidXRlIG1kZXZfdHlwZV9hdHRyXyMjX25hbWUgPQkJXAo+PiAgICogQHByb2JlOiBjYWxsZWQg
d2hlbiBuZXcgZGV2aWNlIGNyZWF0ZWQKPj4gICAqIEByZW1vdmU6IGNhbGxlZCB3aGVuIGRldmlj
ZSByZW1vdmVkCj4+ICAgKiBAZHJpdmVyOiBkZXZpY2UgZHJpdmVyIHN0cnVjdHVyZQo+PiArICog
QGlkX3RhYmxlOiB0aGUgaWRzIHNlcnZpY2VkIGJ5IHRoaXMgZHJpdmVyLgo+PiAgICoKPj4gICAq
Ki8KPj4gIHN0cnVjdCBtZGV2X2RyaXZlciB7Cj4+IEBAIC0xMjUsMTIgKzEyNiwxNCBAQCBzdHJ1
Y3QgbWRldl9kcml2ZXIgewo+PiAgCWludCAgKCpwcm9iZSkoc3RydWN0IGRldmljZSAqZGV2KTsK
Pj4gIAl2b2lkICgqcmVtb3ZlKShzdHJ1Y3QgZGV2aWNlICpkZXYpOwo+PiAgCXN0cnVjdCBkZXZp
Y2VfZHJpdmVyIGRyaXZlcjsKPj4gKwljb25zdCBzdHJ1Y3QgbWRldl9jbGFzc19pZCAqaWRfdGFi
bGU7Cj4+ICB9Owo+PiAgCj4+ICAjZGVmaW5lIHRvX21kZXZfZHJpdmVyKGRydikJY29udGFpbmVy
X29mKGRydiwgc3RydWN0IG1kZXZfZHJpdmVyLCBkcml2ZXIpCj4+ICAKPj4gIHZvaWQgKm1kZXZf
Z2V0X2RydmRhdGEoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KTsKPj4gIHZvaWQgbWRldl9zZXRf
ZHJ2ZGF0YShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsIHZvaWQgKmRhdGEpOwo+PiArdm9pZCBt
ZGV2X3NldF9jbGFzc19pZChzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsIHUxNiBpZCk7Cj4+ICBj
b25zdCBndWlkX3QgKm1kZXZfdXVpZChzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwo+PiAgCj4+
ICBleHRlcm4gc3RydWN0IGJ1c190eXBlIG1kZXZfYnVzX3R5cGU7Cj4+IEBAIC0xNDUsNCArMTQ4
LDkgQEAgc3RydWN0IGRldmljZSAqbWRldl9wYXJlbnRfZGV2KHN0cnVjdCBtZGV2X2RldmljZSAq
bWRldik7Cj4+ICBzdHJ1Y3QgZGV2aWNlICptZGV2X2RldihzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYpOwo+PiAgc3RydWN0IG1kZXZfZGV2aWNlICptZGV2X2Zyb21fZGV2KHN0cnVjdCBkZXZpY2Ug
KmRldik7Cj4+ICAKPj4gK2VudW0gewo+PiArCU1ERVZfSURfVkZJTyA9IDEsCj4+ICsJLyogTmV3
IGVudHJpZXMgbXVzdCBiZSBhZGRlZCBoZXJlICovCj4+ICt9Owo+PiArCj4+ICAjZW5kaWYgLyog
TURFVl9IICovCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21vZF9kZXZpY2V0YWJsZS5o
IGIvaW5jbHVkZS9saW51eC9tb2RfZGV2aWNldGFibGUuaAo+PiBpbmRleCA1NzE0ZmQzNWE4M2Mu
LmYzMmM2ZTQ0ZmIxYSAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9saW51eC9tb2RfZGV2aWNldGFi
bGUuaAo+PiArKysgYi9pbmNsdWRlL2xpbnV4L21vZF9kZXZpY2V0YWJsZS5oCj4+IEBAIC04MjEs
NCArODIxLDEyIEBAIHN0cnVjdCB3bWlfZGV2aWNlX2lkIHsKPj4gIAljb25zdCB2b2lkICpjb250
ZXh0Owo+PiAgfTsKPj4gIAo+PiArLyoqCj4+ICsgKiBzdHJ1Y3QgbWRldl9jbGFzc19pZCAtIE1E
RVYgZGV2aWNlIGNsYXNzIGlkZW50aWZpZXIKPj4gKyAqIEBpZDogVXNlZCB0byBpZGVudGlmeSBh
IHNwZWNpZmljIGNsYXNzIG9mIGRldmljZSwgZS5nIHZmaW8tbWRldiBkZXZpY2UuCj4+ICsgKi8K
Pj4gK3N0cnVjdCBtZGV2X2NsYXNzX2lkIHsKPj4gKwlfX3UxNiBpZDsKPj4gK307Cj4+ICsKPj4g
ICNlbmRpZiAvKiBMSU5VWF9NT0RfREVWSUNFVEFCTEVfSCAqLwo+PiBkaWZmIC0tZ2l0IGEvc2Ft
cGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgYi9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYwo+PiBp
bmRleCBhYzVjOGMxN2IxZmYuLjhhODU4M2M4OTJiMiAxMDA2NDQKPj4gLS0tIGEvc2FtcGxlcy92
ZmlvLW1kZXYvbWJvY2hzLmMKPj4gKysrIGIvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKPj4g
QEAgLTU2MSw2ICs1NjEsNyBAQCBzdGF0aWMgaW50IG1ib2Noc19jcmVhdGUoc3RydWN0IGtvYmpl
Y3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKPj4gIAltYm9jaHNfcmVzZXQobWRl
dik7Cj4+ICAKPj4gIAltYm9jaHNfdXNlZF9tYnl0ZXMgKz0gdHlwZS0+bWJ5dGVzOwo+PiArCW1k
ZXZfc2V0X2NsYXNzX2lkKG1kZXYsIE1ERVZfSURfVkZJTyk7Cj4+ICAJcmV0dXJuIDA7Cj4+ICAK
Pj4gIGVycl9tZW06Cj4+IGRpZmYgLS1naXQgYS9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5LmMgYi9z
YW1wbGVzL3ZmaW8tbWRldi9tZHB5LmMKPj4gaW5kZXggY2M4NmJmNjU2NmU0Li44OGQ3ZTc2ZjM4
MzYgMTAwNjQ0Cj4+IC0tLSBhL3NhbXBsZXMvdmZpby1tZGV2L21kcHkuYwo+PiArKysgYi9zYW1w
bGVzL3ZmaW8tbWRldi9tZHB5LmMKPj4gQEAgLTI2OSw2ICsyNjksNyBAQCBzdGF0aWMgaW50IG1k
cHlfY3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYp
Cj4+ICAJbWRweV9yZXNldChtZGV2KTsKPj4gIAo+PiAgCW1kcHlfY291bnQrKzsKPj4gKwltZGV2
X3NldF9jbGFzc19pZChtZGV2LCBNREVWX0lEX1ZGSU8pOwo+PiAgCXJldHVybiAwOwo+PiAgfQo+
PiAgCj4+IGRpZmYgLS1naXQgYS9zYW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMgYi9zYW1wbGVzL3Zm
aW8tbWRldi9tdHR5LmMKPj4gaW5kZXggOTJlNzcwYTA2ZWEyLi40ZTA3MzUxNDNiNjkgMTAwNjQ0
Cj4+IC0tLSBhL3NhbXBsZXMvdmZpby1tZGV2L210dHkuYwo+PiArKysgYi9zYW1wbGVzL3ZmaW8t
bWRldi9tdHR5LmMKPj4gQEAgLTc3MCw2ICs3NzAsNyBAQCBzdGF0aWMgaW50IG10dHlfY3JlYXRl
KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCj4+ICAJbGlz
dF9hZGQoJm1kZXZfc3RhdGUtPm5leHQsICZtZGV2X2RldmljZXNfbGlzdCk7Cj4+ICAJbXV0ZXhf
dW5sb2NrKCZtZGV2X2xpc3RfbG9jayk7Cj4+ICAKPj4gKwltZGV2X3NldF9jbGFzc19pZChtZGV2
LCBNREVWX0lEX1ZGSU8pOwo+PiAgCXJldHVybiAwOwo+PiAgfQo+PiAgCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
