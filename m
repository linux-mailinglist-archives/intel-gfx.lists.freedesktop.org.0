Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A262C1759B8
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 12:49:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136896E25C;
	Mon,  2 Mar 2020 11:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69AD36E24D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 11:49:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 03:49:34 -0800
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="233131939"
Received: from unknown (HELO localhost) ([10.252.41.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 03:49:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200227164202.GV13686@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200227145359.17543-1-jani.nikula@intel.com>
 <20200227164202.GV13686@intel.com>
Date: Mon, 02 Mar 2020 13:50:04 +0200
Message-ID: <87y2sjou1f.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dram: hide the dram structs better
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNyBGZWIgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBGZWIgMjcsIDIwMjAgYXQgMDQ6NTM6NTlQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IEZpbmlzaCB0aGUgam9iIHN0YXJ0ZWQgaW4gZDI4
YWUzYjI4MTg3ICgiZHJtL2k5MTU6IHNwbGl0IG91dAo+PiBpbnRlbF9kcmFtLltjaF0gZnJvbSBp
OTE1X2Rydi5jIikgYnkgbW92aW5nIHN0cnVjdCBkcmFtX2RpbW1faW5mbyBhbmQKPj4gZHJhbV9j
aGFubmVsX2luZm8gaW5zaWRlIGludGVsX2RyYW0uYywgdGhlIG9ubHkgdXNlciBvZiB0aGUgc3Ry
dWN0cy4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4KPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KClRoYW5rcywgcHVzaGVkIHRvIGRpbnEuCgpCUiwKSmFuaS4KCj4KPj4g
LS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgfCAxMCAtLS0tLS0tLS0t
Cj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMgfCAxMCArKysrKysrKysrCj4+
ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+PiAK
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4+IGluZGV4IGVhMTNmYzBiNDA5Yi4uYzVhMDZmODY0
MTIzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4gQEAgLTEyNzQsMTYgKzEyNzQs
NiBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7Cj4+ICAJICovCj4+ICB9Owo+PiAgCj4+IC1z
dHJ1Y3QgZHJhbV9kaW1tX2luZm8gewo+PiAtCXU4IHNpemUsIHdpZHRoLCByYW5rczsKPj4gLX07
Cj4+IC0KPj4gLXN0cnVjdCBkcmFtX2NoYW5uZWxfaW5mbyB7Cj4+IC0Jc3RydWN0IGRyYW1fZGlt
bV9pbmZvIGRpbW1fbCwgZGltbV9zOwo+PiAtCXU4IHJhbmtzOwo+PiAtCWJvb2wgaXNfMTZnYl9k
aW1tOwo+PiAtfTsKPj4gLQo+PiAgc3RhdGljIGlubGluZSBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqdG9faTkxNShjb25zdCBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQo+PiAgewo+PiAgCXJldHVy
biBjb250YWluZXJfb2YoZGV2LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSwgZHJtKTsKPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RyYW0uYwo+PiBpbmRleCA5YmI5ZGQ3MjRkM2YuLjZiOTIyZWZiMWQ3
YyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jCj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYwo+PiBAQCAtNiw2ICs2LDE2IEBA
Cj4+ICAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPj4gICNpbmNsdWRlICJpbnRlbF9kcmFtLmgiCj4+
ICAKPj4gK3N0cnVjdCBkcmFtX2RpbW1faW5mbyB7Cj4+ICsJdTggc2l6ZSwgd2lkdGgsIHJhbmtz
Owo+PiArfTsKPj4gKwo+PiArc3RydWN0IGRyYW1fY2hhbm5lbF9pbmZvIHsKPj4gKwlzdHJ1Y3Qg
ZHJhbV9kaW1tX2luZm8gZGltbV9sLCBkaW1tX3M7Cj4+ICsJdTggcmFua3M7Cj4+ICsJYm9vbCBp
c18xNmdiX2RpbW07Cj4+ICt9Owo+PiArCj4+ICAjZGVmaW5lIERSQU1fVFlQRV9TVFIodHlwZSkg
W0lOVEVMX0RSQU1fICMjIHR5cGVdID0gI3R5cGUKPj4gIAo+PiAgc3RhdGljIGNvbnN0IGNoYXIg
KmludGVsX2RyYW1fdHlwZV9zdHIoZW51bSBpbnRlbF9kcmFtX3R5cGUgdHlwZSkKPj4gLS0gCj4+
IDIuMjAuMQo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
