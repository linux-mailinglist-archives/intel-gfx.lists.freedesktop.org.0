Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FA04EE8AA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 08:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A094710FD9A;
	Fri,  1 Apr 2022 06:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2159010FD9A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 06:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648796220; x=1680332220;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GF/PgDIiRxnS4Adr2UTPqONsReJpFFwRgqR0I+h8KFQ=;
 b=A9bZK3g03uZUF2SX0H2MNYen+yqtU2D3Nfp/sis86E871lvE/mNyWnDk
 YiupeidxunTkBsjv8d4OHbHX2Ot0cRgET3IYHhKSqur6Fk8MuC165AwR+
 bgLo6t3xaM+8Qm7T8tMzApIyRBypbPwSi+Xr8jRq7upsUHeoL4tOPwueP
 XBZMczxoYTY1mtbef2a4mNTmPsPMKK/Sh93Is8ODGJa0xp5/pDnT8shke
 Eh3G43fq3pSELpgNmcm6XfloaDoSfRwXRVig25XdXAe2/xxIDwFRtuYh7
 R2SjbgmjRZXm9kz0WGWzOaVMy2rTDBF3yQ1Cg+HzvTFfpph3MN2nAgkvL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="320747123"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="320747123"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 23:56:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="555370980"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 31 Mar 2022 23:56:58 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 23:56:58 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 12:26:56 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 12:26:56 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 11/12] drm/i915/dp: Fix DFP rgb->ycbcr conversion
 matrix
