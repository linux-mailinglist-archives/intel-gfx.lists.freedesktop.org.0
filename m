Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A94667E4
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 09:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1ACC6E2E2;
	Fri, 12 Jul 2019 07:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035BC6E2E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 07:42:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 00:42:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="171486693"
Received: from jlahtine-mobl.ger.corp.intel.com (HELO localhost)
 ([10.237.66.136])
 by orsmga006.jf.intel.com with ESMTP; 12 Jul 2019 00:42:02 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <156283080229.12757.310790219675360261@skylake-alporthouse-com>
References: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
 <156283080229.12757.310790219675360261@skylake-alporthouse-com>
Message-ID: <156291732092.8011.13534374589994246835@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 12 Jul 2019 10:42:01 +0300
Subject: Re: [Intel-gfx] [PATCH v2 0/5] drm/i915: Rename functions to match
 their entry points
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTEgMTA6NDA6MDIpCj4gUXVvdGluZyBKYW51
c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTEgMDg6MzE6NTIpCj4gPiBOZWVkIGZvciB0aGlzIHdh
cyBpZGVudGlmaWVkIHdoaWxlIHdvcmtpbmcgb24gc3BsaXQgb2YgZHJpdmVyIHVuYmluZAo+ID4g
cGF0aCBpbnRvIF9yZW1vdmUoKSBhbmQgX3JlbGVhc2UoKSBwYXJ0cy4gIENvbnNpc3RlbmN5IGlu
IGZ1bmN0aW9uCj4gPiBuYW1pbmcgaGFzIGJlZW4gcmVjb2duaXplZCBhcyBoZWxwZnVsIHdoZW4g
dHJ5aW5nIHRvIHdvcmsgb3V0IHdoaWNoCj4gPiBwaGFzZSB0aGUgY29kZSBpcyBpbi4KPiA+IAo+
ID4gdjI6ICogZWFybHlfcHJvYmUgcGFpcnMgYmV0dGVyIHdpdGggbGF0ZV9yZWxlYXNlIChDaHJp
cyksCj4gPiAgICAgKiBleGNsdWRlIHBhdGNoIDYvNiAiZHJtL2k5MTU6IFJlbmFtZSAiaW5qZWN0
X2xvYWRfZmFpbHVyZSIgbW9kdWxlCj4gPiAgICAgICBwYXJhbWV0ZXIiIGZvciBub3csIGl0IHJl
cXVpcmVzIHVwZGF0ZXMgb24gdXNlciAoSUdUKSBzaWRlCj4gPiAgICAgKiByZWJhc2Ugb24gdG9w
IG9mICJkcm0vaTkxNTogRHJvcCBleHRlcm4gcXVhbGlmaWVycyBmcm9tIGhlYWRlcgo+ID4gICAg
ICAgZnVuY3Rpb24gcHJvdG90eXBlcyIKPiA+IAo+ID4gSmFudXN6IEtyenlzenRvZmlrICg1KToK
PiA+ICAgZHJtL2k5MTU6IFJlbmFtZSAiX2xvYWQiLyJfdW5sb2FkIiB0byBtYXRjaCBQQ0kgZW50
cnkgcG9pbnRzCj4gPiAgIGRybS9pOTE1OiBSZXBsYWNlICJfbG9hZCIgd2l0aCAiX3Byb2JlIiBj
b25zZXF1ZW50bHkKPiA+ICAgZHJtL2k5MTU6IFByb3BhZ2F0ZSAiX3JlbGVhc2UiIGZ1bmN0aW9u
IG5hbWUgc3VmZml4IGRvd24KPiA+ICAgZHJtL2k5MTU6IFByb3BhZ2F0ZSAiX3JlbW92ZSIgZnVu
Y3Rpb24gbmFtZSBzdWZmaXggZG93bgo+ID4gICBkcm0vaTkxNTogUHJvcGFnYXRlICJfcHJvYmUi
IGZ1bmN0aW9uIG5hbWUgc3VmZml4IGRvd24KPiAKPiBJJ20gaGFwcHkgd2l0aCB0aGUgY2hvc2Vu
IG5hbWVzIGFuZCBteSBtYWluIGNvbmNlcm4gaXMgZm9yIGltcHJvdmluZwo+IGNvbnNpc3RlbmN5
IGZvciBlYXNlIG9mIGRpc2NvdmVyYWJpbGl0eSwgc28KCkRlZmluaXRlbHkgYSBjaGFuZ2UgZm9y
IHRoZSBiZXR0ZXIuIEZvdW5kIG9uZSB0eXBvLCBvdGhlcndpc2UgYWxsIGdvb2QKdG8gZ28uCgpS
ZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
