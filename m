Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4075B12D2E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 14:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 240A789DE6;
	Fri,  3 May 2019 12:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341FA89DE6
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 12:09:38 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id e56so5715667ede.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 May 2019 05:09:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=S4dUYvdv3n+Bba45FIMfVM65qgsyOxnhGJChibzqN60=;
 b=OjkVhaHLqmIkfxOpMNwapNJwIQS9Zysz7oOgrATkS9HHGP974triMlFEhpaW4pyGps
 dq6VnxMGgA+MdUdl9785pM+Jxh/4VuDTI44cTEuuGOhc2qrqC9V8OHpp0k/DRmQRZzT7
 s0hfFCSKMyaNZD1IbDYLFbE6wG2D1BdCCNLQxBmsr8vdRQegL6QYc+2oSCnJcBUU3zZf
 goCDat+s7XDEjmuNegKzcFFnmjPcpdmATIjgA+FKsYG54IqTR3XkeOCRxrTp7/HJcszq
 /SXHXdOcaEO8YMQ4atT6ZiTK/wN91sP3KbkkJMfUPgxRHt1jUjaDfsZd0+xZo4WtXSqS
 6gjA==
X-Gm-Message-State: APjAAAWwnyj02RCsQPtO5IVH2Q8KKSpY8rwOBhtWMuyulZG0EvZZifZj
 z/cogYzUC69NG1cqtFbbtyvQ2g==
X-Google-Smtp-Source: APXvYqzutv0kBeLPRSf1mYqF7ThJDw1eInlX1KNGRL/6/Tt5e7oryS7GRROhuh60qmoGV8akzi+19Q==
X-Received: by 2002:a17:906:59c3:: with SMTP id
 m3mr5824761ejs.167.1556885376639; 
 Fri, 03 May 2019 05:09:36 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id i61sm536332edi.5.2019.05.03.05.09.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 05:09:35 -0700 (PDT)
Date: Fri, 3 May 2019 14:09:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20190503120933.GL3271@phenom.ffwll.local>
Mail-Followup-To: christian.koenig@amd.com,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 maxime.ripard@bootlin.com, dri-devel@lists.freedesktop.org,
 digetx@gmail.com, sumit.semwal@linaro.org, m.szyprowski@samsung.com,
 devel@driverdev.osuosl.org, sstabellini@kernel.org, arnd@arndb.de,
 jonathanh@nvidia.com, tomi.valkeinen@ti.com,
 xen-devel@lists.xenproject.org, linux-media@vger.kernel.org,
 pawel@osciak.com, intel-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, boris.ostrovsky@oracle.com,
 mchehab@kernel.org, jgross@suse.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kyungmin.park@samsung.com
References: <20190430111002.106168-1-christian.koenig@amd.com>
 <20190430173127.k5ivpaz6ktbfecgo@shell.armlinux.org.uk>
 <cbcbb076-a8b0-67b0-8c16-daf1d060fc1d@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cbcbb076-a8b0-67b0-8c16-daf1d060fc1d@gmail.com>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=S4dUYvdv3n+Bba45FIMfVM65qgsyOxnhGJChibzqN60=;
 b=jrDdmOLqPgT269Ux3Ti6Ab8JHcj7LLbFX43fyq0OzF8wPEtpJ0dO22tKhM3wi0IduX
 U1Yn+VxM34ZWbPwXaZd23V0NxQhtN1WWHx8SIPPdiDgpTMGTkpZVVlcrlA4V/So7djwc
 Pmy/BtwrIQ9KvEsdrRxatfFdvK+car/jY9724=
