Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D313C1783F2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 21:26:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BB966E94A;
	Tue,  3 Mar 2020 20:26:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 178416E94A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 20:26:48 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id 6so4790851wmi.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Mar 2020 12:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9iB54gufqfdkyQ7xZgYolDsUUntSNV95Msh1a11p16s=;
 b=rGXZG70LuZH+Aqe+KisaGYRr1CGDRzrtZq7nAvc/8YOs/gU9BvB2Tb3GgLueTxLZ+7
 Q7KfSpRxHEHh2BvBrmQjTCxTeOYQHa8fr205Nbg2p+HuOUVnXmCr7AoQKQFE/O7siPHH
 C2HVcqUmeh3OJbMMTqRstMwLWvfR7FMwg2xaiZJL4gq0NrpUOxQGgZIRWUueyPGeOYSe
 FQyS+bO4m5mtNQb+EuRDAywLGR1KgzQXQqbus7WwDPsZYwthCrFLB2U9eXtYVwZgfckr
 ZTP92lNcXY7Oa7YObP/fGD5EJwgAk2SArRttWtVlpE02egKucMwRUNFomyL2Rby4Dg+D
 OhNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9iB54gufqfdkyQ7xZgYolDsUUntSNV95Msh1a11p16s=;
 b=fAWu11HVkCTI5WreuOhWlJPw8rBFfhrLiraTYvrB4M4yrRWr+W11CKYxfx6JjJuSKf
 WZq9UGDeMwPB9nQae9h/BekQWQ8Ro8d5bw2xoLWubJ3ZsNiut8vn3AYgGCGgo9zys4Iv
 zC3tbc3zf8PuCi8TQWv/CVTd85SEuhn3pg/gSzY9ld9jR5cq8lvIu3StG0DYlJUjDAyJ
 i5wR0rhK5XKzMdkaqrcQaZmMp4U6ri0Yj8rVIIfSLBC8O+fOGvMKFfYxqoUVIOgjRdWX
 LDST3vkKDvJm+LHgLjgDf62OEAfAzGGbJqpdy7na+oGHr7IePTS79aiwiZWxj56Pq2LC
 dPxA==
X-Gm-Message-State: ANhLgQ3vw9e5mvQhOU36dhueBBa9j1A0ZAgjZVsfmgzAOFCs7d/gm4SH
 9aA3Bi3U2u3zCuCAQKkt4BIw3/3wHU0g8YSxqms=
X-Google-Smtp-Source: ADFU+vu8ejHgUXKZL7ZSMj7htZ9ypZmiBPlSdiCb5KJx7hT9VFu/jeAaGQYGWdi77ndGgzeZsMo5N3hLapjkRIMaML0=
X-Received: by 2002:a1c:2045:: with SMTP id g66mr274688wmg.15.1583267206748;
 Tue, 03 Mar 2020 12:26:46 -0800 (PST)
