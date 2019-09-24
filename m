Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC5ABC446
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 10:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024F36E993;
	Tue, 24 Sep 2019 08:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5009B6E986;
 Tue, 24 Sep 2019 08:49:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 01:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="203335680"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga001.fm.intel.com with ESMTP; 24 Sep 2019 01:49:17 -0700
Date: Tue, 24 Sep 2019 11:49:20 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190924084920.GE2884@intel.intel>
References: <20190923074149.19753-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923074149.19753-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Include non-context
 based tests for older kms testing
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBNb24sIFNlcCAyMywgMjAxOSBhdCAwODo0MTo0OUFNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gQXMgbm90IGV2ZXJ5IG1hY2hpbmUgY2FuIHVzZSBjb250ZXh0cywg
aW5jbHVkZSBhIG5vbi1jb250ZXh0IHJlc2V0IHN0cmVzcwo+IHRlc3QgdG8gcnVuIGluIHBhcmFs
bGVsIHRvIGVuYWJsaW5nL2Rpc2FibGluZyBwaXBlcy4KCm1ha2VzIHNlbnNlLgoKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAg
dGVzdHMvaTkxNS9nZW1fZWlvLmMgfCA3ICsrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9n
ZW1fZWlvLmMgYi90ZXN0cy9pOTE1L2dlbV9laW8uYwo+IGluZGV4IGU3ZjVkNGRkYi4uNTJlODNh
NWNmIDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCj4gKysrIGIvdGVzdHMvaTkx
NS9nZW1fZWlvLmMKPiBAQCAtODcwLDggKzg3MCwxMSBAQCBzdGF0aWMgdm9pZCB0ZXN0X2ttcyhp
bnQgaTkxNSwgaWd0X2Rpc3BsYXlfdCAqZHB5KQo+ICAJaWd0X2ZvcmsoY2hpbGQsIDEpCj4gIAkJ
ZGlzcGxheV9oZWxwZXIoZHB5LCBzaGFyZWQpOwo+ICAKPiAtCXRlc3RfcmVzZXRfc3RyZXNzKGk5
MTUsIDApOwo+IC0JdGVzdF9yZXNldF9zdHJlc3MoaTkxNSwgVEVTVF9XRURHRSk7Cj4gKwl0ZXN0
X2luZmxpZ2h0KGk5MTUsIDApOwo+ICsJaWYgKGdlbV9oYXNfY29udGV4dHMoZmQpKSB7Cgpjb25z
aWRlcmluZyB0aGF0IGluIHYyIEkgYW0gc3VyZSB5b3UgYXJlIGdvaW5nIHRvIHByb3ZpZGUgYW4g
ZmQKb2YgInNvbWUgc29ydCIgOikKClJldmVpd2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRp
QGludGVsLmNvbT4KClRoYW5rcywKQW5kaQoKPiArCQl0ZXN0X3Jlc2V0X3N0cmVzcyhpOTE1LCAw
KTsKPiArCQl0ZXN0X3Jlc2V0X3N0cmVzcyhpOTE1LCBURVNUX1dFREdFKTsKPiArCX0KPiAgCj4g
IAkqc2hhcmVkID0gMTsKPiAgCWlndF93YWl0Y2hpbGRyZW4oKTsKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
