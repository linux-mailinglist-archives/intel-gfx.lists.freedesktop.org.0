Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 738BDBF3E7
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 15:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63896ED21;
	Thu, 26 Sep 2019 13:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426B36ED21;
 Thu, 26 Sep 2019 13:17:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 06:17:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="190002097"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga007.fm.intel.com with ESMTP; 26 Sep 2019 06:17:48 -0700
Date: Thu, 26 Sep 2019 16:17:49 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190926131749.GA3643@intel.intel>
References: <20190926131006.8506-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926131006.8506-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/pm_rpm: Include breadcrumbs in
 the kernel log before i915.ko reloads
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

SGkgQ2hyaXMsCgpPbiBUaHUsIFNlcCAyNiwgMjAxOSBhdCAwMjoxMDowNlBNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gTWFrZSBpdCBlYXNpZXIgdG8gZGlzY2VybiBpbiB0aGUgbm9pc2Ug
b2YgdGhlIG1vZHVsZSByZWxvYWQgd2hlcmUgZWFjaAo+IGJlZ2lucy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogQW5kaSBT
aHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Cgp0aGFua3MgZm9yIHRoaXMgcGF0Y2ghCgpBY2tl
ZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpBbmRpCgo+IC0tLQo+ICB0
ZXN0cy9pOTE1L2k5MTVfcG1fcnBtLmMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2k5MTVfcG1fcnBtLmMgYi90
ZXN0cy9pOTE1L2k5MTVfcG1fcnBtLmMKPiBpbmRleCBhMmJkYWJlZTIuLmY1ZjgxM2MzZCAxMDA2
NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2k5MTVfcG1fcnBtLmMKPiArKysgYi90ZXN0cy9pOTE1L2k5
MTVfcG1fcnBtLmMKPiBAQCAtMjExMyw2ICsyMTEzLDggQEAgaWd0X21haW5fYXJncygiIiwgbG9u
Z19vcHRpb25zLCBoZWxwX3N0ciwgb3B0X2hhbmRsZXIsIE5VTEwpCj4gIAlpZ3Rfc3VidGVzdCgi
bW9kdWxlLXJlbG9hZCIpIHsKPiAgCQlpZ3RfZGVidWcoIlJlbG9hZCB3L28gZGlzcGxheVxuIik7
Cj4gIAkJaWd0X2k5MTVfZHJpdmVyX3VubG9hZCgpOwo+ICsKPiArCQlpZ3Rfa21zZyhLTVNHX0lO
Rk8gIlJlbG9hZGluZyBpOTE1IHcvbyBkaXNwbGF5XG4iKTsKPiAgCQlpZ3RfYXNzZXJ0X2VxKGln
dF9pOTE1X2RyaXZlcl9sb2FkKCJkaXNhYmxlX2Rpc3BsYXk9MSBtbWlvX2RlYnVnPS0xIiksIDAp
Owo+ICAKPiAgCQlpZ3RfYXNzZXJ0KHNldHVwX2Vudmlyb25tZW50KCkpOwo+IEBAIC0yMTIxLDYg
KzIxMjMsOCBAQCBpZ3RfbWFpbl9hcmdzKCIiLCBsb25nX29wdGlvbnMsIGhlbHBfc3RyLCBvcHRf
aGFuZGxlciwgTlVMTCkKPiAgCj4gIAkJaWd0X2RlYnVnKCJSZWxvYWQgYXMgbm9ybWFsXG4iKTsK
PiAgCQlpZ3RfaTkxNV9kcml2ZXJfdW5sb2FkKCk7Cj4gKwo+ICsJCWlndF9rbXNnKEtNU0dfSU5G
TyAiUmVsb2FkaW5nIGk5MTUgYXMgbm9ybWFsXG4iKTsKPiAgCQlpZ3RfYXNzZXJ0X2VxKGlndF9p
OTE1X2RyaXZlcl9sb2FkKCJtbWlvX2RlYnVnPS0xIiksIDApOwo+ICAKPiAgCQlpZ3RfYXNzZXJ0
KHNldHVwX2Vudmlyb25tZW50KCkpOwo+IC0tIAo+IDIuMjMuMApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
