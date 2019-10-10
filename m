Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 843A8D2B88
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 15:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE106E21B;
	Thu, 10 Oct 2019 13:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AC906E073
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 13:40:32 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id h2so5510682edn.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 06:40:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=v4wp1yWCk3DLj5eLUzn0LDwoef92o2eZi2DJNZDglqE=;
 b=alYZjFhPurKy6ekIhbwrN9x3sd023B5a93Z5qoRCENpzbac/G4gIRn9UHdKz1Ynx0H
 J/bFyWTRZ1Z0FGJ9rvchsdyVcrgzn+SvdagiTFH0MAreYZR8wQLUCsGu8M00hvnaEBrO
 uFIrXSvOnhwMA9kK7yySU+luwItkroU4jWjfo3I34diSKmAYX3ttHeTPaUEIWczHse/S
 n68Gfvso+6EF+u9uYFatrPTWIHx8qPSQ6gscNFBB6X/w8qZ0+h0UbZh+zcCwy6wrbqDG
 MdQ8f5Jq4KQRTKE8lXnG0Mmki6a0dKe+RAUK6ikjlthbg58dMEPxcehD0IZ8f6g5rPlX
 vhKw==
X-Gm-Message-State: APjAAAXA0h6rh1UmjNRaJnWurgmwOlqjIGwGLt+E68SY5vkevgB/kpoC
 ifGr90EfT8FIaMegB8YpsgfFQwTEV78=
X-Google-Smtp-Source: APXvYqzvXWIm7Js2Vy0Ip0EzXQQW1ILrKXnwGPJGC9b1REBPgtIpvZ4qaEUMpBWVTaWlAWmlRV25+Q==
X-Received: by 2002:a17:906:1cd8:: with SMTP id
 i24mr7990879ejh.149.1570714830754; 
 Thu, 10 Oct 2019 06:40:30 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id q26sm702036eji.65.2019.10.10.06.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 06:40:29 -0700 (PDT)
Date: Thu, 10 Oct 2019 15:40:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20191010134026.GW16989@phenom.ffwll.local>
References: <20191009224113.5432-1-daniel.vetter@ffwll.ch>
 <f33c9f6f6db1dc08c4bba8c220728d7a4408e1fb.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f33c9f6f6db1dc08c4bba8c220728d7a4408e1fb.camel@redhat.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=v4wp1yWCk3DLj5eLUzn0LDwoef92o2eZi2DJNZDglqE=;
 b=WLSvRD9a/vsBqAC46yhFsh4Ch7dkRTFwnoiPQpaff3/V6VLXwK6l7Zyo8l/uYgx7IZ
 QNpBhtxZ7jZE6u6axEYIxVxR6AvwKq1UmSHcsbXbS1c7PYvBaFXJ/9WzCK9w3ka9Zv9+
 eZqFnuVWjv/tpB2PMSeYWhid5Cj13iSOQfKJc=
Subject: Re: [Intel-gfx] [PATCH] drm/dp-mst: Drop connection_mutex check
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMDY6NDY6MzhQTSAtMDQwMCwgTHl1ZGUgUGF1bCB3cm90
ZToKPiBvaCwgY29tcGxldGVseSBmb3Jnb3QgYWJvdXQgdGhpcyBvbmUKPiAKPiBSZXZpZXdlZC1i
eTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4KClRoYW5rcyBmb3IgeW91ciByZXZpZXcs
IGFwcGxpZWQgdG8gZHJtLW1pc2MtbmV4dC4KLURhbmllbAo+IAo+IE9uIFRodSwgMjAxOS0xMC0x
MCBhdCAwMDo0MSArMDIwMCwgRGFuaWVsIFZldHRlciB3cm90ZToKPiA+IFByaXZhdGUgYXRvbWlj
IG9iamVjdHMgaGF2ZSBncm93biB0aGVpciBvd24gbG9ja2luZyB3aXRoCj4gPiAKPiA+IGNvbW1p
dCBiOTYyYTEyMDUwYTM4N2U0YmJmM2E0ODc0NWFmZTFkMjlkMzk2YjBkCj4gPiBBdXRob3I6IFJv
YiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4KPiA+IERhdGU6ICAgTW9uIE9jdCAyMiAxNDoz
MToyMiAyMDE4ICswMjAwCj4gPiAKPiA+ICAgICBkcm0vYXRvbWljOiBpbnRlZ3JhdGUgbW9kZXNl
dCBsb2NrIHdpdGggcHJpdmF0ZSBvYmplY3RzCj4gPiAKPiA+IHdoaWNoIG1lYW5zIHdlJ3JlIG5v
IGxvbmdlciByZWx5aW5nIG9uIGNvbm5lY3Rpb25fbXV0ZXggZm9yIG1zdCBzdGF0ZQo+ID4gbG9j
a2luZyBuZWVkcy4KPiA+IAo+ID4gQ2M6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+Cj4g
PiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMgfCAxIC0KPiA+ICAxIGZpbGUgY2hhbmdlZCwg
MSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9k
cF9tc3RfdG9wb2xvZ3kuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9n
eS5jCj4gPiBpbmRleCA2YjE0YjYzYjhkNjIuLjkzNjRlNGY0Mjk3NSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiA+IEBAIC00MTg2LDcgKzQxODYsNiBAQCBz
dHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9zdGF0ZQo+ID4gKmRybV9hdG9taWNfZ2V0X21zdF90
b3BvbG9neV9zdGF0ZShzdHJ1Y3QgZHJtX2EKPiA+ICB7Cj4gPiAgCXN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYgPSBtZ3ItPmRldjsKPiA+ICAKPiA+IC0JV0FSTl9PTighZHJtX21vZGVzZXRfaXNfbG9j
a2VkKCZkZXYtPm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgpKTsKPiA+ICAJcmV0dXJuCj4g
PiB0b19kcF9tc3RfdG9wb2xvZ3lfc3RhdGUoZHJtX2F0b21pY19nZXRfcHJpdmF0ZV9vYmpfc3Rh
dGUoc3RhdGUsICZtZ3ItCj4gPiA+YmFzZSkpOwo+ID4gIH0KPiA+ICBFWFBPUlRfU1lNQk9MKGRy
bV9hdG9taWNfZ2V0X21zdF90b3BvbG9neV9zdGF0ZSk7Cj4gLS0gCj4gQ2hlZXJzLAo+IAlMeXVk
ZSBQYXVsCj4gCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