MIME-Version: 1.0
References: <20200218230822.66801-1-jose.souza@intel.com>
In-Reply-To: <20200218230822.66801-1-jose.souza@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 3 Mar 2020 12:26:34 -0800
Message-ID: <CAKi4VAL-f=p18JtZQjgc9J+KsSGFZ5VQXB3Cb1AYXMC9G-1-qA@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Remove require_force_probe
 protection
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBGZWIgMTgsIDIwMjAgYXQgMzowNyBQTSBKb3PDqSBSb2JlcnRvIGRlIFNvdXphCjxq
b3NlLnNvdXphQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBXZSBoYXZlIGEgZmV3IFRHTCBtYWNoaW5l
cyBpbiBvdXIgQ0kgYW5kIGl0IGlzIG1vc3RseSBncmVlbiB3aXRoCj4gZmFpbHVyZXMgaW4gdGVz
dHMgdGhhdCB3aWxsIG5vdCBpbXBhY3QgZnV0dXJlIExpbnV4IGluc3RhbGxhdGlvbnMuCj4gQWxz
byB0aGVyZSBpcyBubyB3YXJuaW5ncywgZXJyb3JzLCBmbGlja2VyaW5nIG9yIGFueSB2aXN1YWwg
ZGVmZWN0cwo+IHdoaWxlIGRvaW5nIG9yZGluYXJ5IHRhc2tzIGxpa2UgYnJvd3NpbmcgYW5kIGVk
aXRpbmcgZG9jdW1lbnRzIGluIGEKPiBkdWFsIG1vbml0b3Igc2V0dXAuCj4KPiBBcyBhIHJlbWlu
ZGVyIGk5MTUucmVxdWlyZV9mb3JjZV9wcm9iZSB3YXMgY3JlYXRlZCB0byBwcm90ZWN0Cj4gZnV0
dXJlIExpbnV4IGluc3RhbGxhdGlvbidzIGlzbyBpbWFnZXMgdGhhdCBtaWdodCBjb250YWluIGEK
PiBrZXJuZWwgZnJvbSB0aGUgZW5hYmxpbmcgdGltZSBvZiB0aGUgbmV3IHBsYXRmb3JtLiBXaXRo
b3V0IHRoaXMKPiBwcm90ZWN0aW9uIG1vc3Qgb2YgbGludXggaW5zdGFsbGF0aW9uIHdhcyByZWNv
bW1lbmRpbmcKPiBub21vZGVzZXQgb3B0aW9uIGR1cmluZyBpbnN0YWxsYXRpb24gdGhhdCB3YXMg
Z2V0dGluZyBzdGljawo+IHRoZXJlIGFmdGVyIGluc3RhbGxhdGlvbi4KPgo+IFJlZmVyZW5jZTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9maS10Z2wtdS5odG1sCj4g
UmVmZXJlbmNlOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL3NoYXJk
LXRnbGIuaHRtbAo+IENjOiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+Cj4g
Q2M6IEphbmkgU2FhcmluZW4gPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPgo+IENjOiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxp
bnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KCkFsc28sIEkgdGhpbmsgaXQgd291bGQgYmUgZ29vZCB0byBo
YXZlIHRoaXMgaW4gNS42IHJhdGhlciB0aGFuIDUuNy4KWWVzLCBpdCdzIGxhdGUgaW4gdGhlIG1l
cmdlIHdpbmRvdywgYnV0IGl0IGZhbGxzIGluIHRoZSBjYXNlIG9mICJOZXcKZGV2aWNlIElEcyBh
bmQgcXVpcmtzIGFyZSBhbHNvIGFjY2VwdGVkLiIgb2YgdGhlIHN0YWJsZSBrZXJuZWwgcnVsZXMs
CnNvIGNvdWxkIGFzIHdlbGwganVzdCBnbyBkaXJlY3RseSB0byB0aGlzIGtlcm5lbC4gUm9kcmln
bywgaXMgaXQKcG9zc2libGU/Cgp0aGFua3MKTHVjYXMgRGUgTWFyY2hpCgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRl
bGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiBpbmRleCAyNGIxZjBjZTg3NDMu
LjIxNDZiOWE4NjViYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+IEBAIC04MjIsNyAr
ODIyLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyB0Z2xfaW5mbyA9
IHsKPiAgICAgICAgIEdFTjEyX0ZFQVRVUkVTLAo+ICAgICAgICAgUExBVEZPUk0oSU5URUxfVElH
RVJMQUtFKSwKPiAgICAgICAgIC5waXBlX21hc2sgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0Ip
IHwgQklUKFBJUEVfQykgfCBCSVQoUElQRV9EKSwKPiAtICAgICAgIC5yZXF1aXJlX2ZvcmNlX3By
b2JlID0gMSwKPiAgICAgICAgIC5kaXNwbGF5Lmhhc19tb2R1bGFyX2ZpYSA9IDEsCj4gICAgICAg
ICAuZW5naW5lX21hc2sgPQo+ICAgICAgICAgICAgICAgICBCSVQoUkNTMCkgfCBCSVQoQkNTMCkg
fCBCSVQoVkVDUzApIHwgQklUKFZDUzApIHwgQklUKFZDUzIpLAo+IC0tCj4gMi4yNS4xCj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCgoKLS0g
Ckx1Y2FzIERlIE1hcmNoaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
