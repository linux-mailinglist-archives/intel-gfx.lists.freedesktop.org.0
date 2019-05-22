Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC80A26F49
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:57:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F1389BF0;
	Wed, 22 May 2019 19:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A8289B9F
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:57:18 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id p27so5551105eda.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 12:57:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=go8BK2B3uvCnsSw4gq9aefStUR37LtrKIPnAvxGpjIM=;
 b=C+tiFgC0EIvAQpDYhA8exp9zw6gD7Q8sJTNwpkqgL2uHU5zjJbtHVNheT7dfQKR6y+
 8pfAksiuDyFK6wqqa0ZtUiOAOZVm/okpnK66ILQrPLMcM9Fmf3ZbqB2oXmHD8+/VgOMa
 6FlezQTsNRMrgJeZBzXjJDWSykaeYudgFTRlVyCgWpqPa4BrS4/uJLaBSRpaHKytSjzR
 qRLxt+Nk4hAdDDDBtrcdQJBVToPT+bxEHnv/McuYXEcF7O5mMBQxx93u2XWXRD84gMUD
 m0K/Z2YFDUhHeoDZslY5Gk9zzXIameUvWs7gy3TrHRdeKk0BglSlkkbOz4Rur8s9ms2K
 L0Iw==
X-Gm-Message-State: APjAAAVs/eElO8igmRquXQi4O1FjLnibkXGvcHYC8fq6GNNngRLsDIXv
 hjbMN0CsGPFXTJZz0NYKIy0=
X-Google-Smtp-Source: APXvYqzemTOPAGSwJC/vY5BaXJNj0hVhOh8jKySLtc2Lx/p6/TvlyTsL7upSUMdydTEqYYMePeEiDA==
X-Received: by 2002:a50:cc0c:: with SMTP id m12mr63701403edi.8.1558555036662; 
 Wed, 22 May 2019 12:57:16 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id qq13sm4058092ejb.1.2019.05.22.12.57.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 22 May 2019 12:57:15 -0700 (PDT)
Date: Wed, 22 May 2019 12:57:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190522195714.GA94676@archlinux-epyc>
References: <20190522103505.2082-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522103505.2082-1-jani.nikula@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=go8BK2B3uvCnsSw4gq9aefStUR37LtrKIPnAvxGpjIM=;
 b=iwXmD+UJDVjLMqsM3aAWkUxzxnK5crnq7+vt8WW13B3ntlDUc36fEOYYjXnblzH5Yn
 hwhQAqKov91XwZvFiNB8xHJ/p0gFtx5nGTXEWztyEGWybATuyQT+8BT/mUItgrij/h8F
 sq4vSl89EIqGI8akFf5a4a6m/YzabS6Q+HEfnaV5RaP48WOC0a1JHkdrVZba3OJRSiPA
 QD+4YZqi2D+3NIJUMdSlprCTiCacYr7MKz5QG6cdN4bf4as6r10/iMQl/Fz7+CF5H37u
 0BeiaWiZwnfxAV4IGuePcAJRVix+yrW9lKm6PM0w45/OE1pAj8jTqjEbFhgwVgImn9wi
 j7+A==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove duplicate typedef for
 intel_wakeref_t
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMDE6MzU6MDVQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gRml4IHRoZSBkdXBsaWNhdGUgdHlwZWRlZiBmb3IgaW50ZWxfd2FrZXJlZl90IGxlYWRp
bmcgdG8gQ2xhbmcgYnVpbGQKPiBpc3N1ZXMuIFdoaWxlIGF0IGl0LCBhY3R1YWxseSBtYWtlIHRo
ZSBpbnRlbF9ydW50aW1lX3BtLmggaGVhZGVyCj4gc2VsZi1jb250YWluZWQsIHdoaWNoIHdhcyBj
bGFpbWVkIGluIHRoZSBjb21taXQgYmVpbmcgZml4ZWQuCj4gCj4gUmVwb3J0ZWQtYnk6IE5hdGhh
biBDaGFuY2VsbG9yIDxuYXRlY2hhbmNlbGxvckBnbWFpbC5jb20+Cj4gQ2M6IE5hdGhhbiBDaGFu
Y2VsbG9yIDxuYXRlY2hhbmNlbGxvckBnbWFpbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFJlZmVyZW5jZXM6IGh0dHA6Ly9taWQubWFpbC1hcmNo
aXZlLmNvbS8yMDE5MDUyMTE4Mzg1MC5HQTkxNTdAYXJjaGxpbnV4LWVweWMKPiBSZWZlcmVuY2Vz
OiBodHRwczovL3RyYXZpcy1jaS5jb20vQ2xhbmdCdWlsdExpbnV4L2NvbnRpbnVvdXMtaW50ZWdy
YXRpb24vam9icy8yMDE3NTQ0MjAjTDI0MzUKPiBGaXhlczogMGQ1YWRjNWYyZjAxICgiZHJtL2k5
MTU6IGV4dHJhY3QgaW50ZWxfcnVudGltZV9wbS5oIGZyb20gaW50ZWxfZHJ2LmgiKQo+IFNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgpSZXZpZXdlZC1i
eTogTmF0aGFuIENoYW5jZWxsb3IgPG5hdGVjaGFuY2VsbG9yQGdtYWlsLmNvbT4KVGVzdGVkLWJ5
OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0ZWNoYW5jZWxsb3JAZ21haWwuY29tPgoKPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgfCAxICsKPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5oICAgfCA4ICsrKysrLS0tCj4gIDIgZmls
ZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0Cj4gaW5kZXggMmNhNGE1Zi4uM2E5NjYz
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPiBAQCAt
NTUsNiArNTUsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCj4gIAlpbnRlbF9wbS5oIFwKPiAgCWludGVs
X3Bzci5oIFwKPiAgCWludGVsX3F1aXJrcy5oIFwKPiArCWludGVsX3J1bnRpbWVfcG0uaCBcCj4g
IAlpbnRlbF9zZHZvLmggXAo+ICAJaW50ZWxfc2lkZWJhbmQuaCBcCj4gIAlpbnRlbF9zcHJpdGUu
aCBcCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0u
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+IGluZGV4IGI5NjRj
YS4uMGE0YzRiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRp
bWVfcG0uaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+
IEBAIC02LDEyICs2LDE0IEBACj4gICNpZm5kZWYgX19JTlRFTF9SVU5USU1FX1BNX0hfXwo+ICAj
ZGVmaW5lIF9fSU5URUxfUlVOVElNRV9QTV9IX18KPiAgCj4gLSNpbmNsdWRlIDxsaW51eC9zdGFj
a2RlcG90Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ICAKPiAtc3RydWN0IGRybV9p
OTE1X3ByaXZhdGU7Cj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5LmgiCj4gKyNpbmNsdWRlICJp
bnRlbF93YWtlcmVmLmgiCj4gIAo+IC10eXBlZGVmIGRlcG90X3N0YWNrX2hhbmRsZV90IGludGVs
X3dha2VyZWZfdDsKPiArc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7Cj4gK3N0cnVjdCBkcm1fcHJp
bnRlcjsKPiArc3RydWN0IGludGVsX2VuY29kZXI7Cj4gIAo+ICBlbnVtIGk5MTVfZHJtX3N1c3Bl
bmRfbW9kZSB7Cj4gIAlJOTE1X0RSTV9TVVNQRU5EX0lETEUsCj4gLS0gCj4gMi4yMC4xCj4gCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
