Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5E0392B67
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 12:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2D46ECA8;
	Thu, 27 May 2021 10:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592A86EC6A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 10:04:52 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id t3so169816edc.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 03:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=IOyLRFg3lB9wz2+L2BQWMrwyK2pliXsl09aBznEMw5k=;
 b=TA5iRO5GvBA6GLpnCULRhknJ60fDVzrO3gLyeNdDAWtUpoP4AP68PLts0y/s4MUiR/
 6nDEAqJt4jDwpYcy6sbqZGhjlxZT2cVuekBrAuIsL67UyeizA4hpAYViByxMRcWBSqWB
 HZjPsmwQPZlL5+YFrbm7issCHLrZdYISvIdsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=IOyLRFg3lB9wz2+L2BQWMrwyK2pliXsl09aBznEMw5k=;
 b=ZNuAMdS8qjZarPAyyLMN0X/fxJGZzqSdNGjpvicLaKNX6e1cXcOJqejHv7227QgNoB
 9eI76YJosSoLVqFdT0ZORuqIlz1SiT5LbLjibllEY1yNPuR2FoFCpvZyutsARchKrbMQ
 hEeZdEeaBmZ84rsOTtppMX5Fcr1Pc8PfjoeWhzfssT9+FYqwPUlnwYU9YYd9TifPAX48
 FhgaL1JRE8eKWPZcn+a5gq9Qtf68d3Dz8wmAkfA5y3N8EvqHI0YL+CcjUPiBT2isnZZk
 5I+1lKb8Ze5A57ypRmXmgc8vubyFTw7StdxxJXhlBTjsmCEZKemjGNjq+IMoxGeyv3vE
 TZxw==
X-Gm-Message-State: AOAM530lua0rMG/c83x1jg66slXzd9NBo2oY9dMIA4MpcAxaS9FGmC6B
 jnYndrNLnhqS0BmsH8xQF4lWNw==
X-Google-Smtp-Source: ABdhPJwR/k2x3+IPuYcak4pfgAu121CaitqyqAkbK/qAiq0+zdyHP+2rrScnFYquqSyJPtSQLPqmoQ==
X-Received: by 2002:aa7:ca0d:: with SMTP id y13mr3360640eds.307.1622109891014; 
 Thu, 27 May 2021 03:04:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id hz10sm770574ejc.40.2021.05.27.03.04.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 03:04:50 -0700 (PDT)
Date: Thu, 27 May 2021 12:04:48 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <YK9uwBAvUD+2NYlL@phenom.ffwll.local>
References: <20210511083139.54002-1-zbigniew.kempczynski@intel.com>
 <YJq5OHIO8ThIiKCz@phenom.ffwll.local>
 <CAPM=9ty84uK-gT3uXZXGOEFno11SBRUh=btXb-B7OYUmnGiRoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPM=9ty84uK-gT3uXZXGOEFno11SBRUh=btXb-B7OYUmnGiRoQ@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjYsIDIwMjEgYXQgMTA6MzU6NDlBTSArMTAwMCwgRGF2ZSBBaXJsaWUgd3Jv
