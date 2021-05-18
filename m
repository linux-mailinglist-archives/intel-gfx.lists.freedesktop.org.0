Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FEA38749C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 11:05:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1EC6EADB;
	Tue, 18 May 2021 09:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB476EADB;
 Tue, 18 May 2021 09:05:40 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id t7so6910145qtn.3;
 Tue, 18 May 2021 02:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7aHWUMoi5w4ydiq3vMYs7kt/JSZnceejjinUOINTWww=;
 b=M3+eNjFnUi2QeG9bF/g7Rhn8oF9MfFCUsMrU4xzsaF+FxlEBgSH5p4YjnbD14AH+By
 qjQf5b+Up82hzcqy3K+nw9MJx/CEv0C0e8iqqw8xRMc4dUl696r/AX7N79lFF26IYXpi
 6L2hHsOKqoyMwgmpGDsg6e6kfN1oh36adOcmpFbI65wTVbj5zlTgjt5zEt1hesMkCa3D
 LEVO2emctQ6ddRDzURnzj3MYqRvLahszub+yUlv1C7mhlumCBvl780q1Lc3hbDTsJ76I
 rTlyCc/2X0uU2cs6gnSYYCFpRCjXtB+Ut7PbV9js7PzWt0b9oDdqdNQG1m0N84jGjlnP
 yZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7aHWUMoi5w4ydiq3vMYs7kt/JSZnceejjinUOINTWww=;
 b=cwshKm0mWmw86rLPc5Ke/w60EUjU7o+ZrVARmQW2SzF71fH6FrzGTEykVsk6NAenJo
 LCKgaT2bxvccGJXe8RWGod7Vl6o7ArPLMYsBk08lqUcmFNTEl5JHIHbt8owCsvGqlr51
 uGQmSTx+L1Hs1HeqxXtQko85fbyTd11Vatl/VZxxR4ePtPgQ48GKtTOOJcG2gplheHjC
 kC+0Jf6S8YlxXpH1hPmFMD6qskYC4MAnLH7tPFRidhXo/Yl2fZwqVGjo1fj68t+cNJiC
 cutVn5NpyEUbNgdmxorjQGDqHnESe0KN4vybtae2ImJ1y1yXTDppt0pFEjzEEsTEaqFd
 zVkQ==
X-Gm-Message-State: AOAM5310PTHd4UYGvPj4ufVyFxfttfOgA0ObcsnexrUt2Cxla2i0ihqC
 H8KXLRX3uw4OX3IRd+AFR0XZFnt6lMiIaiQLfRqKynMMlRdG4A==
X-Google-Smtp-Source: ABdhPJxjC8CSjd5WozYXg/TB/2ui0ZVo+mHzyMA3LVWWN76RzNOWUUmroJbUAa5VFkqE0IIKwmGX4anhNQRgs+l/G7w=
X-Received: by 2002:a05:622a:89:: with SMTP id
 o9mr3603329qtw.339.1621328739889; 
 Tue, 18 May 2021 02:05:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
 <20210518082701.997251-6-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210518082701.997251-6-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 May 2021 10:05:13 +0100
Message-ID: <CAM0jSHPL0d5FqTCndQczf07QkMXnGUd7Y3JhU7GBiL+d2kWQCg@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 05/15] drm/i915/ttm Initialize the ttm
 device and memory managers
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

