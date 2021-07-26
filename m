Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DB23D5D0D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 17:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D566E994;
	Mon, 26 Jul 2021 15:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com
 [IPv6:2607:f8b0:4864:20::b29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 486576E994
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 15:32:39 +0000 (UTC)
Received: by mail-yb1-xb29.google.com with SMTP id g76so15492060ybf.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 08:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bZ8ITzaMhIy25WIgbU7Rv5rAp8WgRFR/o5Wo5Y00Zgs=;
 b=XPCiG2C6BtOyiY3SPKgdGfD1P26fpUSskyionO9fInoc7xnorCndvz5NvSkumqBoKb
 HY8sN9BG2mBujaDw5RTpJSazFQJm99nKRQs2grPH48ruh+oGm++89Tnq/wgVt8M00MJ5
 XSsSwEtUfHowhtAMeAi0z7WGuilLSYmmNpvqm/jSaqYWSbUmYuNQ1DwTJ4hzU6LSZ19r
 QJvAtDLl8gXydvzlWVR6d7nokkTpZ11dwwe08gsMQ1Dft3C6gAwIS35OfP+UA1Md0UnB
 ZqumfO4P1zOEKeu+m/XlTV+oVKpKgyeS23bdGjbO5II3EXO0fMlsxWZSOoHtl6fVrE0/
 /eOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bZ8ITzaMhIy25WIgbU7Rv5rAp8WgRFR/o5Wo5Y00Zgs=;
 b=ZXGvrRSX0pDuD2BLNT4Q7WVQdNlbWiGtK9Bh9Vu0xhdzU8NK4RCiGZfnQLyr1vMUeU
 KVxFQrQSY8tFxtNUTblCt5kdJHf4Apdg4pkVZwYrkPyoD0rKXz6YkZp28GsvghXZbMGa
 cPAQjO+9agBMeD8ak8+Z62SedHGZD0S7RgcR7XdY/z6gkAnoOT3rpaGY3YCdZDAZQqQl
 xkM3EclJpOUpd1S1QfFO/YrBcWdCaN2yrjTod22ix5yA+jsUsPf1QH7RpNH+LTqutP9z
 0+2r6GqCmp/QEbLQQCH9S1B62Fzf8MESG1FoxQy3MT0wFs5tkOwd/4fp73+PwuMwlxkE
 WPyg==
X-Gm-Message-State: AOAM533axrYA4B1P/2HIAMjzMT/1jT3Y4F0SpLoPn2ysDEw7bn9gLSuy
 KS6RHb6UFRM0vcaN8vojdLziWc6j8HUH7n8OeDoatw==
X-Google-Smtp-Source: ABdhPJy3I3PrvbBiDpzRwbGw8LEsMBhbJZzn33+0qI9dtbuPwFQ0dlIk3FAxk+tSMFC//rjVeoRLB696OL5PxG8F4pU=
X-Received: by 2002:a25:3750:: with SMTP id e77mr7221748yba.469.1627313558296; 
 Mon, 26 Jul 2021 08:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210723172142.3273510-1-jason@jlekstrand.net>
 <CAM0jSHOgJQni53DJWP0NWJTAR82PNmb6zgt2Gm-faBd1sDaSHA@mail.gmail.com>
 <CAOFGe95CVvM=7UvH3yBBx9Qr4OPrkRUG7QAXgnSLkWgPGef10g@mail.gmail.com>
 <CAM0jSHNmO8ZGdvLkJhonReHmNXjBkgvjmki-yLmUUkbLTnqeLQ@mail.gmail.com>
In-Reply-To: <CAM0jSHNmO8ZGdvLkJhonReHmNXjBkgvjmki-yLmUUkbLTnqeLQ@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 26 Jul 2021 10:32:27 -0500
Message-ID: <CAOFGe94ZZxm-cahbrzyDkgXGnXT7yVUiHjYO89-hbG8w2=k+Aw@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 0/8] drm/i915: Migrate memory to SMEM when
 imported cross-device (v8)
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
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMjYsIDIwMjEgYXQgMTA6MjkgQU0gTWF0dGhldyBBdWxkCjxtYXR0aGV3Lndp
bGxpYW0uYXVsZEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCAyNiBKdWwgMjAyMSBhdCAx
NjoxMSwgSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PiB3cm90ZToKPiA+Cj4g
PiBPbiBNb24sIEp1bCAyNiwgMjAyMSBhdCAzOjEyIEFNIE1hdHRoZXcgQXVsZAo+ID4gPG1hdHRo
ZXcud2lsbGlhbS5hdWxkQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIEZyaSwgMjMg
SnVsIDIwMjEgYXQgMTg6MjEsIEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4g
d3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBUaGlzIHBhdGNoIHNlcmllcyBmaXhlcyBhbiBpc3N1ZSB3
aXRoIGRpc2NyZXRlIGdyYXBoaWNzIG9uIEludGVsIHdoZXJlIHdlCj4gPiA+ID4gYWxsb3dlZCBk
bWEtYnVmIGltcG9ydCB3aGlsZSBsZWF2aW5nIHRoZSBvYmplY3QgaW4gbG9jYWwgbWVtb3J5LiAg
VGhpcwo+ID4gPiA+IGJyZWFrcyBkb3duIHByZXR0eSBiYWRseSBpZiB0aGUgaW1wb3J0IGhhcHBl
bmVkIG9uIGEgZGlmZmVyZW50IHBoeXNpY2FsCj4gPiA+ID4gZGV2aWNlLgo+ID4gPiA+Cj4gPiA+
ID4gdjc6Cj4gPiA+ID4gIC0gRHJvcCAiZHJtL2k5MTUvZ2VtL3R0bTogUGxhY2UgbmV3IEJPcyBp
biB0aGUgcmVxdWVzdGVkIHJlZ2lvbiIKPiA+ID4gPiAgLSBBZGQgYSBuZXcgImRybS9pOTE1L2dl
bTogQ2FsbCBpOTE1X2dlbV9mbHVzaF9mcmVlX29iamVjdHMoKSBpbiBpOTE1X2dlbV9kdW1iX2Ny
ZWF0ZSgpIgo+ID4gPiA+ICAtIE1pc2MuIHJldmlldyBmZWVkYmFjayBmcm9tIE1hdHRoZXcgQXVs
ZAo+ID4gPiA+IHY4Ogo+ID4gPiA+ICAtIE1pc2MuIHJldmlldyBmZWVkYmFjayBmcm9tIE1hdHRo
ZXcgQXVsZAo+ID4gPiA+IHY5Ogo+ID4gPiA+ICAtIFJlcGxhY2UgdGhlIGk5MTUvdHRtIHBhdGNo
IHdpdGggdHdvIHRoYXQgYXJlIGhvcGVmdWxseSBtb3JlIGNvcnJlY3QKPiA+ID4gPgo+ID4gPiA+
IEphc29uIEVrc3RyYW5kICg2KToKPiA+ID4gPiAgIGRybS9pOTE1L2dlbTogQ2hlY2sgb2JqZWN0
X2Nhbl9taWdyYXRlIGZyb20gb2JqZWN0X21pZ3JhdGUKPiA+ID4gPiAgIGRybS9pOTE1L2dlbTog
UmVmYWN0b3IgcGxhY2VtZW50IHNldHVwIGZvciBpOTE1X2dlbV9vYmplY3RfY3JlYXRlKgo+ID4g
PiA+ICAgICAodjIpCj4gPiA+ID4gICBkcm0vaTkxNS9nZW06IENhbGwgaTkxNV9nZW1fZmx1c2hf
ZnJlZV9vYmplY3RzKCkgaW4KPiA+ID4gPiAgICAgaTkxNV9nZW1fZHVtYl9jcmVhdGUoKQo+ID4g
PiA+ICAgZHJtL2k5MTUvZ2VtOiBVbmlmeSB1c2VyIG9iamVjdCBjcmVhdGlvbiAodjMpCj4gPiA+
ID4gICBkcm0vaTkxNS9nZW0vdHRtOiBPbmx5IGNhbGwgX19pOTE1X2dlbV9vYmplY3Rfc2V0X3Bh
Z2VzIGlmIG5lZWRlZAo+ID4gPiA+ICAgZHJtL2k5MTUvZ2VtOiBBbHdheXMgY2FsbCBvYmotPm9w
cy0+bWlncmF0ZSB1bmxlc3MgY2FuX21pZ3JhdGUgZmFpbHMKPiA+ID4gPgo+ID4gPiA+IFRob21h
cyBIZWxsc3Ryw7ZtICgyKToKPiA+ID4gPiAgIGRybS9pOTE1L2dlbTogQ29ycmVjdCB0aGUgbG9j
a2luZyBhbmQgcGluIHBhdHRlcm4gZm9yIGRtYS1idWYgKHY4KQo+ID4gPiA+ICAgZHJtL2k5MTUv
Z2VtOiBNaWdyYXRlIHRvIHN5c3RlbSBhdCBkbWEtYnVmIGF0dGFjaCB0aW1lICh2NykKPiA+ID4K
PiA+ID4gU2hvdWxkIEkgcHVzaCB0aGUgc2VyaWVzPwo+ID4KPiA+IFllcywgcGxlYXNlLiAgRG8g
d2UgaGF2ZSBhIHNvbGlkIHRlc3RpbmcgcGxhbiBmb3IgdGhpbmdzIGxpa2UgdGhpcwo+ID4gdGhh
dCB0b3VjaCBkaXNjcmV0ZT8gIEkgdGVzdGVkIHdpdGggbWVzYStnbHhnZWFycyBvbiBteSBERzEg
YnV0Cj4gPiBoYXZlbid0IHJ1biBhbnl0aGluZyBtb3JlIHN0cmVzc2Z1bC4KPgo+IEkgdGhpbmsg
YWxsIHdlIHJlYWxseSBoYXZlIGFyZSB0aGUgbWlncmF0aW9uIHJlbGF0ZWQgc2VsZnRlc3RzLCBh
bmQgQ0kKPiBpcyBub3QgZXZlbiBydW5uaW5nIHRoZW0gb24gREcxIGR1ZSB0byBvdGhlciBicmVh
a2FnZS4gQXNzdW1pbmcgeW91Cj4gcmFuIHRoZXNlIGxvY2FsbHksIEkgdGhpbmsgd2UganVzdCBt
ZXJnZSB0aGUgc2VyaWVzPwoKV29ya3MgZm9yIG1lLiAgWWVzLCBJIHJhbiB0aGVtIG9uIG15IFRH
TCtERzEgYm94LiAgSSd2ZSBhbHNvIHRlc3RlZApib3RoIEdMIGFuZCBWdWxrYW4gUFJJTUUgc3Vw
cG9ydCB3aXRoIHRoZSBjbGllbnQgcnVubmluZyBvbiBERzEgYW5kCnRoZSBjb21wb3NpdG9yIHJ1
bm5pbmcgb24gVEdMIHdpdGggdGhpcyBzZXJpZXMgYW5kIGV2ZXJ5dGhpbmcgd29ya3MKc21vb3Ro
LgoKLS1KYXNvbgoKCj4gPgo+ID4gLS1KYXNvbgo+ID4KPiA+Cj4gPiA+ID4KPiA+ID4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jICAgIHwgMTc3ICsrKysrKysr
LS0tLS0tLS0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1
Zi5jICAgIHwgIDU4ICsrKystLQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmMgICAgfCAgMjAgKy0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwgICA0ICsKPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jICAgICAgIHwgIDEzICstCj4gPiA+ID4gIC4uLi9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jICB8IDE5MCArKysrKysrKysrKysr
KysrKy0KPiA+ID4gPiAgLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbWlncmF0
ZS5jIHwgIDE1IC0tCj4gPiA+ID4gIDcgZmlsZXMgY2hhbmdlZCwgMzQxIGluc2VydGlvbnMoKyks
IDEzNiBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+IC0tCj4gPiA+ID4gMi4zMS4xCj4gPiA+
ID4KPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+ID4gPiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4gPiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
