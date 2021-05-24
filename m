Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFDF38E62F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 14:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49D326E55C;
	Mon, 24 May 2021 12:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9208F6E2DF;
 Mon, 24 May 2021 12:05:29 +0000 (UTC)
IronPort-SDR: TbGK4Qe8d2EhPh67Sx8KSYvGd2OILttg52gyr0XjKpF92seJGBwHYJjt5eg9do22G3qlnOD/Nj
 w8ScGESRTURg==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="263127461"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="263127461"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 05:05:28 -0700
IronPort-SDR: FTJcyCi62rSOS6abyxdMyktqHhLKitQag9FxkpNOKFdiLOWAACHUwrr8L+57pPY/k4V6W7pQCH
 15/2Jntr6tUA==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="475840387"
Received: from jaherrex-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.50.169])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 05:05:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Deucher\, Alexander" <Alexander.Deucher@amd.com>,
 "dim-tools\@lists.freedesktop.org" <dim-tools@lists.freedesktop.org>
In-Reply-To: <87h7iscpet.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210519084932.8666-1-jani.nikula@intel.com>
 <MN2PR12MB44884924C665EE6EDF3E17A2F72B9@MN2PR12MB4488.namprd12.prod.outlook.com>
 <87h7iscpet.fsf@intel.com>
Date: Mon, 24 May 2021 15:05:22 +0300
Message-ID: <87eedwcp6l.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [drm-rerere PATCH] nightly.conf: drop amd branches
 from drm-tip
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, "Koenig, 
 Christian" <Christian.Koenig@amd.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyNCBNYXkgMjAyMSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gV2VkLCAxOSBNYXkgMjAyMSwgIkRldWNoZXIsIEFsZXhhbmRlciIgPEFsZXhh
bmRlci5EZXVjaGVyQGFtZC5jb20+IHdyb3RlOgo+PiBbQU1EIFB1YmxpYyBVc2VdCj4+Cj4+PiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4gRnJvbTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KPj4+IFNlbnQ6IFdlZG5lc2RheSwgTWF5IDE5LCAyMDIxIDQ6NTAgQU0K
Pj4+IFRvOiBkaW0tdG9vbHNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+PiBDYzogZHJpLWRldmVs
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsK
Pj4+IGphbmkubmlrdWxhQGludGVsLmNvbTsgRGV1Y2hlciwgQWxleGFuZGVyCj4+PiA8QWxleGFu
ZGVyLkRldWNoZXJAYW1kLmNvbT47IEtvZW5pZywgQ2hyaXN0aWFuCj4+PiA8Q2hyaXN0aWFuLktv
ZW5pZ0BhbWQuY29tPjsgUGFuOyBQYW4sIFhpbmh1aSA8WGluaHVpLlBhbkBhbWQuY29tPjsKPj4+
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4+PiBTdWJqZWN0OiBbZHJt
LXJlcmVyZSBQQVRDSF0gbmlnaHRseS5jb25mOiBkcm9wIGFtZCBicmFuY2hlcyBmcm9tIGRybS10
aXAKPj4+IAo+Pj4gV2UndmUgaGFkIGEgc3RhbGUgcmVwbyBmb3IgYW1kIGluIGRybS10aXAgc2lu
Y2UgYXJvdW5kIHY0LjE1IGkuZS4gZm9yIG1vcmUKPj4+IHRoYW4gdGhyZWUgeWVhcnMuIE5vYm9k
eSBzZWVtcyB0byBub3RpY2Ugb3IgY2FyZS4gRHJvcCB0aGUgYW1kIGJyYW5jaGVzCj4+PiBmcm9t
IGRybS10aXAuCj4+PiAKPj4+IEhhdmluZyB0aGUgY3VycmVudCBhbWQgYnJhbmNoZXMgaW4gZHJt
LXRpcCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUsIGlmIG9ubHkgdG8KPj4+IGhhdmUgYSBjb21tb24g
ZHJtIGludGVncmF0aW9uIHRyZWUuIEhvd2V2ZXIsIG1haW50YWluaW5nIHRoYXQgaGFzIGEgY29z
dAo+Pj4gZHVlIHRvIHRoZSBpbmV2aXRhYmxlIGNvbmZsaWN0cy4gV2UgY2FuIGFkZCB0aGUgYnJh
bmNoZXMgYmFjayBpZiBhbmQgd2hlbgo+Pj4gdGhlcmUncyBpbnRlcmVzdCBpbiBzaGFyaW5nIHRo
ZSBidXJkZW4uCj4+PiAKPj4+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFt
ZC5jb20+Cj4+PiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pgo+Pj4gQ2M6IFBhbiwgWGluaHVpIDxYaW5odWkuUGFuQGFtZC5jb20+Cj4+PiBDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPj4+IFNpZ25lZC1vZmYtYnk6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+Cj4+IFJldmlld2VkLWJ5OiBBbGV4IERl
dWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4KPiBUaGFua3MsIHB1c2hlZCBvdXQg
YW5kIHJlYnVpbHQgZHJtLXRpcC4KCk5vdGUgdGhhdCBkcm0tdGlwIGlzIHVuY2hhbmdlZCBhZnRl
ciB0aGlzLCBhcGFydCBmcm9tIHRoZQppbnRlZ3JhdGlvbi1tYW5pZmVzdC4KCgpCUiwKSmFuaS4K
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