T24gVHVlLCAxOCBNYXkgMjAyMSBhdCAwOToyNywgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IFRlbXBvcmFyaWx5IHJlbW92ZSB0
aGUgYnVkZHkgYWxsb2NhdG9yIGFuZCByZWxhdGVkIHNlbGZ0ZXN0cwo+IGFuZCBob29rIHVwIHRo
ZSBUVE0gcmFuZ2UgbWFuYWdlciBmb3IgaTkxNSByZWdpb25zLgo+Cj4gQWxzbyBtb2RpZnkgdGhl
IG1vY2sgcmVnaW9uIHNlbGZ0ZXN0cyBzb21ld2hhdCB0byBhY2NvdW50IGZvciBhCj4gZnJhZ21l
bnRpbmcgbWFuYWdlci4KPgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiB2MjoKPiAtIEZpeCBhbiBlcnJv
ciB1bndpbmQgaW4gbG1lbV9nZXRfcGFnZXMoKSAoUmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKQo+
IC0gQnJlYWsgb3V0IGFuZCBtb2RpZnkgdXNhZ2Ugb2YgaTkxNV9zZ19kbWFfc2l6ZXMoKSAoUmVw
b3J0ZWQgYnkgTWF0dGV3IEF1bGQpCj4gLSBCcmVhayBvdXQgVFRNIGNoYW5nZXMgdG8gYSBzZXBh
cmF0ZSBwYXRjaCAoUmVwb3J0ZWQgYnkgQ2hyaXN0aWFuIEvDtm5pZykKPiAtLS0KCjxzbmlwPgoK
Pgo+ICsvKioKPiArICogaTkxNV9zZ19mcm9tX21tX25vZGUgLSBDcmVhdGUgYW4gc2dfdGFibGUg
ZnJvbSBhIHN0cnVjdCBkcm1fbW1fbm9kZQo+ICsgKiBAbm9kZTogVGhlIGRybV9tbV9ub2RlLgo+
ICsgKiBAcmVnaW9uX3N0YXJ0OiBBbiBvZmZzZXQgdG8gYWRkIHRvIHRoZSBkbWEgYWRkcmVzc2Vz
IG9mIHRoZSBzZyBsaXN0Lgo+ICsgKgo+ICsgKiBDcmVhdGUgYSBzdHJ1Y3Qgc2dfdGFibGUsIGlu
aXRpYWxpemluZyBpdCBmcm9tIGEgc3RydWN0IGRybV9tbV9ub2RlLAo+ICsgKiB0YWtpbmcgYSBt
YXhpbXVtIHNlZ21lbnQgbGVuZ3RoIGludG8gYWNjb3VudCwgc3BsaXR0aW5nIGludG8gc2VnbWVu
dHMKPiArICogaWYgbmVjZXNzYXJ5Lgo+ICsgKgo+ICsgKiBSZXR1cm46IEEgcG9pbnRlciB0byBh
IGttYWxsb2NlZCBzdHJ1Y3Qgc2dfdGFibGUgb24gc3VjY2VzcywgbmVnYXRpdmUKPiArICogZXJy
b3IgY29kZSBjYXN0IHRvIGFuIGVycm9yIHBvaW50ZXIgb24gZmFpbHVyZS4KPiArICovCj4gK3N0
cnVjdCBzZ190YWJsZSAqaTkxNV9zZ19mcm9tX21tX25vZGUoY29uc3Qgc3RydWN0IGRybV9tbV9u
b2RlICpub2RlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTY0IHJl
Z2lvbl9zdGFydCkKPiArewo+ICsgICAgICAgY29uc3QgdTY0IG1heF9zZWdtZW50ID0gU1pfMUc7
IC8qIERvIHdlIGhhdmUgYSBsaW1pdCBvbiB0aGlzPyAqLwoKRm9yIGxtZW0ganVzdCBJTlRfTUFY
IEkgdGhpbmssIHdoaWNoIGlzIHRoZSBsaW1pdCBvZiB0aGUgc2csIGJ1dApyZWFsbHkgZG9lc24n
dCBtYXR0ZXIgZm9yIG5vdywgdGhpcyBzaG91bGQgYmUgdG90YWxseSBmaW5lIGZvciBub3cuCgpB
c3N1bWluZyBDSSBpcyBoYXBweSwKUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5h
dWxkQGludGVsLmNvbT4KCkFsc28gd2UgY291bGQgbWF5YmUgZmxpbmcgdGhpcyBzZXJpZXMgd2l0
aCB0aGUgSEFYIGF1dG9wcm9iaW5nIHBhdGNoCmZvciBERzEgYXQgdHJ5Ym90LCBqdXN0IHRvIHNl
ZSB3aGVyZSB3ZSBhcmU/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
