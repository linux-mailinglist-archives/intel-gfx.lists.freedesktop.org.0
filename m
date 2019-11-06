Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1B0F2239
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 23:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D996EE41;
	Wed,  6 Nov 2019 22:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40D7B6E25D
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 22:58:20 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-YbiNC0ioPxK3IgeNVq5zwQ-1; Wed, 06 Nov 2019 17:58:14 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2C16107ACC3;
 Wed,  6 Nov 2019 22:58:10 +0000 (UTC)
Received: from x1.home (ovpn-116-138.phx2.redhat.com [10.3.116.138])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BF7AB5C1BB;
 Wed,  6 Nov 2019 22:58:00 +0000 (UTC)
Date: Wed, 6 Nov 2019 15:58:00 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <20191106155800.0b8418ec@x1.home>
In-Reply-To: <88efad07-70aa-3879-31e7-ace4d2ad63a1@infradead.org>
References: <20191106070548.18980-1-jasowang@redhat.com>
 <20191106070548.18980-7-jasowang@redhat.com>
 <88efad07-70aa-3879-31e7-ace4d2ad63a1@infradead.org>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: YbiNC0ioPxK3IgeNVq5zwQ-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1573081099;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9Clhu2rt+kpo43UbuiVcjjHoWtjEgIjo2tHeRtPjlyQ=;
 b=B6vfdaepfa3+69x0TohHweilHw1GMskuhz7jsj5C9OiVonWKe/QY6oI/HInYaFSA9RDNHu
 N16OO8/sMxFBE3mYS/cIHD4ciQ4RufUlY/7eLBMaZiJtBE9ENRlIcjVtK70Ndb2t1w4Lya
 DwiAP9OzgDwaKu3N8iK8ts1NVH8Xxuk=
Subject: Re: [Intel-gfx] [PATCH V9 6/6] docs: sample driver to demonstrate
 how to implement virtio-mdev framework
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
 mst@redhat.com, airlied@linux.ie, Jason Wang <jasowang@redhat.com>,
 heiko.carstens@de.ibm.com, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, kwankhede@nvidia.com,
 rob.miller@broadcom.com, linux-s390@vger.kernel.org, sebott@linux.ibm.com,
 lulu@redhat.com, eperezma@redhat.com, pasic@linux.ibm.com,
 borntraeger@de.ibm.com, haotian.wang@sifive.com,
 intel-gfx@lists.freedesktop.org, farman@linux.ibm.com, idos@mellanox.com,
 gor@linux.ibm.com, cunming.liang@intel.com, xiao.w.wang@intel.com,
 freude@linux.ibm.com, parav@mellanox.com, zhihong.wang@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com,
 oberpar@linux.ibm.com, tiwei.bie@intel.com, netdev@vger.kernel.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, maxime.coquelin@redhat.com,
 lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCA2IE5vdiAyMDE5IDE0OjUwOjMwIC0wODAwClJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPiB3cm90ZToKCj4gT24gMTEvNS8xOSAxMTowNSBQTSwgSmFzb24gV2FuZyB3
cm90ZToKPiA+IGRpZmYgLS1naXQgYS9zYW1wbGVzL0tjb25maWcgYi9zYW1wbGVzL0tjb25maWcK
PiA+IGluZGV4IGM4ZGFjYjRkZGE4MC4uMTNhMjQ0M2UxOGUwIDEwMDY0NAo+ID4gLS0tIGEvc2Ft
cGxlcy9LY29uZmlnCj4gPiArKysgYi9zYW1wbGVzL0tjb25maWcKPiA+IEBAIC0xMzEsNiArMTMx
LDE2IEBAIGNvbmZpZyBTQU1QTEVfVkZJT19NREVWX01EUFkKPiA+ICAJICBtZWRpYXRlZCBkZXZp
Y2UuICBJdCBpcyBhIHNpbXBsZSBmcmFtZWJ1ZmZlciBhbmQgc3VwcG9ydHMKPiA+ICAJICB0aGUg
cmVnaW9uIGRpc3BsYXkgaW50ZXJmYWNlIChWRklPX0dGWF9QTEFORV9UWVBFX1JFR0lPTikuCj4g
PiAgCj4gPiArY29uZmlnIFNBTVBMRV9WSVJUSU9fTURFVl9ORVQKPiA+ICsJdHJpc3RhdGUgIkJ1
aWxkIFZJUlRJTyBuZXQgZXhhbXBsZSBtZWRpYXRlZCBkZXZpY2Ugc2FtcGxlIGNvZGUgLS0gbG9h
ZGFibGUgbW9kdWxlcyBvbmx5Igo+ID4gKwlkZXBlbmRzIG9uIFZJUlRJT19NREVWICYmIFZIT1NU
X1JJTkcgJiYgbQo+ID4gKwloZWxwCj4gPiArCSAgQnVpbGQgYSBuZXR3b3JraW5nIHNhbXBsZSBk
ZXZpY2UgZm9yIHVzZSBhcyBhIHZpcnRpbwo+ID4gKwkgIG1lZGlhdGVkIGRldmljZS4gVGhlIGRl
dmljZSBjb29wcmVhdGVzIHdpdGggdmlydGlvLW1kZXYgYnVzICAKPiAKPiB0eXBvIGhlcmU6Cj4g
CSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvb3BlcmF0ZXMKPiAKCkkgY2FuIGZpeCB0
aGlzIG9uIGNvbW1pdCByZWxhdGl2ZSB0byBWMTAgaWYgdGhlcmUgYXJlIG5vIG90aGVyIGlzc3Vl
cwpyYWlzZWQ6CgpkaWZmIC0tZ2l0IGEvc2FtcGxlcy9LY29uZmlnIGIvc2FtcGxlcy9LY29uZmln
CmluZGV4IDEzYTI0NDNlMThlMC4uYjcxMTZkOTdjYmJlIDEwMDY0NAotLS0gYS9zYW1wbGVzL0tj
b25maWcKKysrIGIvc2FtcGxlcy9LY29uZmlnCkBAIC0xMzYsNyArMTM2LDcgQEAgY29uZmlnIFNB
TVBMRV9WSVJUSU9fTURFVl9ORVQKICAgICAgICBkZXBlbmRzIG9uIFZJUlRJT19NREVWICYmIFZI
T1NUX1JJTkcgJiYgbQogICAgICAgIGhlbHAKICAgICAgICAgIEJ1aWxkIGEgbmV0d29ya2luZyBz
YW1wbGUgZGV2aWNlIGZvciB1c2UgYXMgYSB2aXJ0aW8KLSAgICAgICAgIG1lZGlhdGVkIGRldmlj
ZS4gVGhlIGRldmljZSBjb29wcmVhdGVzIHdpdGggdmlydGlvLW1kZXYgYnVzCisgICAgICAgICBt
ZWRpYXRlZCBkZXZpY2UuIFRoZSBkZXZpY2UgY29vcGVyYXRlcyB3aXRoIHZpcnRpby1tZGV2IGJ1
cwogICAgICAgICAgZHJpdmVyIHRvIHByZXNlbnQgYW4gdmlydGlvIGV0aGVybmV0IGRyaXZlciBm
b3IKICAgICAgICAgIGtlcm5lbC4gSXQgc2ltcGx5IGxvb3BiYWNrcyBhbGwgcGFja2V0cyBmcm9t
IGl0cyBUWAogICAgICAgICAgdmlydHF1ZXVlIHRvIGl0cyBSWCB2aXJ0cXVldWUuCgpUaGFua3Ms
CkFsZXgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
