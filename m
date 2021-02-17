Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC65D31DFD2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 20:50:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 992376E7D7;
	Wed, 17 Feb 2021 19:50:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92FFB6E4C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 19:50:02 +0000 (UTC)
IronPort-SDR: 8CDP3kMhGcP4BG8DPxG+iDl/5Ce2ZKFjdYjyLgDDGMmbkCkI9xSABretEP4qQy0zmW5DBF4o+v
 noMmorLYGtOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="244763514"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="244763514"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 11:50:01 -0800
IronPort-SDR: GTfcs8vyhGpSg+fgykvbT/dksAlTNTnsA6SLWN1T1f9jpHWB9UAcrXstOz2Ov6WGRM8MiQtUv/
 bxOkGrg6xglA==
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="400110818"
Received: from mvalka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.39.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 11:50:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20210217172805.xjtrptege3qpbunn@ldmartin-desk1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1613580193.git.jani.nikula@intel.com>
 <bf2f1c9527e17310d69a818e09a7212df4ada347.1613580193.git.jani.nikula@intel.com>
 <20210217172300.6uuie7js4a4cpqvl@ldmartin-desk1>
 <20210217172805.xjtrptege3qpbunn@ldmartin-desk1>
Date: Wed, 17 Feb 2021 21:49:57 +0200
Message-ID: <87zh02a2ze.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/bios: limit default outputs
 to ports A through F
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

T24gV2VkLCAxNyBGZWIgMjAyMSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IE9uIFdlZCwgRmViIDE3LCAyMDIxIGF0IDA5OjIzOjAwQU0gLTA4MDAs
IEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPj5PbiBXZWQsIEZlYiAxNywgMjAyMSBhdCAwNzowMzoz
NFBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4+V2l0aCB0aGUgZGVmYXVsdHMgbGltaXRl
ZCB0byBub24tVHlwZUMgcG9ydHMgaW4gY29tbWl0IDgyOGNjYjMxY2Y0MQo+Pj4oImRybS9pOTE1
L2ljbDogQWRkIFR5cGVDIHBvcnRzIG9ubHkgaWYgVkJUIGlzIHByZXNlbnQiKSwgdGhpcyBzaG91
bGQgYmUKPj4+YSBuby1vcCwgYnV0IGNsYXJpZmllcyB0aGUgY29kZSBhbmQgcHJlcGFyZXMgZm9y
IHN1YnNlcXVlbnQgY2hhbmdlcy4KPj4+Cj4+PkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KPj4+Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4+PlNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+Cj4+Pi0tLQo+Pj5kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYyB8IDMgKystCj4+PjEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPj4+Cj4+PmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
Cj4+PmluZGV4IGU5Y2IxNWFhMmY1YS4uYjlkOTkzMjRkNjZkIDEwMDY0NAo+Pj4tLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+Pj4rKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+Pj5AQCAtMjA1NywxMSArMjA1NywxMiBA
QCBzdGF0aWMgdm9pZAo+Pj5pbml0X3ZidF9taXNzaW5nX2RlZmF1bHRzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQo+Pj57Cj4+PgllbnVtIHBvcnQgcG9ydDsKPj4+KwlpbnQgcG9ydHMg
PSBQT1JUX0EgfCBQT1JUX0IgfCBQT1JUX0MgfCBQT1JUX0QgfCBQT1JUX0UgfCBQT1JUX0Y7Cj4+
Cj4+Cj4+SSdkIG5vdCBzcHJlYWQgdGhlIGtub3dsZWRnZSBvZiB3aGF0IHBvcnQgdXNlcyB0YyBw
aHkgbGlrZSB0aGlzLgo+Pkl0J3MgcGFpbmZ1bCB0byBtYWludGFpbi4KClVtbSwgdGhpcyB3YXNu
J3QgbWVhbnQgdG8gaGF2ZSBhbnl0aGluZyB0byBkbyB3aXRoIHRjLCByZWFsbHkuIEdyYW50ZWQs
CnRoZSBjb21taXQgbWVzc2FnZSBpcyBtaXNsZWFkaW5nLgoKPgo+IGFsc28sIG5vdCBzdXJlIGhv
dyB0aGlzIGNsYXJpZmllcyB0aGluZ3MgaWYgUE9SVF9UQzEgYWxpYXNlcyBQT1JUX0QsCj4gc28g
SSdkIGp1c3QgZHJvcCB0aGlzIHBhdGNoCgpUaGUgcG9pbnQgaXMgdGhhdCBJJ2QgbGlrZSB0byBy
ZWR1Y2UgdGhlIG51bWJlciBvZiBwb3J0cyBzZXQgdXAgYnkKZGVmYXVsdCwgcGVyaGFwcyBldmVu
IGZ1cnRoZXIgdGhhbiB0aGlzLiBJdCdzIGEgYml0IHNpbGx5IHRvIGdlbmVyYXRlIDkKZHVtbXkg
Y2hpbGQgZGV2aWNlcyBvbiBjZXJ0YWluIHBsYXRmb3JtcyB3aGVuIHRoZXJlJ3Mgbm8gVkJULgoK
CkJSLApKYW5pLgoKPgo+IEx1Y2FzIERlIE1hcmNoaQo+Cj4+THVjYXMgRGUgTWFyY2hpCj4+Cj4+
Pgo+Pj4JaWYgKCFIQVNfRERJKGk5MTUpICYmICFJU19DSEVSUllWSUVXKGk5MTUpKQo+Pj4JCXJl
dHVybjsKPj4+Cj4+Pi0JZm9yX2VhY2hfcG9ydChwb3J0KSB7Cj4+PisJZm9yX2VhY2hfcG9ydF9t
YXNrZWQocG9ydCwgcG9ydHMpIHsKPj4+CQlzdHJ1Y3QgZGRpX3ZidF9wb3J0X2luZm8gKmluZm8g
PQo+Pj4JCQkmaTkxNS0+dmJ0LmRkaV9wb3J0X2luZm9bcG9ydF07Cj4+PgkJZW51bSBwaHkgcGh5
ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgcG9ydCk7Cj4+Pi0tIAo+Pj4yLjIwLjEKPj4+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAK
SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
