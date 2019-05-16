Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 083AD20749
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 14:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26ECB8947A;
	Thu, 16 May 2019 12:52:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A466C8947A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 12:52:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 05:52:05 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 05:52:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Harish Chegondi <harish.chegondi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <4410fcc9-4989-99eb-dc38-f568056b189f@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1557985315.git.harish.chegondi@intel.com>
 <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
 <4410fcc9-4989-99eb-dc38-f568056b189f@linux.intel.com>
Date: Thu, 16 May 2019 15:55:25 +0300
Message-ID: <87a7fma79e.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: skip the second CRC even for
 GEN 7 GPUs
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxNiBNYXkgMjAxOSwgTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0
QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gT3AgMTYtMDUtMjAxOSBvbSAwNzo1OCBzY2hyZWVm
IEhhcmlzaCBDaGVnb25kaToKPj4gZGlzcGxheV9waXBlX2NyY19pcnFfaGFuZGxlcigpIHNraXBz
IHRoZSBmaXJzdCBDUkMgZm9yIGFsbCBHUFVzIGFuZCB0aGUKPj4gc2Vjb25kIENSQyBmb3IgR0VO
OCsgR1BVcy4gVGhlIHNlY29uZCBDUkMgaXMgaW52YWxpZCBldmVuIGZvciBCWVQgd2hpY2gKPj4g
aXMgYSBHRU43IEdQVS4gU28sIHNraXAgdGhlIHNlY29uZCBDUkMgZXZlbiBmb3IgR0VONyBHUFVz
Lgo+Pgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gQ2M6IFRv
bWkgU2FydmVsYSA8dG9taS5wLnNhcnZlbGFAaW50ZWwuY29tPgo+PiBDYzogUGV0cmkgTGF0dmFs
YSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+Cj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSGFyaXNoIENo
ZWdvbmRpIDxoYXJpc2guY2hlZ29uZGlAaW50ZWwuY29tPgo+PiBSZWZlcmVuY2VzOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxOTEKPj4gLS0tCj4+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgNCArKy0tCj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKPj4gaW5kZXggMjMzMjExZmRlMGVhLi4zODA5ZTlmN2ZhZTIgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYwo+PiBAQCAtMTc3NSwxMSArMTc3NSwxMSBAQCBzdGF0aWMgdm9pZCBk
aXNwbGF5X3BpcGVfY3JjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKPj4gIAkgKiBib25rZXJzLiBTbyBsZXQncyBqdXN0IHdhaXQgZm9yIHRoZSBuZXh0IHZi
bGFuayBhbmQgcmVhZAo+PiAgCSAqIG91dCB0aGUgYnVnZ3kgcmVzdWx0Lgo+PiAgCSAqCj4+IC0J
ICogT24gR0VOOCsgc29tZXRpbWVzIHRoZSBzZWNvbmQgQ1JDIGlzIGJvbmtlcnMgYXMgd2VsbCwg
c28KPj4gKwkgKiBPbiBHRU43KyBzb21ldGltZXMgdGhlIHNlY29uZCBDUkMgaXMgYm9ua2VycyBh
cyB3ZWxsLCBzbwo+PiAgCSAqIGRvbid0IHRydXN0IHRoYXQgb25lIGVpdGhlci4KPj4gIAkgKi8K
Pj4gIAlpZiAocGlwZV9jcmMtPnNraXBwZWQgPD0gMCB8fAo+PiAtCSAgICAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSA4ICYmIHBpcGVfY3JjLT5za2lwcGVkID09IDEpKSB7Cj4+ICsJICAgIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDcgJiYgcGlwZV9jcmMtPnNraXBwZWQgPT0gMSkpIHsKPj4gIAkJ
cGlwZV9jcmMtPnNraXBwZWQrKzsKPj4gIAkJc3Bpbl91bmxvY2soJnBpcGVfY3JjLT5sb2NrKTsK
Pj4gIAkJcmV0dXJuOwo+Cj4gSSB3b3VsZCBiZSBpbnRlcmVzdGVkIGluIHRoZSByZXN1bHRzLCBo
YXN3ZWxsIGlzIGRpZmZlcmVudCBmcm9tCj4gVkxWLiBIYXMgaXQgZXZlciBiZWVuIG9ic2VydmVk
IG9uIHRoYXQgcGxhdGZvcm0/CgpHb29kIHBvaW50LiBJIGxvb2tlZCBhdCBbMV0gd2hpY2ggSSBw
cmVzdW1lZCB3YXMgb24gVkxWLCBidXQgaXQgc2F5cwpub3RoaW5nIGFib3V0IEhTVy4KCkJSLApK
YW5pLgoKCgpbMV0gaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTAzMTkxI2MzNAoKCj4KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
