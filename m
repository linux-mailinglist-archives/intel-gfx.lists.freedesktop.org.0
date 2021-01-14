Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8D22F5C2D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 09:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EB06E04B;
	Thu, 14 Jan 2021 08:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69CB26E04B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 08:12:08 +0000 (UTC)
IronPort-SDR: 6tF431PG890i65PmiD/fkr9vZlMf0WBRUAbIpzzBarIuCxH9rQ+f3Mctt/MOOnXsaXwXcWT7VT
 3YiyY9i7fqyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="242400628"
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; d="scan'208";a="242400628"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 00:12:06 -0800
IronPort-SDR: q98WmB6cSxObsZvPqYRGAMi2ydWQ8DuC2Sy/4h8ReCDcCElLZUYi8jxk5de/Bz+HXzYEIiybYW
 upbz/0M3imJw==
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; d="scan'208";a="353815133"
Received: from dforourk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.254.146])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 00:12:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <X/8GcN3sCtcPd9JG@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210113143726.19701-1-jani.nikula@intel.com>
 <X/8GcN3sCtcPd9JG@intel.com>
Date: Thu, 14 Jan 2021 10:12:01 +0200
Message-ID: <87mtxcq6ni.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: remove useless use of
 inline
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

T24gV2VkLCAxMyBKYW4gMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBKYW4gMTMsIDIwMjEgYXQgMDQ6Mzc6MjZQTSAr
MDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IHNrbF9zY2FsZXJfZ2V0X2ZpbHRlcl9zZWxlY3Qo
KSBpc24ndCBzdGF0aWMgYW5kIGNhbid0IGJlIGlubGluZS4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4KPiBSZXZpZXdlZC1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRoYW5rcywgcHVz
aGVkLgoKQlIsCkphbmkuCgoKPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+PiBpbmRleCAwMTg5ZDM3OWE1NWUuLmNmOTg2MGZmOWE4OSAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4g
QEAgLTU4MTAsNyArNTgxMCw3IEBAIHN0YXRpYyB2b2lkIGNubF9wcm9ncmFtX25lYXJlc3RfZmls
dGVyX2NvZWZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPj4gIAlpbnRlbF9k
ZV93cml0ZV9mdyhkZXZfcHJpdiwgQ05MX1BTX0NPRUZfSU5ERVhfU0VUKHBpcGUsIGlkLCBzZXQp
LCAwKTsKPj4gIH0KPj4gIAo+PiAtaW5saW5lIHUzMiBza2xfc2NhbGVyX2dldF9maWx0ZXJfc2Vs
ZWN0KGVudW0gZHJtX3NjYWxpbmdfZmlsdGVyIGZpbHRlciwgaW50IHNldCkKPj4gK3UzMiBza2xf
c2NhbGVyX2dldF9maWx0ZXJfc2VsZWN0KGVudW0gZHJtX3NjYWxpbmdfZmlsdGVyIGZpbHRlciwg
aW50IHNldCkKPj4gIHsKPj4gIAlpZiAoZmlsdGVyID09IERSTV9TQ0FMSU5HX0ZJTFRFUl9ORUFS
RVNUX05FSUdIQk9SKSB7Cj4+ICAJCXJldHVybiAoUFNfRklMVEVSX1BST0dSQU1NRUQgfAo+PiAt
LSAKPj4gMi4yMC4xCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3Jh
cGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
