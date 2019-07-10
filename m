Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D8864AD9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 18:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A80C6E115;
	Wed, 10 Jul 2019 16:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C3B06E115
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 16:39:10 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id r12so2803095edo.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 09:39:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=rlLfC63UIGnR7CzSg0i2HcatUSkKiFrrWG5f+oOFkIc=;
 b=hSWXrlbQTHsF6D38eiICfsi3htK4aAa4ycRami4GUExMrdsjCTOR5QlKm1OZlUdNfR
 /2WLmXPeWzGwAK0JlKVDD4eAYivcQ0DSoWNwCKdeRzNX5OJvYDwGAk38b5lvy6Ll04s4
 iVZecgSmynBImgHdFgIiDf+D/XDF0JEXxyDNL1i3smRkpxU9DMmpkMq/A0w7eDLVLBkF
 +tuJfoPwrZtnBQL0o8l18OU0bK5P0uzbGVwKGowQa6hZUierRtp1zWTxzeZf+S9SIsku
 WjkvGHAfbV7WupTqmGQc/9gepUzn69lwqYSXZUAJpTlayCRY64W9GBQ9LdwAFEFir9jP
 nxLw==
X-Gm-Message-State: APjAAAWgGj4G6bcCPHACqJe9ZQHgFApGq/vp2+8a+ON893aElookzDz6
 nwsE2q3WB/0acqAOOW33iHVbtw==
X-Google-Smtp-Source: APXvYqxgif9mEQwbpanZhXyq12GDBwkYsFo+G3E2khBED/Gn/prNt8SbYtINxkLUk03TDm+c7lkDVg==
X-Received: by 2002:a17:906:4ed8:: with SMTP id
 i24mr26934782ejv.118.1562776749121; 
 Wed, 10 Jul 2019 09:39:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id g16sm890951edc.76.2019.07.10.09.39.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 10 Jul 2019 09:39:08 -0700 (PDT)
Date: Wed, 10 Jul 2019 18:39:06 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: "Vasilev, Oleg" <oleg.vasilev@intel.com>
Message-ID: <20190710163906.GY15868@phenom.ffwll.local>
References: <20190704085410.12749-1-oleg.vasilev@intel.com>
 <20190710153146.GT15868@phenom.ffwll.local>
 <574b6b7e4c734e18debbd5b4a4d278197c850727.camel@intel.com>
 <1224e87e61bce015c8c72a9abec55ce25ef5d240.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1224e87e61bce015c8c72a9abec55ce25ef5d240.camel@intel.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rlLfC63UIGnR7CzSg0i2HcatUSkKiFrrWG5f+oOFkIc=;
 b=Hfl8Adfomvs+HLsgX1hNd8SqY3yalaG8jEOf2E9uEBZ1gwPlUFrkZK9VM9iqfReTs1
 8gHAH8zQGZk2Iep4GqPJ7cDY24NTPBP9xFIyXtSxHLFwJwURld95DGGo7BKOLVFWL3zh
 p0bpvqdCngdBPmBvnG9hfKJPLZjUJoKcCldiE=
Subject: Re: [Intel-gfx] [PATCH] drm/vkms: prime import support
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
Cc: "rodrigosiqueiramelo@gmail.com" <rodrigosiqueiramelo@gmail.com>,
 "hamohammed.sa@gmail.com" <hamohammed.sa@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMDM6Mzg6MTNQTSArMDAwMCwgVmFzaWxldiwgT2xlZyB3
cm90ZToKPiBPbiBXZWQsIDIwMTktMDctMTAgYXQgMTg6MzUgKzAzMDAsIE9sZWcgVmFzaWxldiB3
cm90ZToKPiA+IE9uIFdlZCwgMjAxOS0wNy0xMCBhdCAxNzozMSArMDIwMCwgRGFuaWVsIFZldHRl
ciB3cm90ZToKPiA+ID4gT24gVGh1LCBKdWwgMDQsIDIwMTkgYXQgMTE6NTQ6MTBBTSArMDMwMCwg
T2xlZyBWYXNpbGV2IHdyb3RlOgo+ID4gPiA+IEJyaW5nIGRtYWJ1ZiBzaGFyaW5nIHRocm91Z2gg
aW1wbGVtZW50aW5nIHByaW1lX2ltcG9ydF9zZ190YWJsZQo+ID4gPiA+IGNhbGxiYWNrLgo+ID4g
PiA+IFRoaXMgd2lsbCBoZWxwIHRvIHZhbGlkYXRlIHVzZXJzcGFjZSBjb25mb3JtYW5jZSBpbiBw
cmltZQo+ID4gPiA+IGNvbmZpZ3VyYXRpb25zCj4gPiA+ID4gd2l0aG91dCB1c2luZyBhbnkgYWN0
dWFsIGhhcmR3YXJlIChlLmcuIGluIHRoZSBjbG91ZCkuCj4gPiA+ID4gCj4gPiA+ID4gQ2M6IFJv
ZHJpZ28gU2lxdWVpcmEgPHJvZHJpZ29zaXF1ZWlyYW1lbG9AZ21haWwuY29tPgo+ID4gPiA+IENj
OiBIYW5lZW4gTW9oYW1tZWQgPGhhbW9oYW1tZWQuc2FAZ21haWwuY29tPgo+ID4gPiA+IENjOiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogT2xl
ZyBWYXNpbGV2IDxvbGVnLnZhc2lsZXZAaW50ZWwuY29tPgo+ID4gPiAKPiA+ID4gQnR3IHdoaWNo
IGlndCB0ZXN0Y2FzZXMgZG9lcyB0aGlzIGVuYWJsZT8gQXJlIHRoZSBpZ3QgcGF0Y2hlcwo+ID4g
PiBhbHJlYWR5Cj4gPiA+IG1lcmdlZCAoSSB0aGluayBhcy1pcyB0aGUgaWd0IHByaW1lIHRlc3Rz
IHdvbid0IHJ1biBvbiB2a21zKS4KPiA+ID4gCj4gPiA+IEltbyBmb3IgdmttcyB3ZSByZWFsbHkg
d2FudCB0byBtYWtlIHN1cmUgdGhlcmUncyB0ZXN0cyBmb3IKPiA+ID4gZXZlcnl0aGluZywKPiA+
ID4gb3RoZXJ3aXNlIGEgZmFrZSBkcml2ZXIgZm9yIHRlc3RpbmcvdmFsaWRhdGlvbiBpcyBraW5k
YSBwb2ludGxlc3MKPiA+ID4gLi4uCj4gPiA+IC1EYW5pZWwKPiA+IAo+ID4gSSd2ZSBzdWJtaXR0
ZWQgYSBwYXRjaCB0byBJR1QsIGJ1dCBpdCBpcyBub3QgbWVyZ2VkIHlldDoKPiA+IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjMyMTMvCj4gCj4gT29wcywgdGhpcyBv
bmU6IAo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zMTU2NTkvP3Nl
cmllcz02MzIxNiZyZXY9MQoKQWgsIHJlcGxpZWQgdGhlcmUuIExldCdzIHBvbGlzaCB0aGUgdGVz
dGNhc2UgZmlyc3QsIHRoZW4gbGFuZCB0aGUga2VybmVsCnNpZGUuCi1EYW5pZWwKLS0gCkRhbmll
bCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9n
LmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
