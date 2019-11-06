Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD45F1EB4
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 20:25:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1816EE29;
	Wed,  6 Nov 2019 19:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78856ECFA
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 19:25:38 +0000 (UTC)
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 46867821F5
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 19:25:38 +0000 (UTC)
Received: by mail-qk1-f199.google.com with SMTP id a129so25773734qkg.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Nov 2019 11:25:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=J/Zt/NfiTx+Ld2uAQJIUZCZlEBcXHtsRtDQxesGEOxE=;
 b=K/ofnU1FS+aULCWrjOhX86Kj8WYTzEoA+fCP+6I4gvX7P6Kd+GF4ZprOsuXpQZr9oq
 5Aep+D6IxIH8KVk3AWPjf7thIjq4UzuOfd32Q0oC3Zw9JdJQPTD5gfz5odpgIyxmIXin
 cK9oviGn0z3RBzfovG/J+eAMCrUrYyOP42PnJrJVRJkHlDRFATkFHJfgBoKx45SCFwLy
 XaRx7LJ60xPA0xLD4T9UiLYIiTpc4yvg/CoDrFHnKAHRRHkKwLQUoWY4SpKhZfp/uE2V
 4mqvUCdXGk/Ce6yDbkv1c8QOR/N4wBo8R6FWwc95ZBJm8m164wyxWxl/KuUrGOpPpbJe
 +pTQ==
X-Gm-Message-State: APjAAAVW4khtY3CTVRXhiQmQcRJsM5xTL1Jam7eyF18/jtxecmRp5SBl
 8MU17LR773haqNb6iNJRhs50HQX1v0GKMkFWaGcB5UrsRRRfpJExovOi6ky9mPWqiChuzJ3EJyh
 9Xm/dNROZciMOCu3T271x3elHkjYJ
X-Received: by 2002:a05:620a:226:: with SMTP id
 u6mr3561009qkm.393.1573068337473; 
 Wed, 06 Nov 2019 11:25:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqwVUeLBA9o5ynyS/oZRBUg3gqW1DOYZfoi4p5JLJ/1OKZhj6MjBGfohoGDCJio3vEXQLJQBsQ==
X-Received: by 2002:a05:620a:226:: with SMTP id
 u6mr3560981qkm.393.1573068337135; 
 Wed, 06 Nov 2019 11:25:37 -0800 (PST)
Received: from redhat.com (bzq-79-178-12-128.red.bezeqint.net. [79.178.12.128])
 by smtp.gmail.com with ESMTPSA id f39sm13094663qtb.26.2019.11.06.11.25.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 11:25:35 -0800 (PST)
Date: Wed, 6 Nov 2019 14:25:23 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20191106142449-mutt-send-email-mst@kernel.org>
References: <20191105093240.5135-1-jasowang@redhat.com>
 <20191105105834.469675f0@x1.home>
 <393f2dc9-8c67-d3c9-6553-640b80c15aaf@redhat.com>
 <20191106120312.77a6a318@x1.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106120312.77a6a318@x1.home>
Subject: Re: [Intel-gfx] [PATCH V8 0/6] mdev based hardware virtio
 offloading support
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
 airlied@linux.ie, Jason Wang <jasowang@redhat.com>, heiko.carstens@de.ibm.com,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 kwankhede@nvidia.com, rob.miller@broadcom.com, linux-s390@vger.kernel.org,
 sebott@linux.ibm.com, lulu@redhat.com, eperezma@redhat.com,
 pasic@linux.ibm.com, borntraeger@de.ibm.com, haotian.wang@sifive.com,
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