dGU6Cj4gT24gV2VkLCAxMiBNYXkgMjAyMSBhdCAwMzowNSwgRGFuaWVsIFZldHRlciA8ZGFuaWVs
QGZmd2xsLmNoPiB3cm90ZToKPiA+IE9uIFR1ZSwgTWF5IDExLCAyMDIxIGF0IDEwOjMxOjM5QU0g
KzAyMDAsIFpiaWduaWV3IEtlbXBjennFhHNraSB3cm90ZToKPiA+ID4gV2UgaGF2ZSBlc3RhYmxp
c2hlZCBwcmV2aW91c2x5IHdlIHN0b3AgdXNpbmcgcmVsb2NhdGlvbnMgc3RhcnRpbmcKPiA+ID4g
ZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdlcmxha2UgYXMgYW4gZXhjZXB0aW9uLiBVbmZv
cnR1bmF0ZWx5Cj4gPiA+IHdlIG5lZWQgZXh0ZW5kIHRyYW5zaXRpb24gcGVyaW9kIGFuZCBzdXBw
b3J0IHJlbG9jYXRpb25zIGZvciB0d28KPiA+ID4gb3RoZXIgaWdmeCBwbGF0Zm9ybXMgLSBSb2Nr
ZXRsYWtlIGFuZCBBbGRlcmxha2UuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFpiaWduaWV3
IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgo+ID4gPiBDYzog
RGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiA+ID4gQ2M6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gPiBDYzogSmFzb24gRWtzdHJhbmQgPGphc29u
QGpsZWtzdHJhbmQubmV0Pgo+ID4KPiA+IFNvIHRoZSBhbm5veWluZyB0aGluZyBoZXJlIGlzIHRo
YXQgbm93IG1lZGlhLWRyaXZlciBpcyBmaXhlZDoKPiA+Cj4gPiBodHRwczovL2dpdGh1Yi5jb20v
aW50ZWwvbWVkaWEtZHJpdmVyL2NvbW1pdC8xNDQwMjBjMzc3NzAwODM5NzRiZWRmNTk5MDJiNzBi
OGY0NDRjNzk5Cj4gPgo+ID4gV2hpY2ggbWVhbnMgaWd0IGlzIHJlYWxseSB0aGUgb25seSB0aGlu
ZyBsZWZ0Lgo+ID4KPiA+IERhdmUsIGlzIHRoaXMgc3RpbGwgb2sgZm9yIGFuIGFja2VkIGV4Y2Vw
dGlvbiwgb3IgaXMgdGhpcyBub3cgbGVhbmluZwo+ID4gdG93YXJkcyAianVzdCBmaXggaWd0Ij8K
PiAKPiBPaCB0aGF0IGlzbid0IGdyZWF0IGlzIGl0LCBJIGhhZCB0aG91Z2h0IGl0IHdhcyB0aGUg
bWVkaWEtZHJpdmVyLAo+IGtlZXBpbmcgYSBiaWcgdUFQSSBsaWtlIHRoaXMgb3BlbiBqdXN0IGZv
ciB0aGUgdGVzdCBjb2RlIHNlZW1zIGEgYml0Cj4gc2lsbHkuIEkgZ2V0IHRoZSB0ZXN0cyBhcmUg
dGVzdGluZyBtb3JlIHRoYW4ganVzdCByZWxvY3MsIGJ1dCBpdCdzIGEKPiBwcmV0dHkgYmlnIGlu
dGVyZmFjZSB0byBsZWF2ZSBseWluZyBhcm91bmQgaWYgd2UgY2FuIGF2b2lkIGl0LgoKU28gc2lu
Y2Ugd2UgbmVlZCB0byBkbyB0aGUgd29yayBhbnl3YXkgZm9yIERHMSsgd2hhdCBhYm91dCBzb21l
IGludGVyaW0KaGFjaz8gQ3VycmVudGx5IEFETCBzdGlsbCBoYXMgdGhlIHJlcXVpcmVfZm9yY2Vf
cHJvYmUgZmxhZyBzZXQuIFdlIGNvdWxkCnJlLWVuYWJsZSByZWxvY2F0aW9ucyBqdXN0IGZvciBB
REwsIG9ubHkgd2hpbGUgdGhpcyBmbGFnIGlzIHNldC4gVGhpcwpnaXZlcyB1cyBhIGJ1bmNoIG9m
IHdpZ2dsZSByb29tLCB1bmJsb2NrcyBldmVyeXRoaW5nIGVsc2UgKENJIGlzIGEgYml0IG9uCmZp
cmUgcmlnaHQgbm93IGR1ZSB0byB0aGlzIGFuZCBwcmFjdGlhbGx5IHVudXNlYWJsZSBvbiBBREwg
Z2VtIGFyZWF5KSBhbmQKd2UnbGwgc3RpbGwgbWFrZSBzdXJlIHRoYXQgd2hlbiBBREwgaXMgYWxs
IGRvbmUgd2Ugd29udCBleHBvc2UgcmVsb2NhdGlvbnMKanVzdCBmb3IgaWd0LgoKVGhvdWdodHM/
Ci1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBv
cmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
