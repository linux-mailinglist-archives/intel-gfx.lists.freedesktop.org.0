Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9517928C00F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 20:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31296E0DB;
	Mon, 12 Oct 2020 18:53:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77A446E461
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 18:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1602528782;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=KOoImy/hfVrllMsYFxlaQ56n4NDnzvrTDYEKw+/QmNE=;
 b=M4AAh0nUwKmWroxVR6QqwRpHTJIW4tdTALnIgk3bDA8GB6QIrYid0afFCH9Dkqc/OE3VTh
 gl3p8xkTAU/VRVc0XurMp07t8oyiPXhDWeG/kIhmqnLWcNa3K4KJoioWZyuKszgDfEaUPH
 u/GYir30rnLNLYT6h5it3bIeHZKd0V8=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-215-xTnjp9o5NmetPqus8eE1DQ-1; Mon, 12 Oct 2020 14:52:59 -0400
X-MC-Unique: xTnjp9o5NmetPqus8eE1DQ-1
Received: by mail-qk1-f199.google.com with SMTP id w189so13325899qkd.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 11:52:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=KOoImy/hfVrllMsYFxlaQ56n4NDnzvrTDYEKw+/QmNE=;
 b=mXXP5Ay8mgAvMw6G5zTQRK1X1AFpKIkqDZdmlvCxxNGiZP4VWLxXB4ZCcc03FrB2H2
 oyM/mmYy4R9Bz1L4hPQAoRUG/n1cmCEXp5Bi8bQ7vXZ7gGV8nxcN4OGn91TjYzT0BFMU
 0M3Ub0fcTwc8QxhjSq/NA2UUjpp0H7w7/yYxf3uyNF9UkA/w8nHC8qCy4cUVhEvcr2nS
 Dc2eJd3z+SprdXpHz+GApWNBYcv+iyAPVN82NL4+ZU8fEPt2BdwdSExqg1+fM5o793xY
 zL+8nmAGMXUOveln4LJyrJLGwJxoaXt4PGlcO8jHG5NITGBICMFeMwfDFkvVyqA1UQAg
 Xg7w==
X-Gm-Message-State: AOAM530Yh23jt0V1tTqt30InIvVixSG4CJogHeGQYlW+z4t/bXlJ4vlu
 MZCAZxmd6piRA8GnI55V2y/u7i+pBYvSDfzXEIEz0106S+sGwehZOJdjo9XoMP84ctxNlqhedYt
 VFW5dMH8Cp9QR7MS5RR7nSLLrzT+A
X-Received: by 2002:ac8:3165:: with SMTP id h34mr11213662qtb.87.1602528779254; 
 Mon, 12 Oct 2020 11:52:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzDx72+r7Kzd9Xn5KVqeaXb5ynedmJekHkl4jX8RPXIwLd2nELc2TgxPTzZJs5bKm6Qb4KMAg==
X-Received: by 2002:ac8:3165:: with SMTP id h34mr11213637qtb.87.1602528779012; 
 Mon, 12 Oct 2020 11:52:59 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id u23sm13294324qka.43.2020.10.12.11.52.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 11:52:58 -0700 (PDT)
