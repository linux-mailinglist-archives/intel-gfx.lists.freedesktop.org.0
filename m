Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A8CE5704
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83ED06EBCB;
	Fri, 25 Oct 2019 23:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3206EBCB
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:24:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:24:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="202746177"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga006.jf.intel.com with ESMTP; 25 Oct 2019 16:24:46 -0700
Date: Fri, 25 Oct 2019 16:24:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191025232444.zervpwg36m3oiwwq@ldmartin-desk1.jf.intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
 <20191025230623.27829-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025230623.27829-6-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/tgl: Add AUX B & C to
 DC_OFF_POWER_DOMAINS
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDQ6MDY6MjNQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPk91ciBUR0wgQ0kgcGxhdGZvcm1zIGFyZSBydW5uaW5nIGludG8gY2FzZXMgd2hlcmUgYXV4
IHRyYW5zYWN0aW9ucyBoYXZlCj5mYWlsZWQgdG8gY29tcGxldGUgb3IgZGVjbGFyZSBhIHRpbWVv
dXQgd2VsbCBhZnRlciB0aGUgdGltZW91dCBsaW1pdAo+dGhhdCB0aGUgaGFyZHdhcmUgaXMgc3Vw
cG9zZWQgdG8gZW5mb3JjZS4gIEZyb20gdGhlIGxvZ3MgaXQgYXBwZWFycyB0aGF0CgppdCdzIGEg
Z29vZCBpZGVhIHRvIGNvcHkgdGhlIHJlbGV2YW50IHBhcnQgb2YgdGhlIGxvZyBoZXJlIHNvIHRo
ZSBjb21taXQKbWVzc2FnZSBpcyBzZWxmLXN1ZmZpY2llbnQKCj50aGVzZSBmYWlsdXJlcyBhcmlz
ZSB3aGVuIGF1eCB0cmFuc2FjdGlvbnMgaGFwcGVuIGFmdGVyIHdlJ3ZlIGVudGVyZWQKPkRDNi4g
IE9uIFRHTCBBVVggQiAmIEMgYXJlIGluIFBHMSAobWFuYWdlZCBieSB0aGUgRE1DIGZpcm13YXJl
KSByYXRoZXIKPnRoYW4gUEczIGFzIHRoZXkgd2VyZSBvbiBJQ0wuCj4KPlNpZ25lZC1vZmYtYnk6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4tLS0KPiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDIgKysKPiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj5pbmRleCA2ZjllNzkyN2UyNDguLjcwN2Fj
MTEwZTI3MSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYwo+QEAgLTI2ODIsNiArMjY4Miw4IEBAIHZvaWQgaW50ZWxfZGlzcGxh
eV9wb3dlcl9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+IAlUR0xfUFdf
Ml9QT1dFUl9ET01BSU5TIHwJCQlcCj4gCUJJVF9VTEwoUE9XRVJfRE9NQUlOX01PREVTRVQpIHwJ
CQlcCj4gCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9BKSB8CQkJXAo+KwlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9BVVhfQikgfAkJCVwKPisJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0MpIHwJCQlc
Cj4gCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQo+Cj4gI2RlZmluZSBUR0xfRERJX0lPX0Rf
VEMxX1BPV0VSX0RPTUFJTlMgKAlcCj4tLSAKPjIuMjEuMAo+Cj5fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+SW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
