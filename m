Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E9FD3F5F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 14:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7546EC29;
	Fri, 11 Oct 2019 12:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5807E6EC2F
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 12:21:10 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id x65so3385822ywf.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 05:21:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xmwlTBCD0KSlF7ZXQMAkXrgmNY/FTHFAF+vxUhjfx50=;
 b=YB1WASNFRGVlnfmMet1Xix/JchOmmgbobC0Q9F2di3PRZWMsI2nmosT5WWWO9Sbmh/
 WRfwGCWYwUV1BaDt2y9uhE1NO3ENUXH1VGyWNH0XQHKayHvRl+oNIpBhGYkkV2D2RF6w
 YquXc4TKkZ0FzI7hxILJg7fezSJT/3YpkSxGSrnzLqBfUl6ZF6Os2xj5PXVKydfqCQ53
 1slLT3tenRpNHLBi74tf9VEqUs8pz7WGz8zJt592CEmk3hiEwr0Xg1LOvX9QdXu8FSKH
 /ymqo1TdSZxDNLmTtaSidSgw+SLMh0KOULJem73zZgTYV98mj8Oha04qixmYyivFjUNv
 kd+g==
X-Gm-Message-State: APjAAAXd4HqNpT9Xm8ujy5j8RRS9jpJi+qMpkTxuLdqusE4g749+s17b
 84LMKsFqbOscJCC0CBsNNnXoGQ==
X-Google-Smtp-Source: APXvYqwAtpp8ieIA2f5iMLZ1zwXDq0GngdSH/t+8pF4FXriRPLMd7laZFIuJ3uU7lal9D6Uw4TfpWg==
X-Received: by 2002:a81:7b03:: with SMTP id w3mr2168765ywc.106.1570796469413; 
 Fri, 11 Oct 2019 05:21:09 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id r14sm2360230ywl.97.2019.10.11.05.21.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 05:21:08 -0700 (PDT)
Date: Fri, 11 Oct 2019 08:21:08 -0400
From: Sean Paul <sean@poorly.run>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191011122108.GN85762@art_vandelay>
References: <20191010210132.8799-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010210132.8799-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xmwlTBCD0KSlF7ZXQMAkXrgmNY/FTHFAF+vxUhjfx50=;
 b=EMM77J/THGNPbn1fS88JDJi9vCDBa13PXzeE7x2sH/WF7+30hKug4pXWpk4WGH12ja
 Sug71VvSwb1spreiTa0vEs7miu/+n1DmTY/gOYRHMJza5y/SCqUsG6Bb1OCNhEqvj9vl
 ss5G9Lx7rQuqcS6ViqJz58avqIBU4YZ9/mv7po3A2v5hGjVqidA+JUmGFssSq0tVknWs
 4ltk100+1zVSJrUGJWCLKBolD1rjjRC4QxEiYuTiNIHmaa+ImxchZfx2o0dUNo/xBJo+
 xnHUCI4ux0XWYYUbSDr0gGw2AlzRq3JJMNK9wpBWOOSpL2SDp9S4kPMcZYBFFzRThc01
 u47Q==
Subject: Re: [Intel-gfx] [PATCH] drm/dp: Remove the unused drm_device to get
 rid of build warning
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMDI6MDE6MzJQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBXZSBubyBsb25nZXIgdXNlIHRoZSBjb25uZWN0aW9uIG11dGV4IGFuZCBoZW5jZSBu
byBuZWVkIHRvCj4gZGVmaW5lIGRybV9kZXZpY2UgKmRldiwgaXQgY2F1c2VzIGEgdW51c2VkIHZh
cmlhYmxlIGJ1aWxkIHdhcm5pbmcKPiAKPiBGaXhlczogODNmYTk4NDJhZmU3ICgiZHJtL2RwLW1z
dDogRHJvcCBjb25uZWN0aW9uX211dGV4IGNoZWNrIikKPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBv
b3JseS5ydW4+CgpSZXZpZXdlZC1ieTogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cgo+IENj
OiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5h
c2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21z
dF90b3BvbG9neS5jIHwgMiAtLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiBpbmRleCA5MzY0ZTRmNDI5NzUu
LjljY2NjNWU2MzMwOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90
b3BvbG9neS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+
IEBAIC00MTg0LDggKzQxODQsNiBAQCBFWFBPUlRfU1lNQk9MKGRybV9kcF9tc3RfdG9wb2xvZ3lf
c3RhdGVfZnVuY3MpOwo+ICBzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9zdGF0ZSAqZHJtX2F0
b21pY19nZXRfbXN0X3RvcG9sb2d5X3N0YXRlKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0
ZSwKPiAgCQkJCQkJCQkgICAgc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IpCj4g
IHsKPiAtCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBtZ3ItPmRldjsKPiAtCj4gIAlyZXR1cm4g
dG9fZHBfbXN0X3RvcG9sb2d5X3N0YXRlKGRybV9hdG9taWNfZ2V0X3ByaXZhdGVfb2JqX3N0YXRl
KHN0YXRlLCAmbWdyLT5iYXNlKSk7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTChkcm1fYXRvbWljX2dl
dF9tc3RfdG9wb2xvZ3lfc3RhdGUpOwo+IC0tIAo+IDIuMTkuMQo+IAoKLS0gClNlYW4gUGF1bCwg
U29mdHdhcmUgRW5naW5lZXIsIEdvb2dsZSAvIENocm9taXVtIE9TCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
