Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B292610033B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 12:01:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E62B6E45D;
	Mon, 18 Nov 2019 11:01:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44DE56E457
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 11:01:23 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-wF7T_dpMNe6BGnaej4Vl5w-1; Mon, 18 Nov 2019 06:01:17 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 291E9107BABB;
 Mon, 18 Nov 2019 11:01:13 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-65.pek2.redhat.com [10.72.12.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5A86D60BE1;
 Mon, 18 Nov 2019 11:00:42 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com, gregkh@linuxfoundation.org, jgg@mellanox.com
Date: Mon, 18 Nov 2019 18:59:19 +0800
Message-Id: <20191118105923.7991-3-jasowang@redhat.com>
In-Reply-To: <20191118105923.7991-1-jasowang@redhat.com>
References: <20191118105923.7991-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: wF7T_dpMNe6BGnaej4Vl5w-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1574074882;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6DoQm74RSCpeQhI+YxCpZNVLKAnHbq31aGrQkfVfEos=;
 b=APYkbWxQvAuSWy6MOlutHq/SrTIn8J15r4FTii23BoU+NBSxyTUUSTvpE3JUyrwfmGpsrX
 QCLK06qaKTe/sjW/tBORWN3w1Z/D5YtJtsi6JjRIAmGL+dF6Uk1Az9OYALVLmI6gxbWDjY
 2TOwuhv8Miw1vBIgQ5dyk0p8vapUTCA=
Subject: [Intel-gfx] [PATCH V13 2/6] mdev: split out VFIO bus specific
 parent ops
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
Cc: rdunlap@infradead.org, jakub.kicinski@netronome.com,
 christophe.de.dinechin@gmail.com, sebott@linux.ibm.com, airlied@linux.ie,
 Jason Wang <jasowang@redhat.com>, heiko.carstens@de.ibm.com,
 rob.miller@broadcom.com, hch@infradead.org, lulu@redhat.com,
 eperezma@redhat.com, pasic@linux.ibm.com, borntraeger@de.ibm.com,
 haotian.wang@sifive.com, jeffrey.t.kirsher@intel.com, farman@linux.ibm.com,
 parav@mellanox.com, gor@linux.ibm.com, cunming.liang@intel.com,
 xiao.w.wang@intel.com, freude@linux.ibm.com, stefanha@redhat.com,
 zhihong.wang@intel.com, akrowiak@linux.ibm.com, jiri@mellanox.com,
 netdev@vger.kernel.org, cohuck@redhat.com, oberpar@linux.ibm.com,
 maxime.coquelin@redhat.com, aadam@redhat.com, lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG9ubHkgdGhpbmcgbGVmdCBmb3IgZ2VuZXJhbGl6aW5nIG1kZXYgaXMgdGhlIFZGSU8gc3Bl
Y2lmaWMgcGFyZW50Cm9wcy4gVGhpcyBpcyBiYXNpY2FsbHkgdGhlIG9wZW4vcmVsZWFzZS9yZWFk
L3dyaXRlL2lvY3RsL21tYXAuCgpUbyBzdXBwb3J0IHRoaXMsIG1kZXYgY29yZSBpcyBleHRlbmQg
dG8gc3VwcG9ydCBhIHNwZWNpZmljIHNpemUKb2Ygc3RydWN0dXJlIGR1cmluZyBjcmVhdGUsIHRo
aXMgd2lsbCBhbGxvdyB0byBjb21wb3NlIG1kZXYgc3RydWN0dXJlCmludG8gbWRldiB2ZmlvIHN0
cnVjdHVyZSBhbmQgcGxhY2UgdGhlIFZGSU8gc3BlY2lmaWMgY2FsbGJhY2tzIHRoZXJlCmxpa2U6
CgpzdHJ1Y3QgbWRldl92ZmlvIHsKICAgICAgIHN0cnVjdCBtZGV2X2RldmljZSBtZGV2OwogICAg
ICAgY29uc3Qgc3RydWN0IG1kZXZfdmZpb19vcHMgKm9wczsKfTsKCkhlbHBlcnMgZm9yIHNldHRp
bmcgYW5kIGdldHRpbmcgdGhlIG9wcyB3ZXJlIGludHJvZHVjZWQgdG8gc3VwcG9ydAptZGV2IHZm
aW8gZGV2aWNlIHRvIHNldCBvcHMgYW5kIHZmaW8gbWRldiBkcml2ZXIgdG8gdXNlIHRoZSBvcHMu
CgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgotLS0KIC4u
Li9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQtZGV2aWNlLnJzdCAgICAgICB8IDM0ICsrKysrKysr
Ky0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMgICAgICAgICAgICAgIHwg
MTYgKysrKy0tLQogZHJpdmVycy9zMzkwL2Npby92ZmlvX2Njd19vcHMuYyAgICAgICAgICAgICAg
IHwgMTcgKysrKystLS0KIGRyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYyAgICAgICAg
ICAgICB8IDEzICsrKystLQogZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMgICAgICAgICAg
ICAgICAgIHwgIDUgKystCiBkcml2ZXJzL3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaCAgICAgICAg
ICAgICAgfCAgNSArKysKIGRyaXZlcnMvdmZpby9tZGV2L21kZXZfdmZpby5jICAgICAgICAgICAg
ICAgICB8IDMwICsrKysrKysrKysrKy0KIGRyaXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jICAg
ICAgICAgICAgICAgICB8IDM4ICsrKysrKysrLS0tLS0tLS0KIGluY2x1ZGUvbGludXgvbWRldi5o
ICAgICAgICAgICAgICAgICAgICAgICAgICB8IDM3IC0tLS0tLS0tLS0tLS0tLS0KIGluY2x1ZGUv
bGludXgvbWRldl92ZmlvLmggICAgICAgICAgICAgICAgICAgICB8IDQzICsrKysrKysrKysrKysr
KysrKysKIHNhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jICAgICAgICAgICAgICAgICAgICB8IDE4
ICsrKysrLS0tCiBzYW1wbGVzL3ZmaW8tbWRldi9tZHB5LmMgICAgICAgICAgICAgICAgICAgICAg
fCAxOSArKysrKy0tLQogc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jICAgICAgICAgICAgICAgICAg
ICAgIHwgMTYgKysrKy0tLQogMTMgZmlsZXMgY2hhbmdlZCwgMTg5IGluc2VydGlvbnMoKyksIDEw
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvdmZp
by1tZWRpYXRlZC1kZXZpY2UucnN0IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3ZmaW8tbWVk
aWF0ZWQtZGV2aWNlLnJzdAppbmRleCAxODg3ZDI3YTU2NWUuLjkwNDU1ODRlNGVhMyAxMDA2NDQK
LS0tIGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQtZGV2aWNlLnJzdAor
KysgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvdmZpby1tZWRpYXRlZC1kZXZpY2UucnN0CkBA
IC0xNTMsMjYgKzE1MywzNiBAQCBjYWxsYmFja3MgcGVyIG1kZXYgcGFyZW50IGRldmljZSwgcGVy
IG1kZXYgdHlwZSwgb3IgYW55IG90aGVyIGNhdGVnb3JpemF0aW9uLgogVmVuZG9yIGRyaXZlcnMg
YXJlIGV4cGVjdGVkIHRvIGJlIGZ1bGx5IGFzeW5jaHJvbm91cyBpbiB0aGlzIHJlc3BlY3Qgb3IK
IHByb3ZpZGUgdGhlaXIgb3duIGludGVybmFsIHJlc291cmNlIHByb3RlY3Rpb24uKQogCi1UaGUg
Y2FsbGJhY2tzIGluIHRoZSBtZGV2X3BhcmVudF9vcHMgc3RydWN0dXJlIGFyZSBhcyBmb2xsb3dz
OgorQSBkcml2ZXIgc2hvdWxkIHVzZSB0aGUgbWRldl9wYXJlbnRfb3BzIHN0cnVjdHVyZSBpbiB0
aGUgZnVuY3Rpb24gY2FsbAordG8gcmVnaXN0ZXIgaXRzZWxmIHdpdGggdGhlIG1kZXYgY29yZSBk
cml2ZXI6OgogCi0qIG9wZW46IG9wZW4gY2FsbGJhY2sgb2YgbWVkaWF0ZWQgZGV2aWNlCi0qIGNs
b3NlOiBjbG9zZSBjYWxsYmFjayBvZiBtZWRpYXRlZCBkZXZpY2UKLSogaW9jdGw6IGlvY3RsIGNh
bGxiYWNrIG9mIG1lZGlhdGVkIGRldmljZQorCWV4dGVybiBpbnQgbWRldl92ZmlvX3JlZ2lzdGVy
X2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCisgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzICpvcHMpOworCitI
b3dldmVyLCB0aGUgbWRldl9wYXJlbnRfb3BzIHN0cnVjdHVyZSBpcyBub3QgcmVxdWlyZWQgaW4g
dGhlIGZ1bmN0aW9uIGNhbGwKK3RoYXQgYSBkcml2ZXIgc2hvdWxkIHVzZSB0byB1bnJlZ2lzdGVy
IGl0c2VsZiB3aXRoIHRoZSBtZGV2IGNvcmUgZHJpdmVyOjoKKworCWV4dGVybiB2b2lkIG1kZXZf
dmZpb191bnJlZ2lzdGVyX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYpOworCitUaGUgVkZJTyBz
cGVjaWZpYyBjYWxsYmFja3MgaXMgYWJzdHJhY3RlZCBpbiBtZGV2X3ZmaW9fb3BzIHN0cnVjdHVy
ZQorYXJlIGFzIGZvbGxvd3M6CisKKyogb3Blbjogb3BlbiBjYWxsYmFjayBvZiBWRklPIG1lZGlh
dGVkIGRldmljZQorKiBjbG9zZTogY2xvc2UgY2FsbGJhY2sgb2YgVkZJTyBtZWRpYXRlZCBkZXZp
Y2UKKyogaW9jdGw6IGlvY3RsIGNhbGxiYWNrIG9mIFZGSU8gbWVkaWF0ZWQgZGV2aWNlCiAqIHJl
YWQgOiByZWFkIGVtdWxhdGlvbiBjYWxsYmFjawogKiB3cml0ZTogd3JpdGUgZW11bGF0aW9uIGNh
bGxiYWNrCiAqIG1tYXA6IG1tYXAgZW11bGF0aW9uIGNhbGxiYWNrCiAKLUEgZHJpdmVyIHNob3Vs
ZCB1c2UgdGhlIG1kZXZfcGFyZW50X29wcyBzdHJ1Y3R1cmUgYW5kIGJ1cyB0eXBlIGluIHRoZQot
ZnVuY3Rpb24gY2FsbCB0byByZWdpc3RlciBpdHNlbGYgd2l0aCB0aGUgbWRldiBjb3JlIGRyaXZl
cjo6CitEdXJpbmcgdGhlIGNyZWF0aW9uIG9mIFZGSU8gbWVkaWF0ZWQgZGV2aWNlLCBtZGV2X3Zm
aW9fb3BzIG5lZWQgdG8gYmUKK3NwZWNpZmllZDo6CiAKLQlleHRlcm4gaW50ICBtZGV2X3JlZ2lz
dGVyX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCi0JICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgY29uc3Qgc3RydWN0IG1kZXZfcGFyZW50X29wcyAqb3BzLAotICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgYnVzX3R5cGUgKmJ1cyk7CisJIHZv
aWQgbWRldl92ZmlvX3NldF9vcHMoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LAorICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgbWRldl92ZmlvX29wcyAqb3BzKTsK
IAotSG93ZXZlciwgdGhlIG1kZXZfcGFyZW50X29wcyBzdHJ1Y3R1cmUgaXMgbm90IHJlcXVpcmVk
IGluIHRoZSBmdW5jdGlvbiBjYWxsCi10aGF0IGEgZHJpdmVyIHNob3VsZCB1c2UgdG8gdW5yZWdp
c3RlciBpdHNlbGYgd2l0aCB0aGUgbWRldiBjb3JlIGRyaXZlcjo6CitUaG9zZSBjYWxsYmFja3Mg
Y291bGQgYmUgZmV0Y2hlZCBieSBkcml2ZXJzIHRocm91Z2g6OgogCi0JZXh0ZXJuIHZvaWQgbWRl
dl91bnJlZ2lzdGVyX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYpOworCSBjb25zdCBzdHJ1Y3Qg
bWRldl92ZmlvX29wcyAqbWRldl92ZmlvX2dldF9vcHMoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2
KTsKIAogCiBNZWRpYXRlZCBEZXZpY2UgTWFuYWdlbWVudCBJbnRlcmZhY2UgVGhyb3VnaCBzeXNm
cwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndnQva3ZtZ3QuYwppbmRleCBhZmRiM2RlNWNlMmYuLmU3MmMzNjE3NDAz
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMKQEAgLTY0Myw2ICs2NDMsOCBAQCBzdGF0aWMg
dm9pZCBrdm1ndF9wdXRfdmZpb19kZXZpY2Uodm9pZCAqdmdwdSkKIAl2ZmlvX2RldmljZV9wdXQo
KChzdHJ1Y3QgaW50ZWxfdmdwdSAqKXZncHUpLT52ZGV2LnZmaW9fZGV2aWNlKTsKIH0KIAorc3Rh
dGljIGNvbnN0IHN0cnVjdCBtZGV2X3ZmaW9fb3BzIGludGVsX21kZXZfdmZpb19vcHM7CisKIHN0
YXRpYyBpbnQgaW50ZWxfdmdwdV9jcmVhdGUoc3RydWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBt
ZGV2X2RldmljZSAqbWRldikKIHsKIAlzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSA9IE5VTEw7CkBA
IC02NzgsNiArNjgwLDcgQEAgc3RhdGljIGludCBpbnRlbF92Z3B1X2NyZWF0ZShzdHJ1Y3Qga29i
amVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KQogCQkgICAgIGRldl9uYW1lKG1k
ZXZfZGV2KG1kZXYpKSk7CiAJcmV0ID0gMDsKIAorCW1kZXZfdmZpb19zZXRfb3BzKG1kZXYsICZp
bnRlbF9tZGV2X3ZmaW9fb3BzKTsKIG91dDoKIAlyZXR1cm4gcmV0OwogfQpAQCAtMTU4MSwyMCAr
MTU4NCwyMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCAqaW50ZWxfdmdw
dV9ncm91cHNbXSA9IHsKIAlOVUxMLAogfTsKIAotc3RhdGljIHN0cnVjdCBtZGV2X3BhcmVudF9v
cHMgaW50ZWxfdmdwdV9vcHMgPSB7Ci0JLm1kZXZfYXR0cl9ncm91cHMgICAgICAgPSBpbnRlbF92
Z3B1X2dyb3VwcywKLQkuY3JlYXRlCQkJPSBpbnRlbF92Z3B1X2NyZWF0ZSwKLQkucmVtb3ZlCQkJ
PSBpbnRlbF92Z3B1X3JlbW92ZSwKLQorc3RhdGljIGNvbnN0IHN0cnVjdCBtZGV2X3ZmaW9fb3Bz
IGludGVsX21kZXZfdmZpb19vcHMgPSB7CiAJLm9wZW4JCQk9IGludGVsX3ZncHVfb3BlbiwKIAku
cmVsZWFzZQkJPSBpbnRlbF92Z3B1X3JlbGVhc2UsCi0KIAkucmVhZAkJCT0gaW50ZWxfdmdwdV9y
ZWFkLAogCS53cml0ZQkJCT0gaW50ZWxfdmdwdV93cml0ZSwKIAkubW1hcAkJCT0gaW50ZWxfdmdw
dV9tbWFwLAogCS5pb2N0bAkJCT0gaW50ZWxfdmdwdV9pb2N0bCwKIH07CiAKK3N0YXRpYyBzdHJ1
Y3QgbWRldl9wYXJlbnRfb3BzIGludGVsX3ZncHVfb3BzID0geworCS5tZGV2X2F0dHJfZ3JvdXBz
ICAgICAgID0gaW50ZWxfdmdwdV9ncm91cHMsCisJLmNyZWF0ZQkJCT0gaW50ZWxfdmdwdV9jcmVh
dGUsCisJLnJlbW92ZQkJCT0gaW50ZWxfdmdwdV9yZW1vdmUsCit9OworCiBzdGF0aWMgaW50IGt2
bWd0X2hvc3RfaW5pdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHZvaWQgKmd2dCwgY29uc3Qgdm9pZCAq
b3BzKQogewogCXN0cnVjdCBhdHRyaWJ1dGUgKiprdm1fdHlwZV9hdHRyczsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvczM5MC9jaW8vdmZpb19jY3dfb3BzLmMgYi9kcml2ZXJzL3MzOTAvY2lvL3ZmaW9f
Y2N3X29wcy5jCmluZGV4IDc5MWI4YjBlYjAyNy4uODExZjBhM2IxOTAzIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3MzOTAvY2lvL3ZmaW9fY2N3X29wcy5jCisrKyBiL2RyaXZlcnMvczM5MC9jaW8vdmZp
b19jY3dfb3BzLmMKQEAgLTExMCw2ICsxMTAsOCBAQCBzdGF0aWMgc3RydWN0IGF0dHJpYnV0ZV9n
cm91cCAqbWRldl90eXBlX2dyb3Vwc1tdID0gewogCU5VTEwsCiB9OwogCitzdGF0aWMgY29uc3Qg
c3RydWN0IG1kZXZfdmZpb19vcHMgdmZpb19jY3dfbWRldl92ZmlvX29wczsKKwogc3RhdGljIGlu
dCB2ZmlvX2Njd19tZGV2X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZf
ZGV2aWNlICptZGV2KQogewogCXN0cnVjdCB2ZmlvX2Njd19wcml2YXRlICpwcml2YXRlID0KQEAg
LTEyOSw2ICsxMzEsOCBAQCBzdGF0aWMgaW50IHZmaW9fY2N3X21kZXZfY3JlYXRlKHN0cnVjdCBr
b2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCiAJCQkgICBwcml2YXRlLT5z
Y2gtPnNjaGlkLnNzaWQsCiAJCQkgICBwcml2YXRlLT5zY2gtPnNjaGlkLnNjaF9ubyk7CiAKKwlt
ZGV2X3ZmaW9fc2V0X29wcyhtZGV2LCAmdmZpb19jY3dfbWRldl92ZmlvX29wcyk7CisKIAlyZXR1
cm4gMDsKIH0KIApAQCAtNTc0LDE2ICs1NzgsMTkgQEAgc3RhdGljIHNzaXplX3QgdmZpb19jY3df
bWRldl9pb2N0bChzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsCiAJfQogfQogCi1zdGF0aWMgY29u
c3Qgc3RydWN0IG1kZXZfcGFyZW50X29wcyB2ZmlvX2Njd19tZGV2X29wcyA9IHsKLQkub3duZXIJ
CQk9IFRISVNfTU9EVUxFLAotCS5zdXBwb3J0ZWRfdHlwZV9ncm91cHMgID0gbWRldl90eXBlX2dy
b3VwcywKLQkuY3JlYXRlCQkJPSB2ZmlvX2Njd19tZGV2X2NyZWF0ZSwKLQkucmVtb3ZlCQkJPSB2
ZmlvX2Njd19tZGV2X3JlbW92ZSwKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl92ZmlvX29wcyB2
ZmlvX2Njd19tZGV2X3ZmaW9fb3BzID0gewogCS5vcGVuCQkJPSB2ZmlvX2Njd19tZGV2X29wZW4s
CiAJLnJlbGVhc2UJCT0gdmZpb19jY3dfbWRldl9yZWxlYXNlLAogCS5yZWFkCQkJPSB2ZmlvX2Nj
d19tZGV2X3JlYWQsCiAJLndyaXRlCQkJPSB2ZmlvX2Njd19tZGV2X3dyaXRlLAogCS5pb2N0bAkJ
CT0gdmZpb19jY3dfbWRldl9pb2N0bCwKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBtZGV2X3Bh
cmVudF9vcHMgdmZpb19jY3dfbWRldl9vcHMgPSB7CisJLm93bmVyCQkJPSBUSElTX01PRFVMRSwK
Kwkuc3VwcG9ydGVkX3R5cGVfZ3JvdXBzICA9IG1kZXZfdHlwZV9ncm91cHMsCisJLmNyZWF0ZQkJ
CT0gdmZpb19jY3dfbWRldl9jcmVhdGUsCisJLnJlbW92ZQkJCT0gdmZpb19jY3dfbWRldl9yZW1v
dmUsCiB9OwogCiBpbnQgdmZpb19jY3dfbWRldl9yZWcoc3RydWN0IHN1YmNoYW5uZWwgKnNjaCkK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYyBiL2RyaXZlcnMv
czM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYwppbmRleCA3ODA0OGU2NzAzNzQuLjA2NDljNjgyODdk
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5jCisrKyBiL2Ry
aXZlcnMvczM5MC9jcnlwdG8vdmZpb19hcF9vcHMuYwpAQCAtMzIxLDYgKzMyMSw4IEBAIHN0YXRp
YyB2b2lkIHZmaW9fYXBfbWF0cml4X2luaXQoc3RydWN0IGFwX2NvbmZpZ19pbmZvICppbmZvLAog
CW1hdHJpeC0+YWRtX21heCA9IGluZm8tPmFweGEgPyBpbmZvLT5OZCA6IDE1OwogfQogCitzdGF0
aWMgY29uc3Qgc3RydWN0IG1kZXZfdmZpb19vcHMgdmZpb19hcF9tYXRyaXhfbWRldl9vcHM7CisK
IHN0YXRpYyBpbnQgdmZpb19hcF9tZGV2X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3Ry
dWN0IG1kZXZfZGV2aWNlICptZGV2KQogewogCXN0cnVjdCBhcF9tYXRyaXhfbWRldiAqbWF0cml4
X21kZXY7CkBAIC0zNDMsNiArMzQ1LDggQEAgc3RhdGljIGludCB2ZmlvX2FwX21kZXZfY3JlYXRl
KHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCiAJbGlzdF9h
ZGQoJm1hdHJpeF9tZGV2LT5ub2RlLCAmbWF0cml4X2Rldi0+bWRldl9saXN0KTsKIAltdXRleF91
bmxvY2soJm1hdHJpeF9kZXYtPmxvY2spOwogCisJbWRldl92ZmlvX3NldF9vcHMobWRldiwgJnZm
aW9fYXBfbWF0cml4X21kZXZfb3BzKTsKKwogCXJldHVybiAwOwogfQogCkBAIC0xMjgwLDE1ICsx
Mjg0LDE4IEBAIHN0YXRpYyBzc2l6ZV90IHZmaW9fYXBfbWRldl9pb2N0bChzdHJ1Y3QgbWRldl9k
ZXZpY2UgKm1kZXYsCiAJcmV0dXJuIHJldDsKIH0KIAorc3RhdGljIGNvbnN0IHN0cnVjdCBtZGV2
X3ZmaW9fb3BzIHZmaW9fYXBfbWF0cml4X21kZXZfb3BzID0geworCS5vcGVuCQkJPSB2ZmlvX2Fw
X21kZXZfb3BlbiwKKwkucmVsZWFzZQkJPSB2ZmlvX2FwX21kZXZfcmVsZWFzZSwKKwkuaW9jdGwJ
CQk9IHZmaW9fYXBfbWRldl9pb2N0bCwKK30KKwogc3RhdGljIGNvbnN0IHN0cnVjdCBtZGV2X3Bh
cmVudF9vcHMgdmZpb19hcF9tYXRyaXhfb3BzID0gewogCS5vd25lcgkJCT0gVEhJU19NT0RVTEUs
CiAJLnN1cHBvcnRlZF90eXBlX2dyb3Vwcwk9IHZmaW9fYXBfbWRldl90eXBlX2dyb3VwcywKIAku
bWRldl9hdHRyX2dyb3Vwcwk9IHZmaW9fYXBfbWRldl9hdHRyX2dyb3VwcywKIAkuY3JlYXRlCQkJ
PSB2ZmlvX2FwX21kZXZfY3JlYXRlLAogCS5yZW1vdmUJCQk9IHZmaW9fYXBfbWRldl9yZW1vdmUs
Ci0JLm9wZW4JCQk9IHZmaW9fYXBfbWRldl9vcGVuLAotCS5yZWxlYXNlCQk9IHZmaW9fYXBfbWRl
dl9yZWxlYXNlLAotCS5pb2N0bAkJCT0gdmZpb19hcF9tZGV2X2lvY3RsLAogfTsKIAogaW50IHZm
aW9fYXBfbWRldl9yZWdpc3Rlcih2b2lkKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21kZXYv
bWRldl9jb3JlLmMgYi9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYwppbmRleCBlMTI3MmE0
MGM1MjEuLmM2YmM2N2JmNjNmYSAxMDA2NDQKLS0tIGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9j
b3JlLmMKKysrIGIvZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMKQEAgLTE3OSw3ICsxNzks
NyBAQCBzdGF0aWMgc3RydWN0IGNsYXNzX2NvbXBhdCAqbWRldl9hbGxvY19jbGFzc19jb21wYXQo
c3RydWN0IGJ1c190eXBlICpidXMpCiAgKiBSZXR1cm5zIGEgbmVnYXRpdmUgdmFsdWUgb24gZXJy
b3IsIG90aGVyd2lzZSAwLgogICovCiBpbnQgbWRldl9yZWdpc3Rlcl9kZXZpY2Uoc3RydWN0IGRl
dmljZSAqZGV2LCBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzICpvcHMsCi0JCQkgc3RydWN0
IGJ1c190eXBlICpidXMpCisJCQkgc3RydWN0IGJ1c190eXBlICpidXMsIHNpemVfdCBkZXZfc2l6
ZSkKIHsKIAlpbnQgcmV0OwogCXN0cnVjdCBtZGV2X3BhcmVudCAqcGFyZW50OwpAQCAtMjE3LDYg
KzIxNyw3IEBAIGludCBtZGV2X3JlZ2lzdGVyX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGNv
bnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgKm9wcywKIAlwYXJlbnQtPmRldiA9IGRldjsKIAlw
YXJlbnQtPm9wcyA9IG9wczsKIAlwYXJlbnQtPmJ1cyA9IGJ1czsKKwlwYXJlbnQtPmRldl9zaXpl
ID0gZGV2X3NpemU7CiAKIAltdXRleF9sb2NrKCZjb21wYXRfbGlzdF9sb2NrKTsKIAljbGFzc19j
b21wYXQgPSBtZGV2X2FsbG9jX2NsYXNzX2NvbXBhdChidXMpOwpAQCAtMzM5LDcgKzM0MCw3IEBA
IGludCBtZGV2X2RldmljZV9jcmVhdGUoc3RydWN0IGtvYmplY3QgKmtvYmosCiAJCX0KIAl9CiAK
LQltZGV2ID0ga3phbGxvYyhzaXplb2YoKm1kZXYpLCBHRlBfS0VSTkVMKTsKKwltZGV2ID0ga3ph
bGxvYyhwYXJlbnQtPmRldl9zaXplLCBHRlBfS0VSTkVMKTsKIAlpZiAoIW1kZXYpIHsKIAkJbXV0
ZXhfdW5sb2NrKCZtZGV2X2xpc3RfbG9jayk7CiAJCXJldCA9IC1FTk9NRU07CmRpZmYgLS1naXQg
YS9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaCBiL2RyaXZlcnMvdmZpby9tZGV2L21k
ZXZfcHJpdmF0ZS5oCmluZGV4IDI5OGQ3YTBmNDkzYS4uMDEyYWI4MDcxOWU5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaAorKysgYi9kcml2ZXJzL3ZmaW8vbWRl
di9tZGV2X3ByaXZhdGUuaApAQCAtMjAsNiArMjAsNyBAQCBzdHJ1Y3QgbWRldl9wYXJlbnQgewog
CXN0cnVjdCBsaXN0X2hlYWQgdHlwZV9saXN0OwogCS8qIFN5bmNocm9uaXplIGRldmljZSBjcmVh
dGlvbi9yZW1vdmFsIHdpdGggcGFyZW50IHVucmVnaXN0cmF0aW9uICovCiAJc3RydWN0IHJ3X3Nl
bWFwaG9yZSB1bnJlZ19zZW07CisJc2l6ZV90IGRldl9zaXplOwogfTsKIAogc3RydWN0IG1kZXZf
ZGV2aWNlIHsKQEAgLTY2LDQgKzY3LDggQEAgaW50ICBtZGV2X2RldmljZV9jcmVhdGUoc3RydWN0
IGtvYmplY3QgKmtvYmosCiAJCQlzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGd1aWRfdCAqdXVp
ZCk7CiBpbnQgIG1kZXZfZGV2aWNlX3JlbW92ZShzdHJ1Y3QgZGV2aWNlICpkZXYpOwogCitpbnQg
bWRldl9yZWdpc3Rlcl9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBzdHJ1Y3QgbWRl
dl9wYXJlbnRfb3BzICpvcHMsCisJCQkgc3RydWN0IGJ1c190eXBlICpidXMsIHNpemVfdCBkZXZf
c2l6ZSk7Cit2b2lkIG1kZXZfdW5yZWdpc3Rlcl9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2KTsK
KwogI2VuZGlmIC8qIE1ERVZfUFJJVkFURV9IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8v
bWRldi9tZGV2X3ZmaW8uYyBiL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfdmZpby5jCmluZGV4IGY5
ZDExOTFiOTk4Mi4uNDRlMTE2MDc0Zjg4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZmaW8vbWRldi9t
ZGV2X3ZmaW8uYworKysgYi9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X3ZmaW8uYwpAQCAtNCw2ICs0
LDggQEAKICNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KICNpbmNsdWRlIDxsaW51eC9tZGV2X3Zm
aW8uaD4KIAorI2luY2x1ZGUgIm1kZXZfcHJpdmF0ZS5oIgorCiAjZGVmaW5lIERSSVZFUl9WRVJT
SU9OCQkiMC4xIgogI2RlZmluZSBEUklWRVJfQVVUSE9SCQkiSmFzb24gV2FuZyIKICNkZWZpbmUg
RFJJVkVSX0RFU0MJCSJNZWRpYXRlZCBWRklPIGJ1cyIKQEAgLTE1LDYgKzE3LDMxIEBAIHN0cnVj
dCBidXNfdHlwZSBtZGV2X3ZmaW9fYnVzX3R5cGUgPSB7CiB9OwogRVhQT1JUX1NZTUJPTChtZGV2
X3ZmaW9fYnVzX3R5cGUpOwogCisjZGVmaW5lIHRvX3ZmaW9fbWRldl9kZXZpY2UobWRldikgY29u
dGFpbmVyX29mKG1kZXYsIFwKKwkJCQkJICAgICAgIHN0cnVjdCBtZGV2X3ZmaW9fZGV2aWNlLCBt
ZGV2KQorCitzdHJ1Y3QgbWRldl92ZmlvX2RldmljZSB7CisJc3RydWN0IG1kZXZfZGV2aWNlIG1k
ZXY7CisJY29uc3Qgc3RydWN0IG1kZXZfdmZpb19vcHMgKm9wczsKK307CisKK3ZvaWQgbWRldl92
ZmlvX3NldF9vcHMoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LAorCQkgICAgICAgY29uc3Qgc3Ry
dWN0IG1kZXZfdmZpb19vcHMgKm9wcykKK3sKKwlzdHJ1Y3QgbWRldl92ZmlvX2RldmljZSAqbWRl
dl92ZmlvID0gdG9fdmZpb19tZGV2X2RldmljZShtZGV2KTsKKworCW1kZXZfdmZpby0+b3BzID0g
b3BzOworfQorRVhQT1JUX1NZTUJPTChtZGV2X3ZmaW9fc2V0X29wcyk7CisKK2NvbnN0IHN0cnVj
dCBtZGV2X3ZmaW9fb3BzICptZGV2X3ZmaW9fZ2V0X29wcyhzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYpCit7CisJc3RydWN0IG1kZXZfdmZpb19kZXZpY2UgKm1kZXZfdmZpbyA9IHRvX3ZmaW9fbWRl
dl9kZXZpY2UobWRldik7CisKKwlyZXR1cm4gbWRldl92ZmlvLT5vcHM7Cit9CitFWFBPUlRfU1lN
Qk9MKG1kZXZfdmZpb19nZXRfb3BzKTsKKwogc3RhdGljIGludCBfX2luaXQgbWRldl9pbml0KHZv
aWQpCiB7CiAJcmV0dXJuIG1kZXZfcmVnaXN0ZXJfYnVzKCZtZGV2X3ZmaW9fYnVzX3R5cGUpOwpA
QCAtMjgsNyArNTUsOCBAQCBzdGF0aWMgdm9pZCBfX2V4aXQgbWRldl9leGl0KHZvaWQpCiBpbnQg
bWRldl92ZmlvX3JlZ2lzdGVyX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYsCiAJCQkgICAgICBj
b25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzICpvcHMpCiB7Ci0JcmV0dXJuIG1kZXZfcmVnaXN0
ZXJfZGV2aWNlKGRldiwgb3BzLCAmbWRldl92ZmlvX2J1c190eXBlKTsKKwlyZXR1cm4gbWRldl9y
ZWdpc3Rlcl9kZXZpY2UoZGV2LCBvcHMsICZtZGV2X3ZmaW9fYnVzX3R5cGUsCisJCQkJICAgIHNp
emVvZihzdHJ1Y3QgbWRldl92ZmlvX2RldmljZSkpOwogfQogRVhQT1JUX1NZTUJPTChtZGV2X3Zm
aW9fcmVnaXN0ZXJfZGV2aWNlKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21kZXYvdmZp
b19tZGV2LmMgYi9kcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYwppbmRleCAxNmU5ZWJlMzBk
NGEuLjhiNDJhNGIzZjE2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy92ZmlvL21kZXYvdmZpb19tZGV2
LmMKKysrIGIvZHJpdmVycy92ZmlvL21kZXYvdmZpb19tZGV2LmMKQEAgLTI0LDE2ICsyNCwxNiBA
QAogc3RhdGljIGludCB2ZmlvX21kZXZfb3Blbih2b2lkICpkZXZpY2VfZGF0YSkKIHsKIAlzdHJ1
Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSBkZXZpY2VfZGF0YTsKLQlzdHJ1Y3QgbWRldl9wYXJlbnQg
KnBhcmVudCA9IG1kZXYtPnBhcmVudDsKKwljb25zdCBzdHJ1Y3QgbWRldl92ZmlvX29wcyAqb3Bz
ID0gbWRldl92ZmlvX2dldF9vcHMobWRldik7CiAJaW50IHJldDsKIAotCWlmICh1bmxpa2VseSgh
cGFyZW50LT5vcHMtPm9wZW4pKQorCWlmICh1bmxpa2VseSghb3BzLT5vcGVuKSkKIAkJcmV0dXJu
IC1FSU5WQUw7CiAKIAlpZiAoIXRyeV9tb2R1bGVfZ2V0KFRISVNfTU9EVUxFKSkKIAkJcmV0dXJu
IC1FTk9ERVY7CiAKLQlyZXQgPSBwYXJlbnQtPm9wcy0+b3BlbihtZGV2KTsKKwlyZXQgPSBvcHMt
Pm9wZW4obWRldik7CiAJaWYgKHJldCkKIAkJbW9kdWxlX3B1dChUSElTX01PRFVMRSk7CiAKQEAg
LTQzLDEwICs0MywxMCBAQCBzdGF0aWMgaW50IHZmaW9fbWRldl9vcGVuKHZvaWQgKmRldmljZV9k
YXRhKQogc3RhdGljIHZvaWQgdmZpb19tZGV2X3JlbGVhc2Uodm9pZCAqZGV2aWNlX2RhdGEpCiB7
CiAJc3RydWN0IG1kZXZfZGV2aWNlICptZGV2ID0gZGV2aWNlX2RhdGE7Ci0Jc3RydWN0IG1kZXZf
cGFyZW50ICpwYXJlbnQgPSBtZGV2LT5wYXJlbnQ7CisJY29uc3Qgc3RydWN0IG1kZXZfdmZpb19v
cHMgKm9wcyA9IG1kZXZfdmZpb19nZXRfb3BzKG1kZXYpOwogCi0JaWYgKGxpa2VseShwYXJlbnQt
Pm9wcy0+cmVsZWFzZSkpCi0JCXBhcmVudC0+b3BzLT5yZWxlYXNlKG1kZXYpOworCWlmIChsaWtl
bHkob3BzLT5yZWxlYXNlKSkKKwkJb3BzLT5yZWxlYXNlKG1kZXYpOwogCiAJbW9kdWxlX3B1dChU
SElTX01PRFVMRSk7CiB9CkBAIC01NSw0NyArNTUsNDcgQEAgc3RhdGljIGxvbmcgdmZpb19tZGV2
X3VubG9ja2VkX2lvY3RsKHZvaWQgKmRldmljZV9kYXRhLAogCQkJCSAgICAgdW5zaWduZWQgaW50
IGNtZCwgdW5zaWduZWQgbG9uZyBhcmcpCiB7CiAJc3RydWN0IG1kZXZfZGV2aWNlICptZGV2ID0g
ZGV2aWNlX2RhdGE7Ci0Jc3RydWN0IG1kZXZfcGFyZW50ICpwYXJlbnQgPSBtZGV2LT5wYXJlbnQ7
CisJY29uc3Qgc3RydWN0IG1kZXZfdmZpb19vcHMgKm9wcyA9IG1kZXZfdmZpb19nZXRfb3BzKG1k
ZXYpOwogCi0JaWYgKHVubGlrZWx5KCFwYXJlbnQtPm9wcy0+aW9jdGwpKQorCWlmICh1bmxpa2Vs
eSghb3BzLT5pb2N0bCkpCiAJCXJldHVybiAtRUlOVkFMOwogCi0JcmV0dXJuIHBhcmVudC0+b3Bz
LT5pb2N0bChtZGV2LCBjbWQsIGFyZyk7CisJcmV0dXJuIG9wcy0+aW9jdGwobWRldiwgY21kLCBh
cmcpOwogfQogCiBzdGF0aWMgc3NpemVfdCB2ZmlvX21kZXZfcmVhZCh2b2lkICpkZXZpY2VfZGF0
YSwgY2hhciBfX3VzZXIgKmJ1ZiwKIAkJCSAgICAgIHNpemVfdCBjb3VudCwgbG9mZl90ICpwcG9z
KQogewogCXN0cnVjdCBtZGV2X2RldmljZSAqbWRldiA9IGRldmljZV9kYXRhOwotCXN0cnVjdCBt
ZGV2X3BhcmVudCAqcGFyZW50ID0gbWRldi0+cGFyZW50OworCWNvbnN0IHN0cnVjdCBtZGV2X3Zm
aW9fb3BzICpvcHMgPSBtZGV2X3ZmaW9fZ2V0X29wcyhtZGV2KTsKIAotCWlmICh1bmxpa2VseSgh
cGFyZW50LT5vcHMtPnJlYWQpKQorCWlmICh1bmxpa2VseSghb3BzLT5yZWFkKSkKIAkJcmV0dXJu
IC1FSU5WQUw7CiAKLQlyZXR1cm4gcGFyZW50LT5vcHMtPnJlYWQobWRldiwgYnVmLCBjb3VudCwg
cHBvcyk7CisJcmV0dXJuIG9wcy0+cmVhZChtZGV2LCBidWYsIGNvdW50LCBwcG9zKTsKIH0KIAog
c3RhdGljIHNzaXplX3QgdmZpb19tZGV2X3dyaXRlKHZvaWQgKmRldmljZV9kYXRhLCBjb25zdCBj
aGFyIF9fdXNlciAqYnVmLAogCQkJICAgICAgIHNpemVfdCBjb3VudCwgbG9mZl90ICpwcG9zKQog
ewogCXN0cnVjdCBtZGV2X2RldmljZSAqbWRldiA9IGRldmljZV9kYXRhOwotCXN0cnVjdCBtZGV2
X3BhcmVudCAqcGFyZW50ID0gbWRldi0+cGFyZW50OworCWNvbnN0IHN0cnVjdCBtZGV2X3ZmaW9f
b3BzICpvcHMgPSBtZGV2X3ZmaW9fZ2V0X29wcyhtZGV2KTsKIAotCWlmICh1bmxpa2VseSghcGFy
ZW50LT5vcHMtPndyaXRlKSkKKwlpZiAodW5saWtlbHkoIW9wcy0+d3JpdGUpKQogCQlyZXR1cm4g
LUVJTlZBTDsKIAotCXJldHVybiBwYXJlbnQtPm9wcy0+d3JpdGUobWRldiwgYnVmLCBjb3VudCwg
cHBvcyk7CisJcmV0dXJuIG9wcy0+d3JpdGUobWRldiwgYnVmLCBjb3VudCwgcHBvcyk7CiB9CiAK
IHN0YXRpYyBpbnQgdmZpb19tZGV2X21tYXAodm9pZCAqZGV2aWNlX2RhdGEsIHN0cnVjdCB2bV9h
cmVhX3N0cnVjdCAqdm1hKQogewogCXN0cnVjdCBtZGV2X2RldmljZSAqbWRldiA9IGRldmljZV9k
YXRhOwotCXN0cnVjdCBtZGV2X3BhcmVudCAqcGFyZW50ID0gbWRldi0+cGFyZW50OworCWNvbnN0
IHN0cnVjdCBtZGV2X3ZmaW9fb3BzICpvcHMgPSBtZGV2X3ZmaW9fZ2V0X29wcyhtZGV2KTsKIAot
CWlmICh1bmxpa2VseSghcGFyZW50LT5vcHMtPm1tYXApKQorCWlmICh1bmxpa2VseSghb3BzLT5t
bWFwKSkKIAkJcmV0dXJuIC1FSU5WQUw7CiAKLQlyZXR1cm4gcGFyZW50LT5vcHMtPm1tYXAobWRl
diwgdm1hKTsKKwlyZXR1cm4gb3BzLT5tbWFwKG1kZXYsIHZtYSk7CiB9CiAKIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgdmZpb19kZXZpY2Vfb3BzIHZmaW9fbWRldl9kZXZfb3BzID0gewpAQCAtMTEwLDcg
KzExMCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdmZpb19kZXZpY2Vfb3BzIHZmaW9fbWRldl9k
ZXZfb3BzID0gewogCiBzdGF0aWMgaW50IHZmaW9fbWRldl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpk
ZXYpCiB7Ci0Jc3RydWN0IG1kZXZfZGV2aWNlICptZGV2ID0gdG9fbWRldl9kZXZpY2UoZGV2KTsK
KwlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSBtZGV2X2Zyb21fZGV2KGRldiwgJm1kZXZfdmZp
b19idXNfdHlwZSk7CiAKIAlyZXR1cm4gdmZpb19hZGRfZ3JvdXBfZGV2KGRldiwgJnZmaW9fbWRl
dl9kZXZfb3BzLCBtZGV2KTsKIH0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWRldi5oIGIv
aW5jbHVkZS9saW51eC9tZGV2LmgKaW5kZXggZWUyNDEwMjQ2YjNjLi4yNTU1NGU1NWJjZWUgMTAw
NjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbWRldi5oCisrKyBiL2luY2x1ZGUvbGludXgvbWRldi5o
CkBAIC00OCwzMCArNDgsNiBAQCBzdHJ1Y3QgZGV2aWNlICptZGV2X2dldF9pb21tdV9kZXZpY2Uo
c3RydWN0IGRldmljZSAqZGV2KTsKICAqCQkJQG1kZXY6IG1kZXZfZGV2aWNlIGRldmljZSBzdHJ1
Y3R1cmUgd2hpY2ggaXMgYmVpbmcKICAqCQkJICAgICAgIGRlc3Ryb3llZAogICoJCQlSZXR1cm5z
IGludGVnZXI6IHN1Y2Nlc3MgKDApIG9yIGVycm9yICg8IDApCi0gKiBAb3BlbjoJCU9wZW4gbWVk
aWF0ZWQgZGV2aWNlLgotICoJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNlLgotICoJCQlSZXR1cm5z
IGludGVnZXI6IHN1Y2Nlc3MgKDApIG9yIGVycm9yICg8IDApCi0gKiBAcmVsZWFzZToJCXJlbGVh
c2UgbWVkaWF0ZWQgZGV2aWNlCi0gKgkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2UuCi0gKiBAcmVh
ZDoJCVJlYWQgZW11bGF0aW9uIGNhbGxiYWNrCi0gKgkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2Ug
c3RydWN0dXJlCi0gKgkJCUBidWY6IHJlYWQgYnVmZmVyCi0gKgkJCUBjb3VudDogbnVtYmVyIG9m
IGJ5dGVzIHRvIHJlYWQKLSAqCQkJQHBwb3M6IGFkZHJlc3MuCi0gKgkJCVJldHVucyBudW1iZXIg
b24gYnl0ZXMgcmVhZCBvbiBzdWNjZXNzIG9yIGVycm9yLgotICogQHdyaXRlOgkJV3JpdGUgZW11
bGF0aW9uIGNhbGxiYWNrCi0gKgkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2Ugc3RydWN0dXJlCi0g
KgkJCUBidWY6IHdyaXRlIGJ1ZmZlcgotICoJCQlAY291bnQ6IG51bWJlciBvZiBieXRlcyB0byBi
ZSB3cml0dGVuCi0gKgkJCUBwcG9zOiBhZGRyZXNzLgotICoJCQlSZXR1bnMgbnVtYmVyIG9uIGJ5
dGVzIHdyaXR0ZW4gb24gc3VjY2VzcyBvciBlcnJvci4KLSAqIEBpb2N0bDoJCUlPQ1RMIGNhbGxi
YWNrCi0gKgkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2Ugc3RydWN0dXJlCi0gKgkJCUBjbWQ6IGlv
Y3RsIGNvbW1hbmQKLSAqCQkJQGFyZzogYXJndW1lbnRzIHRvIGlvY3RsCi0gKiBAbW1hcDoJCW1t
YXAgY2FsbGJhY2sKLSAqCQkJQG1kZXY6IG1lZGlhdGVkIGRldmljZSBzdHJ1Y3R1cmUKLSAqCQkJ
QHZtYTogdm1hIHN0cnVjdHVyZQogICogUGFyZW50IGRldmljZSB0aGF0IHN1cHBvcnQgbWVkaWF0
ZWQgZGV2aWNlIHNob3VsZCBiZSByZWdpc3RlcmVkIHdpdGggbWRldgogICogbW9kdWxlIHdpdGgg
bWRldl9wYXJlbnRfb3BzIHN0cnVjdHVyZS4KICAqKi8KQEAgLTgzLDE1ICs1OSw2IEBAIHN0cnVj
dCBtZGV2X3BhcmVudF9vcHMgewogCiAJaW50ICAgICAoKmNyZWF0ZSkoc3RydWN0IGtvYmplY3Qg
KmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldik7CiAJaW50ICAgICAoKnJlbW92ZSkoc3Ry
dWN0IG1kZXZfZGV2aWNlICptZGV2KTsKLQlpbnQgICAgICgqb3Blbikoc3RydWN0IG1kZXZfZGV2
aWNlICptZGV2KTsKLQl2b2lkICAgICgqcmVsZWFzZSkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2
KTsKLQlzc2l6ZV90ICgqcmVhZCkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCBjaGFyIF9fdXNl
ciAqYnVmLAotCQkJc2l6ZV90IGNvdW50LCBsb2ZmX3QgKnBwb3MpOwotCXNzaXplX3QgKCp3cml0
ZSkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCBjb25zdCBjaGFyIF9fdXNlciAqYnVmLAotCQkJ
IHNpemVfdCBjb3VudCwgbG9mZl90ICpwcG9zKTsKLQlsb25nCSgqaW9jdGwpKHN0cnVjdCBtZGV2
X2RldmljZSAqbWRldiwgdW5zaWduZWQgaW50IGNtZCwKLQkJCSB1bnNpZ25lZCBsb25nIGFyZyk7
Ci0JaW50CSgqbW1hcCkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCBzdHJ1Y3Qgdm1fYXJlYV9z
dHJ1Y3QgKnZtYSk7CiB9OwogCiAvKiBpbnRlcmZhY2UgZm9yIGV4cG9ydGluZyBtZGV2IHN1cHBv
cnRlZCB0eXBlIGF0dHJpYnV0ZXMgKi8KQEAgLTEzMywxMCArMTAwLDYgQEAgdm9pZCAqbWRldl9n
ZXRfZHJ2ZGF0YShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwogdm9pZCBtZGV2X3NldF9kcnZk
YXRhKHN0cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdm9pZCAqZGF0YSk7CiBjb25zdCBndWlkX3Qg
Km1kZXZfdXVpZChzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwogCi1pbnQgbWRldl9yZWdpc3Rl
cl9kZXZpY2Uoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3Bz
ICpvcHMsCi0JCQkgc3RydWN0IGJ1c190eXBlICpidXMpOwotdm9pZCBtZGV2X3VucmVnaXN0ZXJf
ZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldik7Ci0KIGludCBtZGV2X3JlZ2lzdGVyX2RyaXZlcihz
dHJ1Y3QgbWRldl9kcml2ZXIgKmRydiwgc3RydWN0IG1vZHVsZSAqb3duZXIsCiAJCQkgc3RydWN0
IGJ1c190eXBlICpidXMpOwogdm9pZCBtZGV2X3VucmVnaXN0ZXJfZHJpdmVyKHN0cnVjdCBtZGV2
X2RyaXZlciAqZHJ2KTsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWRldl92ZmlvLmggYi9p
bmNsdWRlL2xpbnV4L21kZXZfdmZpby5oCmluZGV4IDQ0NmE3NTM3ZTNmYi4uMjQzYWQ4NTAxOWE2
IDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L21kZXZfdmZpby5oCisrKyBiL2luY2x1ZGUvbGlu
dXgvbWRldl92ZmlvLmgKQEAgLTEzLDYgKzEzLDQ1IEBACiAKIGV4dGVybiBzdHJ1Y3QgYnVzX3R5
cGUgbWRldl92ZmlvX2J1c190eXBlOwogCisvKiBWRklPIG1kZXYgb3BzCisgKgorICogQG9wZW46
CQlPcGVuIG1lZGlhdGVkIGRldmljZS4KKyAqCQkJQG1kZXY6IG1lZGlhdGVkIGRldmljZS4KKyAq
CQkJUmV0dXJucyBpbnRlZ2VyOiBzdWNjZXNzICgwKSBvciBlcnJvciAoPCAwKQorICogQHJlbGVh
c2U6CQlyZWxlYXNlIG1lZGlhdGVkIGRldmljZQorICoJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNl
LgorICogQHJlYWQ6CQlSZWFkIGVtdWxhdGlvbiBjYWxsYmFjaworICoJCQlAbWRldjogbWVkaWF0
ZWQgZGV2aWNlIHN0cnVjdHVyZQorICoJCQlAYnVmOiByZWFkIGJ1ZmZlcgorICoJCQlAY291bnQ6
IG51bWJlciBvZiBieXRlcyB0byByZWFkCisgKgkJCUBwcG9zOiBhZGRyZXNzLgorICoJCQlSZXR1
bnMgbnVtYmVyIG9uIGJ5dGVzIHJlYWQgb24gc3VjY2VzcyBvciBlcnJvci4KKyAqIEB3cml0ZToJ
CVdyaXRlIGVtdWxhdGlvbiBjYWxsYmFjaworICoJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNlIHN0
cnVjdHVyZQorICoJCQlAYnVmOiB3cml0ZSBidWZmZXIKKyAqCQkJQGNvdW50OiBudW1iZXIgb2Yg
Ynl0ZXMgdG8gYmUgd3JpdHRlbgorICoJCQlAcHBvczogYWRkcmVzcy4KKyAqCQkJUmV0dW5zIG51
bWJlciBvbiBieXRlcyB3cml0dGVuIG9uIHN1Y2Nlc3Mgb3IgZXJyb3IuCisgKiBAaW9jdGw6CQlJ
T0NUTCBjYWxsYmFjaworICoJCQlAbWRldjogbWVkaWF0ZWQgZGV2aWNlIHN0cnVjdHVyZQorICoJ
CQlAY21kOiBpb2N0bCBjb21tYW5kCisgKgkJCUBhcmc6IGFyZ3VtZW50cyB0byBpb2N0bAorICog
QG1tYXA6CQltbWFwIGNhbGxiYWNrCisgKgkJCUBtZGV2OiBtZWRpYXRlZCBkZXZpY2Ugc3RydWN0
dXJlCisgKgkJCUB2bWE6IHZtYSBzdHJ1Y3R1cmUKKyAqLworc3RydWN0IG1kZXZfdmZpb19vcHMg
eworCWludCAgICAgKCpvcGVuKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOworCXZvaWQgICAg
KCpyZWxlYXNlKShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOworCXNzaXplX3QgKCpyZWFkKShz
dHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsIGNoYXIgX191c2VyICpidWYsCisJCQlzaXplX3QgY291
bnQsIGxvZmZfdCAqcHBvcyk7CisJc3NpemVfdCAoKndyaXRlKShzdHJ1Y3QgbWRldl9kZXZpY2Ug
Km1kZXYsIGNvbnN0IGNoYXIgX191c2VyICpidWYsCisJCQkgc2l6ZV90IGNvdW50LCBsb2ZmX3Qg
KnBwb3MpOworCWxvbmcJKCppb2N0bCkoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2LCB1bnNpZ25l
ZCBpbnQgY21kLAorCQkJIHVuc2lnbmVkIGxvbmcgYXJnKTsKKwlpbnQJKCptbWFwKShzdHJ1Y3Qg
bWRldl9kZXZpY2UgKm1kZXYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKTsKK307CisKIGlu
dCBtZGV2X3ZmaW9fcmVnaXN0ZXJfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwKIAkJCSAgICAg
IGNvbnN0IHN0cnVjdCBtZGV2X3BhcmVudF9vcHMgKm9wcyk7CiB2b2lkIG1kZXZfdmZpb191bnJl
Z2lzdGVyX2RldmljZShzdHJ1Y3QgZGV2aWNlICpkZXYpOwpAQCAtMjIsNCArNjEsOCBAQCBzdGF0
aWMgaW5saW5lIHN0cnVjdCBtZGV2X2RldmljZSAqdmZpb19tZGV2X2Zyb21fZGV2KHN0cnVjdCBk
ZXZpY2UgKmRldikKIAlyZXR1cm4gbWRldl9mcm9tX2RldihkZXYsICZtZGV2X3ZmaW9fYnVzX3R5
cGUpOwogfQogCit2b2lkIG1kZXZfdmZpb19zZXRfb3BzKHN0cnVjdCBtZGV2X2RldmljZSAqbWRl
diwKKwkJICAgICAgIGNvbnN0IHN0cnVjdCBtZGV2X3ZmaW9fb3BzICpvcHMpOworY29uc3Qgc3Ry
dWN0IG1kZXZfdmZpb19vcHMgKm1kZXZfdmZpb19nZXRfb3BzKHN0cnVjdCBtZGV2X2RldmljZSAq
bWRldik7CisKICNlbmRpZgpkaWZmIC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMg
Yi9zYW1wbGVzL3ZmaW8tbWRldi9tYm9jaHMuYwppbmRleCBmMDQxZDU4MzI0YjEuLmIyYmEzMmI1
ZmVkMiAxMDA2NDQKLS0tIGEvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKKysrIGIvc2FtcGxl
cy92ZmlvLW1kZXYvbWJvY2hzLmMKQEAgLTUxNiw2ICs1MTYsOCBAQCBzdGF0aWMgaW50IG1ib2No
c19yZXNldChzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgbWRldl92ZmlvX29wcyBtZGV2X29wczsKKwogc3RhdGljIGludCBtYm9j
aHNfY3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYp
CiB7CiAJY29uc3Qgc3RydWN0IG1ib2Noc190eXBlICp0eXBlID0gbWJvY2hzX2ZpbmRfdHlwZShr
b2JqKTsKQEAgLTU2MSw2ICs1NjMsNyBAQCBzdGF0aWMgaW50IG1ib2Noc19jcmVhdGUoc3RydWN0
IGtvYmplY3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKIAltYm9jaHNfcmVzZXQo
bWRldik7CiAKIAltYm9jaHNfdXNlZF9tYnl0ZXMgKz0gdHlwZS0+bWJ5dGVzOworCW1kZXZfdmZp
b19zZXRfb3BzKG1kZXYsICZtZGV2X29wcyk7CiAJcmV0dXJuIDA7CiAKIGVycl9tZW06CkBAIC0x
NDE4LDEyICsxNDIxLDcgQEAgc3RhdGljIHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXAgKm1kZXZfdHlw
ZV9ncm91cHNbXSA9IHsKIAlOVUxMLAogfTsKIAotc3RhdGljIGNvbnN0IHN0cnVjdCBtZGV2X3Bh
cmVudF9vcHMgbWRldl9mb3BzID0gewotCS5vd25lcgkJCT0gVEhJU19NT0RVTEUsCi0JLm1kZXZf
YXR0cl9ncm91cHMJPSBtZGV2X2Rldl9ncm91cHMsCi0JLnN1cHBvcnRlZF90eXBlX2dyb3Vwcwk9
IG1kZXZfdHlwZV9ncm91cHMsCi0JLmNyZWF0ZQkJCT0gbWJvY2hzX2NyZWF0ZSwKLQkucmVtb3Zl
CQkJPSBtYm9jaHNfcmVtb3ZlLAorc3RhdGljIGNvbnN0IHN0cnVjdCBtZGV2X3ZmaW9fb3BzIG1k
ZXZfb3BzID0gewogCS5vcGVuCQkJPSBtYm9jaHNfb3BlbiwKIAkucmVsZWFzZQkJPSBtYm9jaHNf
Y2xvc2UsCiAJLnJlYWQJCQk9IG1ib2Noc19yZWFkLApAQCAtMTQzMiw2ICsxNDMwLDE0IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIG1kZXZfZm9wcyA9IHsKIAkubW1hcAkJ
CT0gbWJvY2hzX21tYXAsCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IG1kZXZfcGFyZW50X29w
cyBtZGV2X2ZvcHMgPSB7CisJLm93bmVyCQkJPSBUSElTX01PRFVMRSwKKwkubWRldl9hdHRyX2dy
b3Vwcwk9IG1kZXZfZGV2X2dyb3VwcywKKwkuc3VwcG9ydGVkX3R5cGVfZ3JvdXBzCT0gbWRldl90
eXBlX2dyb3VwcywKKwkuY3JlYXRlCQkJPSBtYm9jaHNfY3JlYXRlLAorCS5yZW1vdmUJCQk9IG1i
b2Noc19yZW1vdmUsCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyB2
ZF9mb3BzID0gewogCS5vd25lcgkJPSBUSElTX01PRFVMRSwKIH07CmRpZmYgLS1naXQgYS9zYW1w
bGVzL3ZmaW8tbWRldi9tZHB5LmMgYi9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5LmMKaW5kZXggOWMz
MmZlMzc5NWFkLi5kMjZmZDk0YjQ3ODMgMTAwNjQ0Ci0tLSBhL3NhbXBsZXMvdmZpby1tZGV2L21k
cHkuYworKysgYi9zYW1wbGVzL3ZmaW8tbWRldi9tZHB5LmMKQEAgLTIyNiw2ICsyMjYsOCBAQCBz
dGF0aWMgaW50IG1kcHlfcmVzZXQoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KQogCXJldHVybiAw
OwogfQogCitzdGF0aWMgY29uc3Qgc3RydWN0IG1kZXZfdmZpb19vcHMgbWRldl9vcHM7CisKIHN0
YXRpYyBpbnQgbWRweV9jcmVhdGUoc3RydWN0IGtvYmplY3QgKmtvYmosIHN0cnVjdCBtZGV2X2Rl
dmljZSAqbWRldikKIHsKIAljb25zdCBzdHJ1Y3QgbWRweV90eXBlICp0eXBlID0gbWRweV9maW5k
X3R5cGUoa29iaik7CkBAIC0yNjksNiArMjcxLDggQEAgc3RhdGljIGludCBtZHB5X2NyZWF0ZShz
dHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KQogCW1kcHlfcmVz
ZXQobWRldik7CiAKIAltZHB5X2NvdW50Kys7CisKKwltZGV2X3ZmaW9fc2V0X29wcyhtZGV2LCAm
bWRldl9vcHMpOwogCXJldHVybiAwOwogfQogCkBAIC03MjUsMTIgKzcyOSw3IEBAIHN0YXRpYyBz
dHJ1Y3QgYXR0cmlidXRlX2dyb3VwICptZGV2X3R5cGVfZ3JvdXBzW10gPSB7CiAJTlVMTCwKIH07
CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9wYXJlbnRfb3BzIG1kZXZfZm9wcyA9IHsKLQku
b3duZXIJCQk9IFRISVNfTU9EVUxFLAotCS5tZGV2X2F0dHJfZ3JvdXBzCT0gbWRldl9kZXZfZ3Jv
dXBzLAotCS5zdXBwb3J0ZWRfdHlwZV9ncm91cHMJPSBtZGV2X3R5cGVfZ3JvdXBzLAotCS5jcmVh
dGUJCQk9IG1kcHlfY3JlYXRlLAotCS5yZW1vdmUJCQk9IG1kcHlfcmVtb3ZlLAorc3RhdGljIGNv
bnN0IHN0cnVjdCBtZGV2X3ZmaW9fb3BzIG1kZXZfb3BzID0gewogCS5vcGVuCQkJPSBtZHB5X29w
ZW4sCiAJLnJlbGVhc2UJCT0gbWRweV9jbG9zZSwKIAkucmVhZAkJCT0gbWRweV9yZWFkLApAQCAt
NzM5LDYgKzczOCwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1kZXZfcGFyZW50X29wcyBtZGV2
X2ZvcHMgPSB7CiAJLm1tYXAJCQk9IG1kcHlfbW1hcCwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgbWRldl9wYXJlbnRfb3BzIG1kZXZfZm9wcyA9IHsKKwkub3duZXIJCQk9IFRISVNfTU9EVUxF
LAorCS5tZGV2X2F0dHJfZ3JvdXBzCT0gbWRldl9kZXZfZ3JvdXBzLAorCS5zdXBwb3J0ZWRfdHlw
ZV9ncm91cHMJPSBtZGV2X3R5cGVfZ3JvdXBzLAorCS5jcmVhdGUJCQk9IG1kcHlfY3JlYXRlLAor
CS5yZW1vdmUJCQk9IG1kcHlfcmVtb3ZlLAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVjdCBmaWxl
X29wZXJhdGlvbnMgdmRfZm9wcyA9IHsKIAkub3duZXIJCT0gVEhJU19NT0RVTEUsCiB9OwpkaWZm
IC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jIGIvc2FtcGxlcy92ZmlvLW1kZXYvbXR0
eS5jCmluZGV4IDZlNGU2MzM5ZTBmMS4uM2YwYzY1MDYxOTlhIDEwMDY0NAotLS0gYS9zYW1wbGVz
L3ZmaW8tbWRldi9tdHR5LmMKKysrIGIvc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jCkBAIC03MDgs
NiArNzA4LDggQEAgc3RhdGljIHNzaXplX3QgbWRldl9hY2Nlc3Moc3RydWN0IG1kZXZfZGV2aWNl
ICptZGV2LCB1OCAqYnVmLCBzaXplX3QgY291bnQsCiAJcmV0dXJuIHJldDsKIH0KIAorc3RhdGlj
IGNvbnN0IHN0cnVjdCBtZGV2X3ZmaW9fb3BzIG1kZXZfb3BzOworCiBzdGF0aWMgaW50IG10dHlf
Y3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCiB7
CiAJc3RydWN0IG1kZXZfc3RhdGUgKm1kZXZfc3RhdGU7CkBAIC03NTUsNiArNzU3LDcgQEAgc3Rh
dGljIGludCBtdHR5X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2
aWNlICptZGV2KQogCWxpc3RfYWRkKCZtZGV2X3N0YXRlLT5uZXh0LCAmbWRldl9kZXZpY2VzX2xp
c3QpOwogCW11dGV4X3VubG9jaygmbWRldl9saXN0X2xvY2spOwogCisJbWRldl92ZmlvX3NldF9v
cHMobWRldiwgJm1kZXZfb3BzKTsKIAlyZXR1cm4gMDsKIH0KIApAQCAtMTM4Nyw2ICsxMzkwLDE0
IEBAIHN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwICptZGV2X3R5cGVfZ3JvdXBzW10gPSB7
CiAJTlVMTCwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl92ZmlvX29wcyBtZGV2X29w
cyA9IHsKKwkub3BlbiAgICAgICAgICAgICAgICAgICA9IG10dHlfb3BlbiwKKwkucmVsZWFzZSAg
ICAgICAgICAgICAgICA9IG10dHlfY2xvc2UsCisJLnJlYWQgICAgICAgICAgICAgICAgICAgPSBt
dHR5X3JlYWQsCisJLndyaXRlICAgICAgICAgICAgICAgICAgPSBtdHR5X3dyaXRlLAorCS5pb2N0
bAkJICAgICAgICA9IG10dHlfaW9jdGwsCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IG1kZXZf
cGFyZW50X29wcyBtZGV2X2ZvcHMgPSB7CiAJLm93bmVyICAgICAgICAgICAgICAgICAgPSBUSElT
X01PRFVMRSwKIAkuZGV2X2F0dHJfZ3JvdXBzICAgICAgICA9IG10dHlfZGV2X2dyb3VwcywKQEAg
LTEzOTQsMTEgKzE0MDUsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1kZXZfcGFyZW50X29wcyBt
ZGV2X2ZvcHMgPSB7CiAJLnN1cHBvcnRlZF90eXBlX2dyb3VwcyAgPSBtZGV2X3R5cGVfZ3JvdXBz
LAogCS5jcmVhdGUgICAgICAgICAgICAgICAgID0gbXR0eV9jcmVhdGUsCiAJLnJlbW92ZQkJCT0g
bXR0eV9yZW1vdmUsCi0JLm9wZW4gICAgICAgICAgICAgICAgICAgPSBtdHR5X29wZW4sCi0JLnJl
bGVhc2UgICAgICAgICAgICAgICAgPSBtdHR5X2Nsb3NlLAotCS5yZWFkICAgICAgICAgICAgICAg
ICAgID0gbXR0eV9yZWFkLAotCS53cml0ZSAgICAgICAgICAgICAgICAgID0gbXR0eV93cml0ZSwK
LQkuaW9jdGwJCSAgICAgICAgPSBtdHR5X2lvY3RsLAogfTsKIAogc3RhdGljIHZvaWQgbXR0eV9k
ZXZpY2VfcmVsZWFzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCi0tIAoyLjE5LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
