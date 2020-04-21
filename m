Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B98171B1ED7
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 08:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E06AB6E22D;
	Tue, 21 Apr 2020 06:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA2ED6E22D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 06:34:21 +0000 (UTC)
IronPort-SDR: jNQEb4czDuNMZw4iu+1pqBnhKdlR6XuZXnrF8KvnewBZNW7rm4K1oSjzKD7CwgejybLKvmSJ46
 vPUqU3UnpLuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 23:34:21 -0700
IronPort-SDR: cCyFwPlv/MjCxXjMayD5Qf33rR9Z13/uCWryHpcRRxR+WlOquF30UDs7BkJttg7BVbDWvYJkQM
 usUBas7yXVrQ==
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="429418524"
Received: from parkernx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.46.80])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 23:34:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200420170856.GX6112@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200420140438.14672-1-jani.nikula@intel.com>
 <20200420170856.GX6112@intel.com>
Date: Tue, 21 Apr 2020 09:34:17 +0300
Message-ID: <87blnl1h5i.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdmi: remove unused
 intel_hdmi_hdcp2_protocol()
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

T24gTW9uLCAyMCBBcHIgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gTW9uLCBBcHIgMjAsIDIwMjAgYXQgMDU6MDQ6MzdQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFVudXNlZCwgaGlkaW5nIGZyb20gdGhlIGNvbXBp
bGVyIHdhcm5pbmdzIGJlaGluZCB0aGUgaW5saW5lIGtleXdvcmQuCj4+IAo+PiBTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+Cj4gUmV2aWV3ZWQtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpUaGFua3Ms
IHB1c2hlZCBib3RoLgoKQlIsCkphbmkuCgoKPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgNiAtLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA2
IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZG1pLmMKPj4gaW5kZXggOWMwNThmN2FhMTg1Li41NDQxMmY3OWYwYzUgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4+IEBAIC0xNzUwLDEyICsxNzUw
LDYgQEAgaW50IGludGVsX2hkbWlfaGRjcDJfY2FwYWJsZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICppbnRlbF9kaWdfcG9ydCwKPj4gIAlyZXR1cm4gcmV0Owo+PiAgfQo+PiAgCj4+IC1zdGF0
aWMgaW5saW5lCj4+IC1lbnVtIGhkY3Bfd2lyZWRfcHJvdG9jb2wgaW50ZWxfaGRtaV9oZGNwMl9w
cm90b2NvbCh2b2lkKQo+PiAtewo+PiAtCXJldHVybiBIRENQX1BST1RPQ09MX0hETUk7Cj4+IC19
Cj4+IC0KPj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfaGRjcF9zaGltIGludGVsX2hkbWlf
aGRjcF9zaGltID0gewo+PiAgCS53cml0ZV9hbl9ha3N2ID0gaW50ZWxfaGRtaV9oZGNwX3dyaXRl
X2FuX2Frc3YsCj4+ICAJLnJlYWRfYmtzdiA9IGludGVsX2hkbWlfaGRjcF9yZWFkX2Jrc3YsCj4+
IC0tIAo+PiAyLjIwLjEKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
