Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AC5D6593
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 16:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5ED891CE;
	Mon, 14 Oct 2019 14:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 393A189208
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 14:50:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 07:50:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="201483827"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Oct 2019 07:50:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Oct 2019 17:50:18 +0300
Date: Mon, 14 Oct 2019 17:50:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20191014145018.GV1208@intel.com>
References: <20190925121737.29670-1-stanislav.lisovskiy@intel.com>
 <20191011234953.GC19531@jausmus-gentoo-dev6.jf.intel.com>
 <dd75af7e26d67fa4fb160cf58ab6d71ae53cfa10.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dd75af7e26d67fa4fb160cf58ab6d71ae53cfa10.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Restrict qgv points which
 don't have enough bandwidth.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgMDI6MTM6MzFQTSArMDMwMCwgTGlzb3Zza2l5LCBTdGFu
aXNsYXYgd3JvdGU6Cj4gT24gRnJpLCAyMDE5LTEwLTExIGF0IDE2OjQ5IC0wNzAwLCBKYW1lcyBB
dXNtdXMgd3JvdGU6Cj4gPiA+ICsJCQkJbmV3X3Fndl9wb2ludHNfbWFzayB8PSBuZXdfbWFza19i
aXQ7Cj4gPiA+ICsJfQo+ID4gPiArCj4gPiA+ICsJcmV0ID0gaWNsX3Bjb2RlX3Jlc3RyaWN0X3Fn
dl9wb2ludHMoZGV2X3ByaXYsCj4gPiA+IG5ld19xZ3ZfcG9pbnRzX21hc2spOwo+ID4gPiArCWlm
IChyZXQgPCAwKQo+ID4gPiArCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3QgcmVzdHJpY3QgcmVx
dWlyZWQgZ3F2Cj4gPiA+IHBvaW50cyglZClcbiIsIHJldCk7Cj4gPiAKPiA+IHMvZ3F2L3Fndi8K
PiA+IAo+ID4gCj4gPiBBbHNvLCBpZiB3ZSBmYWlsIG1hc2tpbmcgb2ZmIHRoZSBxZ3YgcG9pbnRz
IHRoYXQgY2FuJ3Qgc3VwcG9ydCBvdXIgQlcKPiA+IHJlcSwgc2hvdWxkbid0IHdlIGhhbmRsZSB0
aGF0IGZhaWx1cmUgc29tZWhvdyAtIG1heWJlIGp1c3QgZGlzYWJsZQo+ID4gU0FHVgo+ID4gZW50
aXJlbHk/ICBCZXR0ZXIgd2UgbG9zZSBwb3dlciB0aGFuIGhhdmUgZmxpY2tlcmluZyBzY3JlZW5z
Li4uCgpTb3VuZHMgbGlrZSBkZWFkIGNvZGUgdG8gbWUuIE15IGFwcHJvYWNoIGlzOiBkb24ndCBk
ZWFsIHdpdGggaHcvZmlybXdhcmUKZmFpbHVyZXMgdW50aWwgdGhleSBhcmUgcHJvdmVuIHRvIGV4
aXN0LgoKVGhlIGRlYnVnIG1zZyBzaG91bGQgYmUgYW4gZXJyb3Igc28gdGhhdCB3ZSBnZXQgYSBi
dWcgcmVwb3J0IGlmIHRoaXMKZXZlciBoYXBwZW5zLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRl
bAotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KSW50ZWwgRmlubGFuZCBPeQpSZWdpc3RlcmVkIEFkZHJlc3M6IFBMIDI4
MSwgMDAxODEgSGVsc2lua2kgCkJ1c2luZXNzIElkZW50aXR5IENvZGU6IDAzNTc2MDYgLSA0IApE
b21pY2lsZWQgaW4gSGVsc2lua2kgCgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1h
eSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhlIHNvbGUgdXNlIG9mIHRoZSBp
bnRlbmRlZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uCmJ5IG90aGVy
cyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQKcmVj
aXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
