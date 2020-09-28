Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A48327B2FA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 19:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1380E6E02F;
	Mon, 28 Sep 2020 17:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B89489FDE;
 Mon, 28 Sep 2020 17:20:50 +0000 (UTC)
IronPort-SDR: RESdb/tQoBzYGNMWBdhjx5Ov69kOuqWAkg4zrQBJCkuZRo5NQhSOIPjVrQ6rYmziOotACswqkl
 r5GPlNEze9Nw==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="149805034"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="149805034"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 10:20:46 -0700
IronPort-SDR: voJRqpdc2AfH6Aa0HSMWg0ANYk2vsOSyIXB36HXBI35k3qLOctHd1Yg3M784eaLtJq5jugJ4LO
 s0c1WaC4eh8A==
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="488669860"
Received: from lizwalsh-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.86.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 10:20:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, James
 Ausmus <james.ausmus@intel.com>
In-Reply-To: <20200928150257.GW6112@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200928080931.246347-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20200928080931.246347-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87a6xaow40.fsf@intel.com> <20200928141543.GG5197@jausmus-gentoo-dev6>
 <20200928150257.GW6112@intel.com>
Date: Mon, 28 Sep 2020 20:20:59 +0300
Message-ID: <87y2ktom10.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/edp/jsl: Update vswing table
 for HBR and HBR2
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
Cc: hariom.pandey@intel.com, airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyOCBTZXAgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gTW9uLCBTZXAgMjgsIDIwMjAgYXQgMDc6MTU6NDNBTSAt
MDcwMCwgSmFtZXMgQXVzbXVzIHdyb3RlOgo+PiBPbiBNb24sIFNlcCAyOCwgMjAyMCBhdCAwNDo0
MzoxMVBNICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4gPiBPbiBNb24sIDI4IFNlcCAyMDIw
LCBUZWphcyBVcGFkaHlheSA8dGVqYXNrdW1hcnguc3VyZW5kcmFrdW1hci51cGFkaHlheUBpbnRl
bC5jb20+IHdyb3RlOgo+PiA+ID4gSlNMIGhhcyB1cGRhdGUgaW4gdnN3aW5nIHRhYmxlIGZvciBl
RFAKPj4gPiAKPj4gPiBJJ3ZlIHRob3VnaHQgdGhlIFRMQSBmb3IgSmFzcGVyIExha2UgaXMgSlNQ
LCBub3QgSlNMLiBBdCBsZWFzdCB3ZSBoYXZlCj4+ID4gUENIX0pTUCBmb3IgSmFzcGVyIExha2Ug
UENILgo+PiAKPj4gSlNQID09IFBvaW50ICh0aGUgUENIKSwgSlNMID09IExha2UKPgo+IC5QVCB3
YXMgIjxzb21ldGhpbmc+IFBvaW50IiwgLi5QIHN0YW5kcyBqdXN0IGZvciAiPHNvbWV0aGluZz4g
UENIIiBJSVJDLgoKWWVhaCwgbm93YWRheXMgaXQgZG9lc24ndCBoYXZlICJQb2ludCIsIGhvd2V2
ZXIgYnNwZWMgYWdyZWVzIG9uIHRoZSBKU0wKYWNyb255bSBmb3IgSmFzcGVyIExha2UuCgpXaGlj
aCBtZWFucyB3ZSBzaG91bGQgcHJvYmFibHkgdXNlIFBDSF9KU0wgZm9yIEphc3BlciBMYWtlIFBD
SCBhcwp3ZWxsLiBVZ2guCgoKQlIsCkphbmkuCgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
