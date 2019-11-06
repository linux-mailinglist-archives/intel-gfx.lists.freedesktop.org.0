Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67529F0FE7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 08:09:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEDF16EC08;
	Wed,  6 Nov 2019 07:09:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CAF06EC05
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 07:09:00 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-AoaTpqSfNuSyDnTT12PNuw-1; Wed, 06 Nov 2019 02:08:55 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1B661005500;
 Wed,  6 Nov 2019 07:08:51 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-193.pek2.redhat.com [10.72.12.193])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EEBAB1001B00;
 Wed,  6 Nov 2019 07:07:11 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com
Date: Wed,  6 Nov 2019 15:05:43 +0800
Message-Id: <20191106070548.18980-2-jasowang@redhat.com>
In-Reply-To: <20191106070548.18980-1-jasowang@redhat.com>
References: <20191106070548.18980-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: AoaTpqSfNuSyDnTT12PNuw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1573024139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZjglcjJdfJ+rYNda606bWPhtmSxvctdSzvRhdUvjVro=;
 b=B04SKDM4ViRKTQF46J7vQYv2k96r1GpXgpLsCwVFlH+mR/+iHBrr5Kl9eFYoT9JXpKyWfb
 f67nbzUiQ5+bhoorTLL5pJYb3QvR//wtOqr2GIFvtAHqRKw1LyYys7yT1QthXu9UNGMp3m
 IvaRTKXLOsgxcFh6Tcnm9b4HCJCc2t8=
Subject: [Intel-gfx] [PATCH V9 1/6] mdev: class id support
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
Cc: christophe.de.dinechin@gmail.com, sebott@linux.ibm.com, airlied@linux.ie,
 Jason Wang <jasowang@redhat.com>, heiko.carstens@de.ibm.com,
 virtualization@lists.linux-foundation.org, rob.miller@broadcom.com,
 lulu@redhat.com, eperezma@redhat.com, pasic@linux.ibm.com,
 borntraeger@de.ibm.com, haotian.wang@sifive.com, farman@linux.ibm.com,
 idos@mellanox.com, gor@linux.ibm.com, cunming.liang@intel.com,
 xiao.w.wang@intel.com, freude@linux.ibm.com, parav@mellanox.com,
 zhihong.wang@intel.com, stefanha@redhat.com, akrowiak@linux.ibm.com,
 netdev@vger.kernel.org, cohuck@redhat.com, oberpar@linux.ibm.com,
 maxime.coquelin@redhat.com, lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWRldiBidXMgb25seSBzdXBwb3J0cyB2ZmlvIGRyaXZlciByaWdodCBub3csIHNvIGl0IGRvZXNu
