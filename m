Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EB14D57C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 19:56:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19C96E5E1;
	Thu, 20 Jun 2019 17:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A0F6E5E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 17:56:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 10:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="311741879"
Received: from unknown (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 20 Jun 2019 10:56:12 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190619214351.12000-1-daniele.ceraolospurio@intel.com>
 <20190619214351.12000-3-daniele.ceraolospurio@intel.com>
 <156103852821.664.1230107661333517163@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <3292194c-55cc-77e7-2305-262526937e10@intel.com>
Date: Thu, 20 Jun 2019 10:55:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156103852821.664.1230107661333517163@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: handle GuC messages
 received with CTB disabled
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA2LzIwLzE5IDY6NDggQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDYtMTkgMjI6NDM6NTEpCj4+ICsvKgo+PiArICogRXZl
bnRzIHRyaWdnZXJlZCB3aGlsZSBDVCBidWZmZXJzIGFyZSBkaXNhYmxlZCBhcmUgbG9nZ2VkIGlu
IHRoZSBTQ1JBVENIXzE1Cj4+ICsgKiByZWdpc3RlciB1c2luZyB0aGUgc2FtZSBiaXRzIHVzZWQg
aW4gdGhlIENUIG1lc3NhZ2UgcGF5bG9hZC4gU2luY2Ugb3VyCj4+ICsgKiBjb21tdW5pY2F0aW9u
IGNoYW5uZWwgd2l0aCBndWMgaXMgdHVybmVkIG9mZiBhdCB0aGlzIHBvaW50LCB3ZSBjYW4gc2F2
ZSB0aGUKPj4gKyAqIG1lc3NhZ2UgYW5kIGhhbmRsZSBpdCBhZnRlciB3ZSB0dXJuIGl0IGJhY2sg
b24uCj4+ICsgKi8KPj4gK3N0YXRpYyB2b2lkIGd1Y19jbGVhcl9tbWlvX21zZyhzdHJ1Y3QgaW50
ZWxfZ3VjICpndWMpCj4+ICt7Cj4+ICsgICAgICAgaW50ZWxfdW5jb3JlX3dyaXRlKCZndWNfdG9f
aTkxNShndWMpLT51bmNvcmUsIFNPRlRfU0NSQVRDSCgxNSksIDApOwo+IAo+IFNob3VsZCB0aGUg
cmVnaXN0ZXIgYmUgY2xlYXJlZCBvbiBpbnRlbF9ndWNfcmVzZXQoKT8gT3RoZXJ3aXNlLCB3ZSB3
b3VsZAo+IGJlIGFzc29jaWF0aW5nIHRoZSBzdGFsZSBtc2cgZnJvbSBhbiBlYXJsaWVyIGd1YyBp
bnN0YW5jZSB3aXRoIHRoZQo+IGN1cnJlbnQgb25lLgo+IAo+IFRoYXQgd291bGQgbWVhbiBjbGVh
cl9tbWlvX21zZyB3b3VsZCB3YW50IHRvIGJlIGNhbGxlZCBmcm9tCj4gZ3VjX3N0b3BfY29tbXVu
aWNhdGlvbiBub3QganVzdCBndWNfZGlzYWJsZV9jb21tdW5pY2F0aW9uLgo+IC1DaHJpcwo+IAoK
VGhlIHJlZ2lzdGVyIGlzIHJlc2V0IGJ5IHRoZSBIVyBhcyBwYXJ0IG9mIEd1QyByZXNldCAoSSd2
ZSB2ZXJpZmllZCB0aGlzIApvbiBTS0wpLiBTdGlsbCwgZXhwbGljaXRseSBjbGVhcmluZyBpdCB3
b24ndCBodXJ0IGFuZCBpdCdsbCBjb3ZlciB1cyBpZiAKSFcgcmVzZXQgZmFpbHMsIHNvIG5vIHBy
b2JsZW0gaW4gYWRkaW5nIHRoZSBjYWxsIGluLgoKRGFuaWVsZQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
