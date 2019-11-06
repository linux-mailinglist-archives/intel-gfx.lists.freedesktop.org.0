Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381B0F178C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 14:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 793C589DC9;
	Wed,  6 Nov 2019 13:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E1F89DC9
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 13:45:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 05:45:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,274,1569308400"; d="scan'208";a="192466130"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2019 05:45:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2019 15:45:05 +0200
Date: Wed, 6 Nov 2019 15:45:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191106134505.GT1208@intel.com>
References: <20191105171447.22111-1-ville.syrjala@linux.intel.com>
 <b5f5bd8b-1300-3077-2de3-1866173165ac@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5f5bd8b-1300-3077-2de3-1866173165ac@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Frob the correct crtc state
 in intel_crtc_disable_noatomic()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTI6NTM6NDVQTSArMDEwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMDUtMTEtMjAxOSBvbSAxODoxNCBzY2hyZWVmIFZpbGxlIFN5cmphbGE6
Cj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+ID4KPiA+IFRoZSB1YXBpIHZzLiBodyBzdGF0ZSBzcGxpdCBpbnRyb2R1Y2VkIGEgYnVnIGlu
Cj4gPiBpbnRlbF9jcnRjX2Rpc2FibGVfbm9hdG9taWMoKSB3aGVyZSBpdCdzIG5vdCBmcm9iYmlu
ZyBhbiBhbHJlYWR5CgpzL25vdC9ub3cvIGFuZCBwdXNoZWQgdG8gZGlucS4gVGhhbmtzIGZvciB0
aGUgcmV2aWV3LgoKPiA+IGZyZWVkIHRlbXAgY3J0YyBzdGF0ZSBpbnN0ZWFkIG9mIGFkanVzdGlu
ZyB0aGUgY3J0YyBzdGF0ZSB3ZQo+ID4gYXJlIHJlYWxseSBsZWZ0IHdpdGguIEZpeCB0aGF0IGJ5
IG1ha2luZyBhIGNsZWFuZXIgc2VwYXJhdGlvbgo+ID4gYmV0ZWVuIHRoZSB0d28uCj4gPgo+ID4g
VGhpcyBjYXVzZXMgZXhwbG9zaW9ucyBvbiBhbnkgbWFjaGluZSB0aGF0IGJvb3RzIHVwIHdpdGgg
cGlwZXMKPiA+IGFscmVhZHkgcnVubmluZyBidXQgbm90IGhvb2tlZCB1cCB0byBhbnkgZW5jb2Rl
ciAodHlwaWNhbAo+ID4gYmVoYXZpb3VyIGZvciBnZW4yLTQgVkJJT1MpLgo+ID4KPiA+IENjOiBN
YWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4g
Rml4ZXM6IDU4ZDEyNGVhMjczOSAoImRybS9pOTE1OiBDb21wbGV0ZSBjcnRjIGh3L3VhcGkgc3Bs
aXQsIHY2LiIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrKystLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gaW5kZXggODc2ZmMyNTk2OGJmLi4x
ZjkzODYwZmI4OTcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiA+IEBAIC03MTkxLDExICs3MTkxLDEzIEBAIHN0YXRpYyB2b2lkIGlu
dGVsX2NydGNfZGlzYWJsZV9ub2F0b21pYyhzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4gPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+ZGV2KTsKPiA+
ICAJc3RydWN0IGludGVsX2J3X3N0YXRlICpid19zdGF0ZSA9Cj4gPiAgCQl0b19pbnRlbF9id19z
dGF0ZShkZXZfcHJpdi0+Yndfb2JqLnN0YXRlKTsKPiA+ICsJc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUgPQo+ID4gKwkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5zdGF0ZSk7
Cj4gPiAgCWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gZG9tYWluOwo+ID4gIAlzdHJ1
Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwo+ID4gIAl1NjQgZG9tYWluczsKPiA+ICAJc3RydWN0IGRy
bV9hdG9taWNfc3RhdGUgKnN0YXRlOwo+ID4gLQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZTsKPiA+ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnRlbXBfY3J0Y19zdGF0ZTsK
PiA+ICAJaW50IHJldDsKPiA+ICAKPiA+ICAJaWYgKCFpbnRlbF9jcnRjLT5hY3RpdmUpCj4gPiBA
QCAtNzIxOSwxMiArNzIyMSwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2Rpc2FibGVfbm9h
dG9taWMoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ID4gIAlzdGF0ZS0+YWNxdWlyZV9jdHggPSBj
dHg7Cj4gPiAgCj4gPiAgCS8qIEV2ZXJ5dGhpbmcncyBhbHJlYWR5IGxvY2tlZCwgLUVERUFETEsg
Y2FuJ3QgaGFwcGVuLiAqLwo+ID4gLQljcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9jcnRj
X3N0YXRlKHN0YXRlLCBpbnRlbF9jcnRjKTsKPiA+ICsJdGVtcF9jcnRjX3N0YXRlID0gaW50ZWxf
YXRvbWljX2dldF9jcnRjX3N0YXRlKHN0YXRlLCBpbnRlbF9jcnRjKTsKPiA+ICAJcmV0ID0gZHJt
X2F0b21pY19hZGRfYWZmZWN0ZWRfY29ubmVjdG9ycyhzdGF0ZSwgY3J0Yyk7Cj4gPiAgCj4gPiAt
CVdBUk5fT04oSVNfRVJSKGNydGNfc3RhdGUpIHx8IHJldCk7Cj4gPiArCVdBUk5fT04oSVNfRVJS
KHRlbXBfY3J0Y19zdGF0ZSkgfHwgcmV0KTsKPiA+ICAKPiA+IC0JZGV2X3ByaXYtPmRpc3BsYXku
Y3J0Y19kaXNhYmxlKGNydGNfc3RhdGUsIHRvX2ludGVsX2F0b21pY19zdGF0ZShzdGF0ZSkpOwo+
ID4gKwlkZXZfcHJpdi0+ZGlzcGxheS5jcnRjX2Rpc2FibGUodGVtcF9jcnRjX3N0YXRlLCB0b19p
bnRlbF9hdG9taWNfc3RhdGUoc3RhdGUpKTsKPiA+ICAKPiA+ICAJZHJtX2F0b21pY19zdGF0ZV9w
dXQoc3RhdGUpOwo+ID4gIAo+IAo+IFJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IAoKLS0gClZpbGxlIFN5cmrDpGzDpApJ
bnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
