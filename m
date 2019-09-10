Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E94FCAEF27
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 18:06:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E1776E924;
	Tue, 10 Sep 2019 16:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A0D6E924
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 16:06:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 09:06:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,490,1559545200"; d="scan'208";a="200313712"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 10 Sep 2019 09:06:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2019 19:06:45 +0300
Date: Tue, 10 Sep 2019 19:06:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190910160645.GU7482@intel.com>
References: <20190910154252.30503-1-matthew.d.roper@intel.com>
 <20190910154252.30503-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910154252.30503-3-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 2/8] drm/i915: Use literal representation
 of cdclk tables
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

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMDg6NDI6NDZBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKLi4uIAo+ICtzdHJ1Y3QgaW50ZWxfY2RjbGtfdmFscyB7Cj4gKwl1MzIgcmVmY2xrOwoKT2gs
IEkgdGhpbmsgKGF0IGxlYXN0IGN1cnJlbnRseSkgcmVmY2xrIHdvdWxkIGZpdCBpbnRvIHUxNiwK
c28gd2UgY291bGQgcGFjayB0aGlzIGEgYml0IHRpZ2h0ZXIgc3RpbGwuCgo+ICsJdTMyIGNkY2xr
Owo+ICsJdTggZGl2aWRlcjsJLyogQ0QyWCBkaXZpZGVyICogMiAqLwo+ICsJdTggcmF0aW87Cj4g
K307Cj4gKwo+ICBpbnQgaW50ZWxfY3J0Y19jb21wdXRlX21pbl9jZGNsayhjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gIHZvaWQgaW50ZWxfY2RjbGtfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gIHZvaWQgaW50ZWxfY2RjbGtfdW5pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
PiBpbmRleCBlMjg5YjRmZmQzNGIuLmZmNmFmZjJhNDg2NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAo+IEBAIC0xNDIwLDYgKzE0MjAsOSBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7
Cj4gIAkJLyogVGhlIGN1cnJlbnQgaGFyZHdhcmUgY2RjbGsgc3RhdGUgKi8KPiAgCQlzdHJ1Y3Qg
aW50ZWxfY2RjbGtfc3RhdGUgaHc7Cj4gIAo+ICsJCS8qIGNkY2xrLCBkaXZpZGVyLCBhbmQgcmF0
aW8gdGFibGUgZnJvbSBic3BlYyAqLwo+ICsJCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa192YWxz
ICp0YWJsZTsKPiArCj4gIAkJaW50IGZvcmNlX21pbl9jZGNsazsKPiAgCX0gY2RjbGs7Cj4gIAo+
IC0tIAo+IDIuMjAuMQoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
