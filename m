Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36980DA5F7
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 09:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18AE96E9F5;
	Thu, 17 Oct 2019 07:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B22566E9F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 07:07:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:07:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="397427257"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2019 00:07:56 -0700
Date: Thu, 17 Oct 2019 12:38:01 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191017070801.GD4730@intel.com>
References: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
 <20191010145127.7487-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010145127.7487-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Make
 hdcp2_msg_timeout.timeout u16
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMC0xMCBhdCAxNzo1MToyNyArMDMwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+
IEFsbCB0aGUgdGltZW91dCB2YWx1ZXMgZml0IGluIHUxNiwgc28gbGV0J3Mgc2hyaW5rIHRoZSBz
dHJ1Y3R1cmUKPiBhIGJpdC4KPiAKPiBUaGlzIGVuZHMgdXAgYWN0dWFsbHkgaW5jcmVhc2luZyB0
aGUgLnRleHQgc2l6ZSBhIGJpdCBkdWUgdG8KPiBzb21lIGNoYW5nZXMgaW4gaW5zdHJ1Y3Rpb25z
IChjb25zdGFudCBpbXVsK3NtYWxsIGptcHMgcmVwbGFjZWQKPiB3aXRoIG1vditiaWdnZXIgam1w
cXMpLiBTZWVtcyBwcmV0dHkgYXJiaXRyYXJ5IHRvIG1lIHNvIEknbGwKPiBqdXN0IHByZXRlbmQg
SSBkaWRuJ3Qgc2VlIGl0Lgo+IAo+ICAgICB0ZXh0CSAgIGRhdGEJICAgIGJzcwkgICAgZGVjCSAg
ICBoZXgJZmlsZW5hbWUKPiAtICAzNDUyMQkgICAgMzYwCSAgICAgIDAJICAzNDg4MQkgICA4ODQx
CWludGVsX2hkbWkubwo+ICsgIDM0NTM3CSAgICAzNjAJICAgICAgMAkgIDM0ODk3CSAgIDg4NTEJ
aW50ZWxfaGRtaS5vCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxvb2tzIEdvb2QgdG8gbWUuCgpSZXZpZXdlZC1ieTog
UmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gaW5kZXggMmRkNzk4ZDhiOTYxLi41ZTk3ZGYzOGQyODEg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+IEBAIC0x
NTI5LDcgKzE1MjksNyBAQCBib29sIGludGVsX2hkbWlfaGRjcF9jaGVja19saW5rKHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQo+ICAKPiAgc3RydWN0IGhkY3AyX2hk
bWlfbXNnX3RpbWVvdXQgewo+ICAJdTggbXNnX2lkOwo+IC0JdTMyIHRpbWVvdXQ7Cj4gKwl1MTYg
dGltZW91dDsKPiAgfTsKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGRjcDJfaGRtaV9tc2df
dGltZW91dCBoZGNwMl9tc2dfdGltZW91dFtdID0gewo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
