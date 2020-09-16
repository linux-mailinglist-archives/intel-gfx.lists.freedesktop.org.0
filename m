Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEAD26BE16
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 09:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9956E348;
	Wed, 16 Sep 2020 07:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF5B6E348
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 07:35:28 +0000 (UTC)
IronPort-SDR: qBczJaiCRNjF0O9EeKicGvWPAAmFrV95wGnXGKuva2eQgumHWln4bT3fRiwaTMxuqF/JFflTqm
 73b3PAXiFJcQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="156828214"
X-IronPort-AV: E=Sophos;i="5.76,432,1592895600"; d="scan'208";a="156828214"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 00:35:27 -0700
IronPort-SDR: 9Vmxrd+wZVsREgzKufMa6YiXUQGQzf+NUevPwi2WZFP6XzRcJgm7iJAVpD963TDWnGF8nG9eHq
 tm6BHUI7ZPbg==
X-IronPort-AV: E=Sophos;i="5.76,432,1592895600"; d="scan'208";a="483193231"
Received: from djgriffi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.8.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 00:35:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200916021541.500501-1-aditya.swarup@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200916021541.500501-1-aditya.swarup@intel.com>
Date: Wed, 16 Sep 2020 10:35:31 +0300
Message-ID: <87pn6mw4vw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Add max plane width
 for NV12 AUX plane for Gen10+ platforms
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxNSBTZXAgMjAyMCwgQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5j
b20+IHdyb3RlOgo+IEdlbiAxMCsgYW5kIEdlbjExKyBwbGF0Zm9ybXMgc3BlY2lmeSBkaWZmZXJl
bnQgbWF4IHBsYW5lIHdpZHRoIGZvcgo+IHBsYW5hciBmb3JtYXRzLiBBZGQgbWF4IHBsYW5lIHdp
ZHRoIGZvciBHTEsgYW5kIElDTCBiYXNlZCBvbgo+IEJTcGVjOiA3NjY2Cj4KPiBGaXhlczogMzcy
YjlmZmI1Nzk5ICgiZHJtL2k5MTU6IEZpeCBza2wrIG1heCBwbGFuZSB3aWR0aCIpCj4KCkZpeGVz
IGlzIHBhcnQgb2YgdGhlIHRhZ3M7IG5vIGJsYW5rIGxpbmVzIGhlcmUgcGxlYXNlLgoKPiBDYzog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDkgKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gaW5kZXggZjg2MjQwMzM4OGY2Li4xMTZmZWQxYjczMDYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0zOTg5LDcgKzM5ODksNyBA
QCBzdGF0aWMgaW50IHNrbF9jaGVja19udjEyX2F1eF9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFu
ZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpm
YiA9IHBsYW5lX3N0YXRlLT5ody5mYjsKPiAgCXVuc2lnbmVkIGludCByb3RhdGlvbiA9IHBsYW5l
X3N0YXRlLT5ody5yb3RhdGlvbjsKPiAgCWludCB1dl9wbGFuZSA9IDE7Cj4gLQlpbnQgbWF4X3dp
ZHRoID0gc2tsX21heF9wbGFuZV93aWR0aChmYiwgdXZfcGxhbmUsIHJvdGF0aW9uKTsKPiArCWlu
dCBtYXhfd2lkdGggPSAwOwoKV2UgZG9uJ3QgdXN1YWxseSBpbml0aWFsaXplIHRvIHplcm8gd2hl
biBhbGwgY29kZSBwYXRocyBiZWxvdyBpbml0aWFsaXplCnRoZSB2YXJpYWJsZSBiZWZvcmUgZmly
c3QgdXNlLgoKPiAgCWludCBtYXhfaGVpZ2h0ID0gNDA5NjsKPiAgCWludCB4ID0gcGxhbmVfc3Rh
dGUtPnVhcGkuc3JjLngxID4+IDE3Owo+ICAJaW50IHkgPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMu
eTEgPj4gMTc7Cj4gQEAgLTM5OTcsNiArMzk5NywxMyBAQCBzdGF0aWMgaW50IHNrbF9jaGVja19u
djEyX2F1eF9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCj4g
IAlpbnQgaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNzsK
PiAgCXUzMiBvZmZzZXQ7Cj4gIAo+ICsJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMSkKPiArCQlt
YXhfd2lkdGggPSBpY2xfbWF4X3BsYW5lX3dpZHRoKGZiLCB1dl9wbGFuZSwgcm90YXRpb24pOwo+
ICsJZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoaTkxNSkp
Cj4gKwkJbWF4X3dpZHRoID0gZ2xrX21heF9wbGFuZV93aWR0aChmYiwgdXZfcGxhbmUsIHJvdGF0
aW9uKTsKPiArCWVsc2UKPiArCQltYXhfd2lkdGggPSBza2xfbWF4X3BsYW5lX3dpZHRoKGZiLCB1
dl9wbGFuZSwgcm90YXRpb24pOwo+ICsKPiAgCWludGVsX2FkZF9mYl9vZmZzZXRzKCZ4LCAmeSwg
cGxhbmVfc3RhdGUsIHV2X3BsYW5lKTsKPiAgCW9mZnNldCA9IGludGVsX3BsYW5lX2NvbXB1dGVf
YWxpZ25lZF9vZmZzZXQoJngsICZ5LAo+ICAJCQkJCQkgICAgcGxhbmVfc3RhdGUsIHV2X3BsYW5l
KTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
