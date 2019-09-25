Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB25BDFBF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 16:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C818E6EBC9;
	Wed, 25 Sep 2019 14:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C3476EBC9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 14:14:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 07:14:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="183269620"
Received: from timmpete-desk1.ger.corp.intel.com (HELO [10.252.55.52])
 ([10.252.55.52])
 by orsmga008.jf.intel.com with ESMTP; 25 Sep 2019 07:14:12 -0700
To: Matt Roper <matthew.d.roper@intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-7-maarten.lankhorst@linux.intel.com>
 <20190925041729.GL1869@mdroper-desk1.amr.corp.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <8d7112ba-1359-5849-37a7-8035387acc7b@linux.intel.com>
Date: Wed, 25 Sep 2019 16:14:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190925041729.GL1869@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915: Remove
 begin/finish_crtc_commit.
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

T3AgMjUtMDktMjAxOSBvbSAwNjoxNyBzY2hyZWVmIE1hdHQgUm9wZXI6Cj4gT24gRnJpLCBTZXAg
MjAsIDIwMTkgYXQgMDE6NDI6MTlQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+
IFRoaXMgY2FuIGFsbCBiZSBkb25lIGZyb20gdGhlIGludGVsX3VwZGF0ZV9jcnRjIGZ1bmN0aW9u
LiBTcGxpdCBvdXQgdGhlCj4+IHBpcGUgdXBkYXRlIGludG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiwg
anVzdCBsaWtlIGlzIGRvbmUgZm9yIHRoZSBwbGFuZXMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gVGhl
IGNvZGUgaGVyZSBhbGwgbG9va3MgbG9naWNhbGx5IGNvcnJlY3QsIGJ1dCBJIHRoaW5rIG91ciB2
YXJpb3VzCj4gcGlwZSBmdW5jdGlvbnMgYXJlIHN0aWxsIHNvbWV3aGF0IGNvbmZ1c2luZy4gIEUu
Zy4sCj4gaW50ZWxfdXBkYXRlX3BpcGVfY29uZmlnKCkgYW5kIGNvbW1pdF9waXBlX2NvbmZpZygp
IGhhdmUgbmFtZXMgdGhhdAo+IG1ha2UgaXQgc291bmQgbGlrZSB0aGV5J3JlIGRvaW5nIHRoZSBz
YW1lIHRoaW5nLiAgQXQgdGhlIG1vbWVudAo+IGludGVsX3VwZGF0ZV9waXBlX2NvbmZpZygpIGlz
IGJhc2ljYWxseSB0aGUgZmFzdHNldC1zcGVjaWZpYyBzdHVmZiwgYnV0Cj4gaXMgdGhlcmUgYW55
IHJlYXNvbiBtb3N0IG9mIHRob3NlIG9wZXJhdGlvbnMgY2FuJ3QganVzdCBiZSBkb25lIG9uIGFs
bAo+IGNvbW1pdHM/ICBSZS13cml0aW5nIHRoZSBwZml0L3NjYWxlciByZWdpc3RlcnMgb3IgcGlw
ZSBjaGlja2VuIHNlZW1zCj4gbGlrZSBhIHByZXR0eSBzbWFsbCBudW1iZXIgb2YgcmVnaXN0ZXJz
IHRvIHRyeSB0byBhdm9pZC4KPgo+IElmIHdlIHdhbnQgdG8ga2VlcCB0aGVtIHNlcGFyYXRlLCBJ
J2Qgc3VnZ2VzdCByZW5hbWluZwo+IGludGVsX3VwZGF0ZV9waXBlX2NvbmZpZygpIChhbmQgcHJv
YmFibHkgdGhlICd1cGRhdGVfcGlwZScgZmxhZyB0b28pIHRvCj4gbWFrZSBpdCBtb3JlIGNsZWFy
IHRoYXQgaXQncyBtZWFudCBmb3IgdGhlIGZhc3RzZXQgc3BlY2lhbCBjYXNlLgo+CgpJJ20gc2Vu
ZGluZyBhIG5ldyB2ZXJzaW9uIHdpdGggaW50ZWxfdXBkYXRlX3BpcGVfY29uZmlnIGlubGluZWQu
CgpJdCBtYWtlcyBzZW5zZSB0byBhdm9pZCwgZXNwZWNpYWxseSB0aGUgY2hpY2tlbiBiaXRzIGJl
Y2F1c2UgdGhhdCBmdW5jdGlvbiBwZXJmb3JtcyBhIHJlYWQgYXMgd2VsbC4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
