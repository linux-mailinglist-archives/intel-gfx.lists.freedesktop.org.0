Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3934B484BD
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 15:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34EB789061;
	Mon, 17 Jun 2019 13:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D9E988A72
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 13:59:17 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id k21so16340299edq.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 06:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=TIWxvq8elG/10PiGlNSQHQwPPhEFDgFFwDoZIuQraLs=;
 b=JVUBgv7VF+aCZh4zn6st69nv45bEljmhUA8e9l12FO4TaRLvrpm4rWN50CZsDti4A5
 K2Zw+eDnhOpNU6LGlhEV18u38p4J9tQokAKo+GwD793GfYgOcMEzFqCPmavKgddjG8UG
 oEWk8zs6/TgEEOLEkog/oRTf49fQ7K1S2Gb0RS28wp8s4dan4DmfhimieMBBjCTMjdt0
 XZbYhWDvO5G2XP8+lgiuVW6pMV4pAR3C8bmWF4j/GwvAcpG62KwBoPhSucbOCZC9l82c
 vJUl/L6j8770hbxHm+Wdo881C31RsdWO7OyG+Ura3jFXOI+vqK2JWhfHDM+cYpNvE9Em
 xtcQ==
X-Gm-Message-State: APjAAAVAQhkoQ9mG4wylhr1OQwjaDVq59vtZT7W3LiI8kXfYNiekb/FG
 SRkSgvdory/fFABV0XOhAQe9w1ZnTFY=
X-Google-Smtp-Source: APXvYqwiFh28/BYL14yUb4UExCAr0BFhaEMmt1bSYzJKvI0dYItcLV4GRxE7H9cFQZRRoiQ5QwOqNg==
X-Received: by 2002:a50:95d3:: with SMTP id x19mr74027188eda.98.1560779955962; 
 Mon, 17 Jun 2019 06:59:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id s4sm233233ejm.41.2019.06.17.06.59.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 06:59:15 -0700 (PDT)
Date: Mon, 17 Jun 2019 15:59:13 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <20190617135912.GB12905@phenom.ffwll.local>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-41-daniel.vetter@ffwll.ch>
 <20190617082438.s5eypq5lf6s33nyz@sirius.home.kraxel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617082438.s5eypq5lf6s33nyz@sirius.home.kraxel.org>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TIWxvq8elG/10PiGlNSQHQwPPhEFDgFFwDoZIuQraLs=;
 b=Vbj+NhfGwE/Fgcco8GWLcqm7B6RChsTpK3DkDi8Htez2u8HO06/xxqw1LQ96RA+8qt
 tNGAP/ueKML9DOwLk4S9SkKgG9WXFDEpq948nGIhVFzPMGtTFedW6HBB7V1mdC15hd2H
 3KDBS0O0rhCRfOwrqONU9WZu2dR0wT4p0Xzac=
