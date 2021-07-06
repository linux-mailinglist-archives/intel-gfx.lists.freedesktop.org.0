Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFFF3BD702
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 14:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC796E497;
	Tue,  6 Jul 2021 12:47:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 347216E1D5;
 Tue,  6 Jul 2021 12:47:39 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id s4so1296901qkm.13;
 Tue, 06 Jul 2021 05:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+sEo+Ifpse8bLv4D5nk0jAr29bqXGXbxp11f7D2ypjo=;
 b=iUpwZcp+aNrbM6zeyvqFriNx13Q9LMedd+mlVbO2I1H7fP/g0Auax69brpXmDvRKd/
 aaUmQOUq1VKVcpYGLBqjMtQL3xKzDvBsWQQX7u5+lJ/YTy6gXDkBgFqYPk3/wRdAXSqz
 t57BCPbaOl3BB6TE4C7xpgBrvpw5+49Wn80v5nA59RFanRl0GuJorS02Ttbw1mG050de
 wejk0LkUa+YI5tsfNCxcg1tv1DAPoQAxqPcmzj8zcCbROE6vbP2DHWFQYjGL3mChgnYN
 e1Y5caW+V07+PWL1N5J33Nm6+SrGoOqsJdmrPe+WIc/B4D+EpkRFQRsYZOvzS3+q/8Y+
 oEoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+sEo+Ifpse8bLv4D5nk0jAr29bqXGXbxp11f7D2ypjo=;
 b=iwiJ2PSpXs5oLNyFGWnF0FWXh56f8+blb+b3OgTMiKFPnY69q69FKdhMZXdL0KNhEE
 ZhnNPx0dxiKHY4GQCeIK/v12m/wAbPehHcoPvG8aJ48j7IUMhMrvuN2DEmsu0payTWH7
 cTxr9D4IOdGIOy/6NU2GJgLOp0Oo8KmJHaLg3oe222CJvMJL/LI8AVG/Ba7+PY7xCGXB
 M1H+RWfa4N6aSS9pxWHHMYV6lPvvfjia1cSaT7dtNckfz6rkGc5maib8/hG/Ls6CDU4N
 acJgpPlaJXqlTSTVDTjG9mwgEA75vK4WTOoaFLbeoqKwrCQcn+ZDJDR+ym/UMu2iG+rZ
 G+6g==
X-Gm-Message-State: AOAM533B/g2l3gD8+9jAvLiyjl0ch/1E31+Tvwwa7GOt89eB3lpTqpeU
 J/wNPqaTpIiGx/1JlHdM2i/tHFZcfj59j/6FSY8=
X-Google-Smtp-Source: ABdhPJwMoBvULgiEfVZzWuUUKkxYKT+XZkzlQAAK+FylzWkJDVPSxErrOYlOE0ZWarKPudpXpiH3pTdgOIWoyMhDNGs=
X-Received: by 2002:a05:620a:1479:: with SMTP id
 j25mr19587051qkl.426.1625575658359; 
 Tue, 06 Jul 2021 05:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
 <20210706101209.3034092-6-daniel.vetter@ffwll.ch>
In-Reply-To: <20210706101209.3034092-6-daniel.vetter@ffwll.ch>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 6 Jul 2021 13:47:11 +0100
Message-ID: <CAM0jSHPqCQ58hnCkShZVq93k3y6J6cNJsyfagXdu5Y1zEN7NtA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Always wait for the exclusive
 fence
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCA2IEp1bCAyMDIxIGF0IDExOjEyLCBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGZmd2xsLmNoPiB3cm90ZToKPgo+IFdlJ3JlIGxpZnRpbmcsIG9yIHdlbGwsIGNsYXJpZnlpbmcg
dGhhdCB0aGUgcmVzdHJpY3Rpb24gdGhhdCBzaGFyZWQKPiBmZW5jZXMgaGF2ZSB0byBiZSBzdHJp
Y3RseSBhZnRlciB0aGUgZXhjbHVzaXZlIG9uZSBkb2Vzbid0IGFwcGx5Cj4gYW55bW9yZS4KPgo+
IFNvIGFkanVzdCB0aGUgY29kZSB0byBhbHdheXMgYWxzbyB3YWl0IGZvciB0aGUgZXhjbHVzaXZl
IGZlbmNlLgo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBp
bnRlbC5jb20+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+Cj4gQ2M6ICJUaG9tYXMgSGVsbHN0csO2bSIgPHRob21hcy5oZWxsc3Ryb21A
bGludXguaW50ZWwuY29tPgo+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5u
ZXQ+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYyB8IDQgKyst
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYwo+IGluZGV4IDkxNzExYTQ2YjFjNy4uMjcx
ZDMyMWNlYTgzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVu
Y2UuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3dfZmVuY2UuYwo+IEBAIC02
MDEsMTAgKzYwMSwxMCBAQCBpbnQgaTkxNV9zd19mZW5jZV9hd2FpdF9yZXNlcnZhdGlvbihzdHJ1
Y3QgaTkxNV9zd19mZW5jZSAqZmVuY2UsCj4gICAgICAgICAgICAgICAgIGZvciAoaSA9IDA7IGkg
PCBjb3VudDsgaSsrKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQoc2hh
cmVkW2ldKTsKPiAgICAgICAgICAgICAgICAga2ZyZWUoc2hhcmVkKTsKPiAtICAgICAgIH0gZWxz
ZSB7Cj4gLSAgICAgICAgICAgICAgIGV4Y2wgPSBkbWFfcmVzdl9nZXRfZXhjbF91bmxvY2tlZChy
ZXN2KTsKPiAgICAgICAgIH0KPgo+ICsgICAgICAgZXhjbCA9IGRtYV9yZXN2X2dldF9leGNsX3Vu
bG9ja2VkKHJlc3YpOwo+ICsKClRoZSBkbWFfcmVzdl9nZXRfZmVuY2VzKCkgY2FsbCBsb29rcyBs
aWtlIGl0IGFscmVhZHkgZmlzaGVzIG91dCB0aGUKZXhjbHVzaXZlIGZlbmNlLiBEb2VzIHRoaXMg
bm90IGxlYWsgdGhlIGV4dHJhIHJlZiBub3c/Cgo+ICAgICAgICAgaWYgKHJldCA+PSAwICYmIGV4
Y2wpIHsKPiAgICAgICAgICAgICAgICAgcGVuZGluZyA9IGk5MTVfc3dfZmVuY2VfYXdhaXRfZG1h
X2ZlbmNlKGZlbmNlLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgZXhjbCwKPiAtLQo+IDIuMzIuMAo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
