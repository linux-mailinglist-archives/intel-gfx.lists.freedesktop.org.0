Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4409F0D62
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 04:53:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D8A06EBE3;
	Wed,  6 Nov 2019 03:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA5906EBDF
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 03:53:45 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-s3GVRo2xO9Kh53Br-bjUiw-1; Tue, 05 Nov 2019 22:53:41 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE2061005500;
 Wed,  6 Nov 2019 03:53:36 +0000 (UTC)
Received: from [10.72.12.193] (ovpn-12-193.pek2.redhat.com [10.72.12.193])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 16874600C6;
 Wed,  6 Nov 2019 03:51:35 +0000 (UTC)
To: Alex Williamson <alex.williamson@redhat.com>
References: <20191105093240.5135-1-jasowang@redhat.com>
 <20191105093240.5135-5-jasowang@redhat.com> <20191105104710.16d0f629@x1.home>
From: Jason Wang <jasowang@redhat.com>
Message-ID: <0de9abaf-d740-f4c7-50ff-3bd68a50ab40@redhat.com>
Date: Wed, 6 Nov 2019 11:51:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191105104710.16d0f629@x1.home>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: s3GVRo2xO9Kh53Br-bjUiw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1573012424;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EaTbE+HmGj8bDfQK0HMuk+gfERcklzcbJD+zUHMoips=;
 b=LhNflBN+PrTgQwEkL5Fd+8csaEcGKVVgVJyT/E2WhSNoe/4Xq9E9s0/bHJ6MQjkG+VMp97
 xhmbxHnS59znS1kq0xxCIK+xeZeuSWAZ94liz7ydU08yqOlngCjacqI2zd66n+y6YwINos
 GSALM/6JGyHZTvtK99s2/CmavTMxiF0=
Subject: Re: [Intel-gfx] [PATCH V8 4/6] mdev: introduce virtio device and
 its device ops
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

Ck9uIDIwMTkvMTEvNiDkuIrljYgxOjQ3LCBBbGV4IFdpbGxpYW1zb24gd3JvdGU6Cj4+ICsjZGVm
aW5lIFZJUlRJT19NREVWX0RFVklDRV9BUElfU1RSSU5HCQkidmlydGlvLW1kZXYiCj4+ICsjZGVm
aW5lIFZJUlRJT19NREVWX0ZfVkVSU0lPTl8xIDB4MQo+IFRoaXMgZW50aXJlIGNvbmNlcHQgb2Yg
VklSVElPX01ERVZfRl9WRVJTSU9OXzEgaXMgZ29uZSBub3csIHJpZ2h0Pwo+IExldCdzIHJlbW92
ZSBpdCBoZXJlIGFuZCBiZWxvdy4gIFRoYW5rcywKPgo+IEFsZXgKPgoKWWVzLCB3aWxsIGZpeC4K
ClRoYW5rcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
