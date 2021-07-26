Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A803D5EC7
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 17:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B57926EB21;
	Mon, 26 Jul 2021 15:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45E16EB21;
 Mon, 26 Jul 2021 15:56:33 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id 190so9239943qkk.12;
 Mon, 26 Jul 2021 08:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=e9XVhRaH1TczqCa76eLVn8zNrWt+6l3OLxw4Ubk1m8A=;
 b=TXTQAfGj3PduEUVkjW5W0QTA73IakKw9lnBCYW/1B/USOYeKZRM5pc2CxFFhweVM4a
 1yS2YR7mvY//3yv3fXfgIs1fKvgMUTx1+XzGKv/R1WYshNlD0t5DHtxJxDYmarA8758u
 PQoAiU3IcWPURPWisnEy+EPd8VYtNqPJnhSmNdYzAA4pSHK0DgJcRgtS8qRIN6ujCSSl
 GBocc5SOexvEYeOF0UirQiE83OTrGzLNuUe4JO9X0jnWxx460l8ZKpa58v6r4iVUTgc0
 QtYM0V6SM787A2WdRoPEIfVh4NyKF3D10wQLCa+ao41PspP3gOe72Sz7VKIa5GlwdfjY
 qeEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=e9XVhRaH1TczqCa76eLVn8zNrWt+6l3OLxw4Ubk1m8A=;
 b=oNHaYr5e2PF0mEIW05ANpLbM21a9/hiPbE0FNRv+mRWUdUHEeAdvszevkSRM4cVI8i
 xZF3idp4mcfOSdkPtu/w/Q5O0GtkH5sNCUVKZBIjU+ZyoCm6a7OwFkZkqGERseRBDECw
 TOzX6otBKTUaEa6agV0mwsOVLKaaCdWV4wP65LT2xy3uhho86hPZNaODje51eJdOk/bb
 S2hDrmlElSlwESQYD59PhV6Hc9+Dx5oe65P+2dYQFI89jNz+guwloZVhMnoIem1YI8FS
 2oqR5nvvfyyW4BGwwXfarTj6vPf9JOUbuwh3htu1ug/0tATxUYYy60lxr4XJ7Ez8Umsc
 iAuQ==
X-Gm-Message-State: AOAM531wtMkDamJs4ECmEqTVNvSe3PQt3TR4iRgFBFCtCucLuyQRq0/z
 mFlESfpFtNMiyAppB2M7GpjAn/lxqsjMfY3nBEE=
X-Google-Smtp-Source: ABdhPJzU5nTePJPHJcZijY9ess2g1bgz4H2dGpSSB/GSrspqEXuowcE7ApmXIS8PAsf1sfcC5wZlP3kcPAU7urXq50k=
X-Received: by 2002:a05:620a:b1b:: with SMTP id
 t27mr17540412qkg.460.1627314992919; 
 Mon, 26 Jul 2021 08:56:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210723172142.3273510-1-jason@jlekstrand.net>
 <CAM0jSHOgJQni53DJWP0NWJTAR82PNmb6zgt2Gm-faBd1sDaSHA@mail.gmail.com>
 <CAOFGe95CVvM=7UvH3yBBx9Qr4OPrkRUG7QAXgnSLkWgPGef10g@mail.gmail.com>
 <CAM0jSHNmO8ZGdvLkJhonReHmNXjBkgvjmki-yLmUUkbLTnqeLQ@mail.gmail.com>
 <CAOFGe94ZZxm-cahbrzyDkgXGnXT7yVUiHjYO89-hbG8w2=k+Aw@mail.gmail.com>
In-Reply-To: <CAOFGe94ZZxm-cahbrzyDkgXGnXT7yVUiHjYO89-hbG8w2=k+Aw@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 26 Jul 2021 16:56:07 +0100
Message-ID: <CAM0jSHPANmRWjZGoMTDOgcmNWVVzs+1Wg_9F3hc7GsM_r2u8Wg@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
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

