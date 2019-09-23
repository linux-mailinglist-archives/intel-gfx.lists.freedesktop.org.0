Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFD8BAE97
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 09:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 910736E154;
	Mon, 23 Sep 2019 07:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03FE26E154
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 07:42:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 00:42:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="203071459"
Received: from dwitkows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.137])
 by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2019 00:42:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1569096654-24433-1-git-send-email-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1569096654-24433-1-git-send-email-swati2.sharma@intel.com>
Date: Mon, 23 Sep 2019 10:42:45 +0300
Message-ID: <878sqfihl6.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v4][PATCH 0/3] adding gamma state checker for icl+
 platforms
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAyMiBTZXAgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gSW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8g
dmFsaWRhdGUgZ2FtbWEgbHV0IHZhbHVlcwo+IGZvciBpY2VsYWtlKyBwbGF0Zm9ybXMuIEl0J3Mg
ZXh0ZW5zaW9uIG9mIHRoZQo+IHBhdGNoIHNlcmllcyBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvcGF0Y2gvMzI4MjQ2Lz9zZXJpZXM9NTgwMzkKPiB3aGljaCBlbmFibGVkIHRoZSBi
YXNpYyBpbmZyYXN0cnVjdHVyZSBhbmQgc3RhdGUgY2hlY2tlciBmb3IKPiBsZWdhY3kgcGxhdGZv
cm1zLgo+IE1ham9yIGNoYW5nZXMgZG9uZSBpbiBwYXRjaCAyLCBkZXRhaWxzIGluIGNvbW1pdCBt
ZXNzYWdlLgoKUHVzaGVkLCB0aGFua3MgZm9yIHRoZSBwYXRjaGVzLiBQbGVhc2UgZG8gZm9sbG93
LXVwIHdpdGggdGhlIHJlbWFpbmluZwptdWx0aSBzZWdtZW50ZWQgaXNzdWVzLgoKQlIsCkphbmku
CgoKPgo+IFN3YXRpIFNoYXJtYSAoMyk6Cj4gICBkcm0vaTkxNS9jb2xvcjogRml4IGZvcm1hdHRp
bmcgaXNzdWVzCj4gICBkcm0vaTkxNS9jb2xvcjogRXh0cmFjdCBpY2xfcmVhZF9sdXRzKCkKPiAg
IEZPUl9URVNUSU5HX09OTFk6IFByaW50IHJnYiB2YWx1ZXMgb2YgaHcgYW5kIHN3IGJsb2JzCj4K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMTY4ICsrKysr
KysrKysrKysrKysrKysrKystLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggICAgICAgICAgICB8ICAgNiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDEzOCBpbnNlcnRpb25z
KCspLCAzNiBkZWxldGlvbnMoLSkKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2Ug
R3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
