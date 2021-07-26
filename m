Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2396E3D5CB0
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 17:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCD786E8C0;
	Mon, 26 Jul 2021 15:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com
 [IPv6:2607:f8b0:4864:20::b30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A16672D2D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 15:11:21 +0000 (UTC)
Received: by mail-yb1-xb30.google.com with SMTP id m193so15347464ybf.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 08:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BDfwKIgSKbxznyYPJRVzxNju+XZ1+lwgPHYGCuhA5pA=;
 b=jWiIPmZDg1jCBIqZv0cgAmanq2J7sUeaoqbGcMR5vKQ9saX/aLrhpYk4LLNhdxKFSh
 8hrcEx1FxartIX7f5zlCUvfeVhZ7pz38POwhSusGeUM3WFJqfcE54PsNtpp0sX8PVnAl
 Q9DUdjCs+fVhqp95GIyLowoiocfD/VQw97nW4SpazC0c8YMCJoeZnGtMoRXEjg5HUnDQ
 fFYerCmN/7BRMoRvlj17ZA/pUjh5VwhW/8vgk9z9kmb/Au8Vby5dr8g+ElJfz/IRe191
 OidW3mMXyf5cOWTTbToQUdT+hx3tURXwyZpFwH8XyvmP+dhG8KPXCJW9Lc+p9707DTL4
 k8ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BDfwKIgSKbxznyYPJRVzxNju+XZ1+lwgPHYGCuhA5pA=;
 b=T9hKLlnMtRiYAWybG4li6SueGQmEtmkfYgVfzkfkz+aMJ5mXwNg4Gh9uHdsNj6Ktm5
 CDIempYBo78O8k6IhZzOMbGsJ2JQG0nJ+7qqOibJ3msxO7JKKfgZZGTgS7wmcUtOD82K
 kGy6ZkaaUMDZDnBYVb9XMhbFSZ6j4JoweE80NCsHGXcs51Lcdfblqp6daWNcJXunR056
 ETVDyE02bZihskvSx+T6rV9d4J9tAOrDzx/l9qVK89yoxRolM5cPGrVCmk8ChHnyiDER
 mQJMGAWuy75mSIGamiaL5C0pyL2pB/X/2vpm+fkq+2K2UNHEQZw4Xakoc0FTLDK8A1ed
 eRzw==
X-Gm-Message-State: AOAM530Bs1gJ98ka0XLhH4dNLNnShZKc8y3kzBKJfkmPwrMCf4ZHx8CH
 HQwr+4JJrEO5qacoFKOpf7VF5tvlw2a31ZTHpekHww==
X-Google-Smtp-Source: ABdhPJyATk0zkFzsgvDBrEHmWSwloqdqBBw6ZaZ4wfrikFlaRGMdXmqKXlk03IKz4SxHmYqXwGGgMiRHlztE0r7bip0=
X-Received: by 2002:a25:d714:: with SMTP id o20mr10260386ybg.287.1627312280173; 
 Mon, 26 Jul 2021 08:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210723172142.3273510-1-jason@jlekstrand.net>
 <CAM0jSHOgJQni53DJWP0NWJTAR82PNmb6zgt2Gm-faBd1sDaSHA@mail.gmail.com>
In-Reply-To: <CAM0jSHOgJQni53DJWP0NWJTAR82PNmb6zgt2Gm-faBd1sDaSHA@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 26 Jul 2021 10:11:08 -0500
Message-ID: <CAOFGe95CVvM=7UvH3yBBx9Qr4OPrkRUG7QAXgnSLkWgPGef10g@mail.gmail.com>
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

T24gTW9uLCBKdWwgMjYsIDIwMjEgYXQgMzoxMiBBTSBNYXR0aGV3IEF1bGQKPG1hdHRoZXcud2ls
bGlhbS5hdWxkQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIDIzIEp1bCAyMDIxIGF0IDE4
OjIxLCBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+IHdyb3RlOgo+ID4KPiA+
IFRoaXMgcGF0Y2ggc2VyaWVzIGZpeGVzIGFuIGlzc3VlIHdpdGggZGlzY3JldGUgZ3JhcGhpY3Mg
b24gSW50ZWwgd2hlcmUgd2UKPiA+IGFsbG93ZWQgZG1hLWJ1ZiBpbXBvcnQgd2hpbGUgbGVhdmlu
ZyB0aGUgb2JqZWN0IGluIGxvY2FsIG1lbW9yeS4gIFRoaXMKPiA+IGJyZWFrcyBkb3duIHByZXR0
eSBiYWRseSBpZiB0aGUgaW1wb3J0IGhhcHBlbmVkIG9uIGEgZGlmZmVyZW50IHBoeXNpY2FsCj4g
PiBkZXZpY2UuCj4gPgo+ID4gdjc6Cj4gPiAgLSBEcm9wICJkcm0vaTkxNS9nZW0vdHRtOiBQbGFj
ZSBuZXcgQk9zIGluIHRoZSByZXF1ZXN0ZWQgcmVnaW9uIgo+ID4gIC0gQWRkIGEgbmV3ICJkcm0v
aTkxNS9nZW06IENhbGwgaTkxNV9nZW1fZmx1c2hfZnJlZV9vYmplY3RzKCkgaW4gaTkxNV9nZW1f
ZHVtYl9jcmVhdGUoKSIKPiA+ICAtIE1pc2MuIHJldmlldyBmZWVkYmFjayBmcm9tIE1hdHRoZXcg
QXVsZAo+ID4gdjg6Cj4gPiAgLSBNaXNjLiByZXZpZXcgZmVlZGJhY2sgZnJvbSBNYXR0aGV3IEF1
bGQKPiA+IHY5Ogo+ID4gIC0gUmVwbGFjZSB0aGUgaTkxNS90dG0gcGF0Y2ggd2l0aCB0d28gdGhh
dCBhcmUgaG9wZWZ1bGx5IG1vcmUgY29ycmVjdAo+ID4KPiA+IEphc29uIEVrc3RyYW5kICg2KToK
PiA+ICAgZHJtL2k5MTUvZ2VtOiBDaGVjayBvYmplY3RfY2FuX21pZ3JhdGUgZnJvbSBvYmplY3Rf
bWlncmF0ZQo+ID4gICBkcm0vaTkxNS9nZW06IFJlZmFjdG9yIHBsYWNlbWVudCBzZXR1cCBmb3Ig
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZSoKPiA+ICAgICAodjIpCj4gPiAgIGRybS9pOTE1L2dlbTog
Q2FsbCBpOTE1X2dlbV9mbHVzaF9mcmVlX29iamVjdHMoKSBpbgo+ID4gICAgIGk5MTVfZ2VtX2R1
bWJfY3JlYXRlKCkKPiA+ICAgZHJtL2k5MTUvZ2VtOiBVbmlmeSB1c2VyIG9iamVjdCBjcmVhdGlv
biAodjMpCj4gPiAgIGRybS9pOTE1L2dlbS90dG06IE9ubHkgY2FsbCBfX2k5MTVfZ2VtX29iamVj
dF9zZXRfcGFnZXMgaWYgbmVlZGVkCj4gPiAgIGRybS9pOTE1L2dlbTogQWx3YXlzIGNhbGwgb2Jq
LT5vcHMtPm1pZ3JhdGUgdW5sZXNzIGNhbl9taWdyYXRlIGZhaWxzCj4gPgo+ID4gVGhvbWFzIEhl
bGxzdHLDtm0gKDIpOgo+ID4gICBkcm0vaTkxNS9nZW06IENvcnJlY3QgdGhlIGxvY2tpbmcgYW5k
IHBpbiBwYXR0ZXJuIGZvciBkbWEtYnVmICh2OCkKPiA+ICAgZHJtL2k5MTUvZ2VtOiBNaWdyYXRl
IHRvIHN5c3RlbSBhdCBkbWEtYnVmIGF0dGFjaCB0aW1lICh2NykKPgo+IFNob3VsZCBJIHB1c2gg
dGhlIHNlcmllcz8KClllcywgcGxlYXNlLiAgRG8gd2UgaGF2ZSBhIHNvbGlkIHRlc3RpbmcgcGxh
biBmb3IgdGhpbmdzIGxpa2UgdGhpcwp0aGF0IHRvdWNoIGRpc2NyZXRlPyAgSSB0ZXN0ZWQgd2l0
aCBtZXNhK2dseGdlYXJzIG9uIG15IERHMSBidXQKaGF2ZW4ndCBydW4gYW55dGhpbmcgbW9yZSBz
dHJlc3NmdWwuCgotLUphc29uCgoKPiA+Cj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NyZWF0ZS5jICAgIHwgMTc3ICsrKysrKysrLS0tLS0tLS0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAgfCAgNTggKysrKy0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgIDIwICstCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgIHwgICA0ICsKPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgICAgICAgfCAgMTMgKy0K
PiA+ICAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYuYyAgfCAxOTAg
KysrKysrKysrKysrKysrKystCj4gPiAgLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fbWlncmF0ZS5jIHwgIDE1IC0tCj4gPiAgNyBmaWxlcyBjaGFuZ2VkLCAzNDEgaW5zZXJ0aW9u
cygrKSwgMTM2IGRlbGV0aW9ucygtKQo+ID4KPiA+IC0tCj4gPiAyLjMxLjEKPiA+Cj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
