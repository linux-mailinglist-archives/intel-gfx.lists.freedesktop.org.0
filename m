Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1303A9805
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 12:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 091116E55C;
	Wed, 16 Jun 2021 10:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68FB06E2B4;
 Wed, 16 Jun 2021 10:45:56 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id e18so1261145qvm.10;
 Wed, 16 Jun 2021 03:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pi9Pblcxp2S3wGNqZkE9BNrbkmJEMm2DtOg5yXb50w8=;
 b=j3slzsJ+M/s7Ch/GohxyTdmTrVo692Y/OQq7H6jjnoXxvtAedbC2SwTM8xvESEXOos
 qU1eb3bENMKrSDiGGBMVrxWA79oRkSi7PA+2BEB+MwRObUK09o4TI5RGZeYx2n2qobyC
 YkS+crHR7f26DCxIw19RPxpX483JUAPDq7jKM7uJFOgjVXkEw+Q2aXEPZ+YD+3FbZRbU
 74hfGFwxBHtXj0ng2/znCa5HXJOw7y0E8Bb3CtejBRZShMEYTEQiia7v/z8K6XIjqEFg
 XbEuhLHeMgu+8wLEpiZ2hx1myqtJ1DkhcFvC40ROlpiKKyYm4R1GSNyh+CiuZfCIx+eK
 v7ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pi9Pblcxp2S3wGNqZkE9BNrbkmJEMm2DtOg5yXb50w8=;
 b=ZqBTGVSjNzsK4zBzUzCBHlGjcGgvNmO5dr/jEe2KpR5yzdMqUsrRMWxTkyAlNcsZ8+
 FEqOrliFNfpR+Yy89P72ZGF/P2aowrXzCFzSJvkEwmDIzub0eTEcTEaHcKkOGGLE8Psz
 cGlqueV1dBQya3AmoOtBP7mtqzoBGQ8kaXcplqPVmGfxZ69FltzS658DD3ysw+MZJxzc
 zQWwDC9jrOF1IgA0GY2zZP7MpZdiqAHQ8v7K0MttPH2NP7nbxp8LOzc5JjJG7V+O4S3W
 L6Bv1LOEkPhJ3ezfHBMGvQk6o4BN7/wPCz3YAIvFTHYjmvedpPROt/uBQNcK3KOjuMhJ
 XWNA==
X-Gm-Message-State: AOAM531YT9WdYtNRtPCuyLAXYciIk8YQI6nbpSBrMwA5YKaIFcZL4KJq
 61CMKWcklvdmJ+PHjHniuqelSzdDbFt5mokD7Yg=
X-Google-Smtp-Source: ABdhPJziIIVIbbz7snqmY6ReBnvrSR1XI1Gu3bt92yGIYUfORUtpRwkAUZFZ3VvUEmjUcNfpiMNfEtyLPI+eWo0IUTI=
X-Received: by 2002:a05:6214:764:: with SMTP id
 f4mr10319109qvz.60.1623840355364; 
 Wed, 16 Jun 2021 03:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210616090350.828696-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210616090350.828696-1-daniel.vetter@ffwll.ch>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 16 Jun 2021 11:45:28 +0100
Message-ID: <CAM0jSHMTc6o5M=xbYJDoR0NWpEthOcHMSB=Pb4dHnV9gdDj9eA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Remove duplicated call to
 ops->pread
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNiBKdW4gMjAyMSBhdCAxMDowNCwgRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBCZXR3ZWVuCj4KPiBjb21taXQgYWUzMGFmODRlZGI1Yjdj
Yzk1NDg1OTIyZTQzYWZkOTA5YTg5MmUxYgo+IEF1dGhvcjogTWFhcnRlbiBMYW5raG9yc3QgPG1h
YXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBEYXRlOiAgIFR1ZSBNYXIgMjMgMTY6
NTA6MDAgMjAyMSArMDEwMAo+Cj4gICAgIGRybS9pOTE1OiBEaXNhYmxlIHVzZXJwdHIgcHJlYWQv
cHdyaXRlIHN1cHBvcnQuCj4KPiBhbmQKPgo+IGNvbW1pdCAwMDQ5YjY4ODQ1OWI4NDZmODE5YjZl
NTFjMjRjZDA3ODFmY2ZkZTQxCj4gQXV0aG9yOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+Cj4gRGF0ZTogICBUaHUgTm92IDUgMTU6NDk6MzMgMjAyMCArMDAwMAo+Cj4gICAg
IGRybS9pOTE1L2dlbTogQWxsb3cgYmFja2VuZHMgdG8gb3ZlcnJpZGUgcHJlYWQgaW1wbGVtZW50
YXRpb24KPgo+IHRoaXMgYWNjaWRlbnRhbGx5IGxhbmRlZCB0d2ljZS4KPgo+IENjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20KPiBDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRo
b21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFz
b25Aamxla3N0cmFuZC5uZXQ+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20K
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCA2IC0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+
IGluZGV4IDZhMGEzZjBlMzZlMS4uMDdhYTgwNzczYTAyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jCj4gQEAgLTQ2OSwxMiArNDY5LDYgQEAgaTkxNV9nZW1fcHJlYWRfaW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgICAgICAgIGlmIChyZXQgIT0gLUVOT0RF
VikKPiAgICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4KPiAtICAgICAgIHJldCA9IC1FTk9ERVY7
Cj4gLSAgICAgICBpZiAob2JqLT5vcHMtPnByZWFkKQo+IC0gICAgICAgICAgICAgICByZXQgPSBv
YmotPm9wcy0+cHJlYWQob2JqLCBhcmdzKTsKPiAtICAgICAgIGlmIChyZXQgIT0gLUVOT0RFVikK
PiAtICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gLQo+ICAgICAgICAgcmV0ID0gaTkxNV9nZW1f
b2JqZWN0X3dhaXQob2JqLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSTkx
NV9XQUlUX0lOVEVSUlVQVElCTEUsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBNQVhfU0NIRURVTEVfVElNRU9VVCk7Cj4gLS0KPiAyLjMyLjAucmMyCj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
