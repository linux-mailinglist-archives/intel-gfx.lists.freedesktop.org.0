Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A19D117135
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 17:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F78E6E075;
	Mon,  9 Dec 2019 16:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com
 [IPv6:2607:f8b0:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CAF96E075
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 16:14:13 +0000 (UTC)
Received: by mail-il1-x143.google.com with SMTP id b15so13192474ila.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Dec 2019 08:14:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wZgJrJc3WdnWHirSjGo/CbwE6tKfhWbMKLyIRdtvpNk=;
 b=acMIrf+e8iKIVM3/I+2UpO9OfRUSowdMZ2uum/i1bGmM6LgEjUWY3CwtiE44J1sK+n
 Sv/112cD6Eq8SOJx57GgVImnw25D4W1fUvMX2rNu4mwu9reKWodpkFRUh9y5Ps4S9NIO
 S41qvbFBW2jpo+mNCe90iTQBlqjyCR+74FSGpRl0+dFxfIdqMiAdQwitU+2feOa5ssGY
 2VnZoQ8HU1J6MKxbRmgn+5duvyycBnYgAfAPpdexsTX7F3ijY5OcW48SmsmnyiHhAHgR
 SyLpMZ3qOCf4ZeAFWR7HozPoRIJk2ZTniO6eIf7NIiycXjlu0S++KS0cPhKp1BhMM7D+
 ULDQ==
X-Gm-Message-State: APjAAAWXEdW61oQokXLxlPtNZWQuLIIqL934dr8U7XjEdRaYF/wvrff1
 dXhcMG7vuUqJN9m3k3exJb4IegVFTd1CpftVX9/KlA==
X-Google-Smtp-Source: APXvYqzzpIfTTMiDfhLJvkSlEzkuGGXFeH+uZu3WhLXUehXys8AjiI12ZcfaSyMYfYXzQ/l8gKQv5idArnbFRy+7mt0=
X-Received: by 2002:a92:8655:: with SMTP id g82mr29227596ild.2.1575908052609; 
 Mon, 09 Dec 2019 08:14:12 -0800 (PST)
MIME-Version: 1.0
References: <20191203173638.94919-1-sean@poorly.run>
 <20191203173638.94919-4-sean@poorly.run>
 <20191205193319.GK1208@intel.com> <20191206135509.GE162979@art_vandelay>
 <20191209151846.GQ1208@intel.com>
In-Reply-To: <20191209151846.GQ1208@intel.com>
From: Sean Paul <sean@poorly.run>
Date: Mon, 9 Dec 2019 11:13:36 -0500
Message-ID: <CAMavQKKpk=LiOSzBvD5gJ_Oh5wv9VQQ_c3K62smK0OBCFgf9cg@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wZgJrJc3WdnWHirSjGo/CbwE6tKfhWbMKLyIRdtvpNk=;
 b=bhXccmzsxwXs3zgDIxWnTfjxi3aIph0Y4TTZ/d52fUNpWHCKfiwz+JJmvuKgzaft9G
 ecPc+LlJewWVeX9klsFfnoWQ3t9wlYU+YXWs/qbBpH85HQNW9id+vvycXTf9Lf+iqu/v
 nrrh1WBMZeMltxsuErjcthEzMk9dASClKZ8BPXlvfEtZoLv1eJq30DTTNYLjlh5WyG2A
 QcXhwpGhQPqE4dTbNP4pZMNHYQBUyWHX7Qwb/q8NZvD3VuBSTtwOKkjCdgQFqJy4CY6K
 rKU1acGSvSKVpBRlxzZI9GwTwN6KUyP1gLdFsGjjPj0DJlbIO/F6p8/YV6p8zrjrmrwO
 jJaA==
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Disable HDCP signalling on
 transcoder disable
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
Cc: David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 ramalingm.c@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBEZWMgOSwgMjAxOSBhdCAxMDoxOCBBTSBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIEZyaSwgRGVjIDA2LCAyMDE5IGF0
IDA4OjU1OjA5QU0gLTA1MDAsIFNlYW4gUGF1bCB3cm90ZToKPiA+IE9uIFRodSwgRGVjIDA1LCAy
MDE5IGF0IDA5OjMzOjE5UE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+ID4gT24g
VHVlLCBEZWMgMDMsIDIwMTkgYXQgMTI6MzY6MjZQTSAtMDUwMCwgU2VhbiBQYXVsIHdyb3RlOgo+
ID4gPiA+IEZyb206IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+ID4gPiA+Cj4g
PiA+ID4gQ3VycmVudGx5IHdlIHJlbHkgb24gaW50ZWxfaGRjcF9kaXNhYmxlKCkgdG8gZGlzYWJs
ZSBIRENQIHNpZ25hbGxpbmcgaW4KPiA+ID4gPiB0aGUgRERJIEZ1bmN0aW9uIENvbnRyb2wgcmVn
aXN0ZXIuIFRoaXMgcGF0Y2ggYWRkcyBhIHNhZmV0eSBuZXQgYnkgYWxzbwo+ID4gPiA+IGNsZWFy
aW5nIHRoZSBiaXQgd2hlbiB3ZSBkaXNhYmxlIHRoZSB0cmFuc2NvZGVyLgo+ID4gPiA+Cj4gPiA+
ID4gT25jZSB3ZSBoYXZlIEhEQ1Agb3ZlciBNU1QgYW5kIGRpc2FwcGVhcmluZyBjb25uZWN0b3Jz
LCB3ZSB3YW50IHRvIG1ha2UKPiA+ID4gPiBzdXJlIHRoYXQgdGhlIHNpZ25hbGxpbmcgaXMgdHJ1
bHkgZGlzYWJsZWQgZXZlbiBpZiBIRENQIHRlYXJkb3duIGRvZXNuJ3QKPiA+ID4gPiBnbyBhcyBw
bGFubmVkLgo+ID4gPgo+ID4gPiBXaHkgd291bGRuJ3QgaXQgZ28gYXMgcGxhbm5lZD8KPiA+ID4K
PiA+Cj4gPiBCZWNhdXNlIHRoaW5ncyBjYW4gZmFpbCBpbiB3ZWlyZCBhbmQgd29uZGVyZnVsIHdh
eXMgb24gdW5wbHVnIDotKQo+Cj4gTm90IHJlYWxseS4KPgoKVGhhdCBpcyBhIGJvbGQgcG9zaXRp
b24gdG8gdGFrZSwgYnVncyBoYXBwZW4sIGhhcmR3YXJlIGZsYWtlcywgZXRjLgoKPiA+Cj4gPiBJ
dCdzIGEgc2FmZXR5IG5ldC4gSSBzYXcgdGhpcyBmdW5jdGlvbiBhbmQgZmlndXJlZCBIRENQIHNp
Z25hbGxpbmcgc2hvdWxkIGJlCj4gPiBleHBsaWNpdGx5IGNsZWFyZWQgaGVyZSBhcyB3ZWxsLgo+
Cj4gSSBjYWxsIGl0IGRlYWQgYW5kIGNvbmZ1c2luZyBjb2RlLgoKLi4uYWRkaW5nIGEgYml0IHRv
IGFuIGV4aXN0aW5nIHJlZ2lzdGVyIGNsZWFyIGlzIGNvbmZ1c2luZz8gVGhhdCBtaWdodApiZSBh
IHRvdWNoIGh5cGVyYm9saWMuCgo+IElmIHdlIGdldCBoZXJlIHdpdGggSERDUCBzdGlsbAo+IGVu
YWJsZWQgd2UgaGF2ZSBhIG1vcmUgc2VyaW91cyBidWcgc29tZXdoZXJlIGVsc2UuCj4KCk9rLCBJ
IHN1cHBvc2UgaXQncyB5b3VyIGNhbGwgYXMgdG8gd2hldGhlciB5b3UgdGFrZSB0aGlzIHBhdGNo
LCBmZWVsCmZyZWUgdG8gZHJvcC4KClNlYW4KCj4gLS0KPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRl
bAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJp
LWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
