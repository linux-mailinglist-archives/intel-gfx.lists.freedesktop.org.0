Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6351AC9DEA
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 14:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF606E9B2;
	Thu,  3 Oct 2019 12:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BDB46E9B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 12:00:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 05:00:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; d="scan'208";a="191247305"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 03 Oct 2019 05:00:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Oct 2019 15:00:32 +0300
Date: Thu, 3 Oct 2019 15:00:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191003120032.GD1208@intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
 <20190923102935.5860-5-dhinakaran.pandiyan@intel.com>
 <20191002223241.GN1869@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002223241.GN1869@mdroper-desk1.amr.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC v3 4/9] drm/i915/tgl: Gen-12 render
 decompression
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
Cc: Nanley G Chery <nanley.g.chery@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDM6MzI6NDFQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBPbiBNb24sIFNlcCAyMywgMjAxOSBhdCAwMzoyOTozMEFNIC0wNzAwLCBEaGluYWthcmFu
IFBhbmRpeWFuIHdyb3RlOgo+ID4gR2VuLTEyIGRpc3BsYXkgZGVjb21wcmVzc2lvbiBvcGVyYXRl
cyBvbiBZLXRpbGVkIGNvbXByZXNzZWQgbWFpbiBzdXJmYWNlLgo+ID4gVGhlIENDUyBpcyBsaW5l
YXIKPiAKPiBJJ2QgbWVudGlvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgdGhhdCB3ZSBvcHQgdG8g
dG8gdHJlYXQgdGhlCj4gQ0NTIGFzIGlmIGl0IHdlcmUgYSBidW5jaCBvZiA2NHgxIHRpbGVzLgo+
IAo+IFRoZXJlIGFyZSBhIGhhbmRmdWwgb2YgY29zbWV0aWMgY2hhbmdlcyBzdWdnZXN0ZWQgYmVs
b3csIGJ1dCBvdGhlcndpc2UsCj4gCj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+Cj4gCj4gPiBhbmQgaGFzIDQgYml0cyBvZiBtZXRhZGF0YSBmb3Ig
ZWFjaCBtYWluIHN1cmZhY2UgY2FjaGUKPiA+IGxpbmUgcGFpciwgYSBzaXplIHJhdGlvIG9mIDE6
MjU2LiBHZW4tMTIgZGlzcGxheSBkZWNvbXByZXNzaW9uIGlzCj4gPiBpbmNvbXBhdGlibGUgd2l0
aCBidWZmZXJzIGNvbXByZXNzZWQgYnkgZWFybGllciBHUFVzLCBzbyBtYWtlIHVzZSBvZiBhIG5l
dwo+ID4gbW9kaWZpZXIgdG8gaWRlbnRpZnkgZ2VuLTEyIGNvbXByZXNzaW9uLiBBbm90aGVyIG5v
dGFibGUgY2hhbmdlIGlzIHRoYXQKPiA+IHJlbmRlciBkZWNvbXByZXNzaW9uIGlzIHN1cHBvcnRl
ZCBvbiBhbGwgcGxhbmVzIGV4Y2VwdCBjdXJzb3IgYW5kIG9uIGFsbAo+ID4gcGlwZXMuIFN0YXJ0
IGJ5IGFkZGluZyByZW5kZXIgZGVjb21wcmVzc2lvbiBzdXBwb3J0IGZvciBbQSxYXUJHUjg4OCBw
aXhlbAo+ID4gZm9ybWF0cy4KPiA+IAo+ID4gdjI6IEZpeCBjaGVja3BhdGNoIHdhcm5pbmdzIChM
dWNhcykKPiA+IHYzOgo+ID4gUmViYXNlLCBkaXNhYmxlIGNvbG9yIGNsZWFyLCBzdHlsaW5nIGNo
YW5nZXMgYW5kIG1vZGlmeQo+ID4gaW50ZWxfdGlsZV93aWR0aF9ieXRlcyBhbmQgaW50ZWxfdGls
ZV9oZWlnaHQgdG8gaGFuZGxlIGxpbmVhciBDQ1MKPiA+IAo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+IENjOiBOYW5sZXkgRyBDaGVyeSA8bmFubGV5Lmcu
Y2hlcnlAaW50ZWwuY29tPgo+ID4gQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5k
Lm5ldD4KPiA+IFNpZ25lZC1vZmYtYnk6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4u
cGFuZGl5YW5AaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDg1ICsrKysrKysrKysrKysrKystLS0tCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgfCAyMyArKysrLS0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICB8ICAxICsK
PiA+ICAzIGZpbGVzIGNoYW5nZWQsIDg0IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQo+
ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+
ID4gaW5kZXggYzQzN2YwMGMyMDcyLi42ZmVjNDNjZGRkZjQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+IEBAIC0xOTExLDYgKzE5
MTEsMTAgQEAgaW50ZWxfdGlsZV93aWR0aF9ieXRlcyhjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVm
ZmVyICpmYiwgaW50IGNvbG9yX3BsYW5lKQo+ID4gIAkJaWYgKGNvbG9yX3BsYW5lID09IDEpCj4g
PiAgCQkJcmV0dXJuIDEyODsKPiA+ICAJCS8qIGZhbGwgdGhyb3VnaCAqLwo+ID4gKwljYXNlIEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUzoKPiA+ICsJCWlmIChjb2xvcl9wbGFu
ZSA9PSAxKQo+ID4gKwkJCXJldHVybiA2NDsKPiA+ICsJCS8qIGZhbGwgdGhyb3VnaCAqLwoKSSBk
b24ndCByZW1lbWJlciBvZmYgaGFuZCBpZiB3ZSBldmVuIG5lZWQgdGhpcyB0aGluZyBoZXJlLiBN
YXliZSB3ZSBjYW4KanVzdCBsZXQgaXQgZ28gdGhlIHNhbWUgcGF0aCBhcyBub3JtYWwgbGluZWFy
IHN0dWZmPwoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
