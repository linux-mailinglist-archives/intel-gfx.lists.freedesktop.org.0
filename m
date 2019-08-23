Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C090A9AAA7
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 335E96EC2B;
	Fri, 23 Aug 2019 08:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E04A6EC2B
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:50:45 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id d16so8313317wme.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 01:50:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zSxpys/XBx+4OO0F1wxom0ORQ0jIMSJGDlQShhcFlXE=;
 b=sS/dXC2ug/3Hdezan6863FH2ZR5xO2elINtRtrFIb3qkxa2zQ8ZmLYrD51IZB5Fs4/
 knK+UG7lxmnR1I6fynRFu1Bzooa4xWo0zoIm17aTbtrb4Aj8hVdcIiJ7IRnF5Pyk1RM0
 6WktVA8zUC+29aFRQ9wnV9DGQS93W8dLKpc4QorFLF3wY1ggzZkB6QZ+yJ8fSnXB1rU1
 fovX++WKeYFS6LC3OrzqrM3ufobDFq50fkudlyF1FtRbTWeVVWpqqHk3Nr8q4XoEzGhL
 bznXrpGh5PtUCogc9G/dpyCHWH1h+bzGbob8RbSnuCpk6VzRPn7mQjdBDFP8yF+Mj8yc
 QMHA==
X-Gm-Message-State: APjAAAX5QG9X4vZHlGBS1avWp7Z0EVBsNYqiPZXa6u8oP4JGBoFCOB55
 2g5pdm9EkokYYF9xv4wsKCjRa+FDwtdIuGluKBS/lw==
X-Google-Smtp-Source: APXvYqy5pkw84ZnLZclfHC/DtkHJWB/5RG44AGX/QsibQdgNPwi4499jac4YcIudRKai6wZRq4DR3VMnXE8KRNgsLc4=
X-Received: by 2002:a1c:1a56:: with SMTP id a83mr3841189wma.44.1566550244026; 
 Fri, 23 Aug 2019 01:50:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190823004655.28905-1-madhumitha.tolakanahalli.pradeep@intel.com>
In-Reply-To: <20190823004655.28905-1-madhumitha.tolakanahalli.pradeep@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Fri, 23 Aug 2019 01:50:30 -0700
Message-ID: <CAKi4VAJN7tTO-7UzCGbPS9NSi8OoLN_Nah9VNNr7diQ=OxgyuQ@mail.gmail.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=zSxpys/XBx+4OO0F1wxom0ORQ0jIMSJGDlQShhcFlXE=;
 b=SNi9CsHcMkVA/ALJDZdnCt6XjY7poDIMI8Pz2oT+X6p1EYw0gJYfPWpXIt/N9wWVwz
 EbaAwaIz5EFWgxQnmIIYOKOOtfmCJ+Ty2XEkjYz6iJtSmJjpQUVW6VnbqL53m6W0//Cn
 VM6n/KBVDg7lsT+QoHODEM/uZ6ZWfQwH0OLhoT/BB5CJN75BIvJTvgawpZhvA/VzuBjn
 xr8Znctv8msyF5Kd45+7YNr1Jwn/u8z/Dk9g8YhQLCksn+Us+J75pAocG2j8V+LLO4mO
 5wyb58Rxec4XZL5PsmXq6l0e7UJYz7xypgbPu2Jo88eqMWrcMYyV4dQBRzgy7YZaYqG1
 mgaQ==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgNTo0NiBQTSBNYWRodW1pdGhhIFRvbGFrYW5haGFsbGkg
UHJhZGVlcAo8bWFkaHVtaXRoYS50b2xha2FuYWhhbGxpLnByYWRlZXBAaW50ZWwuY29tPiB3cm90
ZToKPgo+IERTQyB3YXMgbm90IHN1cHBvcnRlZCBvbiBQaXBlIEEgZm9yIHByZXZpb3VzIHBsYXRm
b3Jtcy4gVGlnZXJsYWtlIG9ud2FyZHMsCj4gYWxsIHRoZSBwaXBlcyBzdXBwb3J0IERTQy4gSGVu
Y2UsIHRoZSBEU0MgYW5kIEZFQyByZXN0cmljdGlvbiBvbgo+IFBpcGUgQSBuZWVkcyB0byBiZSBy
ZW1vdmVkLgo+Cj4gdjI6IENoYW5nZXMgaW4gdGhlIGxvZ2ljIGFyb3VuZCByZW1vdmluZyB0aGUg
cmVzdHJpY3Rpb24gYXJvdW5kCj4gICAgIFBpcGUgQSAoTWFuYXNpLCBMdWNhcykKPgo+IENjOiBN
YW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFkZWVwIDxtYWRodW1pdGhhLnRvbGFrYW5haGFs
bGkucHJhZGVlcEBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+CgpMdWNhcyBEZSBNYXJjaGkKCj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDIxICsrKysrKysrKysrKysrKysrLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCA0ODg0Yzg3Yzhl
ZDcuLmUyYzhmZTI3NGM4NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMKPiBAQCAtMTczOSw4ICsxNzM5LDE0IEBAIHN0YXRpYyBib29sIGludGVsX2RwX3NvdXJj
ZV9zdXBwb3J0c19mZWMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgewo+ICAgICAgICAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7
Cj4KPiAtICAgICAgIHJldHVybiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmCj4gLSAgICAg
ICAgICAgICAgIHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0E7Cj4g
KyAgICAgICAvKiBPbiBUR0wsIEZFQyBpcyBzdXBwb3J0ZWQgb24gYWxsIFBpcGVzICovCj4gKyAg
ICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiArICAgICAgICAgICAgICAgcmV0
dXJuIHRydWU7Cj4gKwo+ICsgICAgICAgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpICYmIHBpcGVf
Y29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0EpCj4gKyAgICAgICAgICAgICAg
IHJldHVybiB0cnVlOwo+ICsKPiArICAgICAgIHJldHVybiBmYWxzZTsKPiAgfQo+Cj4gIHN0YXRp
YyBib29sIGludGVsX2RwX3N1cHBvcnRzX2ZlYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+
IEBAIC0xNzU1LDggKzE3NjEsMTUgQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc291cmNlX3N1cHBv
cnRzX2RzYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKPgo+IC0g
ICAgICAgcmV0dXJuIElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgJiYKPiAtICAgICAgICAgICAg
ICAgcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfQTsKPiArICAgICAg
IC8qIE9uIFRHTCwgRFNDIGlzIHN1cHBvcnRlZCBvbiBhbGwgUGlwZXMgKi8KPiArICAgICAgIGlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gdHJ1
ZTsKPiArCj4gKyAgICAgICBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCAmJgo+ICsgICAg
ICAgICAgIHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0EpCj4gKyAg
ICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+ICsKPiArICAgICAgIHJldHVybiBmYWxzZTsKPiAg
fQo+Cj4gIHN0YXRpYyBib29sIGludGVsX2RwX3N1cHBvcnRzX2RzYyhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAo+IC0tCj4gMi4xNy4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKCgoKLS0gCkx1Y2FzIERlIE1hcmNoaQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
