Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDC8387747
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 13:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C636EB27;
	Tue, 18 May 2021 11:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17A46EB27;
 Tue, 18 May 2021 11:17:16 +0000 (UTC)
IronPort-SDR: yI+gj/YwlRdn4l1XOAm18pfWTlUVeftaGMdKr6oICcwIjHriwqMvcEAM/JBlNBN+4kGNZdU69T
 5Tt9mZ53MsoA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="198733675"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="198733675"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 04:17:16 -0700
IronPort-SDR: RP9CB410mQszfPj4yd/i86Q5F8YvKUlcCUp6PK4SNYelpI+h+6rEqT4Acl5z0nIaA7R02Q0Xqh
 7nYDUxPmc/rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="472903493"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 18 May 2021 04:17:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 May 2021 14:17:11 +0300
Date: Tue, 18 May 2021 14:17:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Message-ID: <YKOiN1EFXz7TfYyV@intel.com>
References: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
 <YKKmsbvTZBwCUiRu@intel.com>
 <CACvgo53H7GAjN_aFsCBOw+xtVbjcbR1q-U3vdgjT1KUPKoMkkg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvgo53H7GAjN_aFsCBOw+xtVbjcbR1q-U3vdgjT1KUPKoMkkg@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: only disable default vga device
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
 ML dri-devel <dri-devel@lists.freedesktop.org>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMTgsIDIwMjEgYXQgMTI6MDk6NTZQTSArMDEwMCwgRW1pbCBWZWxpa292IHdy
b3RlOgo+IEhpIFZpbGxlLAo+IAo+IE9uIE1vbiwgMTcgTWF5IDIwMjEgYXQgMTg6MjQsIFZpbGxl
IFN5cmrDpGzDpAo+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPgo+
ID4gT24gU3VuLCBNYXkgMTYsIDIwMjEgYXQgMDY6MTQ6MzJQTSArMDEwMCwgRW1pbCBWZWxpa292
IHdyb3RlOgo+ID4gPiBGcm9tOiBWaXZlayBEYXMgTW9oYXBhdHJhIDx2aXZla0Bjb2xsYWJvcmEu
Y29tPgo+ID4gPgo+ID4gPiBUaGlzIHBhdGNoIGlzIHRvIGRvIHdpdGggc2VhbWxlc3MgaGFuZG92
ZXIsIGVnIHdoZW4gdGhlIHNlcXVlbmNlIGlzCj4gPiA+IGJvb3Rsb2FkZXIg4oaSIHBseW1vdXRo
IOKGkiBkZXNrdG9wLgo+ID4gPgo+ID4gPiBJdCBzd2l0Y2hlcyB0aGUgdmdhIGFyYml0ZXIgZnJv
bSB0aGUgIm90aGVyIiBHUFUgdG8gdGhlIGRlZmF1bHQgb25lCj4gPiA+IChpbnRlbCBpbiB0aGlz
IGNhc2UpLCBzbyB0aGUgZHJpdmVyIGNhbiBpc3N1ZSBzb21lIGlvKCkuCj4gPgo+ID4gSSBkb24n
dCB1bmRlcnN0YW5kIHdoYXQgdGhpcyBjb21taXQgbWVzc2FnZSBpcyB0cnlpbmcgdG8gc2F5Lgo+
ID4KPiBCdW5jaCBvZiBjb250ZXh0IGlzIGxvc3QgZHVlIHRvIHRoZSBwYXRjaCBhZ2UsIHNvIEkn
bSBub3QgMTAwJSBzdXJlIG9mCj4gdGhlIGFjdHVhbCBoYXJkd2FyZSBzZXR1cCB3aGVyZSB0aGlz
IG9jY3Vycy4KPiBEb2VzIHRoZSBmb2xsb3dpbmcgbWFrZSBzZW5zZT8KPiAKPiBDdXJyZW50bHkg
b24gZHVhbCBHUFUgc3lzdGVtcywgd2UgZG8gbm90IGdldCBzZWFtbGVzcyBoYW5kb3ZlciBhcyB0
aGUKPiBvdXRwdXQgZmxpY2tlcnMgZHVyaW5nIHRoZSB0cmFuc2l0aW9uIGJvb3Rsb2FkZXIgLT4g
cGx5bW91dGggLT4KPiBkZXNrdG9wLgo+IFRoaXMgaGFwcGVucyBhcyBhIHJlc3VsdCBvZiBzd2l0
Y2hpbmcgKHZpYSB0aGUgVkdBIGFyYml0ZXIpIGZyb20gdGhlCj4gIm90aGVyIiBHUFUgYmFjayB0
byB0aGUgZGVmYXVsdCBpOTE1IG9uZSBhbmQgaXNzdWluZyBpbygpIGNvbW1hbmRzLgoKSG1tLiBE
b2VzIHRoaXMgd29yaz8KCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dmdhLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYwpAQCAt
MjksNiArMjksOSBAQCB2b2lkIGludGVsX3ZnYV9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKICAgICAgICBpOTE1X3JlZ190IHZnYV9yZWcgPSBpbnRlbF92Z2FfY250
cmxfcmVnKGRldl9wcml2KTsKICAgICAgICB1OCBzcjE7CiAKKyAgICAgICBpZiAoaW50ZWxfZGVf
cmVhZChkZXZfcHJpdiwgdmdhX3JlZykgJiBWR0FfRElTUF9ESVNBQkxFKQorICAgICAgICAgICAg
ICAgcmV0dXJuOworCiAgICAgICAgLyogV2FFbmFibGVWR0FBY2Nlc3NUaHJvdWdoSU9Qb3J0OmN0
ZyxlbGssaWxrLHNuYixpdmIsdmx2LGhzdyAqLwogICAgICAgIHZnYV9nZXRfdW5pbnRlcnJ1cHRp
YmxlKHBkZXYsIFZHQV9SU1JDX0xFR0FDWV9JTyk7CiAgICAgICAgb3V0YihTUjAxLCBWR0FfU1Jf
SU5ERVgpOwoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
