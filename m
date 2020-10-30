Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7632A0276
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 11:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9445E6E9A2;
	Fri, 30 Oct 2020 10:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1906E062
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 10:10:53 +0000 (UTC)
IronPort-SDR: mrqGsGg9fwco7h1VxtXMxls4gHkC3f9wiEMmdgLdO2J240HPRzrs/R0nMSX424BLrtnucUS8Eu
 G9bj+KqLrhZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="155560711"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="155560711"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 03:10:52 -0700
IronPort-SDR: /FODTiUXcH/4i8e8a1+TuFhL6Lk2A4dfsZTUAKiNEJdFAWuQ6S5vY7EIicBPaUs/PDtzwF1ZoX
 eZRF2MxJLFKQ==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="527067541"
Received: from bmurphy-mobl.ger.corp.intel.com (HELO [10.249.41.199])
 ([10.249.41.199])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 03:10:51 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-15-maarten.lankhorst@linux.intel.com>
 <02b0d2c2-5687-03b1-7741-34a3c2c819ac@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <c327ca8c-2fcd-ff90-381c-16f414f0df3a@linux.intel.com>
Date: Fri, 30 Oct 2020 11:10:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <02b0d2c2-5687-03b1-7741-34a3c2c819ac@shipmail.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 14/61] drm/i915: Reject UNSYNCHRONIZED
 for userptr
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

T3AgMzAtMTAtMjAyMCBvbSAxMDoyNiBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4KPiBPbiAxMC8xNi8yMCAxMjo0MyBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IFdl
IHNob3VsZCBub3QgYWxsb3cgdGhpcyBhbnkgbW9yZSwgYXMgaXQgd2lsbCBicmVhayB3aXRoIHRo
ZSBuZXcgdXNlcnB0cgo+PiBpbXBsZW1lbnRhdGlvbiwgaXQgY291bGQgc3RpbGwgYmUgbWFkZSB0
byB3b3JrLCBidXQgdGhlcmUncyBubyBwb2ludCBpbgo+PiBkb2luZyBzby4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KPgo+IElmZGVmcyBkb24ndCBhcHBlYXIgY29uc2lzdGVudCB3aXRoIHRoZSBjb21taXQg
bWVzc2FnZS4gV3JvbmcgcGF0Y2ggb3Igc2VwYXJhdGUgcGF0Y2g/Cj4KPiBBbHNvIHBsZWFzZSBh
ZGQgYSBkaXNjdXNzaW9uIHdoYXQgaW1wYWN0IHRoaXMgaGFzIG9uIGV4aXN0aW5nIHVzZXItc3Bh
Y2UuCj4KPgpJbXBhY3Qgc2hvdWxkIGJlIGxvdywgeGY4Ni12aWRlby1pbnRlbCB3aXRoIFNOQSB3
YXMgdXNpbmcgdW5zeW5jaHJvbml6ZWQsIGJ1dCB3aWxsIGZhbGwgYmFjayB0byBzeW5jaHJvbml6
ZWQgaWYgbm90IGF2YWlsYWJsZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
