Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2911E3C4D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 21:47:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A57C6E637;
	Thu, 24 Oct 2019 19:47:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27AE16E77F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 19:47:00 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-251-_h2FRMZQMb62lVvm9O8R9A-1; Thu, 24 Oct 2019 15:46:54 -0400
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3F8B107AD33;
 Thu, 24 Oct 2019 19:46:50 +0000 (UTC)
Received: from x1.home (ovpn-118-102.phx2.redhat.com [10.3.118.102])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CDC055C21A;
 Thu, 24 Oct 2019 19:46:36 +0000 (UTC)
Date: Thu, 24 Oct 2019 13:46:36 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20191024134636.253131c5@x1.home>
In-Reply-To: <38bdf762-524a-e0f1-6e9a-1102adfe8fb1@redhat.com>
References: <20191023130752.18980-1-jasowang@redhat.com>
 <20191023130752.18980-2-jasowang@redhat.com>
 <20191023154204.31d74866@x1.home>
 <38bdf762-524a-e0f1-6e9a-1102adfe8fb1@redhat.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: _h2FRMZQMb62lVvm9O8R9A-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1571946419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H9X0BtuoZ8Jvkk6PkqP3IQvdtLRJY5D+ojk6YTP+TA8=;
 b=TAKwabPnX4bKsX0vNOHBMBRAE3/96KBP2VPSu9vZHWEsx+kSVVw1nxNRscLNYRBZlKfZHx
 Y/yKIQbr8Qmak9l31XiBg+tRWrwA+jRn/dQwm1eKa0KQyTsvM9t7byXIn4WUKfzMSQotrr
 H1J5astDGqicYEYgA+SptDkhuEG4eCQ=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNCBPY3QgMjAxOSAxMToyNzozNiArMDgwMApKYXNvbiBXYW5nIDxqYXNvd2FuZ0By
