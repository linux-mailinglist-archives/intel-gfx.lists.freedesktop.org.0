Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4521F35F6FE
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 17:10:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F1B6E924;
	Wed, 14 Apr 2021 15:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A769C6E924
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 15:10:24 +0000 (UTC)
IronPort-SDR: SmJ/eaEhH+iUop893JjwHAxU5pcfQ4VA4AppqIuAerChbpvwNDWflMnbH4d22ixiH6Euhta4yq
 Un5SUiY61CtQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="215151289"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="215151289"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:09:28 -0700
IronPort-SDR: WlQagMlMIbDB8SRBJ905E+9BAJ2e7pKbsBy/pdBc+apqD9iXFgzQYNOEuEEQQajxOo9L5oEe1U
 TPhM1hgSY+iA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="424775150"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 08:09:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210414022309.30898-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
 <20210414022309.30898-3-ville.syrjala@linux.intel.com>
Date: Wed, 14 Apr 2021 18:09:23 +0300
Message-ID: <87r1jcewd8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915: Rewrite the FBC tiling check
 a bit
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

T24gV2VkLCAxNCBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBXcml0ZSB0aGUgdGlsaW5nIGNoZWNrIGluIGEgbmljZXIgZm9y
bS4KPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMgfCA2ICsrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4g
aW5kZXggMDRkOWM3ZDIyYjA0Li4xNzgyNDNhNmQzYTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiBAQCAtNjgxLDExICs2ODEsOSBAQCBzdGF0aWMgYm9v
bCB0aWxpbmdfaXNfdmFsaWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICB7
Cj4gIAlzd2l0Y2ggKG1vZGlmaWVyKSB7Cj4gIAljYXNlIERSTV9GT1JNQVRfTU9EX0xJTkVBUjoK
PiAtCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDkpCj4gLQkJCXJldHVybiB0cnVlOwo+
IC0JCXJldHVybiBmYWxzZTsKPiAtCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1hfVElMRUQ6Cj4gIAlj
YXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEOgo+ICsJCXJldHVybiBESVNQTEFZX1ZFUihkZXZf
cHJpdikgPj0gOTsKClNvIHRoaXMgYWRkcyB0aGUgdmVyc2lvbiBjaGVjayBvbiBJOTE1X0ZPUk1B
VF9NT0RfWV9USUxFRCB3aGljaCBkaWRuJ3QKaGF2ZSBpdCBiZWZvcmU/CgpCUiwKSmFuaS4KCgo+
ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWF9USUxFRDoKPiAgCQlyZXR1cm4gdHJ1ZTsKPiAgCWRl
ZmF1bHQ6Cj4gIAkJcmV0dXJuIGZhbHNlOwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
