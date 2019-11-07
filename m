Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0D2F3C3D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 00:30:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09BD36F806;
	Thu,  7 Nov 2019 23:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 376736F806
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 23:30:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 15:30:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="214755758"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.251.81.131])
 by orsmga002.jf.intel.com with ESMTP; 07 Nov 2019 15:30:53 -0800
MIME-Version: 1.0
From: Chris Wilson <chris.p.wilson@intel.com>
User-Agent: alot/0.6
To: Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191107232234.5641-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20191107232234.5641-1-umesh.nerlige.ramappa@intel.com>
Message-ID: <157316945131.6935.7754884674203739014@skylake-alporthouse-com>
Date: Thu, 07 Nov 2019 23:30:51 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Configure OAR controls for
 specific context
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgKDIwMTktMTEtMDcgMjM6MjI6MzQpCj4gSXQg
dHVybnMgb3V0IHRoYXQgdGhlIE9BUiBDT05UUk9MIHJlZ2lzdGVyIGlzIG5vdCBnZXR0aW5nIGNv
bmZpZ3VyZWQKPiBjb3JyZWN0bHkgaW4gY29uanVuY3Rpb24gd2l0aCB0aGUgY29udGV4dCBzYXZl
L3Jlc3RvcmUgYml0LiBXaGVuCj4gbWVhc3VyaW5nIHdvcmsgZm9yIGEgc2luZ2xlIGNvbnRleHQs
IHRoZSBPQVIgY291bnRlcnMgZG8gbm90IGluY3JlbWVudC4KPiAKPiBDb25maWd1cmUgT0FSIGZv
cm1hdCBhbmQgZW5hYmxlIE9BUiBjb3VudGVycyBhdCB0aGUgc2FtZSB0aW1lIGFzCj4gZW5hYmxp
bmcgY29udGV4dCBzYXZlL3Jlc3RvcmUgZm9yIE9BUiBjb3VudGVycy4KCkRpZCB5b3Ugd3JpdGUg
YSB0ZXN0IGNhc2UgdG8gY2FwdHVyZSB0aGlzIGJ1ZyBmb3IgcG9zdGVyaXR5PyBJZiBzbywKcGxl
YXNlIGluY2x1ZGUgYSBUZXN0Y2FzZTogbGluay4gSWYgbm90LCBwbGVhc2UgZG8gc28gOikKLUNo
cmlzCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBDb3Jwb3JhdGlvbiAoVUspIExpbWl0ZWQKUmVnaXN0ZXJl
ZCBOby4gMTEzNDk0NSAoRW5nbGFuZCkKUmVnaXN0ZXJlZCBPZmZpY2U6IFBpcGVycyBXYXksIFN3
aW5kb24gU04zIDFSSgpWQVQgTm86IDg2MCAyMTczIDQ3CgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0
dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhlIHNvbGUg
dXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3IgZGlzdHJpYnV0
aW9uCmJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUg
aW50ZW5kZWQKcmVjaXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUg
YWxsIGNvcGllcy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