T24gTW9uLCAyNiBKdWwgMjAyMSBhdCAxNjozMiwgSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtz
dHJhbmQubmV0PiB3cm90ZToKPgo+IE9uIE1vbiwgSnVsIDI2LCAyMDIxIGF0IDEwOjI5IEFNIE1h
dHRoZXcgQXVsZAo+IDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5jb20+IHdyb3RlOgo+ID4K
PiA+IE9uIE1vbiwgMjYgSnVsIDIwMjEgYXQgMTY6MTEsIEphc29uIEVrc3RyYW5kIDxqYXNvbkBq
bGVrc3RyYW5kLm5ldD4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIE1vbiwgSnVsIDI2LCAyMDIxIGF0
IDM6MTIgQU0gTWF0dGhldyBBdWxkCj4gPiA+IDxtYXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5j
b20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gT24gRnJpLCAyMyBKdWwgMjAyMSBhdCAxODoyMSwg
SmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PiB3cm90ZToKPiA+ID4gPiA+Cj4g
PiA+ID4gPiBUaGlzIHBhdGNoIHNlcmllcyBmaXhlcyBhbiBpc3N1ZSB3aXRoIGRpc2NyZXRlIGdy
YXBoaWNzIG9uIEludGVsIHdoZXJlIHdlCj4gPiA+ID4gPiBhbGxvd2VkIGRtYS1idWYgaW1wb3J0
IHdoaWxlIGxlYXZpbmcgdGhlIG9iamVjdCBpbiBsb2NhbCBtZW1vcnkuICBUaGlzCj4gPiA+ID4g
PiBicmVha3MgZG93biBwcmV0dHkgYmFkbHkgaWYgdGhlIGltcG9ydCBoYXBwZW5lZCBvbiBhIGRp
ZmZlcmVudCBwaHlzaWNhbAo+ID4gPiA+ID4gZGV2aWNlLgo+ID4gPiA+ID4KPiA+ID4gPiA+IHY3
Ogo+ID4gPiA+ID4gIC0gRHJvcCAiZHJtL2k5MTUvZ2VtL3R0bTogUGxhY2UgbmV3IEJPcyBpbiB0
aGUgcmVxdWVzdGVkIHJlZ2lvbiIKPiA+ID4gPiA+ICAtIEFkZCBhIG5ldyAiZHJtL2k5MTUvZ2Vt
OiBDYWxsIGk5MTVfZ2VtX2ZsdXNoX2ZyZWVfb2JqZWN0cygpIGluIGk5MTVfZ2VtX2R1bWJfY3Jl
YXRlKCkiCj4gPiA+ID4gPiAgLSBNaXNjLiByZXZpZXcgZmVlZGJhY2sgZnJvbSBNYXR0aGV3IEF1
bGQKPiA+ID4gPiA+IHY4Ogo+ID4gPiA+ID4gIC0gTWlzYy4gcmV2aWV3IGZlZWRiYWNrIGZyb20g
TWF0dGhldyBBdWxkCj4gPiA+ID4gPiB2OToKPiA+ID4gPiA+ICAtIFJlcGxhY2UgdGhlIGk5MTUv
dHRtIHBhdGNoIHdpdGggdHdvIHRoYXQgYXJlIGhvcGVmdWxseSBtb3JlIGNvcnJlY3QKPiA+ID4g
PiA+Cj4gPiA+ID4gPiBKYXNvbiBFa3N0cmFuZCAoNik6Cj4gPiA+ID4gPiAgIGRybS9pOTE1L2dl
bTogQ2hlY2sgb2JqZWN0X2Nhbl9taWdyYXRlIGZyb20gb2JqZWN0X21pZ3JhdGUKPiA+ID4gPiA+
ICAgZHJtL2k5MTUvZ2VtOiBSZWZhY3RvciBwbGFjZW1lbnQgc2V0dXAgZm9yIGk5MTVfZ2VtX29i
amVjdF9jcmVhdGUqCj4gPiA+ID4gPiAgICAgKHYyKQo+ID4gPiA+ID4gICBkcm0vaTkxNS9nZW06
IENhbGwgaTkxNV9nZW1fZmx1c2hfZnJlZV9vYmplY3RzKCkgaW4KPiA+ID4gPiA+ICAgICBpOTE1
X2dlbV9kdW1iX2NyZWF0ZSgpCj4gPiA+ID4gPiAgIGRybS9pOTE1L2dlbTogVW5pZnkgdXNlciBv
YmplY3QgY3JlYXRpb24gKHYzKQo+ID4gPiA+ID4gICBkcm0vaTkxNS9nZW0vdHRtOiBPbmx5IGNh
bGwgX19pOTE1X2dlbV9vYmplY3Rfc2V0X3BhZ2VzIGlmIG5lZWRlZAo+ID4gPiA+ID4gICBkcm0v
aTkxNS9nZW06IEFsd2F5cyBjYWxsIG9iai0+b3BzLT5taWdyYXRlIHVubGVzcyBjYW5fbWlncmF0
ZSBmYWlscwo+ID4gPiA+ID4KPiA+ID4gPiA+IFRob21hcyBIZWxsc3Ryw7ZtICgyKToKPiA+ID4g
PiA+ICAgZHJtL2k5MTUvZ2VtOiBDb3JyZWN0IHRoZSBsb2NraW5nIGFuZCBwaW4gcGF0dGVybiBm
b3IgZG1hLWJ1ZiAodjgpCj4gPiA+ID4gPiAgIGRybS9pOTE1L2dlbTogTWlncmF0ZSB0byBzeXN0
ZW0gYXQgZG1hLWJ1ZiBhdHRhY2ggdGltZSAodjcpCj4gPiA+ID4KPiA+ID4gPiBTaG91bGQgSSBw
dXNoIHRoZSBzZXJpZXM/Cj4gPiA+Cj4gPiA+IFllcywgcGxlYXNlLiAgRG8gd2UgaGF2ZSBhIHNv
bGlkIHRlc3RpbmcgcGxhbiBmb3IgdGhpbmdzIGxpa2UgdGhpcwo+ID4gPiB0aGF0IHRvdWNoIGRp
c2NyZXRlPyAgSSB0ZXN0ZWQgd2l0aCBtZXNhK2dseGdlYXJzIG9uIG15IERHMSBidXQKPiA+ID4g
aGF2ZW4ndCBydW4gYW55dGhpbmcgbW9yZSBzdHJlc3NmdWwuCj4gPgo+ID4gSSB0aGluayBhbGwg
d2UgcmVhbGx5IGhhdmUgYXJlIHRoZSBtaWdyYXRpb24gcmVsYXRlZCBzZWxmdGVzdHMsIGFuZCBD
SQo+ID4gaXMgbm90IGV2ZW4gcnVubmluZyB0aGVtIG9uIERHMSBkdWUgdG8gb3RoZXIgYnJlYWth
Z2UuIEFzc3VtaW5nIHlvdQo+ID4gcmFuIHRoZXNlIGxvY2FsbHksIEkgdGhpbmsgd2UganVzdCBt
ZXJnZSB0aGUgc2VyaWVzPwo+Cj4gV29ya3MgZm9yIG1lLiAgWWVzLCBJIHJhbiB0aGVtIG9uIG15
IFRHTCtERzEgYm94LiAgSSd2ZSBhbHNvIHRlc3RlZAo+IGJvdGggR0wgYW5kIFZ1bGthbiBQUklN
RSBzdXBwb3J0IHdpdGggdGhlIGNsaWVudCBydW5uaW5nIG9uIERHMSBhbmQKPiB0aGUgY29tcG9z
aXRvciBydW5uaW5nIG9uIFRHTCB3aXRoIHRoaXMgc2VyaWVzIGFuZCBldmVyeXRoaW5nIHdvcmtz
Cj4gc21vb3RoLgoKQW5kIHB1c2hlZCB0byBkcm0taW50ZWwtZ3QtbmV4dC4KCj4KPiAtLUphc29u
Cj4KPgo+ID4gPgo+ID4gPiAtLUphc29uCj4gPiA+Cj4gPiA+Cj4gPiA+ID4gPgo+ID4gPiA+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jcmVhdGUuYyAgICB8IDE3NyArKysr
KysrKy0tLS0tLS0tCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2RtYWJ1Zi5jICAgIHwgIDU4ICsrKystLQo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgICB8ICAyMCArLQo+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8ICAgNCArCj4gPiA+ID4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jICAgICAgIHwgIDEzICstCj4gPiA+
ID4gPiAgLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMgIHwgMTkw
ICsrKysrKysrKysrKysrKysrLQo+ID4gPiA+ID4gIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX21pZ3JhdGUuYyB8ICAxNSAtLQo+ID4gPiA+ID4gIDcgZmlsZXMgY2hhbmdlZCwg
MzQxIGluc2VydGlvbnMoKyksIDEzNiBkZWxldGlvbnMoLSkKPiA+ID4gPiA+Cj4gPiA+ID4gPiAt
LQo+ID4gPiA+ID4gMi4zMS4xCj4gPiA+ID4gPgo+ID4gPiA+ID4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gPiA+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiA+ID4gPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gPiA+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
