Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B952BB397
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 14:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A80ED6E89A;
	Mon, 23 Sep 2019 12:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A896E897
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 12:21:51 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 07AA485538
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 12:21:51 +0000 (UTC)
Received: by mail-qk1-f200.google.com with SMTP id n135so17269336qke.23
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 05:21:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=a9/IjKSOTtP+H0DwvJWJwjvwhzIswSQaCoNDgf8fYiY=;
 b=NcKZAQozubXMDakjN4IE3AAXYwzKn1LaAFqRz6M44gKVkhxahPaaxC0b1IYkqM1p7S
 66irMM+HrlxV4mwuE2CDISM32doQwtPORmpA29b/aqGHZc/wLHq65kOQjiMnnbXAUtq9
 XqGocWkOhyJdMmVsMjbJqyxbFRmWT0u6Rw881qMssYvmHqKft8qNjFDUA6Oiud2omkli
 3ooThnT5Nkq2iXOCTmAmPyPK5yVjTQ08fCZoI5dajxBAgwPQLDdo96v004CqJdRhrNgr
 1SR+pE4bbfkfNcIVbVc3Q6w3gQ2caTqoVXuLpHGFmq3t7TE272KqMIJD035IEsMrqy6y
 xPBg==
X-Gm-Message-State: APjAAAWbPwwPAhDnGuy4Fh5E2vwxe8IPdazS61olZGD+iTcGobT2JmG/
 D1yvCy/3QtQ/0+B0IbiLeXKkUMdwCcCKDTwC/0zKsznFg4Jdn3M6Du1+EYPAxD9OIY0fnmbKO7/
 F0BnhIsrgcOLksa6x5yvgJ0BqHbUz
X-Received: by 2002:ac8:7117:: with SMTP id z23mr16276180qto.309.1569241310357; 
 Mon, 23 Sep 2019 05:21:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy19kCOwHbgejDjIiixAFXfW0feeppk9Ux+t6GtFmBM+eqf5FZ/rCyZVT2dupdlVrgcrW4SDA==
X-Received: by 2002:ac8:7117:: with SMTP id z23mr16276147qto.309.1569241310042; 
 Mon, 23 Sep 2019 05:21:50 -0700 (PDT)
Received: from redhat.com (bzq-79-176-40-226.red.bezeqint.net. [79.176.40.226])
 by smtp.gmail.com with ESMTPSA id o38sm6573805qtc.39.2019.09.23.05.21.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 05:21:48 -0700 (PDT)
Date: Mon, 23 Sep 2019 08:21:34 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Jason Wang <jasowang@redhat.com>
Message-ID: <20190923074913-mutt-send-email-mst@kernel.org>
References: <20190920082050.19352-1-jasowang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920082050.19352-1-jasowang@redhat.com>
Subject: Re: [Intel-gfx] [RFC PATCH V2 0/6] mdev based hardware virtio
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
Cc: kvm@vger.kernel.org, airlied@linux.ie, heiko.carstens@de.ibm.com,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 kwankhede@nvidia.com, rob.miller@broadcom.com, linux-s390@vger.kernel.org,
 sebott@linux.ibm.com, lulu@redhat.com, eperezma@redhat.com,
 pasic@linux.ibm.com, borntraeger@de.ibm.com, haotian.wang@sifive.com,
 cunming.liang@intel.com, farman@linux.ibm.com, idos@mellanox.com,
 gor@linux.ibm.com, intel-gfx@lists.freedesktop.org, xiao.w.wang@intel.com,
 freude@linux.ibm.com, zhihong.wang@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com,
 oberpar@linux.ibm.com, pmorel@linux.ibm.com, tiwei.bie@intel.com,
 netdev@vger.kernel.org, cohuck@redhat.com, linux-kernel@vger.kernel.org,
 maxime.coquelin@redhat.com, lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMjAsIDIwMTkgYXQgMDQ6MjA6NDRQTSArMDgwMCwgSmFzb24gV2FuZyB3cm90
