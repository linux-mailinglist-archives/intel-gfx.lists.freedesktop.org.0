Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0C4E28D5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 05:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 302EA6E083;
	Thu, 24 Oct 2019 03:28:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3547A6E07D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 03:28:14 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-1aj8KreoOMCZUqB0ExnMtQ-1; Wed, 23 Oct 2019 23:28:09 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7834C5E9;
 Thu, 24 Oct 2019 03:28:05 +0000 (UTC)
Received: from [10.72.12.199] (ovpn-12-199.pek2.redhat.com [10.72.12.199])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A995A5C222;
 Thu, 24 Oct 2019 03:27:38 +0000 (UTC)
To: Alex Williamson <alex.williamson@redhat.com>
References: <20191023130752.18980-1-jasowang@redhat.com>
 <20191023130752.18980-2-jasowang@redhat.com>
 <20191023154204.31d74866@x1.home>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <38bdf762-524a-e0f1-6e9a-1102adfe8fb1@redhat.com>
Date: Thu, 24 Oct 2019 11:27:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191023154204.31d74866@x1.home>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 1aj8KreoOMCZUqB0ExnMtQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571887692;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pzxpsBo2A0SE4SzHMG+CMsMR2xq7g+vvLzNI8mVEzFY=;
 b=VOu3f8zot1LVyQmjzAH1PhOMhJN7XbCsSxWUo65rcv+up7bsWvwwYhYw/YYxlRqn7AEDCk
 ZSGCHJltWDKNt24hNS6TkQbip7IDryi+kwKXAA44tXxgmloKgHNpbLMFtSb50jprWE/1Hg
 7xmJX0xUyMzdxhVGZvnr+uPd+IJ45BQ=
Subject: Re: [Intel-gfx] [PATCH V5 1/6] mdev: class id support
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
 cohuck@redhat.com, linux-kernel@vger.kernel.org, maxime.coquelin@redhat.com,
 lingshan.zhu@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwMTkvMTAvMjQg5LiK5Y2INTo0MiwgQWxleCBXaWxsaWFtc29uIHdyb3RlOgo+IE9uIFdl