Message-ID: <581b2de5e4c70bf208a9043c8203f0c5f31df2ae.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Sean Paul <seanpaul@chromium.org>, Jani Nikula <jani.nikula@intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 12 Oct 2020 14:52:57 -0400
In-Reply-To: <CAOw6vbLxn41pwwFe+za9zuv1mbUrYmfAmP3p4iSCY7PwaRxh4g@mail.gmail.com>
References: <20200918002845.32766-1-sean@poorly.run>
 <470a3a448a80ae6f8e6e6f6a82f5ffc01c1d6033.camel@redhat.com>
 <CAOw6vb+chhRTvF0kHy55uXb9BKqbPAhwJCuJ=_1uOPEHbRXMcA@mail.gmail.com>
 <efd573770a0d78a19e8805760a9a8d9f6f5fe61b.camel@redhat.com>
 <CAOw6vbLxn41pwwFe+za9zuv1mbUrYmfAmP3p4iSCY7PwaRxh4g@mail.gmail.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Tweak initial dpcd
 backlight.enabled value
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
Reply-To: lyude@redhat.com
Cc: Kevin Chowski <chowski@chromium.org>, David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIwLTEwLTEyIGF0IDEzOjUwIC0wNDAwLCBTZWFuIFBhdWwgd3JvdGU6Cj4gT24g
VHVlLCBTZXAgMjIsIDIwMjAgYXQgMTE6MzYgQU0gTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4gPiBPbiBUdWUsIDIwMjAtMDktMjIgYXQgMDk6MzkgLTA0MDAsIFNlYW4gUGF1
bCB3cm90ZToKPiA+ID4gT24gTW9uLCBTZXAgMjEsIDIwMjAgYXQgNjozNSBQTSBMeXVkZSBQYXVs
IDxseXVkZUByZWRoYXQuY29tPiB3cm90ZToKPiA+ID4gPiBTbyBpZiBJIHVuZGVyc3RhbmQgdGhp
cyBjb3JyZWN0bHksIGl0IHNvdW5kcyBsaWtlIHRoYXQgc29tZSBQaXhlbGJvb2tzCj4gPiA+ID4g
Ym9vdCB1cAo+ID4gPiA+IHdpdGggRFBfRURQX0JBQ0tMSUdIVF9CUklHSFRORVNTX01TQiBzZXQg
dG8gYSBub24temVybyB2YWx1ZSwgd2l0aG91dAo+ID4gPiA+IHRoZQo+ID4gPiA+IHBhbmVsIGFj
dHVhbGx5IGhhdmluZyBEUENEIGJhY2tsaWdodCBjb250cm9scyBlbmFibGVkPwo+ID4gPiAKPiA+
ID4gSXQgYm9vdHMgd2l0aCBEUF9FRFBfQkFDS0xJR0hUX0JSSUdIVE5FU1NfTVNCID09IDAsIHdo
aWNoIHVzZWQgdG8gc2V0Cj4gPiA+IGJhY2tsaWdodC5lbmFibGVkID0gZmFsc2UuIEJ5IGNoYW5n
aW5nIGJhY2tsaWdodC5sZXZlbCA9IG1heCwKPiA+ID4gYmFja2xpZ2h0LmVuYWJsZWQgaXMgbm93
IHNldCB0byB0cnVlLiBUaGlzIHJlc3VsdHMgaW4gbG9zaW5nIGJhY2tsaWdodAo+ID4gPiBjb250
cm9sIG9uIGJvb3QgKHNpbmNlIHRoZSBlbmFibGUgcm91dGluZSBpcyBubyBsb25nZXIgaW52b2tl
ZCkuCj4gPiA+IAo+ID4gQWhoaCBvaywgSSdtIGZpbmUgd2l0aCB0aGF0IC0gcmV2aWV3IHN0aWxs
IHN0YW5kcyA6KQo+IAo+IFBpbmdpbmcgaW50ZWwgbWFpbnRhaW5lcnMsIGNvdWxkIHNvbWVvbmUg
cGxlYXNlIGFwcGx5IHRoaXM/Cgpvb3BzLCBzb3JyeSBhYm91dCB0aGF0LiBJIGNhbiBnbyBhaGVh
ZCBhbmQgcHVzaCB0aGlzCj4gCj4gCj4gU2Vhbgo+IAo+ID4gPiBTZWFuCj4gPiA+IAo+ID4gPiA+
IElmIEknbSB1bmRlcnN0YW5kaW5nIHRoYXQgY29ycmVjdGx5LCB0aGVuIHRoaXMgcGF0Y2ggbG9v
a3MgZ29vZCB0byBtZToKPiA+ID4gPiAKPiA+ID4gPiBSZXZpZXdlZC1ieTogTHl1ZGUgUGF1bCA8
bHl1ZGVAcmVkaGF0LmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBPbiBUaHUsIDIwMjAtMDktMTcgYXQg
MjA6MjggLTA0MDAsIFNlYW4gUGF1bCB3cm90ZToKPiA+ID4gPiA+IEZyb206IFNlYW4gUGF1bCA8
c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJbiBjb21taXQgNzk5
NDY3MjMwOTJiICgiZHJtL2k5MTU6IEFzc3VtZSAxMDAlIGJyaWdodG5lc3Mgd2hlbiBub3QgaW4K
PiA+ID4gPiA+IERQQ0QgY29udHJvbCBtb2RlIiksIHdlIGZpeGVkIHRoZSBicmlnaHRuZXNzIGxl
dmVsIHdoZW4gRFBDRCBjb250cm9sCj4gPiA+ID4gPiB3YXMKPiA+ID4gPiA+IG5vdCBhY3RpdmUg
dG8gbWF4IGJyaWdodG5lc3MuIFRoaXMgaXMgYXMgZ29vZCBhcyB3ZSBjYW4gZ3Vlc3Mgc2luY2UK
PiA+ID4gPiA+IG1vc3QKPiA+ID4gPiA+IGJhY2tsaWdodHMgZ28gb24gZnVsbCB3aGVuIHVuY29u
dHJvbGxlZC4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSG93ZXZlciBpbiBkb2luZyBzbyB3ZSBjaGFu
Z2VkIHRoZSBzZW1hbnRpY3Mgb2YgdGhlIGluaXRpYWwKPiA+ID4gPiA+ICdiYWNrbGlnaHQuZW5h
YmxlZCcgdmFsdWUuIEF0IGxlYXN0IG9uIFBpeGVsYm9va3MsIHRoZXkgIHdlcmUgcmVseWluZwo+
ID4gPiA+ID4gb24gdGhlIGJyaWdodG5lc3MgbGV2ZWwgaW4gRFBfRURQX0JBQ0tMSUdIVF9CUklH
SFRORVNTX01TQiB0byBiZSAwIG9uCj4gPiA+ID4gPiBib290IHN1Y2ggdGhhdCBlbmFibGVkIHdv
dWxkIGJlIGZhbHNlLiBUaGlzIGNhdXNlcyB0aGUgZGV2aWNlIHRvIGJlCj4gPiA+ID4gPiBlbmFi
bGVkIHdoZW4gdGhlIGJyaWdodG5lc3MgaXMgc2V0LiBXaXRob3V0IHRoaXMsIGJyaWdodG5lc3Mg
Y29udHJvbAo+ID4gPiA+ID4gZG9lc24ndCB3b3JrLiBTbyBieSBjaGFuZ2luZyBicmlnaHRuZXNz
IHRvIG1heCwgd2UgYWxzbyBmbGlwcGVkCj4gPiA+ID4gPiBlbmFibGVkCj4gPiA+ID4gPiB0byBi
ZSB0cnVlIG9uIGJvb3QuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRvIGZpeCB0aGlzLCBtYWtlIGVu
YWJsZWQgYSBmdW5jdGlvbiBvZiBicmlnaHRuZXNzIGFuZCBiYWNrbGlnaHQKPiA+ID4gPiA+IGNv
bnRyb2wKPiA+ID4gPiA+IG1lY2hhbmlzbS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gRml4ZXM6IDc5
OTQ2NzIzMDkyYiAoImRybS9pOTE1OiBBc3N1bWUgMTAwJSBicmlnaHRuZXNzIHdoZW4gbm90IGlu
Cj4gPiA+ID4gPiBEUENECj4gPiA+ID4gPiBjb250cm9sIG1vZGUiKQo+ID4gPiA+ID4gQ2M6IEx5
dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+Cj4gPiA+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KPiA+ID4gPiA+IENjOiBKdWhhLVBla2thIEhlaWtraWxhIDxq
dWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPgo+ID4gPiA+ID4gQ2M6ICJWaWxsZSBTeXJqw6Rs
w6QiIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gPiA+IENjOiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gPiA+ID4gPiBDYzogS2V2aW4gQ2hvd3Nr
aSA8Y2hvd3NraUBjaHJvbWl1bS5vcmc+Pgo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU2VhbiBQ
YXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgfCAzMSArKysrKysrKysr
KystLS0tCj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0
aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwo+
ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNr
bGlnaHQuYwo+ID4gPiA+ID4gaW5kZXggYWNiZDdlYjY2Y2JlLi4wMzZmNTA0YWM3ZGIgMTAwNjQ0
Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1
eF9iYWNrbGlnaHQuYwo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKPiA+ID4gPiA+IEBAIC01MiwxNyArNTIsMTEgQEAg
c3RhdGljIHZvaWQgc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKHN0cnVjdAo+ID4gPiA+ID4gaW50
ZWxfZHAKPiA+ID4gPiA+ICppbnRlbF9kcCwgYm9vbCBlbmFibGUpCj4gPiA+ID4gPiAgICAgICB9
Cj4gPiA+ID4gPiAgfQo+ID4gPiA+ID4gCj4gPiA+ID4gPiAtLyoKPiA+ID4gPiA+IC0gKiBSZWFk
IHRoZSBjdXJyZW50IGJhY2tsaWdodCB2YWx1ZSBmcm9tIERQQ0QgcmVnaXN0ZXIocykgYmFzZWQK
PiA+ID4gPiA+IC0gKiBvbiBpZiA4LWJpdChNU0IpIG9yIDE2LWJpdChNU0IgYW5kIExTQikgdmFs
dWVzIGFyZSBzdXBwb3J0ZWQKPiA+ID4gPiA+IC0gKi8KPiA+ID4gPiA+IC1zdGF0aWMgdTMyIGlu
dGVsX2RwX2F1eF9nZXRfYmFja2xpZ2h0KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IKPiA+ID4gPiA+
ICpjb25uZWN0b3IpCj4gPiA+ID4gPiArc3RhdGljIGJvb2wgaW50ZWxfZHBfYXV4X2JhY2tsaWdo
dF9kcGNkX21vZGUoc3RydWN0IGludGVsX2Nvbm5lY3Rvcgo+ID4gPiA+ID4gKmNvbm5lY3RvcikK
PiA+ID4gPiA+ICB7Cj4gPiA+ID4gPiAgICAgICBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0g
aW50ZWxfYXR0YWNoZWRfZHAoY29ubmVjdG9yKTsKPiA+ID4gPiA+ICAgICAgIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gPiA+ID4gPiAtICAg
ICB1OCByZWFkX3ZhbFsyXSA9IHsgMHgwIH07Cj4gPiA+ID4gPiAgICAgICB1OCBtb2RlX3JlZzsK
PiA+ID4gPiA+IC0gICAgIHUxNiBsZXZlbCA9IDA7Cj4gPiA+ID4gPiAKPiA+ID4gPiA+ICAgICAg
IGlmIChkcm1fZHBfZHBjZF9yZWFkYigmaW50ZWxfZHAtPmF1eCwKPiA+ID4gPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBEUF9FRFBfQkFDS0xJR0hUX01PREVfU0VUX1JFR0lTVEVSLAo+
ID4gPiA+ID4gQEAgLTcwLDE1ICs2NCwyOSBAQCBzdGF0aWMgdTMyIGludGVsX2RwX2F1eF9nZXRf
YmFja2xpZ2h0KHN0cnVjdAo+ID4gPiA+ID4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCj4g
PiA+ID4gPiAgICAgICAgICAgICAgIGRybV9kYmdfa21zKCZpOTE1LT5kcm0sCj4gPiA+ID4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICJGYWlsZWQgdG8gcmVhZCB0aGUgRFBDRCByZWdpc3Rl
ciAweCV4XG4iLAo+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICBEUF9FRFBfQkFD
S0xJR0hUX01PREVfU0VUX1JFR0lTVEVSKTsKPiA+ID4gPiA+IC0gICAgICAgICAgICAgcmV0dXJu
IDA7Cj4gPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+ID4gPiA+ICAgICAg
IH0KPiA+ID4gPiA+IAo+ID4gPiA+ID4gKyAgICAgcmV0dXJuIChtb2RlX3JlZyAmIERQX0VEUF9C
QUNLTElHSFRfQ09OVFJPTF9NT0RFX01BU0spID09Cj4gPiA+ID4gPiArICAgICAgICAgICAgRFBf
RURQX0JBQ0tMSUdIVF9DT05UUk9MX01PREVfRFBDRDsKPiA+ID4gPiA+ICt9Cj4gPiA+ID4gPiAr
Cj4gPiA+ID4gPiArLyoKPiA+ID4gPiA+ICsgKiBSZWFkIHRoZSBjdXJyZW50IGJhY2tsaWdodCB2
YWx1ZSBmcm9tIERQQ0QgcmVnaXN0ZXIocykgYmFzZWQKPiA+ID4gPiA+ICsgKiBvbiBpZiA4LWJp
dChNU0IpIG9yIDE2LWJpdChNU0IgYW5kIExTQikgdmFsdWVzIGFyZSBzdXBwb3J0ZWQKPiA+ID4g
PiA+ICsgKi8KPiA+ID4gPiA+ICtzdGF0aWMgdTMyIGludGVsX2RwX2F1eF9nZXRfYmFja2xpZ2h0
KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IKPiA+ID4gPiA+ICpjb25uZWN0b3IpCj4gPiA+ID4gPiAr
ewo+ID4gPiA+ID4gKyAgICAgc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGludGVsX2F0dGFj
aGVkX2RwKGNvbm5lY3Rvcik7Cj4gPiA+ID4gPiArICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+ID4gPiA+ID4gKyAgICAgdTggcmVhZF92
YWxbMl0gPSB7IDB4MCB9Owo+ID4gPiA+ID4gKyAgICAgdTE2IGxldmVsID0gMDsKPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ICAgICAgIC8qCj4gPiA+ID4gPiAgICAgICAgKiBJZiB3ZSdyZSBub3QgaW4g
RFBDRCBjb250cm9sIG1vZGUgeWV0LCB0aGUgcHJvZ3JhbW1lZAo+ID4gPiA+ID4gYnJpZ2h0bmVz
cwo+ID4gPiA+ID4gICAgICAgICogdmFsdWUgaXMgbWVhbmluZ2xlc3MgYW5kIHdlIHNob3VsZCBh
c3N1bWUgbWF4IGJyaWdodG5lc3MKPiA+ID4gPiA+ICAgICAgICAqLwo+ID4gPiA+ID4gLSAgICAg
aWYgKChtb2RlX3JlZyAmIERQX0VEUF9CQUNLTElHSFRfQ09OVFJPTF9NT0RFX01BU0spICE9Cj4g
PiA+ID4gPiAtICAgICAgICAgRFBfRURQX0JBQ0tMSUdIVF9DT05UUk9MX01PREVfRFBDRCkKPiA+
ID4gPiA+ICsgICAgIGlmICghaW50ZWxfZHBfYXV4X2JhY2tsaWdodF9kcGNkX21vZGUoY29ubmVj
dG9yKSkKPiA+ID4gPiA+ICAgICAgICAgICAgICAgcmV0dXJuIGNvbm5lY3Rvci0+cGFuZWwuYmFj
a2xpZ2h0Lm1heDsKPiA+ID4gPiA+IAo+ID4gPiA+ID4gICAgICAgaWYgKGRybV9kcF9kcGNkX3Jl
YWQoJmludGVsX2RwLT5hdXgsCj4gPiA+ID4gPiBEUF9FRFBfQkFDS0xJR0hUX0JSSUdIVE5FU1Nf
TVNCLAo+ID4gPiA+ID4gQEAgLTMxOSw3ICszMjcsOCBAQCBzdGF0aWMgaW50IGludGVsX2RwX2F1
eF9zZXR1cF9iYWNrbGlnaHQoc3RydWN0Cj4gPiA+ID4gPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5l
Y3RvciwKPiA+ID4gPiA+IAo+ID4gPiA+ID4gICAgICAgcGFuZWwtPmJhY2tsaWdodC5taW4gPSAw
Owo+ID4gPiA+ID4gICAgICAgcGFuZWwtPmJhY2tsaWdodC5sZXZlbCA9IGludGVsX2RwX2F1eF9n
ZXRfYmFja2xpZ2h0KGNvbm5lY3Rvcik7Cj4gPiA+ID4gPiAtICAgICBwYW5lbC0+YmFja2xpZ2h0
LmVuYWJsZWQgPSBwYW5lbC0+YmFja2xpZ2h0LmxldmVsICE9IDA7Cj4gPiA+ID4gPiArICAgICBw
YW5lbC0+YmFja2xpZ2h0LmVuYWJsZWQgPQo+ID4gPiA+ID4gaW50ZWxfZHBfYXV4X2JhY2tsaWdo
dF9kcGNkX21vZGUoY29ubmVjdG9yKQo+ID4gPiA+ID4gJiYKPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHBhbmVsLT5iYWNrbGlnaHQubGV2ZWwgIT0gMDsKPiA+ID4g
PiA+IAo+ID4gPiA+ID4gICAgICAgcmV0dXJuIDA7Cj4gPiA+ID4gPiAgfQo+ID4gPiA+IC0tCj4g
PiA+ID4gQ2hlZXJzLAo+ID4gPiA+ICAgICAgICAgTHl1ZGUgUGF1bCAoc2hlL2hlcikKPiA+ID4g
PiAgICAgICAgIFNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKPiA+ID4gPiAKPiA+IC0tCj4g
PiBDaGVlcnMsCj4gPiAgICAgICAgIEx5dWRlIFBhdWwgKHNoZS9oZXIpCj4gPiAgICAgICAgIFNv
ZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKPiA+IAotLSAKU2luY2VyZWx5LAogICAgICBMeXVk
ZSBQYXVsIChzaGUvaGVyKQogICAgICBTb2Z0d2FyZSBFbmdpbmVlciBhdCBSZWQgSGF0CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
