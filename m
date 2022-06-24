Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 001D15599F4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 14:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82CD10EDAB;
	Fri, 24 Jun 2022 12:55:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 837BB10EDAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 12:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656075354; x=1687611354;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=xvc2sfC9XPj9eSqHGI627FFrj/bCi3luwe4Ap/gwrdI=;
 b=HkBpCcvgrVZgaGhsl0D4klrz570nOQsGtKZVTEwl4UDkLYbgSpF9esB+
 YCJD2cwNPcoH8gIgWv5M5fL295+JveF68EqEoL5C6W7Z7SAKyg7XDiz4p
 vOGWC2iu6rHn7hnkdhyLfJ+PaIH3xaghRzPfir0RiPVVgodM/OC7mrNdD
 G1RzHMSlkaOcAKJcM2oD4U6vyYk21aoCbU/LH9mVe41n0mEQRkewC5Byc
 HGg9IwIOWrltHL1zCSyoQ8e14FcNoDOo4Ll1/Koca9KXBEnlYxk55VIL3
 zVP8/fO/lyASuQR+OglaNNyoVqWU/i3XV3JHNzEV0I83zDJXXHzC4xFB3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="342683249"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="342683249"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 05:55:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="691516099"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jun 2022 05:55:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 24 Jun 2022 05:55:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 24 Jun 2022 05:55:52 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 24 Jun 2022 05:55:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix error code in icl_compute_combo_phy_dpll()
Thread-Index: AQHYh5U2Dq519qlLWUichBJyu+3csK1e+aWA
Date: Fri, 24 Jun 2022 12:55:52 +0000
Message-ID: <01b795d94e10b75a76ec6a0b4ba8201a88a355ea.camel@intel.com>
References: <YrVcHArNMTGCSy+9@kili>
In-Reply-To: <YrVcHArNMTGCSy+9@kili>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <931A46BC3D694349B09C47741EBF22B7@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix error code in
 icl_compute_combo_phy_dpll()
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

T24gRnJpLCAyMDIyLTA2LTI0IGF0IDA5OjM5ICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOg0K
PiBUaGlzIGZ1bmN0aW9uIGlzIHN1cHBvc2VkIHRvIHJldHVybiB6ZXJvIG9yIG5lZ2F0aXZlIGVy
cm9yIGNvZGVzIGJ1dCBpdA0KPiBhY2NpZGVudGFsbHkgcmV0dXJucyB0cnVlIG9uIGZhaWx1cmUu
DQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCg0KPiANCj4gRml4ZXM6IDkyYTAyMDc0N2Q2YyAoImRybS9pOTE1OiBTcGxpdCBzaGFy
ZWQgZHBsbCAuZ2V0X2RwbGxzKCkgaW50byBjb21wdXRlIGFuZCBnZXQgcGhhc2VzIikNCj4gU2ln
bmVkLW9mZi1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDIg
Ky0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9t
Z3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiBp
bmRleCBkZGFlN2U0MmFjNDYuLjExODU5OGM5YTgwOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiBAQCAtMzE4NCw3ICszMTg0LDcg
QEAgc3RhdGljIGludCBpY2xfY29tcHV0ZV9jb21ib19waHlfZHBsbChzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gIAlzdHJ1Y3QgaWNsX3BvcnRfZHBsbCAqcG9ydF9kcGxsID0N
Cj4gIAkJJmNydGNfc3RhdGUtPmljbF9wb3J0X2RwbGxzW0lDTF9QT1JUX0RQTExfREVGQVVMVF07
DQo+ICAJc3RydWN0IHNrbF93cnBsbF9wYXJhbXMgcGxsX3BhcmFtcyA9IHt9Ow0KPiAtCWJvb2wg
cmV0Ow0KPiArCWludCByZXQ7DQo+ICANCj4gIAlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRj
X3N0YXRlLCBJTlRFTF9PVVRQVVRfSERNSSkgfHwNCj4gIAkgICAgaW50ZWxfY3J0Y19oYXNfdHlw
ZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFNJKSkNCg0K
