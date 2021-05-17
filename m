Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3552383B32
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 19:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 449AF6E9BB;
	Mon, 17 May 2021 17:24:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB1C6E9BB;
 Mon, 17 May 2021 17:24:14 +0000 (UTC)
IronPort-SDR: 3URc5UuiYatlzc/+9lw1dNvtUIDGRJccYTmc3+KaaDhhE5RaeYEBF27bURyZvhV8JSP7/cpR4R
 tI+EowO0JBxg==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="180120447"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="180120447"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 10:24:04 -0700
IronPort-SDR: kF0CZl+GAeg2A0GvpYg15dIeMDeUqq1uyYy9TEHZFdrOMbYDz+DzmSlhN9sE6tGcFUrO/E1pq2
 QCZ5WEyCEKLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="404444619"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 17 May 2021 10:24:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 May 2021 20:24:01 +0300
Date: Mon, 17 May 2021 20:24:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Message-ID: <YKKmsbvTZBwCUiRu@intel.com>
References: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCBNYXkgMTYsIDIwMjEgYXQgMDY6MTQ6MzJQTSArMDEwMCwgRW1pbCBWZWxpa292IHdy
b3RlOgo+IEZyb206IFZpdmVrIERhcyBNb2hhcGF0cmEgPHZpdmVrQGNvbGxhYm9yYS5jb20+Cj4g
Cj4gVGhpcyBwYXRjaCBpcyB0byBkbyB3aXRoIHNlYW1sZXNzIGhhbmRvdmVyLCBlZyB3aGVuIHRo
ZSBzZXF1ZW5jZSBpcwo+IGJvb3Rsb2FkZXIg4oaSIHBseW1vdXRoIOKGkiBkZXNrdG9wLgo+IAo+
IEl0IHN3aXRjaGVzIHRoZSB2Z2EgYXJiaXRlciBmcm9tIHRoZSAib3RoZXIiIEdQVSB0byB0aGUg
ZGVmYXVsdCBvbmUKPiAoaW50ZWwgaW4gdGhpcyBjYXNlKSwgc28gdGhlIGRyaXZlciBjYW4gaXNz
dWUgc29tZSBpbygpLgoKSSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgdGhpcyBjb21taXQgbWVzc2Fn
ZSBpcyB0cnlpbmcgdG8gc2F5LgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaXZlayBEYXMgTW9oYXBh
dHJhIDx2aXZla0Bjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEVtaWwgVmVsaWtvdiA8
ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gR3JlZXRpbmdzIGFsbCwKPiAKPiBU
aGlzIHBhdGNoIGhhcyBiZWVuIGRvd25zdHJlYW0gZm9yIGEgd2hpbGUgbm93IHlldCBpdCBzZWVt
cyBwZXJmZWN0bHkKPiByZWFzb25hYmxlIHRoaW5nIHRvIGhhdmUgaW4gdGhlIExpbnV4IGtlcm5l
bC4KPiAKPiBodHRwczovL2dpdGh1Yi5jb20vVmFsdmVTb2Z0d2FyZS9zdGVhbW9zX2tlcm5lbC9j
b21taXQvNTQzMWI1YjE5OTljM2QzYjVlZmVlODE3ZmIzMzczZmJiZDQ3MzA2Mwo+IAo+IAo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jIHwgMTQgKysrKysrKystLS0t
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMKPiBpbmRleCBiZTMzMzY5
OWM1MTUuLjRmMDdiNWFkNWZhMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZnYS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92Z2EuYwo+IEBAIC0zMCwxMiArMzAsMTQgQEAgdm9pZCBpbnRlbF92Z2FfZGlzYWJsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAl1OCBzcjE7Cj4gIAo+ICAJLyog
V2FFbmFibGVWR0FBY2Nlc3NUaHJvdWdoSU9Qb3J0OmN0ZyxlbGssaWxrLHNuYixpdmIsdmx2LGhz
dyAqLwo+IC0JdmdhX2dldF91bmludGVycnVwdGlibGUocGRldiwgVkdBX1JTUkNfTEVHQUNZX0lP
KTsKPiAtCW91dGIoU1IwMSwgVkdBX1NSX0lOREVYKTsKPiAtCXNyMSA9IGluYihWR0FfU1JfREFU
QSk7Cj4gLQlvdXRiKHNyMSB8IDEgPDwgNSwgVkdBX1NSX0RBVEEpOwo+IC0JdmdhX3B1dChwZGV2
LCBWR0FfUlNSQ19MRUdBQ1lfSU8pOwo+IC0JdWRlbGF5KDMwMCk7Cj4gKwlpZiAocGRldiA9PSB2
Z2FfZGVmYXVsdF9kZXZpY2UoKSkgewo+ICsJCXZnYV9nZXRfdW5pbnRlcnJ1cHRpYmxlKHBkZXYs
IFZHQV9SU1JDX0xFR0FDWV9JTyk7Cj4gKwkJb3V0YihTUjAxLCBWR0FfU1JfSU5ERVgpOwo+ICsJ
CXNyMSA9IGluYihWR0FfU1JfREFUQSk7Cj4gKwkJb3V0YihzcjEgfCAxIDw8IDUsIFZHQV9TUl9E
QVRBKTsKPiArCQl2Z2FfcHV0KHBkZXYsIFZHQV9SU1JDX0xFR0FDWV9JTyk7Cj4gKwkJdWRlbGF5
KDMwMCk7Cj4gKwl9Cj4gIAo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIHZnYV9yZWcsIFZH
QV9ESVNQX0RJU0FCTEUpOwo+ICAJaW50ZWxfZGVfcG9zdGluZ19yZWFkKGRldl9wcml2LCB2Z2Ff
cmVnKTsKPiAtLSAKPiAyLjI3LjAKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
