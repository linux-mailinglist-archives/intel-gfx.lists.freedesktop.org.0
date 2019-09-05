Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CA7AA5AA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 16:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0B1C6E102;
	Thu,  5 Sep 2019 14:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2562A6E102
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 14:22:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 07:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="195110402"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 05 Sep 2019 07:22:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 78C885C1FFB; Thu,  5 Sep 2019 17:22:27 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190905072921.7979-1-matthew.auld@intel.com>
References: <20190905072921.7979-1-matthew.auld@intel.com>
Date: Thu, 05 Sep 2019 17:22:27 +0300
Message-ID: <87o8zyu8kc.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/buddy: add missing call to
 i915_global_register
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPiB3cml0ZXM6Cgo+IFdlIGFyZSBt
ZWFudCB0byByZWdpc3RlciB0aGUga21lbSBjYWNoZSBhdCBpbml0LCBzdWNoIHRoZSBzdXBwbGll
ZCBleGl0Cj4gYW5kIHNocmluayBob29rcyBjYW4gYmUgY2FsbGVkLgo+Cj4gU2lnbmVkLW9mZi1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1p
a2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9idWRkeS5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
YnVkZHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuYwo+IGluZGV4IGZlMTg3
MWQ3YzEyNi4uZTlkNDIwMGNlM2JjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfYnVkZHkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYnVkZHkuYwo+
IEBAIC0zOCw2ICszOCw3IEBAIGludCBfX2luaXQgaTkxNV9nbG9iYWxfYnVkZHlfaW5pdCh2b2lk
KQo+ICAJaWYgKCFnbG9iYWwuc2xhYl9ibG9ja3MpCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+
ICsJaTkxNV9nbG9iYWxfcmVnaXN0ZXIoJmdsb2JhbC5iYXNlKTsKPiAgCXJldHVybiAwOwo+ICB9
Cj4gIAo+IC0tIAo+IDIuMjAuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
