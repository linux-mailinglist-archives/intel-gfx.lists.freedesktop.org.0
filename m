Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BDB6B064
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 22:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF8D6E193;
	Tue, 16 Jul 2019 20:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20CB26E193
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 20:26:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 13:26:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,271,1559545200"; d="scan'208";a="191032890"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga004.fm.intel.com with ESMTP; 16 Jul 2019 13:26:20 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 13:26:19 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.65]) by
 ORSMSX157.amr.corp.intel.com ([169.254.9.94]) with mapi id 14.03.0439.000;
 Tue, 16 Jul 2019 13:26:20 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [PATCH] drm/dp/dsc: Add Support for all BPCs supported by TGL
Thread-Index: AQHVO2gk4nSoZYd1E0GwkEb/bfSlLabOA1kA//+vHzA=
Date: Tue, 16 Jul 2019 20:26:19 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734810252B@ORSMSX108.amr.corp.intel.com>
References: <20190715234056.17112-1-anusha.srivatsa@intel.com>
 <20190716181511.GB2632@intel.com>
In-Reply-To: <20190716181511.GB2632@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjFlMDExMzYtMWRhOC00M2U5LWJiMGQtYzY1MmZmYjliYzQ3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWGl6TnU4dDVSWkhyRmphQWtDQU1majVtUnNLelRzT0ZJdnhWM0Nlbm9hYzJjcldMYTVtQWtJR25rYityXC8rRVoifQ==
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/dp/dsc: Add Support for all BPCs
 supported by TGL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IE5hdmFyZSwgTWFuYXNpIEQKPlNl
bnQ6IFR1ZXNkYXksIEp1bHkgMTYsIDIwMTkgMTE6MTUgQU0KPlRvOiBTcml2YXRzYSwgQW51c2hh
IDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmc7IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj5TdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vZHAvZHNjOiBBZGQgU3VwcG9ydCBmb3IgYWxsIEJQ
Q3Mgc3VwcG9ydGVkIGJ5IFRHTAo+Cj5PbiBNb24sIEp1bCAxNSwgMjAxOSBhdCAwNDo0MDo1NlBN
IC0wNzAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6Cj4+IERTQyBlbmdpbmUgb24gSUNMIHN1cHBv
cnRzIG9ubHkgOCBhbmQgMTAgQlBDIGFzIHRoZSBpbnB1dCBCUEMuIEJ1dCBEU0MKPj4gZW5naW5l
IGluIFRHTCBzdXBwb3J0cyA4LCAxMCBhbmQgMTIgQlBDLgo+PiBBZGQgMTIgQlBDIHN1cHBvcnQg
Zm9yIERTQyB3aGlsZSBjYWxjdWxhdGluZyBjb21wcmVzc2lvbgo+PiBjb25maWd1cmF0aW9uLgo+
Pgo+PiB2MjogUmVtb3ZlIHRoZSBzZXBhcmF0ZSBkZWZpbmUgVEdMX0RQX0RTQ19NQVhfU1VQUE9S
VEVEX0JQQyBhbmQgdXNlCj4+IHRoZSB2YWx1ZSBkaXJlY3RseS4oTW9yZSBzdWNoIGRlZmluZXMg
Y2FuIGJlIHJlbW92ZWQgYXMgcGFydCBvZiBmdXR1cmUKPj4gcGF0Y2hlcykuIChWaWxsZSkKPgo+
SU1PIHdoYXQgVmlsbGUgYXNrZWQgdG8gZG8gaW4gaGlzIGNvbW1lbnQgd2FzIHRvIHJlbW92ZSBh
bGwgdGhlICNkZWZpbmVzIGZvciB0aGUKPm1heCBEU0MgQlBDIHNvIHJlbW92ZSB0aGUgb25lcyBm
b3IgOCBhbmQgMTAgYWxzbyB0byBtYWsgZWl0IG1vcmUgcmVhZGFibGUgYW5kCj50aGF0IHVzZXIg
ZG9lcyBub3QgaGF2ZSB0byBodW50IGZvciB0aGUgI2RlZmluZXMgZm9yIGVpdGhlciBvZiB0aGVz
ZS4KClllcyB0aG9zZSBjaGFuZ2VzIGNhbiBiZSBwYXJ0IG9mIGEgZm9sbG93aW5nIHBhdGNoLiBU
aGlzIGlzIFRHTCBzcGVjaWZpYy4KCkFudXNoYSAKPj4KPj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5h
c2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2Eg
PGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgOCArKysrKystLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiBpbmRleCAwZWI1ZDY2Zjg3YTcuLmFhOGJmYjc1NGZjMSAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiBAQCAtMTkx
NCw4ICsxOTE0LDEyIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZHNjX2NvbXB1dGVfY29uZmlnKHN0
cnVjdAo+aW50ZWxfZHAgKmludGVsX2RwLAo+PiAgCWlmICghaW50ZWxfZHBfc3VwcG9ydHNfZHNj
KGludGVsX2RwLCBwaXBlX2NvbmZpZykpCj4+ICAJCXJldHVybiAtRUlOVkFMOwo+Pgo+PiAtCWRz
Y19tYXhfYnBjID0gbWluX3QodTgsIERQX0RTQ19NQVhfU1VQUE9SVEVEX0JQQywKPj4gLQkJCSAg
ICBjb25uX3N0YXRlLT5tYXhfcmVxdWVzdGVkX2JwYyk7Cj4+ICsJLyogTWF4IERTQyBJbnB1dCBC
UEMgZm9yIFRHTCsgaXMgMTIgKi8KPj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikK
Pj4gKwkJZHNjX21heF9icGMgPSBtaW5fdCh1OCwgMTIsIGNvbm5fc3RhdGUtPm1heF9yZXF1ZXN0
ZWRfYnBjKTsKPj4gKwllbHNlCj4+ICsJCWRzY19tYXhfYnBjID0gbWluX3QodTgsIERQX0RTQ19N
QVhfU1VQUE9SVEVEX0JQQywKPj4gKwkJCQkgICAgY29ubl9zdGF0ZS0+bWF4X3JlcXVlc3RlZF9i
cGMpOwo+Cj5Vc2UgMTAgaGVyZSBkaXJlY3RseQo+Cj4+Cj4+ICAJcGlwZV9icHAgPSBpbnRlbF9k
cF9kc2NfY29tcHV0ZV9icHAoaW50ZWxfZHAsIGRzY19tYXhfYnBjKTsKPj4gIAlpZiAocGlwZV9i
cHAgPCBEUF9EU0NfTUlOX1NVUFBPUlRFRF9CUEMgKiAzKSB7Cj4KPlVzZSA4IGhlcmUgZGlyZWN0
bHkKPgo+TWFuYXNpCj4+IC0tCj4+IDIuMjEuMAo+PgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
