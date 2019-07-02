Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1885CF7E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 14:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB7889949;
	Tue,  2 Jul 2019 12:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7198089949
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 12:32:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 05:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="174578831"
Received: from bgrossx-mobl.ger.corp.intel.com (HELO [10.249.141.25])
 ([10.249.141.25])
 by orsmga002.jf.intel.com with ESMTP; 02 Jul 2019 05:32:36 -0700
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
 <20190628120720.21682-4-lionel.g.landwerlin@intel.com>
 <87woh039g5.fsf@gaia.fi.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d1292ee6-ab77-5a3c-1a61-af74c2aaee6b@intel.com>
Date: Tue, 2 Jul 2019 15:32:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <87woh039g5.fsf@gaia.fi.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 3/3] drm/i915/icl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDIvMDcvMjAxOSAxNTozMCwgTWlrYSBLdW9wcGFsYSB3cm90ZToKPiBMaW9uZWwgTGFuZHdl
cmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+IHdyaXRlczoKPgo+PiBUaGUgc2Ft
ZSB0ZXN0cyBmYWlsaW5nIG9uIENGTCsgcGxhdGZvcm1zIGFyZSBhbHNvIGZhaWxpbmcgb24gSUNM
Lgo+PiBEb2N1bWVudGF0aW9uIGRvZXNuJ3QgbGlzdCB0aGUKPj4gV2FBbGxvd1BNRGVwdGhBbmRJ
bnZvY2F0aW9uQ291bnRBY2Nlc3NGcm9tVU1EIHdvcmthcm91bmQgZm9yIElDTCBidXQKPj4gYXBw
bHlpbmcgaXQgZml4ZXMgdGhlIHNhbWUgdGVzdHMgYXMgQ0ZMLgo+IERpZG4ndCBmaW5kIG1vcmUg
ZG9jdW1lbnRhdGlvbiBlaXRoZXIgYnV0IEkgaGF2ZSBhc2tlZAo+IGZvciB0aGUgd2EgYXV0aG9y
IGZvciB1cGRhdGUuCgoKSSd2ZSBmaWxlZCBhbiBpc3N1ZSBvbiB0aGUgcmVnaXN0ZXIgZGVmaW5p
dGlvbiAobWF5YmUgYSB3ZWVrIGFnbyksIHNvIApmYXIgbm8gcmVzcG9uc2UuCgpIb3BlZnVsbHkg
eW91IGdldCBsdWNraWVyIDspCgoKLUxpb25lbAoKCj4KPj4gdjI6IFVzZSBvbmx5IG9uZSB3aGl0
ZWxpc3QgZW50cnkgKExpb25lbCkKPj4KPj4gU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJs
aW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+PiBUZXN0ZWQtYnk6ICBBbnVqIFBo
b2dhdCA8YW51ai5waG9nYXRAZ21haWwuY29tPgo+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
Zwo+IFRoZSByZWdpc3RlciBvZmZzZXRzIGFyZSB0aGUgc2FtZSBzbyB3ZSBjYW4ndCByZWFsbHkg
ZG8KPiBoYXJtIHdpdGggdGhpcyBzbyB3ZSBnbyB3aXRoIHRoZSBldmlkZW5jZSwKPgo+IFJldmll
d2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+
PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwg
MTMgKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+PiBpbmRl
eCBiMTE3NTgzZTM4YmIuLmE5MDhkODI5ZDZiZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4+IEBAIC0xMTM4LDYgKzExMzgsMTkgQEAgc3Rh
dGljIHZvaWQgaWNsX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCj4+ICAgCj4+ICAgCQkvKiBXYUVuYWJsZVN0YXRlQ2FjaGVSZWRpcmVjdFRvQ1M6aWNsICov
Cj4+ICAgCQl3aGl0ZWxpc3RfcmVnKHcsIEdFTjlfU0xJQ0VfQ09NTU9OX0VDT19DSElDS0VOMSk7
Cj4+ICsKPj4gKwkJLyoKPj4gKwkJICogV2FBbGxvd1BNRGVwdGhBbmRJbnZvY2F0aW9uQ291bnRB
Y2Nlc3NGcm9tVU1EOmljbAo+PiArCQkgKgo+PiArCQkgKiBUaGlzIGNvdmVycyA0IHJlZ2lzdGVy
IHdoaWNoIGFyZSBuZXh0IHRvIG9uZSBhbm90aGVyIDoKPj4gKwkJICogICAtIFBTX0lOVk9DQVRJ
T05fQ09VTlQKPj4gKwkJICogICAtIFBTX0lOVk9DQVRJT05fQ09VTlRfVURXCj4+ICsJCSAqICAg
LSBQU19ERVBUSF9DT1VOVAo+PiArCQkgKiAgIC0gUFNfREVQVEhfQ09VTlRfVURXCj4+ICsJCSAq
Lwo+PiArCQl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBQU19JTlZPQ0FUSU9OX0NPVU5ULAo+PiArCQkJ
CSAgUklOR19GT1JDRV9UT19OT05QUklWX1JEIHwKPj4gKwkJCQkgIFJJTkdfRk9SQ0VfVE9fTk9O
UFJJVl9SQU5HRV80KTsKPj4gICAJCWJyZWFrOwo+PiAgIAo+PiAgIAljYXNlIFZJREVPX0RFQ09E
RV9DTEFTUzoKPj4gLS0gCj4+IDIuMjEuMC4zOTIuZ2Y4ZjY3ODcxNTllCj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
