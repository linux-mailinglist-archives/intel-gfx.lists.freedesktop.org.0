Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A81D27E898
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 14:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F075389711;
	Wed, 30 Sep 2020 12:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE0689711;
 Wed, 30 Sep 2020 12:31:53 +0000 (UTC)
IronPort-SDR: qdwHt/tHrretYkd3h64o3fpgQUDdHbNeS0rhC/3HUSuSzmXaQQtPum3utZQCKLsjPgvgtoIUzG
 uFG8k+ZAz0LQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159820546"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="159820546"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 05:31:43 -0700
IronPort-SDR: DJ8lgOkaBzmFxSDQwjhap1z05tTZuHqm522Gjw8OwucWrBjcTPeYUzncUvAvKIEgkO65weRZ16
 JfVDiFT+C3Ww==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="497339803"
Received: from dkuts-mobl3.ccr.corp.intel.com (HELO localhost)
 ([10.249.36.150])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 05:31:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Souza\, Jose" <jose.souza@intel.com>,
 "ville.syrjala\@linux.intel.com" <ville.syrjala@linux.intel.com>
In-Reply-To: <a4a075597c7d3e65b25598ab696a59eccbd2a069.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200929121127.254086-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <d235e6f34182e327d8bb46383f6c3ef518b5fc23.camel@intel.com>
 <20200929200201.GH6112@intel.com>
 <a4a075597c7d3e65b25598ab696a59eccbd2a069.camel@intel.com>
Date: Wed, 30 Sep 2020 15:31:57 +0300
Message-ID: <87362zo37m.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/edp/jsl: Update vswing table
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyOSBTZXAgMjAyMCwgIlNvdXphLCBKb3NlIiA8am9zZS5zb3V6YUBpbnRlbC5jb20+
IHdyb3RlOgo+IE9uIFR1ZSwgMjAyMC0wOS0yOSBhdCAyMzowMiArMDMwMCwgVmlsbGUgU3lyasOk
bMOkIHdyb3RlOgo+PiBJZiB0aGUgdGhpbmcgaGFzIG5vdGhpbmcgdG8gZG8gUENIIHRoZW4gaXQg
c2hvdWxkIG5vdCB1c2UgdGhlIFBDSCB0eXBlCj4+IGZvciB0aGUgdGhlIGNoZWNrLiBJbnN0ZWFk
IHdlIHNob3VsZCBqdXN0IGRvIHRoZSBFSEwvSlNMIHNwbGl0Lgo+Cj4gSW4gdGhlIGZpcnN0IHZl
cnNpb24gTWF0dCBSb3BlciBzdWdnZXN0ZWQgdG8gdXNlIFBDSCB0byBkaWZmZXJlbnRpYXRlCj4g
YmV0d2VlbiBFSEwgYW5kIEpTTCwgSmFuaSBhbHNvIGFncmVlZCB3aXRoIHRoaXMgc29sdXRpb24u
VGhpcyAyIFBDSHMKPiBjYW4gb25seSBiZSBhc3NvY2lhdGUgd2l0aCBFSEwgYW5kIEpTTCByZXNw
ZWN0aXZlbHksIHNvIG5vIGRvd25zaWRlcwo+IGhlcmUuCgpGV0lXIEkgc2FpZCwgIklmIHRoZSBk
aWZmZXJlbmNlIGlzIGluIHRoZSBQQ0giLCB3aXRob3V0IHBvbmRlcmluZwpmdXJ0aGVyLgoKQlIs
CkphbmkuCgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50
ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
