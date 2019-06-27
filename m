Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E4C58022
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 673BE6E117;
	Thu, 27 Jun 2019 10:23:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC996E117
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:23:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 03:23:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="183416790"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2019 03:23:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156163038452.20851.16048224810916743715@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190627091914.30795-1-jani.nikula@intel.com>
 <156163038452.20851.16048224810916743715@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 13:26:16 +0300
Message-ID: <878stnqq7r.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/irq: make
 i945gm_vblank_work_func() static again
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyNyBKdW4gMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDYtMjcgMTA6MTk6MTQpCj4+
IFRoZSBzdGF0aWMga2V5d29yZCB3YXMgYXBwYXJlbnRseSBhY2NpZGVudGFsbHkgcmVtb3ZlZCBp
biBjb21taXQKPj4gMDhmYThmZDBmYWE1ICgiZHJtL2k5MTU6IFN3aXRjaCB0byBwZXItY3J0YyB2
YmxhbmsgdmZ1bmNzIiksIGxlYWRpbmcgdG8KPj4gc3BhcnNlIHdhcm5pbmc6Cj4+IAo+PiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jOjMzODI6Njogd2FybmluZzogc3ltYm9sCj4+ICdp
OTQ1Z21fdmJsYW5rX3dvcmtfZnVuYycgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0
YXRpYz8KPj4gCj4+IE1ha2UgdGhlIGZ1bmN0aW9uIHN0YXRpYyBhZ2Fpbi4KPj4gCj4+IEZpeGVz
OiAwOGZhOGZkMGZhYTUgKCJkcm0vaTkxNTogU3dpdGNoIHRvIHBlci1jcnRjIHZibGFuayB2ZnVu
Y3MiKQo+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+Cj4gMyBwZW9w
bGUgKHdlbGwgMiBhbmQgYSByb2JvdCkgc2VuZCBwYXRjaGVzIGZvciB0aGUgc2FtZSBjb21waWxl
cgo+IHdhcm5pbmchIFRoYXQgbWVhbnMgc29tZXRoaW5nLCByaWdodD8KClRoYXQgd3JpdGluZyBw
YXRjaGVzIGlzIG1vcmUgcmV3YXJkaW5nIHRoYW4gcmVhZGluZyBwYXRjaGVzIHdyaXR0ZW4gYnkK
b3RoZXJzLi4uPyA7KQoKPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CgpUaGFua3MsIGxpa2V3aXNlLCBsZXQncyBzZWUgd2hvc2UgcGF0Y2ggcGFz
c2VzIENJIGZpcnN0LiBMb29rcyBsaWtlIHlvdXIKcGF0Y2ggcmVncmVzc2VzIG1vZHVsZSByZWxv
YWQuIDpECgpCUiwKSmFuaS4KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3Jh
cGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
