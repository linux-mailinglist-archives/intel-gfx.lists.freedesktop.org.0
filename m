Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F36E7755
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 18:09:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9446E6E994;
	Mon, 28 Oct 2019 17:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 948EF6E994;
 Mon, 28 Oct 2019 17:09:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 10:09:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="193322918"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 28 Oct 2019 10:09:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 19:09:37 +0200
Date: Mon, 28 Oct 2019 19:09:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191028170937.GS1208@intel.com>
References: <cover.1572258935.git.jani.nikula@intel.com>
 <63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH RESEND 8/8] drm/print: introduce new struct
 drm_device based logging macros
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
Cc: intel-gfx@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMTI6Mzg6MjJQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gQWRkIG5ldyBzdHJ1Y3QgZHJtX2RldmljZSBiYXNlZCBsb2dnaW5nIG1hY3JvcyBtb2Rl
bGVkIGFmdGVyIHRoZSBjb3JlCj4ga2VybmVsIGRldmljZSBiYXNlZCBsb2dnaW5nIG1hY3Jvcy4g
VGhlc2Ugd291bGQgYmUgcHJlZmVycmVkIG92ZXIgdGhlCj4gZHJtIHByaW50ayBhbmQgc3RydWN0
IGRldmljZSBiYXNlZCBtYWNyb3MgaW4gZHJtIGNvZGUsIHdoZXJlIHBvc3NpYmxlLgo+IAo+IFdl
IGhhdmUgZXhpc3RpbmcgZHJtIHNwZWNpZmljIHN0cnVjdCBkZXZpY2UgYmFzZWQgbG9nZ2luZyBm
dW5jdGlvbnMsIGJ1dAo+IHRoZXkgYXJlIHRvbyB2ZXJib3NlIHRvIHVzZSBmb3IgdHdvIG1haW4g
cmVhc29uczoKPiAKPiAgKiBUaGUgbmFtZXMgYXJlIHVubmVjZXNzYXJpbHkgbG9uZywgZm9yIGV4
YW1wbGUgRFJNX0RFVl9ERUJVR19LTVMoKS4KPiAKPiAgKiBUaGUgdXNlIG9mIHN0cnVjdCBkZXZp
Y2Ugb3ZlciBzdHJ1Y3QgZHJtX2RldmljZSBpcyB0b28gZ2VuZXJpYyBmb3IKPiAgICBtb3N0IHVz
ZXJzLCBsZWFkaW5nIHRvIGFuIGV4dHJhIGRlcmVmZXJlbmNlLgo+IAo+IEZvciBleGFtcGxlOgo+
IAo+IAlEUk1fREVWX0RFQlVHX0tNUyhkcm0tPmRldiwgIkhlbGxvLCB3b3JsZFxuIik7Cj4gCj4g
dnMuCj4gCj4gCWRybV9kYmdfa21zKGRybSwgIkhlbGxvLCB3b3JsZFxuIik7Cj4gCj4gSXQncyBh
IG1hdHRlciBvZiB0YXN0ZSwgYnV0IHRoZSBTSE9VVElORyBVUFBFUkNBU0UgaGFzIGJlZW4gYXJn
dWVkIHRvIGJlCj4gbGVzcyByZWFkYWJsZSB0aGFuIGxvd2VyY2FzZS4KPiAKPiBTb21lIG5hbWVz
IGFyZSBjaGFuZ2VkIGZyb20gb2xkIERSTSBuYW1lcyB0byBiZSBiYXNlZCBvbiB0aGUgY29yZSBr
ZXJuZWwKPiBsb2dnaW5nIGZ1bmN0aW9ucy4gRm9yIGV4YW1wbGUsIE5PVEUgLT4gbm90aWNlLCBF
UlJPUiAtPiBlcnIsIERFQlVHIC0+Cj4gZGJnLgo+IAo+IER1ZSB0byB0aGUgY29uZmxhdGlvbiBv
ZiBEUk1fREVCVUcgYW5kIERSTV9ERUJVR19EUklWRVIgbWFjcm8gdXNlCj4gKERSTV9ERUJVRyBp
cyB1c2VkIHdpZGVseSBpbiBkcml2ZXJzIHRob3VnaCBpdCdzIHN1cHBvc2VkIHRvIGJlIGEgY29y
ZQo+IGRlYnVnZ2luZyBjYXRlZ29yeSksIHRoZXkgYXJlIG5hbWVkIGFzIGRybV9kYmdfY29yZSBh
bmQgZHJtX2RiZywKPiByZXNwZWN0aXZlbHkuCj4gCj4gVGhlIGRybV9lcnIgYW5kIF9vbmNlL19y
YXRlbGltaXRlZCB2YXJpYW50cyBubyBsb25nZXIgaW5jbHVkZSB0aGUKPiBmdW5jdGlvbiBuYW1l
IGluIG9yZGVyIHRvIGJlIGFibGUgdG8gdXNlIHRoZSBjb3JlIGRldmljZSBiYXNlZCBsb2dnaW5n
Cj4gbWFjcm9zLiBBcmd1YWJseSB0aGlzIGlzIG5vdCBhIHNpZ25pZmljYW50IGNoYW5nZTsgZXJy
b3IgbWVzc2FnZXMgc2hvdWxkCj4gbm90IGJlIHNvIGNvbW1vbiB0byBiZSBvbmx5IGRpc3Rpbmd1
aXNoYWJsZSBieSB0aGUgZnVuY3Rpb24gbmFtZS4KPiAKPiBSYXRlbGltaXRlZCBkZWJ1ZyBsb2dn
aW5nIG1hY3JvcyBhcmUgdG8gYmUgYWRkZWQgbGF0ZXIuCj4gCj4gQ2M6IFNhbSBSYXZuYm9yZyA8
c2FtQHJhdm5ib3JnLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgo+IAo+IC0tLQo+IAo+IFdpdGggc29tZXRoaW5nIGxpa2UgdGhpcywgSSB0
aGluayBpOTE1IGNvdWxkIHN0YXJ0IG1pZ3JhdGluZyB0bwo+IGRybV9kZXZpY2UgYmFzZWQgbG9n
Z2luZy4gSSBoYXZlIGEgaGFyZCB0aW1lIGNvbnZpbmNpbmcgbXlzZWxmIG9yIGFueW9uZQo+IGFi
b3V0IG1pZ3JhdGluZyB0byB0aGUgRFJNX0RFVl8qIHZhcmlhbnRzLgoKTG9va3MgcmVhc29uYWJs
ZSBlbm91Z2ggdG8gbWUuIEZvciB0aGUgc2VyaWVzCkFja2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKT25lIHRoaW5nIHRoYXQgc3RpbGwgYnVn
cyBtZSBhYm91dCBkcm1fZGJnKCkgaXMgdGhhdCB0aGUgY2F0ZWdvcnkKY2hlY2sgaXMgaW5zaWRl
IGl0LiBTbyB3ZSBwYXkgdGhlIGZ1bmN0aW9uIGNhbGwgb3ZlcmhlYWQgZm9yIGV2ZXJ5CmRlYnVn
IHN0YXRlbWVudCBldmVuIHdoZW4gZGVidWdnaW5nIGlzIGRpc2FibGVkLiBTbyBJJ2QgYWxzbyBs
aWtlCnRvIHNlZSBhIHBhdGNoIG1vdmluZyB0aGUgY2F0ZWdvcnkgY2hlY2sgYmFjayBpbnRvIHRo
ZSAKbWFjcm9zL3N0YXRpYyBpbmxpbmUgKElJUkMgaXQgd2FzIHRoZXJlIG9yaWdpbmFsbHkpLgoK
PiAtLS0KPiAgaW5jbHVkZS9kcm0vZHJtX3ByaW50LmggfCA2NSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNjUgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fcHJpbnQuaCBiL2luY2x1ZGUvZHJt
L2RybV9wcmludC5oCj4gaW5kZXggMDg1YTk2ODUyNzBjLi5lNDA0MGRlYTBkOGMgMTAwNjQ0Cj4g
LS0tIGEvaW5jbHVkZS9kcm0vZHJtX3ByaW50LmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fcHJp
bnQuaAo+IEBAIC0zMjIsNiArMzIyLDggQEAgc3RhdGljIGlubGluZSBib29sIGRybV9kZWJ1Z19l
bmFibGVkKGVudW0gZHJtX2RlYnVnX2NhdGVnb3J5IGNhdGVnb3J5KQo+ICAKPiAgLyoKPiAgICog
c3RydWN0IGRldmljZSBiYXNlZCBsb2dnaW5nCj4gKyAqCj4gKyAqIFByZWZlciBkcm1fZGV2aWNl
IGJhc2VkIGxvZ2dpbmcgb3ZlciBkZXZpY2Ugb3IgcHJpbmsgYmFzZWQgbG9nZ2luZy4KPiAgICov
Cj4gIAo+ICBfX3ByaW50ZigzLCA0KQo+IEBAIC00MTcsOCArNDE5LDcxIEBAIHZvaWQgZHJtX2Rl
dl9kYmcoY29uc3Qgc3RydWN0IGRldmljZSAqZGV2LCBlbnVtIGRybV9kZWJ1Z19jYXRlZ29yeSBj
YXRlZ29yeSwKPiAgCV9EUk1fREVWX0RFRklORV9ERUJVR19SQVRFTElNSVRFRChkZXYsIERSTV9V
VF9QUklNRSwJCVwKPiAgCQkJCQkgIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiAgCj4gKy8qCj4gKyAq
IHN0cnVjdCBkcm1fZGV2aWNlIGJhc2VkIGxvZ2dpbmcKPiArICoKPiArICogUHJlZmVyIGRybV9k
ZXZpY2UgYmFzZWQgbG9nZ2luZyBvdmVyIGRldmljZSBvciBwcmluayBiYXNlZCBsb2dnaW5nLgo+
ICsgKi8KPiArCj4gKy8qIEhlbHBlciBmb3Igc3RydWN0IGRybV9kZXZpY2UgYmFzZWQgbG9nZ2lu
Zy4gKi8KPiArI2RlZmluZSBfX2RybV9wcmludGsoZHJtLCBsZXZlbCwgdHlwZSwgZm10LCAuLi4p
CQkJXAo+ICsJZGV2XyMjbGV2ZWwjI3R5cGUoZHJtLT5kZXYsICJbZHJtXSAiIGZtdCwgIyNfX1ZB
X0FSR1NfXykKPiArCj4gKwo+ICsjZGVmaW5lIGRybV9pbmZvKGRybSwgZm10LCAuLi4pCQkJCQlc
Cj4gKwlfX2RybV9wcmludGsoZHJtLCBpbmZvLCwgZm10LCAjI19fVkFfQVJHU19fKQo+ICsKPiAr
I2RlZmluZSBkcm1fbm90aWNlKGRybSwgZm10LCAuLi4pCQkJCVwKPiArCV9fZHJtX3ByaW50ayhk
cm0sIG5vdGljZSwsIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiArCj4gKyNkZWZpbmUgZHJtX3dhcm4o
ZHJtLCBmbXQsIC4uLikJCQkJCVwKPiArCV9fZHJtX3ByaW50ayhkcm0sIHdhcm4sLCBmbXQsICMj
X19WQV9BUkdTX18pCj4gKwo+ICsjZGVmaW5lIGRybV9lcnIoZHJtLCBmbXQsIC4uLikJCQkJCVwK
PiArCV9fZHJtX3ByaW50ayhkcm0sIGVyciwsICIqRVJST1IqICIgZm10LCAjI19fVkFfQVJHU19f
KQo+ICsKPiArCj4gKyNkZWZpbmUgZHJtX2luZm9fb25jZShkcm0sIGZtdCwgLi4uKQkJCQlcCj4g
KwlfX2RybV9wcmludGsoZHJtLCBpbmZvLCBfb25jZSwgZm10LCAjI19fVkFfQVJHU19fKQo+ICsK
PiArI2RlZmluZSBkcm1fbm90aWNlX29uY2UoZHJtLCBmbXQsIC4uLikJCQkJXAo+ICsJX19kcm1f
cHJpbnRrKGRybSwgbm90aWNlLCBfb25jZSwgZm10LCAjI19fVkFfQVJHU19fKQo+ICsKPiArI2Rl
ZmluZSBkcm1fd2Fybl9vbmNlKGRybSwgZm10LCAuLi4pCQkJCVwKPiArCV9fZHJtX3ByaW50ayhk
cm0sIHdhcm4sIF9vbmNlLCBmbXQsICMjX19WQV9BUkdTX18pCj4gKwo+ICsjZGVmaW5lIGRybV9l
cnJfb25jZShkcm0sIGZtdCwgLi4uKQkJCQlcCj4gKwlfX2RybV9wcmludGsoZHJtLCBlcnIsIF9v
bmNlLCAiKkVSUk9SKiAiIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiArCj4gKwo+ICsjZGVmaW5lIGRy
bV9lcnJfcmF0ZWxpbWl0ZWQoZHJtLCBmbXQsIC4uLikJCQkJXAo+ICsJX19kcm1fcHJpbnRrKGRy
bSwgZXJyLCBfcmF0ZWxpbWl0ZWQsICIqRVJST1IqICIgZm10LCAjI19fVkFfQVJHU19fKQo+ICsK
PiArCj4gKyNkZWZpbmUgZHJtX2RiZ19jb3JlKGRybSwgZm10LCAuLi4pCQkJCQlcCj4gKwlkcm1f
ZGV2X2RiZyhkcm0tPmRldiwgRFJNX1VUX0NPUkUsIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiArI2Rl
ZmluZSBkcm1fZGJnKGRybSwgZm10LCAuLi4pCQkJCQkJXAo+ICsJZHJtX2Rldl9kYmcoZHJtLT5k
ZXYsIERSTV9VVF9EUklWRVIsIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiArI2RlZmluZSBkcm1fZGJn
X2ttcyhkcm0sIGZtdCwgLi4uKQkJCQkJXAo+ICsJZHJtX2Rldl9kYmcoZHJtLT5kZXYsIERSTV9V
VF9LTVMsIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiArI2RlZmluZSBkcm1fZGJnX3ByaW1lKGRybSwg
Zm10LCAuLi4pCQkJCQlcCj4gKwlkcm1fZGV2X2RiZyhkcm0tPmRldiwgRFJNX1VUX1BSSU1FLCBm
bXQsICMjX19WQV9BUkdTX18pCj4gKyNkZWZpbmUgZHJtX2RiZ19hdG9taWMoZHJtLCBmbXQsIC4u
LikJCQkJCVwKPiArCWRybV9kZXZfZGJnKGRybS0+ZGV2LCBEUk1fVVRfQVRPTUlDLCBmbXQsICMj
X19WQV9BUkdTX18pCj4gKyNkZWZpbmUgZHJtX2RiZ192YmwoZHJtLCBmbXQsIC4uLikJCQkJCVwK
PiArCWRybV9kZXZfZGJnKGRybS0+ZGV2LCBEUk1fVVRfVkJMLCBmbXQsICMjX19WQV9BUkdTX18p
Cj4gKyNkZWZpbmUgZHJtX2RiZ19zdGF0ZShkcm0sIGZtdCwgLi4uKQkJCQkJXAo+ICsJZHJtX2Rl
dl9kYmcoZHJtLT5kZXYsIERSTV9VVF9TVEFURSwgZm10LCAjI19fVkFfQVJHU19fKQo+ICsjZGVm
aW5lIGRybV9kYmdfbGVhc2UoZHJtLCBmbXQsIC4uLikJCQkJCVwKPiArCWRybV9kZXZfZGJnKGRy
bS0+ZGV2LCBEUk1fVVRfTEVBU0UsIGZtdCwgIyNfX1ZBX0FSR1NfXykKPiArI2RlZmluZSBkcm1f
ZGJnX2RwKGRybSwgZm10LCAuLi4pCQkJCQlcCj4gKwlkcm1fZGV2X2RiZyhkcm0tPmRldiwgRFJN
X1VUX0RQLCBmbXQsICMjX19WQV9BUkdTX18pCj4gKwo+ICsKPiAgLyoKPiAgICogcHJpbnRrIGJh
c2VkIGxvZ2dpbmcKPiArICoKPiArICogUHJlZmVyIGRybV9kZXZpY2UgYmFzZWQgbG9nZ2luZyBv
dmVyIGRldmljZSBvciBwcmluayBiYXNlZCBsb2dnaW5nLgo+ICAgKi8KPiAgCj4gIF9fcHJpbnRm
KDIsIDMpCj4gLS0gCj4gMi4yMC4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
