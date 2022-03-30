Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4F54EC8E2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 17:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CAD710E594;
	Wed, 30 Mar 2022 15:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB98E10E2AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 15:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648655730; x=1680191730;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=YIsJP61ilkdtWuvhzukSrO6Ht6R7GEUTGrEU8Cikk4o=;
 b=ZUSRdyBM/vlbO+RnlLnGSfmEdD3KrMCHqsjwOjJkhQ1fdMYDrGuejG/L
 +jpcNQc0OZvQSGkY4Ak6o4L6mMvPl1ofGM9gJZXd3H84yC0SYWCXTfgBP
 wTwwWEPKMmq+6qi9IoCryPWP51rid9iMjvZBQdjwCDHd8f8KkMyrypANl
 Glhpjj+oInK2M9573GXcRlIQ2jHgbcCZepG/oLomWHfkhkzrhfLVhHNDT
 EZKUeEtFtg+9YlHLX++RDC7j5w7L3m61XiVV95ybRM3DU8Q4rHnV+to6K
 mf0diyJe0tiGgf0lC8x1T5YvKWDOZPXr4a4MQToAnICFT3KHj+/blpd9G A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="322758829"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="322758829"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 08:55:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="554716863"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 30 Mar 2022 08:55:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 08:55:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 30 Mar 2022 08:55:21 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Wed, 30 Mar 2022 08:55:21 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBzZXJpZXMgc3RhcnRpbmcg?=
 =?utf-8?B?d2l0aCBbQ0l2MiwxLzRdIGRybS9pOTE1L2Rpc3BsYXkvdGdsKzogU2V0IGRl?=
 =?utf-8?B?ZmF1bHQgdmFsdWVzIGZvciBhbGwgcmVnaXN0ZXJzIGluIFBJUEVfTUJVU19E?=
 =?utf-8?Q?BOX=5FCTL?=
Thread-Index: AQHYRE5hJOTj19FBYEW3ic75lcZDRazYijsA
Date: Wed, 30 Mar 2022 15:55:21 +0000
Message-ID: <5d163ed68950eedf24c9e61a7ece4ed17323ef40.camel@intel.com>
References: <20220330154356.245922-1-jose.souza@intel.com>
 <164865564212.8657.12588739830438214972@emeril.freedesktop.org>
In-Reply-To: <164865564212.8657.12588739830438214972@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <F161F62178F6174AABC099EA65E5EDDE@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5BCIv2=2C1/4=5D_drm/i915/display/tgl+=3A_S?=
 =?utf-8?q?et_default_values_for_all_registers_in_PIPE=5FMBUS=5FDBOX=5FCTL?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTAzLTMwIGF0IDE1OjU0ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+ID09
IFNlcmllcyBEZXRhaWxzID09DQo+IA0KPiBTZXJpZXM6IHNlcmllcyBzdGFydGluZyB3aXRoIFtD
SXYyLDEvNF0gZHJtL2k5MTUvZGlzcGxheS90Z2wrOiBTZXQgZGVmYXVsdCB2YWx1ZXMgZm9yIGFs
bCByZWdpc3RlcnMgaW4gUElQRV9NQlVTX0RCT1hfQ1RMDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMDE5NjMvDQo+IFN0YXRlIDogZmFpbHVyZQ0K
PiANCj4gPT0gU3VtbWFyeSA9PQ0KPiANCj4gQXBwbHlpbmc6IGRybS9pOTE1L2Rpc3BsYXkvdGds
KzogU2V0IGRlZmF1bHQgdmFsdWVzIGZvciBhbGwgcmVnaXN0ZXJzIGluIFBJUEVfTUJVU19EQk9Y
X0NUTA0KPiBBcHBseWluZzogZHJtL2k5MTUvZGlzcGxheS9hZGxwOiBBZGp1c3QgTUJVUyBEQk9Y
IEJXIGFuZCBCIGNyZWRpdHMNCj4gQXBwbHlpbmc6IGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBIQVNf
TUJVU19KT0lOSU5HDQo+IFVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRy
ZWUuLi4NCj4gTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IEZhbGxpbmcgYmFj
ayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJnZS4uLg0KPiBBdXRvLW1lcmdpbmcgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBDT05GTElDVCAoY29udGVudCk6IE1lcmdl
IGNvbmZsaWN0IGluIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gZXJyb3I6IEZh
aWxlZCB0byBtZXJnZSBpbiB0aGUgY2hhbmdlcy4NCg0KZHJtLXRpcCBhbmQgZHJtLWludGVsL2Zv
ci1saW51eC1uZXh0IGhhcyBzb21lIGRpZmZlcmVuY2VzIHRoYXQgY2F1c2VzIHRoaXMgcGF0Y2gg
dG8gbm90IGFwcGx5Lg0KV2lsbCBzZW5kIG9ubHkgdGhlIDMgb3RoZXIgcGF0Y2hlcyBmcm9tIHRo
aXMgc2VyaWVzIHRvIHVuYmxvY2sgdGhlIG1vc3QgaW1wb3J0YW50IHBhdGNoZXMgYW5kIGxhdGVy
IHdpbGwgZm9sbG93IHVwIHdpdGggdGhpcyBvbmUuDQoNCj4gaGludDogVXNlICdnaXQgYW0gLS1z
aG93LWN1cnJlbnQtcGF0Y2g9ZGlmZicgdG8gc2VlIHRoZSBmYWlsZWQgcGF0Y2gNCj4gUGF0Y2gg
ZmFpbGVkIGF0IDAwMDMgZHJtL2k5MTUvZGlzcGxheTogQWRkIEhBU19NQlVTX0pPSU5JTkcNCj4g
V2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29udGlu
dWUiLg0KPiBJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhpcyBwYXRjaCwgcnVuICJnaXQgYW0gLS1z
a2lwIiBpbnN0ZWFkLg0KPiBUbyByZXN0b3JlIHRoZSBvcmlnaW5hbCBicmFuY2ggYW5kIHN0b3Ag
cGF0Y2hpbmcsIHJ1biAiZ2l0IGFtIC0tYWJvcnQiLg0KPiANCj4gDQoNCg==
