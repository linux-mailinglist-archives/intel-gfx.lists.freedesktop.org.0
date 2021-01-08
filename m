Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DF52EF144
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 12:30:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C1F6E04E;
	Fri,  8 Jan 2021 11:30:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 356336E04E
 for <Intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 11:30:42 +0000 (UTC)
IronPort-SDR: otO2Jt4UcmLo2JwfwXjdvAM0+OoS5EH6qyey716zgmx99ht9qpnq5ppIEZ7FdX4kZ2cpu4muQQ
 yJh5ESDwKA2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="177679633"
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="177679633"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 03:30:41 -0800
IronPort-SDR: JTgNNHgw6D+bz5CBppIKTi91ssfO3KSVLOxfXWnRKO2NYJulggb6zuaDYcQSGKMHGqbyi2mBFR
 DfTdsnPQkIog==
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="422926019"
Received: from smoran5-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.27.227])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 03:30:39 -0800
MIME-Version: 1.0
In-Reply-To: <9d20bff6993bfcf5ff30dd766e930bb031b69d93.camel@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-3-sean.z.huang@intel.com>
 <9d20bff6993bfcf5ff30dd766e930bb031b69d93.camel@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <161010543675.3935.1412306268203884564@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 08 Jan 2021 13:30:36 +0200
Subject: Re: [Intel-gfx] [RFC-v19 02/13] drm/i915/pxp: set KCR reg init
 during the boot time
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

UXVvdGluZyBWaXZpLCBSb2RyaWdvICgyMDIxLTAxLTA3IDE3OjMxOjM2KQo+IE9uIFdlZCwgMjAy
MS0wMS0wNiBhdCAxNToxMiAtMDgwMCwgSHVhbmcsIFNlYW4gWiB3cm90ZToKPiA+IFNldCB0aGUg
S0NSIGluaXQgZHVyaW5nIHRoZSBib290IHRpbWUsIHdoaWNoIGlzCj4gPiByZXF1aXJlZCBieSBo
YXJkd2FyZSwgdG8gYWxsb3cgdXMgZG9pbmcgZnVydGhlcgo+ID4gcHJvdGVjdGlvbiBvcGVyYXRp
b24gc3VjaCBhcyBzZW5kaW5nIGNvbW1hbmRzIHRvCj4gPiBHUFUgb3IgVEVFLgo+ID4gCj4gPiBT
aWduZWQtb2ZmLWJ5OiBIdWFuZywgU2VhbiBaIDxzZWFuLnouaHVhbmdAaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYyB8IDggKysrKysr
KysKPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYwo+ID4gaW5kZXggOWJjM2M3ZTMwNjU0Li5mNTY2
YTRmZGEwNDQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxf
cHhwLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYwo+ID4g
QEAgLTYsNiArNiwxMiBAQAo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfcHhwLmgiCj4gPiDCoCNpbmNs
dWRlICJpbnRlbF9weHBfY29udGV4dC5oIgo+ID4gwqAKPiA+ICsvKiBLQ1IgcmVnaXN0ZXIgZGVm
aW5pdGlvbnMgKi8KPiAKPiBwbGVhc2UgZGVmaW5lIHRoaXMgaW4gaTkxNV9yZWcuaAoKR2VuZXJh
bGx5IHRoZSB0cmVuZCBvbiB0aGUgR1Qgc2lkZSBpcyB0byBjb250YWluIGluIGEgLmMgZmlsZSBp
ZiB0aGVyZSBhcmUKbm8gc2hhcmVkIHVzZXJzIGxpa2UgdGhlc2UuIFNvIHRoZXkgc2hvdWxkIGJl
IGF0IHRoaXMgc3BvdCwgeWV0IHRoZSByZXN0Cm9mIHRoZSByZXZpZXcgY29tbWVudHMgYXBwbHku
CgpUaGUgc3B1cmlvdXMgY29tbWVudHMgc2hvdWxkIGJlIGRyb3BwZWQgYW5kIGxpa2UgUm9kcmln
byBwb2ludGVkIG91dCwgd2UKc2hvdWxkIGJlIHVzaW5nIHRoZSBhcHByb3ByaWF0ZSBtYWNyb3Mg
Zm9yIGEgbWFza2VkIHdyaXRlcywgbm90IGJha2luZyBpbgp0aGUgI2RlZmluZS4KClJlZ2FyZHMs
IEpvb25hcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
