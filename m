Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2F9F0719
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 21:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C4CC6E9D5;
	Tue,  5 Nov 2019 20:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F666E9C9
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 20:37:36 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id i185so18825912oif.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Nov 2019 12:37:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ry64SM/n5KmnwX3K5EGG6fJzjZf5wzyr/1XmfDukKW4=;
 b=aaHuZe8p4IzS3cNIBW8FCbVs2S2GkATRb2WDe92tm+UG6RIMjMMT6FRjLKes73pfO0
 u89LHqiq5m9UsCGcqWCWOfoGW1yFNfEMMj6KqOZayXm0hiOYCD9aR4uhCost6BbizCFz
 CXJQRNyhMv7LpmxT3GMVRSxmN8DJZlb90HnQSAe8wSlFJTeuUv/8794c3bIktSSWnwy0
 HAFFl7tl18OanDvmIgut1gzoScWIh2/y2YrVu46g0pQuCmxrXgIyF9TB+izuYE+C0sYg
 oIuOljbF+QheYHVQDkC7GsKvHJwYZ0HDEPkH0JYHzK6vY/GtYrdmMEMSXBJBGCqObOtG
 j9EQ==
X-Gm-Message-State: APjAAAVVywbN92rbD2hLPGcBd4rDLp57I+nqpKmbMx0bYb/YDUgWDzOe
 xP7t4JqOI5+KZyAip1PCQrt7HXMz/JxM7nFXMtOiAw==
X-Google-Smtp-Source: APXvYqy7jIAIvQz18O6UeN8sJ5Xzz2VnF8PmzeYYjWaBwWQiFJOVnWAHjvAtaEljvooXjk12Z2yb7U/6Wl4u5NPhN4k=
X-Received: by 2002:aca:ead7:: with SMTP id i206mr828674oih.128.1572986256063; 
 Tue, 05 Nov 2019 12:37:36 -0800 (PST)
MIME-Version: 1.0
References: <20191105193829.11599-1-daniel.vetter@ffwll.ch>
 <157298606437.18566.8205030841972731456@skylake-alporthouse-com>
In-Reply-To: <157298606437.18566.8205030841972731456@skylake-alporthouse-com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 5 Nov 2019 21:37:25 +0100
Message-ID: <CAKMK7uGyi0FSVCrD-Kz0pruCDx8TB3CKagyoi5BT76JyG386xg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Ry64SM/n5KmnwX3K5EGG6fJzjZf5wzyr/1XmfDukKW4=;
 b=MHxaa3IH/TY5BKUKAjA4E7raIucfTiHGJLmW/2h0AEl+pfkc+NPzJICRjLcMFXObGv
 CSmzvFzXn5x63t/EVhcKmtxxGQqlihpO9I+knkCz70jmwN8OLPBScGjeOY8W83m1Vjuh
 a8IptoaU6N7Lu7KraOuLPJRzW+cgINlVG08p4=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't select BROKEN
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgNSwgMjAxOSBhdCA5OjM0IFBNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPiB3cm90ZToKPiBRdW90aW5nIERhbmllbCBWZXR0ZXIgKDIwMTktMTEtMDUg
MTk6Mzg6MjkpCj4gPiBJdCdzIGJyb2tlbi4KPgo+IFNvIGlzIHRoZSBjb2RlIHRoYXQgZGVwZW5k
cyBvbiBpdC4gV2hpY2ggaXMgdGhlIGVudGlyZSBwb2ludC4KPgo+IERvbid0IHNlbGVjdCBpdCB0
aGVuLgoKU2VlIHRoZSBtYWlsIGZyb20gU3RlcGhlbiwgaXQgYnJlYWtzIGF1dG9idWlsZGVycy4g
U28gd2UgbmVlZCB0byBkbwp0aGlzIGV4cGxpY2l0bHksIGkuZS4gaWYgeW91IHdhbnQgdG8gc2V0
IHRoaXMsIHlvdSBuZWVkIHRvIGV4cGxpY2l0bHkKZW5hYmxlIENPTkZJR19CUk9LRU4gZmlyc3Qu
IEF1dG8tZW5hYmxpbmcgQ09ORklHX0JST0tFTiBhbHNvIHNvbWV3aGF0CmRlZmVhdHMgdGhlIHBv
aW50IG9mIHRoaXMgZGVidWcgb3B0aW9uLCBzaW5jZSBpdCBkb2Vzbid0IGZvcmNlIHVzZXJzCnRv
IGRvIHRoZSBtdWx0aS1zdGVwIHRoaW5nIGFueW1vcmUuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0
ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3
IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
