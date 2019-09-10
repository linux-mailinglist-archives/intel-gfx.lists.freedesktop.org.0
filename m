Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E88AE4B3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 09:32:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2739E6E83D;
	Tue, 10 Sep 2019 07:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D326E842
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 07:32:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 00:32:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="184071398"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.121.189])
 ([10.66.121.189])
 by fmsmga008.fm.intel.com with ESMTP; 10 Sep 2019 00:32:17 -0700
To: "Sharma, Shashank" <shashank.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-6-animesh.manna@intel.com>
 <01ce6461-6812-8e26-7132-b2a93ef76a36@intel.com>
 <67ef0867-b867-a4e5-6fde-550f7ad2c41c@intel.com>
 <FF3DDC77922A8A4BB08A3BC48A1EA8CB8DFF3613@BGSMSX101.gar.corp.intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <f56cfac9-2096-e43e-425a-fe0d6f4be3a9@intel.com>
Date: Tue, 10 Sep 2019 13:02:16 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <FF3DDC77922A8A4BB08A3BC48A1EA8CB8DFF3613@BGSMSX101.gar.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 05/11] drm/i915/dsb: Check DSB engine
 status.
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
Cc: "Thierry, Michel" <michel.thierry@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzEwLzIwMTkgODo0NCBBTSwgU2hhcm1hLCBTaGFzaGFuayB3cm90ZToKPgo+PiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBNYW5uYSwgQW5pbWVzaAo+PiBTZW50OiBN
b25kYXksIFNlcHRlbWJlciA5LCAyMDE5IDEwOjI3IFBNCj4+IFRvOiBTaGFybWEsIFNoYXNoYW5r
IDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPjsgaW50ZWwtCj4+IGdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPj4gQ2M6IFRoaWVycnksIE1pY2hlbCA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29t
PjsgTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Owo+PiBWaXZpLCBSb2RyaWdv
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiBTdWJqZWN0OiBSZTogW1BBVENIIHY1IDA1LzEx
XSBkcm0vaTkxNS9kc2I6IENoZWNrIERTQiBlbmdpbmUgc3RhdHVzLgo+Pgo+Pgo+Pgo+PiBPbiA5
LzkvMjAxOSA2OjQzIFBNLCBTaGFybWEsIFNoYXNoYW5rIHdyb3RlOgo+Pj4gT24gOS83LzIwMTkg
NDozNyBQTSwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPj4+PiArI2RlZmluZSBfRFNCU0xfSU5TVEFO
Q0VfQkFTRSAgICAgICAgMHg3MEIwMAo+Pj4+ICsjZGVmaW5lIERTQlNMX0lOU1RBTkNFKHBpcGUs
IGlkKSAgICAoX0RTQlNMX0lOU1RBTkNFX0JBU0UgKyBcCj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgIChwaXBlKSAqIDB4MTAwMCArIChpZCkgKiAxMDApCj4+PiBXaHkgaXMgcGlwZSBpbiAoKSA/
Cj4+IG1taW8gb2Zmc2V0IHBlciBEU0IgZGVwZW5kIG9uIHBpcGUgYW5kIGRzYi1pZCAoMyBEU0Ig
cGVyIHBpcGUuKSBvZmZzZXQgb2YgUElQRV9BCj4+IERTQjEtPiA3MEIwMCBvZmZzZXQgb2YgUElQ
RV9CIERTQjEtPiA3MUIwMCBhbmQgc28gb24uLi4KPj4KPiBUaGUgcXVlc3Rpb24gaGVyZSBpcyB3
aHkgaXMgdGhlICdwaXBlJyBpbiBicmFjZXMgPyB3aHkgaXMgaXQgJyhwaXBlKScsIGluc3RlYWQg
b2YgJ3BpcGUnLiBJIGRvbuKAmXQgc2VlIGEgcmVhc29uLgpKdXN0IGZvbGxvd2VkIGdlbmVyYWwg
bWFjcm8gZGVmaW5pdGlvbiBydWxlLCBhbSBJIG1pc3NpbmcgYW55dGhpbmcuCmZvciBleGFtcGxl
OiAjZGVmaW5lIGRvdWJsZSh4KSB4KjIKZG91YmxlKDIrMykgd2lsbCBnaXZlIHdyb25nIHJlc3Vs
dCBpZiB3ZSBkbyBub3QgZGVmaW5lIGFzCiNkZWZpbmUgZG91YmxlKHgpICh4KSoyCgpSZWdhcmRz
LApBbmltZXNoCj4gICAKPiAtIFNoYXNoYW5rCj4+IFJlZ2FyZHMsCj4+IEFuaW1lc2gKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
