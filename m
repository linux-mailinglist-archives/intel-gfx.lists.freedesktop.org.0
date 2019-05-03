Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE13412FC0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 16:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83916E7A7;
	Fri,  3 May 2019 14:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4436E7A5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 14:05:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 07:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="145728878"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 03 May 2019 07:04:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2019 17:04:57 +0300
Date: Fri, 3 May 2019 17:04:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190503140457.GO24299@intel.com>
References: <20190429180020.27274-1-chris@chris-wilson.co.uk>
 <20190429180020.27274-4-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429180020.27274-4-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Disable semaphore busywaits
 on saturated systems
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
Cc: intel-gfx@lists.freedesktop.org, Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgMDc6MDA6MTlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IEFza2luZyB0aGUgR1BVIHRvIGJ1c3l3YWl0IG9uIGEgbWVtb3J5IGFkZHJlc3MsIHBl
cmhhcHMgbm90IHVuZXhwZWN0ZWRseQo+IGluIGhpbmRzaWdodCBmb3IgYSBzaGFyZWQgc3lzdGVt
LCBsZWFkcyB0byBidXMgY29udGVudGlvbiB0aGF0IGFmZmVjdHMKPiBDUFUgcHJvZ3JhbXMgdHJ5
aW5nIHRvIGNvbmN1cnJlbnRseSBhY2Nlc3MgbWVtb3J5LiBUaGlzIGNhbiBtYW5pZmVzdCBhcwo+
IGEgZHJvcCBpbiB0cmFuc2NvZGUgdGhyb3VnaHB1dCBvbiBoaWdobHkgb3Zlci1zYXR1cmF0ZWQg
d29ya2xvYWRzLgoKV2UgY2FuJ3QgdXNlIHRoZSBzaW5nYWxsaW5nIHNlbWFwaG9yZSB2YXJpYW50
PwoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
