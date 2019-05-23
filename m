Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE47281D0
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 17:53:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E743D89F8E;
	Thu, 23 May 2019 15:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD5A89F8E
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 15:53:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 08:53:30 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga008.jf.intel.com with ESMTP; 23 May 2019 08:53:29 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NFrRRd008299; Thu, 23 May 2019 16:53:28 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
 <20190522193203.23932-9-michal.wajdeczko@intel.com>
 <155855561367.28319.14191658465315815163@skylake-alporthouse-com>
Date: Thu, 23 May 2019 17:53:27 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z182fdwvxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <155855561367.28319.14191658465315815163@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915/uc: Stop talking with GuC
 when resetting
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

T24gV2VkLCAyMiBNYXkgMjAxOSAyMjowNjo1MyArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFF1b3RpbmcgTWljaGFsIFdhamRlY3prbyAo
MjAxOS0wNS0yMiAyMDozMjowMikKPj4gS25vd2luZyB0aGF0IEd1QyB3aWxsIGJlIHJlc2V0IHNv
b24sIHdlIG1heSBzdG9wIGFsbCBjb21tdW5pY2F0aW9uCj4+IGltbWVkaWF0ZWx5IHdpdGhvdXQg
ZG9pbmcgZ3JhY2VmdWwgY2xlYW51cCBhcyBpdCBpcyBub3QgbmVlZGVkLgo+Cj4gVGhlIGRpZmZl
cmVuY2UgYmV0d2VlbiBzdG9wIGFuZCBkaXNhYmxlIGlzIHRoYXQgaXQgYXZvaWRzIHRoZQo+IHNl
cmlhbGlzYXRpb24sIHJpZ2h0PyBJcyB0aGlzIHBhdGNoIHN0aWxsIHJlcXVpcmVkIC0tIGRvIHdl
IHN0aWxsCj4gbmVlZCB0aGUgY29tcGxpY2F0aW9uIGluIHR3byBzaW1pbGFyIGJ1dCBzdWJ0bHkg
ZGlmZmVyZW50IHBhdGhzPwoKVGhpcyBwYXRjaCBoZWxwcyB1cyBjYXB0dXJlIGFueSB1bndhbnRl
ZC91bmV4cGVjdGVkIGF0dGVtcHRzIHRvIHRhbGsKd2l0aCBHdUMgYWZ0ZXIgd2UgZGVjaWRlZCB0
byByZXNldCBpdC4gV2UgbmVlZCAnZGlzYWJsZScgcGFydCBhcyBjdXJyZW50CmFuZCB1cGNvbWlu
ZyBmaXJtd2FyZSBzdGlsbCBleHBlY3RzIHVzIHRvIGRvIGdyYWNlZnVsIGNsZWFudXAuIFRoaXMg
bWF5CmJlIGNoYW5nZWQgaW4gdGhlIGZ1dHVyZSByZWxlYXNlcy4gQW5kIHdlIGNhbiB1c2UgJ2Rp
c2FibGUnIGFzIHRoaXMgd2lsbApicmVhayBhdG9taWNfcmVzZXQgdGVzdHMuCgotTWljaGFsCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
