Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381D0B7D12
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A11276F459;
	Thu, 19 Sep 2019 14:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D08826F459
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:40:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:40:27 -0700
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="188109622"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:40:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156890261244.31102.9382248560877726747@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1568901239.git.jani.nikula@intel.com>
 <48a647c1e9e59b27b9fcd2193835dad68bf3839f.1568901239.git.jani.nikula@intel.com>
 <156890261244.31102.9382248560877726747@skylake-alporthouse-com>
Date: Thu, 19 Sep 2019 17:40:22 +0300
Message-ID: <87woe4uz6x.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915: move gem init up from
 modeset init
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

T24gVGh1LCAxOSBTZXAgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDktMTkgMTU6MDM6NTgpCj4+
IFBhaXIgdGhlIGdlbSBpbml0IGFuZCBjbGVhbnVwIGluIHRoZSBzYW1lIGxheWVyLiBUaGlzIG1v
dmVzIHRoZSBnZW0gaW5pdAo+PiBiZWZvcmUgdGhlIG1vZGVzZXQgaW5pdC4KPgo+IFRoZSBpbXBv
cnRhbnQgcGFydCBoZXJlIHdhcyB0aGF0IEJJT1MgdGFrZW92ZXIgYnkgZGlzcGxheSBpcyBiZWZv
cmUgd2UKPiBjbGVhciB0aGUgR0dUVCBpbiBpOTE1X2dlbV9pbml0IC0+IGk5MTVfaW5pdF9nZ3R0
LiBpaXJjIG1hcmtpbmcgdXAgdGhlCj4gcHJlYWxsb2NhdGVkIEdHVFQgcmFuZ2VzIGlzIGluIGlu
dGVsX21vZGVzZXRfaW5pdC4KCkF3dywgdGhhbmtzLiBNb3JlIGRyYWdvbnMgdG8gdGFtZS4KCkJS
LApKYW5pLgoKCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
