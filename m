Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4743ACC65
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 15:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69BEC6EA09;
	Fri, 18 Jun 2021 13:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D4AD6EA09;
 Fri, 18 Jun 2021 13:36:18 +0000 (UTC)
IronPort-SDR: Dfq+il1k0EPpA+y6wM7ZS6+S67yfEU8xlWj2UDn/BC/PwRYa2rpvPLp2R5XriruVaiUOgIo2Jd
 7TdY5UBNcc1w==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="204725016"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="204725016"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 06:36:17 -0700
IronPort-SDR: aLAi3Pz4MAdU/vvHMvsJku9T3F4sxZttYbLvQNOgwYoVJcvIjC5gwkXzQAkII+JW40blTgmE7b
 vSDkvJNOl4lA==
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="638158533"
Received: from jhogberg-mobl1.ger.corp.intel.com (HELO [10.249.254.60])
 ([10.249.254.60])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 06:36:14 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210618133150.700375-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <a188086b-0f54-db4c-7c1c-06c29de8d5a6@linux.intel.com>
Date: Fri, 18 Jun 2021 15:36:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210618133150.700375-1-matthew.auld@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: add back the
 selftest() hook for the buddy
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkuCgpPbiA2LzE4LzIxIDM6MzEgUE0sIE1hdHRoZXcgQXVsZCB3cm90ZToKPiBXaGVuIHdlIHJl
c3VycmVjdGVkIHRoZSBzZWxmdGVzdCB3ZSBmb3Jnb3QgdG8gYWRkIGJhY2sgdGhlIHNlbGZ0ZXN0
KCkKPiBob29rLCBtZWFuaW5nIHRoZSB0ZXN0IGlzIG5vdCBjdXJyZW50bHkgcnVuLgo+Cj4gUmVw
b3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiBDYzogVGhvbWFzIEhl
bGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgoKRG8gd2UgbmVlZCBh
IEZpeGVzOiB0YWc/CgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxs
c3Ryb21AbGludXguaW50ZWwuY29tPgoKCj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9tb2NrX3NlbGZ0ZXN0cy5oIHwgMSArCj4gICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvaTkxNV9tb2NrX3NlbGZ0ZXN0cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfbW9ja19zZWxmdGVzdHMuaAo+IGluZGV4IDM0ZTVjYWYzODA5My4uNjc1OWI1NjA4
NmZiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X21v
Y2tfc2VsZnRlc3RzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9tb2NrX3NlbGZ0ZXN0cy5oCj4gQEAgLTM0LDMgKzM0LDQgQEAgc2VsZnRlc3QoZ3R0LCBpOTE1
X2dlbV9ndHRfbW9ja19zZWxmdGVzdHMpCj4gICBzZWxmdGVzdChodWdlcGFnZXMsIGk5MTVfZ2Vt
X2h1Z2VfcGFnZV9tb2NrX3NlbGZ0ZXN0cykKPiAgIHNlbGZ0ZXN0KGNvbnRleHRzLCBpOTE1X2dl
bV9jb250ZXh0X21vY2tfc2VsZnRlc3RzKQo+ICAgc2VsZnRlc3QobWVtb3J5X3JlZ2lvbiwgaW50
ZWxfbWVtb3J5X3JlZ2lvbl9tb2NrX3NlbGZ0ZXN0cykKPiArc2VsZnRlc3QoYnVkZHksIGk5MTVf
YnVkZHlfbW9ja19zZWxmdGVzdHMpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
