Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C13685F975
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 15:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 332E56E351;
	Thu,  4 Jul 2019 13:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE896E351
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 13:56:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 06:56:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="191375009"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jul 2019 06:56:50 -0700
Date: Thu, 4 Jul 2019 16:56:41 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190704135641.GD25657@ideak-desk.fi.intel.com>
References: <20190704000649.20661-1-lucas.demarchi@intel.com>
 <20190704000649.20661-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704000649.20661-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: fix include order in
 intel_tc.*
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMDU6MDY6NDdQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE1ha2UgaW50ZWxfdGMuaCB0aGUgZmlyc3QgaW5jbHVkZSBzbyB3ZSBndWFyYW50
ZWUgaXQncyBzZWxmLWNvbnRhaW5lZC4KPiBTb3J0IHRoZSByZXN0LiBTYW1lIHByaW5jaXBsZSBh
cHBsaWVzIGZvciBpbmNsdWRlcyBpbiB0aGUgaGVhZGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCA1ICsrKy0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCB8IDUgKysrLS0KPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuYwo+IGluZGV4IDFhOWRkMzJmYjBhNS4uZTZlNjE2M2MxMjMyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwo+IEBAIC0zLDEwICsz
LDExIEBACj4gICAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gICAqLwo+
ICAKPiArI2luY2x1ZGUgImludGVsX3RjLmgiCgpJIGdldCB5b3VyIHBvaW50IHRvIGtlZXAgdGhl
IHNlbGYtY29udGFpbmVkIGNoZWNrIHdvcmsgZXZlbiB3aXRob3V0IHRoZQpoZWFkZXIgdGVzdCBm
aWxlcywgYnV0IEknbSBub3Qgc3VyZSBpZiB3ZSBuZWVkIHRoYXQsIHNpbmNlIHRoZXJlIGlzIHRo
ZQpoZWFkZXIgdGVzdCBmaWxlIGFwcHJvYWNoIGluIHBsYWNlLiBJIGhhdmVuJ3Qgc2VlbiB0aGlz
IGRvbmUgYW55d2hlcmUKZWxzZSwgc28gd2Ugc2hvdWxkbid0IG1ha2UgYW4gZXhjZXB0aW9uIGhl
cmUgZWl0aGVyIGltby4KCitKYW5pIGZvciB0aGF0LgoKRml4aW5nIHRoZSByZXN0IG9mIG15IEFC
QyBzY3Jldy11cCBsb29rcyBvay4KCj4gKwo+ICsjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiAgI2lu
Y2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKPiAgI2luY2x1ZGUgImludGVsX2RwX21zdC5oIgo+IC0j
aW5jbHVkZSAiaTkxNV9kcnYuaCIKPiAtI2luY2x1ZGUgImludGVsX3RjLmgiCj4gIAo+ICBzdGF0
aWMgY29uc3QgY2hhciAqdGNfcG9ydF9tb2RlX25hbWUoZW51bSB0Y19wb3J0X21vZGUgbW9kZSkK
PiAgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Rj
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgKPiBpbmRleCAwZDg0
MTFkNGE5MWQuLjQ1YWUzMDUzN2I3OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmgKPiBAQCAtNiwxMCArNiwxMSBAQAo+ICAjaWZuZGVmIF9fSU5URUxfVENfSF9f
Cj4gICNkZWZpbmUgX19JTlRFTF9UQ19IX18KPiAgCj4gLSNpbmNsdWRlIDxsaW51eC90eXBlcy5o
Pgo+IC0jaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KPiAgI2luY2x1ZGUgImludGVsX2Rydi5oIgo+
ICAKPiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC90eXBlcy5o
Pgo+ICsKPiAgYm9vbCBpbnRlbF90Y19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCk7Cj4gIHUzMiBpbnRlbF90Y19wb3J0X2dldF9sYW5lX21hc2soc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+ICBpbnQgaW50ZWxfdGNfcG9ydF9m
aWFfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+
IC0tIAo+IDIuMjEuMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