T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTI6MDM6MTJQTSAtMDcwMCwgQWxleCBXaWxsaWFtc29u
IHdyb3RlOgo+IE9uIFdlZCwgNiBOb3YgMjAxOSAxMTo1Njo0NiArMDgwMAo+IEphc29uIFdhbmcg
PGphc293YW5nQHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+ID4gT24gMjAxOS8xMS82IOS4iuWNiDE6
NTgsIEFsZXggV2lsbGlhbXNvbiB3cm90ZToKPiA+ID4gT24gVHVlLCAgNSBOb3YgMjAxOSAxNzoz
MjozNCArMDgwMAo+ID4gPiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPiB3cm90ZToK
PiA+ID4gIAo+ID4gPj4gSGkgYWxsOgo+ID4gPj4KPiA+ID4+IFRoZXJlIGFyZSBoYXJkd2FyZXMg
dGhhdCBjYW4gZG8gdmlydGlvIGRhdGFwYXRoIG9mZmxvYWRpbmcgd2hpbGUKPiA+ID4+IGhhdmlu
ZyBpdHMgb3duIGNvbnRyb2wgcGF0aC4gVGhpcyBwYXRoIHRyaWVzIHRvIGltcGxlbWVudCBhIG1k
ZXYgYmFzZWQKPiA+ID4+IHVuaWZpZWQgQVBJIHRvIHN1cHBvcnQgdXNpbmcga2VybmVsIHZpcnRp
byBkcml2ZXIgdG8gZHJpdmUgdGhvc2UKPiA+ID4+IGRldmljZXMuIFRoaXMgaXMgZG9uZSBieSBp
bnRyb2R1Y2luZyBhIG5ldyBtZGV2IHRyYW5zcG9ydCBmb3IgdmlydGlvCj4gPiA+PiAodmlydGlv
X21kZXYpIGFuZCByZWdpc3RlciBpdHNlbGYgYXMgYSBuZXcga2luZCBvZiBtZGV2IGRyaXZlci4g
VGhlbgo+ID4gPj4gaXQgcHJvdmlkZXMgYSB1bmlmaWVkIHdheSBmb3Iga2VybmVsIHZpcnRpbyBk
cml2ZXIgdG8gdGFsayB3aXRoIG1kZXYKPiA+ID4+IGRldmljZSBpbXBsZW1lbnRhdGlvbi4KPiA+
ID4+Cj4gPiA+PiBUaG91Z2ggdGhlIHNlcmllcyBvbmx5IGNvbnRhaW5zIGtlcm5lbCBkcml2ZXIg
c3VwcG9ydCwgdGhlIGdvYWwgaXMgdG8KPiA+ID4+IG1ha2UgdGhlIHRyYW5zcG9ydCBnZW5lcmlj
IGVub3VnaCB0byBzdXBwb3J0IHVzZXJzcGFjZSBkcml2ZXJzLiBUaGlzCj4gPiA+PiBtZWFucyB2
aG9zdC1tZGV2WzFdIGNvdWxkIGJlIGJ1aWx0IG9uIHRvcCBhcyB3ZWxsIGJ5IHJlc3VpbmcgdGhl
Cj4gPiA+PiB0cmFuc3BvcnQuCj4gPiA+Pgo+ID4gPj4gQSBzYW1wbGUgZHJpdmVyIGlzIGFsc28g
aW1wbGVtZW50ZWQgd2hpY2ggc2ltdWxhdGUgYSB2aXJpdG8tbmV0Cj4gPiA+PiBsb29wYmFjayBl
dGhlcm5ldCBkZXZpY2Ugb24gdG9wIG9mIHZyaW5naCArIHdvcmtxdWV1ZS4gVGhpcyBjb3VsZCBi
ZQo+ID4gPj4gdXNlZCBhcyBhIHJlZmVyZW5jZSBpbXBsZW1lbnRhdGlvbiBmb3IgcmVhbCBoYXJk
d2FyZSBkcml2ZXIuCj4gPiA+Pgo+ID4gPj4gQWxzbyBhIHJlYWwgSUNGIFZGIGRyaXZlciB3YXMg
YWxzbyBwb3N0ZWQgaGVyZVsyXSB3aGljaCBpcyBhIGdvb2QKPiA+ID4+IHJlZmVyZW5jZSBmb3Ig
dmVuZG9ycyB3aG8gaXMgaW50ZXJlc3RlZCBpbiB0aGVpciBvd24gdmlydGlvIGRhdGFwYXRoCj4g
PiA+PiBvZmZsb2FkaW5nIHByb2R1Y3QuCj4gPiA+Pgo+ID4gPj4gQ29uc2lkZXIgbWRldiBmcmFt
ZXdvcmsgb25seSBzdXBwb3J0IFZGSU8gZGV2aWNlIGFuZCBkcml2ZXIgcmlnaHQgbm93LAo+ID4g
Pj4gdGhpcyBzZXJpZXMgYWxzbyBleHRlbmQgaXQgdG8gc3VwcG9ydCBvdGhlciB0eXBlcy4gVGhp
cyBpcyBkb25lCj4gPiA+PiB0aHJvdWdoIGludHJvZHVjaW5nIGNsYXNzIGlkIHRvIHRoZSBkZXZp
Y2UgYW5kIHBhaXJpbmcgaXQgd2l0aAo+ID4gPj4gaWRfdGFsYmUgY2xhaW1lZCBieSB0aGUgZHJp
dmVyLiBPbiB0b3AsIHRoaXMgc2VyaXMgYWxzbyBkZWNvdXBsZQo+ID4gPj4gZGV2aWNlIHNwZWNp
ZmljIHBhcmVudHMgb3BzIG91dCBvZiB0aGUgY29tbW9uIG9uZXMuCj4gPiA+Pgo+ID4gPj4gUGt0
Z2VuIHRlc3Qgd2FzIGRvbmUgd2l0aCB2aXJpdG8tbmV0ICsgbXZuZXQgbG9vcCBiYWNrIGRldmlj
ZS4KPiA+ID4+Cj4gPiA+PiBQbGVhc2UgcmV2aWV3Lgo+ID4gPj4KPiA+ID4+IFsxXSBodHRwczov
L2xrbWwub3JnL2xrbWwvMjAxOS8xMC8zMS80NDAKPiA+ID4+IFsyXSBodHRwczovL2xrbWwub3Jn
L2xrbWwvMjAxOS8xMC8xNS8xMjI2Cj4gPiA+Pgo+ID4gPj4gQ2hhbmdlcyBmcm9tIFY3Ogo+ID4g
Pj4gLSBkcm9wIHtzZXR8Z2V0fV9tZGV2X2ZlYXR1cmVzIGZvciB2aXJ0aW8KPiA+ID4+IC0gdHlw
byBhbmQgY29tbWVudCBzdHlsZSBmaXhlcyAgCj4gPiA+Cj4gPiA+IFNlZW1zIHdlJ3JlIG5lYXJs
eSB0aGVyZSwgYWxsIHRoZSByZW1haW5pbmcgY29tbWVudHMgYXJlIHJlbGF0aXZlbHkKPiA+ID4g
c3VwZXJmaWNpYWwsIHRob3VnaCBJIHdvdWxkIGFwcHJlY2lhdGUgYSB2OSBhZGRyZXNzaW5nIHRo
ZW0gYXMgd2VsbCBhcwo+ID4gPiB0aGUgY2hlY2twYXRjaCB3YXJuaW5nczoKPiA+ID4KPiA+ID4g
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODk3Ny8gIAo+ID4gCj4g
PiAKPiA+IFdpbGwgZG8uCj4gPiAKPiA+IEJ0dywgZG8geW91IHBsYW4gdG8gbWVyZ2Ugdmhvc3Qt
bWRldiBwYXRjaCBvbiB0b3A/IE9yIHlvdSBwcmVmZXIgaXQgdG8gCj4gPiBnbyB0aHJvdWdoIE1p
Y2hhZWwncyB2aG9zdCB0cmVlPwo+IAo+IEkgY2FuIGluY2x1ZGUgaXQgaWYgeW91IHdpc2guICBU
aGUgbWRldiBjaGFuZ2VzIGFyZSBpc29sYXRlZCBlbm91Z2ggaW4KPiB0aGF0IHBhdGNoIHRoYXQg
SSB3b3VsZG4ndCBwcmVzdW1lIGl0LCBidXQgY2xlYXJseSBpdCB3b3VsZCByZXF1aXJlCj4gbGVz
cyBtZXJnZSBjb29yZGluYXRpb24gdG8gZHJvcCBpdCBpbiBteSB0cmVlLiAgTGV0IG1lIGtub3cu
ICBUaGFua3MsCj4gCj4gQWxleAoKSSdtIGZpbmUgd2l0aCBtZXJnaW5nIHRocm91Z2ggeW91ciB0
cmVlLiBJZiB5b3UgZG8sIGZlZWwgZnJlZSB0bwppbmNsdWRlCgpBY2tlZC1ieTogTWljaGFlbCBT
LiBUc2lya2luIDxtc3RAcmVkaGF0LmNvbT4KCgotLSAKTVNUCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
