Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C665C17A2AC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 11:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 103F46EBB0;
	Thu,  5 Mar 2020 10:01:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 382EB6E181;
 Thu,  5 Mar 2020 10:01:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 02:01:51 -0800
X-IronPort-AV: E=Sophos;i="5.70,517,1574150400"; d="scan'208";a="234367503"
Received: from bennur-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.13])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 02:01:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rajat Jain <rajatja@google.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>, Daniel
 Vetter <daniel@ffwll.ch>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Chris
 Wilson
 <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>, =?utf-8?Q?Jo?=
 =?utf-8?Q?s=C3=A9?= Roberto
 de Souza <jose.souza@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 gregkh@linuxfoundation.org, mathewk@google.com, Daniel Thompson
 <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Pavel
 Machek <pavel@denx.de>, seanpaul@google.com, Duncan Laurie
 <dlaurie@google.com>, jsbarnes@google.com, Thierry Reding
 <thierry.reding@gmail.com>, mpearson@lenovo.com, Nitin Joshi1
 <njoshi1@lenovo.com>, Sugumaran Lacshiminarayanan
 <slacshiminar@lenovo.com>, Tomoki Maruichi <maruichit@lenovo.com>,
 groeck@google.com
In-Reply-To: <20200305012338.219746-4-rajatja@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200305012338.219746-1-rajatja@google.com>
 <20200305012338.219746-4-rajatja@google.com>
