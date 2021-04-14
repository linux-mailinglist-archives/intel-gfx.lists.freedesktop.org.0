Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E8035F0CD
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C11066E8FF;
	Wed, 14 Apr 2021 09:26:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 635DB6E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 09:26:00 +0000 (UTC)
IronPort-SDR: pu/+yJMEpoR1/XuuPkIcNubVQTxjngp4QceSiJ1zWVY+KnTUkwlIdGfK8d1V/BOQ4euNemkvTh
 Dx1sMfr6WPmw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="215094813"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="215094813"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:25:58 -0700
IronPort-SDR: ifscGgUQIcqpAmfoK2lX1UiBJtP8T+oOxpchaeQkVo2TtyAvqD5WLHEYzqxZOeoWhAMywCBec9
 r5zwxs7LzRmw==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="418255582"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:25:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210412054607.18133-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
 <20210412054607.18133-5-ville.syrjala@linux.intel.com>
Date: Wed, 14 Apr 2021 12:25:52 +0300
Message-ID: <87fsztfc9r.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Don't use {skl,
 cnl}_hpd_pin() for bxt/glk
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

T24gTW9uLCAxMiBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBKdXN0IGxldCBieHQvZ2xrIGZhbGwgYmFjayB0byBpbnRlbF9o
cGRfcGluX2RlZmF1bHQoKSBpbnN0ZWFkCj4gb2YgdXNpbmcgc2tsX2hwZF9waW4oKSBvciBjbmxf
aHBkX3BpbigpLiBEb2Vzbid0IHJlYWxseSBtYXR0ZXIKPiBzaW5jZSBib3RoIGZ1bmN0aW9ucyB3
aWxsIGVuZCB1cCByZXR1cm5pbmcgdGhlIGNvcnJlY3QgaHBkIHBpbgo+IGFueXdheSwgYnV0IEkg
ZmluZCBpdCBhIGJpdCBsZXNzIGNvbmZ1c2luZyB3aGVuIGJ4dC9nbGsgYXJlCj4gZnVsbHkgc2Vw
YXJhdGVkIGZyb20gdGhlIGxvZ2ljIGZvciB0aGUgb3RoZXIgcGxhdGZvcm1zLgo+Cj4gU2lnbmVk
LW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
ClRoZSB3aG9sZSBocGQgcGluIGNvZGUgY291bGQgdXNlIGEgcmVsb2NhdGlvbiBmcm9tIGludGVs
X2RkaS5jIGFuZCBzb21lCm92ZXJoYXVsLgoKQnV0IGZpcnN0IHRoaW5ncyBmaXJzdCwKClJldmll
d2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKCj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA0ICsrLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IGluZGV4IGRlZWYyNGRhMDBiNS4uZTIwOGRl
ZDlhNjg4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4g
QEAgLTQ2MTIsOSArNDYxMiw5IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKPiAgCQllbmNvZGVyLT5ocGRfcGlu
ID0gZWhsX2hwZF9waW4oZGV2X3ByaXYsIHBvcnQpOwo+ICAJZWxzZSBpZiAoSVNfRElTUExBWV9W
RVIoZGV2X3ByaXYsIDExKSkKPiAgCQllbmNvZGVyLT5ocGRfcGluID0gaWNsX2hwZF9waW4oZGV2
X3ByaXYsIHBvcnQpOwo+IC0JZWxzZSBpZiAoSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDEwKSkK
PiArCWVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKQo+ICAJCWVuY29kZXItPmhwZF9w
aW4gPSBjbmxfaHBkX3BpbihkZXZfcHJpdiwgcG9ydCk7Cj4gLQllbHNlIGlmIChJU19ESVNQTEFZ
X1ZFUihkZXZfcHJpdiwgOSkpCj4gKwllbHNlIGlmIChJU19ESVNQTEFZX1ZFUihkZXZfcHJpdiwg
OSkgJiYgIUlTX0JST1hUT04oZGV2X3ByaXYpKQo+ICAJCWVuY29kZXItPmhwZF9waW4gPSBza2xf
aHBkX3BpbihkZXZfcHJpdiwgcG9ydCk7Cj4gIAllbHNlCj4gIAkJZW5jb2Rlci0+aHBkX3BpbiA9
IGludGVsX2hwZF9waW5fZGVmYXVsdChkZXZfcHJpdiwgcG9ydCk7CgotLSAKSmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
