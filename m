Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 558A3F146A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 11:53:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1996ECD4;
	Wed,  6 Nov 2019 10:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0303F6ECD5
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 10:53:07 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-392-mVGv6jnnOgi-Oc91bWdiHA-1; Wed, 06 Nov 2019 05:53:03 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74B7C8017DD;
 Wed,  6 Nov 2019 10:52:59 +0000 (UTC)
Received: from gondolin (dhcp-192-218.str.redhat.com [10.33.192.218])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2863E10013D9;
 Wed,  6 Nov 2019 10:52:36 +0000 (UTC)
Date: Wed, 6 Nov 2019 11:52:33 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20191106115233.79bdbc1c.cohuck@redhat.com>
In-Reply-To: <20191106070548.18980-4-jasowang@redhat.com>
References: <20191106070548.18980-1-jasowang@redhat.com>
 <20191106070548.18980-4-jasowang@redhat.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: mVGv6jnnOgi-Oc91bWdiHA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1573037587;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MkKeCgkVUq/k/URpvBggClnu00dCnD5SCCD9xuWRcUs=;
 b=RNgiP2grdo6uLObEflhUey/adOCOVGnb61TItrLZSSLwJEjrZjAvFWlZezr/0k9uZqOwjH
 YpzG2BPNIGHLX8JECMHhnU5do168cEjHYU0hqNoky7FQhyfG0aZtq19MO9ZvUii1VOlIoO
 xpt6rrxU51RBDTEuk+FaRgpvG9oHsLE=
Subject: Re: [Intel-gfx] [PATCH V9 3/6] mdev: introduce device specific ops
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

T24gV2VkLCAgNiBOb3YgMjAxOSAxNTowNTo0NSArMDgwMApKYXNvbiBXYW5nIDxqYXNvd2FuZ0By
ZWRoYXQuY29tPiB3cm90ZToKCj4gQ3VycmVudGx5LCBleGNlcHQgZm9yIHRoZSBjcmVhdGUgYW5k
IHJlbW92ZSwgdGhlIHJlc3Qgb2YKPiBtZGV2X3BhcmVudF9vcHMgaXMgZGVzaWduZWQgZm9yIHZm
aW8tbWRldiBkcml2ZXIgb25seSBhbmQgbWF5IG5vdCBoZWxwCj4gZm9yIGtlcm5lbCBtZGV2IGRy
aXZlci4gV2l0aCB0aGUgaGVscCBvZiBjbGFzcyBpZCwgdGhpcyBwYXRjaAo+IGludHJvZHVjZXMg
ZGV2aWNlIHNwZWNpZmljIGNhbGxiYWNrcyBpbnNpZGUgbWRldl9kZXZpY2UKPiBzdHJ1Y3R1cmUu
IFRoaXMgYWxsb3dzIGRpZmZlcmVudCBzZXQgb2YgY2FsbGJhY2sgdG8gYmUgdXNlZCBieQo+IHZm
aW8tbWRldiBhbmQgdmlydGlvLW1kZXYuCj4gCj4gUmV2aWV3ZWQtYnk6IFBhcmF2IFBhbmRpdCA8
cGFyYXZAbWVsbGFub3guY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphc29uIFdhbmcgPGphc293YW5n
QHJlZGhhdC5jb20+Cj4gLS0tCj4gIC4uLi9kcml2ZXItYXBpL3ZmaW8tbWVkaWF0ZWQtZGV2aWNl
LnJzdCAgICAgICB8IDM1ICsrKysrKysrKy0tLS0KPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQv
a3ZtZ3QuYyAgICAgICAgICAgICAgfCAxOCArKysrLS0tCj4gIGRyaXZlcnMvczM5MC9jaW8vdmZp
b19jY3dfb3BzLmMgICAgICAgICAgICAgICB8IDE4ICsrKystLS0KPiAgZHJpdmVycy9zMzkwL2Ny
eXB0by92ZmlvX2FwX29wcy5jICAgICAgICAgICAgIHwgMTQgKysrLS0KPiAgZHJpdmVycy92Zmlv
L21kZXYvbWRldl9jb3JlLmMgICAgICAgICAgICAgICAgIHwgMjQgKysrKysrKystCj4gIGRyaXZl
cnMvdmZpby9tZGV2L21kZXZfcHJpdmF0ZS5oICAgICAgICAgICAgICB8ICA1ICsrCj4gIGRyaXZl
cnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jICAgICAgICAgICAgICAgICB8IDM3ICsrKysrKy0tLS0t
LS0KPiAgaW5jbHVkZS9saW51eC9tZGV2LmggICAgICAgICAgICAgICAgICAgICAgICAgIHwgNDMg
KysrKy0tLS0tLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvbWRldl92ZmlvX29wcy5oICAgICAgICAg
ICAgICAgICB8IDUyICsrKysrKysrKysrKysrKysrKysKPiAgc2FtcGxlcy92ZmlvLW1kZXYvbWJv
Y2hzLmMgICAgICAgICAgICAgICAgICAgIHwgMjAgKysrKy0tLQo+ICBzYW1wbGVzL3ZmaW8tbWRl
di9tZHB5LmMgICAgICAgICAgICAgICAgICAgICAgfCAyMCArKysrLS0tCj4gIHNhbXBsZXMvdmZp
by1tZGV2L210dHkuYyAgICAgICAgICAgICAgICAgICAgICB8IDE4ICsrKystLS0KPiAgMTMgZmls
ZXMgY2hhbmdlZCwgMjA2IGluc2VydGlvbnMoKyksIDk5IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZGV2X3ZmaW9fb3BzLmgKClJldmlld2VkLWJ5OiBD
b3JuZWxpYSBIdWNrIDxjb2h1Y2tAcmVkaGF0LmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
