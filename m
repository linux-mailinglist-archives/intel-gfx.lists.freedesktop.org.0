Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 610D4BB8D8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 18:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786706E967;
	Mon, 23 Sep 2019 16:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439376E968
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 16:00:55 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 95EB5C04BD48
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 16:00:54 +0000 (UTC)
Received: by mail-qk1-f200.google.com with SMTP id n135so18110071qke.23
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 09:00:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FnrZlG9onHbzoUOas395WBpQBkqdPWiXJrz3kgJAMNs=;
 b=K/xdwYVfeIi8FkWU1Ss/VT1QU5Tmk13GBS/A0tft8KB00FM5FFLqAmfQzl0N7gDrJ9
 w9A8nSwB0It+vfuv4bG9VM81j4Z/zstU9veD797XDV0EsBNWXYrQKOTxOJjpMc4qmV36
 vQg36oiCjzeVEtgbx5S/Mzq5OlvIPklRY2jgzgqAYujLayzJ0XApqcU8CpSfcE0tvfKp
 PW5fo5f3oLd5+Te9tWqA/JeWeHmK1/28Z3A8ijasE8jd3ZXfnJO9p3j4SJVdmi4ZckVq
 eSsEcRoV5D3GchIXyFozSAeJ9JGtRlOlLb9d68gjP41j2Am7KBZYt67T5Nh2/hKUOWf3
 kIeA==
X-Gm-Message-State: APjAAAX2Iyl2FSn1Ivx5FFHzU8qN+wmgGCqPwb5ib7wCU8PYizU8x1uB
 I0JVMXTpIFQnb2tG+uPmDaWKyq1UBd0mBkURoMxwm9oLIUhXDd4yaBjuGEUQEdb/77e7Fb3Vjs9
 pdW0WyqlL7zWWBq29TbLPcq6VxIDL
X-Received: by 2002:a0c:e48b:: with SMTP id n11mr25662883qvl.38.1569254453775; 
 Mon, 23 Sep 2019 09:00:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzeS0qH7VWztyzQkjfFK33LHuBL/0r9aVYJeACu8zWG4i5I+VaFWBP3hOAewtn9oF8WJysLNw==
X-Received: by 2002:a0c:e48b:: with SMTP id n11mr25662820qvl.38.1569254453463; 
 Mon, 23 Sep 2019 09:00:53 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id m125sm5840827qkd.3.2019.09.23.09.00.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 09:00:52 -0700 (PDT)
Date: Mon, 23 Sep 2019 12:00:41 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20190923115930-mutt-send-email-mst@kernel.org>
References: <20190923130331.29324-1-jasowang@redhat.com>
 <20190923130331.29324-6-jasowang@redhat.com>
 <20190923094559.765da494@x1.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923094559.765da494@x1.home>
Subject: Re: [Intel-gfx] [PATCH 5/6] vringh: fix copy direction of
 vringh_iov_push_kern()
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
Cc: kvm@vger.kernel.org, airlied@linux.ie, Jason Wang <jasowang@redhat.com>,
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

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMDk6NDU6NTlBTSAtMDYwMCwgQWxleCBXaWxsaWFtc29u
IHdyb3RlOgo+IE9uIE1vbiwgMjMgU2VwIDIwMTkgMjE6MDM6MzAgKzA4MDAKPiBKYXNvbiBXYW5n
IDxqYXNvd2FuZ0ByZWRoYXQuY29tPiB3cm90ZToKPiAKPiA+IFdlIHdhbnQgdG8gY29weSBmcm9t
IGlvdiB0byBidWYsIHNvIHRoZSBkaXJlY3Rpb24gd2FzIHdyb25nLgo+ID4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgo+ID4gLS0tCj4gPiAgZHJp
dmVycy92aG9zdC92cmluZ2guYyB8IDggKysrKysrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gCj4gV2h5IGlzIHRoaXMgaW5jbHVkZWQg
aW4gdGhlIHNlcmllcz8gIFNlZW1zIGxpa2UgYW4gdW5yZWxhdGVkIGZpeCBiZWluZwo+IGhlbGQg
dXAgd2l0aGluIGEgcHJvcG9zYWwgZm9yIGEgbmV3IGZlYXR1cmUuICBUaGFua3MsCj4gCj4gQWxl
eAoKSXQncyBiZXR0ZXIgdG8gaGF2ZSBpdCBhcyBwYXRjaCAxLzYsIGJ1dCBpdCdzIGEgZGVwZW5k
ZW5jeSBvZiB0aGUKZXhhbXBsZSBkcml2ZXIgaW4gdGhlIHNlcmllcy4gSSBjYW4gcmVvcmRlciB3
aGVuIEkgYXBwbHkuCgoKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Zob3N0L3ZyaW5naC5jIGIv
ZHJpdmVycy92aG9zdC92cmluZ2guYwo+ID4gaW5kZXggMDhhZDBkMWYwNDc2Li5hMGEyZDc0OTY3
ZWYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3Zob3N0L3ZyaW5naC5jCj4gPiArKysgYi9kcml2
ZXJzL3Zob3N0L3ZyaW5naC5jCj4gPiBAQCAtODUyLDYgKzg1MiwxMiBAQCBzdGF0aWMgaW5saW5l
IGludCB4ZmVyX2tlcm4odm9pZCAqc3JjLCB2b2lkICpkc3QsIHNpemVfdCBsZW4pCj4gPiAgCXJl
dHVybiAwOwo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgaW5saW5lIGludCBrZXJuX3hmZXIodm9p
ZCAqZHN0LCB2b2lkICpzcmMsIHNpemVfdCBsZW4pCj4gPiArewo+ID4gKwltZW1jcHkoZHN0LCBz
cmMsIGxlbik7Cj4gPiArCXJldHVybiAwOwo+ID4gK30KPiA+ICsKPiA+ICAvKioKPiA+ICAgKiB2
cmluZ2hfaW5pdF9rZXJuIC0gaW5pdGlhbGl6ZSBhIHZyaW5naCBmb3IgYSBrZXJuZWxzcGFjZSB2
cmluZy4KPiA+ICAgKiBAdnJoOiB0aGUgdnJpbmdoIHRvIGluaXRpYWxpemUuCj4gPiBAQCAtOTU4
LDcgKzk2NCw3IEBAIEVYUE9SVF9TWU1CT0wodnJpbmdoX2lvdl9wdWxsX2tlcm4pOwo+ID4gIHNz
aXplX3QgdnJpbmdoX2lvdl9wdXNoX2tlcm4oc3RydWN0IHZyaW5naF9raW92ICp3aW92LAo+ID4g
IAkJCSAgICAgY29uc3Qgdm9pZCAqc3JjLCBzaXplX3QgbGVuKQo+ID4gIHsKPiA+IC0JcmV0dXJu
IHZyaW5naF9pb3ZfeGZlcih3aW92LCAodm9pZCAqKXNyYywgbGVuLCB4ZmVyX2tlcm4pOwo+ID4g
KwlyZXR1cm4gdnJpbmdoX2lvdl94ZmVyKHdpb3YsICh2b2lkICopc3JjLCBsZW4sIGtlcm5feGZl
cik7Cj4gPiAgfQo+ID4gIEVYUE9SVF9TWU1CT0wodnJpbmdoX2lvdl9wdXNoX2tlcm4pOwo+ID4g
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
