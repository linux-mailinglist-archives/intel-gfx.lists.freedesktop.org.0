Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD9751DBF7
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 17:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BB610E04B;
	Fri,  6 May 2022 15:29:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADC7C10E04B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 15:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651850943; x=1683386943;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qnPB3KbtJT3fYOyQws8jlX4nUSSj+H9SU/fYw2G/fgY=;
 b=P4gKEotfbuMTA+6m8yqakT+XnynKr9dHzYuU+OKdF9eHy39R1Ox1FWh0
 Kxe3E1s5Rv8wuFe+o5VkyzT6fxiwGkKDILUfbQKZSi9GFhXIWBL5uxD+9
 kNUSVXCrHvlkFM1DL7sPNwufESIEOraKODv+uYhq6RDmemKMec3FPUkMp
 mrUJQu1KKswp6c2syh/Jq4gCsNvuEjaiUpEnEXJykbxn86janehJ2l4R0
 vdMciop/GxKhr0rMSOPIBpAJQk3XWPOzvMsCMOBAKJv3WEV7hpT+4HQUE
 R40rG2FJetvsz0rYC71UI17SnlDvBYmXWOomcAdK9bfIhWEk7LlV8o9v1 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="268638132"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="268638132"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 08:29:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="735768871"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 06 May 2022 08:29:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 08:29:02 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 6 May 2022 08:29:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/psr: Use full update In case of area
 calculation fails
Thread-Index: AQHYYQ1Lpz/9ulTlzUWs5xkdhRnKF60Sb0OA
Date: Fri, 6 May 2022 15:29:02 +0000
Message-ID: <274b1d451fa18abd11e918acb44fecb108b9ba55.camel@intel.com>
References: <20220506054834.2822650-1-jouni.hogander@intel.com>
 <20220506054834.2822650-2-jouni.hogander@intel.com>
In-Reply-To: <20220506054834.2822650-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <F2483D31644C5242A74635D4B1AE1280@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Use full update In case
 of area calculation fails
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
Cc: "markpearson@lenovo.com" <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA1LTA2IGF0IDA4OjQ4ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnRseSB3ZSBoYXZlIHNvbWUgY29ybmVyIGNhc2VzIHdoZXJlIGFyZWEgY2FsY3Vs
YXRpb24gZmFpbHMuICBGb3INCj4gdGhlc2Ugc2VsIGZldGNoIGFyZSBjYWxjdWxhdGlvbiBlbmRz
IHVwIGhhdmluZyB1cGRhdGUgYXJlYSBhcyB5MSA9IDAsDQo+IHkyID0gNC4gSW5zdGVhZCBvZiB0
aGVzZSB2YWx1ZXMgc2FmZXIgb3B0aW9uIGlzIGZ1bGwgdXBkYXRlLg0KDQpBcmVuJ3QgeW91IGFi
bGUgdG8gcmVwcm9kdWNlIHRoaXMgc2NlbmFyaW9zIHdpdGggSUdUPyBTbyB3aHkgbm90IHByb2Jh
Ymx5IGZpeCB0aGUgY2FsY3VsYXRpb25zPw0KDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhv
bGFAaW50ZWwuY29tPg0KPiBUZXN0ZWQtYnk6IE1hcmsgUGVhcnNvbiA8bWFya3BlYXJzb25AbGVu
b3ZvLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDMgKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMDZkYjQw
N2UyNzQ5Li44YzA5OWQyNGRlODYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBAQCAtMTc3MCw2ICsxNzcwLDkgQEAgaW50IGludGVsX3BzcjJfc2Vs
X2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJY2xp
cF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsNCj4gIAl9DQo+ICANCj4g
KwlpZiAocGlwZV9jbGlwLnkxID09IC0xKQ0KPiArCQlmdWxsX3VwZGF0ZSA9IHRydWU7DQo+ICsN
Cj4gIAlpZiAoZnVsbF91cGRhdGUpDQo+ICAJCWdvdG8gc2tpcF9zZWxfZmV0Y2hfc2V0X2xvb3A7
DQo+ICANCg0K
