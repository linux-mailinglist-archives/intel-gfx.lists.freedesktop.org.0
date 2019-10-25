Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AD5E4A91
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 13:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2F706E9C9;
	Fri, 25 Oct 2019 11:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C3276E9C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 11:56:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 04:56:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="210701483"
Received: from kmsmsx155.gar.corp.intel.com ([172.21.73.106])
 by orsmga002.jf.intel.com with ESMTP; 25 Oct 2019 04:56:42 -0700
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.128]) by
 KMSMSX155.gar.corp.intel.com ([169.254.15.202]) with mapi id 14.03.0439.000;
 Fri, 25 Oct 2019 19:56:41 +0800
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/cml: Remove unsupport PCI ID
Thread-Index: AQHViwjvqU3ZLRIdN0GwFgUo6ai2Iadqg9+AgAC6gxA=
Date: Fri, 25 Oct 2019 11:56:41 +0000
Message-ID: <D42A2A322A1FCA4089E30E9A9BA36AC65D6DB54D@PGSMSX111.gar.corp.intel.com>
References: <20191025154933.22607-1-shawn.c.lee@intel.com>
 <87eez1b4jc.fsf@intel.com>
In-Reply-To: <87eez1b4jc.fsf@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmNhNjNkYmUtN2NmNC00YmQ1LTgxOGQtNjA5ZDRmNjZlZjE5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWWFEUHlJT3ErWHp1R05ySWpCelhsVzRFN1dzekR3c3Z0bDBuUzcxZVFuVzdrZnBXV0J2VWZVVDRhMFMyQ21DMyJ9
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/cml: Remove unsupport PCI ID
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
Reply-To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "20191025154933.22607-1-shawn.c.lee@intel.com"
 <20191025154933.22607-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNSBPY3QgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj5PbiBGcmksIDI1IE9jdCAyMDE5LCBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50
ZWwuY29tPiB3cm90ZToKPj4gY29tbWl0ICdhN2I0ZGVlYjAyYjkgKCJkcm0vaTkxNS9jbWw6IEFk
ZCBDTUwgUENJIElEUyknCj4+IGludHJvZHVjZWQgbmV3IFBDSSBJRCB0aGF0IENNTCBzdXBwb3J0
LiBCdXQgc29tZSBza3UgaXMgbm90IHN1cHBvcnQgCj4+IHlldCBzbyByZW1vdmUgdGhlbSBhdm9p
ZCB1bmV4cGVjdGVkIGlzc3VlLgo+Cj5QbGVhc2UgZWxhYm9yYXRlLgo+Cj5CUiwKPkphbmkuCj4K
ClNvIGZhciwgSSBkaWQgbm90IG1lZXQgcmVhbCBpc3N1ZS4gSnVzdCBmaW5kIHNvbWUgc2t1IHdl
cmUgcmVtb3ZlZApmcm9tIHN1cHBvcnQgbGlzdC4KCj4KPj4KPj4gQ2M6IFJvZHJpZ28gVml2aSA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+Cj4+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KPj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPj4g
Q2M6IENvb3BlciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1i
eTogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPj4gLS0tCj4+ICBpbmNsdWRl
L2RybS9pOTE1X3BjaWlkcy5oIHwgNCAtLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNs
dWRlL2RybS9pOTE1X3BjaWlkcy5oIAo+PiBpbmRleCBhNzBjOTgyZGRmZjkuLjU2ZTgyM2NkYzcx
NyAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAo+PiArKysgYi9pbmNs
dWRlL2RybS9pOTE1X3BjaWlkcy5oCj4+IEBAIC00NDgsOSArNDQ4LDcgQEAKPj4gICNkZWZpbmUg
SU5URUxfQ01MX0dUMV9JRFMoaW5mbykJXAo+PiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QjIxLCBp
bmZvKSwgXAo+PiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkFBLCBpbmZvKSwgXAo+PiAtCUlOVEVM
X1ZHQV9ERVZJQ0UoMHg5QkFCLCBpbmZvKSwgXAo+PiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkFD
LCBpbmZvKSwgXAo+PiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkEwLCBpbmZvKSwgXAo+PiAgCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg5QkE1LCBpbmZvKSwgXAo+PiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5
QkE4LCBpbmZvKSwgXAo+PiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHg5QkE0LCBpbmZvKSwgXAo+PiBA
QCAtNDYwLDkgKzQ1OCw3IEBACj4+ICAjZGVmaW5lIElOVEVMX0NNTF9HVDJfSURTKGluZm8pCVwK
Pj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OUI0MSwgaW5mbyksIFwKPj4gIAlJTlRFTF9WR0FfREVW
SUNFKDB4OUJDQSwgaW5mbyksIFwKPj4gLQlJTlRFTF9WR0FfREVWSUNFKDB4OUJDQiwgaW5mbyks
IFwKPj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJDQywgaW5mbyksIFwKPj4gLQlJTlRFTF9WR0Ff
REVWSUNFKDB4OUJDMCwgaW5mbyksIFwKPj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJDNSwgaW5m
byksIFwKPj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4OUJDOCwgaW5mbyksIFwKPj4gIAlJTlRFTF9W
R0FfREVWSUNFKDB4OUJDNCwgaW5mbyksIFwKPgo+LS0KPkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
