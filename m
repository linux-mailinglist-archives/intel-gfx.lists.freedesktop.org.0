Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1935FB64
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 18:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 503846E362;
	Thu,  4 Jul 2019 16:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EB46E362
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 16:03:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 09:03:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="166293732"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 04 Jul 2019 09:03:15 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 45E725C1EB5; Thu,  4 Jul 2019 19:03:08 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156225567088.25091.1560874213326601592@skylake-alporthouse-com>
References: <20190704154407.25551-1-mika.kuoppala@linux.intel.com>
 <156225567088.25091.1560874213326601592@skylake-alporthouse-com>
Date: Thu, 04 Jul 2019 19:03:08 +0300
Message-ID: <87y31d23er.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gtt: pde entry encoding is
 identical
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA0IDE2OjQ0OjA1KQo+PiArI2RlZmluZSBzZXRfcGRf
ZW50cnkocGQsIHBkZSwgdG8pICAoeyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+PiAr
ICAgICAgIF9fd3JpdGVfcGRfZW50cnkoKHBkKSwgKHBkZSksIHB4X2Jhc2UodG8pLCBnZW44X3Bk
ZV9lbmNvZGUpOyBcCj4+ICsgICAgICAgYXRvbWljX2luYygmKHBkKS0+dXNlZCk7ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4KPiBpbmMgYmVmb3JlIHdyaXRlIHNvIHRoYXQg
eW91IGhhdmUgYSBuaWNlIG9uaW9uIHdpdGggY2xlYXIuCj4KPj4gK30pCj4+ICsKPj4gKyNkZWZp
bmUgY2xlYXJfcGRfZW50cnkocGQsIHBkZSwgdG8pICh7ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXAo+Cj4gWW91IHdhbnQgdG8gcHVsbCB0aGUgR0VNX0JVR19PTiBoZXJlIHNvIHRoYXQg
aXMgdGlnaHRseSBjb3VwbGVkIHdpdGggdGhlCj4gYXRvbWljX2RlYyAtLSBpdCdzIGFuIHVuZGVy
ZmxvdyBjaGVjay4KCkkgdGhpbmsgSSB0cmllZCB0aGF0IGJ1dCBmb3VuZCBvdXQgdGhhdCB3aGVu
IHdlIGZyZWUgdGhlIHBwZ3R0LAp3ZSB3YW50IHRvIGJlIGZhc3QgYW5kIGRvbid0IGNhcmUgYWJv
dXQgdGhlIGNvdW50cyBtYXRjaGluZy4KCldlbGwsIHRoYXQgY291bGQgYmUgbWFkZSB0byBtYXRj
aCB0aG8uIEkgd2lsbCB0YWtlIGEgbG9vay4KCi1NaWthCgo+Cj4+ICsgICAgICAgX193cml0ZV9w
ZF9lbnRyeSgocGQpLCAocGRlKSwgcHhfYmFzZSh0byksIGdlbjhfcGRlX2VuY29kZSk7IFwKPj4g
KyAgICAgICBhdG9taWNfZGVjKCZwZC0+dXNlZCk7ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXAo+PiArfSkKPgo+IEkgd291bGQgaGF2ZSBwcmVmZXJyZWQgdGhlc2UgYXMg
aW5saW5lcyAoZXZlbiBpZiBtZWFucyAicGFzc2luZyIgYW4KPiBleHRyYSBhcmcpLCBidXQgbGV0
J3Mgc2VlIHdoYXQgdGhlIG5leHQgdHdvIHBhdGNoZXMgYnJpbmcuCj4gLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
