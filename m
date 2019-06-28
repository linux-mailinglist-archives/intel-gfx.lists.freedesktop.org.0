Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 508685A0D6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 18:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5DC892B9;
	Fri, 28 Jun 2019 16:29:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5567B8887E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 16:29:16 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id j8so4092435ybo.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 09:29:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/sTJMr6wE3L/KCdwYJqIjBaiJK0CQYqut+NErbV5P/U=;
 b=Gu8kuw/ylDi0ixhqWH4E4DNYRYfaCgNtrqwZ9Msu+1UXGL4i18btXfgycTgzC0J4lN
 O23GiPN4TsWkQgCIafcd57q5OmlH3GlCIOBRGrmJcXfwrR3WQqi34Mf6FB2xtySKHNPD
 fksTG3s4jZkNzdCiWebs/VB6pr0VQRdbj7qZ+1rVCH2lU03PoTV3mhxY05IMEzNssMw/
 ts3os/why7Q21l9E5eEOXq1NVa/64FGTOp5rrTOdToZIse1A41Ov4O4ZADnLQQL2s+IM
 hiXgYe1VAUVqEKkS/FkE1fopQ21iVPPxllYIIYSUt5DvGw01ITdYwBXAVYLpj2XdfQpc
 4+Ow==
X-Gm-Message-State: APjAAAWbOWR1TL+sUWKpaoCnu53oTPF1Bhkfkjsqv7eA+sZdehu/LWL4
 Tg8s8PuOnfgoHlJiy2ZKh/9ptiaOnAQ5ZNx3owE=
X-Google-Smtp-Source: APXvYqwRvBZb/xOMvlewAg0tNwwWasDX5OwuKWnRePI7A9FrIv437b8omleVk+QAE1f7XCe9jUOoPhymJsd/c/vPpDc=
X-Received: by 2002:a25:9988:: with SMTP id p8mr544520ybo.183.1561739355365;
 Fri, 28 Jun 2019 09:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
 <20190628120720.21682-2-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190628120720.21682-2-lionel.g.landwerlin@intel.com>
From: Anuj Phogat <anuj.phogat@gmail.com>
Date: Fri, 28 Jun 2019 09:28:49 -0700
Message-ID: <CAP5d04Gz=B+e_Sz-wq9AKceL7XiWcDj6Vf6w53v52k4En=ZTEQ@mail.gmail.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=/sTJMr6wE3L/KCdwYJqIjBaiJK0CQYqut+NErbV5P/U=;
 b=EQcDLKj10n3KO6bPdsgswLO+Cf0l8zxXoLVod5YhU8uVJFGtDZhhk3ihWjuhC3W5zL
 AF68iQSxf7v/HSE6skZRTSWDm/NGGg9F65fmQwHxDAYj1D9pwkjNko0FAPpDMdkgsuxH
 j7a3RcWzmSMalclH022rRrhQi4NogmEpni0udqVHDFwJTSmIa1UdTr04tjWgwH8M1j6s
 dCsDoA+PLrtevfdKgsRe3l4DVHNjhKSeqEfd6VPiha8VNReFwQKeHl63Cw/bqiDxZKKD
 zm0P0L6L5GssKcJZAX3OmKruMFeafY0SnCHFM9me4KbFp/3aJbh2rBBeqEltplXxvqzp
 OeIA==
Subject: Re: [Intel-gfx] [PATCH v7 1/3] drm/i915: fix whitelist selftests
 with readonly registers
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHRoZSBzZXJpZXM6ClRlc3RlZC1ieTogQW51aiBQaG9nYXQgPGFudWoucGhvZ2F0QGdtYWls
LmNvbT4KCgpPbiBGcmksIEp1biAyOCwgMjAxOSBhdCA1OjA3IEFNIExpb25lbCBMYW5kd2VybGlu
CjxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBXaGVuIGEgcmVnaXN0
ZXIgaXMgcmVhZG9ubHkgdGhlcmUgaXMgbm90IG11Y2ggd2UgY2FuIHRlbGwgYWJvdXQgaXRzCj4g
dmFsdWUgKGFwYXJ0IGZyb20gaXRzIGRlZmF1bHQgdmFsdWU/KS4gVGhpcyBjYW4gYmUgY292ZXJl
ZCBieSB0ZXN0cwo+IGV4ZXJjaXNpbmcgdGhlIHZhbHVlIG9mIHRoZSByZWdpc3RlciBmcm9tIHVz
ZXJzcGFjZS4KPgo+IEZvciBQU19JTlZPQ0FUSU9OX0NPVU5UIHdlJ3ZlIGdvdCB0aGUgZm9sbG93
aW5nIHBpZ2xpdCB0ZXN0cyA6Cj4KPiAgICBLSFItR0w0NS5waXBlbGluZV9zdGF0aXN0aWNzX3F1
ZXJ5X3Rlc3RzX0FSQi5mdW5jdGlvbmFsX2ZyYWdtZW50X3NoYWRlcl9pbnZvY2F0aW9ucwo+Cj4g
VnVsa2FuIENUUyB0ZXN0cyA6Cj4KPiAgICBkRVFQLVZLLnF1ZXJ5X3Bvb2wuc3RhdGlzdGljc19x
dWVyeS5mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlvbnMuKgo+Cj4gU2lnbmVkLW9mZi1ieTogTGlv
bmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IEZpeGVzOiA4
NjU1NGY0OGU1MTEgKCJkcm0vaTkxNS9zZWxmdGVzdHM6IFZlcmlmeSB3aGl0ZWxpc3Qgb2YgY29u
dGV4dCByZWdpc3RlcnMiKQo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF93b3JrYXJvdW5kcy5jIHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmth
cm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5j
Cj4gaW5kZXggZjEyY2IyMGZlNzg1Li5hMDZmOTZkZjFiZmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKPiBAQCAtOTI2LDYgKzkyNiw5
IEBAIGNoZWNrX3doaXRlbGlzdGVkX3JlZ2lzdGVycyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUsCj4KPiAgICAgICAgIGVyciA9IDA7Cj4gICAgICAgICBmb3IgKGkgPSAwOyBpIDwgZW5n
aW5lLT53aGl0ZWxpc3QuY291bnQ7IGkrKykgewo+ICsgICAgICAgICAgICAgICBpZiAoZW5naW5l
LT53aGl0ZWxpc3QubGlzdFtpXS5yZWcucmVnICYgUklOR19GT1JDRV9UT19OT05QUklWX1JEKQo+
ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICsKPiAgICAgICAgICAgICAgICAg
aWYgKCFmbihlbmdpbmUsIGFbaV0sIGJbaV0sIGVuZ2luZS0+d2hpdGVsaXN0Lmxpc3RbaV0ucmVn
KSkKPiAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRUlOVkFMOwo+ICAgICAgICAgfQo+
IC0tCj4gMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
