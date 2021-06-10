Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5993A3460
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 21:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A10A36ED13;
	Thu, 10 Jun 2021 19:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com
 [IPv6:2607:f8b0:4864:20::f2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384056ED13
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 19:58:06 +0000 (UTC)
Received: by mail-qv1-xf2a.google.com with SMTP id w4so7934547qvr.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 12:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OYC7nrnjy59RMr8ZRfOcc/kQwZ6q6LkJ9N8nXVRa/xQ=;
 b=EfPnLxr0pUZX79QsSh6WmVkXWP7LYHMIdz7VC11//5wXlkPAe6qg/2ol+cdOZFrqGD
 LvttM0ZqFbdTQ6aIDupwgJTM8GAsZWfQqeqJLAf+9MythWQjVAuiY80FOAG9RHELgK/r
 lU3Ps/kNDOz1BUi8esEWuXYz6Gt9SrJz3TGM4oyX6k/+xKj2DcM/qOw/aESEBk/0yAQc
 nP6kz16ZmQxJNpangTzWD6uyX/FgjbsA8LbpYVh/hsS0FQNV098fXFlu2wiVlezCoHV5
 MuAQ3alEPS9ucMgJjPI2+tr799g6EbZW/8xUbPnd2sX/ZuSBCkAEegp2cPu5GNtZ6szo
 u6/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OYC7nrnjy59RMr8ZRfOcc/kQwZ6q6LkJ9N8nXVRa/xQ=;
 b=C8Cl0Ae0nD/BNr1QJsc+69tRgN0MA0Yar4o246cubvPIdG2YO137/66hUKrWFsZmLO
 sHofHuuNv6NFL7hSwc/PwtgIkOf2mNViYKDoXSVxkcO+bzneU2YUYjmnvcYoEq0PthWp
 yNKT4fxQk6mb7NvLeOlSEtp8bvOHv1nAkLqgnuMElYkiyRko34ioGgZQrjTYY70m2WkL
 NECyxXOtHn+CFQc0RWO3GkdPik/Rt4ghatep+Bq4mTyRoudv7wqLKu+xP+kSrl+b3RwJ
 Bf6QS2AL68M5ul/0E8jUX90OBVH8K9TpjicpnB3rf3UqX9GABsqbn22lLA2Vo2X6xOtY
 rh+A==
X-Gm-Message-State: AOAM530+Q/EXDSaUKtBn+vGxmuZxjcv+QEGI6Wxb+s52uJUv4PQxwnjZ
 i1FD14NSVr/mST2QXTti6nuiJoEfzDi7DdziycY=
X-Google-Smtp-Source: ABdhPJwagnWTjDldUVrJm+erUIZpsd2mPXFhZYgsWdXgN3XDRh69iferrMjYOWiTHpWJECh/DgYlS+Z3MrdPxhPNR8A=
X-Received: by 2002:ad4:4502:: with SMTP id k2mr1298716qvu.43.1623355085273;
 Thu, 10 Jun 2021 12:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <c9ea7221-cc54-3394-f664-3f819ecc6d06@linux.intel.com>
In-Reply-To: <c9ea7221-cc54-3394-f664-3f819ecc6d06@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 10 Jun 2021 20:57:38 +0100
Message-ID: <CAM0jSHMhXFKXzULOdVjQb_wM_oMqWTqvL1e-9jrhOTvPK37iyw@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] Strange hugepages result?
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
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiBUaHUsIDEwIEp1biAyMDIxIGF0IDIwOjAyLCBUaG9tYXMgSGVsbHN0csO2bQo8dGhv
bWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gSGksIE1hdHRoZXchCj4K
PiBJIGdvdCBhIGZ1bm55IHJlc3VsdCBmcm9tIHRoZSBodWdlcGFnZXMgc2VsZnRlc3Qgd2hlbiB0
cnlpbmcgdG8gYnJlYWsKPiBvdXQgc29tZSBmdW5jdGlvbmFsaXR5IGZyb20gc2htZW0gdG8gbWFr
ZSBhIHR0bSBwYWdlIHBvb2wgZm9yCj4gY2FjaGVkLW9ubHkgVFRNIHN5c3RlbSBib3MuCj4KPiBJ
dCB0dXJucyBvdXQgdGhhdCBzaG1lbSBjb21wdXRlZCB0aGUgcGFnZXNpemVzIHVzaW5nIHRoZSB1
bmRlcmx5aW5nCj4gcGFnZXMgcmF0aGVyIHRoYW4gdGhlIGRtYSBzZWdtZW50cywgc28gd2hlbiBJ
IGNoYW5nZWQgdGhhdCwgaHVnZXBhZ2VzCj4gc3RhcnRlZCBmYWlsaW5nLgo+Cj4gaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85MTIyNy8KPgo+IEJ1dCB3aGVuIGhhY2tp
bmcgdGhlIHBhZ2Utc2l6ZSBjb21wdXRhdGlvbiB0byB1c2UgdGhlIHVuZGVybHlpbmcgcGFnZXMs
Cj4gaXQncyBmaW5lIGFnYWluCj4KPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzkxMzM2Lwo+Cj4gSXQgc2VlbXMgbGlrZSBzb21lIGFzc3VtcHRpb24gYWJvdXQgaHVn
ZSBkbWEgc2VnbWVudHMgaXMgd3JvbmcsIGVpdGhlcgo+IGluIG91ciBwYWdlLXNpemUgY2FsY3Vs
YXRpb24sIGluIHRoZSBzZWxmdGVzdCBvciBpbiB0aGUgYWN0dWFsIGh1Z2UgcGFnZQo+IHNldHVw
LiBDb3VsZCBpdCBiZSB0aGF0IGh1Z2Ugc2l6ZWQgc2VnbWVudHMgYXJlIGFzc3VtZWQgdG8gYmUg
cHJvcGVybHkKPiBhbGlnbmVkPwoKV2UgZGlzYWJsZWQgVEhQIGZvciAkcmVhc29ucywgc28gc2hy
aW5rX3RocCB3aWxsIHByZXR0eSBtdWNoIGFsd2F5cwpza2lwIEkgdGhpbmssIHVubGVzcyB3ZSBo
YXBwZW4gdG8gY29hbGVzY2UgZW5vdWdoIHBhZ2VzIHRvIG1ha2UgYSAyTQpwYWdlLiBJIGd1ZXNz
IHdpdGggeW91ciBjaGFuZ2UgdGhhdCBpcyBzb21laG93IG1vcmUgbGlrZWx5IG5vdyB0aGF0IHdl
CnVzZSBpOTE1X3NnX2RtYV9zaXplcygpIGFuZCBjYWxsIGl0IGFmdGVyIHdlIGRvIHRoZSBkbWFf
bWFwX3NnLiBJCnRoaW5rIHRoZSBpbnRlbCBpb21tdSBkcml2ZXIgYWxzbyBkb2VzIGNvYWxlc2Np
bmcgb3Igc29tZXRoaW5nLiBUaGUKc2dfcGFnZV9zaXplcyBpcyBtb3N0bHkganVzdCBhIGhldXJp
c3RpYyB0aG91Z2guCgpUaGUgdGVzdCBmYWlsdXJlIGxvb2tzIGxpa2UgYSBidWcgaW4gdGhlIHRl
c3QgdGhvdWdoLCBJIHRoaW5rIHNpbmNlCnRoZSBvYmplY3QgbWlnaHQgc3RpbGwgYmUgYWN0aXZl
KGdwdV93cml0ZSkgd2UgbmVlZCB0byBhbHNvIGZvcmNlClNIUklOS19BQ1RJVkUsIG90aGVyd2lz
ZSB0aGUgc2hyaW5rZXIgd2lsbCBqdXN0IGlnbm9yZSB0aGUgb2JqZWN0LiBUaGUKdGVzdCBkaWQg
d29yayBhdCBzb21lIHBvaW50IGJ1dCBJIGd1ZXNzIGhhcyBiZWVuIG1vZGlmaWVkL3JlZmFjdG9y
ZWQgYQpmZXcgdGltZXMuCgpXZSBjYW4gZWl0aGVyIGZpeCB0aGUgdGVzdCwgb3IganVzdCBkZWxl
dGUgaXQoaWd0X3Nocmlua190aHApLgoKPgo+IC9UaG9tYXMKPgo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
