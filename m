Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6493F396DE9
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 09:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51C3A6E243;
	Tue,  1 Jun 2021 07:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com
 [IPv6:2607:f8b0:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 174066E2B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 07:28:33 +0000 (UTC)
Received: by mail-oi1-x22e.google.com with SMTP id j75so14586870oih.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Jun 2021 00:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7YWxZ4LYPadaEaLleuE6m94kneRRJG7Efk68kZp5Wpg=;
 b=JOavtG1PeB2XpJQM7EqfiqZBnFczKs7ZMLjCzGuXWiP4G73KYOxA5pnuBuBHxMRzk2
 eMkGgPvdwbwCK2oywXXElt87UMKnXRclo9pQRykfSUpqTzU5AjfnZ2xb0sZ5ieeisnWm
 MaNLy+Jjqd67rbHTh2yHMMvWDXBN/AAsLoaF4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7YWxZ4LYPadaEaLleuE6m94kneRRJG7Efk68kZp5Wpg=;
 b=Q7RrQO40E0ysDHjp28qys0J13bXpeBGdAlkZ6hW27hzPLXJCJYb8WNYczH1fa+xtqv
 geJYXXUaNu3r29hdmDtTB3gx4Juff7EUPnQve10Orx1+okDHIyeoClgjc/3NeLsdR7FN
 jfIfDBGZzo55ifRoFEn+lhipi/iAxaa3kqudHs+BrLvY7WO1ZfHjJB2LQaDDQy25OrHR
 2eOuRNyb+KJCoLgpB4zPfnN/E67eqCdFYezumdR4QY5wcVm36sl8TKWvGF1KfHPis8sz
 BrO/nZbvig4ToodrU7Nw6J7iC3B2sQWnFvYrPJ5CsBt5PXHTCu5g8Fj3UwiFUGGhVPIu
 zBXQ==
X-Gm-Message-State: AOAM530uWhhqZzeSi8rBREA1amDTWTLlTRNd3JDAyhEtcnlW2dlGxb/6
 oCb965GA5HEV7GZ1W06a01jriMjGaZBnwFtSB9qJUg==
X-Google-Smtp-Source: ABdhPJxnqsP3l7lVMLKZMPPIb17LjqzUQ/8nUsAihHsoC77yCwzqB1NVHuNnS1wDlUEVeIkUMyUMZd+YQhkN8HUjqtM=
X-Received: by 2002:a05:6808:1142:: with SMTP id
 u2mr2072784oiu.101.1622532512233; 
 Tue, 01 Jun 2021 00:28:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210511083139.54002-1-zbigniew.kempczynski@intel.com>
 <YJq5OHIO8ThIiKCz@phenom.ffwll.local>
 <CAPM=9ty84uK-gT3uXZXGOEFno11SBRUh=btXb-B7OYUmnGiRoQ@mail.gmail.com>
 <YK9uwBAvUD+2NYlL@phenom.ffwll.local>
 <CAPM=9txR2ZDpLX1bwzgqq+f9nsiP0feWB+1=tpto2zf_qPKu=Q@mail.gmail.com>
In-Reply-To: <CAPM=9txR2ZDpLX1bwzgqq+f9nsiP0feWB+1=tpto2zf_qPKu=Q@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 1 Jun 2021 09:28:21 +0200
Message-ID: <CAKMK7uEJ7cajUO+TWijyAmGBkvRHaskusRrLJLiOVYSJ3xDKug@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMSwgMjAyMSBhdCA5OjE5IEFNIERhdmUgQWlybGllIDxhaXJsaWVkQGdtYWls
LmNvbT4gd3JvdGU6Cj4gT24gVGh1LCAyNyBNYXkgMjAyMSBhdCAyMDowNCwgRGFuaWVsIFZldHRl
ciA8ZGFuaWVsQGZmd2xsLmNoPiB3cm90ZToKPiA+IE9uIFdlZCwgTWF5IDI2LCAyMDIxIGF0IDEw
OjM1OjQ5QU0gKzEwMDAsIERhdmUgQWlybGllIHdyb3RlOgo+ID4gPiBPbiBXZWQsIDEyIE1heSAy
MDIxIGF0IDAzOjA1LCBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+IHdyb3RlOgo+ID4g
PiA+IE9uIFR1ZSwgTWF5IDExLCAyMDIxIGF0IDEwOjMxOjM5QU0gKzAyMDAsIFpiaWduaWV3IEtl
bXBjennFhHNraSB3cm90ZToKPiA+ID4gPiA+IFdlIGhhdmUgZXN0YWJsaXNoZWQgcHJldmlvdXNs
eSB3ZSBzdG9wIHVzaW5nIHJlbG9jYXRpb25zIHN0YXJ0aW5nCj4gPiA+ID4gPiBmcm9tIGdlbjEy
IHBsYXRmb3JtcyB3aXRoIFRpZ2VybGFrZSBhcyBhbiBleGNlcHRpb24uIFVuZm9ydHVuYXRlbHkK
PiA+ID4gPiA+IHdlIG5lZWQgZXh0ZW5kIHRyYW5zaXRpb24gcGVyaW9kIGFuZCBzdXBwb3J0IHJl
bG9jYXRpb25zIGZvciB0d28KPiA+ID4gPiA+IG90aGVyIGlnZnggcGxhdGZvcm1zIC0gUm9ja2V0
bGFrZSBhbmQgQWxkZXJsYWtlLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFpi
aWduaWV3IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgo+ID4g
PiA+ID4gQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+Cj4gPiA+ID4gPiBDYzog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiA+ID4gPiBDYzogSmFz
b24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+ID4gPiA+Cj4gPiA+ID4gU28gdGhl
IGFubm95aW5nIHRoaW5nIGhlcmUgaXMgdGhhdCBub3cgbWVkaWEtZHJpdmVyIGlzIGZpeGVkOgo+
ID4gPiA+Cj4gPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL2ludGVsL21lZGlhLWRyaXZlci9jb21t
aXQvMTQ0MDIwYzM3NzcwMDgzOTc0YmVkZjU5OTAyYjcwYjhmNDQ0Yzc5OQo+ID4gPiA+Cj4gPiA+
ID4gV2hpY2ggbWVhbnMgaWd0IGlzIHJlYWxseSB0aGUgb25seSB0aGluZyBsZWZ0Lgo+ID4gPiA+
Cj4gPiA+ID4gRGF2ZSwgaXMgdGhpcyBzdGlsbCBvayBmb3IgYW4gYWNrZWQgZXhjZXB0aW9uLCBv
ciBpcyB0aGlzIG5vdyBsZWFuaW5nCj4gPiA+ID4gdG93YXJkcyAianVzdCBmaXggaWd0Ij8KPiA+
ID4KPiA+ID4gT2ggdGhhdCBpc24ndCBncmVhdCBpcyBpdCwgSSBoYWQgdGhvdWdodCBpdCB3YXMg
dGhlIG1lZGlhLWRyaXZlciwKPiA+ID4ga2VlcGluZyBhIGJpZyB1QVBJIGxpa2UgdGhpcyBvcGVu
IGp1c3QgZm9yIHRoZSB0ZXN0IGNvZGUgc2VlbXMgYSBiaXQKPiA+ID4gc2lsbHkuIEkgZ2V0IHRo
ZSB0ZXN0cyBhcmUgdGVzdGluZyBtb3JlIHRoYW4ganVzdCByZWxvY3MsIGJ1dCBpdCdzIGEKPiA+
ID4gcHJldHR5IGJpZyBpbnRlcmZhY2UgdG8gbGVhdmUgbHlpbmcgYXJvdW5kIGlmIHdlIGNhbiBh
dm9pZCBpdC4KPiA+Cj4gPiBTbyBzaW5jZSB3ZSBuZWVkIHRvIGRvIHRoZSB3b3JrIGFueXdheSBm
b3IgREcxKyB3aGF0IGFib3V0IHNvbWUgaW50ZXJpbQo+ID4gaGFjaz8gQ3VycmVudGx5IEFETCBz
dGlsbCBoYXMgdGhlIHJlcXVpcmVfZm9yY2VfcHJvYmUgZmxhZyBzZXQuIFdlIGNvdWxkCj4gPiBy
ZS1lbmFibGUgcmVsb2NhdGlvbnMganVzdCBmb3IgQURMLCBvbmx5IHdoaWxlIHRoaXMgZmxhZyBp
cyBzZXQuIFRoaXMKPiA+IGdpdmVzIHVzIGEgYnVuY2ggb2Ygd2lnZ2xlIHJvb20sIHVuYmxvY2tz
IGV2ZXJ5dGhpbmcgZWxzZSAoQ0kgaXMgYSBiaXQgb24KPiA+IGZpcmUgcmlnaHQgbm93IGR1ZSB0
byB0aGlzIGFuZCBwcmFjdGlhbGx5IHVudXNlYWJsZSBvbiBBREwgZ2VtIGFyZWF5KSBhbmQKPiA+
IHdlJ2xsIHN0aWxsIG1ha2Ugc3VyZSB0aGF0IHdoZW4gQURMIGlzIGFsbCBkb25lIHdlIHdvbnQg
ZXhwb3NlIHJlbG9jYXRpb25zCj4gPiBqdXN0IGZvciBpZ3QuCj4gPgo+ID4gVGhvdWdodHM/Cj4K
PiBJIGNhbiBoYW5kbGUgdGhhdCBhcyBhIGNvbXByb21pc2UsIHRob3VnaCBJJ2Qgbm90IHdhbnQg
dG8gYmxvY2sgQURMCj4gZ2V0dGluZyBvdXQgb2YgYWxwaGEgb3ZlciBzb21lIElHVCB0aGF0IG5l
ZWRzIHBvcnRpbmcuCgpVaCBnaXZlbiB0aGF0IEVITC9KU0wgYXJlIHN0aWxsIGluIHJlcXVpcmVf
Zm9yY2VfcHJvYmUgPSB0cnVlIG1vZGUKYmVjYXVzZSBvZiBhIHJhbmRvbSBpZ3QgKGFuZCBzaGlw
cGluZyBzaW5jZSBhIHdoaWxlKSAuLi4gSSBndWVzcyB3b3JzdApjYXNlIGlmIGl0J3Mgbm90IHNv
cnRlZCBpbiBhIGZldyBtb250aHMgbGF0ZXN0IHdlIGNhbiB1bmRvIHRoYXQgYWdhaW4uCi1EYW5p
ZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9u
Cmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