Date: Thu, 05 Mar 2020 12:01:43 +0200
Message-ID: <87k13znmrc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915: Add support for integrated
 privacy screens
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: rajatxjain@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwNCBNYXIgMjAyMCwgUmFqYXQgSmFpbiA8cmFqYXRqYUBnb29nbGUuY29tPiB3cm90
ZToKPiBDZXJ0YWluIGxhcHRvcHMgbm93IGNvbWUgd2l0aCBwYW5lbHMgdGhhdCBoYXZlIGludGVn
cmF0ZWQgcHJpdmFjeQo+IHNjcmVlbnMgb24gdGhlbS4gVGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQg
Zm9yIHN1Y2ggcGFuZWxzIGJ5IGFkZGluZwo+IGEgcHJpdmFjeS1zY3JlZW4gcHJvcGVydHkgdG8g
dGhlIGludGVsX2Nvbm5lY3RvciBmb3IgdGhlIHBhbmVsLCB0aGF0Cj4gdGhlIHVzZXJzcGFjZSBj
YW4gdGhlbiB1c2UgdG8gY29udHJvbCBhbmQgY2hlY2sgdGhlIHN0YXR1cy4KPgo+IElkZW50aWZ5
aW5nIHRoZSBwcmVzZW5jZSBvZiBwcml2YWN5IHNjcmVlbiwgYW5kIGNvbnRyb2xsaW5nIGl0LCBp
cyBkb25lCj4gdmlhIEFDUEkgX0RTTSBtZXRob2RzLgo+Cj4gQ3VycmVudGx5LCB0aGlzIGlzIGRv
bmUgb25seSBmb3IgdGhlIEludGVsIGRpc3BsYXkgcG9ydHMuIEJ1dCBpbiBmdXR1cmUsCj4gdGhp
cyBjYW4gYmUgZG9uZSBmb3IgYW55IG90aGVyIHBvcnRzIGlmIHRoZSBoYXJkd2FyZSBiZWNvbWVz
IGF2YWlsYWJsZQo+IChlLmcuIGV4dGVybmFsIG1vbml0b3JzIHN1cHBvcnRpbmcgaW50ZWdyYXRl
ZCBwcml2YWN5IHNjcmVlbnM/KS4KCkkgdGhpbmsgeW91IHNob3VsZCBhZGQgdGhlIHByb3BlcnR5
IGF0IHRoZSBkcm0gY29yZSBsZXZlbCBpbgpkcm1fY29ubmVjdG9yLmMsIG5vdCBpbiBpOTE1LCB0
byBlbnN1cmUgd2UgaGF2ZSB0aGUgc2FtZSBwcm9wZXJ0eSBhY3Jvc3MKZHJpdmVycy4gRXZlbiBp
ZiwgZm9yIG5vdywgeW91IGxlYXZlIHRoZSBhY3BpIGltcGxlbWVudGF0aW9uIHBhcnQgaW4KaTkx
NS4KCk1vcmUgY29tbWVudHMgaW5saW5lLgoKPgo+IFNpZ25lZC1vZmYtYnk6IFJhamF0IEphaW4g
PHJhamF0amFAZ29vZ2xlLmNvbT4KPiAtLS0KPiB2NjogQWx3YXlzIGluaXRpYWxpemUgcHJvcCBp
biBpbnRlbF9hdHRhY2hfcHJpdmFjeV9zY3JlZW5fcHJvcGVydHkoKQo+IHY1OiBmaXggYSBjb3Nt
ZXRpYyBjaGVja3BhdGNoIHdhcm5pbmcKPiB2NDogRml4IGEgdHlwbyBpbiBpbnRlbF9wcml2YWN5
X3NjcmVlbi5oCj4gdjM6ICogQ2hhbmdlIGxpY2Vuc2UgdG8gR1BMLTIuMCBPUiBNSVQKPiAgICAg
KiBNb3ZlIHByaXZhY3kgc2NyZWVuIGVudW0gZnJvbSBVQVBJIHRvIGludGVsX2Rpc3BsYXlfdHlw
ZXMuaAo+ICAgICAqIFJlbmFtZSBwYXJhbWV0ZXIgbmFtZSBhbmQgc29tZSBvdGhlciBtaW5vciBj
aGFuZ2VzLgo+IHYyOiBGb3JtZWQgYnkgc3BsaXR0aW5nIHRoZSBvcmlnaW5hbCBwYXRjaCBpbnRv
IG11bHRpcGxlIHBhdGNoZXMuCj4gICAgIC0gQWxsIGNvZGUgaGFzIGJlZW4gbW92ZWQgaW50byBp
OTE1IG5vdy4KPiAgICAgLSBQcml2YWN5IHNjcmVlbiBpcyBhIGk5MTUgcHJvcGVydHkKPiAgICAg
LSBIYXZlIGEgbG9jYWwgc3RhdGUgdmFyaWFibGUgdG8gc3RvcmUgdGhlIHBydmFjeSBzY3JlZW4u
IERvbid0IHJlYWQKPiAgICAgICBpdCBmcm9tIGhhcmR3YXJlLgo+Cj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAzICstCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8IDEzICsrKy0KPiAgLi4uL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5jICAgIHwgMzUgKysrKysrKysrCj4gIC4uLi9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuaCAgICB8ICAxICsKPiAgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgMTggKysrKysKPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgIHwgIDYgKysKPiAgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uYyAgIHwgNzIgKysrKysrKysr
KysrKysrKysrKwo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5o
ICAgfCAyNyArKysrKysrCj4gIDggZmlsZXMgY2hhbmdlZCwgMTcxIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaAo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUKPiBpbmRleCA5OTFhOGM1MzdkMTIzLi44MjU5NTFiNGNkMDA2IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUKPiBAQCAtMjA4LDcgKzIwOCw4IEBAIGk5MTUteSArPSBcCj4gIAlk
aXNwbGF5L2ludGVsX3ZnYS5vCj4gIGk5MTUtJChDT05GSUdfQUNQSSkgKz0gXAo+ICAJZGlzcGxh
eS9pbnRlbF9hY3BpLm8gXAo+IC0JZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5vCj4gKwlkaXNwbGF5
L2ludGVsX29wcmVnaW9uLm8gXAo+ICsJZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5vCj4g
IGk5MTUtJChDT05GSUdfRFJNX0ZCREVWX0VNVUxBVElPTikgKz0gXAo+ICAJZGlzcGxheS9pbnRl
bF9mYmRldi5vCj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9t
aWMuYwo+IGluZGV4IGQwNDMwNTdkMmZhMDMuLjRlZDUzN2M4Nzc3NzcgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPiBAQCAtNDAsNiArNDAsNyBA
QAo+ICAjaW5jbHVkZSAiaW50ZWxfZ2xvYmFsX3N0YXRlLmgiCj4gICNpbmNsdWRlICJpbnRlbF9o
ZGNwLmgiCj4gICNpbmNsdWRlICJpbnRlbF9wc3IuaCIKPiArI2luY2x1ZGUgImludGVsX3ByaXZh
Y3lfc2NyZWVuLmgiCj4gICNpbmNsdWRlICJpbnRlbF9zcHJpdGUuaCIKPiAgCj4gIC8qKgo+IEBA
IC02MCwxMSArNjEsMTQgQEAgaW50IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX2F0b21pY19nZXRf
cHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiAgCXN0cnVjdCBpbnRlbF9k
aWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqaW50ZWxfY29ubl9zdGF0ZSA9Cj4gIAkJdG9faW50ZWxf
ZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUoc3RhdGUpOwo+ICsJc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4gIAo+
ICAJaWYgKHByb3BlcnR5ID09IGRldl9wcml2LT5mb3JjZV9hdWRpb19wcm9wZXJ0eSkKPiAgCQkq
dmFsID0gaW50ZWxfY29ubl9zdGF0ZS0+Zm9yY2VfYXVkaW87Cj4gIAllbHNlIGlmIChwcm9wZXJ0
eSA9PSBkZXZfcHJpdi0+YnJvYWRjYXN0X3JnYl9wcm9wZXJ0eSkKPiAgCQkqdmFsID0gaW50ZWxf
Y29ubl9zdGF0ZS0+YnJvYWRjYXN0X3JnYjsKPiArCWVsc2UgaWYgKHByb3BlcnR5ID09IGludGVs
X2Nvbm5lY3Rvci0+cHJpdmFjeV9zY3JlZW5fcHJvcGVydHkpCj4gKwkJKnZhbCA9IGludGVsX2Nv
bm5fc3RhdGUtPnByaXZhY3lfc2NyZWVuX3N0YXR1czsKPiAgCWVsc2Ugewo+ICAJCWRybV9kYmdf
YXRvbWljKCZkZXZfcHJpdi0+ZHJtLAo+ICAJCQkgICAgICAgIlVua25vd24gcHJvcGVydHkgW1BS
T1A6JWQ6JXNdXG4iLAo+IEBAIC05MywxNSArOTcsMTggQEAgaW50IGludGVsX2RpZ2l0YWxfY29u
bmVjdG9yX2F0b21pY19zZXRfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rv
ciwKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsK
PiAgCXN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqaW50ZWxfY29ubl9zdGF0
ZSA9Cj4gIAkJdG9faW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUoc3RhdGUpOwo+ICsJc3Ry
dWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9y
KGNvbm5lY3Rvcik7Cj4gIAo+ICAJaWYgKHByb3BlcnR5ID09IGRldl9wcml2LT5mb3JjZV9hdWRp
b19wcm9wZXJ0eSkgewo+ICAJCWludGVsX2Nvbm5fc3RhdGUtPmZvcmNlX2F1ZGlvID0gdmFsOwo+
ICAJCXJldHVybiAwOwo+IC0JfQo+IC0KPiAtCWlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+YnJv
YWRjYXN0X3JnYl9wcm9wZXJ0eSkgewo+ICsJfSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBkZXZfcHJp
di0+YnJvYWRjYXN0X3JnYl9wcm9wZXJ0eSkgewo+ICAJCWludGVsX2Nvbm5fc3RhdGUtPmJyb2Fk
Y2FzdF9yZ2IgPSB2YWw7Cj4gIAkJcmV0dXJuIDA7Cj4gKwl9IGVsc2UgaWYgKHByb3BlcnR5ID09
IGludGVsX2Nvbm5lY3Rvci0+cHJpdmFjeV9zY3JlZW5fcHJvcGVydHkpIHsKPiArCQlpbnRlbF9w
cml2YWN5X3NjcmVlbl9zZXRfdmFsKGludGVsX2Nvbm5lY3RvciwgdmFsKTsKCkkgdGhpbmsgdGhp
cyBwYXJ0IHNob3VsZCBvbmx5IGNoYW5nZSB0aGUgY29ubmVjdG9yIHN0YXRlLiBUaGUgZHJpdmVy
CndvdWxkIHRoZW4gZG8gdGhlIG1hZ2ljIGF0IGNvbW1pdCBzdGFnZSBhY2NvcmRpbmcgdG8gdGhl
IHByb3BlcnR5IHZhbHVlLgoKPiArCQlpbnRlbF9jb25uX3N0YXRlLT5wcml2YWN5X3NjcmVlbl9z
dGF0dXMgPSB2YWw7Cj4gKwkJcmV0dXJuIDA7Cj4gIAl9Cj4gIAo+ICAJZHJtX2RiZ19hdG9taWMo
JmRldl9wcml2LT5kcm0sICJVbmtub3duIHByb3BlcnR5IFtQUk9QOiVkOiVzXVxuIiwKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmMKPiBpbmRleCA5
MDNlNDk2NTlmNTYxLi41NWY4MDIxOWNiMjY5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5jCj4gQEAgLTI5NywzICsyOTcsMzggQEAgaW50
ZWxfYXR0YWNoX2NvbG9yc3BhY2VfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvcikKPiAgCWRybV9vYmplY3RfYXR0YWNoX3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsCj4g
IAkJCQkgICBjb25uZWN0b3ItPmNvbG9yc3BhY2VfcHJvcGVydHksIDApOwo+ICB9Cj4gKwo+ICtz
dGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBwcml2YWN5X3NjcmVlbl9lbnVt
W10gPSB7Cj4gKwl7IFBSSVZBQ1lfU0NSRUVOX0RJU0FCTEVELCAiRGlzYWJsZWQiIH0sCj4gKwl7
IFBSSVZBQ1lfU0NSRUVOX0VOQUJMRUQsICJFbmFibGVkIiB9LAo+ICt9Owo+ICsKPiArLyoqCj4g
KyAqIGludGVsX2F0dGFjaF9wcml2YWN5X3NjcmVlbl9wcm9wZXJ0eSAtCj4gKyAqICAgICBjcmVh
dGUgYW5kIGF0dGFjaCB0aGUgY29ubmVjdGVyJ3MgcHJpdmFjeS1zY3JlZW4gcHJvcGVydHkuICoK
PiArICogQGNvbm5lY3RvcjogY29ubmVjdG9yIGZvciB3aGljaCB0byBpbml0IHRoZSBwcml2YWN5
LXNjcmVlbiBwcm9wZXJ0eQo+ICsgKgo+ICsgKiBUaGlzIGZ1bmN0aW9uIGNyZWF0ZXMgYW5kIGF0
dGFjaGVzIHRoZSAicHJpdmFjeS1zY3JlZW4iIHByb3BlcnR5IHRvIHRoZQo+ICsgKiBjb25uZWN0
b3IuIEluaXRpYWwgc3RhdGUgb2YgcHJpdmFjeS1zY3JlZW4gaXMgc2V0IHRvIGRpc2FibGVkLgo+
ICsgKi8KPiArdm9pZAo+ICtpbnRlbF9hdHRhY2hfcHJpdmFjeV9zY3JlZW5fcHJvcGVydHkoc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiArewo+ICsJc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4g
KwlzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpwcm9wID0gaW50ZWxfY29ubmVjdG9yLT5wcml2YWN5X3Nj
cmVlbl9wcm9wZXJ0eTsKPiArCj4gKwlpZiAoIXByb3ApIHsKPiArCQlwcm9wID0gZHJtX3Byb3Bl
cnR5X2NyZWF0ZV9lbnVtKGNvbm5lY3Rvci0+ZGV2LAo+ICsJCQkJCQlEUk1fTU9ERV9QUk9QX0VO
VU0sCj4gKwkJCQkJCSJwcml2YWN5LXNjcmVlbiIsCj4gKwkJCQkJCXByaXZhY3lfc2NyZWVuX2Vu
dW0sCj4gKwkJCQkJICAgIEFSUkFZX1NJWkUocHJpdmFjeV9zY3JlZW5fZW51bSkpOwo+ICsJCWlm
ICghcHJvcCkKPiArCQkJcmV0dXJuOwo+ICsKPiArCQlpbnRlbF9jb25uZWN0b3ItPnByaXZhY3lf
c2NyZWVuX3Byb3BlcnR5ID0gcHJvcDsKPiArCX0KPiArCj4gKwlkcm1fb2JqZWN0X2F0dGFjaF9w
cm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLCBwcm9wLAo+ICsJCQkJICAgUFJJVkFDWV9TQ1JFRU5f
RElTQUJMRUQpOwo+ICt9CgpUaGlzIGxvb2tzIGFib3V0IHJpZ2h0LCBleGNlcHQgSU1PIHNob3Vs
ZCBiZSBwYXJ0IG9mIGRybV9jb25uZWN0b3IgYW5kCm1vdmVkIHRvIGRybV9jb25uZWN0b3IuYy4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVj
dG9yLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5oCj4g
aW5kZXggOTNhNzM3NWM4MTk2ZC4uNjEwMDVmMzdhMzM4NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuaAo+IEBAIC0zMSw1ICszMSw2IEBA
IHZvaWQgaW50ZWxfYXR0YWNoX2ZvcmNlX2F1ZGlvX3Byb3BlcnR5KHN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3IpOwo+ICB2b2lkIGludGVsX2F0dGFjaF9icm9hZGNhc3RfcmdiX3Byb3Bl
cnR5KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpOwo+ICB2b2lkIGludGVsX2F0dGFj
aF9hc3BlY3RfcmF0aW9fcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7
Cj4gIHZvaWQgaW50ZWxfYXR0YWNoX2NvbG9yc3BhY2VfcHJvcGVydHkoc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3Rvcik7Cj4gK3ZvaWQgaW50ZWxfYXR0YWNoX3ByaXZhY3lfc2NyZWVuX3By
b3BlcnR5KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpOwo+ICAKPiAgI2VuZGlmIC8q
IF9fSU5URUxfQ09OTkVDVE9SX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gaW5kZXggZDcwNjEyY2MxYmEyYS4uZGUy
MGVmZmIzZTA3MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oCj4gQEAgLTQ0Miw2ICs0NDIsMjMgQEAgc3RydWN0IGludGVs
X2Nvbm5lY3RvciB7Cj4gIAlzdHJ1Y3Qgd29ya19zdHJ1Y3QgbW9kZXNldF9yZXRyeV93b3JrOwo+
ICAKPiAgCXN0cnVjdCBpbnRlbF9oZGNwIGhkY3A7Cj4gKwo+ICsJLyogT3B0aW9uYWwgInByaXZh
Y3ktc2NyZWVuIiBwcm9wZXJ0eSBmb3IgdGhlIGNvbm5lY3RvciBwYW5lbCAqLwo+ICsJc3RydWN0
IGRybV9wcm9wZXJ0eSAqcHJpdmFjeV9zY3JlZW5fcHJvcGVydHk7Cj4gK307Cj4gKwo+ICsvKioK
PiArICogZW51bSBpbnRlbF9wcml2YWN5X3NjcmVlbl9zdGF0dXMgLSBwcml2YWN5X3NjcmVlbiBz
dGF0dXMKPiArICoKPiArICogVGhpcyBlbnVtIGlzIHVzZWQgdG8gdHJhY2sgYW5kIGNvbnRyb2wg
dGhlIHN0YXRlIG9mIHRoZSBpbnRlZ3JhdGVkIHByaXZhY3kKPiArICogc2NyZWVuIHByZXNlbnQg
b24gc29tZSBkaXNwbGF5IHBhbmVscywgdmlhIHRoZSAicHJpdmFjeS1zY3JlZW4iIHByb3BlcnR5
Lgo+ICsgKgo+ICsgKiBAUFJJVkFDWV9TQ1JFRU5fRElTQUJMRUQ6IFRoZSBwcml2YWN5LXNjcmVl
biBvbiB0aGUgcGFuZWwgaXMgZGlzYWJsZWQKPiArICogQFBSSVZBQ1lfU0NSRUVOX0VOQUJMRUQ6
ICBUaGUgcHJpdmFjeS1zY3JlZW4gb24gdGhlIHBhbmVsIGlzIGVuYWJsZWQKPiArICoqLwo+ICtl
bnVtIGludGVsX3ByaXZhY3lfc2NyZWVuX3N0YXR1cyB7Cj4gKwlQUklWQUNZX1NDUkVFTl9ESVNB
QkxFRCA9IDAsCj4gKwlQUklWQUNZX1NDUkVFTl9FTkFCTEVEID0gMSwKPiAgfTsKPiAgCj4gIHN0
cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSB7Cj4gQEAgLTQ0OSw2ICs0NjYsNyBA
QCBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUgewo+ICAKPiAgCWVudW0gaGRt
aV9mb3JjZV9hdWRpbyBmb3JjZV9hdWRpbzsKPiAgCWludCBicm9hZGNhc3RfcmdiOwo+ICsJZW51
bSBpbnRlbF9wcml2YWN5X3NjcmVlbl9zdGF0dXMgcHJpdmFjeV9zY3JlZW5fc3RhdHVzOwo+ICB9
Owo+ICAKPiAgI2RlZmluZSB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSh4KSBjb250
YWluZXJfb2YoeCwgc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlLCBiYXNlKQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCAxNzE4MjExMTNk
MzYyLi5mZjc2Yzc5OTM2NGQwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwo+IEBAIC02Miw2ICs2Miw3IEBACj4gICNpbmNsdWRlICJpbnRlbF9sc3Bjb24uaCIK
PiAgI2luY2x1ZGUgImludGVsX2x2ZHMuaCIKPiAgI2luY2x1ZGUgImludGVsX3BhbmVsLmgiCj4g
KyNpbmNsdWRlICJpbnRlbF9wcml2YWN5X3NjcmVlbi5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfcHNy
LmgiCj4gICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfdGMu
aCIKPiBAQCAtNjg0MSw2ICs2ODQyLDcgQEAgaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3QKPiAgewo+
ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3It
PmRldik7Cj4gIAllbnVtIHBvcnQgcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKS0+YmFz
ZS5wb3J0Owo+ICsJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0gdG9f
aW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4gIAo+ICAJaWYgKCFJU19HNFgoZGV2X3ByaXYp
ICYmIHBvcnQgIT0gUE9SVF9BKQo+ICAJCWludGVsX2F0dGFjaF9mb3JjZV9hdWRpb19wcm9wZXJ0
eShjb25uZWN0b3IpOwo+IEBAIC02ODcxLDYgKzY4NzMsMTAgQEAgaW50ZWxfZHBfYWRkX3Byb3Bl
cnRpZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3QKPiAgCj4gIAkJLyogTG9va3VwIHRoZSBBQ1BJIG5vZGUgY29ycmVzcG9uZGluZyB0byB0
aGUgY29ubmVjdG9yICovCj4gIAkJaW50ZWxfYWNwaV9kZXZpY2VfaWRfdXBkYXRlKGRldl9wcml2
KTsKPiArCj4gKwkJLyogQ2hlY2sgZm9yIGludGVncmF0ZWQgUHJpdmFjeSBzY3JlZW4gc3VwcG9y
dCAqLwo+ICsJCWlmIChpbnRlbF9wcml2YWN5X3NjcmVlbl9wcmVzZW50KGludGVsX2Nvbm5lY3Rv
cikpCj4gKwkJCWludGVsX2F0dGFjaF9wcml2YWN5X3NjcmVlbl9wcm9wZXJ0eShjb25uZWN0b3Ip
OwoKQXMgc2FpZCBpbiByZXBseSB0byBwYXRjaCAyLCB3ZSBuZWVkIHRvIGZpZ3VyZSB0aGlzIHBh
cnQgb3V0LgoKPiAgCX0KPiAgfQo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwMDAwLi5jOGE1YjY0Zjk0ZmI3Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uYwo+IEBA
IC0wLDAgKzEsNzIgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgT1Ig
TUlUCj4gKy8qCj4gKyAqIEludGVsIEFDUEkgcHJpdmFjeSBzY3JlZW4gY29kZQo+ICsgKgo+ICsg
KiBDb3B5cmlnaHQgwqkgMjAxOSBHb29nbGUgSW5jLgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlIDxs
aW51eC9hY3BpLmg+Cj4gKwo+ICsjaW5jbHVkZSAiaW50ZWxfcHJpdmFjeV9zY3JlZW4uaCIKPiAr
Cj4gKyNkZWZpbmUgQ09OTkVDVE9SX0RTTV9SRVZJRCAxCj4gKwo+ICsjZGVmaW5lIENPTk5FQ1RP
Ul9EU01fRk5fUFJJVkFDWV9FTkFCTEUJCTIKPiArI2RlZmluZSBDT05ORUNUT1JfRFNNX0ZOX1BS
SVZBQ1lfRElTQUJMRQkJMwo+ICsKPiArc3RhdGljIGNvbnN0IGd1aWRfdCBkcm1fY29ubl9kc21f
Z3VpZCA9Cj4gKwlHVUlEX0lOSVQoMHhDNzAzMzExMywgMHg4NzIwLCAweDRDRUIsCj4gKwkJICAw
eDkwLCAweDkwLCAweDlELCAweDUyLCAweEIzLCAweEU1LCAweDJELCAweDczKTsKPiArCj4gKy8q
IE1ha2VzIF9EU00gY2FsbCB0byBzZXQgcHJpdmFjeSBzY3JlZW4gc3RhdHVzICovCj4gK3N0YXRp
YyB2b2lkIGFjcGlfcHJpdmFjeV9zY3JlZW5fY2FsbF9kc20oYWNwaV9oYW5kbGUgY29ubl9oYW5k
bGUsIHU2NCBmdW5jKQo+ICt7Cj4gKwl1bmlvbiBhY3BpX29iamVjdCAqb2JqOwo+ICsKPiArCW9i
aiA9IGFjcGlfZXZhbHVhdGVfZHNtKGNvbm5faGFuZGxlLCAmZHJtX2Nvbm5fZHNtX2d1aWQsCj4g
KwkJCQlDT05ORUNUT1JfRFNNX1JFVklELCBmdW5jLCBOVUxMKTsKPiArCWlmICghb2JqKSB7Cj4g
KwkJRFJNX0RFQlVHX0RSSVZFUigiZmFpbGVkIHRvIGV2YWx1YXRlIF9EU00gZm9yIGZuICVsbHhc
biIsIGZ1bmMpOwo+ICsJCXJldHVybjsKPiArCX0KPiArCj4gKwlBQ1BJX0ZSRUUob2JqKTsKPiAr
fQo+ICsKPiArdm9pZCBpbnRlbF9wcml2YWN5X3NjcmVlbl9zZXRfdmFsKHN0cnVjdCBpbnRlbF9j
b25uZWN0b3IgKmNvbm5lY3RvciwKPiArCQkJCSAgZW51bSBpbnRlbF9wcml2YWN5X3NjcmVlbl9z
dGF0dXMgdmFsKQo+ICt7Cj4gKwlhY3BpX2hhbmRsZSBhY3BpX2hhbmRsZSA9IGNvbm5lY3Rvci0+
YWNwaV9oYW5kbGU7Cj4gKwo+ICsJaWYgKCFhY3BpX2hhbmRsZSkKPiArCQlyZXR1cm47Cj4gKwo+
ICsJaWYgKHZhbCA9PSBQUklWQUNZX1NDUkVFTl9ESVNBQkxFRCkKPiArCQlhY3BpX3ByaXZhY3lf
c2NyZWVuX2NhbGxfZHNtKGFjcGlfaGFuZGxlLAo+ICsJCQkJCSAgICAgQ09OTkVDVE9SX0RTTV9G
Tl9QUklWQUNZX0RJU0FCTEUpOwo+ICsJZWxzZSBpZiAodmFsID09IFBSSVZBQ1lfU0NSRUVOX0VO
QUJMRUQpCj4gKwkJYWNwaV9wcml2YWN5X3NjcmVlbl9jYWxsX2RzbShhY3BpX2hhbmRsZSwKPiAr
CQkJCQkgICAgIENPTk5FQ1RPUl9EU01fRk5fUFJJVkFDWV9FTkFCTEUpOwo+ICsJZWxzZQo+ICsJ
CURSTV9XQVJOKCIlczogQ2Fubm90IHNldCBwcml2YWN5IHNjcmVlbiB0byBpbnZhbGlkIHZhbCAl
dVxuIiwKPiArCQkJIGRldl9uYW1lKGNvbm5lY3Rvci0+YmFzZS5kZXYtPmRldiksIHZhbCk7Cj4g
K30KPiArCj4gK2Jvb2wgaW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2VudChzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICpjb25uZWN0b3IpCj4gK3sKPiArCWFjcGlfaGFuZGxlIGhhbmRsZSA9IGNvbm5l
Y3Rvci0+YWNwaV9oYW5kbGU7Cj4gKwo+ICsJaWYgKCFoYW5kbGUpCj4gKwkJcmV0dXJuIGZhbHNl
Owo+ICsKPiArCWlmICghYWNwaV9jaGVja19kc20oaGFuZGxlLCAmZHJtX2Nvbm5fZHNtX2d1aWQs
Cj4gKwkJCSAgICBDT05ORUNUT1JfRFNNX1JFVklELAo+ICsJCQkgICAgMSA8PCBDT05ORUNUT1Jf
RFNNX0ZOX1BSSVZBQ1lfRU5BQkxFIHwKPiArCQkJICAgIDEgPDwgQ09OTkVDVE9SX0RTTV9GTl9Q
UklWQUNZX0RJU0FCTEUpKSB7Cj4gKwkJRFJNX1dBUk4oIiVzOiBPZGQsIGNvbm5lY3RvciBBQ1BJ
IG5vZGUgYnV0IG5vIHByaXZhY3kgc2Nybj9cbiIsCj4gKwkJCSBkZXZfbmFtZShjb25uZWN0b3It
PmJhc2UuZGV2LT5kZXYpKTsKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwl9Cj4gKwlEUk1fREVWX0lO
Rk8oY29ubmVjdG9yLT5iYXNlLmRldi0+ZGV2LCAic3VwcG9ydHMgcHJpdmFjeSBzY3JlZW5cbiIp
Owo+ICsJcmV0dXJuIHRydWU7Cj4gK30KCkkgZG9uJ3QgaGF2ZSBtdWNoIHRvIHNheSBhYm91dCB0
aGUgQUNQSSBwYXJ0cywgZXhjZXB0IHBsZWFzZSB1c2UgdGhlIG5ldwpkcm1fZGJnX2ttcyBhbmQg
ZHJtX2luZm8gaGVscGVycyBmb3IgbG9nZ2luZy4KCkJSLApKYW5pLgoKCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaAo+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uNzQwMTNhNzg4NWM3MAo+IC0t
LSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3By
aXZhY3lfc2NyZWVuLmgKPiBAQCAtMCwwICsxLDI3IEBACj4gKy8qIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wIE9SIE1JVCAqLwo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgwqkgMjAxOSBH
b29nbGUgSW5jLgo+ICsgKi8KPiArCj4gKyNpZm5kZWYgX19EUk1fUFJJVkFDWV9TQ1JFRU5fSF9f
Cj4gKyNkZWZpbmUgX19EUk1fUFJJVkFDWV9TQ1JFRU5fSF9fCj4gKwo+ICsjaW5jbHVkZSAiaW50
ZWxfZGlzcGxheV90eXBlcy5oIgo+ICsKPiArI2lmZGVmIENPTkZJR19BQ1BJCj4gK2Jvb2wgaW50
ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2VudChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpOwo+ICt2b2lkIGludGVsX3ByaXZhY3lfc2NyZWVuX3NldF92YWwoc3RydWN0IGludGVsX2Nv
bm5lY3RvciAqY29ubmVjdG9yLAo+ICsJCQkJICBlbnVtIGludGVsX3ByaXZhY3lfc2NyZWVuX3N0
YXR1cyB2YWwpOwo+ICsjZWxzZQo+ICtzdGF0aWMgYm9vbCBpbnRlbF9wcml2YWN5X3NjcmVlbl9w
cmVzZW50KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiArewo+ICsJcmV0dXJu
IGZhbHNlOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZAo+ICtpbnRlbF9wcml2YWN5X3NjcmVlbl9z
ZXRfdmFsKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiArCQkJICAgICBlbnVt
IGludGVsX3ByaXZhY3lfc2NyZWVuX3N0YXR1cyB2YWwpCj4gK3sgfQo+ICsjZW5kaWYgLyogQ09O
RklHX0FDUEkgKi8KPiArCj4gKyNlbmRpZiAvKiBfX0RSTV9QUklWQUNZX1NDUkVFTl9IX18gKi8K
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
