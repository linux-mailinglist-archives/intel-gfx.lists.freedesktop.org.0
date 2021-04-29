Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E3F36EF1B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 19:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42DC16F412;
	Thu, 29 Apr 2021 17:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD1E76F412
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 17:49:46 +0000 (UTC)
IronPort-SDR: uJapSmn7rH+wwZ/6QydNETRaO0EEEJ30H6MgVwOW88Kxbx2US/pJD3KmvyaqAaoWVHwK7M8Ygy
 U1/ztfSc8XtA==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="194962685"
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="194962685"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 10:49:46 -0700
IronPort-SDR: dGmjMvO3yvUuiPk04hsidRmz3DNqSSbAiA3w4af4djswsEyvokY4RDY9Ns4zu7TEuzmvCny1mx
 bVj74237/wWg==
X-IronPort-AV: E=Sophos;i="5.82,260,1613462400"; d="scan'208";a="424202219"
Received: from auchter-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.190])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 10:49:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YIrSxTrhAao9YPNc@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210429023535.1653-1-ville.syrjala@linux.intel.com>
 <87r1it33yq.fsf@intel.com> <YIrSxTrhAao9YPNc@intel.com>
Date: Thu, 29 Apr 2021 20:49:41 +0300
Message-ID: <87a6ph2d6y.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Include intel_de_{read,
 write}_fw() in i915_reg_rw traces
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyOSBBcHIgMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVGh1LCBBcHIgMjksIDIwMjEgYXQgMTE6MTE6MjVBTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIFRodSwgMjkgQXByIDIwMjEsIFZpbGxlIFN5
cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPj4gPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiA+Cj4+ID4g
V2UgbG9zdCB0aGUgaTkxNV9yZWdfcncgdHJhY2Vwb2ludCBmb3IgYSBsb3Qgb2YgZGlzcGxheSBy
ZWdpc3RlcnMKPj4gPiB3aGVuIHdlIHN3aXRjaGVkIGZyb20gdGhlIGhlYXZ5d2VpZ2h0IG5vcm1h
bCByZWdpc3RlciBhY2Nlc3NvcnMgdG8KPj4gPiB0aGUgbGlnaHR3ZWlnaHQgX2Z3KCkgdmFyaWFu
dHMuCj4+IAo+PiBTb3JyeSwgd2hpY2ggY2hhbmdlIHdhcyB0aGF0IGV4YWN0bHk/Cj4KPiBjb21t
aXQgZGQ1ODRmYzA3MTFhICgiZHJtL2k5MTU6IFVzZSBJOTE1X1JFQURfRlcgZm9yIHBsYW5lIHVw
ZGF0ZXMiKQo+IGFuZCBwcm9iYWJseSBhIGZldyBvdGhlcnMgbGlrZSBpdC4KPgo+PiAKPj4gPiBQ
dXQgdGhlIHRyYWNlcG9pbnRzIGJhY2sgc28gdGhhdAo+PiA+IHRoZSByZWdpc3RlciB0cmFjZXMg
bWlnaHQgYWN0dWFsbHkgYmUgdXNlZnVsLiBIb3BlZnVsbHkgdGhlc2Ugc2hvdWxkCj4+ID4gYmUg
Y2xvc2UgdG8gZnJlZSB3aGVuIHRoZSB0cmFjZXBvaW50IGlzIG5vdCBlbmFibGVkIGFuZCB0aHVz
IG5vdAo+PiA+IHNsb3cgZG93biBvdXIgdmJsYW5rIGNyaXRpY2FsIHNlY3Rpb25zIHNpZ25pZmlj
YW50bHkuCj4+ID4KPj4gPiBUaGUgYmlnZ2VzdCBodXJkbGUgaXMgdW50YW5nbGluZyB0aGUgaW5j
bHVkZSBvcmRlci4gRm9ydHVuYXRlbHkganVzdAo+PiA+IHB1bGxpbmcgaW50ZWxfZGUuaCBvdXQg
ZnJvbSBpbnRlbF9kaXNwbGF5X3R5cGVzLmggc2VlbXMgdG8gaGF2ZSBiZWVuCj4+ID4gc3VmZmlj
aWVudCB0byBtYWtlIGl0IGJ1aWxkLgo+PiAKPj4gVGhpcyBpcyBzb21ldGhpbmcgSSd2ZSBiZWVu
IG1lYW5pbmcgdG8gZml4IGluZGVwZW5kZW50bHkuIFRoYW5rcy4KPgo+IEhtbS4gTWF5YmUgSSBz
aG91bGQgc3BsaXQgdGhpcyBpbnRvIHR3byBjb21taXRzLi4uCj4KPj4gCj4+IFJldmlld2VkLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+Cj4gVGEuCgpSYiBob2xkcyB3
aGV0aGVyIHlvdSBkZWNpZGUgdG8gc3BsaXQgb3Igbm90LCB1cCB0byB5b3UuCgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
