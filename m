Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1529D19F911
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 17:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 282C06E42B;
	Mon,  6 Apr 2020 15:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF01F6E424
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 15:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586187783;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2oMrM2mDIQhAJG19GAm5tBSf0P9gXDshIKsrEuaQRh0=;
 b=b+pLbp/3gIkCzCFGhqmRdWiqSiIDRWnZrjLgBWBr33Zcms4IhjmF11wZw+Ad5/e6zrSsRw
 GX+MAeuiDYIm4aP9k73B+waMuglVPirEbigGHHlxknNgiAUVZMihmn6jcbvT2SIQ6DsgUy
 0Nn+GYgMFh60oW8p5JIMgpHlszDz3Is=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-2nZzwMMDPReISvf4oCZuwQ-1; Mon, 06 Apr 2020 11:42:57 -0400
X-MC-Unique: 2nZzwMMDPReISvf4oCZuwQ-1
Received: by mail-qk1-f199.google.com with SMTP id h186so128317qkc.22
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Apr 2020 08:42:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=mTQ6SwoE2yqMXLBx7O92dtojONPG9oy9eYg6hBnMWSo=;
 b=XYZvysaTcrdbGdcTKQA3cJjYwf+9DOfBgcLYB0dnRoNqUJvITm1jG3E4SA3PXVbErG
 LVMMU6nXOpSc1JeL+2M1ARE7UtKMLsKAim1SrzCYYODsUiAE+bdWAVaQZJp9GG9id7B6
 VDVhklkwjh4YcADKjCQcPN7Hr6Fj0Qzv8YvYnEqMnx6MZoPgbx5SITRw1uTv9luLiA8t
 wtdvDdGVdW14zlXD2UjBO0M4j5onfPoIQPVozyyc8UXUoz8Av7pYCXkIoCZV6UD+qBRi
 JewDRWyVF3RuY80+m7UYFWsQBpLKff9mftRWHcm7YJXzWukGfir7bqDyqb0BEPOJnMDt
 TAWw==
X-Gm-Message-State: AGi0PuZMupCpeBFMcJWptdmhcRAJeMp3bCrZFN33Gz9//8gOnyKH7cZ8
 HpC89a6rKdolrpzCxWOnl9cqmyeQXj8IAtczwdTr1AGT0cfXd9mcZF1H69u+wxBpQsQCqTmw5YJ
 7F3ySjn4iIq3ZfjYKZgS6BpcmJ1D9
X-Received: by 2002:ae9:dd83:: with SMTP id
 r125mr22560634qkf.105.1586187777116; 
 Mon, 06 Apr 2020 08:42:57 -0700 (PDT)
X-Google-Smtp-Source: APiQypIEO6+HnV6CFGNQSI2NC/499K8UEKT2zxcX+nyu1TLx6uyjv4PjMIjCN8mPbiPqNeTMeT6gdw==
X-Received: by 2002:ae9:dd83:: with SMTP id
 r125mr22560614qkf.105.1586187776797; 
 Mon, 06 Apr 2020 08:42:56 -0700 (PDT)
Received: from desoxy (c-24-61-245-152.hsd1.ma.comcast.net. [24.61.245.152])
 by smtp.gmail.com with ESMTPSA id h10sm8207966qtp.93.2020.04.06.08.42.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 08:42:56 -0700 (PDT)
Message-ID: <f4d856925111b77012cabb255d6a880ae5637b41.camel@redhat.com>
From: Adam Jackson <ajax@redhat.com>
To: Rob Clark <robdclark@gmail.com>, Michel =?ISO-8859-1?Q?D=E4nzer?=
 <michel@daenzer.net>
Date: Mon, 06 Apr 2020 11:42:54 -0400
In-Reply-To: <CAF6AEGuNTtHfNm_nRhPFX5wPRmKkjnFEKqTdTSBDjpLkaiN8Fw@mail.gmail.com>
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
 <b398161ff7d0268454413058dc6c194cf93f5990.camel@collabora.com>
 <ece8ebe3-40ec-2457-02da-4fef19cbe8f6@intel.com>
 <6d2ec570f957b4504fb70e0b1f0632712a99dc0c.camel@collabora.com>
 <CAPj87rO7BuKQj2Kei3T7RdkFq5=TiuShBvtrPU2sn0iqMfXSTg@mail.gmail.com>
 <59f4ea1f13a9a9d37f7801b93061b4ae7dd595e2.camel@gmail.com>
 <d0ef47e45c83b342494e6781b808b4831a008836.camel@ndufresne.ca>
 <d9dca12759fd6a549dc4cd71b5f210a4dced01cd.camel@gmail.com>
 <CAOFGe96WqRTagf=Lhp6j9aMnB6hxwog7t93t=4r6QE_4f+HpeQ@mail.gmail.com>
 <5551426acf99f73d3ce8234c14c176c1c7a1fe44.camel@ndufresne.ca>
 <CAAxE2A5zSy7Rh6xyPW8NCqj3q0_8F7yw8tAXx=_z8+mJ-u2uWw@mail.gmail.com>
 <3cddf1aa-5072-af7c-c51e-c16039176f6c@daenzer.net>
 <CAF6AEGuNTtHfNm_nRhPFX5wPRmKkjnFEKqTdTSBDjpLkaiN8Fw@mail.gmail.com>
