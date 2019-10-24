Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A13E3278
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 14:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08616E398;
	Thu, 24 Oct 2019 12:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D396E398
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 12:35:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 05:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="398399690"
Received: from vslinko-mobl.ccr.corp.intel.com (HELO [10.252.56.7])
 ([10.252.56.7])
 by fmsmga005.fm.intel.com with ESMTP; 24 Oct 2019 05:35:37 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191017132105.15528-5-maarten.lankhorst@linux.intel.com>
 <20191018081323.5836-1-maarten.lankhorst@linux.intel.com>
 <20191022181607.GQ1208@intel.com>
 <642e2d68-bc7c-0301-3c19-f61ca8262a90@linux.intel.com>
 <20191024122333.GY1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <f18a5edb-a42e-5c44-3700-40378f1c3908@linux.intel.com>
Date: Thu, 24 Oct 2019 14:35:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024122333.GY1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Perform manual conversions for
 crtc uapi/hw split, v2.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjQtMTAtMjAxOSBvbSAxNDoyMyBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBUaHUs
IE9jdCAyNCwgMjAxOSBhdCAwMjoxMjo0NlBNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gT3AgMjItMTAtMjAxOSBvbSAyMDoxNiBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPj4+
IE9uIEZyaSwgT2N0IDE4LCAyMDE5IGF0IDEwOjEzOjIzQU0gKzAyMDAsIE1hYXJ0ZW4gTGFua2hv
cnN0IHdyb3RlOgo+Pj4+IGludGVsX2dldF9sb2FkX2RldGVjdF9waXBlKCkgbmVlZHMgdG8gc2V0
IHVhcGkgYWN0aXZlLAo+Pj4+IHVhcGkgZW5hYmxlIGlzIHNldCBieSB0aGUgY2FsbCB0byBkcm1f
YXRvbWljX3NldF9tb2RlX2Zvcl9jcnRjKCksCj4+Pj4gc28gd2UgY2FuIHJlbW92ZSBpdC4KPj4+
Pgo+Pj4+IGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoKSBuZWVkcyB0byBsb29rIGF0IGh3IHN0
YXRlLCBidXQgSSBkaWRuJ3QKPj4+PiBjaGFuZ2Ugc3BhdGNoIHRvIGxvb2sgYXQgaXQuIEl0J3Mg
ZWFzeSBlbm91Z2ggdG8gZG8gbWFudWFsbHkuCj4+Pj4KPj4+PiBpbnRlbF9hdG9taWNfY2hlY2so
KSBkZWZpbml0ZWx5IG5lZWRzIHRvIGNoZWNrIGZvciB1YXBpIGVuYWJsZSwKPj4+PiBvdGhlcndp
c2UgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyBjYW5ub3QgY29weSB1YXBpIHN0YXRlIHRvIGh3
Lgo+Pj4gV2Ugc2VlbSB0byBoYXZlIHRocmVlIHRvdGFsbHkgc2VwYXJhdGUgdGhpbmdzIGluIHRo
aXMgb25lIHBhdGNoLgo+PiBUaGUgcGF0Y2ggaXMgYWJvdXQgdGhlIG1hbnVhbCBjb252ZXJzaW9u
cyB0aGF0IG5lZWQgdG8gYmUgZG9uZSBiZWNhdXNlIHRoZSBhdXRvbWF0ZWQKPj4KPj4gY2hlY2tz
IGdldCB0aGVtIHdyb25nLgo+IERvZXMgdGhhdCBtZWFuIHRoZSBzZXJpZXMgaXMgbm90IGFjdHVh
bGx5IGJpc2VjdGFibGU/CgpJJ3ZlIGNoZWNrZWQgYWxsIHBsYWNlcyBtYW51YWxseSBhbmQgaXQg
c2hvdWxkIGJlIGNvcnJlY3QuCgpGb3IgYW55IHJlZ3Jlc3Npb24gd2Ugd2lsbCBsaWtlbHkgZW5k
IHVwIGF0IHBhdGNoIDgvMTQgYXMKaXQgZm9ybWFsaXplcyB0aGUgc3BsaXQuIFlvdSBjYW4gaW52
ZXN0aWdhdGUgZnVydGhlciBieQpjaGFuZ2luZyBhbGwgaHcgcmVmZXJlbmNlcyBpbiBhIGZpbGUg
dG8gdWFwaS4KClJlYWxpc3RpY2FsbHkgeW91IHdvbid0IGhpdCBhbnkgaXNzdWVzIHVudGlsIGJp
Z2pvaW5lciBpcwppbnRyb2R1Y2VkLCBhbmQgaHcgYW5kIHVhcGkgY2FuIGNvbnRhaW4gd2lsZGx5
IGRpZmZlcmVudAp2YWx1ZXMuIFRoaXMgaXMgbW9zdGx5IG5vdGljZWFibGUgZm9yIHBsYW5lX3N0
YXRlLCBiZWNhdXNlCnBsYW5lX3N0YXRlLT51YXBpLmZiL2NydGMgd2lsbCBiZSBudWxsIGZvciBh
IHNsYXZlIHBsYW5lLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
