Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F754C908
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 10:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6FF6E525;
	Thu, 20 Jun 2019 08:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC74C6E525
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 08:10:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 01:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="181813535"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2019 01:10:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190619230222.4346-3-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190619230222.4346-1-jose.souza@intel.com>
 <20190619230222.4346-3-jose.souza@intel.com>
Date: Thu, 20 Jun 2019 11:13:08 +0300
Message-ID: <878stwu12j.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 3/4] drm/i915/psr: Make PSR registers
 relative to transcoders
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxOSBKdW4gMjAxOSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IDRmYzhkYzA4
Mzc2Ni4uMzFmYjRkZTUwODFjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTQy
MjUsMTAgKzQyMjUsMTggQEAgZW51bSB7Cj4gICNkZWZpbmUgUElQRVNSQyh0cmFucykJCV9NTUlP
X1RSQU5TMih0cmFucywgX1BJUEVBU1JDKQo+ICAjZGVmaW5lIFBJUEVfTVVMVCh0cmFucykJX01N
SU9fVFJBTlMyKHRyYW5zLCBfUElQRV9NVUxUX0EpCj4gIAo+IC0vKiBIU1crIGVEUCBQU1IgcmVn
aXN0ZXJzICovCj4gLSNkZWZpbmUgSFNXX0VEUF9QU1JfQkFTRQkweDY0ODAwCj4gLSNkZWZpbmUg
QkRXX0VEUF9QU1JfQkFTRQkweDZmODAwCj4gLSNkZWZpbmUgRURQX1BTUl9DVEwJCQkJX01NSU8o
ZGV2X3ByaXYtPnBzcl9tbWlvX2Jhc2UgKyAwKQo+ICsvKgo+ICsgKiBIU1crIGVEUCBQU1IgcmVn
aXN0ZXJzCj4gKyAqCj4gKyAqIEhTVyBQU1IgcmVnaXN0ZXJzIGFyZSByZWxhdGl2ZSB0byBERElB
KF9ERElfQlVGX0NUTF9BICsgMHg4MDApIHdpdGgganVzdCBvbmUKPiArICogaW5zdGFuY2Ugb2Yg
aXQKPiArICovCj4gKyNkZWZpbmUgX0hTV19FRFBfUFNSX0JBU0UJCQkweDY0ODAwCj4gKyNkZWZp
bmUgX1NSRF9DVExfQQkJCQkweDYwODAwCj4gKyNkZWZpbmUgX1NSRF9DVExfRURQCQkJCTB4NmY4
MDAKPiArI2RlZmluZSBfSFNXX1BTUl9BREoocmVnKQkJCSgocmVnKSAtIF9TUkRfQ1RMX0EgKyBf
SFNXX0VEUF9QU1JfQkFTRSkKPiArI2RlZmluZSBfUFNSX0FESih0cmFuLCByZWcpCQkJKElTX0hB
U1dFTEwoZGV2X3ByaXYpID8gX0hTV19QU1JfQURKKHJlZykgOiBfVFJBTlMyKHRyYW4sIHJlZykp
Cj4gKyNkZWZpbmUgRURQX1BTUl9DVEwodHJhbikJCQlfTU1JTyhfUFNSX0FESih0cmFuLCBfU1JE
X0NUTF9BKSkKClRoZXJlIGFyZSBjdXJyZW50bHkgdGhyZWUgaW5zdGFuY2VzIG9mIHBsYXRmb3Jt
L2dlbiBjaGVja3MgaW4KaTkxNV9yZWcuaC4gVGhleSBhcmUgdGhlIGV4Y2VwdGlvbiwgYW5kIHRo
ZXkncmUgaW4gaW5kaXZpZHVhbCBtYWNyb3MKdGhhdCBhcmVuJ3QgZXZlbiByZWdpc3RlciBvZmZz
ZXQgZGVmaW5pdGlvbnMgbGV0IGFsb25lIGhlbHBlcnMgdGhhdCBnZXQKcHJvbGlmZXJhdGVkIHRv
IHNldmVyYWwgb3RoZXIgbWFjcm9zLgoKVGhpcyBjaGFuZ2UgaGVyZSBpcyBxdWl0ZSBhIGJpZyBw
cmVjZWRlbnQgaW4gdGhhdCByZWdhcmQsIGFuZCBub3QgdG8gYmUKZG9uZSBsaWdodGx5LiBVc3Vh
bGx5IHRoZSBjYXNlIGlzIG90aGVycyB3aWxsIGZvbGxvdyBzdWl0LCBzbyB0aGlzIGlzCm5vdCBq
dXN0IGFib3V0IHRoaXMgb25lIGluc3RhbmNlLiBJdCdzIGFib3V0IGRlY2lkaW5nIHdoZXRoZXIg
dGhpcyBpcwp0aGUgZGlyZWN0aW9uIHdlIHdhbnQgdG8gdGFrZS4gSG93IGZhciBhcmUgd2UgcHJl
cGFyZWQgdG8gZ28gYW5kIGhvdyBkbwp3ZSBzdG9wIHRoZXJlPwoKVGhlcmUncyByZWFsbHkgbm8g
d2F5IHRvIHNldCB0aGUgcHNyLT50cmFuc2NvZGVyIHN1Y2ggb24gSFNXIHRoYXQgaXQKd291bGQg
d29yayB3aXRoIE1NSU9fVFJBTlMyKCk/CgpCUiwKSmFuaS4KCi0tIApKYW5pIE5pa3VsYSwgSW50
ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
