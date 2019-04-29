Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CAFE89C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 19:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8A1892FD;
	Mon, 29 Apr 2019 17:17:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F2DE892FD
 for <Intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 17:16:59 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id x71so4051073ybe.6
 for <Intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 10:16:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gHWXIGnUvhoLY2JVlA9sErX7Dxej7xBisnqlyffaM+A=;
 b=CkxYQC9B9gaHYS8mPHJN43bTKyLdl6TE1d/AiDd9SlQI9vMvQBqkGR5wUbGK147tGN
 QMP0JAZQay31omZXI35nkvk9zuxvAkgg3bqeuT+gNN0EXPhnKBL5t7gaHKVzQWW3jbhE
 VwQ9l6kRwrEmp/SiBI5HFM+qdkWBbHZjI0/1Ey5YrJo5bufCRRtZBOqtLNo0SbCclLcH
 aWA/XIc4679d8EXhcOLhdUJSaErIlHwjGMp0xUHqf9hT6Yw420FCIwNOyD7ndEuU8Y1c
 nlj4l/J+ahHogx+WnB05N8R5Z3uTyrszNf5RkKbRPUwTztDQ3EF5c0ZRe2F8TPYEX0zX
 YuOw==
X-Gm-Message-State: APjAAAV/HDz7dEGNSfZMpDtRyJylRa6QYlYgzqMXmEzcP215u33Z4N8w
 RsKPINF8Fzu8BSrOlu1rbg4d5m5NiJd7u/M/gg61A8DjydI=
X-Google-Smtp-Source: APXvYqytlgmVNpwGaUX2gmg2OyIEswafM3DIuMai/yeMEq4r5dYJRaxibtSJjAJMT/hUa2QLeRqOm1TP2yTdqDBz2Gg=
X-Received: by 2002:a25:320f:: with SMTP id y15mr10350242yby.191.1556558218134; 
 Mon, 29 Apr 2019 10:16:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190415114307.1356-1-tvrtko.ursulin@linux.intel.com>
 <20190418100634.984-1-tvrtko.ursulin@linux.intel.com>
 <e1cd2a87-02ac-78d8-ea03-f92bd0ac5f06@intel.com>
 <155626751547.18613.8543320833419448551@jlahtine-desk.ger.corp.intel.com>
 <89f0b59e-29e3-1259-2549-f2daa0b4c00c@intel.com>
 <836034a4-4060-9f40-3a63-729e7b1d4a72@linux.intel.com>
In-Reply-To: <836034a4-4060-9f40-3a63-729e7b1d4a72@linux.intel.com>
From: Anuj Phogat <anuj.phogat@gmail.com>
Date: Mon, 29 Apr 2019 10:16:32 -0700
Message-ID: <CAP5d04F8Wi6zwjnSFS6nLer92bxjE0kCtUcgs3rzrt9JR=d_xQ@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=gHWXIGnUvhoLY2JVlA9sErX7Dxej7xBisnqlyffaM+A=;
 b=mD3gP1gUMi8ad0zjIpMtINo8UaNr0Aqw8gPPiW8BK7++Ix8ZbJQIUTM9pZ60STrkxM
 SarocuDWMBJdpo15ZVlUW2nrIcw2Dtu+R4RAlKEZO3rA11ZuwRGMUfHsvEEjxNu10y8G
 SyCdWyyWd9k5m9lOCWbczcAFBiGiXV2AqvaKRi3AQB1H6EtQYvm4rZW//a7cq2wECopl
 nqEs/B7eT/okUwhGvm0e5Brm6/UfZ8KLIa0cDhaSy+GP2UfqyCyLJgNG1DK0RDFfp4wr
 wYG0gpRZy6182dONiB484p838DVdw60NIUEof37ZkQsZdJQsBX0Jf4qF6HEnLHiCezQo
 Z9zg==
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/icl: Whitelist
 GEN9_SLICE_COMMON_ECO_CHICKEN1
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
Cc: Intel GFX <Intel-gfx@lists.freedesktop.org>, xiaogang.li@intel.com,
 Anuj Phogat <anuj.phogat@intel.com>, kevin.ma@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCBBcHIgMjgsIDIwMTkgYXQgMTA6NTcgUE0gVHZydGtvIFVyc3VsaW4KPHR2cnRrby51
