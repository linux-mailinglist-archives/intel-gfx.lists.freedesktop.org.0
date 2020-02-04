Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB471519DB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 12:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB526E7EF;
	Tue,  4 Feb 2020 11:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA086E7EF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 11:30:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 02:50:30 -0800
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="219711208"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 02:50:28 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200204000242.30542-1-vivek.kasireddy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200204000242.30542-1-vivek.kasireddy@intel.com>
Date: Tue, 04 Feb 2020 12:50:25 +0200
Message-ID: <87blqe39u6.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Check VBT before updating the
 transcoder for pipe
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwMyBGZWIgMjAyMCwgVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50
ZWwuY29tPiB3cm90ZToKPiBTaW5jZSB0aGUgcGlwZS0+dHJhbnNjb2RlciBtYXBwaW5nIGlzIG5v
dCBleHBlY3RlZCB0byBjaGFuZ2UgdW5sZXNzCj4gdGhlcmUgaXMgZWl0aGVyIGVEUCBvciBEU0kg
Y29ubmVjdG9ycyBwcmVzZW50LCBjaGVjayB0aGUgVkJUIHRvIGNvbmZpcm0KPiB0aGVpciBwcmVz
ZW5jZSBpbiBhZGRpdGlvbiB0byBjaGVja2luZyBUUkFOU19ERElfRlVOQ19DVEwodHJhbnNjb2Rl
cikuCj4gVGhpcyBhZGRpdGlvbmFsIGNoZWNrIGlzIG5lZWRlZCBvbiBwbGF0Zm9ybXMgbGlrZSBF
bGtoYXJ0IExha2UgYmVjYXVzZQo+IHdlIGNhbm5vdCBqdXN0IHJlbHkgb24gR09QL0Zpcm13YXJl
IHByb2dyYW1tZWQgdmFsdWVzIGluCj4gVFJBTlNfRERJX0ZVTkNfQ1RMKHRyYW5zY29kZXIpIGJl
Zm9yZSB1cGRhdGluZyB0aGUgdHJhbnNjb2RlciBtYXBwaW5nLgo+Cj4gVGhpcyBwYXRjaCBpcyBv
bmx5IHJlbGV2YW50IHRvIEVITCAtLSBhbmQgYSBuby1vcCBvbiBvdGhlcnMgLS0KPiBiZWNhdXNl
IHNvbWUgb2YgdGhlIFBIWXMgYXJlIHNoYXJlZCBiZXR3ZWVuIHRoZSBkaWZmZXJlbnQgRERJcyBh
bmQKPiB3ZSByZWx5IG9uIHRoZSBWQlQgdG8gcHJlc2VudCB0aGUgbW9zdCBhY2N1cmF0ZSBpbmZv
cm1hdGlvbiB0byB0aGUKPiBkcml2ZXIuCj4KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVk
ZHlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDE1ICsrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBjMGU1MDAyY2U2NGMuLjRiMzhmMjkzYmQ4OCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4g
QEAgLTEwODA1LDYgKzEwODA1LDE4IEBAIHN0YXRpYyB2b2lkIGhzd19nZXRfZGRpX3BsbChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LAo+ICAJcGlwZV9j
b25maWctPnNoYXJlZF9kcGxsID0gaW50ZWxfZ2V0X3NoYXJlZF9kcGxsX2J5X2lkKGRldl9wcml2
LCBpZCk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBib29sIGVobF92YnRfZWRwX2RzaV9wcmVzZW50KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArCQkJCSAgICBlbnVtIHRyYW5zY29k
ZXIgdHJhbnNjb2RlcikKPiArewo+ICsJYm9vbCBlZHBfcHJlc2VudCA9IGludGVsX2Jpb3NfaXNf
cG9ydF9wcmVzZW50KGRldl9wcml2LCBQT1JUX0EpOwo+ICsJYm9vbCBkc2lfcHJlc2VudCA9IGlu
dGVsX2Jpb3NfaXNfZHNpX3ByZXNlbnQoZGV2X3ByaXYsIE5VTEwpOwo+ICsKPiArCWlmIChJU19F
TEtIQVJUTEFLRShkZXZfcHJpdikpCj4gKwkJcmV0dXJuIHRyYW5zY29kZXIgPT0gVFJBTlNDT0RF
Ul9FRFAgPyBlZHBfcHJlc2VudCA6IGRzaV9wcmVzZW50Owo+ICsKPiArCXJldHVybiB0cnVlOwo+
ICt9CgpPbmUgb2YgdGhvc2UgdGhpbmdzLi4uIHRoaXMganVtcHMgb3V0IGFuZCBpbW1lZGlhdGVs
eSBmZWVscyBhbGwgd3JvbmcsCmp1c3QgbGlrZSBlaGxfdmJ0X2RkaV9kX3ByZXNlbnQoKSBmZWVs
cyBhbGwgd3JvbmcgaW4KaW50ZWxfY29tYm9fcGh5LmMuIEJ1dCBJIGRvbid0IGtub3cgd2hhdCB3
b3VsZCBiZSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8Kd2l0aG91dCBzcGVuZGluZyB0aW1lIHRoYXQg
SSBkb24ndCBoYXZlIG9uIHRoaXMuCgpCUiwKSmFuaS4KCgoKPiArCj4gIHN0YXRpYyBib29sIGhz
d19nZXRfdHJhbnNjb2Rlcl9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAgCQkJCSAg
ICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAo+ICAJCQkJICAgICB1NjQg
KnBvd2VyX2RvbWFpbl9tYXNrLAo+IEBAIC0xMDg0NCw3ICsxMDg1Niw4IEBAIHN0YXRpYyBib29s
IGhzd19nZXRfdHJhbnNjb2Rlcl9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAgCj4g
IAkJdG1wID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwKPiAgCQkJCSAgICBUUkFOU19ERElfRlVO
Q19DVEwocGFuZWxfdHJhbnNjb2RlcikpOwo+IC0JCWlmICghKHRtcCAmIFRSQU5TX0RESV9GVU5D
X0VOQUJMRSkpCj4gKwkJaWYgKCEodG1wICYgVFJBTlNfRERJX0ZVTkNfRU5BQkxFKSB8fAo+ICsJ
CSAgICAhZWhsX3ZidF9lZHBfZHNpX3ByZXNlbnQoZGV2X3ByaXYsIHBhbmVsX3RyYW5zY29kZXIp
KQo+ICAJCQljb250aW51ZTsKPiAgCj4gIAkJLyoKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3Bl
biBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