ZToKPiBIaSBhbGw6Cj4gCj4gVGhlcmUgYXJlIGhhcmR3YXJlIHRoYXQgY2FuIGRvIHZpcnRpbyBk
YXRhcGF0aCBvZmZsb2FkaW5nIHdoaWxlIGhhdmluZwo+IGl0cyBvd24gY29udHJvbCBwYXRoLiBU
aGlzIHBhdGggdHJpZXMgdG8gaW1wbGVtZW50IGEgbWRldiBiYXNlZAo+IHVuaWZpZWQgQVBJIHRv
IHN1cHBvcnQgdXNpbmcga2VybmVsIHZpcnRpbyBkcml2ZXIgdG8gZHJpdmUgdGhvc2UKPiBkZXZp
Y2VzLiBUaGlzIGlzIGRvbmUgYnkgaW50cm9kdWNpbmcgYSBuZXcgbWRldiB0cmFuc3BvcnQgZm9y
IHZpcnRpbwo+ICh2aXJ0aW9fbWRldikgYW5kIHJlZ2lzdGVyIGl0c2VsZiBhcyBhIG5ldyBraW5k
IG9mIG1kZXYgZHJpdmVyLiBUaGVuCj4gaXQgcHJvdmlkZXMgYSB1bmlmaWVkIHdheSBmb3Iga2Vy
bmVsIHZpcnRpbyBkcml2ZXIgdG8gdGFsayB3aXRoIG1kZXYKPiBkZXZpY2UgaW1wbGVtZW50YXRp
b24uCgpUaGlzIGlzIGFjdHVhbGx5IHNpbXBsZSBlbm91Z2ggdGhhdCBJJ20gaW5jbGluZWQgdG8g
anVzdApwdXQgdGhpcyBpbnRvIGxpbnV4LW5leHQuClRoaXMgbWl4ZXMgdmlydGlvIGFuZCB2Zmlv
IHNvIHRoZSBjb2RlIGNhbiB0aGlua2FibHkKYmUgbWVyZ2VkIHRocm91Z2ggZWl0aGVyIHRyZWUu
CkFsZXgsIGFueSBzdHJvbmcgb3BpbmlvbnMgb24gYW55IG9mIHRoaXM/Cgo+IFRob3VnaCB0aGUg
c2VyaWVzIG9ubHkgY29udGFpbiBrZXJuZWwgZHJpdmVyIHN1cHBvcnQsIHRoZSBnb2FsIGlzIHRv
Cj4gbWFrZSB0aGUgdHJhbnNwb3J0IGdlbmVyaWMgZW5vdWdoIHRvIHN1cHBvcnQgdXNlcnNwYWNl
IGRyaXZlcnMuIFRoaXMKPiBtZWFucyB2aG9zdC1tZGV2WzFdIGNvdWxkIGJlIGJ1aWx0IG9uIHRv
cCBhcyB3ZWxsIGJ5IHJlc3VpbmcgdGhlCj4gdHJhbnNwb3J0Lgo+IAo+IEEgc2FtcGxlIGRyaXZl
ciBpcyBhbHNvIGltcGxlbWVudGVkIHdoaWNoIHNpbXVsYXRlIGEgdmlyaXRvLW5ldAo+IGxvb3Bi
YWNrIGV0aGVybmV0IGRldmljZSBvbiB0b3Agb2YgdnJpbmdoICsgd29ya3F1ZXVlLiBUaGlzIGNv
dWxkIGJlCj4gdXNlZCBhcyBhIHJlZmVyZW5jZSBpbXBsZW1lbnRhdGlvbiBmb3IgcmVhbCBoYXJk
d2FyZSBkcml2ZXIuCj4gCj4gQ29uc2lkZXIgbWRldiBmcmFtZXdvcmsgb25seSBzdXBwb3J0IFZG
SU8gZGV2aWNlIGFuZCBkcml2ZXIgcmlnaHQgbm93LAo+IHRoaXMgc2VyaWVzIGFsc28gZXh0ZW5k
IGl0IHRvIHN1cHBvcnQgb3RoZXIgdHlwZXMuIFRoaXMgaXMgZG9uZQo+IHRocm91Z2ggaW50cm9k
dWNpbmcgY2xhc3MgaWQgdG8gdGhlIGRldmljZSBhbmQgcGFpcmluZyBpdCB3aXRoCj4gaWRfdGFs
YmUgY2xhaW1lZCBieSB0aGUgZHJpdmVyLiBPbiB0b3AsIHRoaXMgc2VyaXMgYWxzbyBkZWNvdXBs
ZQo+IGRldmljZSBzcGVjaWZpYyBwYXJlbnRzIG9wcyBvdXQgb2YgdGhlIGNvbW1vbiBvbmVzLgo+
IAo+IFBrdGdlbiB0ZXN0IHdhcyBkb25lIHdpdGggdmlyaXRvLW5ldCArIG12bmV0IGxvb3AgYmFj
ayBkZXZpY2UuCj4gCj4gUGxlYXNlIHJldmlldy4KPiAKPiBDaGFuZ2VzIGZyb20gVjE6Cj4gCj4g
LSByZW5hbWUgZGV2aWNlIGlkIHRvIGNsYXNzIGlkCj4gLSBhZGQgZG9jcyBmb3IgY2xhc3MgaWQg
YW5kIGRldmljZSBzcGVjaWZpYyBvcHMgKGRldmljZV9vcHMpCj4gLSBzcGxpdCBkZXZpY2Vfb3Bz
IGludG8gc2VwZXJhdGUgaGVhZGVycwo+IC0gZHJvcCB0aGUgbWRldl9zZXRfZG1hX29wcygpCj4g
LSB1c2UgZGV2aWNlX29wcyB0byBpbXBsZW1lbnQgdGhlIHRyYW5zcG9ydCBBUEksIHRoZW4gaXQn
cyBub3QgYSBwYXJ0Cj4gICBvZiBVQVBJIGFueSBtb3JlCj4gLSB1c2UgR0ZQX0FUT01JQyBpbiBt
dm5ldCBzYW1wbGUgZGV2aWNlIGFuZCBvdGhlciB0d2Vha3MKPiAtIHNldF92cmluZ19iYXNlL2dl
dF92cmluZ19iYXNlIHN1cHBvcnQgZm9yIG12bmV0IGRldmljZQo+IAo+IEphc29uIFdhbmcgKDYp
Ogo+ICAgbWRldjogY2xhc3MgaWQgc3VwcG9ydAo+ICAgbWRldjogaW50cm9kdWNlIGRldmljZSBz
cGVjaWZpYyBvcHMKPiAgIG1kZXY6IGludHJvZHVjZSB2aXJ0aW8gZGV2aWNlIGFuZCBpdHMgZGV2
aWNlIG9wcwo+ICAgdmlydGlvOiBpbnRyb3VkY2UgYSBtZGV2IGJhc2VkIHRyYW5zcG9ydAo+ICAg
dnJpbmdoOiBmaXggY29weSBkaXJlY3Rpb24gb2YgdnJpbmdoX2lvdl9wdXNoX2tlcm4oKQo+ICAg
ZG9jczogU2FtcGxlIGRyaXZlciB0byBkZW1vbnN0cmF0ZSBob3cgdG8gaW1wbGVtZW50IHZpcnRp
by1tZGV2Cj4gICAgIGZyYW1ld29yawo+IAo+ICAuLi4vZHJpdmVyLWFwaS92ZmlvLW1lZGlhdGVk
LWRldmljZS5yc3QgICAgICAgfCAgMTEgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2
bWd0LmMgICAgICAgICAgICAgIHwgIDE3ICstCj4gIGRyaXZlcnMvczM5MC9jaW8vdmZpb19jY3df
b3BzLmMgICAgICAgICAgICAgICB8ICAxNyArLQo+ICBkcml2ZXJzL3MzOTAvY3J5cHRvL3ZmaW9f
YXBfb3BzLmMgICAgICAgICAgICAgfCAgMTQgKy0KPiAgZHJpdmVycy92ZmlvL21kZXYvS2NvbmZp
ZyAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsKPiAgZHJpdmVycy92ZmlvL21kZXYvTWFrZWZp
bGUgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy92ZmlvL21kZXYvbWRldl9j
b3JlLmMgICAgICAgICAgICAgICAgIHwgIDIxICstCj4gIGRyaXZlcnMvdmZpby9tZGV2L21kZXZf
ZHJpdmVyLmMgICAgICAgICAgICAgICB8ICAxNCArCj4gIGRyaXZlcnMvdmZpby9tZGV2L21kZXZf
cHJpdmF0ZS5oICAgICAgICAgICAgICB8ICAgMSArCj4gIGRyaXZlcnMvdmZpby9tZGV2L3ZmaW9f
bWRldi5jICAgICAgICAgICAgICAgICB8ICAzNyArLQo+ICBkcml2ZXJzL3ZmaW8vbWRldi92aXJ0
aW9fbWRldi5jICAgICAgICAgICAgICAgfCA0MTggKysrKysrKysrKysKPiAgZHJpdmVycy92aG9z
dC92cmluZ2guYyAgICAgICAgICAgICAgICAgICAgICAgIHwgICA4ICstCj4gIGluY2x1ZGUvbGlu
dXgvbWRldi5oICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA0NiArLQo+ICBpbmNsdWRlL2xp
bnV4L21vZF9kZXZpY2V0YWJsZS5oICAgICAgICAgICAgICAgfCAgIDggKwo+ICBpbmNsdWRlL2xp
bnV4L3ZmaW9fbWRldi5oICAgICAgICAgICAgICAgICAgICAgfCAgNTAgKysKPiAgaW5jbHVkZS9s
aW51eC92aXJ0aW9fbWRldi5oICAgICAgICAgICAgICAgICAgIHwgMTQxICsrKysKPiAgc2FtcGxl
cy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsKPiAgc2FtcGxl
cy92ZmlvLW1kZXYvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgIHwgICAxICsKPiAgc2FtcGxl
cy92ZmlvLW1kZXYvbWJvY2hzLmMgICAgICAgICAgICAgICAgICAgIHwgIDE5ICstCj4gIHNhbXBs
ZXMvdmZpby1tZGV2L21kcHkuYyAgICAgICAgICAgICAgICAgICAgICB8ICAxOSArLQo+ICBzYW1w
bGVzL3ZmaW8tbWRldi9tdHR5LmMgICAgICAgICAgICAgICAgICAgICAgfCAgMTcgKy0KPiAgc2Ft
cGxlcy92ZmlvLW1kZXYvbXZuZXQuYyAgICAgICAgICAgICAgICAgICAgIHwgNjg4ICsrKysrKysr
KysrKysrKysrKwo+ICAyMiBmaWxlcyBjaGFuZ2VkLCAxNDczIGluc2VydGlvbnMoKyksIDg5IGRl
bGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy92ZmlvL21kZXYvdmlydGlv
X21kZXYuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC92ZmlvX21kZXYuaAo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC92aXJ0aW9fbWRldi5oCj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBzYW1wbGVzL3ZmaW8tbWRldi9tdm5ldC5jCj4gCj4gLS0gCj4gMi4xOS4x
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
