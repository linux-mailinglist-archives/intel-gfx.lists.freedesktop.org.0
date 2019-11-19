Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5269E10236E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 12:40:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D416E90B;
	Tue, 19 Nov 2019 11:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24616E90B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 11:40:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:40:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="209395798"
Received: from shivamur-mobl1.gar.corp.intel.com ([10.249.254.182])
 by orsmga006.jf.intel.com with ESMTP; 19 Nov 2019 03:40:17 -0800
To: intel-gfx@lists.freedesktop.org
References: <20191119113710.1162-1-abdiel.janulgue@linux.intel.com>
 <20191119113710.1162-2-abdiel.janulgue@linux.intel.com>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <c44de16b-8c39-3997-952a-32198585b428@linux.intel.com>
Date: Tue, 19 Nov 2019 13:40:16 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191119113710.1162-2-abdiel.janulgue@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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

Ck9uIDE5LzExLzIwMTkgMTMuMzcsIEFiZGllbCBKYW51bGd1ZSB3cm90ZToKCj4gK3N0cnVjdCBk
cm1faTkxNV9nZW1fbW1hcF9vZmZzZXQgewo+ICsJLyoqIEhhbmRsZSBmb3IgdGhlIG9iamVjdCBi
ZWluZyBtYXBwZWQuICovCj4gKwlfX3UzMiBoYW5kbGU7Cj4gKwlfX3UzMiBwYWQ7Cj4gKwkvKioK
PiArCSAqIEZha2Ugb2Zmc2V0IHRvIHVzZSBmb3Igc3Vic2VxdWVudCBtbWFwIGNhbGwKPiArCSAq
Cj4gKwkgKiBUaGlzIGlzIGEgZml4ZWQtc2l6ZSB0eXBlIGZvciAzMi82NCBjb21wYXRpYmlsaXR5
Lgo+ICsJICovCj4gKwlfX3U2NCBvZmZzZXQ7Cj4gKwo+ICsJLyoqCj4gKwkgKiBGbGFncyBmb3Ig
ZXh0ZW5kZWQgYmVoYXZpb3VyLgo+ICsJICoKPiArCSAqIEl0IGlzIG1hbmRhdG9yeSB0aGF0IGVp
dGhlciBvbmUgb2YgdGhlIE1NQVBfT0ZGU0VUIGZsYWdzCj4gKwkgKiBzaG91bGQgYmUgcGFzc2Vk
IGhlcmUuCj4gKwkgKi8KPiArCV9fdTY0IGZsYWdzOwo+ICsjZGVmaW5lIEk5MTVfTU1BUF9PRkZT
RVRfR1RUIDAKPiArI2RlZmluZSBJOTE1X01NQVBfT0ZGU0VUX1dDICAxCj4gKyNkZWZpbmUgSTkx
NV9NTUFQX09GRlNFVF9XQiAgMgo+ICsjZGVmaW5lIEk5MTVfTU1BUF9PRkZTRVRfVUMgIDMKPiAr
Cj4gKwlfX3U2NCBleHRlbnNpb25zOwo+ICt9OwoKVGhlIHNpbXBsZSBtZW1zZXQgSUdUIHBvcnRp
b24gb2YgdGhpcywgY29taW5nIHVwIHNvb24uCgotQWJkaWVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
