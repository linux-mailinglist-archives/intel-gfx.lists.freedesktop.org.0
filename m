Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 829D22971C6
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 16:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CAC46F89A;
	Fri, 23 Oct 2020 14:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C9E6F89A
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 14:56:31 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id k65so1601988oih.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 07:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/83dOt83kblqT92A0KMI7N06qJ8og1Wqo0+I9UlSUhU=;
 b=Z50VzVfTvx79lHXKLh+p2FCxHUG3Vn+9ofm+I0c1zmJoAJzkSY2vphMAf3v7ruRTk1
 kvTK0X1SrTi4XtYt2RLem1ITlh2DUW4VoraSzU5G9yxhvdNR+bUT/Gy8OtT5EltPO0GW
 /32iWii9VhG6G9f5U5frtQCitA0NkmlaVjYiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/83dOt83kblqT92A0KMI7N06qJ8og1Wqo0+I9UlSUhU=;
 b=V09Ep1/QhDq6riUVlT+2qKE/39p5tcjJZK+++gcu597x7444uX+V6odR+AjbDl4doN
 DfjMYRO6KOHGUHQVU5rdH9aL3zW/Hl0CpmWQ6mzBPn1FdJ1ZIeFg4afrStSkt89lkGGT
 DZO8+Mq+03DVjeCTJjpF08YN9yNuA7jX6Uph0h3oo4wKqEFuIylIWF1O072WMbIHVVHy
 R0NmzSVSW1eq+QVm1peFfiflyv5+hU1iW/xZgoeM+aCtOt3vqSpltDouK6tEh0x3znUO
 BMtSOWoQeHhUo+cZndHWOjecR49uJyN8uzbugCEol81iwSRImI/ySx1fc4hCEUa8AiM8
 r4yg==
X-Gm-Message-State: AOAM530p8xY952sBdCHGK2zZgB6a/dpe/SQGjJzGvzu+TiWT8DnLHh/p
 6O9278UGW56TkUhvI8VUUVeb4Xhm0eUgW7s7Axlc6g==
X-Google-Smtp-Source: ABdhPJzJK8hmjq2ay9+RBggQyEacr+AN0gHm14oKvVLfO6FeYsWbeWaC/6bjzqP45v4vcWBupqmYn2xmLgcVAtwyLqg=
X-Received: by 2002:aca:cc01:: with SMTP id c1mr2037911oig.128.1603464991027; 
 Fri, 23 Oct 2020 07:56:31 -0700 (PDT)
MIME-Version: 1.0
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-28-daniel.vetter@ffwll.ch>
 <18e78a2d-6ede-97b8-3c8c-e85354a573f8@amd.com>
