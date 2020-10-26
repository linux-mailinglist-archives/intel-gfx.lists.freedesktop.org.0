Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE392988F4
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Oct 2020 10:00:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E206E97C;
	Mon, 26 Oct 2020 09:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3F66E99F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Oct 2020 09:00:43 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id k65so9243287oih.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Oct 2020 02:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hRBaWCCq4wbQBTwNuW7q67a5Tmk1+JqjkaaLEeDadTs=;
 b=bvtdfw71aRodTqy5UPSySWy4Tn31p6nRGUFZ3pKItSastpVHZR34V/k7YMRHpGmG4j
 CNE6KWAJD7B2FyIcLP631acjgCzeWEGag7RYDfq9n9Na93KQK4/9IaNXUj/73NvVx6ts
 TysLxOnJXiXf/6wbhkRAMzRsP+Tx2e/iFznH0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hRBaWCCq4wbQBTwNuW7q67a5Tmk1+JqjkaaLEeDadTs=;
 b=F2JHTzTg5NerhvFoyOaKXY3Ldoy89rtiKwVPTJ569wHdxQJzIhfcpsipMr+4y6QRKF
 l2hF8G1BvvYkrnmu8j7xsrifoh5iD626DzqbfxHADFsFBNsFSYEshnnexpmpOWxYrGP4
 9GBw86cUwIU7KoQ4PEi6NYxnIyxL1orh9qbDa030ScKTyz1addPxhFr/QdzF31lTHfXJ
 GNJeIxk5Q9teaBeVCXKlxxvbTkFGzLbFOP6QUVt7BeMo5WRl70HqVHox0KWBVS5Z78bZ
 Nd1c/WS7Qc3WvBJjRgxmjXALmUTxMSzZ9koEqh7Kz6ztYHS0QlCuebvRoP3FbZQhUWi0
 Zh7A==
X-Gm-Message-State: AOAM532ZsR10Dg6J/Lx9fHz6UUOn7rPUgmL+6QkLDmnpCT25Iv0d03E9
 xoq4J6T/F7/SGENfRoXk7b11iO38SD2qWi92LWYwmQ==
X-Google-Smtp-Source: ABdhPJxMSU5QeeZE5X7tBaQ58mSxKKsf10x7T/rwesRhNoNQqu+y7NdA0wyjRdZFVYzex1VpWrgmObXJrwDPMyTT73Q=
X-Received: by 2002:aca:39d6:: with SMTP id g205mr11840751oia.14.1603702842441; 
 Mon, 26 Oct 2020 02:00:42 -0700 (PDT)
MIME-Version: 1.0
References: <20201023203957.3255-1-ville.syrjala@linux.intel.com>
 <wusQ8YNZOE_lHaJ5e15M4lmDPxrD2HiUYKJN5Sh6bcZC-Ly-IzqOPeU9OSmC1X4ftuMbwhJpHRnpDQDnp6Z5-bHrONqzOyS8sdKYxN-TFTY=@emersion.fr>
 <20201023225200.GF6112@intel.com>
In-Reply-To: <20201023225200.GF6112@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 26 Oct 2020 10:00:30 +0100
Message-ID: <CAKMK7uGNP5us8KFffnPwq7g4b0-B2q-m7deqz_rPHtCrh_qUTw@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm: Don't create the IN_FORMATS blob when
 the driver does not provide .format_mod_supported()
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
Cc: Marek Vasut <marex@denx.de>, Joonyoung Shim <jy0922.shim@samsung.com>,
 Simon Ser <contact@emersion.fr>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Jingoo Han <jingoohan1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBPY3QgMjQsIDIwMjAgYXQgMTI6NTIgQU0gVmlsbGUgU3lyasOkbMOkCjx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIE9jdCAyMywgMjAyMCBh
