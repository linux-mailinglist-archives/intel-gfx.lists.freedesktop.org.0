Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8923B71BB
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 14:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB106E87F;
	Tue, 29 Jun 2021 12:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AD816E87F;
 Tue, 29 Jun 2021 12:05:24 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id bj15so30700946qkb.11;
 Tue, 29 Jun 2021 05:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NaP02YVlfj2XBRA8PgGnBFZ3ZkjkK4tSn4ikEhyWjkU=;
 b=NxPHGs268DtEsLLScel2wFobjKUflhI1hKtq4NOnsGs9O4YHg4Zb8IPMM+VKsKRoJu
 qlpUjZxoBp2NYGdBGRCqqggWfNuMqP6GIESf7XvuSAKEOaRC3B8cRZRSF9IudZ0c4FmC
 TuWfSY1zHacyWk91MDISt5Uw/h2ZMcCJLS2OZTBT+6ytVXrsYbbAjpcGYeYxeb8UihMf
 /Q6WbrSVvegl1EhPXJa+2P0rtoFACyZV8CbptKlGrHzC1Qfa2F+lNrgUYYMy1S51+ytv
 b3vnxgtnskj+xVrGdCW7w5CXJblvC2m5IBp2R1IysjQUwwVBQ1rWZ0vFTNTTU6uvvesx
 ISoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NaP02YVlfj2XBRA8PgGnBFZ3ZkjkK4tSn4ikEhyWjkU=;
 b=SiDex1V82RQeEi4uYCtjhtG3Jtv/FYTsg9sikNJC5poTJP1MZEVS4uooTabtpXSRg/
 +ujaVLs1eUWsP8YRJP5xDLim/gUgrF291mKmSwMLk+CH2au4AVM/hBOX/kSEn11CZ9SE
 oEYabb4LXm9frW5vHtUqNplxRc9dnvhxeDPydeJzXhllVEg622vEurJ3huhsMdGh69yn
 vIlYv9lET9MR1XrPjGKP22PQ2S+qQz/oh/0lZT7LmUEgpOmWpPXXm22hPD5bsuTX1WQF
 sUpX3nKG1MGK+7drWH067J5MR2mVLjI5feg6g1GeYbAtQ78yMpoB4FylEZBj1be9pQhc
 jJ/Q==
X-Gm-Message-State: AOAM531JrQGs9jvu80YI6trQrpTwJhC0U4AyRGYQcQVhITZW4AJaQL08
 DUPDW3VhuzqwMVwFb+Ezyv91awu2uoRLvJVlVUI=
X-Google-Smtp-Source: ABdhPJzT86vSkD6VIYzMvGrGRTjA2OptahzF2oMcY8ey0pqVmD0MxfeaHwIhPJ2fxhyo46Q0pAZXiM5Utt8AIYAOQNQ=
X-Received: by 2002:ae9:dcc3:: with SMTP id
 q186mr30343512qkf.426.1624968323149; 
 Tue, 29 Jun 2021 05:05:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210629113713.154654-1-thomas.hellstrom@linux.intel.com>
 <20210629113713.154654-2-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210629113713.154654-2-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 29 Jun 2021 13:04:56 +0100
Message-ID: <CAM0jSHONtvX8yUdWzPFgMw340JzdChffVZ_BhMcMYoszzOOfuA@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 1/3] drm/i915/gem: Implement object
 migration
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
 Matthew Auld <matthew.auld@intel.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyOSBKdW4gMjAyMSBhdCAxMjozNywgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IEludHJvZHVjZSBhbiBpbnRlcmZh
Y2UgdG8gbWlncmF0ZSBvYmplY3RzIGJldHdlZW4gcmVnaW9ucy4KPiBUaGlzIGlzIHByaW1hcmls
eSBpbnRlbmRlZCB0byBtaWdyYXRlIG9iamVjdHMgdG8gTE1FTSBmb3IgZGlzcGxheSBhbmQKPiB0
byBTWVNURU0gZm9yIGRtYS1idWYsIGJ1dCBtaWdodCBiZSByZXVzZWQgaW4gb25lIGZvcm0gb3Ig
YW5vdGhlciBmb3IKPiBwZXJmb3JtYW5jZS1iYXNlZCBtaWdyYXRpb24uCj4KPiB2MjoKPiAtIFZl
cmlmeSB0aGF0IHRoZSBtZW1vcnkgcmVnaW9uIGdpdmVuIGFzIGFuIGlkIHJlYWxseSBleGlzdHMu
Cj4gICAoUmVwb3J0ZWQgYnkgTWF0dGhldyBBdWxkKQo+IC0gQ2FsbCBpOTE1X2dlbV9vYmplY3Rf
e2luaXQscmVsZWFzZX1fbWVtb3J5X3JlZ2lvbigpIHdoZW4gc3dpdGNoaW5nIHJlZ2lvbgo+ICAg
dG8gaGFuZGxlIGFsc28gc3dpdGNoaW5nIHJlZ2lvbiBsaXN0cy4gKFJlcG9ydGVkIGJ5IE1hdHRo
ZXcgQXVsZCkKPiB2MzoKPiAtIEZpeCBpOTE1X2dlbV9vYmplY3RfY2FuX21pZ3JhdGUoKSB0byBy
ZXR1cm4gdHJ1ZSBpZiBvYmplY3QgaXMgYWxyZWFkeSBpbgo+ICAgdGhlIGNvcnJlY3QgcmVnaW9u
LCBldmVuIGlmIHRoZSBvYmplY3Qgb3BzIGRvZXNuJ3QgaGF2ZSBhIG1pZ3JhdGUoKQo+ICAgY2Fs
bGJhY2suCj4gLSBVcGRhdGUgdHlwbyBpbiBjb21taXQgbWVzc2FnZS4KPiAtIEZpeCBrZXJuZWxk
b2Mgb2YgaTkxNV9nZW1fb2JqZWN0X3dhaXRfbWlncmF0aW9uKCkuCj4gdjQ6Cj4gLSBJbXByb3Zl
IGRvY3VtZW50YXRpb24gKFN1Z2dlc3RlZCBieSBNYXR0ZXcgQXVsZCBhbmQgTWljaGFlbCBSdWhs
KQo+IC0gQWx3YXlzIGFzc3VtZSBUVE0gbWlncmF0aW9uIGhpdHMgYSBUVE0gbW92ZSBhbmQgdW5z
ZXRzIHRoZSBwYWdlcyB0aHJvdWdoCj4gICBtb3ZlX25vdGlmeS4gKFJlcG9ydGVkIGJ5IE1hdHRo
ZXcgQXVsZCkKPiAtIEFkZCBhIGRtYV9mZW5jZV9taWdodF93YWl0KCkgYW5ub3RhdGlvbiB0bwo+
ICAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfbWlncmF0aW9uKCkgKFN1Z2dlc3RlZCBieSBEYW5pZWwg
VmV0dGVyKQo+Cj4gUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogTWljaGFlbCBKLiBSdWhsIDxtaWNoYWVsLmou
cnVobEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
