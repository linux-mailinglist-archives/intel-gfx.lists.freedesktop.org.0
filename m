Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B466B29405C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 18:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4B56ED03;
	Tue, 20 Oct 2020 16:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784296ED03
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 16:19:49 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id l23so631559vkm.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 09:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3lEkWk4hDtrA0FvKgtww2/CP5HBM7XF6B3q3l34Bzpk=;
 b=uGBeIW9h66nliEyO4vUKQ6uqetN3E6VgbZFGxr6qxYLtOzl9RdSmpoHzZOQ5jw/elq
 hZ4WffnZMjYG69L97NX86wVi2MeigsrM6fHQHHbPCpeeVBZTnpcZTki/c4L4dP1atQc5
 eYea4pEOGSFOuhzDURPM9Dl+hCbYXuF1fJt9B23Nshl4wK/Wjz3/TFxrV8kENMb4s6DO
 oshjyMieUFDRYcZHNPIU8/pVzKpimoB5xDZRM+iWS81dDtGQOj3AKesIVg0QCoBg7e5E
 lFoqH5HZoVCPybgJ1tIy6t7Zb6fomuuUvTS+nKzYdxmGsTF4VB28ijBvfVfhT6cRoxKR
 lmVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3lEkWk4hDtrA0FvKgtww2/CP5HBM7XF6B3q3l34Bzpk=;
 b=ZKHOvq4nvd56ll1CwxkVgk1ll+ffPOuvdxVn4YEPE/cRd09KcvCZKza3IiUJEgyYXg
 4wNdfQMTfWGm6WkPmU9bvtC7pvkI9YgSPNfYiL2W7qaXCK3oicpxQIujkYunLRUUXI2v
 mgmqaNUPsGqBTE17GzF2wadwg+6mSnGMcWUOcid+LildvDn9anpAuEr3kFalHl59ZfM0
 jQBU6mCUaP2weN2xKL5C4QVfmozmuRWljkq0qtzFw6HMylVxtZWaM6lkq9O9Ogg+4RlR
 L/KqUO0V9AOCKDtar/cfTf8jRpx/RdQY50PGnvumwfubFviT9ogOEc9iBoTFM5xr5nxb
 rHXw==
X-Gm-Message-State: AOAM533/RhGcHjrpJRYTKSMT5P0kO2pdD2CGqEp3morEVVUY2Pa0NKZ2
 ELfMOnjuPwBuu3W5zLIPvBDkLrmMOAjtEnCNRUI=
X-Google-Smtp-Source: ABdhPJysZLLXIWPhLbtfbk+TY4ChzjorZCghIeX+riXkf6sBHDJJr/KYIxKF6FVkSazqltD1PcpTfvuIRwcvtq+lK5o=
X-Received: by 2002:a1f:6082:: with SMTP id u124mr2401619vkb.19.1603210788612; 
 Tue, 20 Oct 2020 09:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <20201019203825.10966-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201019203825.10966-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 20 Oct 2020 17:19:22 +0100
Message-ID: <CAM0jSHPYzNtUV4pU3TVeFEWGV3S9GRzS9O32NTjDm51G6hfcFw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Flush coherency domains on
 first set-domain-ioctl
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxOSBPY3QgMjAyMCBhdCAyMTozOCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQXZvaWQgc2tpcHBpbmcgd2hhdCBhcHBlYXJzIHRvIGJl
IGEgbm8tb3Agc2V0LWRvbWFpbi1pb2N0bCBpZiB0aGUgY2FjaGUKPiBjb2hlcmVuY3kgc3RhdGUg
aXMgaW5jb25zaXN0ZW50IHdpdGggb3VyIHRhcmdldCBkb21haW4uIFRoaXMgYWxzbyBoYXMKPiB0
aGUgdXRpbGl0eSBvZiB1c2luZyB0aGUgcG9wdWxhdGlvbiBvZiB0aGUgcGFnZXMgdG8gdmFsaWRh
dGUgdGhlIGJhY2tpbmcKPiBzdG9yZS4KPgo+IFRoZSBkYW5nZXIgaW4gc2tpcHBpbmcgdGhlIGZp
cnN0IHNldC1kb21haW4gaXMgbGVhdmluZyB0aGUgY2FjaGUKPiBpbmNvbnNpc3RlbnQgYW5kIHN1
Ym1pdHRpbmcgc3RhbGUgZGF0YSwgb3Igd29yc2UgbGVhdmluZyB0aGUgY2xlYW4gZGF0YQo+IGlu
IHRoZSBjYWNoZSBhbmQgbm90IGZsdXNoaW5nIGl0IHRvIHRoZSBHUFUuIFRoZSBpbXBhY3Qgc2hv
dWxkIGJlIHNtYWxsCj4gYXMgaXQgcmVxdWlyZXMgYSBuby1vcCBzZXQtZG9tYWluIGFzIHRoZSB2
ZXJ5IGZpcnN0IGlvY3RsIGluIGEKPiBwYXJ0aWN1bGFyIHNlcXVlbmNlIG5vdCBmb3VuZCBpbiB0
eXBpY2FsIHVzZXJzcGFjZS4KPgo+IFJlcG9ydGVkLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kg
PHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KPiBGaXhlczogNzU0YTI1NDQyNzA1ICgi
ZHJtL2k5MTU6IFNraXAgb2JqZWN0IGxvY2tpbmcgYXJvdW5kIGEgbm8tb3Agc2V0LWRvbWFpbiBp
b2N0bCIpCj4gVGVzdGNhc2U6IGlndC9nZW1fbW1hcF9vZmZzZXQvYmx0LWNvaGVyZW5jeQo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENj
OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29tPgo+IENjOiBaYmln
bmlldyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KPiBDYzog
PHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjUuMisKUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVs
ZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
