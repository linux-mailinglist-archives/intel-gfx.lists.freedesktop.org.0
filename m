Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E97C0A9C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 19:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EDFD6E19B;
	Fri, 27 Sep 2019 17:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E21E6E19B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 17:51:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 10:51:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="204212211"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 27 Sep 2019 10:51:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2019 20:51:53 +0300
Date: Fri, 27 Sep 2019 20:51:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: James Ausmus <james.ausmus@intel.com>
Message-ID: <20190927175153.GW1208@intel.com>
References: <20190925203352.9827-1-james.ausmus@intel.com>
 <20190925203352.9827-2-james.ausmus@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925203352.9827-2-james.ausmus@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Extract SAGV block time
 function
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
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMDE6MzM6NTBQTSAtMDcwMCwgSmFtZXMgQXVzbXVzIHdy
b3RlOgo+IEluIHByZXAgZm9yIG5ld2VyIHBsYXRmb3JtcyBoYXZpbmcgbW9yZSBjb21wbGljYXRl
ZCB3YXlzIHRvIGRldGVybWluZQo+IHRoZSBTQUdWIGJsb2NrIHRpbWUsIGV4dHJhY3QgdGhlIHNl
dHRpbmcgdG8gYSBzZXBhcmF0ZSBmdW5jdGlvbi4gV2hpbGUKPiB3ZSdyZSBhdCBpdCwgdXBkYXRl
IHRoZSBpZiBsYWRkZXIgdG8gZm9sbG93IHRoZSBuZXcgZ2VuIC0+IG9sZCBnZW4gb3JkZXIKPiBw
cmVmZXJlbmNlLCBhbmQgd2FybiBvbiBhbnkgbm9uLXNwZWNpZmllZCBnZW4uCj4gCj4gQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+Cj4gQ2M6IFN0YW5pc2xhdiBM
aXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgo+IENjOiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBB
dXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMgfCAyNCArKysrKysrKysrKysrKysrKystLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jCj4gaW5kZXggNmJlZDJlZDE0NTc0Li41YWQ3MmRjYjBmYWEgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMKPiBAQCAtMzY2Miw2ICszNjYyLDIzIEBAIGludGVsX2hhc19zYWd2
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQlkZXZfcHJpdi0+c2Fndl9z
dGF0dXMgIT0gSTkxNV9TQUdWX05PVF9DT05UUk9MTEVEOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50
Cj4gK2ludGVsX2dldF9zYWd2X2Jsb2NrX3RpbWVfdXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQoKVGhlICJfZ2V0XyIgaW4gdGhlIG5hbWUgc2VlbXMgYSBiaXQgc3VwZXJmbHVv
dXMuCgo+ICt7Cj4gKwlpbnQgc2Fndl9ibG9ja190aW1lX3VzID0gMTAwMDsgLyogRGVmYXVsdCB0
byB1bnVzYWJsZSBibG9jayB0aW1lICovCj4gKwo+ICsJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEp
KQo+ICsJCXNhZ3ZfYmxvY2tfdGltZV91cyA9IDEwOwo+ICsJZWxzZSBpZiAoSVNfR0VOKGRldl9w
cml2LCAxMCkpCj4gKwkJc2Fndl9ibG9ja190aW1lX3VzID0gMjA7Cj4gKwllbHNlIGlmIChJU19H
RU4oZGV2X3ByaXYsIDkpKQo+ICsJCXNhZ3ZfYmxvY2tfdGltZV91cyA9IDMwOwo+ICsJZWxzZQo+
ICsJCU1JU1NJTkdfQ0FTRShJTlRFTF9HRU4oZGV2X3ByaXYpKTsKPiArCj4gKwlyZXR1cm4gc2Fn
dl9ibG9ja190aW1lX3VzOwoKQ291bGQganVzdCByZXR1cm4gZGlyZWN0bHkgdy9vIHRoZSB0ZW1w
IHZhcmlhYmxlLgoKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cgo+ICt9Cj4gKwo+ICAvKgo+ICAgKiBTQUdWIGR5bmFtaWNhbGx5IGFk
anVzdHMgdGhlIHN5c3RlbSBhZ2VudCB2b2x0YWdlIGFuZCBjbG9jayBmcmVxdWVuY2llcwo+ICAg
KiBkZXBlbmRpbmcgb24gcG93ZXIgYW5kIHBlcmZvcm1hbmNlIHJlcXVpcmVtZW50cy4gVGhlIGRp
c3BsYXkgZW5naW5lIGFjY2Vzcwo+IEBAIC0zNzU1LDEyICszNzcyLDcgQEAgYm9vbCBpbnRlbF9j
YW5fZW5hYmxlX3NhZ3Yoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAlpZiAo
IWludGVsX2hhc19zYWd2KGRldl9wcml2KSkKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAo+IC0JaWYg
KElTX0dFTihkZXZfcHJpdiwgOSkpCj4gLQkJc2Fndl9ibG9ja190aW1lX3VzID0gMzA7Cj4gLQll
bHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDEwKSkKPiAtCQlzYWd2X2Jsb2NrX3RpbWVfdXMgPSAy
MDsKPiAtCWVsc2UKPiAtCQlzYWd2X2Jsb2NrX3RpbWVfdXMgPSAxMDsKPiArCXNhZ3ZfYmxvY2tf
dGltZV91cyA9IGludGVsX2dldF9zYWd2X2Jsb2NrX3RpbWVfdXMoZGV2X3ByaXYpOwo+ICAKPiAg
CS8qCj4gIAkgKiBJZiB0aGVyZSBhcmUgbm8gYWN0aXZlIENSVENzLCBubyBhZGRpdGlvbmFsIGNo
ZWNrcyBuZWVkIGJlIHBlcmZvcm1lZAo+IC0tIAo+IDIuMjIuMQo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzD
pApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
