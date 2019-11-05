Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC74EF3FB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 04:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BA356E8E8;
	Tue,  5 Nov 2019 03:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B490D6E8E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 03:19:23 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-133-QYfxRTI1PLOj3fR3gSxtGg-1; Mon, 04 Nov 2019 22:19:18 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01604800C73;
 Tue,  5 Nov 2019 03:19:15 +0000 (UTC)
Received: from [10.72.12.252] (ovpn-12-252.pek2.redhat.com [10.72.12.252])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2D2105D6D4;
 Tue,  5 Nov 2019 03:17:29 +0000 (UTC)
To: Alex Williamson <alex.williamson@redhat.com>
References: <20191104123952.17276-1-jasowang@redhat.com>
 <20191104123952.17276-4-jasowang@redhat.com>
 <20191104145008.4b6839f0@x1.home>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <47ecfe09-0954-9517-3ac5-68db8522826d@redhat.com>
Date: Tue, 5 Nov 2019 11:17:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191104145008.4b6839f0@x1.home>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: QYfxRTI1PLOj3fR3gSxtGg-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1572923962;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j5OzLFkpAUjCP+yb4lupAMQyPwr8X3YeEPsxi0E3pqk=;
 b=idBUDc/L0fQPyhkz+QLD4dITLCRpESWGCz02q6XA28QK7ME0kIeGrhWHKmRnB2tP7c9oRV
 TSU6UdxMFB3cih1qi7RXBjeMonuEN9kTk0gM5SB1yfBl4ACqT4rXx/Qb2Kf9bRE9K6mLjh
 DqFWSoebVpZCPKvKtpb2jp4POCnQ1cQ=
Subject: Re: [Intel-gfx] [PATCH V7 3/6] mdev: introduce device specific ops
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

Ck9uIDIwMTkvMTEvNSDkuIrljYg1OjUwLCBBbGV4IFdpbGxpYW1zb24gd3JvdGU6Cj4+ICAgRVhQ
T1JUX1NZTUJPTChtZGV2X3NldF9kcnZkYXRhKTsKPj4gICAKPj4gKwo+IEV4dHJhIHdoaXRlc3Bh
Y2UKPgo+PiAgIC8qIFNwZWNpZnkgdGhlIGNsYXNzIGZvciB0aGUgbWRldiBkZXZpY2UsIHRoaXMg
bXVzdCBiZSBjYWxsZWQgZHVyaW5nCj4+IC0gKiBjcmVhdGUoKSBjYWxsYmFjay4KPj4gLSAqLwo+
PiArICogY3JlYXRlKCkgY2FsbGJhY2sgZXhwbGljaXRseSBvciBpbXBsaWNpdHkgdGhyb3VnaCB0
aGUgaGVscGVycwo+IHMvaW1wbGljaXR5L2ltcGxpY2l0bHkvCj4KPj4gKyAqIHByb3ZpZGVkIGJ5
IGVhY2ggY2xhc3MuICovCj4+ICAgdm9pZCBtZGV2X3NldF9jbGFzcyhzdHJ1Y3QgbWRldl9kZXZp
Y2UgKm1kZXYsIHUxNiBpZCkKPj4gICB7Cj4+ICAgCVdBUk5fT04obWRldi0+Y2xhc3NfaWQpOwo+
PiBAQCAtNTUsNiArNTYsMjYgQEAgdm9pZCBtZGV2X3NldF9jbGFzcyhzdHJ1Y3QgbWRldl9kZXZp
Y2UgKm1kZXYsIHUxNiBpZCkKPj4gICB9Cj4+ICAgRVhQT1JUX1NZTUJPTChtZGV2X3NldF9jbGFz
cyk7Cj4+ICAgCj4+ICsvKiBTcGVjaWZ5IHRoZSBtZGV2IGRldmljZSB0byBiZSBhIFZGSU8gbWRl
diBkZXZpY2UsIGFuZCBzZXQgVkZJTwo+PiArICogZGV2aWNlIG9wcyBmb3IgaXQuIFRoaXMgbXVz
dCBiZSBjYWxsZWQgZnJvbSB0aGUgY3JlYXRlKCkgY2FsbGJhY2sKPj4gKyAqIGZvciBWRklPIG1k
ZXYgZGV2aWNlLgo+PiArICovCj4gQ29tbWVudCBzdHlsZS4gIFRoYW5rcywKCgpXaWxsIGZpeCB0
aGVtIGFsbC4KClRoYW5rcwoKCj4KPiBBbGV4Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