In-Reply-To: <18e78a2d-6ede-97b8-3c8c-e85354a573f8@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 23 Oct 2020 16:56:20 +0200
Message-ID: <CAKMK7uGG0B+NfBFO7j7E9FnxY4ET+bCgTHp5vKKXEYDX_1aR+Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [PATCH 28/65] drm/ttm: WARN_ON non-empty lru when
 disabling a resource manager
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Huang Rui <ray.huang@amd.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMjMsIDIwMjAgYXQgNDo1NCBQTSBDaHJpc3RpYW4gS8O2bmlnCjxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+Cj4gQW0gMjMuMTAuMjAgdW0gMTQ6MjEgc2Nocmll
YiBEYW5pZWwgVmV0dGVyOgo+ID4gdHRtX3Jlc291cmNlX21hbmFnZXItPnVzZV90eXBlIGlzIG9u
bHkgdXNlZCBmb3IgcnVudGltZSBjaGFuZ2VzIGJ5Cj4gPiB2bXdnZnguIEkgdGhpbmsgaWRlYWxs
eSB3ZSdkIHB1c2ggdGhpcyBmdW5jdGlvbmFsaXR5IGludG8gZHJpdmVycyAtCj4gPiB0dG0gaXRz
ZWxmIGRvZXMgbm90IHByb3ZpZGUgYW55IGxvY2tpbmcgdG8gZ3VhcmFudGVlIHRoaXMgaXMgc2Fm
ZSwgc28KPiA+IHRoZSBvbmx5IHdheSB0aGlzIGNhbiB3b3JrIGF0IHJ1bnRpbWUgaXMgaWYgdGhl
IGRyaXZlciBkb2VzIHByb3ZpZGUKPiA+IGFkZGl0aW9uYWwgZ3VhcmFudGVlcy4gdndtZ2Z4IGRv
ZXMgdGhhdCB0aHJvdWdoIHRoZQo+ID4gdm13X3ByaXZhdGUtPnJlc2VydmF0aW9uX3NlbS4gVGhl
cmVmb3JlIHN1cHBvcnRpbmcgdGhpcyBmZWF0dXJlIGluCj4gPiBzaGFyZWQgY29kZSBmZWVscyBh
IGJpdCBtaXNwbGFjZWQuCj4gPgo+ID4gQXMgYSBmaXJzdCBzdGVwIGFkZCBhIFdBUk5fT04gdG8g
bWFrZSBzdXJlIHRoZSByZXNvdXJjZSBtYW5hZ2VyIGlzCj4gPiBlbXB0eS4gVGhpcyBpcyBqdXN0
IHRvIG1ha2Ugc3VyZSBJIGFjdHVhbGx5IHVuZGVyc3RhbmQgY29ycmVjdGx5IHdoYXQKPiA+IHZt
d2dmeCBpcyBkb2luZywgYW5kIHRvIG1ha2Ugc3VyZSBhbiBldmVudHVhbCBzdWJzZXF1ZW50IHJl
ZmFjdG9yCj4gPiBkb2Vzbid0IGJyZWFrIGFueXRoaW5nLgo+ID4KPiA+IFRoaXMgY2hlY2sgc2hv
dWxkIGFsc28gYmUgdXNlZnVsIGZvciBvdGhlciBkcml2ZXJzLCB0byBtYWtlIHN1cmUgdGhleQo+
ID4gaGF2ZW4ndCBsZWFrZWQgYW55dGhpbmcuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiBDYzogQ2hyaXN0aWFuIEtvZW5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+ID4gQ2M6IEh1YW5nIFJ1aSA8cmF5Lmh1YW5n
QGFtZC5jb20+Cj4KPiBJJ20gcHJldHR5IHN1cmUgdGhhdCB0aGlzIHdpbGwgdHJpZ2dlciBmb3Ig
dm13Z2Z4LiBCdXQgdGhhdCdzIHdoYXQgaXQgaXMKPiBzdXBwb3NlZCB0byBkbywgaXNuJ3QgaXQ/
CgpZZWFoLCB0aGlzIGlzIGFuIGFjY2lkZW50YWwgZHVtcCBvZiBteSB3aXAgcGlsZSwgYW5kIGl0
J3Mgbm90IGRvbmUgeWV0CmF0IGFsbC4gUGxlYXNlIGRpc3JlZ2FyZCAoYXQgbGVhc3QgZm9yIG5v
dykuCi1EYW5pZWwKCj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4KPgo+ID4gLS0tCj4gPiAgIGluY2x1ZGUvZHJtL3R0bS90dG1fcmVzb3Vy
Y2UuaCB8IDQgKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL3R0bS90dG1fcmVzb3VyY2UuaCBiL2luY2x1ZGUv
ZHJtL3R0bS90dG1fcmVzb3VyY2UuaAo+ID4gaW5kZXggZjQ4YTcwZDM5YWM1Li43ODllYzQ3N2I2
MDcgMTAwNjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL2RybS90dG0vdHRtX3Jlc291cmNlLmgKPiA+ICsr
KyBiL2luY2x1ZGUvZHJtL3R0bS90dG1fcmVzb3VyY2UuaAo+ID4gQEAgLTE5MSw2ICsxOTEsMTAg
QEAgc3RydWN0IHR0bV9yZXNvdXJjZSB7Cj4gPiAgIHN0YXRpYyBpbmxpbmUgdm9pZAo+ID4gICB0
dG1fcmVzb3VyY2VfbWFuYWdlcl9zZXRfdXNlZChzdHJ1Y3QgdHRtX3Jlc291cmNlX21hbmFnZXIg
Km1hbiwgYm9vbCB1c2VkKQo+ID4gICB7Cj4gPiArICAgICBpbnQgaTsKPiA+ICsKPiA+ICsgICAg
IGZvciAoaSA9IDA7IGkgPCBUVE1fTUFYX0JPX1BSSU9SSVRZOyBpKyspCj4gPiArICAgICAgICAg
ICAgIFdBUk5fT04oIWxpc3RfZW1wdHkoJm1hbi0+bHJ1W2ldKSk7Cj4gPiAgICAgICBtYW4tPnVz
ZV90eXBlID0gdXNlZDsKPiA+ICAgfQo+ID4KPgoKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJl
IEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
