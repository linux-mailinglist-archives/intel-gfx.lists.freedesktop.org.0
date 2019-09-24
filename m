Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26283BCBAE
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 17:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648AD6E9DE;
	Tue, 24 Sep 2019 15:41:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D116E9DE;
 Tue, 24 Sep 2019 15:41:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 08:41:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="213725939"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga004.fm.intel.com with ESMTP; 24 Sep 2019 08:41:17 -0700
Date: Tue, 24 Sep 2019 21:11:05 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20190924154105.GC24421@intel.com>
References: <20190923182325.24049-1-Bhawanpreet.Lakha@amd.com>
 <20190924095454.GE4019@platvala-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924095454.GE4019@platvala-desk.ger.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH] test/kms_content_protection: Use
 generic debugfs name for HDCP caps
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

T24gMjAxOS0wOS0yNCBhdCAxMjo1NDo1NCArMDMwMCwgUGV0cmkgTGF0dmFsYSB3cm90ZToKPiBP
biBNb24sIFNlcCAyMywgMjAxOSBhdCAwMjoyMzoyNVBNIC0wNDAwLCBCaGF3YW5wcmVldCBMYWto
YSB3cm90ZToKPiA+IFJlbmFtZSAiaTkxNV9oZGNwX3NpbmtfY2FwYWJpbGl0eSIgdG8gImhkY3Bf
c2lua19jYXBhYmlsaXR5Igo+ID4gCj4gPiBUaGUgY29udGVudCBwcm90ZWN0aW9uIHRlc3RzIG9u
bHkgc3RhcnQgaWYgdGhpcyBkZWJ1Z2ZzIGVudHJ5IGV4aXN0cy4KPiA+IFNpbmNlIHRoZSBuYW1l
IGlzIHNwZWNpZmljIHRvIGludGVsIGRyaXZlciB0aGVzZSB0ZXN0cyBjYW5ub3QgYmUgdXNlZCB3
aXRoCj4gPiBvdGhlciBkcml2ZXJzLgo+ID4gCj4gPiBSZW1vdmUgImk5MTUiIHNvIHRoZSBkZWJ1
Z2ZzIG5hbWUgaXMgZ2VuZXJpYy4KPiAKPiBJIGRvbid0IHNlZSBhbnkgZHJpdmVycyBjdXJyZW50
bHkgdXNpbmcgdGhlIG5hbWUKPiAiaGRjcF9zaW5rX2NhcGFiaWxpdHkiLiBJcyB0aGUgY29udGVu
dCBvZiB0aGUgZmlsZSBpbiBvdGhlciBkcml2ZXJzCj4gdGhlIHNhbWUgYXMgaTkxNSdzPwo+IAo+
IEFuZCBpcyB0aGVyZSBhIHBsYW4gdG8gcmVuYW1lIGk5MTUncyBkZWJ1Z2ZzIGZpbGVuYW1lIHRv
Cj4gaGRjcF9zaW5rX2NhcGFiaWxpdHk/IFJhbT8KPiAKPiBBZ3JlZWQsIGZvciBhIERSSVZFUl9B
TlktdXNpbmcgdGVzdCBnZW5lcmljIG5hbWVzIGFyZSBwcmVmZXJyYWJsZSwgYnV0Cj4gdGhpcyBu
ZWVkcyBzb21lIGtpbmQgb2YgYSB0cmFuc2l0aW9uIHBsYW4uIElmIGk5MTUncyBmaWxlbmFtZSBp
cwo+IHN0YXlpbmcgYXMgaXMsIGJvdGggbmFtZXMgbmVlZCB0byBiZSB0cmllZC4KVGhpcyBJR1Qg
dGVzdCBjaGFuZ2UgaGFzIHRvIHdhaXQgdW50aWxsIHdlIGhhdmUgdGhlCmk5MTVfaGRjcF9zaW5r
X2NhcGFiaWxpdGllcyByZW5hbWVkLCBpZiBhdCBhbGwgd2UgcmVuYW1lLgoKRWxzZSBiYXNlZCBv
biBkcm1fZGV2aWNlIHdlIGNvdWxkIGRlY2lkZSB0aGUgZGVidWdmcyBmaWxlIGFuZCByZWFkIGl0
LgoKRGFuaWVsLApDb25zaWRlcmluZyBhbGwgb3RoZXIgZGVidWdmcyBhcmUgcHJlZml4ZWQgd2l0
aCBpOTE1LCBjb3VsZCB3ZSByZW5hbWUgdGhpcwpkZWJ1Z2ZzIGFzICJoZGNwX3NpbmtfY2FwYWJp
bGl0aWVzIiBpbnN0ZWFkPwoKLVJhbQo+IAo+IAo+IC0tIAo+IFBldHJpIExhdHZhbGEKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