Subject: Re: [Intel-gfx] [PATCH] dma-buf: add struct dma_buf_attach_info v2
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
Cc: maxime.ripard@bootlin.com, dri-devel@lists.freedesktop.org,
 digetx@gmail.com, sumit.semwal@linaro.org, m.szyprowski@samsung.com,
 devel@driverdev.osuosl.org, sstabellini@kernel.org, arnd@arndb.de,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>, jonathanh@nvidia.com,
 tomi.valkeinen@ti.com, xen-devel@lists.xenproject.org,
 linux-media@vger.kernel.org, pawel@osciak.com, intel-gfx@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, boris.ostrovsky@oracle.com, mchehab@kernel.org,
 jgross@suse.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 kyungmin.park@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDI6MDU6NDdQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAzMC4wNC4xOSB1bSAxOTozMSBzY2hyaWViIFJ1c3NlbGwgS2luZyAtIEFS
TSBMaW51eCBhZG1pbjoKPiA+IE9uIFR1ZSwgQXByIDMwLCAyMDE5IGF0IDAxOjEwOjAyUE0gKzAy
MDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4gPiA+IEFkZCBhIHN0cnVjdHVyZSBmb3IgdGhl
IHBhcmFtZXRlcnMgb2YgZG1hX2J1Zl9hdHRhY2gsIHRoaXMgbWFrZXMgaXQgbXVjaCBlYXNpZXIK
PiA+ID4gdG8gYWRkIG5ldyBwYXJhbWV0ZXJzIGxhdGVyIG9uLgo+ID4gSSBkb24ndCB1bmRlcnN0
YW5kIHRoaXMgcmVhc29uaW5nLiAgV2hhdCBhcmUgdGhlICJuZXcgcGFyYW1ldGVycyIgdGhhdAo+
ID4gYXJlIGJlaW5nIHByb3Bvc2VkLCBhbmQgd2h5IGRvIHdlIG5lZWQgdG8gcHV0IHRoZW0gaW50
byBtZW1vcnkgdG8gcGFzcwo+ID4gdGhlbSBhY3Jvc3MgdGhpcyBpbnRlcmZhY2U/Cj4gPiAKPiA+
IElmIHRoZSBpbnRlbnRpb24gaXMgdG8gbWFrZSBpdCBlYXNpZXIgdG8gY2hhbmdlIHRoZSBpbnRl
cmZhY2UsIHBhc3NpbmcKPiA+IHBhcmFtZXRlcnMgaW4gdGhpcyBtYW5uZXIgbWVhbiB0aGF0IGl0
J3MgZWFzeSBmb3IgdGhlIGludGVyZmFjZSB0bwo+ID4gY2hhbmdlIGFuZCBkcml2ZXJzIG5vdCB0
byBub3RpY2UgdGhlIGNoYW5nZXMsIHNpbmNlIHRoZSBjb21waWxlciB3aWxsCj4gPiBub3Qgd2Fy
biAodW5sZXNzIHNvbWUgbWVtYmVyIG9mIHRoZSBzdHJ1Y3R1cmUgdGhhdCB0aGUgZHJpdmVyIGlz
IHVzaW5nCj4gPiBnZXRzIHJlbW92ZWQsIGluIHdoaWNoIGNhc2UgaXQgd2lsbCBlcnJvci4pCj4g
PiAKPiA+IEFkZGl0aW9ucyB0byB0aGUgc3RydWN0dXJlIHdpbGwgZ28gdW5ub3RpY2VkIGJ5IGRy
aXZlcnMgLSB3aGF0IGlmIHRoZQo+ID4gY2FsbGVyIGlzIGV4cGVjdGluZyBzb21lIGRpZmZlcmVu
dCBraW5kIG9mIGJlaGF2aW91ciwgYW5kIHRoZSBkcml2ZXIKPiA+IGlnbm9yZXMgdGhhdCBuZXcg
YWRkaXRpb24/Cj4gCj4gV2VsbCwgZXhhY3RseSB0aGF0J3MgdGhlIGludGVudGlvbiBoZXJlOiBU
aGF0IHRoZSBkcml2ZXJzIHVzaW5nIHRoaXMKPiBpbnRlcmZhY2Ugc2hvdWxkIGJlIGFibGUgdG8g
aWdub3JlIHRoZSBuZXcgYWRkaXRpb25zIGZvciBub3cgYXMgbG9uZyBhcyB0aGV5Cj4gYXJlIG5v
dCBnb2luZyB0byB1c2UgdGhlbS4KPiAKPiBUaGUgYmFja2dyb3VuZCBpcyB0aGF0IHdlIGhhdmUg
bXVsdGlwbGUgaW50ZXJmYWNlIGNoYW5nZXMgaW4gdGhlIHBpcGVsaW5lLAo+IGFuZCBlYWNoIHN0
ZXAgcmVxdWlyZXMgbmV3IG9wdGlvbmFsIHBhcmFtZXRlcnMuCj4gCj4gPiBUaGlzIGRvZXNuJ3Qg
c2VlbSB0byBtZSBsaWtlIGEgZ29vZCBpZGVhLgo+IAo+IFdlbGwsIHRoZSBvYnZpb3VzIGFsdGVy
bmF0aXZlcyBhcmU6Cj4gCj4gYSkgQ2hhbmdlIGFsbCBkcml2ZXJzIHRvIGV4cGxpY2l0bHkgcHJv
dmlkZSBOVUxMLzAgZm9yIHRoZSBuZXcgcGFyYW1ldGVycy4KPiAKPiBiKSBVc2UgYSB3cmFwcGVy
LCBzbyB0aGF0IHRoZSBmdW5jdGlvbiBzaWduYXR1cmUgb2YgZG1hX2J1Zl9hdHRhY2ggc3RheXMg
dGhlCj4gc2FtZS4KPiAKPiBLZXkgcG9pbnQgaGVyZSBpcyB0aGF0IEkgaGF2ZSBhbiBpbnZhbGlk
YXRpb24gY2FsbGJhY2sgY2hhbmdlLCBhIFAyUCBwYXRjaAo+IHNldCBhbmQgc29tZSBsb2NraW5n
IGNoYW5nZXMgd2hpY2ggYWxsIHJlcXVpcmUgYWRkaW5nIG5ldyBwYXJhbWV0ZXJzIG9yCj4gZmxh
Z3MuIEFuZCBhdCBlYWNoIHN0ZXAgSSB3b3VsZCB0aGVuIHN0YXJ0IHRvIGNoYW5nZSBhbGwgZHJp
dmVycywgYWRkaW5nCj4gc29tZSBtb3JlIE5VTEwgcG9pbnRlcnMgb3IgZmxhZ3Mgd2l0aCAwIGRl
ZmF1bHQgdmFsdWUuCj4gCj4gSSdtIGFjdHVhbGx5IHBlcmZlY3RseSBmaW5lIGdvaW5nIGRvd24g
YW55IHJvdXRlLCBidXQgdGhpcyBqdXN0IHNlZW1lZCB0byBtZQo+IHNpbXBsZXN0IGFuZCB3aXRo
IHRoZSBsZWFzdCByaXNrIG9mIGJyZWFraW5nIGFueXRoaW5nLiBPcGluaW9ucz8KCkkgdGhpbmsg
Z2l2ZW4gYWxsIG91ciBkaXNjdXNzaW9ucyBhbmQgcGxhbnMgdGhlIGFyZ3VtZW50IG9iamVjdCBt
YWtlcyB0b25zCm9mIHNlbnNlLiBNdWNoIGVhc2llciB0byBkb2N1bWVudCB3ZWxsIHRoYW4gYSBs
b25nIGxpc3Qgb2YgcGFyYW1ldGVycy4KTWF5YmUgd2Ugc2hvdWxkIG1ha2UgaXQgY29uc3QsIHNv
IGl0IGNvdWxkIHdvcmsgbGlrZSBhbiBvcHMvZnVuYyB0YWJsZSBhbmQKd2UgY291bGQgc3RvcmUg
aXQgYXMgYSBwb2ludGVyIGluIHRoZSBkbWFfYnVmX2F0dGFjaG1lbnQ/Ci1EYW5pZWwKLS0gCkRh
bmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9i
bG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
