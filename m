Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DECA538F1B9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 18:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370BB6E8D7;
	Mon, 24 May 2021 16:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E55E46E8CF;
 Mon, 24 May 2021 16:46:24 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id s12so11873718qta.3;
 Mon, 24 May 2021 09:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MQmBssjPsUtpDE9GBpD1aczql94NKYN/XiQEp1XJLz0=;
 b=MK3kPDg6zlGJfH+vfNJhjgak4lAvbkC5299fz/gt485KvoKv6/0UBJ+dRJ3O+Q7Ddm
 hJ/J5rCeG4NH0arBFWmV3Y2yAsx5chzAAxs+gcYI9oV6hT/iTTVSeUgJcclkPcqTqHvq
 S/cPVm0+hWiWUgxRf3eosTtxiZOxkCDs+sUR4x6cgwoUl5H+lWU9MgHHXwHbbJdygCh2
 SpfUTqOdwDLjezl57WTjCt553w423vQ9U3Rm7oIl+dk+hI+qgJxS/MQwAoHcpAJSITJV
 kRD0Is+UufZ0v8pwtXaY9L6khXDDVNfqw91CQqfHgA1bbN2isYPgDWT1sUjvxPgjVOa8
 N5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MQmBssjPsUtpDE9GBpD1aczql94NKYN/XiQEp1XJLz0=;
 b=PXY8VytP2SQNK96yU49NHeZ+hRDJGQEVOuMaEQxu94V6QpENsf7vC7v7W9DUp8JHpL
 OSXXscWNG624fi8hDPra8peFE6WOxd0xfcaOfym+KMlKSnvsb48OvHMyIj+rVsFnOAJe
 UTRa0+KkXjhx5+JTz8uRubcqA0OzetK1yDAG9muTbhN+QyM21qDYanOb88S+6J0DstDe
 gaCu9H4PFhhYIUvGxXPqsWDfcwdI/EyUrQYngDQpRlpSvy6TYhajYXWKPdG8LwBhyZnV
 7+kq1lXrs77ikSKh9Yy9cTvhArbXaiejc2Au8A3DvKaA/TJWV7oCaIr2CD+HAYgnztms
 eodQ==
X-Gm-Message-State: AOAM5318zGlPjtUxELHKLBwTYtfq/nxY/3frumpR3GCwYAMk3fvto933
 i5sl8V4LOmU4qs3+gUxYU0rq+TOj2tLMfIIWXsw=
X-Google-Smtp-Source: ABdhPJzQWUt3+VClwnFef0YSts2d7QcfvgAswlEaCUf1qsZ9UHaEdWyAqJl3wHiUWIGJWunYGgJDrkYix9uHw4Cszqg=
X-Received: by 2002:ac8:60d:: with SMTP id d13mr28265498qth.223.1621874784123; 
 Mon, 24 May 2021 09:46:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
 <20210521153253.518037-8-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210521153253.518037-8-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 24 May 2021 17:45:58 +0100
