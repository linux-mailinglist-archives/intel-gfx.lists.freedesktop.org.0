Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F01FF051C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 19:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A126E0B9;
	Tue,  5 Nov 2019 18:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39D266E0B9
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 18:34:05 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-wKB1DIDFPlmgljNYjH5vkw-1; Tue, 05 Nov 2019 13:34:02 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F8751800D4A;
 Tue,  5 Nov 2019 18:33:58 +0000 (UTC)
Received: from gondolin (unknown [10.36.118.27])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9D4395D9C9;
 Tue,  5 Nov 2019 18:33:39 +0000 (UTC)
Date: Tue, 5 Nov 2019 19:33:36 +0100
From: Cornelia Huck <cohuck@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20191105193336.570e8e3a.cohuck@redhat.com>
In-Reply-To: <20191105093240.5135-6-jasowang@redhat.com>
References: <20191105093240.5135-1-jasowang@redhat.com>
 <20191105093240.5135-6-jasowang@redhat.com>
Organization: Red Hat GmbH
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: wKB1DIDFPlmgljNYjH5vkw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1572978844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=H9feM4A9AfoDIHKTuN0rynXXPyED946lrCjOtbhrTDw=;
 b=fy4f5oIVodgmX/8auhp1MWI6Iluwk/JeitPMpLHBXCyr4GgTsxVUmBD20s+pyzvH/OToIQ
 4CFD9M+MxtAIpB97F45jHgLxLlbHOX0TBUcnQFdMimug0GxnLTSmamcmGdrIZ4NHFC//gS
 vZk6zRrA/MnfRWvpz8fN5i+kGdMMFRo=
Subject: Re: [Intel-gfx] [PATCH V8 5/6] virtio: introduce a mdev based
 transport
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

T24gVHVlLCAgNSBOb3YgMjAxOSAxNzozMjozOSArMDgwMApKYXNvbiBXYW5nIDxqYXNvd2FuZ0By
ZWRoYXQuY29tPiB3cm90ZToKCj4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgbmV3IG1kZXYgdHJh
bnNwb3J0IGZvciB2aXJ0aW8uIFRoaXMgaXMgdXNlZCB0bwo+IHVzZSBrZXJuZWwgdmlydGlvIGRy
aXZlciB0byBkcml2ZSB0aGUgbWVkaWF0ZWQgZGV2aWNlIHRoYXQgaXMgY2FwYWJsZQo+IG9mIHBv
cHVsYXRpbmcgdmlydHF1ZXVlIGRpcmVjdGx5Lgo+IAo+IEEgbmV3IHZpcnRpby1tZGV2IGRyaXZl
ciB3aWxsIGJlIHJlZ2lzdGVyZWQgdG8gdGhlIG1kZXYgYnVzLCB3aGVuIGEKPiBuZXcgdmlydGlv
LW1kZXYgZGV2aWNlIGlzIHByb2JlZCwgaXQgd2lsbCByZWdpc3RlciB0aGUgZGV2aWNlIHdpdGgK
PiBtZGV2IGJhc2VkIGNvbmZpZyBvcHMuIFRoaXMgbWVhbnMgaXQgaXMgYSBzb2Z0d2FyZSB0cmFu
c3BvcnQgYmV0d2Vlbgo+IG1kZXYgZHJpdmVyIGFuZCBtZGV2IGRldmljZS4gVGhlIHRyYW5zcG9y
dCB3YXMgaW1wbGVtZW50ZWQgdGhyb3VnaAo+IGRldmljZSBzcGVjaWZpYyBvcHMgd2hpY2ggaXMg
YSBwYXJ0IG9mIG1kZXZfcGFyZW50X29wcyBub3cuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmFzb24g
V2FuZyA8amFzb3dhbmdAcmVkaGF0LmNvbT4KPiAtLS0KPiAgZHJpdmVycy92aXJ0aW8vS2NvbmZp
ZyAgICAgICB8ICAgNyArCj4gIGRyaXZlcnMvdmlydGlvL01ha2VmaWxlICAgICAgfCAgIDEgKwo+
ICBkcml2ZXJzL3ZpcnRpby92aXJ0aW9fbWRldi5jIHwgNDA3ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgNDE1IGluc2VydGlvbnMoKykKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvdmlydGlvL3ZpcnRpb19tZGV2LmMKClJldmlld2Vk
LWJ5OiBDb3JuZWxpYSBIdWNrIDxjb2h1Y2tAcmVkaGF0LmNvbT4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
