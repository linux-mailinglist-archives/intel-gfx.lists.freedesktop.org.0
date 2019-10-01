Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE30AC3864
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 17:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06CA76E823;
	Tue,  1 Oct 2019 15:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE726E829
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 15:01:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 08:01:09 -0700
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="190615982"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 08:01:07 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lu Baolu <baolu.lu@linux.intel.com>
Date: Tue, 01 Oct 2019 17:01:02 +0200
Message-ID: <7739498.9tyZrNxj5X@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <2674326.ZPvzKFr69O@jkrzyszt-desk.ger.corp.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <52fbfac9-c879-4b45-dd74-fafe62c2432b@linux.intel.com>
 <2674326.ZPvzKFr69O@jkrzyszt-desk.ger.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] iommu/vt-d: Fix IOMMU field not
 populated on device hot re-plug
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQmFvbHUsCgpPbiBUdWVzZGF5LCBTZXB0ZW1iZXIgMywgMjAxOSA5OjQxOjIzIEFNIENFU1Qg
SmFudXN6IEtyenlzenRvZmlrIHdyb3RlOgo+IEhpIEJhb2x1LAo+IAo+IE9uIFR1ZXNkYXksIFNl
cHRlbWJlciAzLCAyMDE5IDM6Mjk6NDAgQU0gQ0VTVCBMdSBCYW9sdSB3cm90ZToKPiA+IEhpIEph
bnVzeiwKPiA+IAo+ID4gT24gOS8yLzE5IDQ6MzcgUE0sIEphbnVzeiBLcnp5c3p0b2ZpayB3cm90
ZToKPiA+ID4+IEkgYW0gbm90IHNheWluZyB0aGF0IGtlZXBpbmcgZGF0YSBpcyBub3QgYWNjZXB0
YWJsZS4gSSBqdXN0IHdhbnQgdG8KPiA+ID4+IGNoZWNrIHdoZXRoZXIgdGhlcmUgYXJlIGFueSBv
dGhlciBzb2x1dGlvbnMuCj4gPiA+IFRoZW4gcmV2ZXJ0aW5nIDQ1OGI3YzhlMGRkZSBhbmQgYXBw
bHlpbmcgdGhpcyBwYXRjaCBzdGlsbCByZXNvbHZlcyB0aGUgCj4gaXNzdWUKPiA+ID4gZm9yIG1l
LiAgTm8gZXJyb3JzIGFwcGVhciB3aGVuIG1hcHBpbmdzIGFyZSB1bm1hcHBlZCBvbiBkZXZpY2Ug
Y2xvc2UgYWZ0ZXIgCj4gdGhlCj4gPiA+IGRldmljZSBoYXMgYmVlbiByZW1vdmVkLCBhbmQgZG9t
YWluIGluZm8gcHJlc2VydmVkIG9uIGRldmljZSByZW1vdmFsIGlzCj4gPiA+IHN1Y2Nlc3NmdWxs
eSByZXVzZWQgb24gZGV2aWNlIHJlLXBsdWcuCj4gPiAKPiA+IFRoaXMgcGF0Y2ggZG9lc24ndCBs
b29rIGdvb2QgdG8gbWUgYWx0aG91Z2ggSSBhZ3JlZSB0aGF0IGtlZXBpbmcgZGF0YSBpcwo+ID4g
YWNjZXB0YWJsZS4gCgpBbnkgcHJvZ3Jlc3Mgd2l0aCB0aGF0PyAgV2hpY2ggbWFpbGluZyBsaXN0
IHNob3VsZCBJIHdhdGNoIGZvciB1cGRhdGVzPwoKVGhhbmtzLApKYW51c3oKCj4gPiBJdCB1cGRh
dGVzIGRldi0+YXJjaGRhdGEuaW9tbXUsIGJ1dCBsZWF2ZXMgdGhlIGhhcmR3YXJlCj4gPiBjb250
ZXh0L3Bhc2lkIHRhYmxlIHVuY2hhbmdlZC4gVGhpcyBtaWdodCBjYXVzZSBwcm9ibGVtcyBzb21l
d2hlcmUuCj4gPiAKPiA+ID4gCj4gPiA+IElzIHRoZXJlIGFueXRoaW5nIGVsc2UgSSBjYW4gZG8g
dG8gaGVscD8KPiA+IAo+ID4gQ2FuIHlvdSBwbGVhc2UgdGVsbCBtZSBob3cgdG8gcmVwcm9kdWNl
IHRoZSBwcm9ibGVtPyAKPiAKPiBUaGUgbW9zdCBzaW1wbGUgd2F5IHRvIHJlcHJvZHVjZSB0aGUg
aXNzdWUsIGFzc3VtaW5nIHRoZXJlIGFyZSBubyBub24tSW50ZWwgCj4gZ3JhcGhpY3MgYWRhcHRl
cnMgaW5zdGFsbGVkLCBpcyB0byBydW4gdGhlIGZvbGxvd2luZyBzaGVsbCBjb21tYW5kczoKPiAK
PiAjIS9iaW4vc2gKPiAjIGxvYWQgaTkxNSBtb2R1bGUKPiBtb2Rwcm9iZSBpOTE1Cj4gIyBvcGVu
IGFuIGk5MTUgZGV2aWNlIGFuZCBrZWVwIGl0IG9wZW4gaW4gYmFja2dyb3VuZAo+IGNhdCAvZGV2
L2RyaS9jYXJkMCA+L2Rldi9udWxsICYKPiBzbGVlcCAyCj4gIyBzaW11bGF0ZSBkZXZpY2UgdW5w
bHVnCj4gZWNobyAxID4vc3lzL2NsYXNzL2RybS9jYXJkMC9kZXZpY2UvcmVtb3ZlCj4gIyBtYWtl
IHRoZSBiYWNrZ3JvdW5kIHByb2Nlc3MgY2xvc2UgdGhlIGRldmljZSBvbiBleGl0Cj4ga2lsbCAk
IQo+IAo+IFRoYW5rcywKPiBKYW51c3oKPiAKPiAKPiA+IEtlZXBpbmcgdGhlIHBlcgo+ID4gZGV2
aWNlIGRvbWFpbiBpbmZvIHdoaWxlIGRldmljZSBpcyB1bnBsdWdnZWQgaXMgYSBiaXQgZGFuZ2Vy
b3VzIGJlY2F1c2UKPiA+IGluZm8tPmRldiBtaWdodCBiZSBhIHdpbGQgcG9pbnRlci4gV2UgbmVl
ZCB0byB3b3JrIG91dCBhIGNsZWFuIGZpeC4KPiA+IAo+ID4gPiAKPiA+ID4gVGhhbmtzLAo+ID4g
PiBKYW51c3oKPiA+ID4gCj4gPiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IEJhb2x1Cj4gPiAKPiAK
PiAKPiAKPiAKPiAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
