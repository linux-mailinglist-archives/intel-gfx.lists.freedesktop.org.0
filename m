Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A87DDE518C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 18:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DFEB6EB00;
	Fri, 25 Oct 2019 16:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710FA6EB00
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 16:49:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 09:49:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,229,1569308400"; d="scan'208";a="197474557"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 25 Oct 2019 09:49:57 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191024195122.22877-1-lucas.demarchi@intel.com>
 <20191024195122.22877-3-lucas.demarchi@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <acef9067-7d61-22d3-112e-6e594f1a9bcc@intel.com>
Date: Fri, 25 Oct 2019 09:49:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191024195122.22877-3-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: do not set MOCS control
 values on dgfx
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

CgpPbiAxMC8yNC8xOSAxMjo1MSBQTSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IE9uIGRnZngg
dGhlcmUncyBubyBMTEMgYW5kIGVEUkFNIGNvbnRyb2wgdGFibGUuIFNpbmNlIG5vdyB0aGlzCj4g
YWxzbyBtZWFucyB0aGUgZGV2aWNlIGhhcyBnbG9iYWwgTU9DUywganVzdCByZXR1cm4gZWFybHkg
b24gdGhlCj4gaW5pdGlhbGl6YXRpb24gZnVuY3Rpb24uCj4gCj4gTDMgc2V0dGluZ3Mgc3RpbGwg
YXBwbHkgYW5kIHN0aWxsIG5lZWQgdG8gYmUgdHdlYWtlZC4KPiAKPiBCc3BlYzogNDUxMDEKPiAK
PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyB8
IDYgKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+IGluZGV4IDkzMjgzM2U1YjcxMi4uOWUxOTYzN2Uw
MjI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+IEBAIC00NjIsNiAr
NDYyLDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX21vY3NfaW5pdF9nbG9iYWwoc3RydWN0IGludGVs
X2d0ICpndCkKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSB0YWJsZTsKPiAgIAl1bnNp
Z25lZCBpbnQgaW5kZXg7Cj4gICAKPiArCS8qCj4gKwkgKiBMTEMgYW5kIGVEUkFNIGNvbnRyb2wg
dmFsdWVzIGFyZSBub3Qgb25seSBhcHBsaWNhYmxlIHRvIGRnZngKCnRoZSAib25seSIgaW4gdGhp
cyBzZW50ZW5jZSBpcyBjb25mdXNpbmcgSU1PLiBXaXRoIGl0IHJlbW92ZWQ6CgpSZXZpZXdlZC1i
eTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KCkRhbmllbGUKCj4gKwkgKi8KPiArCWlmIChJU19ER0ZYKGd0LT5pOTE1KSkKPiArCQlyZXR1
cm47Cj4gKwo+ICAgCUdFTV9CVUdfT04oIUhBU19HTE9CQUxfTU9DU19SRUdJU1RFUlMoZ3QtPmk5
MTUpKTsKPiAgIAo+ICAgCWlmICghZ2V0X21vY3Nfc2V0dGluZ3MoZ3QtPmk5MTUsICZ0YWJsZSkp
Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