Thread-Index: AQHYPeR7U0VZJkRb80SaVBjYnXlbfqzar3GA
Date: Fri, 1 Apr 2022 06:56:55 +0000
Message-ID: <1f1d14fadbaf4e6fadaf198046187f6a@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20220322120015.28074-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 11/12] drm/i915/dp: Fix DFP rgb->ycbcr
 conversion matrix
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDIy
LCAyMDIyIDU6MzAgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT47IFNoYW5r
YXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
MTEvMTJdIGRybS9pOTE1L2RwOiBGaXggREZQIHJnYi0+eWNiY3IgY29udmVyc2lvbiBtYXRyaXgN
Cj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IA0KPiBPdXIgWUNiQ3Igb3V0cHV0IGlzIGFsd2F5cyBzdXBwb3NlZCB0byBiZSBsaW1p
dGVkIHJhbmdlIEJULjcwOS4NCj4gVGhhdCdzIHdoYXQgd2Ugc2VuZCB3aXRoIG5hdGl2ZSBIRE1J
LiBUaGUgY29ubl9zdGF0ZS0+Y29sb3JzcGFjZSBzdHVmZiBpcyBlbnRpcmVseQ0KPiBpbmRlcGVu
ZGVudCBvZiB0aGF0IGFuZCBpcyBub3Qgc3VwcG9zZWQgdG8gYWx0ZXIgdGhlIGdlbmVyYXRlZCBv
dXRwdXQgaW4gYW55IHdheS4gSWYNCj4gd2Ugd2FudCBhIHdheSB0byBkbyB0aGF0IHRoZW4gd2Ug
bmVlZCBhIG5ldyBwcm9wcnR5IGZvciBpdC4NCj4gDQo+IE1ha2UgaXQgc28gdGhhdCB0aGUgUkdC
LT5ZQ2JDciBjb252ZXJzaW9uIHdoZW4gcGVyZm9ybWVkIGJ5IHRoZSBEUEYgd2lsbCBtYXRjaA0K
PiB0aGUgQlQuNzA5IHdlIHdvdWxkIHRyYW5zbWl0IHdpdGggbmF0aXZlIEhETUkuDQoNCkxvb2tz
IEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4NCg0KPiBDYzogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29t
Pg0KPiBDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAzOCArKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAzNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gaW5kZXggMDUzODUzYTMwNTRlLi5kM2Q0NThiMzI2N2QgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTI1NzQsMzggKzI1NzQs
OCBAQCB2b2lkIGludGVsX2RwX2NvbmZpZ3VyZV9wcm90b2NvbF9jb252ZXJ0ZXIoc3RydWN0DQo+
IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCSAgICAiRmFpbGVkIHRvICVzIHByb3RvY29sIGNv
bnZlcnRlciBZQ2JDciA0OjI6MCBjb252ZXJzaW9uDQo+IG1vZGVcbiIsDQo+ICAJCQkgICAgc3Ry
X2VuYWJsZV9kaXNhYmxlKGludGVsX2RwLT5kZnAueWNiY3JfNDQ0X3RvXzQyMCkpOw0KPiANCj4g
LQl0bXAgPSAwOw0KPiAtCWlmIChpbnRlbF9kcC0+ZGZwLnJnYl90b195Y2Jjcikgew0KPiAtCQli
b29sIGJ0MjAyMCwgYnQ3MDk7DQo+IC0NCj4gLQkJLyoNCj4gLQkJICogRklYTUU6IEN1cnJlbnRs
eSBpZiB1c2Vyc3BhY2Ugc2VsZWN0cyBCVDIwMjAgb3IgQlQ3MDksIGJ1dCBQQ09ODQo+IHN1cHBv
cnRzIG9ubHkNCj4gLQkJICogUkdCLT5ZQ2JDciBmb3IgQlQ2MDEgY29sb3JzcGFjZSwgd2UgZ28g
YWhlYWQgd2l0aCBCVDYwMSwgYXMNCj4gZGVmYXVsdC4NCj4gLQkJICoNCj4gLQkJICovDQo+IC0J
CXRtcCA9IERQX0NPTlZFUlNJT05fQlQ2MDFfUkdCX1lDQkNSX0VOQUJMRTsNCj4gLQ0KPiAtCQli
dDIwMjAgPSBkcm1fZHBfZG93bnN0cmVhbV9yZ2JfdG9feWNiY3JfY29udmVyc2lvbihpbnRlbF9k
cC0NCj4gPmRwY2QsDQo+IC0JCQkJCQkJCSAgIGludGVsX2RwLQ0KPiA+ZG93bnN0cmVhbV9wb3J0
cywNCj4gLQ0KPiBEUF9EU19IRE1JX0JUMjAyMF9SR0JfWUNCQ1JfQ09OVik7DQo+IC0JCWJ0NzA5
ID0gZHJtX2RwX2Rvd25zdHJlYW1fcmdiX3RvX3ljYmNyX2NvbnZlcnNpb24oaW50ZWxfZHAtDQo+
ID5kcGNkLA0KPiAtCQkJCQkJCQkgIGludGVsX2RwLQ0KPiA+ZG93bnN0cmVhbV9wb3J0cywNCj4g
LQ0KPiBEUF9EU19IRE1JX0JUNzA5X1JHQl9ZQ0JDUl9DT05WKTsNCj4gLQkJc3dpdGNoIChjcnRj
X3N0YXRlLT5pbmZvZnJhbWVzLnZzYy5jb2xvcmltZXRyeSkgew0KPiAtCQljYXNlIERQX0NPTE9S
SU1FVFJZX0JUMjAyMF9SR0I6DQo+IC0JCWNhc2UgRFBfQ09MT1JJTUVUUllfQlQyMDIwX1lDQzoN
Cj4gLQkJCWlmIChidDIwMjApDQo+IC0JCQkJdG1wID0NCj4gRFBfQ09OVkVSU0lPTl9CVDIwMjBf
UkdCX1lDQkNSX0VOQUJMRTsNCj4gLQkJCWJyZWFrOw0KPiAtCQljYXNlIERQX0NPTE9SSU1FVFJZ
X0JUNzA5X1lDQzoNCj4gLQkJY2FzZSBEUF9DT0xPUklNRVRSWV9YVllDQ183MDk6DQo+IC0JCQlp
ZiAoYnQ3MDkpDQo+IC0JCQkJdG1wID0NCj4gRFBfQ09OVkVSU0lPTl9CVDcwOV9SR0JfWUNCQ1Jf
RU5BQkxFOw0KPiAtCQkJYnJlYWs7DQo+IC0JCWRlZmF1bHQ6DQo+IC0JCQlicmVhazsNCj4gLQkJ
fQ0KPiAtCX0NCj4gKwl0bXAgPSBpbnRlbF9kcC0+ZGZwLnJnYl90b195Y2JjciA/DQo+ICsJCURQ
X0NPTlZFUlNJT05fQlQ3MDlfUkdCX1lDQkNSX0VOQUJMRSA6IDA7DQo+IA0KPiAgCWlmIChkcm1f
ZHBfcGNvbl9jb252ZXJ0X3JnYl90b195Y2JjcigmaW50ZWxfZHAtPmF1eCwgdG1wKSA8IDApDQo+
ICAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IEBAIC00NDU5LDkgKzQ0MjksNyBAQCBpbnRl
bF9kcF91cGRhdGVfNDIwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCQkJCQkJaW50
ZWxfZHAtDQo+ID5kb3duc3RyZWFtX3BvcnRzKTsNCj4gIAlyZ2JfdG9feWNiY3IgPSBkcm1fZHBf
ZG93bnN0cmVhbV9yZ2JfdG9feWNiY3JfY29udmVyc2lvbihpbnRlbF9kcC0NCj4gPmRwY2QsDQo+
ICAJCQkJCQkJCSBpbnRlbF9kcC0NCj4gPmRvd25zdHJlYW1fcG9ydHMsDQo+IC0NCj4gRFBfRFNf
SERNSV9CVDYwMV9SR0JfWUNCQ1JfQ09OViB8DQo+IC0NCj4gRFBfRFNfSERNSV9CVDcwOV9SR0Jf
WUNCQ1JfQ09OViB8DQo+IC0NCj4gRFBfRFNfSERNSV9CVDIwMjBfUkdCX1lDQkNSX0NPTlYpOw0K
PiArDQo+IERQX0RTX0hETUlfQlQ3MDlfUkdCX1lDQkNSX0NPTlYpOw0KPiANCj4gIAlpZiAoRElT
UExBWV9WRVIoaTkxNSkgPj0gMTEpIHsNCj4gIAkJLyogTGV0IFBDT04gY29udmVydCBmcm9tIFJH
Qi0+WUNiQ3IgaWYgcG9zc2libGUgKi8NCj4gLS0NCj4gMi4zNC4xDQoNCg==