cnN1bGluQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4KPgo+IE9uIDI2LzA0LzIwMTkgMTc6NTgs
IEFudWogUGhvZ2F0IHdyb3RlOgo+ID4KPiA+IEpvb25hcywKPiA+Cj4gPiBNZXNhIG5vdyBhcHBs
aWVzIHRoaXMgV0Egb24gSUNMIGFuZCB3ZSdyZSBub3Qgc2VlaW5nIGFueSByZWdyZXNzaW9ucyBp
biBDSS4KPiA+IEkgdGVzdGVkIE1lc2Egd2l0aCBhbmQgd2l0aG91dCB0aGlzIHBhdGNoIGFwcGxp
ZWQgdG8ga2VybmVsLiBJIGRvbid0IHNlZQo+ID4gYW55Cj4gPiBwZXJmb3JtYW5jZSBpbXBhY3Qg
dG8gTWFuaGF0dGFuIGZyb20gR2Z4QmVuY2g1LiBJJ20gbGl0dGxlIHN1cnByaXNlZCB0bwo+ID4g
c2VlIGl0J3Mgbm90IHJlYWxseSBoZWxwaW5nIGJlbmNobWFyayBwZXJmb3JtYW5jZSBpbiBNZXNh
LiBJJ2xsIGRpZyBiaXQKPiA+IG1vcmUKPiA+IHRvIGZpZ3VyZSBvdXQgYSBwb3NzaWJsZSBleHBs
YW5hdGlvbi4gSSBoYXZlbid0IHRyaWVkIGFueSBvdGhlciBiZW5jaG1hcmtzCj4gPiB3aXRoIHRo
aXMgcGF0Y2guCj4KPiBJIHRoaW5rIHRoZSBjb25jZXJuIHdhcywgaWYgdXNlciBpcyBydW5uaW5n
IG9sZCBNZXNhIChubyBXQSkgb24gbmV3Cj4ga2VybmVsIChubyBXQSkgdGhlcmUgd291bGRuJ3Qg
YmUgYW55IEdQVSBoYW5ncywganVzdCB0aGVvcmV0aWNhbCAoeWV0Cj4gdW5tZWFzdXJlZCkgcGVy
ZiBkcm9wPwo+CkkgYWxzbyB0ZXN0ZWQgTWFuaGF0dGFuIHdpdGggTWVzYSAobm8gV0EpIGFuZCBL
ZXJuZWwgKG5vIFdBKQphbmQgZGlkbid0IHNlZSBhIEdQVSBoYW5nIG9yIGFueSBwZXJmIGRyb3Au
IFRoZSBubyBjaGFuZ2UgaW4gcGVyZgptaWdodCBiZSBkdWUgdG8gY3VycmVudGx5IHVzZWQgTDMg
Y29uZmlndXJhdGlvbiBpbiBNZXNhIHdoaWNoIGRvZXNuJ3QKYWxsb2NhdGUgYW55dGhpbmcgdG8g
IENTIENvbW1hbmQgYnVmZmVyIHNlY3Rpb24uIE1lc2Egbm93IGNhcnJpZXMKdGhlIFdBIGluIGNh
c2Ugd2UgY2hvb3NlIHRvIHVzZSBhIGRpZmZlcmVudCBMMyBjb25maWcgaW4gZnV0dXJlLgoKPiBS
ZWdhcmRzLAo+Cj4gVHZydGtvCj4KPiA+Cj4gPiBUaGFua3MKPiA+IEFudWoKPiA+IE9uIDA0LzI2
LzIwMTkgMDE6MzEgQU0sIEpvb25hcyBMYWh0aW5lbiB3cm90ZToKPiA+PiArIEFudWoKPiA+Pgo+
ID4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTktMDQtMjYgMTE6MTM6NTgpCj4gPj4+
IE9uIDE4LzA0LzIwMTkgMTg6MDYsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+ID4+Pj4gRnJvbTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+Pj4+Cj4gPj4+PiBX
YUVuYWJsZVN0YXRlQ2FjaGVSZWRpcmVjdFRvQ1MgY29udGV4dCB3b3JrYXJvdW5kIGNvbmZpZ3Vy
ZXMgdGhlIEwzCj4gPj4+PiBjYWNoZQo+ID4+Pj4gdG8gYmVuZWZpdCAzZCB3b3JrbG9hZHMgYnV0
IG1lZGlhIGhhcyBkaWZmZXJlbnQgcmVxdWlyZW1lbnRzLgo+ID4+Pj4KPiA+Pj4+IFJlbW92ZSB0
aGUgd29ya2Fyb3VuZCBhbmQgd2hpdGVsaXN0IHRoZSByZWdpc3RlciB0byBhbGxvdyBhbnkgdXNl
cnNwYWNlCj4gPj4+PiBjb25maWd1cmUgdGhlIGJlaGF2aW91ciB0byB0aGVpciBsaWtpbmcuCj4g
Pj4+Pgo+ID4+Pj4gdjI6Cj4gPj4+PiAgICAqIFJlbW92ZSB0aGUgd29ya2Fyb3VuZCBhcGFydCBm
cm9tIGFkZGluZyB0aGUgd2hpdGVsaXN0Lgo+ID4+Pj4KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4+PiBDYzogTGlvbmVs
IExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+ID4+Pj4gQ2M6IGtl
dmluLm1hQGludGVsLmNvbQo+ID4+Pj4gQ2M6IHhpYW9nYW5nLmxpQGludGVsLmNvbQo+ID4+Pgo+
ID4+PiBBY2tlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50
ZWwuY29tPgo+ID4+Pgo+ID4+Pgo+ID4+PiBNZXNhIGNvbW1pdHMgOgo+ID4+Pgo+ID4+PiBjb21t
aXQgZGI1YjM3MmJiOWY1YTBkZmVhODY2MThmOGY5ODMyZjI1ZDllYWY3MSAoYW52KQo+ID4+Pgo+
ID4+PiBjb21taXQgZWFhZGI2MmM5ZWE5OGY4NDFkN2ZmYzI2YzE0MzQxYWJkZjg0ZDJkNiAoaTk2
NSkKPiA+Pj4KPiA+Pj4gY29tbWl0IGQxYmU2N2RiMzk0NjNiNDgzNjljYjcxOTc5ZWQxODY2MmIy
YzE1N2UgKGlyaXMpCj4gPj4gQ291bGQgc29tZWJvZHkgY29uZmlybSB0aGF0IGFwcGx5aW5nIHRo
aXMgcGF0Y2ggZG9lcyBub3QgY2F1c2UgaGFuZ3MgaW4KPiA+PiBvbGRlciBtZXNhLCBhbmQgdGhl
IHBlcmZvcm1hbmNlIGRyb3AgKGlmIGFueSkgaXMgaW5zaWduaWZpY2FudD8KPiA+Pgo+ID4+IEJl
c3QgUmVnYXJkcywKPiA+PiBKb29uYXMKPiA+Cj4gPgo+ID4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
