Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB93D2A2665
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 09:50:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A3C6E435;
	Mon,  2 Nov 2020 08:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6BF46E435
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 08:50:11 +0000 (UTC)
IronPort-SDR: nyHkHsKYCtVPZnjINYMra4l3ekRI2EdVLEkHI9x2xmt1tVWxIGGwgyzxNc8oKx5x4KqQaZ11er
 +V2e0Vz3yRfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="148136367"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="148136367"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 00:50:10 -0800
IronPort-SDR: GSSaX80py/ivzILmTnFZ3PmcxoFLbfVfeeZvfye7dL0xFZBkDf+HlJ3wqL/6BzN/oU6hJ5AXCS
 3+im0834l3DQ==
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="537938074"
Received: from cpphilpo-mobl3.ger.corp.intel.com (HELO [10.252.49.225])
 ([10.252.49.225])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 00:50:08 -0800
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-15-maarten.lankhorst@linux.intel.com>
 <02b0d2c2-5687-03b1-7741-34a3c2c819ac@shipmail.org>
 <49e1aaa5-cf06-7e72-93e6-d744f7198bc1@linux.intel.com>
 <210262c8-e5b9-8f15-b0ce-b0816eab8277@shipmail.org>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <6d561219-e349-ea54-bc85-d272da63e75c@linux.intel.com>
Date: Mon, 2 Nov 2020 09:50:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <210262c8-e5b9-8f15-b0ce-b0816eab8277@shipmail.org>
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

T3AgMzAtMTAtMjAyMCBvbSAxNToxOCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtIChJbnRlbCk6
Cj4KPiBPbiAxMC8zMC8yMCAxMToxMSBBTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IE9w
IDMwLTEwLTIwMjAgb20gMTA6MjYgc2NocmVlZiBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpOgo+
Pj4gT24gMTAvMTYvMjAgMTI6NDMgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+Pj4+IFdl
IHNob3VsZCBub3QgYWxsb3cgdGhpcyBhbnkgbW9yZSwgYXMgaXQgd2lsbCBicmVhayB3aXRoIHRo
ZSBuZXcgdXNlcnB0cgo+Pj4+IGltcGxlbWVudGF0aW9uLCBpdCBjb3VsZCBzdGlsbCBiZSBtYWRl
IHRvIHdvcmssIGJ1dCB0aGVyZSdzIG5vIHBvaW50IGluCj4+Pj4gZG9pbmcgc28uCj4+Pj4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+Pj4gSWZkZWZzIGRvbid0IGFwcGVhciBjb25zaXN0ZW50IHdpdGggdGhl
IGNvbW1pdCBtZXNzYWdlLiBXcm9uZyBwYXRjaCBvciBzZXBhcmF0ZSBwYXRjaD8KPj4+Cj4+PiBB
bHNvIHBsZWFzZSBhZGQgYSBkaXNjdXNzaW9uIHdoYXQgaW1wYWN0IHRoaXMgaGFzIG9uIGV4aXN0
aW5nIHVzZXItc3BhY2UuCj4+Pgo+Pj4KPj4gUmVnYXJkaW5nIGlmZGVmcywgYWxsIHRoZSB1c2Vy
cHRyIGNvZGVpcyB1bnVzZWQgd2hlbiBtbXUgbm90aWZlcnMgYXJlIG5vdCBhdmFpbGFibGUsIHNv
IEkgbWFkZSBpdCBjb25kaXRpb25hbCBvbiB0aGF0Lgo+Cj4gWWVzIEkgaGF2ZSBub3RoaW5nIGFn
YWluc3QgdGhlIGNhbmdlIGl0c2VsZi4gQnV0IHRoaXMgaXMgYSBmaXh1cCBjaGFuZ2UgdGhhdCBo
YXMgbm90aGluZyB0byBkbyB3aXRoIHJlamVjdGluZyBVTlNZTkNIUk9OSVpFRCBhbmQgdGh1cyBp
dCBzaG91bGQgYmUgbW92ZWQgdG8gYSBzZXBhcmF0ZSBjb21taXQgb3IgcGVyaGFwcyBzcXVhc2hl
ZCBpbiB0aGUgYmlnIHVzZXJwdHIgcmV3cml0ZT8KPgo+IC9UaG9tYXMKPgo+CkknbGwgZG8gaXQg
aW4gYSBzZXBhcmF0ZSBjb21taXQsIHNpbmNlIGl0J3MgYSBzZXBhcmF0ZSBjaGFuZ2UuIDopCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
