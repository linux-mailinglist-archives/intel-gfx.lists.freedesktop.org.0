Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A44D76257
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 11:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAA46ECEF;
	Fri, 26 Jul 2019 09:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 066E96ECEF
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 09:48:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 02:48:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,310,1559545200"; d="scan'208";a="254275251"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga001.jf.intel.com with ESMTP; 26 Jul 2019 02:48:33 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6Q9mWql003315; Fri, 26 Jul 2019 10:48:32 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190725205106.36148-1-michal.wajdeczko@intel.com>
 <156409104874.30723.3136641710682253705@skylake-alporthouse-com>
 <op.z5ip8pwoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <156412931748.30723.17647242551624294517@skylake-alporthouse-com>
Date: Fri, 26 Jul 2019 11:48:31 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5i365ibxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <156412931748.30723.17647242551624294517@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Don't sanitize guc_log_level
 modparam
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNiBKdWwgMjAxOSAxMDoyMTo1NyArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNy0yNiAwNTo0NzowMykKPj4gT24gVGh1LCAyNSBKdWwgMjAxOSAyMzo0NDowOCArMDIw
MCwgQ2hyaXMgV2lsc29uCj4+IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+Pgo+
PiA+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAoMjAxOS0wNy0yNSAyMTo1MTowNikKPj4gPj4g
V2UgYXJlIGFscmVhZHkgc3RvcmluZyBydW50aW1lIHZhbHVlIG9mIGxvZyBsZXZlbCBpbiBwcml2
YXRlCj4+ID4+IGZpZWxkLCBzbyB0aGVyZSBpcyBubyBuZWVkIHRvIG1vZGlmeSBtb2RwYXJhbS4K
Pj4gPgo+PiA+IFRoZXJlIGlzIGFuIGFzcGVjdCBvZiBjb21tdW5pY2F0aW5nIHRoZSBjbGFtcGVk
IHZhbHVlIGJhY2sgdG8gdGhlICAKPj4gdXNlci4KPj4gPiBEb2VzIHRoYXQgaGF2ZSBhbnkgdmFs
dWUgb3IgYWx0ZXJuYXRpdmU/Cj4+Cj4+IEFjdHVhbCAoY2xhbXBlZCBvciBkZWZhdWx0KSB2YWx1
ZSBvZiB0aGUgR3VDIGxvZyBsZXZlbCBpcyBleHBvc2VkIGluCj4+IGk5MTVfZ3VjX2xvZ19sZXZl
bCBkZWJ1Z2ZzIGVudHJ5LiBVc2VyIGNhbiBtb2RpZnkgaXQgZnJvbSB0aGVyZSB0b28uCj4KPiBX
aHk/IDopIEkgZmFpbCB0byBzZWUgd2h5IHdlIGhhdmUgdHdvIG1ldGhvZHMgb2Ygc2V0dGluZyBh
IHZhcmlhYmxlLCBpZgo+IHdlIHdhbnQgYSBjYWxsYmFjayBvbiBtb2RwYXJhbSB3ZSBjYW4gc3Vw
cGx5IGEgcGFyYW1fb3BzLnNldCgpLi4uCgpTaW5nbGUgbW9kcGFyYW0gdmFsdWUgbWF5IG5vdCB3
b3JrIGluIHRoZSBmdXR1cmUgYXMgd2UgbWF5IGhhdmUgdG8gc3VwcG9ydAptdWx0aXBsZSBkZXZp
Y2VzIG9uIHNpbmdsZSBwbGF0Zm9ybS4gVGhlcmUgd2lsbCBiZSBtb3JlIHNpbWlsYXIgY2hhbmdl
cwphcm91bmQgb3RoZXIgZ3VjIG1vZHBhcmFtcyBpbiBhIG1vbWVudC4KCk1pY2hhbApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
