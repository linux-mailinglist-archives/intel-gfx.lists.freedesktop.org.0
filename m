Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C52CEE07F8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 17:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B80456E85E;
	Tue, 22 Oct 2019 15:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B35A66E860
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 15:53:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 08:53:56 -0700
X-IronPort-AV: E=Sophos;i="5.68,216,1569308400"; d="scan'208";a="191508651"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 08:53:54 -0700
Date: Tue, 22 Oct 2019 18:52:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191022155228.GA8575@ideak-desk.fi.intel.com>
References: <20191001005536.123020-1-jose.souza@intel.com>
 <20191003145048.GF5071@ideak-desk.fi.intel.com>
 <0b02769d681e728a0c7b086eabbd361a42c257ab.camel@intel.com>
 <20191019104942.GA7182@ideak-desk.fi.intel.com>
 <4f1c946b6e9123ea6fcbccf0d8c76eff0a2690a3.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f1c946b6e9123ea6fcbccf0d8c76eff0a2690a3.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tc: Implement the TC cold exit
 sequence
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgMDM6MDM6MThBTSArMDMwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gWy4uLl0gCj4gTWFrZXMgc2Vuc2UsIHdlbGwgdGhlIG9ubHkgZG91YnQgdGhhdCBJIGhh
dmUgaXMgaWYgZ2V0dGluZwo+IFBPV0VSX0RPTUFJTl9BVVhfPHBvcnQ+X1RCVCB3aWxsIHByZXZl
bnQgVENDT0xEIGZvciBsZWdhY3kgYW5kIGFsdC0KPiBtb2RlLCAKCldoeSBkbyB3ZSBuZWVkIHRv
IGNhcmUgYWJvdXQgUE9XRVJfRE9NQUlOX0FVWF88cG9ydD5fVEJUPyBJdCBkb2Vzbid0CmFmZmVj
dCB0aGUgVENDT0xEIHN0YXRlIGFuZCB3ZSBzaG91bGRuJ3QgZ2V0IGl0IGhlcmUuCgo+IGFzIGF0
IHRoaXMgcG9pbnQgd2Ugc3RpbGwgZG9uJ3Qga25vdyBpZiBpdCBpcyBhbHQtbW9kZSwgVEJUIG9y
Cj4gbGVnYWN5KHdlIGtub3cgdGhhdCBpcyBsZWdhY3kgYnV0IGxpdmUgc3RhdHVzIGNvdWxkIGJl
IHJlcG9ydGluZwo+IHNvbWV0aGluZyBlbHNlIHRjX3BvcnRfZml4dXBfbGVnYWN5X2ZsYWcoKSkK
CldlIGVuYWJsZSB0aGUgbm9uLVRCVCBBVVggcG93ZXIgYW5kIHRoZW4gZHJvcCBhZnRlciB0aGUg
bW9kZSBpcyBhbHJlYWR5Cmtub3duIGFuZCBpdCdzIG90aGVyIHRoYW4gbGVnYWN5LgoKLS1JbXJl
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
