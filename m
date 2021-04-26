Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FEF36B533
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 16:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884E689F19;
	Mon, 26 Apr 2021 14:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0832E89F19
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 14:48:01 +0000 (UTC)
IronPort-SDR: 6SjffhFjs8/W9CM4IA86lgfjOaLkf1f9+iMfY98JATgFsmDs1mSLqUSWgx+4EShk6Do8LuojNo
 4wVc9EYX28Fw==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="196456898"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="196456898"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 07:48:00 -0700
IronPort-SDR: yaxmcx8tkjeujpknIXWMD2LCE+L5/ztn+DPWVhyxzY1P/0ksh0KsWxLNhZ1yEtdJZszFf8+pbt
 VlkG67hwSpPg==
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="422683786"
Received: from unknown (HELO localhost) ([10.252.50.197])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 07:47:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mario =?utf-8?Q?H=C3=BCttel?= <mario.huettel@gmx.net>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <042237f49ed1fd719126a3407d7c909e49addbea.camel@gmx.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <042237f49ed1fd719126a3407d7c909e49addbea.camel@gmx.net>
Date: Mon, 26 Apr 2021 17:47:55 +0300
Message-ID: <87a6pl5ch0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] BUG in i915/i915_pci.c, commit fe0f1e3
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

T24gU2F0LCAxMyBNYXIgMjAyMSwgTWFyaW8gSMO8dHRlbCA8bWFyaW8uaHVldHRlbEBnbXgubmV0
PiB3cm90ZToKPiBIZWxsbywKPgo+IEkgd2FudCB0byByZXBvcnQgYSBidWcuIEkgaGF2ZSBhIFBD
IHdpdGggSW50ZWwgaTctNjcwMEsgcHJvY2Vzc29yICh3aXRoCj4gaW50ZWdyYXRlZCBncmFwaGlj
cykgYW5kIGFuIEFzUm9jayBGYXRhbDF0eSBaMTcwIEdhbWluZyBLNiBtYWluYm9hcmQuIEkKPiB1
c2UgdGhlIENQVSdzIGludGVncmF0ZWQgZ3JhcGhpY3MuCj4gTXkgc3lzdGVtIGlzIEFyY2hsaW51
eCB3aXRoIEtlcm5lbCB2NS4xMS42Lgo+Cj4gVXNpbmcgdGhpcyBzZXR1cCwgbXkgUEMgd29ya3Mg
bm9ybWFsbHkuIEhvd2V2ZXIsIHdoZW4gSSBzaHV0IGl0IGRvd24sCj4gdGhlIHBvd2VyIGlzIG5v
dCBjdXQuIEZhbnMgYW5kIExFRHMga2VlcCBzcGlubmluZy4gSSBjb3VsZG4ndCBkZXRlY3QKPiBh
bnkgb3RoZXIgcHJvYmxlbSB3aGVuIHNodXR0aW5nIGRvd24uIERyaXZlcyBldGMuIHN0b3AgYXMg
ZXhwZWN0ZWQgYW5kCj4gdGhlIHZpZGVvIGlzIGJsYW5rLiBFdmVuIGFmdGVyIHdhaXRpbmcgc2V2
ZXJhbCBob3VycywgdGhlIHN5c3RlbQo+IGRvZXNuJ3QgcG93ZXIgZG93bi4KPiBJIGhhdmVuJ3Qg
eWV0IGZvdW5kIGFueSBvdGhlciBwZW9wbGUgb24gdGhlIGludGVybmV0IHRoYXQgaGF2ZSB0aGUg
c2FtZQo+IGJ1Zy4KPgo+IEkgdXNlZCBnaXQgYmlzZWN0IHRvIGZpbmQgdGhlIGNvbW1pdCB0aGF0
IGNhdXNlcyB0aGlzIGJlaGF2aW9yIG9uIG15Cj4gbWFjaGluZS4gVGhlIHJlc3VsdCBpczogZmUw
ZjFlM2JmZGZlYjUzZTE4ZjEyMDZhZWE0ZjQwYjliZDFmMjkxYyBpcyB0aGUKPiBmaXJzdCBiYWQg
Y29tbWl0Lgo+Cj4gSSBob3BlIHRoaXMgaXMgdGhlIGNvcnJlY3QgbWFpbGluZyBsaXN0IGZvciB0
aGlzIGlzc3VlLgo+Cj4gTGV0IG1lIGtub3cgaWYgeW91IG5lZWQgbW9yZSBpbmZvcm1hdGlvbiBv
ciBzb21lb25lIHRvIHRlc3QgaXQuCgpUaGlzIHNlZW1zIHRvIGhhdmUgZmFsbGVuIGJldHdlZW4g
dGhlIGNyYWNrcywgYXBvbG9naWVzLiBJcyB0aGlzIHN0aWxsCmFuIGlzc3VlIHdpdGggbmV3ZXIg
a2VybmVscz8gSWYgeWVzLCBwbGVhc2UgZmlsZSBhIGJ1ZyBhdCBbMV0uCgpCUiwKSmFuaS4KCgpb
MV0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC93aWtpcy9Ib3ctdG8t
ZmlsZS1pOTE1LWJ1Z3MKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