J3QgaW1wbGVtZW50Cm1hdGNoIG1ldGhvZC4gQnV0IGluIHRoZSBmdXR1cmUsIHdlIG1heSBhZGQg
ZHJpdmVycyBvdGhlciB0aGFuIHZmaW8sCnRoZSBmaXJzdCBkcml2ZXIgY291bGQgYmUgdmlydGlv
LW1kZXYuIFRoaXMgbWVhbnMgd2UgbmVlZCB0byBhZGQKZGV2aWNlIGNsYXNzIGlkIHN1cHBvcnQg
aW4gYnVzIG1hdGNoIG1ldGhvZCB0byBwYWlyIHRoZSBtZGV2IGRldmljZQphbmQgbWRldiBkcml2
ZXIgY29ycmVjdGx5LgoKU28gdGhpcyBwYXRjaCBhZGRzIGlkX3RhYmxlIHRvIG1kZXZfZHJpdmVy
IGFuZCBjbGFzc19pZCBmb3IgbWRldgpkZXZpY2Ugd2l0aCB0aGUgbWF0Y2ggbWV0aG9kIGZvciBt
ZGV2IGJ1cy4KClJldmlld2VkLWJ5OiBQYXJhdiBQYW5kaXQgPHBhcmF2QG1lbGxhbm94LmNvbT4K
UmV2aWV3ZWQtYnk6IENvcm5lbGlhIEh1Y2sgPGNvaHVja0ByZWRoYXQuY29tPgpTaWduZWQtb2Zm
LWJ5OiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgotLS0KIC4uLi9kcml2ZXItYXBp
L3ZmaW8tbWVkaWF0ZWQtZGV2aWNlLnJzdCAgICAgICB8ICA1ICsrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d2dC9rdm1ndC5jICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvczM5MC9jaW8v
dmZpb19jY3dfb3BzLmMgICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvczM5MC9jcnlwdG8v
dmZpb19hcF9vcHMuYyAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvdmZpby9tZGV2L21kZXZf
Y29yZS5jICAgICAgICAgICAgICAgICB8IDE3ICsrKysrKysrKysrKysKIGRyaXZlcnMvdmZpby9t
ZGV2L21kZXZfZHJpdmVyLmMgICAgICAgICAgICAgICB8IDI1ICsrKysrKysrKysrKysrKysrKysK
IGRyaXZlcnMvdmZpby9tZGV2L21kZXZfcHJpdmF0ZS5oICAgICAgICAgICAgICB8ICAxICsKIGRy
aXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jICAgICAgICAgICAgICAgICB8ICA2ICsrKysrCiBp
bmNsdWRlL2xpbnV4L21kZXYuaCAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgOCArKysrKysK
IGluY2x1ZGUvbGludXgvbW9kX2RldmljZXRhYmxlLmggICAgICAgICAgICAgICB8ICA4ICsrKysr
Kwogc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMgICAgICAgICAgICAgICAgICAgIHwgIDEgKwog
c2FtcGxlcy92ZmlvLW1kZXYvbWRweS5jICAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwogc2Ft
cGxlcy92ZmlvLW1kZXYvbXR0eS5jICAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwogMTMgZmls
ZXMgY2hhbmdlZCwgNzYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
ZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVkLWRldmljZS5yc3QgYi9Eb2N1bWVudGF0aW9uL2RyaXZl
ci1hcGkvdmZpby1tZWRpYXRlZC1kZXZpY2UucnN0CmluZGV4IDI1ZWI3ZDViODM0Yi4uNjcwOTQx
M2JlZTI5IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvdmZpby1tZWRpYXRl
ZC1kZXZpY2UucnN0CisrKyBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVk
LWRldmljZS5yc3QKQEAgLTEwMiwxMiArMTAyLDE0IEBAIHN0cnVjdHVyZSB0byByZXByZXNlbnQg
YSBtZWRpYXRlZCBkZXZpY2UncyBkcml2ZXI6OgogICAgICAgKiBAcHJvYmU6IGNhbGxlZCB3aGVu
IG5ldyBkZXZpY2UgY3JlYXRlZAogICAgICAgKiBAcmVtb3ZlOiBjYWxsZWQgd2hlbiBkZXZpY2Ug
cmVtb3ZlZAogICAgICAgKiBAZHJpdmVyOiBkZXZpY2UgZHJpdmVyIHN0cnVjdHVyZQorICAgICAg
KiBAaWRfdGFibGU6IHRoZSBpZHMgc2VydmljZWQgYnkgdGhpcyBkcml2ZXIKICAgICAgICovCiAg
ICAgIHN0cnVjdCBtZGV2X2RyaXZlciB7CiAJICAgICBjb25zdCBjaGFyICpuYW1lOwogCSAgICAg
aW50ICAoKnByb2JlKSAgKHN0cnVjdCBkZXZpY2UgKmRldik7CiAJICAgICB2b2lkICgqcmVtb3Zl
KSAoc3RydWN0IGRldmljZSAqZGV2KTsKIAkgICAgIHN0cnVjdCBkZXZpY2VfZHJpdmVyICAgIGRy
aXZlcjsKKwkgICAgIGNvbnN0IHN0cnVjdCBtZGV2X2NsYXNzX2lkICppZF90YWJsZTsKICAgICAg
fTsKIAogQSBtZWRpYXRlZCBidXMgZHJpdmVyIGZvciBtZGV2IHNob3VsZCB1c2UgdGhpcyBzdHJ1
Y3R1cmUgaW4gdGhlIGZ1bmN0aW9uIGNhbGxzCkBAIC0xNzAsNiArMTcyLDkgQEAgdGhhdCBhIGRy
aXZlciBzaG91bGQgdXNlIHRvIHVucmVnaXN0ZXIgaXRzZWxmIHdpdGggdGhlIG1kZXYgY29yZSBk
cml2ZXI6OgogCiAJZXh0ZXJuIHZvaWQgbWRldl91bnJlZ2lzdGVyX2RldmljZShzdHJ1Y3QgZGV2
aWNlICpkZXYpOwogCitJdCBpcyBhbHNvIHJlcXVpcmVkIHRvIHNwZWNpZnkgdGhlIGNsYXNzX2lk
IGluIGNyZWF0ZSgpIGNhbGxiYWNrIHRocm91Z2g6OgorCisJaW50IG1kZXZfc2V0X2NsYXNzKHN0
cnVjdCBtZGV2X2RldmljZSAqbWRldiwgdTE2IGlkKTsKIAogTWVkaWF0ZWQgRGV2aWNlIE1hbmFn
ZW1lbnQgSW50ZXJmYWNlIFRocm91Z2ggc3lzZnMKID09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndnQva3ZtZ3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9rdm1ndC5jCmluZGV4IDM0
M2Q3OWMxY2I3ZS4uNjQyMGYwZGJkMzFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndnQva3ZtZ3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQva3ZtZ3QuYwpAQCAt
Njc4LDYgKzY3OCw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfdmdwdV9jcmVhdGUoc3RydWN0IGtvYmpl
Y3QgKmtvYmosIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldikKIAkJICAgICBkZXZfbmFtZShtZGV2
X2RldihtZGV2KSkpOwogCXJldCA9IDA7CiAKKwltZGV2X3NldF9jbGFzcyhtZGV2LCBNREVWX0NM
QVNTX0lEX1ZGSU8pOwogb3V0OgogCXJldHVybiByZXQ7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJz
L3MzOTAvY2lvL3ZmaW9fY2N3X29wcy5jIGIvZHJpdmVycy9zMzkwL2Npby92ZmlvX2Njd19vcHMu
YwppbmRleCBmMGQ3MWFiNzdjNTAuLmNmMmMwMTNhZTMyZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9z
MzkwL2Npby92ZmlvX2Njd19vcHMuYworKysgYi9kcml2ZXJzL3MzOTAvY2lvL3ZmaW9fY2N3X29w
cy5jCkBAIC0xMjksNiArMTI5LDcgQEAgc3RhdGljIGludCB2ZmlvX2Njd19tZGV2X2NyZWF0ZShz
dHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KQogCQkJICAgcHJp
dmF0ZS0+c2NoLT5zY2hpZC5zc2lkLAogCQkJICAgcHJpdmF0ZS0+c2NoLT5zY2hpZC5zY2hfbm8p
OwogCisJbWRldl9zZXRfY2xhc3MobWRldiwgTURFVl9DTEFTU19JRF9WRklPKTsKIAlyZXR1cm4g
MDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5jIGIv
ZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5jCmluZGV4IDVjMGY1M2M2ZGRlNy4uMDdj
MzEwNzBhZmViIDEwMDY0NAotLS0gYS9kcml2ZXJzL3MzOTAvY3J5cHRvL3ZmaW9fYXBfb3BzLmMK
KysrIGIvZHJpdmVycy9zMzkwL2NyeXB0by92ZmlvX2FwX29wcy5jCkBAIC0zNDMsNiArMzQzLDcg
QEAgc3RhdGljIGludCB2ZmlvX2FwX21kZXZfY3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBz
dHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCiAJbGlzdF9hZGQoJm1hdHJpeF9tZGV2LT5ub2RlLCAm
bWF0cml4X2Rldi0+bWRldl9saXN0KTsKIAltdXRleF91bmxvY2soJm1hdHJpeF9kZXYtPmxvY2sp
OwogCisJbWRldl9zZXRfY2xhc3MobWRldiwgTURFVl9DTEFTU19JRF9WRklPKTsKIAlyZXR1cm4g
MDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMgYi9kcml2
ZXJzL3ZmaW8vbWRldi9tZGV2X2NvcmUuYwppbmRleCBiNTU4ZDRjZmQwODIuLjdiZmEyZTQ2ZTgy
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9jb3JlLmMKKysrIGIvZHJpdmVy
cy92ZmlvL21kZXYvbWRldl9jb3JlLmMKQEAgLTQ1LDYgKzQ1LDE3IEBAIHZvaWQgbWRldl9zZXRf
ZHJ2ZGF0YShzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYsIHZvaWQgKmRhdGEpCiB9CiBFWFBPUlRf
U1lNQk9MKG1kZXZfc2V0X2RydmRhdGEpOwogCisvKgorICogU3BlY2lmeSB0aGUgY2xhc3MgZm9y
IHRoZSBtZGV2IGRldmljZSwgdGhpcyBtdXN0IGJlIGNhbGxlZCBkdXJpbmcKKyAqIGNyZWF0ZSgp
IGNhbGxiYWNrLgorICovCit2b2lkIG1kZXZfc2V0X2NsYXNzKHN0cnVjdCBtZGV2X2RldmljZSAq
bWRldiwgdTE2IGlkKQoreworCVdBUk5fT04obWRldi0+Y2xhc3NfaWQpOworCW1kZXYtPmNsYXNz
X2lkID0gaWQ7Cit9CitFWFBPUlRfU1lNQk9MKG1kZXZfc2V0X2NsYXNzKTsKKwogc3RydWN0IGRl
dmljZSAqbWRldl9kZXYoc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KQogewogCXJldHVybiAmbWRl
di0+ZGV2OwpAQCAtMzI0LDYgKzMzNSwxMiBAQCBpbnQgbWRldl9kZXZpY2VfY3JlYXRlKHN0cnVj
dCBrb2JqZWN0ICprb2JqLAogCWlmIChyZXQpCiAJCWdvdG8gb3BzX2NyZWF0ZV9mYWlsOwogCisJ
aWYgKCFtZGV2LT5jbGFzc19pZCkgeworCQlyZXQgPSAtRUlOVkFMOworCQlkZXZfd2FybihkZXYs
ICJtZGV2IHZlbmRvciBkcml2ZXIgZmFpbGVkIHRvIHNwZWNpZnkgZGV2aWNlIGNsYXNzXG4iKTsK
KwkJZ290byBhZGRfZmFpbDsKKwl9CisKIAlyZXQgPSBkZXZpY2VfYWRkKCZtZGV2LT5kZXYpOwog
CWlmIChyZXQpCiAJCWdvdG8gYWRkX2ZhaWw7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vbWRl
di9tZGV2X2RyaXZlci5jIGIvZHJpdmVycy92ZmlvL21kZXYvbWRldl9kcml2ZXIuYwppbmRleCAw
ZDMyMjNhZWUyMGIuLmVkMDY0MzM2OTNlOCAxMDA2NDQKLS0tIGEvZHJpdmVycy92ZmlvL21kZXYv
bWRldl9kcml2ZXIuYworKysgYi9kcml2ZXJzL3ZmaW8vbWRldi9tZGV2X2RyaXZlci5jCkBAIC02
OSw4ICs2OSwzMyBAQCBzdGF0aWMgaW50IG1kZXZfcmVtb3ZlKHN0cnVjdCBkZXZpY2UgKmRldikK
IAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCBtZGV2X21hdGNoKHN0cnVjdCBkZXZpY2UgKmRl
diwgc3RydWN0IGRldmljZV9kcml2ZXIgKmRydikKK3sKKwl1bnNpZ25lZCBpbnQgaTsKKwlzdHJ1
Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSB0b19tZGV2X2RldmljZShkZXYpOworCXN0cnVjdCBtZGV2
X2RyaXZlciAqbWRydiA9IHRvX21kZXZfZHJpdmVyKGRydik7CisJY29uc3Qgc3RydWN0IG1kZXZf
Y2xhc3NfaWQgKmlkcyA9IG1kcnYtPmlkX3RhYmxlOworCisJaWYgKCFpZHMpCisJCXJldHVybiAw
OworCisJZm9yIChpID0gMDsgaWRzW2ldLmlkOyBpKyspCisJCWlmIChpZHNbaV0uaWQgPT0gbWRl
di0+Y2xhc3NfaWQpCisJCQlyZXR1cm4gMTsKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCBt
ZGV2X3VldmVudChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBrb2JqX3VldmVudF9lbnYgKmVu
dikKK3sKKwlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYgPSB0b19tZGV2X2RldmljZShkZXYpOwor
CisJcmV0dXJuIGFkZF91ZXZlbnRfdmFyKGVudiwgIk1PREFMSUFTPW1kZXY6YyUwMlgiLCBtZGV2
LT5jbGFzc19pZCk7Cit9CisKIHN0cnVjdCBidXNfdHlwZSBtZGV2X2J1c190eXBlID0gewogCS5u
YW1lCQk9ICJtZGV2IiwKKwkubWF0Y2gJCT0gbWRldl9tYXRjaCwKKwkudWV2ZW50CQk9IG1kZXZf
dWV2ZW50LAogCS5wcm9iZQkJPSBtZGV2X3Byb2JlLAogCS5yZW1vdmUJCT0gbWRldl9yZW1vdmUs
CiB9OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9wcml2YXRlLmggYi9kcml2
ZXJzL3ZmaW8vbWRldi9tZGV2X3ByaXZhdGUuaAppbmRleCA3ZDkyMjk1MGNhYWYuLmM2NWY0MzZj
MTg2OSAxMDA2NDQKLS0tIGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9wcml2YXRlLmgKKysrIGIv
ZHJpdmVycy92ZmlvL21kZXYvbWRldl9wcml2YXRlLmgKQEAgLTMzLDYgKzMzLDcgQEAgc3RydWN0
IG1kZXZfZGV2aWNlIHsKIAlzdHJ1Y3Qga29iamVjdCAqdHlwZV9rb2JqOwogCXN0cnVjdCBkZXZp
Y2UgKmlvbW11X2RldmljZTsKIAlib29sIGFjdGl2ZTsKKwl1MTYgY2xhc3NfaWQ7CiB9OwogCiAj
ZGVmaW5lIHRvX21kZXZfZGV2aWNlKGRldikJY29udGFpbmVyX29mKGRldiwgc3RydWN0IG1kZXZf
ZGV2aWNlLCBkZXYpCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYyBi
L2RyaXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jCmluZGV4IDMwOTY0YTRlMGEyOC4uMzg0MzFl
OWVmN2Y1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYworKysgYi9k
cml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYwpAQCAtMTIwLDEwICsxMjAsMTYgQEAgc3RhdGlj
IHZvaWQgdmZpb19tZGV2X3JlbW92ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCiAJdmZpb19kZWxfZ3Jv
dXBfZGV2KGRldik7CiB9CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9jbGFzc19pZCB2Zmlv
X2lkX3RhYmxlW10gPSB7CisJeyBNREVWX0NMQVNTX0lEX1ZGSU8gfSwKKwl7IDAgfSwKK307CisK
IHN0YXRpYyBzdHJ1Y3QgbWRldl9kcml2ZXIgdmZpb19tZGV2X2RyaXZlciA9IHsKIAkubmFtZQk9
ICJ2ZmlvX21kZXYiLAogCS5wcm9iZQk9IHZmaW9fbWRldl9wcm9iZSwKIAkucmVtb3ZlCT0gdmZp
b19tZGV2X3JlbW92ZSwKKwkuaWRfdGFibGUgPSB2ZmlvX2lkX3RhYmxlLAogfTsKIAogc3RhdGlj
IGludCBfX2luaXQgdmZpb19tZGV2X2luaXQodm9pZCkKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvbWRldi5oIGIvaW5jbHVkZS9saW51eC9tZGV2LmgKaW5kZXggMGNlMzBjYTc4ZGIwLi43OGI2
OWQwOWViNTQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbWRldi5oCisrKyBiL2luY2x1ZGUv
bGludXgvbWRldi5oCkBAIC0xMTgsNiArMTE4LDcgQEAgc3RydWN0IG1kZXZfdHlwZV9hdHRyaWJ1
dGUgbWRldl90eXBlX2F0dHJfIyNfbmFtZSA9CQlcCiAgKiBAcHJvYmU6IGNhbGxlZCB3aGVuIG5l
dyBkZXZpY2UgY3JlYXRlZAogICogQHJlbW92ZTogY2FsbGVkIHdoZW4gZGV2aWNlIHJlbW92ZWQK
ICAqIEBkcml2ZXI6IGRldmljZSBkcml2ZXIgc3RydWN0dXJlCisgKiBAaWRfdGFibGU6IHRoZSBp
ZHMgc2VydmljZWQgYnkgdGhpcyBkcml2ZXIKICAqCiAgKiovCiBzdHJ1Y3QgbWRldl9kcml2ZXIg
ewpAQCAtMTI1LDYgKzEyNiw3IEBAIHN0cnVjdCBtZGV2X2RyaXZlciB7CiAJaW50ICAoKnByb2Jl
KShzdHJ1Y3QgZGV2aWNlICpkZXYpOwogCXZvaWQgKCpyZW1vdmUpKHN0cnVjdCBkZXZpY2UgKmRl
dik7CiAJc3RydWN0IGRldmljZV9kcml2ZXIgZHJpdmVyOworCWNvbnN0IHN0cnVjdCBtZGV2X2Ns
YXNzX2lkICppZF90YWJsZTsKIH07CiAKICNkZWZpbmUgdG9fbWRldl9kcml2ZXIoZHJ2KQljb250
YWluZXJfb2YoZHJ2LCBzdHJ1Y3QgbWRldl9kcml2ZXIsIGRyaXZlcikKQEAgLTEzMiw2ICsxMzQs
NyBAQCBzdHJ1Y3QgbWRldl9kcml2ZXIgewogdm9pZCAqbWRldl9nZXRfZHJ2ZGF0YShzdHJ1Y3Qg
bWRldl9kZXZpY2UgKm1kZXYpOwogdm9pZCBtZGV2X3NldF9kcnZkYXRhKHN0cnVjdCBtZGV2X2Rl
dmljZSAqbWRldiwgdm9pZCAqZGF0YSk7CiBjb25zdCBndWlkX3QgKm1kZXZfdXVpZChzdHJ1Y3Qg
bWRldl9kZXZpY2UgKm1kZXYpOwordm9pZCBtZGV2X3NldF9jbGFzcyhzdHJ1Y3QgbWRldl9kZXZp
Y2UgKm1kZXYsIHUxNiBpZCk7CiAKIGV4dGVybiBzdHJ1Y3QgYnVzX3R5cGUgbWRldl9idXNfdHlw
ZTsKIApAQCAtMTQ1LDQgKzE0OCw5IEBAIHN0cnVjdCBkZXZpY2UgKm1kZXZfcGFyZW50X2Rldihz
dHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpOwogc3RydWN0IGRldmljZSAqbWRldl9kZXYoc3RydWN0
IG1kZXZfZGV2aWNlICptZGV2KTsKIHN0cnVjdCBtZGV2X2RldmljZSAqbWRldl9mcm9tX2Rldihz
dHJ1Y3QgZGV2aWNlICpkZXYpOwogCitlbnVtIHsKKwlNREVWX0NMQVNTX0lEX1ZGSU8gPSAxLAor
CS8qIE5ldyBlbnRyaWVzIG11c3QgYmUgYWRkZWQgaGVyZSAqLworfTsKKwogI2VuZGlmIC8qIE1E
RVZfSCAqLwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9tb2RfZGV2aWNldGFibGUuaCBiL2lu
Y2x1ZGUvbGludXgvbW9kX2RldmljZXRhYmxlLmgKaW5kZXggNTcxNGZkMzVhODNjLi5mMzJjNmU0
NGZiMWEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvbW9kX2RldmljZXRhYmxlLmgKKysrIGIv
aW5jbHVkZS9saW51eC9tb2RfZGV2aWNldGFibGUuaApAQCAtODIxLDQgKzgyMSwxMiBAQCBzdHJ1
Y3Qgd21pX2RldmljZV9pZCB7CiAJY29uc3Qgdm9pZCAqY29udGV4dDsKIH07CiAKKy8qKgorICog
c3RydWN0IG1kZXZfY2xhc3NfaWQgLSBNREVWIGRldmljZSBjbGFzcyBpZGVudGlmaWVyCisgKiBA
aWQ6IFVzZWQgdG8gaWRlbnRpZnkgYSBzcGVjaWZpYyBjbGFzcyBvZiBkZXZpY2UsIGUuZyB2Zmlv
LW1kZXYgZGV2aWNlLgorICovCitzdHJ1Y3QgbWRldl9jbGFzc19pZCB7CisJX191MTYgaWQ7Cit9
OworCiAjZW5kaWYgLyogTElOVVhfTU9EX0RFVklDRVRBQkxFX0ggKi8KZGlmZiAtLWdpdCBhL3Nh
bXBsZXMvdmZpby1tZGV2L21ib2Nocy5jIGIvc2FtcGxlcy92ZmlvLW1kZXYvbWJvY2hzLmMKaW5k
ZXggYWM1YzhjMTdiMWZmLi4xMTViYzUwNzQ2NTYgMTAwNjQ0Ci0tLSBhL3NhbXBsZXMvdmZpby1t
ZGV2L21ib2Nocy5jCisrKyBiL3NhbXBsZXMvdmZpby1tZGV2L21ib2Nocy5jCkBAIC01NjEsNiAr
NTYxLDcgQEAgc3RhdGljIGludCBtYm9jaHNfY3JlYXRlKHN0cnVjdCBrb2JqZWN0ICprb2JqLCBz
dHJ1Y3QgbWRldl9kZXZpY2UgKm1kZXYpCiAJbWJvY2hzX3Jlc2V0KG1kZXYpOwogCiAJbWJvY2hz
X3VzZWRfbWJ5dGVzICs9IHR5cGUtPm1ieXRlczsKKwltZGV2X3NldF9jbGFzcyhtZGV2LCBNREVW
X0NMQVNTX0lEX1ZGSU8pOwogCXJldHVybiAwOwogCiBlcnJfbWVtOgpkaWZmIC0tZ2l0IGEvc2Ft
cGxlcy92ZmlvLW1kZXYvbWRweS5jIGIvc2FtcGxlcy92ZmlvLW1kZXYvbWRweS5jCmluZGV4IGNj
ODZiZjY1NjZlNC4uNjY1NjE0NTc0ZDUwIDEwMDY0NAotLS0gYS9zYW1wbGVzL3ZmaW8tbWRldi9t
ZHB5LmMKKysrIGIvc2FtcGxlcy92ZmlvLW1kZXYvbWRweS5jCkBAIC0yNjksNiArMjY5LDcgQEAg
c3RhdGljIGludCBtZHB5X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29iaiwgc3RydWN0IG1kZXZf
ZGV2aWNlICptZGV2KQogCW1kcHlfcmVzZXQobWRldik7CiAKIAltZHB5X2NvdW50Kys7CisJbWRl
dl9zZXRfY2xhc3MobWRldiwgTURFVl9DTEFTU19JRF9WRklPKTsKIAlyZXR1cm4gMDsKIH0KIApk
aWZmIC0tZ2l0IGEvc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jIGIvc2FtcGxlcy92ZmlvLW1kZXYv
bXR0eS5jCmluZGV4IGNlODRhMzAwYTRkYS4uOTBkYTEyZmY3ZmQ5IDEwMDY0NAotLS0gYS9zYW1w
bGVzL3ZmaW8tbWRldi9tdHR5LmMKKysrIGIvc2FtcGxlcy92ZmlvLW1kZXYvbXR0eS5jCkBAIC03
NTUsNiArNzU1LDcgQEAgc3RhdGljIGludCBtdHR5X2NyZWF0ZShzdHJ1Y3Qga29iamVjdCAqa29i
aiwgc3RydWN0IG1kZXZfZGV2aWNlICptZGV2KQogCWxpc3RfYWRkKCZtZGV2X3N0YXRlLT5uZXh0
LCAmbWRldl9kZXZpY2VzX2xpc3QpOwogCW11dGV4X3VubG9jaygmbWRldl9saXN0X2xvY2spOwog
CisJbWRldl9zZXRfY2xhc3MobWRldiwgTURFVl9DTEFTU19JRF9WRklPKTsKIAlyZXR1cm4gMDsK
IH0KIAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
