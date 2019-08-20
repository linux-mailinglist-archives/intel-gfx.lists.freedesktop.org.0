Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7670961FE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD1E6E804;
	Tue, 20 Aug 2019 14:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E99216E804
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:09:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 07:09:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="195778051"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 07:09:22 -0700
Date: Tue, 20 Aug 2019 19:38:49 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190820140848.GE7668@intel.com>
References: <20190820134019.13229-1-jani.nikula@intel.com>
 <20190820134019.13229-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820134019.13229-2-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/dp: avoid shadowing variables
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

T24gMjAxOS0wOC0yMCBhdCAxNjo0MDoxNiArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gRXZl
cnl0aGluZyBzZWVtcyB0byBiZSBhbGwgcmlnaHQsIGJ1dCBzaGFkb3dpbmcgaXMgdG8gYmUgYXZv
aWRlZC4KPiAKPiBDYzogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgpSZXZpZXdl
ZC1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgoKLVJhbQo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA4ICsrKystLS0tCj4g
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IDAwMWQ1MjA2NjBhOS4u
MGQ4YThjNDcyOTZiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Ywo+IEBAIC01ODIwLDcgKzU4MjAsNyBAQCBzdHJ1Y3QgaGRjcDJfZHBfbXNnX2RhdGEgewo+ICAJ
dTMyIHRpbWVvdXQyOyAvKiBBZGRlZCBmb3Igbm9uX3BhaXJlZCBzaXR1YXRpb24gKi8KPiAgfTsK
PiAgCj4gLXN0YXRpYyBzdHJ1Y3QgaGRjcDJfZHBfbXNnX2RhdGEgaGRjcDJfbXNnX2RhdGFbXSA9
IHsKPiArc3RhdGljIHN0cnVjdCBoZGNwMl9kcF9tc2dfZGF0YSBoZGNwMl9kcF9tc2dfZGF0YVtd
ID0gewo+ICAJeyBIRENQXzJfMl9BS0VfSU5JVCwgRFBfSERDUF8yXzJfQUtFX0lOSVRfT0ZGU0VU
LCBmYWxzZSwgMCwgMCB9LAo+ICAJeyBIRENQXzJfMl9BS0VfU0VORF9DRVJULCBEUF9IRENQXzJf
Ml9BS0VfU0VORF9DRVJUX09GRlNFVCwKPiAgCSAgZmFsc2UsIEhEQ1BfMl8yX0NFUlRfVElNRU9V
VF9NUywgMCB9LAo+IEBAIC01OTUxLDkgKzU5NTEsOSBAQCBzdGF0aWMgc3RydWN0IGhkY3AyX2Rw
X21zZ19kYXRhICpnZXRfaGRjcDJfZHBfbXNnX2RhdGEodTggbXNnX2lkKQo+ICB7Cj4gIAlpbnQg
aTsKPiAgCj4gLQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShoZGNwMl9tc2dfZGF0YSk7IGkr
KykKPiAtCQlpZiAoaGRjcDJfbXNnX2RhdGFbaV0ubXNnX2lkID09IG1zZ19pZCkKPiAtCQkJcmV0
dXJuICZoZGNwMl9tc2dfZGF0YVtpXTsKPiArCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGhk
Y3AyX2RwX21zZ19kYXRhKTsgaSsrKQo+ICsJCWlmIChoZGNwMl9kcF9tc2dfZGF0YVtpXS5tc2df
aWQgPT0gbXNnX2lkKQo+ICsJCQlyZXR1cm4gJmhkY3AyX2RwX21zZ19kYXRhW2ldOwo+ICAKPiAg
CXJldHVybiBOVUxMOwo+ICB9Cj4gLS0gCj4gMi4yMC4xCj4gCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
