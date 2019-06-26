Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4677A56DD9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 17:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC416E47F;
	Wed, 26 Jun 2019 15:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 886DB6E47F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 15:37:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 08:37:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="337249438"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 26 Jun 2019 08:37:18 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x5QFbHdP022566; Wed, 26 Jun 2019 16:37:17 +0100
To: intel-gfx@lists.freedesktop.org, "Jani Nikula" <jani.nikula@intel.com>
References: <20190626144020.2155-1-jani.nikula@intel.com>
 <20190626144020.2155-5-jani.nikula@intel.com>
Date: Wed, 26 Jun 2019 17:37:16 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z3z0cesrxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190626144020.2155-5-jani.nikula@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 04/13] drm/i915: make i915_gem_gtt.h
 self-contained
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

T24gV2VkLCAyNiBKdW4gMjAxOSAxNjo0MDoxMSArMDIwMCwgSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4gIAp3cm90ZToKCj4gQWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xh
cmF0aW9ucyB0byBtYWtlIHRoZSBoZWFkZXIgc2VsZi1jb250YWluZWQsCj4gYW5kIGVuc3VyZSBp
dCBzdGF5cyB0aGF0IHdheS4KPgo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
aCB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oICAKPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCj4gaW5kZXggMDI4YmUzYjQ0ZDA3Li44ODNhNWVkMTQ2
YzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAo+IEBAIC00Miw2ICs0Miw4
IEBACj4gI2luY2x1ZGUgPGRybS9kcm1fbW0uaD4KPiArI2luY2x1ZGUgPGRybS9kcm1fbW0uaD4K
CnRoaXMgc2VlbXMgdG8gYmUgcmVkdW5kYW50IDspCgo+ICsKPiAgI2luY2x1ZGUgImd0L2ludGVs
X3Jlc2V0LmgiCj4gICNpbmNsdWRlICJpOTE1X2dlbV9mZW5jZV9yZWcuaCIKPiAgI2luY2x1ZGUg
Imk5MTVfcmVxdWVzdC5oIgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
