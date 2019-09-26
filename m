Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F2DBED48
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 10:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20FE76EE63;
	Thu, 26 Sep 2019 08:21:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC116EE61
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 08:21:46 +0000 (UTC)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BEB0881F11
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 08:21:45 +0000 (UTC)
Received: by mail-qt1-f197.google.com with SMTP id z25so51141qtn.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 01:21:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hhU99cCB7XpvTN2fcxp8EjIrPOBFerG9ZEfadnPits4=;
 b=p+xtlk/znLhI+6Ogo1Lt44YRXCymo+nyXlOqmcmu9kOqMZ8uILcOIug1Yfsw/wwhh8
 c1AdpfQgYZtKv6SUYDKJT0Q3uuFHWXN24BC5Pq96ZOsrKifQm0dxjl5PXRm/BLKOt6kk
 xhMhci+Sray9dsu/83gOX19+s5VYOFsv6tIyPv4NnY+j0olY4mjl4jlb/OixbpT8gWty
 bnVe0gKuKj1DbhXHGZKMeiAePptyCnPmsOa6U57TlKWntWp3/TPiw6dF1mxpmbMXx9AR
 jU9glU6hn6MsBNYoXbWo7aDpX7xPqDFrXfL/8x+kPgo+JZTspEZ2aCPRF/FZvvWeVNNt
 sEyw==
X-Gm-Message-State: APjAAAXUGrX6XFbfxmfKuB1htqbmQhEu+DDBTci7ViMEBQX6owR4m5aw
 0XscfVUI7HS556Ikpar5OLHsLuS6RXuR6nC3lh2o9V2HjRSWJoqQsreOyhqtGRA7Xl40hT4bp0k
 0y6CyXXgI4lvXFXe/kxtsDPMcFOL6
X-Received: by 2002:a37:d84:: with SMTP id 126mr1845504qkn.407.1569486105083; 
 Thu, 26 Sep 2019 01:21:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQ1sVd1RtjNN4RR2UjNtY+bztkqyrSkS/Hzvn/M5fL9tuYPUVoOD4Dv1RZQ64O49sodkiqzw==
X-Received: by 2002:a37:d84:: with SMTP id 126mr1845463qkn.407.1569486104789; 
 Thu, 26 Sep 2019 01:21:44 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id 199sm632146qkk.112.2019.09.26.01.21.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 01:21:43 -0700 (PDT)
Date: Thu, 26 Sep 2019 04:21:31 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20190926042102-mutt-send-email-mst@kernel.org>
References: <20190924135332.14160-1-jasowang@redhat.com>
 <20190924135332.14160-7-jasowang@redhat.com>
 <AADFC41AFE54684AB9EE6CBC0274A5D19D58F7DA@SHSMSX104.ccr.corp.intel.com>
 <2210d23d-38e4-e654-e53d-7867348de86a@redhat.com>
 <20190925092044-mutt-send-email-mst@kernel.org>
 <eb7c76b5-2938-2e73-d847-b174a289c5c9@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb7c76b5-2938-2e73-d847-b174a289c5c9@redhat.com>
Subject: Re: [Intel-gfx] [PATCH V2 6/8] mdev: introduce virtio device and
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
Cc: "christophe.de.dinechin@gmail.com" <christophe.de.dinechin@gmail.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "heiko.carstens@de.ibm.com" <heiko.carstens@de.ibm.com>,
 "farman@linux.ibm.com" <farman@linux.ibm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>,
 "kwankhede@nvidia.com" <kwankhede@nvidia.com>,
 "rob.miller@broadcom.com" <rob.miller@broadcom.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "sebott@linux.ibm.com" <sebott@linux.ibm.com>,
 "lulu@redhat.com" <lulu@redhat.com>,
 "eperezma@redhat.com" <eperezma@redhat.com>,
 "pasic@linux.ibm.com" <pasic@linux.ibm.com>,
 "borntraeger@de.ibm.com" <borntraeger@de.ibm.com>,
 "haotian.wang@sifive.com" <haotian.wang@sifive.com>, "Liang,
 Cunming" <cunming.liang@intel.com>, "idos@mellanox.com" <idos@mellanox.com>,
 "gor@linux.ibm.com" <gor@linux.ibm.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wang,
 Xiao W" <xiao.w.wang@intel.com>, "freude@linux.ibm.com" <freude@linux.ibm.com>,
 "parav@mellanox.com" <parav@mellanox.com>, "Wang,
 Zhihong" <zhihong.wang@intel.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "akrowiak@linux.ibm.com" <akrowiak@linux.ibm.com>,
 "oberpar@linux.ibm.com" <oberpar@linux.ibm.com>, "Bie,
 Tiwei" <tiwei.bie@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "maxime.coquelin@redhat.com" <maxime.coquelin@redhat.com>, "Zhu,
 Lingshan" <lingshan.zhu@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgMTI6MDQ6NDZQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiA+ID4gPiBJJ20gbm90IHN1cmUgaG93IHN0YWJsZSBhYm92ZSBvcHMgYXJlLgo+ID4gPiBJ
dCdzIHRoZSBrZXJuZWwgaW50ZXJuYWwgQVBJLCBzbyB0aGVyZSdzIG5vIHN0cmljdCByZXF1aXJl
bWVudCBmb3IgdGhpcy4gV2UKPiA+ID4gd2lsbCBleHBvcnQgYSB2ZXJzaW9uIHZhbHVlIGZvciB1
c2Vyc3BhY2UgZm9yIGNvbXBhdGliaWxpdHkuCj4gPiBHaXZlbiBpdCdzIHRpZWQgdG8gdmlydGlv
IHdlIHByb2JhYmx5IHdhbnQga2VybmVsK3VzZXJzcGFjZQo+ID4gZmVhdHVyZSBiaXRzPwo+IAo+
IAo+IFllcywgdGhlbiBJIHRoaW5rIHdlIGNvdWxkIHByb2JhYmx5IGhhdmUgYSB2ZXJzaW9uIGZp
ZWxkIGluc2lkZSBlLmcKPiBkZXZpY2Vfb3BzIHN0cnVjdHVyZS4gVGhlbiBpdCBjb3VsZCBiZSBm
ZXRjaGVkIGZyb20gYm90aCBrZXJuZWwgYW5kCj4gdXNlcnNwYWNlIGRyaXZlci4KPiAKPiBUaGFu
a3MKPiAKCgpteSBwb2ludCB3YXMgZmVhdHVyZSBiaXRzIG5vdCBhIHZlcnNpb24gbnVtYmVyLgoK
PiA+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
