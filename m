Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CE01177AF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 21:46:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7147E89FEC;
	Mon,  9 Dec 2019 20:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2A1689FEC
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 20:46:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 12:39:53 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="207028885"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.252.194.64])
 ([10.252.194.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 09 Dec 2019 12:39:53 -0800
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191205220243.27403-1-daniele.ceraolospurio@intel.com>
 <20191205220243.27403-4-daniele.ceraolospurio@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <cc13ec4e-9831-c2cd-618a-796294c8679e@Intel.com>
Date: Mon, 9 Dec 2019 12:39:50 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191205220243.27403-4-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/i915/guc: kill the GuC client
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTIvNS8yMDE5IDE0OjAyLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+IFdlIG5v
dyBvbmx5IHVzZSAxIGNsaWVudCB3aXRob3V0IGFueSBwbGFuIHRvIGFkZCBtb3JlLiBUaGUgY2xp
ZW50IGlzCj4gYWxzbyBvbmx5IGhvbGRpbmcgaW5mb3JtYXRpb24gYWJvdXQgdGhlIFdRIGFuZCB0
aGUgcHJvY2VzcyBkZXNjLCBzbyB3ZQo+IGNhbiBqdXN0IG1vdmUgdGhvc2UgaW4gdGhlIGludGVs
X2d1YyBzdHJ1Y3R1cmUgYW5kIGFsd2F5cyB1c2Ugc3RhZ2VfaWQKPiAwLgo+Cj4gdjI6IGZpeCBj
b21tZW50IChKb2huKQo+IHYzOiBmaXggdGhlIGNvbW1lbnQgZm9yIHJlYWwsIGZpeCBrZXJuZWxk
b2MKPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpk
ZWN6a29AaW50ZWwuY29tPgo+IENjOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50
ZWwuY29tPgo+IENjOiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4KPiAt
LS0KPiAgIERvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0ICAgICAgICAgICAgICAgICAgICB8ICAg
MyAtCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jICAgICAgICAgfCAg
IDYgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oICAgICAgICB8
ICAgOCArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaCAg
IHwgICAxIC0KPiAgIC4uLi9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24u
YyB8IDI3NiArKysrKy0tLS0tLS0tLS0tLS0KPiAgIC4uLi9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX3N1Ym1pc3Npb24uaCB8ICA0NSArLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jICAgICAgICAgICB8ICAxMSAtCj4gICA3IGZpbGVzIGNoYW5nZWQsIDg5IGlu
c2VydGlvbnMoKyksIDI2MSBkZWxldGlvbnMoLSkKCgpSZXZpZXdlZC1ieTogSm9obiBIYXJyaXNv
bjxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