ZCwgMjMgT2N0IDIwMTkgMjE6MDc6NDcgKzA4MDAKPiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRo
YXQuY29tPiB3cm90ZToKPgo+PiBNZGV2IGJ1cyBvbmx5IHN1cHBvcnRzIHZmaW8gZHJpdmVyIHJp
Z2h0IG5vdywgc28gaXQgZG9lc24ndCBpbXBsZW1lbnQKPj4gbWF0Y2ggbWV0aG9kLiBCdXQgaW4g
dGhlIGZ1dHVyZSwgd2UgbWF5IGFkZCBkcml2ZXJzIG90aGVyIHRoYW4gdmZpbywKPj4gdGhlIGZp
cnN0IGRyaXZlciBjb3VsZCBiZSB2aXJ0aW8tbWRldi4gVGhpcyBtZWFucyB3ZSBuZWVkIHRvIGFk
ZAo+PiBkZXZpY2UgY2xhc3MgaWQgc3VwcG9ydCBpbiBidXMgbWF0Y2ggbWV0aG9kIHRvIHBhaXIg
dGhlIG1kZXYgZGV2aWNlCj4+IGFuZCBtZGV2IGRyaXZlciBjb3JyZWN0bHkuCj4+Cj4+IFNvIHRo
aXMgcGF0Y2ggYWRkcyBpZF90YWJsZSB0byBtZGV2X2RyaXZlciBhbmQgY2xhc3NfaWQgZm9yIG1k
ZXYKPj4gZGV2aWNlIHdpdGggdGhlIG1hdGNoIG1ldGhvZCBmb3IgbWRldiBidXMuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+Cj4+IC0tLQo+PiAg
IC4uLi9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQtZGV2aWNlLnJzdCAgICAgICB8ICA1ICsrKysr
Cj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMgICAgICAgICAgICAgIHwgIDEg
Kwo+PiAgIGRyaXZlcnMvczM5MC9jaW8vdmZpb19jY3dfb3BzLmMgICAgICAgICAgICAgICB8ICAx
ICsKPj4gICBkcml2ZXJzL3MzOTAvY3J5cHRvL3ZmaW9fYXBfb3BzLmMgICAgICAgICAgICAgfCAg
MSArCj4+ICAgZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMgICAgICAgICAgICAgICAgIHwg
MTggKysrKysrKysrKysrKysrCj4+ICAgZHJpdmVycy92ZmlvL21kZXYvbWRldl9kcml2ZXIuYyAg
ICAgICAgICAgICAgIHwgMjIgKysrKysrKysrKysrKysrKysrKwo+PiAgIGRyaXZlcnMvdmZpby9t
ZGV2L21kZXZfcHJpdmF0ZS5oICAgICAgICAgICAgICB8ICAxICsKPj4gICBkcml2ZXJzL3ZmaW8v
bWRldi92ZmlvX21kZXYuYyAgICAgICAgICAgICAgICAgfCAgNiArKysrKwo+PiAgIGluY2x1ZGUv
bGludXgvbWRldi5oICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA4ICsrKysrKysKPj4gICBp
bmNsdWRlL2xpbnV4L21vZF9kZXZpY2V0YWJsZS5oICAgICAgICAgICAgICAgfCAgOCArKysrKysr
Cj4+ICAgc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgICAgICAgICAgICAgICAgICAgIHwgIDEg
Kwo+PiAgIHNhbXBsZXMvdmZpby1tZGV2L21kcHkuYyAgICAgICAgICAgICAgICAgICAgICB8ICAx
ICsKPj4gICBzYW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMgICAgICAgICAgICAgICAgICAgICAgfCAg
MSArCj4+ICAgMTMgZmlsZXMgY2hhbmdlZCwgNzQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQtZGV2aWNlLnJzdCBi
L0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QKPj4gaW5k
ZXggMjVlYjdkNWI4MzRiLi42NzA5NDEzYmVlMjkgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRp
b24vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QKPj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQtZGV2aWNlLnJzdAo+PiBAQCAtMTAyLDEyICsx
MDIsMTQgQEAgc3RydWN0dXJlIHRvIHJlcHJlc2VudCBhIG1lZGlhdGVkIGRldmljZSdzIGRyaXZl
cjo6Cj4+ICAgICAgICAgKiBAcHJvYmU6IGNhbGxlZCB3aGVuIG5ldyBkZXZpY2UgY3JlYXRlZAo+
PiAgICAgICAgICogQHJlbW92ZTogY2FsbGVkIHdoZW4gZGV2aWNlIHJlbW92ZWQKPj4gICAgICAg
ICAqIEBkcml2ZXI6IGRldmljZSBkcml2ZXIgc3RydWN0dXJlCj4+ICsgICAgICAqIEBpZF90YWJs
ZTogdGhlIGlkcyBzZXJ2aWNlZCBieSB0aGlzIGRyaXZlcgo+PiAgICAgICAgICovCj4+ICAgICAg
ICBzdHJ1Y3QgbWRldl9kcml2ZXIgewo+PiAgIAkgICAgIGNvbnN0IGNoYXIgKm5hbWU7Cj4+ICAg
CSAgICAgaW50ICAoKnByb2JlKSAgKHN0cnVjdCBkZXZpY2UgKmRldik7Cj4+ICAgCSAgICAgdm9p
ZCAoKnJlbW92ZSkgKHN0cnVjdCBkZXZpY2UgKmRldik7Cj4+ICAgCSAgICAgc3RydWN0IGRldmlj
ZV9kcml2ZXIgICAgZHJpdmVyOwo+PiArCSAgICAgY29uc3Qgc3RydWN0IG1kZXZfY2xhc3NfaWQg
KmlkX3RhYmxlOwo+PiAgICAgICAgfTsKPj4gICAKPj4gICBBIG1lZGlhdGVkIGJ1cyBkcml2ZXIg
Zm9yIG1kZXYgc2hvdWxkIHVzZSB0aGlzIHN0cnVjdHVyZSBpbiB0aGUgZnVuY3Rpb24gY2FsbHMK
Pj4gQEAgLTE3MCw2ICsxNzIsOSBAQCB0aGF0IGEgZHJpdmVyIHNob3VsZCB1c2UgdG8gdW5yZWdp
c3RlciBpdHNlbGYgd2l0aCB0aGUgbWRldiBjb3JlIGRyaXZlcjo6Cj4+ICAgCj4+ICAgCWV4dGVy
biB2b2lkIG1kZXZfdW5yZWdpc3Rlcl9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2KTsKPj4gICAK
Pj4gK0l0IGlzIGFsc28gcmVxdWlyZWQgdG8gc3BlY2lmeSB0aGUgY2xhc3NfaWQgaW4gY3JlYXRl
KCkgY2FsbGJhY2sgdGhyb3VnaDo6Cj4+ICsKPj4gKwlpbnQgbWRldl9zZXRfY2xhc3Moc3RydWN0
IG1kZXZfZGV2aWNlICptZGV2LCB1MTYgaWQpOwo+PiAgIAo+PiAgIE1lZGlhdGVkIERldmljZSBN
YW5hZ2VtZW50IEludGVyZmFjZSBUaHJvdWdoIHN5c2ZzCj4+ICAgPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d2dC9rdm1ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0
LmMKPj4gaW5kZXggMzQzZDc5YzFjYjdlLi42NDIwZjBkYmQzMWIgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9rdm1ndC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d2dC9rdm1ndC5jCj4+IEBAIC02NzgsNiArNjc4LDcgQEAgc3RhdGljIGludCBpbnRlbF92
Z3B1X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2aWNlICptZGV2
KQo+PiAgIAkJICAgICBkZXZfbmFtZShtZGV2X2RldihtZGV2KSkpOwo+PiAgIAlyZXQgPSAwOwo+
PiAgIAo+PiArCW1kZXZfc2V0X2NsYXNzKG1kZXYsIE1ERVZfQ0xBU1NfSURfVkZJTyk7Cj4+ICAg
b3V0Ogo+PiAgIAlyZXR1cm4gcmV0Owo+PiAgIH0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvczM5
MC9jaW8vdmZpb19jY3dfb3BzLmMgYi9kcml2ZXJzL3MzOTAvY2lvL3ZmaW9fY2N3X29wcy5jCj4+
IGluZGV4IGYwZDcxYWI3N2M1MC4uY2YyYzAxM2FlMzJmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3MzOTAvY2lvL3ZmaW9fY2N3X29wcy5jCj4+ICsrKyBiL2RyaXZlcnMvczM5MC9jaW8vdmZpb19j
Y3dfb3BzLmMKPj4gQEAgLTEyOSw2ICsxMjksNyBAQCBzdGF0aWMgaW50IHZmaW9fY2N3X21kZXZf
Y3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCj4+
ICAgCQkJICAgcHJpdmF0ZS0+c2NoLT5zY2hpZC5zc2lkLAo+PiAgIAkJCSAgIHByaXZhdGUtPnNj
aC0+c2NoaWQuc2NoX25vKTsKPj4gICAKPj4gKwltZGV2X3NldF9jbGFzcyhtZGV2LCBNREVWX0NM
QVNTX0lEX1ZGSU8pOwo+PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3MzOTAvY3J5cHRvL3ZmaW9fYXBfb3BzLmMgYi9kcml2ZXJzL3MzOTAvY3J5cHRv
L3ZmaW9fYXBfb3BzLmMKPj4gaW5kZXggNWMwZjUzYzZkZGU3Li4wN2MzMTA3MGFmZWIgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYwo+PiArKysgYi9kcml2
ZXJzL3MzOTAvY3J5cHRvL3ZmaW9fYXBfb3BzLmMKPj4gQEAgLTM0Myw2ICszNDMsNyBAQCBzdGF0
aWMgaW50IHZmaW9fYXBfbWRldl9jcmVhdGUoc3RydWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBt
ZGV2X2RldmljZSAqbWRldikKPj4gICAJbGlzdF9hZGQoJm1hdHJpeF9tZGV2LT5ub2RlLCAmbWF0
cml4X2Rldi0+bWRldl9saXN0KTsKPj4gICAJbXV0ZXhfdW5sb2NrKCZtYXRyaXhfZGV2LT5sb2Nr
KTsKPj4gICAKPj4gKwltZGV2X3NldF9jbGFzcyhtZGV2LCBNREVWX0NMQVNTX0lEX1ZGSU8pOwo+
PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8v
bWRldi9tZGV2X2NvcmUuYyBiL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfY29yZS5jCj4+IGluZGV4
IGI1NThkNGNmZDA4Mi4uM2E5YzUyZDcxYjRlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3ZmaW8v
bWRldi9tZGV2X2NvcmUuYwo+PiArKysgYi9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYwo+
PiBAQCAtNDUsNiArNDUsMTYgQEAgdm9pZCBtZGV2X3NldF9kcnZkYXRhKHN0cnVjdCBtZGV2X2Rl
dmljZSAqbWRldiwgdm9pZCAqZGF0YSkKPj4gICB9Cj4+ICAgRVhQT1JUX1NZTUJPTChtZGV2X3Nl
dF9kcnZkYXRhKTsKPj4gICAKPj4gKy8qIFNwZWNpZnkgdGhlIGNsYXNzIGZvciB0aGUgbWRldiBk
ZXZpY2UsIHRoaXMgbXVzdCBiZSBjYWxsZWQgZHVyaW5nCj4+ICsgKiBjcmVhdGUoKSBjYWxsYmFj
ay4KPj4gKyAqLwo+PiArdm9pZCBtZGV2X3NldF9jbGFzcyhzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYsIHUxNiBpZCkKPj4gK3sKPj4gKwlXQVJOX09OKG1kZXYtPmNsYXNzX2lkKTsKPj4gKwltZGV2
LT5jbGFzc19pZCA9IGlkOwo+PiArfQo+PiArRVhQT1JUX1NZTUJPTChtZGV2X3NldF9jbGFzcyk7
Cj4+ICsKPj4gICBzdHJ1Y3QgZGV2aWNlICptZGV2X2RldihzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYpCj4+ICAgewo+PiAgIAlyZXR1cm4gJm1kZXYtPmRldjsKPj4gQEAgLTEzNSw2ICsxNDUsNyBA
QCBzdGF0aWMgaW50IG1kZXZfZGV2aWNlX3JlbW92ZV9jYihzdHJ1Y3QgZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEpCj4+ICAgICogbWRldl9yZWdpc3Rlcl9kZXZpY2UgOiBSZWdpc3RlciBhIGRldmlj
ZQo+PiAgICAqIEBkZXY6IGRldmljZSBzdHJ1Y3R1cmUgcmVwcmVzZW50aW5nIHBhcmVudCBkZXZp
Y2UuCj4+ICAgICogQG9wczogUGFyZW50IGRldmljZSBvcGVyYXRpb24gc3RydWN0dXJlIHRvIGJl
IHJlZ2lzdGVyZWQuCj4+ICsgKiBAaWQ6IGNsYXNzIGlkLgo+PiAgICAqCj4+ICAgICogQWRkIGRl
dmljZSB0byBsaXN0IG9mIHJlZ2lzdGVyZWQgcGFyZW50IGRldmljZXMuCj4+ICAgICogUmV0dXJu
cyBhIG5lZ2F0aXZlIHZhbHVlIG9uIGVycm9yLCBvdGhlcndpc2UgMC4KPj4gQEAgLTMyNCw2ICsz
MzUsMTMgQEAgaW50IG1kZXZfZGV2aWNlX2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwKPj4g
ICAJaWYgKHJldCkKPj4gICAJCWdvdG8gb3BzX2NyZWF0ZV9mYWlsOwo+PiAgIAo+PiArCWlmICgh
bWRldi0+Y2xhc3NfaWQpIHsKPj4gKwkJcmV0ID0gLUVJTlZBTDsKPj4gKwkJV0FSTigxLCAiY2xh
c3MgaWQgbXVzdCBiZSBzcGVjaWZpZWQgZm9yIGRldmljZSAlc1xuIiwKPj4gKwkJICAgICBkZXZf
bmFtZShkZXYpKTsKPiBOaXQsIGRldl93YXJuKGRldiwgIm1kZXYgdmVuZG9yIGRyaXZlciBmYWls
ZWQgdG8gc3BlY2lmeSBkZXZpY2UgY2xhc3NcbiIpOwoKCldpbGwgZml4LgoKCj4KPj4gKwkJZ290
byBhZGRfZmFpbDsKPj4gKwl9Cj4+ICsKPj4gICAJcmV0ID0gZGV2aWNlX2FkZCgmbWRldi0+ZGV2
KTsKPj4gICAJaWYgKHJldCkKPj4gICAJCWdvdG8gYWRkX2ZhaWw7Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3ZmaW8vbWRldi9tZGV2X2RyaXZlci5jIGIvZHJpdmVycy92ZmlvL21kZXYvbWRldl9k
cml2ZXIuYwo+PiBpbmRleCAwZDMyMjNhZWUyMGIuLjMxOWQ4ODZmZmFmNyAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9kcml2ZXIuYwo+PiArKysgYi9kcml2ZXJzL3ZmaW8v
bWRldi9tZGV2X2RyaXZlci5jCj4+IEBAIC02OSw4ICs2OSwzMCBAQCBzdGF0aWMgaW50IG1kZXZf
cmVtb3ZlKHN0cnVjdCBkZXZpY2UgKmRldikKPj4gICAJcmV0dXJuIDA7Cj4+ICAgfQo+PiAgIAo+
PiArc3RhdGljIGludCBtZGV2X21hdGNoKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmlj
ZV9kcml2ZXIgKmRydikKPj4gK3sKPj4gKwl1bnNpZ25lZCBpbnQgaTsKPj4gKwlzdHJ1Y3QgbWRl
dl9kZXZpY2UgKm1kZXYgPSB0b19tZGV2X2RldmljZShkZXYpOwo+PiArCXN0cnVjdCBtZGV2X2Ry
aXZlciAqbWRydiA9IHRvX21kZXZfZHJpdmVyKGRydik7Cj4+ICsJY29uc3Qgc3RydWN0IG1kZXZf
Y2xhc3NfaWQgKmlkcyA9IG1kcnYtPmlkX3RhYmxlOwo+PiArCj4gTml0LCBhcyB3ZSBzdGFydCB0
byBhbGxvdyBuZXcgbWRldiBidXMgZHJpdmVycywgbWRldi1jb3JlIG1pZ2h0IHdhbnQgdG8KPiBw
cm90ZWN0IGl0c2VsZiBmcm9tIGEgTlVMTCBpZF90YWJsZSwgYnkgZWl0aGVyIGZhaWxpbmcgdGhl
Cj4gbWRldl9yZWdpc3Rlcl9kcml2ZXIoKSBvciBmYWlsaW5nIHRoZSBtYXRjaCBoZXJlLiAgSSB0
aGluayBzdWNoIGEKPiBjb25kaXRpb24gd291bGQgc2VnZmF1bHQgYXMgd3JpdHRlbiBoZXJlLCBi
dXQgY2xlYXJseSB3ZSBkb24ndCBoYXZlCj4gc3VjaCBleHRlcm5hbCBkcml2ZXJzIHlldC4gIFRo
YW5rcywKCgpJJ20gbm90IHN1cmUgSSBnZXQgdGhlIHBvaW50IGhlcmUuIE15IHVuZGVyc3RhbmRp
bmcgaXMgdGhhdCBtZGV2LWNvcmUgCndvbid0IHRyeSB0byBiZSBtYXRjaGVkIGhlcmUgc2luY2Ug
aXQgd2FzIG5vdCBhIGNvbXBsZXRlIG1kZXYgZGV2aWNlLgoKVGhhbmtzCgoKPgo+IEFsZXgKPgo+
PiArCWZvciAoaSA9IDA7IGlkc1tpXS5pZDsgaSsrKQo+PiArCQlpZiAoaWRzW2ldLmlkID09IG1k
ZXYtPmNsYXNzX2lkKQo+PiArCQkJcmV0dXJuIDE7Cj4+ICsJcmV0dXJuIDA7Cj4+ICt9Cj4+ICsK
Pj4gK3N0YXRpYyBpbnQgbWRldl91ZXZlbnQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qga29i
al91ZXZlbnRfZW52ICplbnYpCj4+ICt7Cj4+ICsJc3RydWN0IG1kZXZfZGV2aWNlICptZGV2ID0g
dG9fbWRldl9kZXZpY2UoZGV2KTsKPj4gKwo+PiArCXJldHVybiBhZGRfdWV2ZW50X3ZhcihlbnYs
ICJNT0RBTElBUz1tZGV2OmMlMDJYIiwgbWRldi0+Y2xhc3NfaWQpOwo+PiArfQo+PiArCj4+ICAg
c3RydWN0IGJ1c190eXBlIG1kZXZfYnVzX3R5cGUgPSB7Cj4+ICAgCS5uYW1lCQk9ICJtZGV2IiwK
Pj4gKwkubWF0Y2gJCT0gbWRldl9tYXRjaCwKPj4gKwkudWV2ZW50CQk9IG1kZXZfdWV2ZW50LAo+
PiAgIAkucHJvYmUJCT0gbWRldl9wcm9iZSwKPj4gICAJLnJlbW92ZQkJPSBtZGV2X3JlbW92ZSwK
Pj4gICB9Owo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9wcml2YXRlLmgg
Yi9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaAo+PiBpbmRleCA3ZDkyMjk1MGNhYWYu
LmM2NWY0MzZjMTg2OSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9wcml2
YXRlLmgKPj4gKysrIGIvZHJpdmVycy92ZmlvL21kZXYvbWRldl9wcml2YXRlLmgKPj4gQEAgLTMz
LDYgKzMzLDcgQEAgc3RydWN0IG1kZXZfZGV2aWNlIHsKPj4gICAJc3RydWN0IGtvYmplY3QgKnR5
cGVfa29iajsKPj4gICAJc3RydWN0IGRldmljZSAqaW9tbXVfZGV2aWNlOwo+PiAgIAlib29sIGFj
dGl2ZTsKPj4gKwl1MTYgY2xhc3NfaWQ7Cj4+ICAgfTsKPj4gICAKPj4gICAjZGVmaW5lIHRvX21k
ZXZfZGV2aWNlKGRldikJY29udGFpbmVyX29mKGRldiwgc3RydWN0IG1kZXZfZGV2aWNlLCBkZXYp
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYyBiL2RyaXZlcnMv
dmZpby9tZGV2L3ZmaW9fbWRldi5jCj4+IGluZGV4IDMwOTY0YTRlMGEyOC4uN2IyNGVlOWNiOGRk
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYwo+PiArKysgYi9k
cml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYwo+PiBAQCAtMTIwLDEwICsxMjAsMTYgQEAgc3Rh
dGljIHZvaWQgdmZpb19tZGV2X3JlbW92ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+ICAgCXZmaW9f
ZGVsX2dyb3VwX2RldihkZXYpOwo+PiAgIH0KPj4gICAKPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
bWRldl9jbGFzc19pZCBpZF90YWJsZVtdID0gewo+PiArCXsgTURFVl9DTEFTU19JRF9WRklPIH0s
Cj4+ICsJeyAwIH0sCj4+ICt9Owo+PiArCj4+ICAgc3RhdGljIHN0cnVjdCBtZGV2X2RyaXZlciB2
ZmlvX21kZXZfZHJpdmVyID0gewo+PiAgIAkubmFtZQk9ICJ2ZmlvX21kZXYiLAo+PiAgIAkucHJv
YmUJPSB2ZmlvX21kZXZfcHJvYmUsCj4+ICAgCS5yZW1vdmUJPSB2ZmlvX21kZXZfcmVtb3ZlLAo+
PiArCS5pZF90YWJsZSA9IGlkX3RhYmxlLAo+PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGljIGludCBf
X2luaXQgdmZpb19tZGV2X2luaXQodm9pZCkKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgv
bWRldi5oIGIvaW5jbHVkZS9saW51eC9tZGV2LmgKPj4gaW5kZXggMGNlMzBjYTc4ZGIwLi43OGI2
OWQwOWViNTQgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgvbWRldi5oCj4+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvbWRldi5oCj4+IEBAIC0xMTgsNiArMTE4LDcgQEAgc3RydWN0IG1kZXZfdHlw
ZV9hdHRyaWJ1dGUgbWRldl90eXBlX2F0dHJfIyNfbmFtZSA9CQlcCj4+ICAgICogQHByb2JlOiBj
YWxsZWQgd2hlbiBuZXcgZGV2aWNlIGNyZWF0ZWQKPj4gICAgKiBAcmVtb3ZlOiBjYWxsZWQgd2hl
biBkZXZpY2UgcmVtb3ZlZAo+PiAgICAqIEBkcml2ZXI6IGRldmljZSBkcml2ZXIgc3RydWN0dXJl
Cj4+ICsgKiBAaWRfdGFibGU6IHRoZSBpZHMgc2VydmljZWQgYnkgdGhpcyBkcml2ZXIKPj4gICAg
Kgo+PiAgICAqKi8KPj4gICBzdHJ1Y3QgbWRldl9kcml2ZXIgewo+PiBAQCAtMTI1LDYgKzEyNiw3
IEBAIHN0cnVjdCBtZGV2X2RyaXZlciB7Cj4+ICAgCWludCAgKCpwcm9iZSkoc3RydWN0IGRldmlj
ZSAqZGV2KTsKPj4gICAJdm9pZCAoKnJlbW92ZSkoc3RydWN0IGRldmljZSAqZGV2KTsKPj4gICAJ
c3RydWN0IGRldmljZV9kcml2ZXIgZHJpdmVyOwo+PiArCWNvbnN0IHN0cnVjdCBtZGV2X2NsYXNz
X2lkICppZF90YWJsZTsKPj4gICB9Owo+PiAgIAo+PiAgICNkZWZpbmUgdG9fbWRldl9kcml2ZXIo
ZHJ2KQljb250YWluZXJfb2YoZHJ2LCBzdHJ1Y3QgbWRldl9kcml2ZXIsIGRyaXZlcikKPj4gQEAg
LTEzMiw2ICsxMzQsNyBAQCBzdHJ1Y3QgbWRldl9kcml2ZXIgewo+PiAgIHZvaWQgKm1kZXZfZ2V0
X2RydmRhdGEoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KTsKPj4gICB2b2lkIG1kZXZfc2V0X2Ry
dmRhdGEoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB2b2lkICpkYXRhKTsKPj4gICBjb25zdCBn
dWlkX3QgKm1kZXZfdXVpZChzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwo+PiArdm9pZCBtZGV2
X3NldF9jbGFzcyhzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsIHUxNiBpZCk7Cj4+ICAgCj4+ICAg
ZXh0ZXJuIHN0cnVjdCBidXNfdHlwZSBtZGV2X2J1c190eXBlOwo+PiAgIAo+PiBAQCAtMTQ1LDQg
KzE0OCw5IEBAIHN0cnVjdCBkZXZpY2UgKm1kZXZfcGFyZW50X2RldihzdHJ1Y3QgbWRldl9kZXZp
Y2UgKm1kZXYpOwo+PiAgIHN0cnVjdCBkZXZpY2UgKm1kZXZfZGV2KHN0cnVjdCBtZGV2X2Rldmlj
ZSAqbWRldik7Cj4+ICAgc3RydWN0IG1kZXZfZGV2aWNlICptZGV2X2Zyb21fZGV2KHN0cnVjdCBk
ZXZpY2UgKmRldik7Cj4+ICAgCj4+ICtlbnVtIHsKPj4gKwlNREVWX0NMQVNTX0lEX1ZGSU8gPSAx
LAo+PiArCS8qIE5ldyBlbnRyaWVzIG11c3QgYmUgYWRkZWQgaGVyZSAqLwo+PiArfTsKPj4gKwo+
PiAgICNlbmRpZiAvKiBNREVWX0ggKi8KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbW9k
X2RldmljZXRhYmxlLmggYi9pbmNsdWRlL2xpbnV4L21vZF9kZXZpY2V0YWJsZS5oCj4+IGluZGV4
IDU3MTRmZDM1YTgzYy4uZjMyYzZlNDRmYjFhIDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4
L21vZF9kZXZpY2V0YWJsZS5oCj4+ICsrKyBiL2luY2x1ZGUvbGludXgvbW9kX2RldmljZXRhYmxl
LmgKPj4gQEAgLTgyMSw0ICs4MjEsMTIgQEAgc3RydWN0IHdtaV9kZXZpY2VfaWQgewo+PiAgIAlj
b25zdCB2b2lkICpjb250ZXh0Owo+PiAgIH07Cj4+ICAgCj4+ICsvKioKPj4gKyAqIHN0cnVjdCBt
ZGV2X2NsYXNzX2lkIC0gTURFViBkZXZpY2UgY2xhc3MgaWRlbnRpZmllcgo+PiArICogQGlkOiBV
c2VkIHRvIGlkZW50aWZ5IGEgc3BlY2lmaWMgY2xhc3Mgb2YgZGV2aWNlLCBlLmcgdmZpby1tZGV2
IGRldmljZS4KPj4gKyAqLwo+PiArc3RydWN0IG1kZXZfY2xhc3NfaWQgewo+PiArCV9fdTE2IGlk
Owo+PiArfTsKPj4gKwo+PiAgICNlbmRpZiAvKiBMSU5VWF9NT0RfREVWSUNFVEFCTEVfSCAqLwo+
PiBkaWZmIC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgYi9zYW1wbGVzL3ZmaW8t
bWRldi9tYm9jaHMuYwo+PiBpbmRleCBhYzVjOGMxN2IxZmYuLjExNWJjNTA3NDY1NiAxMDA2NDQK
Pj4gLS0tIGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKPj4gKysrIGIvc2FtcGxlcy92Zmlv
LW1kZXYvbWJvY2hzLmMKPj4gQEAgLTU2MSw2ICs1NjEsNyBAQCBzdGF0aWMgaW50IG1ib2Noc19j
cmVhdGUoc3RydWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKPj4g
ICAJbWJvY2hzX3Jlc2V0KG1kZXYpOwo+PiAgIAo+PiAgIAltYm9jaHNfdXNlZF9tYnl0ZXMgKz0g
dHlwZS0+bWJ5dGVzOwo+PiArCW1kZXZfc2V0X2NsYXNzKG1kZXYsIE1ERVZfQ0xBU1NfSURfVkZJ
Tyk7Cj4+ICAgCXJldHVybiAwOwo+PiAgIAo+PiAgIGVycl9tZW06Cj4+IGRpZmYgLS1naXQgYS9z
YW1wbGVzL3ZmaW8tbWRldi9tZHB5LmMgYi9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5LmMKPj4gaW5k
ZXggY2M4NmJmNjU2NmU0Li42NjU2MTQ1NzRkNTAgMTAwNjQ0Cj4+IC0tLSBhL3NhbXBsZXMvdmZp
by1tZGV2L21kcHkuYwo+PiArKysgYi9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5LmMKPj4gQEAgLTI2
OSw2ICsyNjksNyBAQCBzdGF0aWMgaW50IG1kcHlfY3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2Jq
LCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCj4+ICAgCW1kcHlfcmVzZXQobWRldik7Cj4+ICAg
Cj4+ICAgCW1kcHlfY291bnQrKzsKPj4gKwltZGV2X3NldF9jbGFzcyhtZGV2LCBNREVWX0NMQVNT
X0lEX1ZGSU8pOwo+PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgCj4+IGRpZmYgLS1naXQgYS9z
YW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMgYi9zYW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMKPj4gaW5k
ZXggY2U4NGEzMDBhNGRhLi45MGRhMTJmZjdmZDkgMTAwNjQ0Cj4+IC0tLSBhL3NhbXBsZXMvdmZp
by1tZGV2L210dHkuYwo+PiArKysgYi9zYW1wbGVzL3ZmaW8tbWRldi9tdHR5LmMKPj4gQEAgLTc1
NSw2ICs3NTUsNyBAQCBzdGF0aWMgaW50IG10dHlfY3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2Jq
LCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCj4+ICAgCWxpc3RfYWRkKCZtZGV2X3N0YXRlLT5u
ZXh0LCAmbWRldl9kZXZpY2VzX2xpc3QpOwo+PiAgIAltdXRleF91bmxvY2soJm1kZXZfbGlzdF9s
b2NrKTsKPj4gICAKPj4gKwltZGV2X3NldF9jbGFzcyhtZGV2LCBNREVWX0NMQVNTX0lEX1ZGSU8p
Owo+PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
