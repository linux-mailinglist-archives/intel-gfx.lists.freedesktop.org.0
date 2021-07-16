Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E5D3CB882
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 16:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 535746E99A;
	Fri, 16 Jul 2021 14:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com
 [IPv6:2607:f8b0:4864:20::b34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB32F6E99A
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 14:10:40 +0000 (UTC)
Received: by mail-yb1-xb34.google.com with SMTP id g5so15021004ybu.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 07:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IialkKlO1QfxRfNOevGxiK6VDX8foERQw+UWNyzrLCc=;
 b=CD6i7EMooTnSpQaxHdXYkA7TATFP60lyZ0gUpJuHDXtNnP+KPve5A37QOMOrTdtxDG
 c7SREaUkZJCuekUdJ/AeKfkiWiVS2kfVrPDsaD1vRYUscxeM/m8rHJ+6C+iiDtUEU0hO
 vPUpLHgQgGUGYc4hhANxdEaMISYdgTVKM8a9QomzltNjzf/Pj14f5UXkMeYzglMEceJ7
 IhuNLS1IlgRY9qAFHSaLzuw9JmgUMdUaknn0cQ5METVCtpMFV1mwpc6pM6unyKqcJrYa
 EcWxQya2ylUREwoHUMd7Bh0+cIUFuE6A2feZzY91AN9vEKpLLiLi+Xs7kqqkcqMP8c1y
 OA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IialkKlO1QfxRfNOevGxiK6VDX8foERQw+UWNyzrLCc=;
 b=tJz/LGyAalUmqwoARYFd6NMBqkTR8W1ldAZopvdcbS13l7qM3xQb5Bq4wU/DCCPVYL
 cbQZ8UJZ9gsxfmfrZQ+s6hPr5rBc20ZxWM3rtP9+AhUtxO8YD1CEUcqctGYKrmrj0tjk
 hwV2KvF9dKXWXg6NkhZA5bbaUxBCc8a0z7oiztNP+bl/lgcevsRDFUBgXjlGPvKvVb06
 ATkotjoGpmqaKZM+Nud78yxCj1Sv6SF6bx92gdWYDpZ9bJpWIdQgj1BxKThyQWUk7k1z
 eBNaF82MPNYaiAjBxZyj2/ULNyzO4zPSCPC4eqImE7Vmbpca8O2rerJOjJLAr0N8XLcP
 ULGg==
X-Gm-Message-State: AOAM530R5lJddgcOv3QmJIKrU1poVk2ohkNQglBgppjRFhK1jl6CywGl
 prroUnpnM3altKbofGfVz2b1dzLjfjdVMZ6EqX0Nbw==
X-Google-Smtp-Source: ABdhPJwBk/rEtKcJNxTz3uz1i/alMA0aSzahdbhjatb0Bq1SRLevugLNS/ywkTKhReArFoDpL2m0jSIwJuTYTc8yHdk=
X-Received: by 2002:a25:d3c1:: with SMTP id
 e184mr13230517ybf.139.1626444640094; 
 Fri, 16 Jul 2021 07:10:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-6-jason@jlekstrand.net>
 <CAM0jSHPu1EBfnAJ06Dp51a1Qbg+9QnmP=EyUfYXS0fZnJzxR8g@mail.gmail.com>
In-Reply-To: <CAM0jSHPu1EBfnAJ06Dp51a1Qbg+9QnmP=EyUfYXS0fZnJzxR8g@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 16 Jul 2021 09:10:29 -0500
Message-ID: <CAOFGe95gEUNsjCh+30AXhrQLz8_OKbHwwxv=_OhaGKQxGpvcew@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/gem/ttm: Respect the objection
 region in placement_from_obj
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTYsIDIwMjEgYXQgODo1NCBBTSBNYXR0aGV3IEF1bGQKPG1hdHRoZXcud2ls
bGlhbS5hdWxkQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIDE1IEp1bCAyMDIxIGF0IDIz
OjM5LCBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+IHdyb3RlOgo+ID4KPiA+
IFdoZW5ldmVyIHdlIGhhZCBhIHVzZXIgb2JqZWN0IChuX3BsYWNlbWVudHMgPiAwKSwgd2Ugd2Vy
ZSBpZ25vcmluZwo+ID4gb2JqLT5tbS5yZWdpb24gYW5kIGFsd2F5cyBwdXR0aW5nIG9iai0+cGxh
Y2VtZW50c1swXSBhcyB0aGUgcmVxdWVzdGVkCj4gPiByZWdpb24uICBGb3IgTE1FTStTTUVNIG9i
amVjdHMsIHRoaXMgd2FzIGNhdXNpbmcgdGhlbSB0byBnZXQgc2hvdmVkIGludG8KPiA+IExNRU0g
b24gZXZlcnkgaTkxNV90dG1fZ2V0X3BhZ2VzKCkgZXZlbiB3aGVuIFNNRU0gd2FzIHJlcXVlc3Rl
ZCBieSwgc2F5LAo+ID4gaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUoKS4KPgo+IGk5MTVfdHRtX21p
Z3JhdGUgY2FsbHMgaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24oKSBkaXJlY3RseSB3aXRoIHRo
ZQo+IHJlcXVlc3RlZCByZWdpb24sIHNvIHRoZXJlIHNob3VsZG4ndCBiZSBhbiBpc3N1ZSB3aXRo
IG1pZ3JhdGlvbiByaWdodD8KPiBEbyB5b3UgaGF2ZSBzb21lIG1vcmUgZGV0YWlscz8KCldpdGgg
aTkxNV90dG1fbWlncmF0ZSBkaXJlY3RseSwgbm8uICBCdXQsIGluIHRoZSBsYXN0IHBhdGNoIGlu
IHRoZQpzZXJpZXMsIHdlJ3JlIHRyeWluZyB0byBtaWdyYXRlIExNRU0rU01FTSBidWZmZXJzIGlu
dG8gU01FTSBvbgphdHRhY2goKSBhbmQgcGluIGl0IHRoZXJlLiAgVGhpcyBibG93cyB1cCBpbiBh
IHZlcnkgdW5leHBlY3RlZCAoSU1PKQp3YXkuICBUaGUgZmxvdyBnb2VzIHNvbWV0aGluZyBsaWtl
IHRoaXM6CgogLSBDbGllbnQgYXR0ZW1wdHMgYSBkbWEtYnVmIGltcG9ydCBmcm9tIGFub3RoZXIg
ZGV2aWNlCiAtIEluIGF0dGFjaCgpIHdlIGNhbGwgaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUoKSB3
aGljaCBjYWxscwppOTE1X3R0bV9taWdyYXRlKCkgd2hpY2ggbWlncmF0ZXMgYXMgcmVxdWVzdGVk
LgogLSBPbmNlIHRoZSBtaWdyYXRpb24gaXMgY29tcGxldGUsIHdlIGNhbGwgaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl9wYWdlcygpCndoaWNoIGNhbGxzIGk5MTVfdHRtX2dldF9wYWdlcygpIHdoaWNoIGRl
cGVuZHMgb24KaTkxNV90dG1fcGxhY2VtZW50X2Zyb21fb2JqKCkgYW5kIHNvIG1pZ3JhdGVzIGl0
IHJpZ2h0IGJhY2sgdG8gTE1FTS4KCk1heWJlIHRoZSBwcm9ibGVtIGhlcmUgaXMgYWN0dWFsbHkg
dGhhdCBvdXIgVFRNIGNvZGUgaXNuJ3QgcmVzcGVjdGluZwpvYmotPm1tLnBhZ2VzX3Bpbl9jb3Vu
dD8KCkluIGNhc2UgeW91IGNhbid0IHRlbGwsIEkgcmVhbGx5IGhhdmUgbm8gY2x1ZSB3aGF0IEkn
bSBkb2luZyBoZXJlLgpJJ20gcmVhbGx5IHN0dW1ibGluZyBhcm91bmQgaW4gdGhlIGRhcmsgZmlu
ZGluZyB0aGluZ3MgdGhhdCBtYWtlIG15CmJ1ZyBnbyBhd2F5LiAgSSdtIGhhcHB5IGZvciB0aGUg
ZmVlZGJhY2suCgotLUphc29uCgo+Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogSmFzb24gRWtzdHJh
bmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+ID4gQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRo
ZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV90dG0uYyB8IDMgKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdHRtLmMKPiA+IGluZGV4IGQzMGYyNzRjMzI5YzcuLjU5ODVlOTk0ZDU2Y2YgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwo+ID4gQEAgLTE1MCw4
ICsxNTAsNyBAQCBpOTE1X3R0bV9wbGFjZW1lbnRfZnJvbV9vYmooY29uc3Qgc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKPiA+ICAgICAgICAgdW5zaWduZWQgaW50IGk7Cj4gPgo+ID4g
ICAgICAgICBwbGFjZW1lbnQtPm51bV9wbGFjZW1lbnQgPSAxOwo+ID4gLSAgICAgICBpOTE1X3R0
bV9wbGFjZV9mcm9tX3JlZ2lvbihudW1fYWxsb3dlZCA/IG9iai0+bW0ucGxhY2VtZW50c1swXSA6
Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG9iai0+bW0ucmVnaW9uLCBy
ZXF1ZXN0ZWQsIGZsYWdzKTsKPiA+ICsgICAgICAgaTkxNV90dG1fcGxhY2VfZnJvbV9yZWdpb24o
b2JqLT5tbS5yZWdpb24sIHJlcXVlc3RlZCwgZmxhZ3MpOwo+ID4KPiA+ICAgICAgICAgLyogQ2Fj
aGUgdGhpcyBvbiBvYmplY3Q/ICovCj4gPiAgICAgICAgIHBsYWNlbWVudC0+bnVtX2J1c3lfcGxh
Y2VtZW50ID0gbnVtX2FsbG93ZWQ7Cj4gPiAtLQo+ID4gMi4zMS4xCj4gPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
