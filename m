Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8301D1730EB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 07:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D91F6EDF0;
	Fri, 28 Feb 2020 06:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3043B6EDF0
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 06:17:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 22:17:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="437327404"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.66.115.214])
 ([10.66.115.214])
 by fmsmga005.fm.intel.com with ESMTP; 27 Feb 2020 22:17:03 -0800
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227235005.18706-1-jose.souza@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <d1a413c8-317d-c55d-8c0e-8f3d192f7edb@intel.com>
Date: Fri, 28 Feb 2020 11:47:02 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200227235005.18706-1-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Use firmware v2.06 for TGL
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBETUMgRlcgc2hvdWxkIGZpeCAKaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC9pc3N1ZXMvNDUzID0+IERTQiBidXN5IGlzc3VlCgpSZXZpZXdlZC1ieTogU3dhdGkg
U2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KCk9uIDI4LUZlYi0yMCA1OjIwIEFNLCBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOgo+IE5ldyBmaXJtd2FyZSBjb250YWlucyBtaW5v
ciBmaXhlcyBhcm91bmQgY29udGV4dCByZXN0b3JlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYyB8IDQgKystLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMKPiBpbmRleCA1NzMyMGMxMjgzOWYuLjMxMTI1NzJj
ZmI3ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nz
ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jc3IuYwo+IEBA
IC00MCw4ICs0MCw4IEBACj4gICAKPiAgICNkZWZpbmUgR0VOMTJfQ1NSX01BWF9GV19TSVpFCQlJ
Q0xfQ1NSX01BWF9GV19TSVpFCj4gICAKPiAtI2RlZmluZSBUR0xfQ1NSX1BBVEgJCQkiaTkxNS90
Z2xfZG1jX3ZlcjJfMDQuYmluIgo+IC0jZGVmaW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFVSVJFRAlD
U1JfVkVSU0lPTigyLCA0KQo+ICsjZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNf
dmVyMl8wNi5iaW4iCj4gKyNkZWZpbmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJT
SU9OKDIsIDYpCj4gICAjZGVmaW5lIFRHTF9DU1JfTUFYX0ZXX1NJWkUJCTB4NjAwMAo+ICAgTU9E
VUxFX0ZJUk1XQVJFKFRHTF9DU1JfUEFUSCk7Cj4gICAKPiAKCi0tIAp+U3dhdGkgU2hhcm1hCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
