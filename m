Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBBB16203
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E8B89E35;
	Tue,  7 May 2019 10:34:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3DC489E35
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:34:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:34:10 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 07 May 2019 03:34:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 May 2019 13:34:06 +0300
Date: Tue, 7 May 2019 13:34:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190507103406.GI24299@intel.com>
References: <20190429230811.9983-1-aditya.swarup@intel.com>
 <87h8a6n4t3.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h8a6n4t3.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v9] drm/i915/icl: Set GCP_COLOR_INDICATION
 only for 10/12 bit deep color
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

T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMDk6NDI6NDhBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gTW9uLCAyOSBBcHIgMjAxOSwgQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBp
bnRlbC5jb20+IHdyb3RlOgo+ID4gRnJvbTogQ2xpbnRvbiBUYXlsb3IgPENsaW50b24uQS5UYXls
b3JAaW50ZWwuY29tPgo+ID4KPiA+IHYyOiBGaXggY29tbWl0IG1zZyB0byByZWZsZWN0IHdoeSBp
c3N1ZSBvY2N1cnMoSmFuaSkKPiA+IFNldCBHQ1BfQ09MT1JfSU5ESUNBVElPTiBvbmx5IHdoZW4g
d2Ugc2V0IDEwLzEyIGJpdCBkZWVwIGNvbG9yLgo+ID4KPiA+IENoYW5naW5nIHNldHRpbmdzIGZy
b20gMTAvMTIgYml0IGRlZXAgY29sb3IgdG8gOCBiaXQoJiB2aWNlIHZlcnNhKQo+ID4gZG9lc24n
dCB3b3JrIGNvcnJlY3RseSB1c2luZyB4cmFuZHIgbWF4IGJwYyBwcm9wZXJ0eS4gV2hlbiB3ZQo+
ID4gY29ubmVjdCBhIG1vbml0b3Igd2hpY2ggc3VwcG9ydHMgZGVlcCBjb2xvciwgdGhlIGhpZ2hl
c3QgZGVlcCBjb2xvcgo+ID4gc2V0dGluZyBpcyBzZWxlY3RlZDsgd2hpY2ggc2V0cyBHQ1BfQ09M
T1JfSU5ESUNBVElPTi4gV2hlbiB3ZSBjaGFuZ2UKPiA+IHRoZSBzZXR0aW5nIHRvIDggYml0IGNv
bG9yLCB3ZSBzdGlsbCBzZXQgR0NQX0NPTE9SX0lORElDQVRJT04gd2hpY2gKPiA+IGRvZXNuJ3Qg
YWxsb3cgdGhlIHN3aXRjaCBiYWNrIHRvIDggYml0IGNvbG9yLgo+ID4KPiA+IHYzLDQ6IEFkZCBj
b21tZW50cyAmIGRyb3AgY2hhbmdlcyBpbiBpbnRlbF9oZG1pX2NvbXB1dGVfY29uZmlnKFZpbGxl
KQo+ID4gU2luY2UgSFNXKywgR0NQX0NPTE9SX0lORElDQVRJT04gaXMgbm90IHJlcXVpcmVkIGZv
ciA4YnBjLgo+ID4KPiA+IERyb3AgdGhlIGNoYW5nZXMgaW4gaW50ZWxfaGRtaV9jb21wdXRlX2Nv
bmZpZyBhcyBkZXNpcmVkX2JwcAo+ID4gaXMgbmVlZGVkIHRvIGNoYW5nZSB2YWx1ZXMgZm9yIHBp
cGVfYnBwIGJhc2VkIG9uIGJ3X2NvbnN0cmFpbmVkIGZsYWcuCj4gPgo+ID4gdjU6IEZpeCBtaXNz
aW5nIGxvZ2ljYWwgJiYgaW4gY29uZGl0aW9uIGZvciBzZXR0aW5nIEdDUF9DT0xPUl9JTkRJQ0FU
SU9OLgo+ID4KPiA+IHY2OiBGaXggY29tbWVudCBmb3JtYXR0aW5nIChWaWxsZSkKPiA+Cj4gPiB2
NzogQWRkIHJldmlld2VkIGJ5IFZpbGxlCj4gPgo+ID4gdjg6IFNldCBHQ1BfQ09MT1JfSU5ESUNB
VElPTiBiYXNlZCBvbiBzcGVjOgo+ID4gRm9yIEdlbiA3LjUgb3IgbGF0ZXIgcGxhdGZvcm1zLCBp
bmRpY2F0ZSBjb2xvciBkZXB0aCBvbmx5IGZvciBkZWVwCj4gPiBjb2xvciBtb2Rlcy4gQnNwZWM6
IDgxMzUsNzc1MSw1MDUyNAo+ID4KPiA+IFByZSBEREkgcGxhdGZvcm1zLCBpbmRpY2F0ZSBjb2xv
ciBkZXB0aCBpZiBkZWVwIGNvbG9yIGlzIHN1cHBvcnRlZAo+ID4gYnkgc2luay4gQnNwZWM6IDc4
NTQKPiA+Cj4gPiBFeGNlcHRpb246IENIRVJSWVZJRVcgYmVoYXZlcyBsaWtlIFByZSBEREkgcGxh
dGZvcm1zLgo+ID4gQnNwZWM6IDE1OTc1Cj4gPgo+ID4gQ2hlY2sgcGlwZV9icHAgaXMgbGVzcyB0
aGFuIGJwcCAqIDMgaW4gaGRtaV9kZWVwX2NvbG9yX3Bvc3NpYmxlLAo+ID4gdG8gbm90IHNldCAx
MiBiaXQgZGVlcCBjb2xvciBmb3IgZXZlcnkgbW9kZXNldC4gVGhpcyBmaXhlcyB0aGUgaXNzdWUK
PiA+IHdoZXJlIDEyIGJpdCBjb2xvciB3YXMgc2VsZWN0ZWQgZXZlbiB3aGVuIHVzZXIgc2VsZWN0
ZWQgMTAgYml0LihWaWxsZSkKPiA+Cj4gPiB2OTogTWFpbnRhaW4gYSBjb25zaXN0ZW50IGJlaGF2
aW9yIGZvciBhbGwgcGxhdGZvcm1zIGFuZCBzdXBwb3J0Cj4gPiBHQ1BfQ09MT1JfSU5ESUNBVElP
TiBvbmx5IHdoZW4gd2UgYXJlIGluIGRlZXAgY29sb3IgbW9kZS4gUmVtb3ZlCj4gPiBoZG1pX3Np
bmtfaXNfZGVlcF9jb2xvcigpIC0gbm8gbG9uZ2VyIG5lZWRlZCBhcyBjaGVja2luZyBwaXBlX2Jw
cCA+IDI0Cj4gPiB0YWtlcyBjYXJlIG9mIHRoZSBkZWVwIGNvbG9yIG1vZGUgc2NlbmFyaW8uCj4g
Pgo+ID4gU2VwYXJhdGUgcGF0Y2ggZm9yIGZpeGluZyBzd2l0Y2ggZnJvbSAxMiBiaXQgdG8gMTAg
Yml0IGRlZXAgY29sb3IKPiA+IG1vZGUuCj4gPgo+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBBZGl0eWEg
U3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IENsaW50
b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6
IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgo+ID4gQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiA+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2ku
ZC5uYXZhcmVAaW50ZWwuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gVmlsbGUsIGRvZXMgdGhpcyBhcHBseSB0
byB0aGlzIHZlcnNpb24gb2YgdGhlIHBhdGNoPwoKQXllLiBsZ3RtCgo+IAo+IEJSLAo+IEphbmku
Cj4gCj4gCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMgfCAx
NyArKy0tLS0tLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDE1IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKPiA+IGlu
ZGV4IGUxMDA1ZDdiNzVmZC4uOTkxZWIzNjJlZjRmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9oZG1pLmMKPiA+IEBAIC04NTYsMTkgKzg1Niw2IEBAIHN0YXRpYyB2b2lkIGc0eF9zZXRf
aW5mb2ZyYW1lcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiA+ICAJCQkgICAgICAm
Y3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5oZG1pKTsKPiA+ICB9Cj4gPiAgCj4gPiAtc3RhdGljIGJv
b2wgaGRtaV9zaW5rX2lzX2RlZXBfY29sb3IoY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3Rh
dGUgKmNvbm5fc3RhdGUpCj4gPiAtewo+ID4gLQlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yID0gY29ubl9zdGF0ZS0+Y29ubmVjdG9yOwo+ID4gLQo+ID4gLQkvKgo+ID4gLQkgKiBIRE1J
IGNsb25pbmcgaXMgb25seSBzdXBwb3J0ZWQgb24gZzR4IHdoaWNoIGRvZXNuJ3QKPiA+IC0JICog
c3VwcG9ydCBkZWVwIGNvbG9yIG9yIEdDUCBpbmZvZnJhbWVzIGFueXdheSBzbyBubwo+ID4gLQkg
KiBuZWVkIHRvIHdvcnJ5IGFib3V0IG11bHRpcGxlIEhETUkgc2lua3MgaGVyZS4KPiA+IC0JICov
Cj4gPiAtCj4gPiAtCXJldHVybiBjb25uZWN0b3ItPmRpc3BsYXlfaW5mby5icGMgPiA4Owo+ID4g
LX0KPiA+IC0KPiA+ICAvKgo+ID4gICAqIERldGVybWluZSBpZiBkZWZhdWx0X3BoYXNlPTEgY2Fu
IGJlIGluZGljYXRlZCBpbiB0aGUgR0NQIGluZm9mcmFtZS4KPiA+ICAgKgo+ID4gQEAgLTk3Myw4
ICs5NjAsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9oZG1pX2NvbXB1dGVfZ2NwX2luZm9mcmFtZShz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiA+ICAJY3J0Y19zdGF0ZS0+aW5mb2ZyYW1l
cy5lbmFibGUgfD0KPiA+ICAJCWludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShIRE1JX1BBQ0tF
VF9UWVBFX0dFTkVSQUxfQ09OVFJPTCk7Cj4gPiAgCj4gPiAtCS8qIEluZGljYXRlIGNvbG9yIGRl
cHRoIHdoZW5ldmVyIHRoZSBzaW5rIHN1cHBvcnRzIGRlZXAgY29sb3IgKi8KPiA+IC0JaWYgKGhk
bWlfc2lua19pc19kZWVwX2NvbG9yKGNvbm5fc3RhdGUpKQo+ID4gKwkvKiBJbmRpY2F0ZSBjb2xv
ciBpbmRpY2F0aW9uIGZvciBkZWVwIGNvbG9yIG1vZGUgKi8KPiA+ICsJaWYgKGNydGNfc3RhdGUt
PnBpcGVfYnBwID4gMjQpCj4gPiAgCQljcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmdjcCB8PSBHQ1Bf
Q09MT1JfSU5ESUNBVElPTjsKPiA+ICAKPiA+ICAJLyogRW5hYmxlIGRlZmF1bHRfcGhhc2Ugd2hl
bmV2ZXIgdGhlIGRpc3BsYXkgbW9kZSBpcyBzdWl0YWJseSBhbGlnbmVkICovCj4gCj4gLS0gCj4g
SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