ZWRoYXQuY29tPiB3cm90ZToKCj4gT24gMjAxOS8xMC8yNCDkuIrljYg1OjQyLCBBbGV4IFdpbGxp
YW1zb24gd3JvdGU6Cj4gPiBPbiBXZWQsIDIzIE9jdCAyMDE5IDIxOjA3OjQ3ICswODAwCj4gPiBK
YXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPiB3cm90ZToKPiA+ICAKPiA+PiBNZGV2IGJ1
cyBvbmx5IHN1cHBvcnRzIHZmaW8gZHJpdmVyIHJpZ2h0IG5vdywgc28gaXQgZG9lc24ndCBpbXBs
ZW1lbnQKPiA+PiBtYXRjaCBtZXRob2QuIEJ1dCBpbiB0aGUgZnV0dXJlLCB3ZSBtYXkgYWRkIGRy
aXZlcnMgb3RoZXIgdGhhbiB2ZmlvLAo+ID4+IHRoZSBmaXJzdCBkcml2ZXIgY291bGQgYmUgdmly
dGlvLW1kZXYuIFRoaXMgbWVhbnMgd2UgbmVlZCB0byBhZGQKPiA+PiBkZXZpY2UgY2xhc3MgaWQg
c3VwcG9ydCBpbiBidXMgbWF0Y2ggbWV0aG9kIHRvIHBhaXIgdGhlIG1kZXYgZGV2aWNlCj4gPj4g
YW5kIG1kZXYgZHJpdmVyIGNvcnJlY3RseS4KPiA+Pgo+ID4+IFNvIHRoaXMgcGF0Y2ggYWRkcyBp
ZF90YWJsZSB0byBtZGV2X2RyaXZlciBhbmQgY2xhc3NfaWQgZm9yIG1kZXYKPiA+PiBkZXZpY2Ug
d2l0aCB0aGUgbWF0Y2ggbWV0aG9kIGZvciBtZGV2IGJ1cy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYt
Ynk6IEphc29uIFdhbmcgPGphc293YW5nQHJlZGhhdC5jb20+Cj4gPj4gLS0tCj4gPj4gICAuLi4v
ZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QgICAgICAgfCAgNSArKysrKwo+ID4+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMgICAgICAgICAgICAgIHwgIDEgKwo+
ID4+ICAgZHJpdmVycy9zMzkwL2Npby92ZmlvX2Njd19vcHMuYyAgICAgICAgICAgICAgIHwgIDEg
Kwo+ID4+ICAgZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5jICAgICAgICAgICAgIHwg
IDEgKwo+ID4+ICAgZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMgICAgICAgICAgICAgICAg
IHwgMTggKysrKysrKysrKysrKysrCj4gPj4gICBkcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2RyaXZl
ci5jICAgICAgICAgICAgICAgfCAyMiArKysrKysrKysrKysrKysrKysrCj4gPj4gICBkcml2ZXJz
L3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaCAgICAgICAgICAgICAgfCAgMSArCj4gPj4gICBkcml2
ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYyAgICAgICAgICAgICAgICAgfCAgNiArKysrKwo+ID4+
ICAgaW5jbHVkZS9saW51eC9tZGV2LmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDggKysr
KysrKwo+ID4+ICAgaW5jbHVkZS9saW51eC9tb2RfZGV2aWNldGFibGUuaCAgICAgICAgICAgICAg
IHwgIDggKysrKysrKwo+ID4+ICAgc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgICAgICAgICAg
ICAgICAgICAgIHwgIDEgKwo+ID4+ICAgc2FtcGxlcy92ZmlvLW1kZXYvbWRweS5jICAgICAgICAg
ICAgICAgICAgICAgIHwgIDEgKwo+ID4+ICAgc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jICAgICAg
ICAgICAgICAgICAgICAgIHwgIDEgKwo+ID4+ICAgMTMgZmlsZXMgY2hhbmdlZCwgNzQgaW5zZXJ0
aW9ucygrKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS92
ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvdmZpby1t
ZWRpYXRlZC1kZXZpY2UucnN0Cj4gPj4gaW5kZXggMjVlYjdkNWI4MzRiLi42NzA5NDEzYmVlMjkg
MTAwNjQ0Cj4gPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQt
ZGV2aWNlLnJzdAo+ID4+ICsrKyBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS92ZmlvLW1lZGlh
dGVkLWRldmljZS5yc3QKPiA+PiBAQCAtMTAyLDEyICsxMDIsMTQgQEAgc3RydWN0dXJlIHRvIHJl
cHJlc2VudCBhIG1lZGlhdGVkIGRldmljZSdzIGRyaXZlcjo6Cj4gPj4gICAgICAgICAqIEBwcm9i
ZTogY2FsbGVkIHdoZW4gbmV3IGRldmljZSBjcmVhdGVkCj4gPj4gICAgICAgICAqIEByZW1vdmU6
IGNhbGxlZCB3aGVuIGRldmljZSByZW1vdmVkCj4gPj4gICAgICAgICAqIEBkcml2ZXI6IGRldmlj
ZSBkcml2ZXIgc3RydWN0dXJlCj4gPj4gKyAgICAgICogQGlkX3RhYmxlOiB0aGUgaWRzIHNlcnZp
Y2VkIGJ5IHRoaXMgZHJpdmVyCj4gPj4gICAgICAgICAqLwo+ID4+ICAgICAgICBzdHJ1Y3QgbWRl
dl9kcml2ZXIgewo+ID4+ICAgCSAgICAgY29uc3QgY2hhciAqbmFtZTsKPiA+PiAgIAkgICAgIGlu
dCAgKCpwcm9iZSkgIChzdHJ1Y3QgZGV2aWNlICpkZXYpOwo+ID4+ICAgCSAgICAgdm9pZCAoKnJl
bW92ZSkgKHN0cnVjdCBkZXZpY2UgKmRldik7Cj4gPj4gICAJICAgICBzdHJ1Y3QgZGV2aWNlX2Ry
aXZlciAgICBkcml2ZXI7Cj4gPj4gKwkgICAgIGNvbnN0IHN0cnVjdCBtZGV2X2NsYXNzX2lkICpp
ZF90YWJsZTsKPiA+PiAgICAgICAgfTsKPiA+PiAgIAo+ID4+ICAgQSBtZWRpYXRlZCBidXMgZHJp
dmVyIGZvciBtZGV2IHNob3VsZCB1c2UgdGhpcyBzdHJ1Y3R1cmUgaW4gdGhlIGZ1bmN0aW9uIGNh
bGxzCj4gPj4gQEAgLTE3MCw2ICsxNzIsOSBAQCB0aGF0IGEgZHJpdmVyIHNob3VsZCB1c2UgdG8g
dW5yZWdpc3RlciBpdHNlbGYgd2l0aCB0aGUgbWRldiBjb3JlIGRyaXZlcjo6Cj4gPj4gICAKPiA+
PiAgIAlleHRlcm4gdm9pZCBtZGV2X3VucmVnaXN0ZXJfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRl
dik7Cj4gPj4gICAKPiA+PiArSXQgaXMgYWxzbyByZXF1aXJlZCB0byBzcGVjaWZ5IHRoZSBjbGFz
c19pZCBpbiBjcmVhdGUoKSBjYWxsYmFjayB0aHJvdWdoOjoKPiA+PiArCj4gPj4gKwlpbnQgbWRl
dl9zZXRfY2xhc3Moc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB1MTYgaWQpOwo+ID4+ICAgCj4g
Pj4gICBNZWRpYXRlZCBEZXZpY2UgTWFuYWdlbWVudCBJbnRlcmZhY2UgVGhyb3VnaCBzeXNmcwo+
ID4+ICAgPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
PiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndnQva3ZtZ3QuYwo+ID4+IGluZGV4IDM0M2Q3OWMxY2I3ZS4uNjQy
MGYwZGJkMzFiIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9rdm1n
dC5jCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMKPiA+PiBAQCAt
Njc4LDYgKzY3OCw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfdmdwdV9jcmVhdGUoc3RydWN0IGtvYmpl
Y3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKPiA+PiAgIAkJICAgICBkZXZfbmFt
ZShtZGV2X2RldihtZGV2KSkpOwo+ID4+ICAgCXJldCA9IDA7Cj4gPj4gICAKPiA+PiArCW1kZXZf
c2V0X2NsYXNzKG1kZXYsIE1ERVZfQ0xBU1NfSURfVkZJTyk7Cj4gPj4gICBvdXQ6Cj4gPj4gICAJ
cmV0dXJuIHJldDsKPiA+PiAgIH0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zMzkwL2Npby92
ZmlvX2Njd19vcHMuYyBiL2RyaXZlcnMvczM5MC9jaW8vdmZpb19jY3dfb3BzLmMKPiA+PiBpbmRl
eCBmMGQ3MWFiNzdjNTAuLmNmMmMwMTNhZTMyZiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL3Mz
OTAvY2lvL3ZmaW9fY2N3X29wcy5jCj4gPj4gKysrIGIvZHJpdmVycy9zMzkwL2Npby92ZmlvX2Nj
d19vcHMuYwo+ID4+IEBAIC0xMjksNiArMTI5LDcgQEAgc3RhdGljIGludCB2ZmlvX2Njd19tZGV2
X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KQo+
ID4+ICAgCQkJICAgcHJpdmF0ZS0+c2NoLT5zY2hpZC5zc2lkLAo+ID4+ICAgCQkJICAgcHJpdmF0
ZS0+c2NoLT5zY2hpZC5zY2hfbm8pOwo+ID4+ICAgCj4gPj4gKwltZGV2X3NldF9jbGFzcyhtZGV2
LCBNREVWX0NMQVNTX0lEX1ZGSU8pOwo+ID4+ICAgCXJldHVybiAwOwo+ID4+ICAgfQo+ID4+ICAg
Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYyBiL2Ry
aXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYwo+ID4+IGluZGV4IDVjMGY1M2M2ZGRlNy4u
MDdjMzEwNzBhZmViIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19h
cF9vcHMuYwo+ID4+ICsrKyBiL2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYwo+ID4+
IEBAIC0zNDMsNiArMzQzLDcgQEAgc3RhdGljIGludCB2ZmlvX2FwX21kZXZfY3JlYXRlKHN0cnVj
dCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCj4gPj4gICAJbGlzdF9h
ZGQoJm1hdHJpeF9tZGV2LT5ub2RlLCAmbWF0cml4X2Rldi0+bWRldl9saXN0KTsKPiA+PiAgIAlt
dXRleF91bmxvY2soJm1hdHJpeF9kZXYtPmxvY2spOwo+ID4+ICAgCj4gPj4gKwltZGV2X3NldF9j
bGFzcyhtZGV2LCBNREVWX0NMQVNTX0lEX1ZGSU8pOwo+ID4+ICAgCXJldHVybiAwOwo+ID4+ICAg
fQo+ID4+ICAgCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfY29yZS5j
IGIvZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMKPiA+PiBpbmRleCBiNTU4ZDRjZmQwODIu
LjNhOWM1MmQ3MWI0ZSAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2Nv
cmUuYwo+ID4+ICsrKyBiL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfY29yZS5jCj4gPj4gQEAgLTQ1
LDYgKzQ1LDE2IEBAIHZvaWQgbWRldl9zZXRfZHJ2ZGF0YShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYsIHZvaWQgKmRhdGEpCj4gPj4gICB9Cj4gPj4gICBFWFBPUlRfU1lNQk9MKG1kZXZfc2V0X2Ry
dmRhdGEpOwo+ID4+ICAgCj4gPj4gKy8qIFNwZWNpZnkgdGhlIGNsYXNzIGZvciB0aGUgbWRldiBk
ZXZpY2UsIHRoaXMgbXVzdCBiZSBjYWxsZWQgZHVyaW5nCj4gPj4gKyAqIGNyZWF0ZSgpIGNhbGxi
YWNrLgo+ID4+ICsgKi8KPiA+PiArdm9pZCBtZGV2X3NldF9jbGFzcyhzdHJ1Y3QgbWRldl9kZXZp
Y2UgKm1kZXYsIHUxNiBpZCkKPiA+PiArewo+ID4+ICsJV0FSTl9PTihtZGV2LT5jbGFzc19pZCk7
Cj4gPj4gKwltZGV2LT5jbGFzc19pZCA9IGlkOwo+ID4+ICt9Cj4gPj4gK0VYUE9SVF9TWU1CT0wo
bWRldl9zZXRfY2xhc3MpOwo+ID4+ICsKPiA+PiAgIHN0cnVjdCBkZXZpY2UgKm1kZXZfZGV2KHN0
cnVjdCBtZGV2X2RldmljZSAqbWRldikKPiA+PiAgIHsKPiA+PiAgIAlyZXR1cm4gJm1kZXYtPmRl
djsKPiA+PiBAQCAtMTM1LDYgKzE0NSw3IEBAIHN0YXRpYyBpbnQgbWRldl9kZXZpY2VfcmVtb3Zl
X2NiKHN0cnVjdCBkZXZpY2UgKmRldiwgdm9pZCAqZGF0YSkKPiA+PiAgICAqIG1kZXZfcmVnaXN0
ZXJfZGV2aWNlIDogUmVnaXN0ZXIgYSBkZXZpY2UKPiA+PiAgICAqIEBkZXY6IGRldmljZSBzdHJ1
Y3R1cmUgcmVwcmVzZW50aW5nIHBhcmVudCBkZXZpY2UuCj4gPj4gICAgKiBAb3BzOiBQYXJlbnQg
ZGV2aWNlIG9wZXJhdGlvbiBzdHJ1Y3R1cmUgdG8gYmUgcmVnaXN0ZXJlZC4KPiA+PiArICogQGlk
OiBjbGFzcyBpZC4KPiA+PiAgICAqCj4gPj4gICAgKiBBZGQgZGV2aWNlIHRvIGxpc3Qgb2YgcmVn
aXN0ZXJlZCBwYXJlbnQgZGV2aWNlcy4KPiA+PiAgICAqIFJldHVybnMgYSBuZWdhdGl2ZSB2YWx1
ZSBvbiBlcnJvciwgb3RoZXJ3aXNlIDAuCj4gPj4gQEAgLTMyNCw2ICszMzUsMTMgQEAgaW50IG1k
ZXZfZGV2aWNlX2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwKPiA+PiAgIAlpZiAocmV0KQo+
ID4+ICAgCQlnb3RvIG9wc19jcmVhdGVfZmFpbDsKPiA+PiAgIAo+ID4+ICsJaWYgKCFtZGV2LT5j
bGFzc19pZCkgewo+ID4+ICsJCXJldCA9IC1FSU5WQUw7Cj4gPj4gKwkJV0FSTigxLCAiY2xhc3Mg
aWQgbXVzdCBiZSBzcGVjaWZpZWQgZm9yIGRldmljZSAlc1xuIiwKPiA+PiArCQkgICAgIGRldl9u
YW1lKGRldikpOyAgCj4gPiBOaXQsIGRldl93YXJuKGRldiwgIm1kZXYgdmVuZG9yIGRyaXZlciBm
YWlsZWQgdG8gc3BlY2lmeSBkZXZpY2UgY2xhc3NcbiIpOyAgCj4gCj4gCj4gV2lsbCBmaXguCj4g
Cj4gCj4gPiAgCj4gPj4gKwkJZ290byBhZGRfZmFpbDsKPiA+PiArCX0KPiA+PiArCj4gPj4gICAJ
cmV0ID0gZGV2aWNlX2FkZCgmbWRldi0+ZGV2KTsKPiA+PiAgIAlpZiAocmV0KQo+ID4+ICAgCQln
b3RvIGFkZF9mYWlsOwo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2Ry
aXZlci5jIGIvZHJpdmVycy92ZmlvL21kZXYvbWRldl9kcml2ZXIuYwo+ID4+IGluZGV4IDBkMzIy
M2FlZTIwYi4uMzE5ZDg4NmZmYWY3IDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvdmZpby9tZGV2
L21kZXZfZHJpdmVyLmMKPiA+PiArKysgYi9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2RyaXZlci5j
Cj4gPj4gQEAgLTY5LDggKzY5LDMwIEBAIHN0YXRpYyBpbnQgbWRldl9yZW1vdmUoc3RydWN0IGRl
dmljZSAqZGV2KQo+ID4+ICAgCXJldHVybiAwOwo+ID4+ICAgfQo+ID4+ICAgCj4gPj4gK3N0YXRp
YyBpbnQgbWRldl9tYXRjaChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfZHJpdmVy
ICpkcnYpCj4gPj4gK3sKPiA+PiArCXVuc2lnbmVkIGludCBpOwo+ID4+ICsJc3RydWN0IG1kZXZf
ZGV2aWNlICptZGV2ID0gdG9fbWRldl9kZXZpY2UoZGV2KTsKPiA+PiArCXN0cnVjdCBtZGV2X2Ry
aXZlciAqbWRydiA9IHRvX21kZXZfZHJpdmVyKGRydik7Cj4gPj4gKwljb25zdCBzdHJ1Y3QgbWRl
dl9jbGFzc19pZCAqaWRzID0gbWRydi0+aWRfdGFibGU7Cj4gPj4gKyAgCj4gPiBOaXQsIGFzIHdl
IHN0YXJ0IHRvIGFsbG93IG5ldyBtZGV2IGJ1cyBkcml2ZXJzLCBtZGV2LWNvcmUgbWlnaHQgd2Fu
dCB0bwo+ID4gcHJvdGVjdCBpdHNlbGYgZnJvbSBhIE5VTEwgaWRfdGFibGUsIGJ5IGVpdGhlciBm
YWlsaW5nIHRoZQo+ID4gbWRldl9yZWdpc3Rlcl9kcml2ZXIoKSBvciBmYWlsaW5nIHRoZSBtYXRj
aCBoZXJlLiAgSSB0aGluayBzdWNoIGEKPiA+IGNvbmRpdGlvbiB3b3VsZCBzZWdmYXVsdCBhcyB3
cml0dGVuIGhlcmUsIGJ1dCBjbGVhcmx5IHdlIGRvbid0IGhhdmUKPiA+IHN1Y2ggZXh0ZXJuYWwg
ZHJpdmVycyB5ZXQuICBUaGFua3MsICAKPiAKPiAKPiBJJ20gbm90IHN1cmUgSSBnZXQgdGhlIHBv
aW50IGhlcmUuIE15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCBtZGV2LWNvcmUgCj4gd29uJ3QgdHJ5
IHRvIGJlIG1hdGNoZWQgaGVyZSBzaW5jZSBpdCB3YXMgbm90IGEgY29tcGxldGUgbWRldiBkZXZp
Y2UuCgpUaGUgcGFyZW50IGRyaXZlciBmYWlsaW5nIHRvIHNldCBhIHR5cGUgdnMgdGhlIHBhcmVu
dCBkcml2ZXIgZmFpbGluZyB0bwpyZWdpc3RlciB3aXRoIGEgc3RydWN0IG1kZXZfZHJpdmVyIHdo
ZXJlIGlkX3RhYmxlIGlzIG5vdCBudWxsIGFyZQpkaWZmZXJlbnQgaXNzdWVzLiAgSSBhZ3JlZSB0
aGF0IGlmIGEgdmVuZG9yIGRyaXZlciB3YXMgbm90IHVwZGF0ZWQgZm9yCnRoaXMgc2VyaWVzIHRo
YXQgdGhleSdkIG5ldmVyIHN1Y2Nlc3NmdWxseSBjcmVhdGUgYSBkZXZpY2UgYmVjYXVzZSB0aGUK
bWRldi1jb3JlIHdvdWxkIHJlamVjdCBpdCBmb3Igbm90IHNldHRpbmcgYSBjbGFzcywgYnV0IG1k
ZXZfbWF0Y2goKSBpcwpjYWxsZWQgZm9yIGRldmljZXMgdGhhdCBtaWdodCBiZSBjcmVhdGVkIGJ5
IG90aGVyIHZlbmRvciBkcml2ZXJzLCBzbwpsb2FkaW5nIGEgcGFyZW50IGRyaXZlciB3aXRoIGEg
bnVsbCBpZF90YWJsZSBwb3RlbnRpYWxseSBicmVha3MKbWF0Y2hpbmcgZm9yIGV2ZXJ5b25lLiAg
VGhhbmtzLAoKQWxleAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