Message-ID: <CAM0jSHNqr-kUGsRaBavEvk3w-vr_SRrdSzQb4y-CDYrFnQgXdQ@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 07/12] drm,
 drm/i915: Move the memcpy_from_wc functionality to core drm
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMSBNYXkgMjAyMSBhdCAxNjozMywgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IE1lbWNweSBmcm9tIHdjIHdpbGwg
YmUgdXNlZCBhcyB3ZWxsIGJ5IFRUTSBtZW1jcHkuCj4gTW92ZSBpdCB0byBjb3JlIGRybSwgYW5k
IG1ha2UgdGhlIGludGVyZmFjZSBkbyB0aGUgcmlnaHQgdGhpbmcKPiBldmVuIG9uICFYODYuCj4K
PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBEYXZlIEFpcmxpZSA8
YWlybGllZEBnbWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRo
b21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgo+IC0tLQoKPHNuaXA+Cgo+ICsKPiArI2lm
ZGVmIENPTkZJR19YODYKPiArYm9vbCBkcm1fbWVtY3B5X2Zyb21fd2Modm9pZCAqZHN0LCBjb25z
dCB2b2lkICpzcmMsIHVuc2lnbmVkIGxvbmcgbGVuKTsKPiArYm9vbCBkcm1fbWVtY3B5X2Zyb21f
d2NfZGJtKHN0cnVjdCBkbWFfYnVmX21hcCAqZHN0LAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9tYXAgKnNyYywKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgdW5zaWduZWQgbG9uZyBsZW4pOwo+ICt2b2lkIGRybV91bmFsaWduZWRfbWVtY3B5
X2Zyb21fd2Modm9pZCAqZHN0LCBjb25zdCB2b2lkICpzcmMsIHVuc2lnbmVkIGxvbmcgbGVuKTsK
PiArCj4gKy8qIFRoZSBtb3ZudGRxYSBpbnN0cnVjdGlvbnMgdXNlZCBmb3IgbWVtY3B5LWZyb20t
d2MgcmVxdWlyZSAxNi1ieXRlIGFsaWdubWVudCwKPiArICogYXMgd2VsbCBhcyBTU0U0LjEgc3Vw
cG9ydC4gZHJtX21lbWNweV9mcm9tX3djKCkgd2lsbCByZXBvcnQgaWYgaXQgY2Fubm90Cj4gKyAq
IHBlcmZvcm0gdGhlIG9wZXJhdGlvbi4gVG8gY2hlY2sgYmVmb3JlaGFuZCwgcGFzcyBpbiB0aGUg
cGFyYW1ldGVycyB0bwo+ICsgKiBkcm1fY2FuX21lbWNweV9mcm9tX3djKCkgLSBzaW5jZSB3ZSBv
bmx5IGNhcmUgYWJvdXQgdGhlIGxvdyA0IGJpdHMsCj4gKyAqIHlvdSBvbmx5IG5lZWQgdG8gcGFz
cyBpbiB0aGUgbWlub3Igb2Zmc2V0cywgcGFnZS1hbGlnbmVkIHBvaW50ZXJzIGFyZQo+ICsgKiBh
bHdheXMgdmFsaWQuCj4gKyAqCj4gKyAqIEZvciBqdXN0IGNoZWNraW5nIGZvciBTU0U0LjEsIGlu
IHRoZSBmb3Jla25vd2xlZGdlIHRoYXQgdGhlIGZ1dHVyZSB1c2UKPiArICogd2lsbCBiZSBjb3Jy
ZWN0bHkgYWxpZ25lZCwganVzdCB1c2UgZHJtX2hhc19tZW1jcHlfZnJvbV93YygpLgo+ICsgKi8K
PiArI2RlZmluZSBkcm1fY2FuX21lbWNweV9mcm9tX3djKGRzdCwgc3JjLCBsZW4pIFwKPiArICAg
ICAgIGRybV9tZW1jcHlfZnJvbV93Yygodm9pZCAqKSgodW5zaWduZWQgbG9uZykoZHN0KSB8ICh1
bnNpZ25lZCBsb25nKShzcmMpIHwgKGxlbikpLCBOVUxMLCAwKQo+ICsKPiArI2RlZmluZSBkcm1f
aGFzX21lbWNweV9mcm9tX3djKCkgXAo+ICsgICAgICAgZHJtX21lbWNweV9mcm9tX3djKE5VTEws
IE5VTEwsIDApCj4gKwo+ICt2b2lkIGRybV9tZW1jcHlfaW5pdF9lYXJseSh2b2lkKTsKPiArCj4g
KyNlbHNlCj4gKwo+ICsjZGVmaW5lIGRybV9tZW1jcHlfZnJvbV93YyhfZHN0LCBfc3JjLCBfbGVu
KSAoZmFsc2UpCj4gKyNkZWZpbmUgZHJtX21lbWNweV9mcm9tX3djX2RibShfZHN0LCBfc3JjLCBf
bGVuKSAoZmFsc2UpCj4gKyNkZWZpbmUgZHJtX2Nhbl9tZW1jcHlfZnJvbV93YyhfZHN0LCBfc3Jj
LCBfbGVuKSAoZmFsc2UpCj4gKyNkZWZpbmUgZHJtX2hhc19tZW1jcHlfZnJvbV93YygpIChmYWxz
ZSkKCkRvZXMgdGhlIGNvbXBpbGVyIG5vdCBjb21wbGFpbiBmb3IgdGhlc2Ugb24gIXg4NiwgaWYg
Y2FsbGVkIHdpdGhvdXQKY2hlY2tpbmcgdGhlIHJlc3VsdCBvZiB0aGUgc3RhdGVtZW50PyBNYXli
ZSBqdXN0IG1ha2UgdGhlc2UgZnVuY3Rpb24Kc3R1YnM/CgpPdGhlcndpc2UsClJldmlld2VkLWJ5
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cgo+ICsjZGVmaW5lIGRybV91
bmFsaWduZWRfbWVtY3B5X2Zyb21fd2MoX2RzdCwgX3NyYywgX2xlbikgV0FSTl9PTigxKQo+ICsj
ZGVmaW5lIGRybV9tZW1jcHlfaW5pdF9lYXJseSgpIGRvIHt9IHdoaWxlICgwKQo+ICsjZW5kaWYg
LyogQ09ORklHX1g4NiAqLwo+ICsjZW5kaWYgLyogX19EUk1fTUVNQ1BZX0hfXyAqLwo+IC0tCj4g
Mi4zMS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
