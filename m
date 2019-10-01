Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E972C3795
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:36:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BAF46E7F1;
	Tue,  1 Oct 2019 14:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 609F96E7F1
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:36:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 07:36:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="197871399"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 01 Oct 2019 07:36:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2019 17:36:48 +0300
Date: Tue, 1 Oct 2019 17:36:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Message-ID: <20191001143648.GN1208@intel.com>
References: <20191001063128.10566-1-swati2.sharma@intel.com>
 <87pnjgdhab.fsf@intel.com> <20191001142125.GL1208@intel.com>
 <8e3828f0-22b7-54e5-66ed-640384d38ac4@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8e3828f0-22b7-54e5-66ed-640384d38ac4@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/color: fix broken display in icl+
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDc6NTg6MzlQTSArMDUzMCwgU2hhcm1hLCBTd2F0aTIg
d3JvdGU6Cj4gT24gMDEtT2N0LTE5IDc6NTEgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+
IE9uIFR1ZSwgT2N0IDAxLCAyMDE5IGF0IDExOjAzOjA4QU0gKzAzMDAsIEphbmkgTmlrdWxhIHdy
b3RlOgo+ID4+IE9uIFR1ZSwgMDEgT2N0IDIwMTksIFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJt
YUBpbnRlbC5jb20+IHdyb3RlOgo+ID4+PiBQcmVtYXR1cmUgZ2FtbWEgbHV0IHByZXByYXRpb24g
YW5kIGxvYWRpbmcgd2hpY2ggd2FzIGdldHRpbmcKPiA+Pj4gcmVmbGVjdGVkIGluIGZpcnN0IG1v
ZGVzZXQgY2F1c2luZyBkaWZmZXJlbnQgY29sb3JzIG9uCj4gPj4+IHNjcmVlbiBkdXJpbmcgYm9v
dC4KPiA+Pj4KPiA+Pj4gSXNzdWU6IEluIEJJT1MsIGdhbW1hIGlzIGRpc2FibGVkIGJ5IGRlZmF1
bHQuIEhvd2V2ZXIsCj4gPj4+IGxlZ2FjeV9yZWFkX2x1dHMoKSB3YXMgZ2V0dGluZyBjYWxsZWQg
ZXZlbiBiZWZvcmUgdGhlIGxlZ2FjeV9sb2FkX2x1dHMoKQo+ID4+PiB3aGljaCB3YXMgc2V0dGlu
ZyBjcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCBhbmQgZ2FtbWFfbHV0IHdhcwo+ID4+PiBwcm9n
cmFtbWVkIHdpdGgganVuayB2YWx1ZXMgd2hpY2ggbGVkIHRvIHZpc3VhbCBhcnRpZmFjdHMgKGRp
ZmZlcmVudAo+ID4+PiBjb2xvcmVkIHNjcmVlbnMgaW5zdGVhZCBvZiB1c3VhbCBibGFjayBkdXJp
bmcgYm9vdCkuCj4gPj4+Cj4gPj4+IEZpeDogQ2FsbGluZyByZWFkX2x1dHMoKSBvbmx5IHdoZW4g
Z2FtbWEgaXMgZW5hYmxlZCB3aGljaCB3aWxsIGhhcHBlbgo+ID4+PiBhZnRlciBmaXJzdCBtb2Rl
c2V0Lgo+ID4+Pgo+ID4+PiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTExODA5Cj4gPj4KPiA+PiBJJ20gY29uZnVzZWQuIElzIHRoZXJlIGEg
Y3VycmVudCBwcm9ibGVtIHVwc3RyZWFtIGFmdGVyIHRoZSByZXZlcnQKPiA+PiAxYjg1ODg3NDFm
ZGMgKCJSZXZlcnQgImRybS9pOTE1L2NvbG9yOiBFeHRyYWN0IGljbF9yZWFkX2x1dHMoKSIiKT8K
PiA+Pgo+ID4+IE9yIGRvZXMgdGhpcyBmaXggYSBwcm9ibGVtIHRoYXQgb25seSBvY2N1cnMgaW4g
Y29uanVuY3Rpb24gd2l0aCB0aGUKPiA+PiByZXZlcnRlZCBjb21taXQ/IFRoZW4gc2F5IHNvLgo+
ID4+Cj4gPj4gTm90ZSBpbmxpbmUuCj4gPj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hh
cm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPiA+Pj4gLS0tCj4gPj4+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKy0KPiA+Pj4gICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4+Cj4gPj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPj4+IGluZGV4
IGYxMzI4YzA4ZjRhZC4uZjg5YWE0YmI5ZjQyIDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4+PiBAQCAtMTA1MjgsNyArMTA1
MjgsOSBAQCBzdGF0aWMgYm9vbCBoYXN3ZWxsX2dldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YywKPiA+Pj4gICAJCWk5eHhfZ2V0X3BpcGVfY29sb3JfY29uZmlnKHBpcGVfY29u
ZmlnKTsKPiA+Pj4gICAJfQo+ID4+PiAgIAo+ID4+PiAtCWludGVsX2NvbG9yX2dldF9jb25maWco
cGlwZV9jb25maWcpOwo+ID4+PiArCWlmICgoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJiAo
cGlwZV9jb25maWctPmdhbW1hX21vZGUgJiBQT1NUX0NTQ19HQU1NQV9FTkFCTEUpKSB8fAo+ID4+
PiArCSAgIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgJiYgKHBpcGVfY29uZmlnLT5nYW1tYV9l
bmFibGUpKSkKPiA+Pj4gKwkJCWludGVsX2NvbG9yX2dldF9jb25maWcocGlwZV9jb25maWcpOwo+
ID4+Cj4gPj4gUHV0IGFsbCBvZiB0aGUgY29uZGl0aW9ucyBpbnNpZGUgaW50ZWxfY29sb3JfZ2V0
X2NvbmZpZygpLgo+ID4gCj4gPiBJbiBmYWN0IGluc2lkZSB0aGUgLnJlYWRfbHV0cygpIHNpbmNl
IHRoZXNlIGNoZWNrcyBhcmUgcGxhdGZvcm0KPiA+IHNwZWNpZmljLgo+ID4gCj4gPiBBbHNvIHRo
aXMgY2hlY2sgaXMgd3JvbmcgZm9yIENIViBzaW5jZSBpdCBoYXMgYSBzZXBhcmF0ZQo+ID4gZW5h
YmxlIGtub2IgZm9yIHRoZSBDR00gTFVUIChnYW1tYV9lbmFibGUgb25seSBkZWFscyB3aXRoIHRo
ZQo+ID4gbGVnYWN5IExVVCkgPgo+IEluc2lkZSByZWFkX2x1dHMoKSBJIGFscmVhZHkgaGF2ZS4g
QnV0IHRoZSBpc3N1ZSBpcyBmaXJzdCByZWFkX2x1dCgpIAo+IHdpbGwgaGFwcGVuIGJlZm9yZSBs
b2FkX2x1dCgpIGFuZCBpdCB3aWxsIHJlcGxhY2UgCj4gY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9s
dXQgYW5kIGdhbW1hX2x1dCB3aWxsIGJlIHByb2dyYW1tZWQgd2l0aCBqdW5rIAo+IHZhbHVlcyB3
aGljaCBsZWQgdG8gbXVsdGlwbGUgY29sb3JlZCBzY3JlZW5zLiBTbyB3ZSBuZWVkIGEgY2hlY2sg
dG8gY2FsbAo+IGludGVsX2NvbG9yX2dldF9jb25maWcoKSBpdHNlbGYuCgpUaGF0IGRvZXNuJ3Qg
bWFrZSBzZW5zZS4gSWYgeW91J3JlIGFscmVhZHkgY2hlY2tpbmcgdGhlc2UgdGhlbgphZGRpbmcg
YSBzZWNvbmQgY2hlY2sgd29uJ3QgY2hhbmdlIGFueXRoaW5nLgoKQWxzbyBzdGF0ZSByZWFkb3V0
IGlzIG1lYW50IHRvIGp1c3QgYmxpbmRseSByZWFkb3V0IHRoZSBoYXJkd2FyZSBzdGF0ZS4KSWYg
dGhlIExVVCB1c2VkIGJ5IHRoZSBCSU9TIGlzIGVuYWJsZWQgYW5kIG5vdCBzb21ldGhpbmcgd2Ug
d2FudCB0bwp1c2UgdGhlbiB3ZSBuZWVkIHRvIHNhbml0aXplIGl0IGFmdGVyIHRoZSByZWFkb3V0
LgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
