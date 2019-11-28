Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1197B10C84C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 13:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27B46E811;
	Thu, 28 Nov 2019 12:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610506E832
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 12:00:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 04:00:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="207171909"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 28 Nov 2019 04:00:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Nov 2019 14:00:00 +0200
Date: Thu, 28 Nov 2019 14:00:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191128120000.GQ1208@intel.com>
References: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
 <20191127190556.1574-4-ville.syrjala@linux.intel.com>
 <22bb95e4088bfddf5349f7fe4c1e92840d05bed1.camel@intel.com>
 <9f56d7450f2a068958392112853c18654aa6f3cb.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9f56d7450f2a068958392112853c18654aa6f3cb.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: s/pipe_config/new_crtc_state/
 intel_{pre, post}_plane_update()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMTE6MTE6MTVQTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gV2VkLCAyMDE5LTExLTI3IGF0IDIzOjA5ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90
ZToKPiA+IE9uIFdlZCwgMjAxOS0xMS0yNyBhdCAyMTowNSArMDIwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiA+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiA+ID4gCj4gPiA+IFJlcGxhY2UgdGhlIG9sZCB3b3JsZCAncGlwZV9jb25maWcn
IHZhcmlhYmxlIG5hbWUgd2l0aCB0aGUgbmV3Cj4gPiA+IHRoaW5nLgo+ID4gPiAKPiAKPiBJIGd1
ZXNzIHlvdSBtZWFuIG9sZCB3b3JkICdwaXBlX2NvbmZpZyc/CgpOby4KCi0tIApWaWxsZSBTeXJq
w6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
