Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8902082E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 15:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D7398951E;
	Thu, 16 May 2019 13:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1C168951E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 13:30:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 06:30:35 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 16 May 2019 06:30:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2019 16:30:31 +0300
Date: Thu, 16 May 2019 16:30:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190516133031.GN24299@intel.com>
References: <cover.1557985315.git.harish.chegondi@intel.com>
 <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
 <4410fcc9-4989-99eb-dc38-f568056b189f@linux.intel.com>
 <87a7fma79e.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a7fma79e.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: skip the second CRC even for
 GEN 7 GPUs
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMDM6NTU6MjVQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gVGh1LCAxNiBNYXkgMjAxOSwgTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPiBPcCAxNi0wNS0yMDE5IG9tIDA3OjU4
IHNjaHJlZWYgSGFyaXNoIENoZWdvbmRpOgo+ID4+IGRpc3BsYXlfcGlwZV9jcmNfaXJxX2hhbmRs
ZXIoKSBza2lwcyB0aGUgZmlyc3QgQ1JDIGZvciBhbGwgR1BVcyBhbmQgdGhlCj4gPj4gc2Vjb25k
IENSQyBmb3IgR0VOOCsgR1BVcy4gVGhlIHNlY29uZCBDUkMgaXMgaW52YWxpZCBldmVuIGZvciBC
WVQgd2hpY2gKPiA+PiBpcyBhIEdFTjcgR1BVLiBTbywgc2tpcCB0aGUgc2Vjb25kIENSQyBldmVu
IGZvciBHRU43IEdQVXMuCj4gPj4KPiA+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KPiA+PiBDYzogVG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+
Cj4gPj4gQ2M6IFBldHJpIExhdHZhbGEgPHBldHJpLmxhdHZhbGFAaW50ZWwuY29tPgo+ID4+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4+IENj
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+
ID4+IFNpZ25lZC1vZmYtYnk6IEhhcmlzaCBDaGVnb25kaSA8aGFyaXNoLmNoZWdvbmRpQGludGVs
LmNvbT4KPiA+PiBSZWZlcmVuY2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3df
YnVnLmNnaT9pZD0xMDMxOTEKPiA+PiAtLS0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYyB8IDQgKystLQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gPj4gaW5kZXgg
MjMzMjExZmRlMGVhLi4zODA5ZTlmN2ZhZTIgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKPiA+PiBAQCAtMTc3NSwxMSArMTc3NSwxMSBAQCBzdGF0aWMgdm9pZCBkaXNwbGF5X3Bp
cGVfY3JjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+
PiAgCSAqIGJvbmtlcnMuIFNvIGxldCdzIGp1c3Qgd2FpdCBmb3IgdGhlIG5leHQgdmJsYW5rIGFu
ZCByZWFkCj4gPj4gIAkgKiBvdXQgdGhlIGJ1Z2d5IHJlc3VsdC4KPiA+PiAgCSAqCj4gPj4gLQkg
KiBPbiBHRU44KyBzb21ldGltZXMgdGhlIHNlY29uZCBDUkMgaXMgYm9ua2VycyBhcyB3ZWxsLCBz
bwo+ID4+ICsJICogT24gR0VONysgc29tZXRpbWVzIHRoZSBzZWNvbmQgQ1JDIGlzIGJvbmtlcnMg
YXMgd2VsbCwgc28KPiA+PiAgCSAqIGRvbid0IHRydXN0IHRoYXQgb25lIGVpdGhlci4KPiA+PiAg
CSAqLwo+ID4+ICAJaWYgKHBpcGVfY3JjLT5za2lwcGVkIDw9IDAgfHwKPiA+PiAtCSAgICAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSA4ICYmIHBpcGVfY3JjLT5za2lwcGVkID09IDEpKSB7Cj4gPj4g
KwkgICAgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNyAmJiBwaXBlX2NyYy0+c2tpcHBlZCA9PSAx
KSkgewo+ID4+ICAJCXBpcGVfY3JjLT5za2lwcGVkKys7Cj4gPj4gIAkJc3Bpbl91bmxvY2soJnBp
cGVfY3JjLT5sb2NrKTsKPiA+PiAgCQlyZXR1cm47Cj4gPgo+ID4gSSB3b3VsZCBiZSBpbnRlcmVz
dGVkIGluIHRoZSByZXN1bHRzLCBoYXN3ZWxsIGlzIGRpZmZlcmVudCBmcm9tCj4gPiBWTFYuIEhh
cyBpdCBldmVyIGJlZW4gb2JzZXJ2ZWQgb24gdGhhdCBwbGF0Zm9ybT8KPiAKPiBHb29kIHBvaW50
LiBJIGxvb2tlZCBhdCBbMV0gd2hpY2ggSSBwcmVzdW1lZCB3YXMgb24gVkxWLCBidXQgaXQgc2F5
cwo+IG5vdGhpbmcgYWJvdXQgSFNXLgoKVGhpcyB3aG9sZSB0aGluZyBpcyBqdXN0IGEgcGlsZSBv
ZiBkdWN0IHRhcGUgYW55d2F5LiBUaGUgcmVhc29uKHMpCmZvciB0aGVzZSBmdW5reSBjcmNzIGhh
cyBuZXZlciBiZWVuIHByb3Blcmx5IGFuYWx5c2VkLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRl
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
