Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B42DF42F1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 10:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E2C88F5A;
	Fri,  8 Nov 2019 09:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B42F88F5A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 09:16:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 01:16:52 -0800
X-IronPort-AV: E=Sophos;i="5.68,280,1569308400"; d="scan'208";a="196848444"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 01:16:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191108003602.33526-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
Date: Fri, 08 Nov 2019 11:16:47 +0200
Message-ID: <87mud6683k.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/opregion: fix leaking fw on
 error path
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNyBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IENvbnZlcnQgdGhlIGNvZGUgdG8gcmV0dXJuLWVhcmx5IHN0eWxlIGFu
ZCBmaXggbWlzc2luZyBjYWxscwo+IHRvIHJlbGVhc2VfZmlybXdhcmUoKSBpZiB2YnQgaXMgbm90
IHZhbGlkLgoKSSBkb24ndCB1bmRlcnN0YW5kIHdoZXJlIGFueXRoaW5nIHdvdWxkIGxlYWsgaW4g
dGhlIGN1cnJlbnQgY29kZS4gUGxlYXNlCmVsYWJvcmF0ZS4KCllvdSBjb3VsZCBtYWtlIGEgY2Fz
ZSBmb3IgYSBjaGFuZ2UgaW4gc3R5bGUgdG8gYXZvaWQgc28gbXVjaAppbmRlbnRhdGlvbiwgYnV0
IGRvbid0IGNsYWltIGl0IGZpeGVzIHN0dWZmIGlmIGl0IGRvZXNuJ3QuCgo+Cj4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYyB8IDI4ICsrKysr
KysrKysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDExIGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfb3ByZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3By
ZWdpb24uYwo+IGluZGV4IDk2OWFkZTYyMzY5MS4uOTczODUxMTE0N2IxIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYwo+IEBAIC04NzIsMjMg
Kzg3MiwyOSBAQCBzdGF0aWMgaW50IGludGVsX2xvYWRfdmJ0X2Zpcm13YXJlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiAtCWlm
IChpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidChmdy0+ZGF0YSwgZnctPnNpemUpKSB7Cj4gLQkJb3By
ZWdpb24tPnZidF9maXJtd2FyZSA9IGttZW1kdXAoZnctPmRhdGEsIGZ3LT5zaXplLCBHRlBfS0VS
TkVMKTsKPiAtCQlpZiAob3ByZWdpb24tPnZidF9maXJtd2FyZSkgewo+IC0JCQlEUk1fREVCVUdf
S01TKCJGb3VuZCB2YWxpZCBWQlQgZmlybXdhcmUgXCIlc1wiXG4iLCBuYW1lKTsKPiAtCQkJb3By
ZWdpb24tPnZidCA9IG9wcmVnaW9uLT52YnRfZmlybXdhcmU7Cj4gLQkJCW9wcmVnaW9uLT52YnRf
c2l6ZSA9IGZ3LT5zaXplOwo+IC0JCQlyZXQgPSAwOwo+IC0JCX0gZWxzZSB7Cj4gLQkJCXJldCA9
IC1FTk9NRU07Cj4gLQkJfQo+IC0JfSBlbHNlIHsKPiArCWlmICghaW50ZWxfYmlvc19pc192YWxp
ZF92YnQoZnctPmRhdGEsIGZ3LT5zaXplKSkgewo+ICAJCURSTV9ERUJVR19LTVMoIkludmFsaWQg
VkJUIGZpcm13YXJlIFwiJXNcIlxuIiwgbmFtZSk7Cj4gIAkJcmV0ID0gLUVJTlZBTDsKPiArCQln
b3RvIGVycl9yZWxlYXNlX2Z3Owo+ICsJfQo+ICsKPiArCW9wcmVnaW9uLT52YnRfZmlybXdhcmUg
PSBrbWVtZHVwKGZ3LT5kYXRhLCBmdy0+c2l6ZSwgR0ZQX0tFUk5FTCk7Cj4gKwlpZiAoIW9wcmVn
aW9uLT52YnRfZmlybXdhcmUpIHsKPiArCQlyZXQgPSAtRU5PTUVNOwo+ICsJCWdvdG8gZXJyX3Jl
bGVhc2VfZnc7Cj4gIAl9Cj4gIAo+ICsJb3ByZWdpb24tPnZidCA9IG9wcmVnaW9uLT52YnRfZmly
bXdhcmU7Cj4gKwlvcHJlZ2lvbi0+dmJ0X3NpemUgPSBmdy0+c2l6ZTsKPiArCj4gKwlEUk1fREVC
VUdfS01TKCJGb3VuZCB2YWxpZCBWQlQgZmlybXdhcmUgXCIlc1wiXG4iLCBuYW1lKTsKPiArCj4g
IAlyZWxlYXNlX2Zpcm13YXJlKGZ3KTsKPiAgCj4gKwlyZXR1cm4gMDsKCldpdGggcmV0ID0gMCBh
dCB0aGUgYmVnaW5uaW5nIHlvdSBjb3VsZCBqdXN0IHJlbW92ZSB0aGUgdGhlIGFib3ZlIHRocmVl
CmxpbmVzIGFuZCBsZXQgdGhpcyBydW4gdGhyb3VnaCB0aGUgYmVsb3cgY29kZS4KCj4gKwo+ICtl
cnJfcmVsZWFzZV9mdzoKPiArCXJlbGVhc2VfZmlybXdhcmUoZncpOwoKVXN1YWxseSB3ZSdkIGhh
dmUgYSBibGFuayBsaW5lIGJlZm9yZSB0aGUgcmV0LgoKQlIsCkphbmkuCgo+ICAJcmV0dXJuIHJl
dDsKPiAgfQoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50
ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
