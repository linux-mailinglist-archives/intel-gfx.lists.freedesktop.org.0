Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE81100D1B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 21:27:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16C189798;
	Mon, 18 Nov 2019 20:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 681FC6E82C
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 20:27:25 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-252-KhFeYBiGMfSMgM9MtWdDhQ-1; Mon, 18 Nov 2019 15:27:22 -0500
Received: by mail-wm1-f71.google.com with SMTP id y14so700365wmi.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 12:27:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4CSRr0wqSYSaWBGreVA5UshqfJyUlItqJkHJJ7DXvXA=;
 b=F9uPzVTj+U7KvXz4JsP8KA19EbnKtVKw2ubX8jeg3HRz/ua7Ymmuf+0KSsy+jq83SY
 hZMNkybVwWmYYZ042xIcKC78GCmYg6I9tCjyQTVY1fXL4eVHBGJ6SlMiVPa0JvUjjB+e
 yAG6ZBksgsrPf82Wd2GcJzKBBY3dBSRugmFP/cZxnkdcesXM7XZC7whFJNdc20gXONtJ
 WwPhlydzRtPwhMtCZlCBxS8cooyfYuSkEelATMvVBishTt9fC+uosBzvRC8+iveMCxMj
 jHutoSn6BlZsz64tjeN6c3SfZ5UKykzTwmqNzRej56lXgYGR28EgmsJJiYcgBuoAEwu+
 PAWw==
X-Gm-Message-State: APjAAAVbs9O4lYHf6DuBHnO2CEVIyJtysWAcHvySMhjM2D0RUxqRUGn8
 uiTJSHJaiWXuMpL8yCaPOaZwaRK6R7u37P7L1PpA2Zv5Og086ugeQDlkApd9+/g02VhQHr9POJU
 B7b3umwSQGN4WSmzOEhQ95ePYC8Zo
X-Received: by 2002:a5d:490c:: with SMTP id x12mr19881052wrq.301.1574108841331; 
 Mon, 18 Nov 2019 12:27:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqw31yFDrp/nUVQehJkoIE0NmJKGe+zacK1mZHaf8dckH0iFWZ5NwNGMNlo/b/EQ1sdZlgIyIA==
X-Received: by 2002:a5d:490c:: with SMTP id x12mr19881034wrq.301.1574108841171; 
 Mon, 18 Nov 2019 12:27:21 -0800 (PST)
Received: from redhat.com (bzq-79-176-6-42.red.bezeqint.net. [79.176.6.42])
 by smtp.gmail.com with ESMTPSA id l10sm27849030wrg.90.2019.11.18.12.27.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 12:27:20 -0800 (PST)
Date: Mon, 18 Nov 2019 15:27:13 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Gunthorpe <jgg@mellanox.com>
Message-ID: <20191118152642-mutt-send-email-mst@kernel.org>
References: <20191118105923.7991-1-jasowang@redhat.com>
 <20191118105923.7991-5-jasowang@redhat.com>
 <20191118134056.GJ3873@mellanox.com>
MIME-Version: 1.0
In-Reply-To: <20191118134056.GJ3873@mellanox.com>
X-MC-Unique: KhFeYBiGMfSMgM9MtWdDhQ-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1574108844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MrzR/CZ37kLKu+aMpz2wgHs5trU1arLDMcmgOmdvzKE=;
 b=Lv44yPgCvTGDZqIWkm4yOiYUBKjFRCdxh8Y8rple1+Wl4tNj5KY+ynYcBsvI5dzOud0yLT
 vW/lRpfYHoqyh2cFhKq6KpfYr9QmFQLHNfvuX3RunPMdU42d8o+sMSf1y81XTm5dPbG/sX
 P4/dN5o6uM4d3xlQe48cDC8BGN70Gzc=
Subject: Re: [Intel-gfx] [PATCH V13 4/6] mdev: introduce mediated virtio bus
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
Cc: "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "christophe.de.dinechin@gmail.com" <christophe.de.dinechin@gmail.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, "airlied@linux.ie" <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 "heiko.carstens@de.ibm.com" <heiko.carstens@de.ibm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "oberpar@linux.ibm.com" <oberpar@linux.ibm.com>,
 "kwankhede@nvidia.com" <kwankhede@nvidia.com>,
 "rob.miller@broadcom.com" <rob.miller@broadcom.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "sebott@linux.ibm.com" <sebott@linux.ibm.com>,
 "lulu@redhat.com" <lulu@redhat.com>,
 "eperezma@redhat.com" <eperezma@redhat.com>,
 "pasic@linux.ibm.com" <pasic@linux.ibm.com>,
 "borntraeger@de.ibm.com" <borntraeger@de.ibm.com>,
 "haotian.wang@sifive.com" <haotian.wang@sifive.com>,
 "jeffrey.t.kirsher@intel.com" <jeffrey.t.kirsher@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "farman@linux.ibm.com" <farman@linux.ibm.com>,
 Parav Pandit <parav@mellanox.com>, "gor@linux.ibm.com" <gor@linux.ibm.com>,
 "cunming.liang@intel.com" <cunming.liang@intel.com>,
 "xiao.w.wang@intel.com" <xiao.w.wang@intel.com>,
 "freude@linux.ibm.com" <freude@linux.ibm.com>,
 "stefanha@redhat.com" <stefanha@redhat.com>,
 "zhihong.wang@intel.com" <zhihong.wang@intel.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "akrowiak@linux.ibm.com" <akrowiak@linux.ibm.com>,
 "aadam@redhat.com" <aadam@redhat.com>, Jiri Pirko <jiri@mellanox.com>,
 "tiwei.bie@intel.com" <tiwei.bie@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "maxime.coquelin@redhat.com" <maxime.coquelin@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "lingshan.zhu@intel.com" <lingshan.zhu@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMDE6NDE6MDBQTSArMDAwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIE1vbiwgTm92IDE4LCAyMDE5IGF0IDA2OjU5OjIxUE0gKzA4MDAsIEphc29u
IFdhbmcgd3JvdGU6Cj4gPiArc3RydWN0IGJ1c190eXBlIG1kZXZfdmlydGlvX2J1c190eXBlOwo+
ID4gKwo+ID4gK3N0cnVjdCBtZGV2X3ZpcnRpb19kZXZpY2Ugewo+ID4gKwlzdHJ1Y3QgbWRldl9k
ZXZpY2UgbWRldjsKPiA+ICsJY29uc3Qgc3RydWN0IG1kZXZfdmlydGlvX29wcyAqb3BzOwo+ID4g
Kwl1MTYgY2xhc3NfaWQ7Cj4gPiArfTsKPiAKPiBUaGlzIHNlZW1zIHRvIHNoYXJlIG5vdGhpbmcg
d2l0aCBtZGV2IChpZSBtZGV2LXZmaW8pLCB3aHkgaXMgaXQgb24gdGhlCj4gc2FtZSBidXM/CgpJ
IG11c3QgYmUgbWlzc2luZyBzb21ldGhpbmcgLSB3aGljaCBidXMgZG8gdGhleSBzaGFyZT8KCi0t
IApNU1QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
