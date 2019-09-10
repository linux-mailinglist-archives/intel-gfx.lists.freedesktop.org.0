Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A027AE1A7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 02:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA5189CA0;
	Tue, 10 Sep 2019 00:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD0989CA0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 00:21:14 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 17:21:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="178510752"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga008.jf.intel.com with ESMTP; 09 Sep 2019 17:21:13 -0700
Date: Mon, 9 Sep 2019 17:21:13 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20190910002113.GA24552@orsosgc001.amr.corp.intel.com>
References: <20190909093116.7747-1-lionel.g.landwerlin@intel.com>
 <20190909093116.7747-5-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909093116.7747-5-lionel.g.landwerlin@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH v16 04/13] drm/i915/perf: store the
 associated engine of a stream
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVybGlnZS5yYW1hcHBh
QGludGVsLmNvbT4KClJlZ2FyZHMsClVtZXNoCgpPbiBNb24sIFNlcCAwOSwgMjAxOSBhdCAxMjoz
MTowN1BNICswMzAwLCBMaW9uZWwgTGFuZHdlcmxpbiB3cm90ZToKPldlJ2xsIHVzZSB0aGlzIGlu
Zm9ybWF0aW9uIGxhdGVyIHRvIHZlcmlmeSB0aGF0IGEgY2xpZW50IHRyeWluZyB0bwo+cmVjb25m
aWd1cmUgdGhlIHN0cmVhbSBkb2VzIHNvIG9uIHRoZSByaWdodCBlbmdpbmUuCj4KPlNpZ25lZC1v
ZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4K
Pi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggIHwgNSArKysrKwo+IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgNyArKysrKysrCj4gMiBmaWxlcyBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+aW5kZXggNzU2MDc0
NTBiYTAwLi4yNzRhMTE5M2Q0ZjAgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj5AQCAtMTA4
OCw2ICsxMDg4LDExIEBAIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtIHsKPiAJICovCj4gCWludGVs
X3dha2VyZWZfdCB3YWtlcmVmOwo+Cj4rCS8qKgo+KwkgKiBAZW5naW5lOiBFbmdpbmUgYXNzb2Np
YXRlZCB3aXRoIHRoaXMgcGVyZm9ybWFuY2Ugc3RyZWFtLgo+KwkgKi8KPisJc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lOwo+Kwo+IAkvKioKPiAJICogQHNhbXBsZV9mbGFnczogRmxhZ3Mg
cmVwcmVzZW50aW5nIHRoZSBgRFJNX0k5MTVfUEVSRl9QUk9QX1NBTVBMRV8qYAo+IAkgKiBwcm9w
ZXJ0aWVzIGdpdmVuIHdoZW4gb3BlbmluZyBhIHN0cmVhbSwgcmVwcmVzZW50aW5nIHRoZSBjb250
ZW50cwo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPmluZGV4IGQxOGNkMzMyYWZiNy4uOWQ1YTM1
MjJhYTM1IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj5AQCAtMzYzLDYgKzM2Myw4IEBA
IHN0cnVjdCBwZXJmX29wZW5fcHJvcGVydGllcyB7Cj4gCWludCBvYV9mb3JtYXQ7Cj4gCWJvb2wg
b2FfcGVyaW9kaWM7Cj4gCWludCBvYV9wZXJpb2RfZXhwb25lbnQ7Cj4rCj4rCXN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZTsKPiB9Owo+Cj4gc3RhdGljIGVudW0gaHJ0aW1lcl9yZXN0YXJ0
IG9hX3BvbGxfY2hlY2tfdGltZXJfY2Ioc3RydWN0IGhydGltZXIgKmhydGltZXIpOwo+QEAgLTIy
MDEsNiArMjIwMyw4IEBAIHN0YXRpYyBpbnQgaTkxNV9vYV9zdHJlYW1faW5pdChzdHJ1Y3QgaTkx
NV9wZXJmX3N0cmVhbSAqc3RyZWFtLAo+Cj4gCWZvcm1hdF9zaXplID0gZGV2X3ByaXYtPnBlcmYu
b2FfZm9ybWF0c1twcm9wcy0+b2FfZm9ybWF0XS5zaXplOwo+Cj4rCXN0cmVhbS0+ZW5naW5lID0g
cHJvcHMtPmVuZ2luZTsKPisKPiAJc3RyZWFtLT5zYW1wbGVfZmxhZ3MgfD0gU0FNUExFX09BX1JF
UE9SVDsKPiAJc3RyZWFtLT5zYW1wbGVfc2l6ZSArPSBmb3JtYXRfc2l6ZTsKPgo+QEAgLTI4NDMs
NiArMjg0Nyw5IEBAIHN0YXRpYyBpbnQgcmVhZF9wcm9wZXJ0aWVzX3VubG9ja2VkKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAJCXJldHVybiAtRUlOVkFMOwo+IAl9Cj4KPisJ
LyogQXQgdGhlIG1vbWVudCB3ZSBvbmx5IHN1cHBvcnQgdXNpbmcgaTkxNS1wZXJmIG9uIHRoZSBS
Q1MuICovCj4rCXByb3BzLT5lbmdpbmUgPSBkZXZfcHJpdi0+ZW5naW5lW1JDUzBdOwo+Kwo+IAkv
KiBDb25zaWRlcmluZyB0aGF0IElEID0gMCBpcyByZXNlcnZlZCBhbmQgYXNzdW1pbmcgdGhhdCB3
ZSBkb24ndAo+IAkgKiAoY3VycmVudGx5KSBleHBlY3QgYW55IGNvbmZpZ3VyYXRpb25zIHRvIGV2
ZXIgc3BlY2lmeSBkdXBsaWNhdGUKPiAJICogdmFsdWVzIGZvciBhIHBhcnRpY3VsYXIgcHJvcGVy
dHkgSUQgdGhlbiB0aGUgbGFzdCBfUFJPUF9NQVggdmFsdWUgaXMKPi0tIAo+Mi4yMy4wCj4KPl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5JbnRlbC1nZngg
bWFpbGluZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
