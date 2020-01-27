Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D7714A0B0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D966E4DE;
	Mon, 27 Jan 2020 09:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF9136E4DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 09:27:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 01:18:56 -0800
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="217225431"
Received: from jpanina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.12])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 01:18:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <157979008288.19995.17418209460090937508@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200123140004.14136-1-jani.nikula@intel.com>
 <20200123140004.14136-6-jani.nikula@intel.com>
 <20200123141646.GU13686@intel.com>
 <157979008288.19995.17418209460090937508@skylake-alporthouse-com>
Date: Mon, 27 Jan 2020 11:18:56 +0200
Message-ID: <87y2ttb6kf.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH RESEND 6/6] drm/i915/pm: use intel de
 functions for forcewake register access
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

T24gVGh1LCAyMyBKYW4gMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyasOkbMOkICgyMDIwLTAxLTIzIDE0OjE2OjQ2
KQo+PiBPbiBUaHUsIEphbiAyMywgMjAyMCBhdCAwNDowMDowNFBNICswMjAwLCBKYW5pIE5pa3Vs
YSB3cm90ZToKPj4gPiBNb3ZlIGF3YXkgZnJvbSBJOTE1X1JFQURfRlcoKSBhbmQgSTkxNV9XUklU
RV9GVygpIGluIGRpc3BsYXkgY29kZSwgYW5kCj4+ID4gc3dpdGNoIHRvIHVzaW5nIGludGVsX2Rl
X3JlYWRfZncoKSBhbmQgaW50ZWxfZGVfd3JpdGVfZncoKSwKPj4gPiByZXNwZWN0aXZlbHkuCj4+
ID4gCj4+ID4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgo+PiA+IAo+PiA+IFNpZ25lZC1vZmYtYnk6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+IAo+PiBPbmx5IGEgZmV3IG9k
ZGl0aWVzIHNwb3R0ZWQuIE92ZXJhbGwgc2VyaWVzIGxndG0KPgo+IENvbmN1cnJlZCwgY2hlY2tw
YXRjaCBpcyBnb2luZyB0byBoYXZlIHNvbWUgdmVyeSBzdGVybiB3b3JkcyByZWdhcmRpbmcKPiBz
b21lIG9mIHRob3NlIGxpbmVzIQo+Cj4+IEZvciBhbGwKPj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4KPiArMQo+IFJldmlld2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KClRoYW5rcyBmb3Ig
dGhlIHJldmlld3MsIEkgcHVzaGVkIHRoZSBvbmVzICpub3QqIGluIGRpc3BsYXkvIHdpdGggaG9w
ZXMKd2UnbGwgZG8gdGhlIG1hc3MgY29udmVyc2lvbiB0aGVyZSAodGhlIG90aGVyIHNlcmllcyku
CgpCUiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
