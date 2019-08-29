Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF86A292D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 23:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB05A6E21A;
	Thu, 29 Aug 2019 21:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A10FD6E21A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 21:47:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 14:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,445,1559545200"; d="scan'208";a="356587326"
Received: from nsingh7-mobl.gar.corp.intel.com (HELO [10.252.36.113])
 ([10.252.36.113])
 by orsmga005.jf.intel.com with ESMTP; 29 Aug 2019 14:47:19 -0700
To: intel-gfx@lists.freedesktop.org
References: <20190822121210.21959-1-lionel.g.landwerlin@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a3075933-fb98-cb69-c660-12ccf2bf5926@intel.com>
Date: Fri, 30 Aug 2019 00:47:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822121210.21959-1-lionel.g.landwerlin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 0/2] drm/i915: timeline semaphore support
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
Cc: "Lahtinen, Joonas" <joonas.lahtinen@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RllJLCBhcGFydCBmcm9tIGEgY291cGxlIG9mIHByZS1leGlzdGluZyBpc3N1ZXMsIHRoZSBNZXNh
IHNlcmllcyB0aGF0IAptYWtlcyB1c2Ugb2YgdGhpcyBpOTE1IGNoYW5nZSBpcyByZXZpZXdlZCA6
IApodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhL21lcmdlX3JlcXVlc3Rz
LzE1MjUKCkNoZWVycywKCi1MaW9uZWwKCk9uIDIyLzA4LzIwMTkgMTU6MTIsIExpb25lbCBMYW5k
d2VybGluIHdyb3RlOgo+IEhpLAo+Cj4gSnVzdCBmaWRkbGluZyB3aXRoIGVudW1zIHRvIGF2b2lk
IGRlZmF1bHQgMCB2YWx1ZXMgYXMgcmVjb21tZW5kZWQgYnkKPiBKYXNvbi4KPgo+IENoZWVycywK
Pgo+IExpb25lbCBMYW5kd2VybGluICgyKToKPiAgICBkcm0vaTkxNTogaW50cm9kdWNlIGEgbWVj
aGFuaXNtIHRvIGV4dGVuZCBleGVjYnVmMgo+ICAgIGRybS9pOTE1OiBhZGQgc3luY29iaiB0aW1l
bGluZSBzdXBwb3J0Cj4KPiAgIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZm
ZXIuYyAgICB8IDM0NiArKysrKysrKysrKysrKystLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8ICAgMyArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZXRwYXJhbS5jICAgICAgICAgIHwgICAxICsKPiAgIGluY2x1ZGUvdWFwaS9kcm0v
aTkxNV9kcm0uaCAgICAgICAgICAgICAgICAgICB8ICA2NSArKystCj4gICA0IGZpbGVzIGNoYW5n
ZWQsIDM1NCBpbnNlcnRpb25zKCspLCA2MSBkZWxldGlvbnMoLSkKPgo+IC0tCj4gMi4yMy4wCj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
