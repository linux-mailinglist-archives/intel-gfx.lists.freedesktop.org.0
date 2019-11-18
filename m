Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A3E10030B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 11:57:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D87689E1A;
	Mon, 18 Nov 2019 10:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3524689BD4
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 10:57:25 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-111-hr9bWVrxM529z-fYzESVsg-1; Mon, 18 Nov 2019 05:57:22 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0BD618B9FC1;
 Mon, 18 Nov 2019 10:57:17 +0000 (UTC)
Received: from [10.72.12.65] (ovpn-12-65.pek2.redhat.com [10.72.12.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id ADA2D3AA1;
 Mon, 18 Nov 2019 10:56:53 +0000 (UTC)
To: "Michael S. Tsirkin" <mst@redhat.com>
References: <20191118061703.8669-1-jasowang@redhat.com>
 <20191118061703.8669-6-jasowang@redhat.com>
 <20191118054339-mutt-send-email-mst@kernel.org>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <a59bf414-aefb-954c-86ea-b970513171bf@redhat.com>
Date: Mon, 18 Nov 2019 18:56:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191118054339-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: hr9bWVrxM529z-fYzESVsg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1574074644;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RiF+p1hy9Kr+uofiPsIUHftIM+sRWQxv7Wn5qjHLaOI=;
 b=Fw167ABsbhuEy2H3pSTLlYg0N69c1p1JBTO04Xh1+8dqBHXhN8Vz+UGDasFAZR/0hsZghW
 JEinxV5o00BD0Lg1SlLbLGRgd89kYCNNBw9tXtJlBqop8wcXZUAgkGGDIEu2n7rVSchJA0
 47Rwz4uq+vt7b1f58jfAJRLz5Pxf1ZQ=
Subject: Re: [Intel-gfx] [PATCH V12 5/6] virtio: introduce a mdev based
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
Cc: rdunlap@infradead.org, christophe.de.dinechin@gmail.com,
 kvm@vger.kernel.org, hch@infradead.org, airlied@linux.ie,
 heiko.carstens@de.ibm.com, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, kwankhede@nvidia.com,
 jgg@mellanox.com, rob.miller@broadcom.com, linux-s390@vger.kernel.org,
 sebott@linux.ibm.com, lulu@redhat.com, eperezma@redhat.com,
 pasic@linux.ibm.com, borntraeger@de.ibm.com, haotian.wang@sifive.com,
 cunming.liang@intel.com, farman@linux.ibm.com, parav@mellanox.com,
 gor@linux.ibm.com, intel-gfx@lists.freedesktop.org, xiao.w.wang@intel.com,
 freude@linux.ibm.com, stefanha@redhat.com, zhihong.wang@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com,
 oberpar@linux.ibm.com, tiwei.bie@intel.com, netdev@vger.kernel.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, maxime.coquelin@redhat.com,
 gregkh@linuxfoundation.org, lingshan.zhu@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwMTkvMTEvMTgg5LiL5Y2INjo0NCwgTWljaGFlbCBTLiBUc2lya2luIHdyb3RlOgo+PiAr
c3RhdGljIGNvbnN0IHN0cnVjdCBtZGV2X3ZpcnRpb19jbGFzc19pZCB2aXJ0aW9faWRfdGFibGVb
XSA9IHsKPj4gKwl7IE1ERVZfVklSVElPX0NMQVNTX0lEX1ZJUlRJTyB9LAo+PiArCXsgMCB9LAo+
PiArfTsKPj4gKwo+IERvIHdlIHN0aWxsIG5lZWQgdGhlIGNsYXNzIElEPyBJdCdzIGEgdmlydGlv
IG1kZXYgYnVzLAo+IGRvIHdlIG5lZWQgYSB2aXJ0aW8gY2xhc3MgYXMgd2VsbD8KPgoKSWYgd2Ug
d2FudCB0byBoYXZlIGF1dG8gbWF0Y2ggYmV0d2VlbiB2aG9zdC1tZGV2IGRyaXZlciBhbmQgdmhv
c3QtbWRldiAKZGV2aWNlLCB3ZSBuZWVkIHRoaXMuCgpPdGhlcndpc2UsIHVzZXIgbmVlZCB0byBt
YW51YWxseSBwcm9iZSBvciBiaW5kIGRyaXZlciB0byB0aGUgZGV2aWNlLgoKVGhhbmtzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