Subject: Re: [Intel-gfx] [PATCH 40/59] drm/vram-helper: Drop
 drm_gem_prime_export/import
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMTcsIDIwMTkgYXQgMTA6MjQ6MzhBTSArMDIwMCwgR2VyZCBIb2ZmbWFubiB3
cm90ZToKPiAgIEhpLAo+IAo+ID4gQXNpZGU6IFdvdWxkIGJlIHJlYWxseSBuaWNlIHRvIHN3aXRj
aCB0aGUgb3RoZXJzIG92ZXIgdG8KPiA+IGRybV9nZW1fb2JqZWN0X2Z1bmNzLgo+IAo+IFdoaWxl
IG1vc3QgY2FsbGJhY2tzIGFyZSBwcmV0dHkgc3RyYWlnaHQgZm9yd2FyZCAoanVzdCBob29rIHRo
ZSBzYW1lCj4gY2FsbGJhY2tzIGludG8gdGhlIGRybV9nZW1fb2JqZWN0X2Z1bmNzLiBzdHJ1Y3Qp
IHRoZSBtbWFwIGJpdHMgYXJlIGEKPiBiaXQgbW9yZSBvYnNjdXJlLgo+IAo+IEZpcnN0LCB0aGVy
ZSBzZWVtIHRvIGJlIHR3byB3YXlzIHRvIG1tYXAgYSBnZW0gYnVmZmVyOgo+IAo+ICAgKDEpIGRy
bV9kcml2ZXItPmZvcHMtPm1tYXAsIGFuZAo+ICAgKDIpIGRybV9kcml2ZXItPmdlbV9wcmltZV9t
bWFwLgo+IAo+IGRybV9nZW1fb2JqZWN0X2Z1bmNzIGhhcyBqdXN0IGEgc2luZ2xlIHZtX29wcyAu
Li4KPiAKPiBBbHNvIGl0IGlzIG5vdCBvYnZpb3VzIGhvdyBvbmUgd291bGQgY29udmVydCBzb21l
dGhpbmcgd2hpY2ggYmFzaWNhbGx5Cj4gY2FsbHMgdHRtX2JvX21tYXAoKSBpbiBkcm1fZHJpdmVy
LT5mb3BzLT5tbWFwIHRvIHRoZSBuZXcgaW50ZXJmYWNlLgoKWWVhaCB0aGUgbW1hcCBzaWRlIGlz
IHN0aWxsIGEgbWVzcywgYnV0IG15IHNlcmllcyBoZXJlIHdhcyBnZXR0aW5nIGEgYml0CnRvbyBs
b25nIGFscmVhZHkuIFRoZXJlJ3MgYSBidW5jaCBvZiBwcm9ibGVtcyBoZXJlOgoKZHJtX2RyaXZl
ci0+Z2VtX3ByaW1lX21tYXAgY291bGQgYmUgbnVrZWQgYW5kIGluc3RlYWQgd2UgdXNlCmRybV9n
ZW1fcHJpbWVfbW1hcCBldmVyeXdoZXJlLiBFc3BlY2lhbGx5IHRoZSB2YXJpb3VzIHZlcnNpb25z
IGluIGhlbHBlcnMKcmVhbGx5IGRvbid0IGFkZCBtdWNoLgoKVGhlIHRyb3VibGUgaXMgdGhhdCBy
ZW1vdmluZyB0aGUgaG9vayBvdXRyaWdodCBpc24ndCBxdWl0ZSByaWdodCwgYmVjYXVzZQppdCBh
bHNvIHNpZ25hbHMgImlzIG1tYXAgYWxsb3dlZCBvbiB0aGlzIGRtYS1idWYiLiBJJ20ga2luZGEg
dGVtcHRlZCB0bwpqdXN0IG1ha2UgdGhhdCBhIGhhcmQgcmVxdWlyZW1lbnQsIGFuZCBmb3JjZSBw
ZW9wbGUgd2hvIGNhbid0IHN1cHBvcnQgbW1hcApvbiB0aGUgZG1hLWJ1ZiAob3Igd2hvIG5lZWQg
YmVnaW4vZW5kX2NwdV9hY2Nlc3MgaG9va3MpIHRvIHN1cHBseSB0aGVpcgpvd24gc2V0IG9mIGRt
YV9idWZfb3BzLgoKU2Vjb25kIG9uZSBpcyBkcm1fZHJpdmVyLT5mb3BzLT5tbWFwLiBUaGF0IG9u
ZSB3ZSBuZWVkIHRvIGtlZXAsIGJ1dCB0aGlzCmlzbid0IG1tYXAgb24gYSBidWZmZXIsIGJ1dCBt
bWFwIG9uIHRoZSBlbnRpcmUgZHJtX2RldmljZS4gVGhlIG9uZSB3aGljaApzaG91bGQgYmUgcmVw
bGFjZWQgYnkgZHJtX2dlbV9vYmplY3RfZnVuY3Mudm1fb3BzIGlzCmRybV9kcml2ZXItPmdlbV92
bV9vcHMuCgpIb3BlIHRoYXQgZXhwbGFpbnMgYSBiaXQgYmV0dGVyIHdoYXQncyBnb2luZyBvbiBo
ZXJlLiBTdGVwIG9uZSBoZXJlIGZvcgptbWFwIGlzIGRlZmluaXRlbHkgdG8gcm9sbCBvdXQgZHJt
X2dlbV9wcmltZV9tbWFwIGFzIGZhciBhcyBwb3NzaWJsZSwgc28KaXQncyBlYXNpZXIgdG8gdW5k
ZXJzdGFuZCB3aGVyZSB0aGUgZXhjZXB0aW9ucyBhcmUuCgpDaGVlcnMsIERhbmllbAotLSAKRGFu
aWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Js
b2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
