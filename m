Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 417FD35F0D0
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9922D6E903;
	Wed, 14 Apr 2021 09:26:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9CC76E903
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 09:26:26 +0000 (UTC)
IronPort-SDR: G35S9o6HTGiIqmipbxG17nJBO7IMBmMPSbxMg3Zrzp/Qnr+Ek3y4QXrfuMMceVMAH0CNkoss9c
 nehcekIxlumA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174709852"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="174709852"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:26:26 -0700
IronPort-SDR: zq1Xi9MNcm72vphKCqhvfPbsWkCK4sHHquUfZpgZ0n4ZOXhXRxv5/hncWlubmj4L9eiEec2yAu
 cQZyQa7Rc1Yg==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="461147071"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:26:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210412054607.18133-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
 <20210412054607.18133-6-ville.syrjala@linux.intel.com>
Date: Wed, 14 Apr 2021 12:26:21 +0300
Message-ID: <87czuxfc8y.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Remove a few redundant glk
 checks
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
aW51eC5pbnRlbC5jb20+Cj4KPiBOb3cgdGhhdCBnbGsgZGlzcGxheSB2ZXJzaW9uIGlzIDEwIHdl
IGNhbiBkcm9wIGEgZmV3IG1vcmUgZ2xrIGNoZWNrcy4KPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICAgICAgIHwgMiArLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8IDIgKy0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBpbmRleCBlMjA4ZGVkOWE2ODguLjc5
ZWNlOWU0NWQ2NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Ywo+IEBAIC0xNzYsNyArMTc2LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfd2FpdF9kZGlfYnVmX2Fj
dGl2ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJCQkgICAgICBlbnVt
IHBvcnQgcG9ydCkKPiAgewo+ICAJLyogV2FpdCA+IDUxOCB1c2VjcyBmb3IgRERJX0JVRl9DVEwg
dG8gYmUgbm9uIGlkbGUgKi8KPiAtCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMCAmJiAh
SVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKPiArCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikg
PCAxMCkgewo+ICAJCXVzbGVlcF9yYW5nZSg1MTgsIDEwMDApOwo+ICAJCXJldHVybjsKPiAgCX0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxh
bmUuYwo+IGluZGV4IDA5ODYzNmM4MTFhOC4uNTkyNmVkMTA5NGE0IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKPiBAQCAt
ODUzLDcgKzg1Myw3IEBAIHN0YXRpYyB1MzIgc2tsX3BsYW5lX2N0bChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCj4gIAlwbGFuZV9jdGwgPSBQTEFORV9DVExf
RU5BQkxFOwo+ICAKPiAtCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMCAmJiAhSVNfR0VN
SU5JTEFLRShkZXZfcHJpdikpIHsKPiArCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMCkg
ewo+ICAJCXBsYW5lX2N0bCB8PSBza2xfcGxhbmVfY3RsX2FscGhhKHBsYW5lX3N0YXRlKTsKPiAg
CQlwbGFuZV9jdGwgfD0gUExBTkVfQ1RMX1BMQU5FX0dBTU1BX0RJU0FCTEU7CgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
