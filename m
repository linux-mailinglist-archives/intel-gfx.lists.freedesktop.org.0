Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 243252A3FB7
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 10:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 391886E867;
	Tue,  3 Nov 2020 09:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A1E46E867
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 09:09:56 +0000 (UTC)
IronPort-SDR: SrjJN9p+gBXzgcQ9JOdyd/ThFiCNrtWBqCBiXnjobPEhAssZNGVW8UPD0P2enFgnTrlKnwONsj
 VFMODCu2rJjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="168239709"
X-IronPort-AV: E=Sophos;i="5.77,447,1596524400"; d="scan'208";a="168239709"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 01:09:56 -0800
IronPort-SDR: EaGNYt/dhIr6CKqjo4cYSw3kC/GLfmRHR134TGISBPjpQgbhHogncOtIu9/PnHkJJ/n/akiQny
 GTZdkymBWc7g==
X-IronPort-AV: E=Sophos;i="5.77,447,1596524400"; d="scan'208";a="470725701"
Received: from sfhansen-mobl.ger.corp.intel.com (HELO
 W10-45-itb-64.SSPE.ch.intel.com) ([10.249.254.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 01:09:54 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-40-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <82814eec-1bfc-647e-2e7d-2c1f3cd79239@linux.intel.com>
Date: Tue, 3 Nov 2020 10:09:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-40-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 39/61] drm/i915: Use a single page table
 lock for each gtt.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzE2LzIwIDEyOjQ0IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBXZSBtYXkg
Y3JlYXRlIHBhZ2UgdGFibGUgb2JqZWN0cyBvbiB0aGUgZmx5LCBidXQgd2UgbWF5IG5lZWQgdG8K
PiB3YWl0IHdpdGggdGhlIHd3IGxvY2sgaGVsZC4gSW5zdGVhZCBvZiB3YWl0aW5nIG9uIGEgZnJl
ZWQgb2JqCj4gbG9jaywgZW5zdXJlIHdlIGhhdmUgdGhlIHNhbWUgbG9jayBmb3IgZWFjaCBvYmpl
Y3QgdG8ga2VlcAo+IC1FREVBRExLIHdvcmtpbmcuIFRoaXMgZW5zdXJlcyB0aGF0IGk5MTVfdm1h
X3Bpbl93dyBjYW4gbG9jawo+IHRoZSBwYWdlIHRhYmxlcyB3aGVuIHJlcXVpcmVkLgo+Cj4gU2ln
bmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4Lmlu
dGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQuYyAg
fCAgOCArKysrKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5jICAgfCAz
OCArKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0dC5oICAgfCAgNSArKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9wcGd0dC5jIHwgIDMgKystCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAg
ICAgIHwgIDUgKysrKwo+ICAgNSBmaWxlcyBjaGFuZ2VkLCA1NiBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+ClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxz
dHJvbUBsaW51eC5pbnRlbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
