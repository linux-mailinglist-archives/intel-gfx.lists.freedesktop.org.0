Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F32D115068
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 13:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE956F9F1;
	Fri,  6 Dec 2019 12:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE326F9F1
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 12:27:59 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-GtTdKNtdNYCIbOxvufQVyQ-1; Fri, 06 Dec 2019 07:27:54 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 662FB107ACC4;
 Fri,  6 Dec 2019 12:27:52 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-67.ams2.redhat.com
 [10.36.116.67])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CC9A319C7F;
 Fri,  6 Dec 2019 12:27:51 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id D0B1116E05; Fri,  6 Dec 2019 13:27:50 +0100 (CET)
Date: Fri, 6 Dec 2019 13:27:50 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20191206122750.4z7vlr52wthxtucf@sirius.home.kraxel.org>
References: <20191127092523.5620-1-kraxel@redhat.com>
 <20191127092523.5620-2-kraxel@redhat.com>
 <20191128113930.yhckvneecpvfhlls@sirius.home.kraxel.org>
 <20191205221523.GN624164@phenom.ffwll.local>
 <20191206100724.ukzdyaym3ltcyfaa@sirius.home.kraxel.org>
 <20191206102200.6osisct57n424ujn@sirius.home.kraxel.org>
 <CAKMK7uF=wZ8snurJwftyjVD2ExutfzNUGGhy8=UVFYf3=sz7qQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKMK7uF=wZ8snurJwftyjVD2ExutfzNUGGhy8=UVFYf3=sz7qQ@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: GtTdKNtdNYCIbOxvufQVyQ-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1575635278;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kaTUxMNRx4BXZwiqLRw+yIBYBhpqo3EKVWL659PamfU=;
 b=D/WIwT6lvtlrfqqk+sBGr9RLNIQkQvA+AkinIGVbgivCVRKbvwqc4WtSqYc9MzqBmPwGCb
 rDu/icX+ZsNqPi6JpLy05fW6S0MEPmz3uzlS/ZovOGpniE1a07guN3Ivye5UWZxhWZzH2O
 xKu/YDjSX/0/m5qEffTj566xoyNSoBo=
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm: call drm_gem_object_funcs.mmap
 with fake offset
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
Cc: Rob Herring <robh@kernel.org>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Huang Rui <ray.huang@amd.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBEZWMgMDYsIDIwMTkgYXQgMTI6MTA6MTVQTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBGcmksIERlYyA2LCAyMDE5IGF0IDExOjIyIEFNIEdlcmQgSG9mZm1hbm4gPGty
YXhlbEByZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPiA+IEd1ZXNzIHlvdSBraWNrZWQgQ0k/ICBK
dXN0IGdvdCBDSSBtYWlscywgbm93IHJlcG9ydGluZyBzdWNjZXNzLCB3aXRob3V0Cj4gPiA+IGRv
aW5nIGFueXRoaW5nLiAgU28gSSdsbCBnbyBwdXNoIHYzIHRvIG1pc2MtbmV4dC4KPiA+Cj4gPiBP
b3BzLCBzcG9rZSB0b28gc29vbi4gIE5leHQgbWFpbCBhcnJpdmVkLiAgRmkuQ0kuQkFUIHdvcmtz
LCBidXQKPiA+IEZpLkNJLklHVCBzdGlsbCBmYWlscy4KPiA+Cj4gPiBXaGVyZSBpcyB0aGUgInRl
c3QgYWdhaW4iIGJ1dHRvbj8gIENhbiBJIHJlLXJ1biB0aGUgdGVzdHMgb24gdjI/ICBSaWdodAo+
ID4gbm93IEkgdGVuZCB0byBjb21taXQgdjIgdG8gaGF2ZSBhIGZpeCBjb21taXR0ZWQsIHRoZW4g
Z28gZmlndXJlIHdoeSB2Mwo+ID4gZmFpbHMgLi4uCj4gCj4gVG9wIG9mIHRoZSBtYWlsIHlvdSBn
ZXQgZnJvbSBDSSBpcyB0aGUgbGluayB0byB0aGUgcGF0Y2h3b3JrIHNlcmllcy4KPiBUaGF0IGNv
bnRhaW5zIGFsbCB0aGUgc2FtZSBpbmZvIGxpa2UgaW4gdGhlIG1haWwsIHBsdXMgdGhlIGNvdmV0
ZWQKPiBidXR0b24uIElmIGZhaWx1cmVzIGxvb2sgc2ltaWxhciB0aGVuIHllcyBJIGd1ZXNzIHYz
IGlzIHNvbWVob3cKPiBicm9rZW4uIEJ1dCBJJ3ZlIGxvb2tlZCwgbG9va3MgbGlrZSBqdXN0IDJ4
IHVucmVsYXRlZCBub2lzZSBhbmQgeW91Cj4gYmVpbmcgdW5sdWNreSwgc28gaW1vIHRvdGFsbHkg
ZmluZSB0byBwdXNoIHYzLiBJJ2xsIGdpdmUgQ0kgZm9sa3MgYQo+IGhlYWRzLXVwIChiZXN0IGRv
bmUgb3ZlciBpcmMgdXN1YWxseSkuCgpPay4gIFB1c2hlZCBub3cuCgpjaGVlcnMsCiAgR2VyZAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
