Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B58151E64
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 17:37:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 188856E883;
	Tue,  4 Feb 2020 16:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2DE6E883
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 16:37:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 08:37:25 -0800
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="224349299"
Received: from ngenova-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.128])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 08:37:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Anshuman
 Gupta <anshuman.gupta@intel.com>
In-Reply-To: <20200204142836.GM13686@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
 <20200204112927.17391-4-anshuman.gupta@intel.com>
 <20200204142836.GM13686@intel.com>
Date: Tue, 04 Feb 2020 18:37:26 +0200
Message-ID: <87imkmwbp5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Fix broken transcoder err
 state
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

T24gVHVlLCAwNCBGZWIgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBGZWIgMDQsIDIwMjAgYXQgMDQ6NTk6MjNQTSAr
MDUzMCwgQW5zaHVtYW4gR3VwdGEgd3JvdGU6Cj4+IFNraXAgdGhlIHRyYXNjb2RlciB3aG9zZSBw
aXBlIGlzIGRpc2FibGVkIHdoaWxlCj4+IGluaXRpYWxpemluZyB0cmFzY29kZXIgZXJyb3Igc3Rh
dGUgaW4gMyBkaXNwbGF5Cj4+IHBpcGUgc3lhdGVtLgo+PiAKPj4gQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEFuc2h1
bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKy0KPj4gIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4gCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+IGluZGV4IDU3MDllNjcyMTUx
YS4uY2YzNmMzZDBmOGZjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+PiBAQCAtMTg2MDcsOCArMTg2MDcsMTAgQEAgaW50ZWxfZGlzcGxh
eV9jYXB0dXJlX2Vycm9yX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
Pj4gIAo+PiAgCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGVycm9yLT50cmFuc2NvZGVyKTsg
aSsrKSB7Cj4+ICAJCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IHRyYW5zY29kZXJz
W2ldOwo+PiArCQllbnVtIHBpcGUgcGlwZSA9IChlbnVtIHBpcGUpY3B1X3RyYW5zY29kZXI7Cj4K
PiBOb3QgY29ycmVjdCBmb3IgRURQIHRyYW5zY29kZXIuCgpOb3IgRFNJPwoKQlIsCkphbmkuCgo+
Cj4+ICAKPj4gLQkJaWYgKCFJTlRFTF9JTkZPKGRldl9wcml2KS0+dHJhbnNfb2Zmc2V0c1tjcHVf
dHJhbnNjb2Rlcl0pCj4+ICsJCWlmICghSU5URUxfSU5GTyhkZXZfcHJpdiktPnRyYW5zX29mZnNl
dHNbY3B1X3RyYW5zY29kZXJdICYmCj4+ICsJCSAgICAhKElOVEVMX0lORk8oZGV2X3ByaXYpLT5w
aXBlX21hc2sgJiBCSVQocGlwZSkpKQo+PiAgCQkJY29udGludWU7Cj4+ICAKPj4gIAkJZXJyb3It
PnRyYW5zY29kZXJbaV0uYXZhaWxhYmxlID0gdHJ1ZTsKPj4gLS0gCj4+IDIuMjQuMAoKLS0gCkph
bmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