User-Agent: Evolution 3.34.0 (3.34.0-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [Mesa-dev] gitlab.fd.o financial situation and
 impact on services
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "X.Org development" <xorg-devel@lists.x.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>,
 Discussion of the development of and with GStreamer
 <gstreamer-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAyMDIwLTA0LTA0IGF0IDA4OjExIC0wNzAwLCBSb2IgQ2xhcmsgd3JvdGU6Cj4gT24g
RnJpLCBBcHIgMywgMjAyMCBhdCA3OjEyIEFNIE1pY2hlbCBEw6RuemVyIDxtaWNoZWxAZGFlbnpl
ci5uZXQ+IHdyb3RlOgo+ID4gT24gMjAyMC0wMy0wMSA2OjQ2IGEubS4sIE1hcmVrIE9sxaHDoWsg
d3JvdGU6Cj4gPiA+IEZvciBNZXNhLCB3ZSBjb3VsZCBydW4gQ0kgb25seSB3aGVuIE1hcmdlIHB1
c2hlcywgc28gdGhhdCBpdCdzIGEgc3RyaWN0bHkKPiA+ID4gcHJlLW1lcmdlIENJLgo+ID4gCj4g
PiBUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9uISBJIGltcGxlbWVudGVkIHNvbWV0aGluZyBsaWtl
IHRoaXMgZm9yIE1lc2E6Cj4gPiAKPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9t
ZXNhL21lc2EvLS9tZXJnZV9yZXF1ZXN0cy80NDMyCj4gCj4gSSB3b3VsZG4ndCBtaW5kIG1hbnVh
bGx5IHRyaWdnZXJpbmcgcGlwZWxpbmVzLCBidXQgdW5sZXNzIHRoZXJlIGlzCj4gc29tZSB0cmlj
ayBJJ20gbm90IHJlYWxpemluZywgaXQgaXMgc3VwZXIgY3VtYmVyc29tZS4gIEllLiB5b3UgaGF2
ZSB0bwo+IGNsaWNrIGZpcnN0IHRoZSBjb250YWluZXIgam9icy4uIHRoZW4gd2FpdC4uIHRoZW4g
dGhlIGJ1aWxkIGpvYnMuLgo+IHRoZW4gd2FpdCBzb21lIG1vcmUuLiBhbmQgdGhlbiBmaW5hbGx5
IHRoZSBhY3R1YWwgcnVubmVycy4gIFRoYXQgd291bGQKPiBiZSBhIHJlYWwgc3RlcCBiYWNrIGlu
IHRlcm1zIG9mIHVzZWZ1bG5lc3Mgb2YgQ0kuLiBvbmUgbWlnaHQgY2FsbCBpdCBhCj4gcmVncmVz
c2lvbiA6LSgKCkkgdGhpbmsgdGhhdCdzIG1vc3RseSBhIGNvbXBsYWludCBhYm91dCB0aGUgY29u
ZGl0aW9uYWxzIHdlJ3ZlIHdyaXR0ZW4Kc28gZmFyLCB0YmguIEFzIEkgY29tbWVudGVkIG9uIHRo
ZSBidWcsIHdoZW4gSSBjbGlja2VkIHRoZSBjb250YWluZXIKam9iICh3aGljaCB0aGUgcnVsZXMg
aGFwcGVuIHRvIGhhdmUgZXZhbHVhdGVkIHRvIGJlaW5nICJtYW51YWwiKSwgZXZlcnkKam9iIChy
ZWN1cnNpdmVseSkgZG93bnN0cmVhbSBvZiBpdCBnb3QgZW5xdWV1ZWQsIHdoaWNoIGlzbid0IHdo
YXQKeW91J3JlIGRlc2NyaWJpbmcuIFNvIEkgdGhpbmsgaWYgeW91IGNhbiBkZXNjcmliZSB0aGUg
VVggeW91J2QgbGlrZSB3ZQpjYW4gd3JpdGUgcnVsZXMgdG8gbWFrZSB0aGF0IHJlYWxpdHkuCgpC
dXQgSSBkb24ndCByZWFsbHkga25vdyB3aGljaCBqb2JzIGFyZSBtb3N0IGV4cGVuc2l2ZSBpbiB0
ZXJtcyBvZgpiYW5kd2lkdGgsIG9yIHN0b3JhZ2UsIG9yIENQVXMsIGFuZCBldmVuIGlmIEkga25l
dyB0aG9zZSBJIGRvbid0IGtub3cKaG93IHRvIG1hcCB0aG9zZSB0byBjdXJyZW5jeS4gU28gSSdt
IG5vdCBzdXJlIGlmIHRoZSBVSSB3ZSdkIGxpa2Ugd291bGQKbWluaW1pemUgdGhlIGNvc3QgdGhl
IHdheSB3ZSdkIGxpa2UuCgotIGFqYXgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
