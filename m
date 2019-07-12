Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3797A669F7
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 11:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629F86E334;
	Fri, 12 Jul 2019 09:34:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E276E334
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 09:34:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 02:34:50 -0700
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="341652466"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 02:34:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Date: Fri, 12 Jul 2019 11:34:41 +0200
Message-ID: <24439748.WeQJFEe7oc@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <156291699177.8011.15324729567957007715@jlahtine-mobl.ger.corp.intel.com>
References: <20190711073155.10926-1-janusz.krzysztofik@linux.intel.com>
 <20190711073155.10926-3-janusz.krzysztofik@linux.intel.com>
 <156291699177.8011.15324729567957007715@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915: Replace "_load" with
 "_probe" consequently
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

T24gRnJpZGF5LCBKdWx5IDEyLCAyMDE5IDk6MzY6MzEgQU0gQ0VTVCBKb29uYXMgTGFodGluZW4g
d3JvdGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTEgMTA6MzE6NTQp
Cj4gPiBVc2UgdGhlICJfcHJvYmUiIG5vbWVuY2xhdHVyZSBub3Qgb25seSBpbiBpOTE1X2RyaXZl
cl9wcm9iZSgpIGhlbHBlcgo+ID4gbmFtZSBidXQgYWxzbyBpbiBvdGhlciByZWxhdGVkIGZ1bmN0
aW9uIC8gdmFyaWFibGUgbmFtZXMgZm9yCj4gPiBjb25zaXN0ZW5jeS4gCj4gCj4gPiBPbmx5IHRo
ZSB1c2Vyc3BhY2UgZXhwb3NlZCBuYW1lIG9mIGEgcmVsYXRlZCBtb2R1bGUKPiA+IHBhcmFtZXRl
ciBpcyBsZWZ0IHVudG91Y2hlZC4KPiAKPiBTeW5jaW5nIHdpdGggSUdULCBJIHRoaW5rIHdlIGNv
dWxkIGFsc28gY2hhbmdlIHRoZSBtb2R1bGUgcGFyYW1ldGVyCj4gbmFtZS4KClRoZXJlIHdhcyBh
IHBhdGNoIGZvciB0aGF0IGluIFJGQyB2MSBvZiB0aGUgc2VyaWVzLCBJJ3ZlIGV4Y2x1ZGVkIGl0
IGZyb20gdjIgCmp1c3QgYmVjYXVzZSBpdCByZXF1aXJlcyBhIGNvcnJlc3BvbmRpbmcgcGF0Y2gg
b24gSUdUIHNpZGUgd2hpY2ggSSBoYXZlbid0IGhhZCAKcHJlcGFyZWQgeWV0LiAgSSdtIGdvaW5n
IHRvIHN1Ym1pdCBib3RoIHNvb24uCgpUaGFua3MsCkphbnVzegoKPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNv
bT4KPiAKPiBSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGlu
dXguaW50ZWwuY29tPgo+IAo+IFJlZ2FyZHMsIEpvb25hcwo+IAoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