dCAxMDowMzo1MFBNICswMDAwLCBTaW1vbiBTZXIgd3JvdGU6Cj4gPiBPbiBGcmlkYXksIE9jdG9i
ZXIgMjMsIDIwMjAgMTA6MzkgUE0sIFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPiB3cm90ZToKPiA+Cj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCB2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbQo+ID4gPgo+ID4gPiBUaGUgY29kZSByZXNwb25zaWJsZSBm
b3IgY3JlYXRpbmcgdGhlIElOX0ZPUk1BVFMKPiA+ID4gYmxvYiBpcyBicm9rZW4gd2hlbiB0aGUg
ZHJpdmVyIGRvZXNuJ3QgcHJvdmlkZSBhCj4gPiA+IC5mb3JtYXRfbW9kX3N1cHBvcnRlZCgpIGhv
b2suIEl0IGp1c3QgY29waWVzIGluCj4gPiA+IHRoZSBmb3JtYXQgbGlzdCwgYnV0IGxlYXZlcyBh
bGwgdGhlIG1vZGlmaWVyIGluZm9ybWF0aW9uCj4gPiA+IHplcm9lZC4gVGhhdCB3b3VsZCBpbmRp
Y2F0ZSAoaW4gYSB2ZXJ5IHNpbGx5IHdheSkgdGhhdAo+ID4gPiB0aGVyZSBhcmUgaW4gZmFjdCBu
byBzdXBwb3J0ZWQgZm9ybWF0K21vZGlmaWVyIGNvbWJpbmF0aW9ucy4KPiA+ID4gVGhhdCBpcyB1
dHRlciBub25zZW5zZS4KPiA+Cj4gPiBTaG91bGQgd2UgV0FSTl9PTiB3aGVuIHRoZSBkcml2ZXIg
ZW5hYmxlcyBhbGxvd19mYl9tb2RpZmllcnMgYnV0Cj4gPiBkb2Vzbid0IHBvcHVsYXRlIGZvcm1h
dF9tb2Rfc3VwcG9ydGVkPwo+Cj4gLmZvcm1hdF9tb2Rfc3VwcG9ydGVkKCkgd2FzIHN1cHBvc2Vk
IHRvIGJlIG9wdGlvbmFsIElJUkMuCj4KPiBCdXQgbm93IHRoYXQgSSBsb29rIGF0IGl0LCBpdCBs
b29rcyBsaWtlIG9ubHkgdGhlc2UKPiBkcml2ZXJzIGFyZSBsYWNraW5nIC5mb3JtYXRfbW9kX3N1
cHBvcnRlZCgpOiBleHlub3MsIG14c2ZiLAo+IHRpbnkvY2lycnVzLCB0aW55L2dtMTJ1MzIwLgo+
Cj4gVGhlcmUgaXMgc29tZSBvdGhlciBvZGRpdHkgZ29pbmcgb24gd2l0aCBzdW40aSB3aGljaCBz
b21ldGltZXMKPiB1c2VzIG1vZGlmaWVycyBzb21ldGltZXMgaXQgZG9lc24ndC4gTm8gaWRlYSB3
aGF0IGlzIGdvaW5nIG9uIHRoZXJlLgo+IEJ1dCBpdCBkb2VzIGhhdmUgLmZvcm1hdF9tb2Rfc3Vw
cG9ydGVkKCkgYXQgbGVhc3QuCj4KPiBTbyBJIGd1ZXNzIGlmIHdlIGNhbiBnZXQgZXh5bm9zLCBt
eHNmYiwgYW5kIHRpbnkvKiB0byBpbXBsZW1lbnQKPiB0aGUgaG9vayB0aGVuIHdlIGNvdWxkIG1h
a2UgaXQgbWFuZGF0b3J5LgoKSSdkIGp1c3QgZGVsZXRlIGl0IGFsbCwgc2luY2UgaXQncyBvYnZp
b3VzbHkgbm90IHRlc3RlZCBmb3IgdGhlc2UKZHJpdmVycy4gQW5kIHRoZW4gYWRkIGEgcGF0Y2gg
d2hpY2ggd2FybnMgaWYgYWxsb3dfZmJfbW9kaWZpZXJzLAptb2RpZmllcnMgbGlzdCBwYXNzZWQg
eS9uIGFuZCAuZm9ybWF0X21vZF9zdXBwb3J0IGRvbid0IGFsbCBhZ3JlZS4KU2luY2UgYSBidW5j
aCBvZiB5b3VyIGRvbid0IGV2ZW4gc2V0IGFsbG93X2ZiX21vZGlmaWVycyBidXQgcGFzcyBhCmZv
cm1hdCBsaXN0LiBTbyBpdCdzIGEgY29tcGxldGUgbWVzcyA6LS8KCk5leHQgc3RlcCB3b3VsZCB0
aGVuIGJlIHRvIGFkZCBzb21lIHRvZG8gaXRlbXMsIGF0IGxlYXN0IHRoZQpzaW1wbGUvdGlueSBk
cml2ZXJzIHNob3VsZCBhbGwgYmUgYWJsZSB0byBkbyB0aGlzIGZhaXJseSBlYXNpbHksIGFuZApw
cm9iYWJseSB3aXRoIGxpbmVhciBvbmx5IGFzIHRoZSBkZWZhdWx0LgotRGFuaWVsCi0tIApEYW5p
ZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxv
Zy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
