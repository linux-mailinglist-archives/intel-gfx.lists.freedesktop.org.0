Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED81C2F9C60
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 11:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608F5899B0;
	Mon, 18 Jan 2021 10:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CC50899B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 10:35:06 +0000 (UTC)
IronPort-SDR: pkrXRN0zFUEsv/Cc4bIiPlqIAOb0zb/OnV2l9G89HTbCbSIT+d6ntcE8ytNavaMcWT473XbKvh
 Ya1StrBob6YQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="242856772"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="242856772"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 02:35:01 -0800
IronPort-SDR: XT583xOcqcbH2QlXWZsMyVitnpDJrVefS+gExP82Asw5xZL8ChSyp8eawMdCAsDtuxfbgbXxHM
 eQmt84B6QYeQ==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="466322977"
Received: from pbarycki-mobl.ger.corp.intel.com (HELO [10.252.8.22])
 ([10.252.8.22])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 02:34:58 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-15-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <e1cf7323-372a-6530-5d53-864ebea790c1@linux.intel.com>
Date: Mon, 18 Jan 2021 11:34:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210105153558.134272-15-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 14/64] drm/i915: Reject UNSYNCHRONIZED
 for userptr, v2.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEvNS8yMSA0OjM1IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBXZSBzaG91bGQg
bm90IGFsbG93IHRoaXMgYW55IG1vcmUsIGFzIGl0IHdpbGwgYnJlYWsgd2l0aCB0aGUgbmV3IHVz
ZXJwdHIKPiBpbXBsZW1lbnRhdGlvbiwgaXQgY291bGQgc3RpbGwgYmUgbWFkZSB0byB3b3JrLCBi
dXQgdGhlcmUncyBubyBwb2ludCBpbgo+IGRvaW5nIHNvLgo+Cj4gSW5zcGVjdGlvbiBvZiB0aGUg
YmVpZ25ldCBvcGVuY2wgZHJpdmVyIHNob3dzIHRoYXQgaXQncyBvbmx5IHVzZWQKPiB3aGVuIG5v
cm1hbCB1c2VycHRyIGlzIG5vdCBhdmFpbGFibGUsIHdoaWNoIG1lYW5zIGZvciBuZXcga2VybmVs
cwo+IHlvdSB3aWxsIG5lZWQgQ09ORklHX0k5MTVfVVNFUlBUUi4KPgo+IFNpZ25lZC1vZmYtYnk6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpS
ZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29t
PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
