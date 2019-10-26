Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 591D1E59A2
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 12:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF8C46EC0D;
	Sat, 26 Oct 2019 10:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 102486EC0D
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 10:44:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Oct 2019 03:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,232,1569308400"; d="scan'208";a="399007134"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 26 Oct 2019 03:44:41 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.132.151])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x9QAieiV027400; Sat, 26 Oct 2019 11:44:40 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20191026003507.21769-1-daniele.ceraolospurio@intel.com>
Date: Sat, 26 Oct 2019 12:44:39 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z99j4pf3xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20191026003507.21769-1-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/uc: define GuC and HuC
 binaries for TGL
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

T24gU2F0LCAyNiBPY3QgMjAxOSAwMjozNTowNiArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gR3VDIDM1LjIu
MCBhbmQgSHVDIDcuMC4zIGFyZSB0aGUgZmlyc3QgcHJvZHVjdGlvbiByZWxlYXNlcyBmb3IgVEdM
Lgo+IEd1QyAzNS4yIGZvciBnZW4xMiBpcyBpbnRlcmZhY2UtY29tcGF0aWJsZSB3aXRoIDMzLjAg
b24gb2xkZXIgZ2VucywKPiBiZWNhdXNlIHRoZSBkaWZmZXJlbmNlcyBhcmUgcmVsYXRlZCB0byBh
ZGRpdGlvbmFsIGJsb2Nrcy9jb21tYW5kcyBpbgo+IHRoZSBpbnRlcmZhY2UgdG8gc3VwcG9ydCBu
ZXcgR2VuMTIgZmVhdHVyZXMuIFRoZXNlIHBhcnRzIG9mIHRoZQo+IGludGVyZmFjZSB3aWxsIGJl
IGFkZGVkIHdoZW4gdGhlIHJlbGV2YW50IGZlYXR1cmVzIGFyZSBlbmFibGVkLgo+Cj4gU2lnbmVk
LW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5j
b20+Cj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8IDUgKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgIAo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+IGluZGV4IGJiNDg4OWQyMzQ2ZC4uMDkyMDFmMTJm
NWNjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gQEAg
LTM3LDggKzM3LDEzIEBAIHZvaWQgaW50ZWxfdWNfZndfY2hhbmdlX3N0YXR1cyhzdHJ1Y3QgaW50
ZWxfdWNfZncgIAo+ICp1Y19mdywKPiAgLyoKPiAgICogTGlzdCBvZiByZXF1aXJlZCBHdUMgYW5k
IEh1QyBiaW5hcmllcyBwZXItcGxhdGZvcm0uCj4gICAqIE11c3QgYmUgb3JkZXJlZCBiYXNlZCBv
biBwbGF0Zm9ybSArIHJldmlkLCBmcm9tIG5ld2VyIHRvIG9sZGVyLgo+ICsgKgo+ICsgKiBUR0wg
MzUuMiBpcyBpbnRlcmZhY2UtY29tcGF0aWJsZSB3aXRoIDMzLjAgZm9yIHByZXZpb3VzIGdlbnMu
IFRoZSAgCj4gZGVsdGFzCj4gKyAqIGJldHdlZW4gMzMuMCBhbmQgMzUuMiBhcmUgb25seSByZWxh
dGVkIHRvIG5ldyBhZGRpdGlvbnMgdG8gc3VwcG9ydCAgCj4gbmV3IGdlbjEyCj4gKyAqIGZlYXR1
cmVzLgoKbml0OiBzL2dlbjEyL0dlbjEyIChzYW1lIGZvciAiZ2VucyIpLCBoZXJlIGFuZCBpbiB0
aGUgY29tbWl0IG1lc3NhZ2UKClJldmlld2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwu
d2FqZGVjemtvQGludGVsLmNvbT4KClRoYW5rcywKTWljaGFsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
