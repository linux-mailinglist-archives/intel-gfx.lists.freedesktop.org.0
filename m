Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 726DA14089E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 12:05:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59EF96F4F8;
	Fri, 17 Jan 2020 11:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD336F4F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:05:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 03:05:51 -0800
X-IronPort-AV: E=Sophos;i="5.70,329,1574150400"; d="scan'208";a="218874531"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 03:05:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200117102145.2948244-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200117102145.2948244-1-chris@chris-wilson.co.uk>
Date: Fri, 17 Jan 2020 13:05:45 +0200
Message-ID: <877e1qibqu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Include the debugfs params header
 for its own definition
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gRnJpLCAxNyBKYW4gMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmc19wYXJhbXMuYzoy
Mjg6MTU6IHdhcm5pbmc6IHN5bWJvbCAnaTkxNV9kZWJ1Z2ZzX3BhcmFtcycgd2FzIG5vdCBkZWNs
YXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnNfcGFyYW1zLmM6MjI4OjE2OiBlcnJvcjogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDi
gJhpOTE1X2RlYnVnZnNfcGFyYW1z4oCZIFstV2Vycm9yPW1pc3NpbmctcHJvdG90eXBlc10KPiAg
IDIyOCB8IHN0cnVjdCBkZW50cnkgKmk5MTVfZGVidWdmc19wYXJhbXMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KCi9vXAoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
CkZpeGVzOiBjNDNjNWE4ODE4ZDQgKCJkcm0vaTkxNS9wYXJhbXM6IGFkZCBpOTE1IHBhcmFtZXRl
cnMgdG8gZGVidWdmcyIpCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnNfcGFyYW1zLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzX3BhcmFtcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzX3BhcmFtcy5jCj4gaW5kZXggMTJjYmRi
ZGY0ZDgwLi42MmIyYzVmMDQ5NWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzX3BhcmFtcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzX3BhcmFtcy5jCj4gQEAgLTUsNiArNSw3IEBACj4gIAo+ICAjaW5jbHVkZSA8bGludXgv
a2VybmVsLmg+Cj4gIAo+ICsjaW5jbHVkZSAiaTkxNV9kZWJ1Z2ZzX3BhcmFtcy5oIgo+ICAjaW5j
bHVkZSAiaTkxNV9kcnYuaCIKPiAgI2luY2x1ZGUgImk5MTVfcGFyYW1zLmgiCgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
