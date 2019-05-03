Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1253F127F1
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 08:44:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4252A895C4;
	Fri,  3 May 2019 06:44:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34DB8895C4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 06:44:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 23:44:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,424,1549958400"; d="scan'208";a="170187184"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 23:44:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
In-Reply-To: <20190502154507.GD22997@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190425185253.3197-1-imre.deak@intel.com>
 <20190426083912.31456.83084@emeril.freedesktop.org>
 <20190502141755.GB22997@ideak-desk.fi.intel.com> <87y33ooqxy.fsf@intel.com>
 <20190502154507.GD22997@ideak-desk.fi.intel.com>
Date: Fri, 03 May 2019 09:46:15 +0300
Message-ID: <87pnp0nih4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D__drm/i915/icl=3A_Factor_out_co?=
 =?utf-8?q?mbo_PHY_lane_power_setup_helper?=
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

T24gVGh1LCAwMiBNYXkgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90
ZToKPiBPbiBUaHUsIE1heSAwMiwgMjAxOSBhdCAwNTo0NTo0NVBNICswMzAwLCBKYW5pIE5pa3Vs
YSB3cm90ZToKPj4gT24gVGh1LCAwMiBNYXkgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPiB3cm90ZToKPj4gPiBUaGFua3MgZm9yIHRoZSByZXZpZXcsIHNlcmllcyBwdXNoZWQg
dG8gLWRpbnEsIHdpdGggdGhlIHMvaWNsXy9pbnRlbF8vCj4+ID4gY2hhbmdlIGFuZCBhZGRpbmcg
dGhlIGhlYWRlcnMgdG8gaW50ZWxfY29tYm9fcGh5LmggcmVxdWlyZWQgYnkgdGhlCj4+ID4gcmVj
ZW50IGhlYWRlciByZWZhY3RvcmluZy4KPj4gCj4+IEhleSwgSSBleHBlY3RlZCBhIHJlc2VuZC4g
UGxlYXNlIGFsd2F5cyByZXNlbmQgdGhlIHRoZSByZWJhc2VkIHBhdGNoZXMKPj4gZm9yIENJLCBh
bmQgb25seSBwdXNoIHBhdGNoZXMgdGhhdCBoYXZlIGdvbmUgdGhyb3VnaCBDSSEKPgo+IE9rLCB3
aWxsIGRvIHNvLgo+Cj4gSSBhc3N1bWUgdGhvdWdoIHRoYXQgdHJpdmlhbCBjaGFuZ2VzIG9ubHkg
aW4gdGhlIGNvbW1pdCBtZXNzYWdlIGFuZC9vcgo+IGNvZGUgY29tbWVudHMgLSBpZiB0aGUgcmV2
aWV3ZXIgaGFzIGFncmVlZCB0byB0aGVtIC0gZG9uJ3QgbmVlZCBhCj4gcmVzZW5kLiBUaGF0IHdv
dWxkIG9ubHkgcmVzdWx0IGluIGluIGFuIHVuZWNlc3NhcnkgcnVuIHRocm91Z2ggQ0kgd2l0aAo+
IHVuY2hhbmdlZCBjb2RlLgoKWXVwLgoKQlIsCkphbmkuCgoKLS0gCkphbmkgTmlrdWxhLCBJbnRl
bCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
