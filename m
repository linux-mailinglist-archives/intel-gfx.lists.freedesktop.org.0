Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D0AA07CE
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 18:48:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86A3789D84;
	Wed, 28 Aug 2019 16:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC5189D63;
 Wed, 28 Aug 2019 16:48:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 09:48:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="188277872"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Aug 2019 09:48:47 -0700
Date: Wed, 28 Aug 2019 22:18:15 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Message-ID: <20190828164814.GA25367@intel.com>
References: <20190828164216.405-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828164216.405-1-ramalingam.c@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v12 0/6] drm/i915: Enable HDCP 1.4 and 2.2
 on Gen12+
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
Cc: Jani Nikula <jani.nikula@intel.com>, tomas.winkler@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOC0yOCBhdCAyMjoxMjoxMCArMDUzMCwgUmFtYWxpbmdhbSBDIHdyb3RlOgo+IEVu
YWJsaW5nIHRoZSBIRENQMS40IGFuZCAyLjIgb24gVEdMIGJ5IHN1cHBvcnRpbmcgdGhlIEhXIGJs
b2NrIG1vdmVtZW50Cj4gZnJvbSBEREkgaW50byB0cmFuc2NvZGVyLgo+IAo+IHYxMjoKPiAgIHIt
YiBhbmQgYWNrIGFyZSBjb2xsZWN0ZWQuCj4gICBmZXcgcmV2aWV3IGNvbW1lbnRzIGFyZSBhZGRy
ZXNzZWQuCgpUb21hcywKClRoYW5rcyBmb3IgcmV2aWV3aW5nIHRoZSBwYXRjaGVzIGFuZCBwcm92
aWRpbmcgdGhlIEFjay9SLWJlcy4KQXMgd2UgZGlzY3Vzc2VkIG9mZmxpbmUsIHdlIG5lZWQgeW91
ciBBQ0sgZm9yIHN1Ym1pdHRpbmcgbWVpX2hkY3AKcGF0Y2hlcyB0aHJvdWdoIGRpbnEoZHJtLWlu
dGVsLW5leHQtcXVldWVkKS4gUGxlYXNlIHByb3ZpZGUgdGhlIHNhbWUuCgotUmFtCj4gCj4gUmFt
YWxpbmdhbSBDICg2KToKPiAgIGRybS9pOTE1OiBtZWlfaGRjcDogSTkxNSBzZW5kcyBkZGkgaW5k
ZXggYXMgcGVyIE1FIEZXCj4gICBkcm06IE1vdmUgcG9ydCBkZWZpbml0aW9uIGJhY2sgdG8gaTkx
NSBoZWFkZXIKPiAgIGRybTogRXh0ZW5kIEk5MTUgbWVpIGludGVyZmFjZSBmb3IgdHJhbnNjb2Rl
ciBpbmZvCj4gICBtaXNjL21laS9oZGNwOiBGaWxsIHRyYW5zY29kZXIgaW5kZXggaW4gcG9ydCBp
bmZvCj4gICBkcm0vaTkxNS9oZGNwOiB1cGRhdGUgY3VycmVudCB0cmFuc2NvZGVyIGludG8gaW50
ZWxfaGRjcAo+ICAgZHJtL2k5MTUvaGRjcDogRW5hYmxlIEhEQ1AgMS40IGFuZCAyLjIgb24gR2Vu
MTIrCj4gCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oICAgICB8
ICAgMyArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAg
fCAgMjAgKy0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAg
IHwgICA3ICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAg
IHwgICAzICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oICAgICAg
IHwgICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgICAg
IHwgMjE0ICsrKysrKysrKysrKystLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3AuaCAgICAgfCAgIDQgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYyAgICAgfCAgMTMgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oZG1pLmggICAgIHwgICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9ob3RwbHVnLmggIHwgICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zZHZvLmggICAgIHwgICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgICAgICAgICAgIHwgMTI0ICsrKysrKysrKy0KPiAgZHJpdmVycy9taXNjL21laS9o
ZGNwL21laV9oZGNwLmMgICAgICAgICAgICAgIHwgIDQ1ICsrLS0KPiAgZHJpdmVycy9taXNjL21l
aS9oZGNwL21laV9oZGNwLmggICAgICAgICAgICAgIHwgIDE3ICstCj4gIGluY2x1ZGUvZHJtL2k5
MTVfZHJtLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAxOCAtLQo+ICBpbmNsdWRlL2RybS9p
OTE1X21laV9oZGNwX2ludGVyZmFjZS5oICAgICAgICAgfCAgNDIgKysrLQo+ICAxNiBmaWxlcyBj
aGFuZ2VkLCAzODkgaW5zZXJ0aW9ucygrKSwgMTI1IGRlbGV0aW9ucygtKQo+IAo+IC0tIAo+IDIu
MjAuMQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
