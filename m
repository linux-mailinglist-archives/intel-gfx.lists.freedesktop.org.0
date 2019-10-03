Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC834C99EF
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 10:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D1C66E972;
	Thu,  3 Oct 2019 08:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDDFE6E972
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 08:32:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 01:32:50 -0700
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="343600748"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 01:32:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20191002150025.GW1208@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191002145405.27848-1-jani.nikula@intel.com>
 <20191002150025.GW1208@intel.com>
Date: Thu, 03 Oct 2019 11:32:46 +0300
Message-ID: <87k19m9qkx.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: use DRM_ERROR() instead of
 drm_err()
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

T24gV2VkLCAwMiBPY3QgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDU6NTQ6MDRQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFVuaWZ5IG9uIGN1cnJlbnQgY29tbW9uIHVzYWdl
IHRvIGFsbG93IHJlcHVycG9zaW5nIGRybV9lcnIoKSBsYXRlci4gRml4Cj4+IG5ld2xpbmVzIHdo
aWxlIGF0IGl0Lgo+PiAKPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KPgo+IFNlcmllcyBpcwo+IFJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKVGhhbmtzLCBwdXNoZWQuCgpCUiwKSmFu
aS4KCj4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8IDggKysrKy0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+PiBpbmRleCBkOTljNTllOTc1NjguLjc4MWY2ZWE3Y2NmOSAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gQEAgLTEy
NTYyLDEwICsxMjU2MiwxMCBAQCBwaXBlX2NvbmZpZ19pbmZvZnJhbWVfbWlzbWF0Y2goc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAgCQlkcm1fZGJnKERSTV9VVF9LTVMsICJm
b3VuZCIpOwo+PiAgCQloZG1pX2luZm9mcmFtZV9sb2coS0VSTl9ERUJVRywgZGV2X3ByaXYtPmRy
bS5kZXYsIGIpOwo+PiAgCX0gZWxzZSB7Cj4+IC0JCWRybV9lcnIoIm1pc21hdGNoIGluICVzIGlu
Zm9mcmFtZSIsIG5hbWUpOwo+PiAtCQlkcm1fZXJyKCJleHBlY3RlZDoiKTsKPj4gKwkJRFJNX0VS
Uk9SKCJtaXNtYXRjaCBpbiAlcyBpbmZvZnJhbWVcbiIsIG5hbWUpOwo+PiArCQlEUk1fRVJST1Io
ImV4cGVjdGVkOlxuIik7Cj4+ICAJCWhkbWlfaW5mb2ZyYW1lX2xvZyhLRVJOX0VSUiwgZGV2X3By
aXYtPmRybS5kZXYsIGEpOwo+PiAtCQlkcm1fZXJyKCJmb3VuZCIpOwo+PiArCQlEUk1fRVJST1Io
ImZvdW5kOlxuIik7Cj4+ICAJCWhkbWlfaW5mb2ZyYW1lX2xvZyhLRVJOX0VSUiwgZGV2X3ByaXYt
PmRybS5kZXYsIGIpOwo+PiAgCX0KPj4gIH0KPj4gQEAgLTEyNTgzLDcgKzEyNTgzLDcgQEAgcGlw
ZV9jb25maWdfbWlzbWF0Y2goYm9vbCBmYXN0c2V0LCBjb25zdCBjaGFyICpuYW1lLCBjb25zdCBj
aGFyICpmb3JtYXQsIC4uLikKPj4gIAlpZiAoZmFzdHNldCkKPj4gIAkJZHJtX2RiZyhEUk1fVVRf
S01TLCAiZmFzdHNldCBtaXNtYXRjaCBpbiAlcyAlcFYiLCBuYW1lLCAmdmFmKTsKPj4gIAllbHNl
Cj4+IC0JCWRybV9lcnIoIm1pc21hdGNoIGluICVzICVwViIsIG5hbWUsICZ2YWYpOwo+PiArCQlE
Uk1fRVJST1IoIm1pc21hdGNoIGluICVzICVwVlxuIiwgbmFtZSwgJnZhZik7Cj4+ICAKPj4gIAl2
YV9lbmQoYXJncyk7Cj4+ICB9Cj4+IC0tIAo+PiAyLjIwLjEKPj4gCj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
