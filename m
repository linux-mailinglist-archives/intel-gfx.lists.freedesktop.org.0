Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBAE15D284
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 08:06:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7811E6E448;
	Fri, 14 Feb 2020 07:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB78C6E448
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 07:06:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 23:06:00 -0800
X-IronPort-AV: E=Sophos;i="5.70,439,1574150400"; d="scan'208";a="222918993"
Received: from ablank-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.179])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 23:05:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <158143872800.3635.7449111689280637403@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211161451.6867-1-jani.nikula@intel.com>
 <20200211162903.GW13686@intel.com>
 <158143872800.3635.7449111689280637403@skylake-alporthouse-com>
Date: Fri, 14 Feb 2020 09:06:26 +0200
Message-ID: <87pneh6425.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: move intel_csr.[ch] under
 display/
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxMSBGZWIgMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyasOkbMOkICgyMDIwLTAyLTExIDE2OjI5OjAz
KQo+PiBPbiBUdWUsIEZlYiAxMSwgMjAyMCBhdCAwNjoxNDo1MFBNICswMjAwLCBKYW5pIE5pa3Vs
YSB3cm90ZToKPj4gPiBUaGUgRE1DIGZpcm13YXJlIGlzIGFib3V0IGRpc3BsYXkuIE1vdmUgdGhl
IGhhbmRsaW5nIHVuZGVyIGRpc3BsYXkuIE5vCj4+ID4gZnVuY3Rpb25hbCBjaGFuZ2VzLgo+PiA+
IAo+PiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+PiA+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
Cj4+IAo+PiBBY2tlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPj4gCj4+IEknbSBhbHNvIHRoaW5raW5nIHMvY3NyL2RtYy8gbWlndGggYmUgYSBn
b29kIGlkZWEuIEkgZG9uJ3QgZXZlbgo+PiByZW1lbWJlciB3aGF0ICJjc3IiIG1lYW5zLi4uCj4K
PiBJJ3ZlIG5ldmVyIGtub3duIHdoYXQgY3NyIG1lYW50IDopCj4KPiBTaW5jZSBWaWxsZSB0b29r
IHRoZSBhY2ssCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgoKVGhhbmtzIGZvciB0aGUgYWNrICYgcmV2aWV3LCBwdXNoZWQgdG8gZGlucS4gSWYg
b25seSBJIGNvdWxkIGdldCByYiBvbgpwYXRjaCAyLzIgc28gSSBjb3VsZCBwdXNoIGl0IHRvby4g
OykKCkJSLApKYW5pLgoKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
