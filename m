Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CB82C68AD
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 16:25:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830086EE35;
	Fri, 27 Nov 2020 15:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD2D96EE33
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 15:25:07 +0000 (UTC)
IronPort-SDR: G01bE/gmWubL32TuMc7X7fsq4fMSAoMJSfDHQNxXaJabuGMk1xbzN1BB3PGL2qikw4PHd7+8fy
 4+hJj4ptijDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="171623840"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="171623840"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 07:25:07 -0800
IronPort-SDR: mH6hfjdy+vJ7ff6SAbCqzEYs02MBozXPtwYITPalxD5KQmgaB3gm8VwIZsnHexBG/3JJ9WETO5
 OG/h5GDJLDRw==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="537670397"
Received: from acoxx-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.84.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 07:25:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201127145748.29491-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201127145748.29491-1-chris@chris-wilson.co.uk>
Date: Fri, 27 Nov 2020 17:25:01 +0200
Message-ID: <87a6v2lt4i.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: re-order if/else ladder
 for hpd_irq_setup"
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNyBOb3YgMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFdlIG5vdyB1c2UgaWxrX2hwZF9pcnFfc2V0dXAgZm9yIGFsbCBHTUNIIHBs
YXRmb3JtcyB0aGF0IGRvIG5vdCBoYXZlCj4gaG90cGx1Zy4gVGhlc2UgYXJlIGVhcmx5IGdlbjMg
YW5kIGdlbjIgZGV2aWNlcyB0aGF0IG5vdyBleHBsb2RlIG9uIGJvb3QKPiBhcyB0aGV5IHRyeSB0
byBhY2Nlc3Mgbm9uLWV4aXN0ZW50IHJlZ2lzdGVycy4KPgo+IEZpeGVzOiA3OTRkNjFhMTkwOTAg
KCJkcm0vaTkxNTogcmUtb3JkZXIgaWYvZWxzZSBsYWRkZXIgZm9yIGhwZF9pcnFfc2V0dXAiKQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiBDYzogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2M6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMgfCAyNyArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCj4gaW5kZXggZGM2ZmViYzYzZjFjLi5jODBlZWFjNTM5NTIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMKPiBAQCAtNDI0MiwxOCArNDI0MiwyMSBAQCB2b2lkIGludGVsX2ly
cV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCSAqLwo+ICAJZGV2
X3ByaXYtPmhvdHBsdWcuaHBkX3Nob3J0X3N0b3JtX2VuYWJsZWQgPSAhSEFTX0RQX01TVChkZXZf
cHJpdik7Cj4gIAo+IC0JaWYgKEhBU19QQ0hfREcxKGRldl9wcml2KSkKPiAtCQlkZXZfcHJpdi0+
ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gZGcxX2hwZF9pcnFfc2V0dXA7Cj4gLQllbHNlIGlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+IC0JCWRldl9wcml2LT5kaXNwbGF5LmhwZF9pcnFf
c2V0dXAgPSBnZW4xMV9ocGRfaXJxX3NldHVwOwo+IC0JZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZf
cHJpdikpCj4gLQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGJ4dF9ocGRfaXJx
X3NldHVwOwo+IC0JZWxzZSBpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9TUFQp
Cj4gLQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IHNwdF9ocGRfaXJxX3NldHVw
Owo+IC0JZWxzZSBpZiAoSEFTX0dNQ0goZGV2X3ByaXYpICYmIEk5MTVfSEFTX0hPVFBMVUcoZGV2
X3ByaXYpKQo+IC0JCWRldl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBpOTE1X2hwZF9p
cnFfc2V0dXA7Cj4gLQllbHNlCj4gLQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9
IGlsa19ocGRfaXJxX3NldHVwOwo+ICsJaWYgKEhBU19HTUNIKGRldl9wcml2KSkgewo+ICsJCWlm
IChJOTE1X0hBU19IT1RQTFVHKGRldl9wcml2KSkKPiArCQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBk
X2lycV9zZXR1cCA9IGk5MTVfaHBkX2lycV9zZXR1cDsKPiArCX0gZWxzZSB7Cj4gKwkJaWYgKEhB
U19QQ0hfREcxKGRldl9wcml2KSkKPiArCQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1
cCA9IGRnMV9ocGRfaXJxX3NldHVwOwo+ICsJCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTEpCj4gKwkJCWRldl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBnZW4xMV9ocGRf
aXJxX3NldHVwOwo+ICsJCWVsc2UgaWYgKElTX0dFTjlfTFAoZGV2X3ByaXYpKQo+ICsJCQlkZXZf
cHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gYnh0X2hwZF9pcnFfc2V0dXA7Cj4gKwkJZWxz
ZSBpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9TUFQpCj4gKwkJCWRldl9wcml2
LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBzcHRfaHBkX2lycV9zZXR1cDsKPiArCQllbHNlCj4g
KwkJCWRldl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBpbGtfaHBkX2lycV9zZXR1cDsK
PiArCX0KPiAgfQo+ICAKPiAgLyoqCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
