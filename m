Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C7CD2C11
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 16:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89146E03F;
	Thu, 10 Oct 2019 14:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C066E03F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 14:04:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 07:04:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="184424928"
Received: from pashteka-mobl.ger.corp.intel.com (HELO [10.252.41.207])
 ([10.252.41.207])
 by orsmga007.jf.intel.com with ESMTP; 10 Oct 2019 07:04:39 -0700
To: Matt Roper <matthew.d.roper@intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-5-maarten.lankhorst@linux.intel.com>
 <20191007193717.GI6810@mdroper-desk1.amr.corp.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <b87162fa-3962-a909-c3e3-a83bab7bef3a@linux.intel.com>
Date: Thu, 10 Oct 2019 16:04:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191007193717.GI6810@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/24] drm/i915: Remove cursor use of
 properties for coordinates
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

T3AgMDctMTAtMjAxOSBvbSAyMTozNyBzY2hyZWVmIE1hdHQgUm9wZXI6Cj4gT24gRnJpLCBPY3Qg
MDQsIDIwMTkgYXQgMDE6MzQ6NTRQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+
IFdlIGhhdmUgYSBzcmMgYW5kIGRlY3QgcmVjdGFuZ2xlLCB1c2UgaXQgaW5zdGVhZCBvZiByZWx5
aW5nIG9uCj4+IHRoZSBjb3JlIGRybSBwcm9wZXJ0aWVzLgo+Pgo+PiBUaGlzIHJlbW92ZXMgdGhl
IHNwZWNpYWwgY2FzZSBpbiB0aGUgd2F0ZXJtYXJrIGNvZGUgZm9yIGN1cnNvciB3L2guCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+Cj4gSSB0aGluayB5b3Ugc2hvdWxkIG1ha2UgaXQgbW9yZSBjbGVhciBpbiB0
aGUgY29tbWl0IG1lc3NhZ2UgaGVyZSB0aGF0Cj4geW91J3JlIGFjdHVhbGx5IG92ZXJ3cml0aW5n
IHRoZSBjbGlwcGVkIGNvb3JkaW5hdGVzIGluIHNyYy9kc3Qgd2l0aCB0aGUKPiB1bmNsaXBwZWQg
Y29vcmRpbmF0ZXMgdGhhdCB3ZSBwcm9ncmFtIGludG8gb3VyIGhhcmR3YXJlLiAgSSBtaXNzZWQg
dGhhdAo+IHRoZSBmaXJzdCB0aW1lIHJlYWRpbmcgdGhyb3VnaCB0aGUgcGF0Y2g7IHVzaW5nIGNs
aXBwZWQgY29vcmRpbmF0ZXMKPiB3b3VsZCBvYnZpb3VzbHkgY2F1c2UgbG90cyBvZiBmYWlsdXJl
cy4KPgo+IEFjdHVhbGx5LCBldmVuIGlmIHRoaXMgaXMgc2FmZSBhdCB0aGUgbW9tZW50LCB3ZSdy
ZSB2aW9sYXRpbmcgdGhlCj4gZG9jdW1lbnRlZCBleHBlY3RhdGlvbnMgb2YgdGhlIERSTSBjb3Jl
LiAgSSdkIHN1Z2dlc3QgYWxzbyBhZGRpbmcgYSBkcm0KPiBjb3JlIHBhdGNoIHRoYXQgdXBkYXRl
cyB0aGUgY29tbWVudCBvbiBkcm1fcGxhbmVfc3RhdGUgdG8gaW5kaWNhdGUgdGhhdAo+IHRoZSBj
b250ZW50cyBtYXkgb3IgbWF5IG5vdCBiZSBjbGlwcGVkIChkcml2ZXItc3BlY2lmaWMpIGFuZCB0
aGF0IHRoZQo+IGNvcmUgc2hvdWxkbid0IGFzc3VtZSBlaXRoZXIgd2F5LgoKVXBkYXRlZCB0aGUg
Y29yZSdzIGV4cGVjdGF0aW9ucywgdG8gZXhwbGljaXRseSBhbGxvdyB0aGUgdW5jbGlwcGVkIGNv
b3JkaW5hdGVzLAphbmQgcHVzaGVkIHBhdGNoIDItNiB3aXRoIHRoZSBmZWVkYmFjay4KClRoYW5r
cyBmb3IgcmV2aWV3cyBhbGwuIDopCgp+TWFhcnRlbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
