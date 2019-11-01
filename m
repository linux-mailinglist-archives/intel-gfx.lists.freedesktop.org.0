Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B17EBC4B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 04:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E73A6E11E;
	Fri,  1 Nov 2019 03:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0166E11E
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 03:17:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 20:17:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,253,1569308400"; d="scan'208";a="225912341"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga004.fm.intel.com with ESMTP; 31 Oct 2019 20:17:23 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 31 Oct 2019 20:17:23 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 31 Oct 2019 20:17:23 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (104.47.33.51) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 31 Oct 2019 20:17:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GyVM/PRxCTks/E6hCSynfg/oYknKbh0PXzFMYF021EuAU2MVBR9RsOEYRt8V07U1IhzvyCrMoHtByhQ2M+SUvELcbS1AdECkunx7PHqbrkX4dMko2Ub7PTyrvBP4fm/6b2izAnnQt0Rhuil8P4blfJkzzgGe+/BVsluxF8xTg4kughT1k/BTsYHra9W4TOcR0rpk8ECZHqMXMVkqrK6JAsVulXZZ418nQXZwG/st2/MEaEvJHWEzkCP3tzUBYmu6/NdP5UfDXIshjpuQ34MXBHc3R+ruEcL3a6SkdBrDCoijYJBzrDFHULXDGQjXOXaPVjMzIP5d9JEH7wcKwoUbtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dufn6jCb9EPpRRSGE81qlwClAbg4YwFfbGhlSqbWCPU=;
 b=Q+h7to7CF5b5hPYHLb7GX86I4TGyfzhmtKEyF5/vgzp8wzBvvU8x4+i7mF0u5HIEG/ZGTN+HZKm2/zcH88myqxG622Eo2sN328YrkCmE34oZjS8PsmG3CWvHlNk09rzDrddH2MttxozIKwT/k8nFS6eY9DmKzYzfnEoZjIZ03jixqawNsIjH8BB56DNhF7vWnMHoK+/h3JfEQK1m8zNKz6Uo3InxhWKnWq4f01E2DZ9sSC1a6tVnN0bk236T7E2hmkX/JbfcFQc+nF6KJIXGwKZuI/slxXvO62LfBwhPBR/F5oNeJWL4Npk1omYCsVSpUukwEEZOY1F6XLb+zxpw3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3211.namprd11.prod.outlook.com (20.176.120.27) by
 DM6PR11MB4332.namprd11.prod.outlook.com (52.132.250.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 03:17:01 +0000
Received: from DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::d5b4:5c64:ae36:cbbb]) by DM6PR11MB3211.namprd11.prod.outlook.com
 ([fe80::d5b4:5c64:ae36:cbbb%6]) with mapi id 15.20.2408.018; Fri, 1 Nov 2019
 03:17:01 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH] drm/i915: update rawclk also on resume
Thread-Index: AQHVj9xkF4W9sEnB8kibGWmF1bmTNqd0xiMAgADcL6A=
Date: Fri, 1 Nov 2019 03:17:01 +0000
Message-ID: <DM6PR11MB32117AF95CF8E63B84EC25A9A3620@DM6PR11MB3211.namprd11.prod.outlook.com>
References: <20191031111407.12493-1-jani.nikula@intel.com>
 <20191031135602.GW1208@intel.com>
In-Reply-To: <20191031135602.GW1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmExMTlhODUtOGQxNi00YWIxLWE0ZGUtOTUyNmM4YjQyYWQzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNjZmWWVwK3JNRjZ6TVArallybkFLVEx5TmhHOXJtQnpMUUh6MlV4TjM5QXBLekdWTHd2SnNkQXErYW9yd2Q1ViJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-originating-ip: [192.55.79.117]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce3011d1-024f-4ee8-d8d6-08d75e79f6b1
x-ms-traffictypediagnostic: DM6PR11MB4332:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB43328224EBC28C32BAFD4540A3620@DM6PR11MB4332.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(396003)(376002)(346002)(366004)(39860400002)(136003)(199004)(189003)(71190400001)(71200400001)(43066004)(8676002)(76176011)(26005)(74316002)(476003)(229853002)(66574012)(8936002)(81166006)(81156014)(9686003)(486006)(110136005)(8796002)(55016002)(14454004)(6436002)(7736002)(305945005)(6506007)(86362001)(25786009)(256004)(4326008)(52536014)(2906002)(66946007)(66476007)(6636002)(316002)(66446008)(64756008)(66556008)(66066001)(5660300002)(76116006)(99286004)(102836004)(14444005)(6116002)(446003)(15650500001)(6246003)(3846002)(478600001)(33656002)(11346002)(7696005)(186003)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR11MB4332;
 H:DM6PR11MB3211.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GpLMOwUvXkeMVwgjig8ky1bmCtIl8Icb07btsiRQZl7q6mW4+vb+b4NHh+6eoNXE8VPh3tBNTgh8gIWDv0uaHU1sYrvRQ/f60Vswr6Y+p/lYGM2eXwncs+8Z0+r1kPscCHddGJuEwZQu5PpR0TWADN/CfEabRjLPfQFAhaZwUUoaPbLrxxXQobWt83XeN9mG7NnWRsCby+sN91nxMRJprCXNyTVHi5RaRn8HLGs0vOTuAz8S/jUnzUtDZeZ+EL4HaoWy8Rjp6fc/3tFJyehPeJmgwIqdNeD9AopwpgLF0wD8ZC6HVzlMEciIjg1FDfDKHC0hQXGWiKzSu8Em6ufwzFZoNJ4iXWYNA7brfIptyLTEioRNIGdnUroRTHJOu+hFftw+wL+sl+usadol0GcqgYO+0we2yfzt5TjS7th1aswLC3vZi6jMOnMHtc+S6PJO
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ce3011d1-024f-4ee8-d8d6-08d75e79f6b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 03:17:01.7969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dBkSljVgnPiD3xSr1/QXhuiew83XZFK6UG3xCulLAqo0hof7UsoBdgvIbCaUQS5wTc3CeT+nebqKnQD8c/dPeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4332
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dufn6jCb9EPpRRSGE81qlwClAbg4YwFfbGhlSqbWCPU=;
 b=VloHoPGgzdfAJUui6Ifw7I6znO+2VuehJCOkbgaffS+34lVR1dcZA16VlEYRi495kU+PhmXOylt7eGaiMtfwW4FO9wEWbXpHU4gaPPUac11bLISimGLx+MWJp4OQrivQ7TH9qTkHAspXgAPI6lKHkUY/8nuC++96BjozjWKd1v0=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=shawn.c.lee@intel.com; 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: update rawclk also on resume
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
Reply-To: "20191031111407.12493-1-jani.nikula@intel.com"
 <20191031111407.12493-1-jani.nikula@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIFRodSwgT2N0IDMxLCAyMDE5LCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+T24gVGh1LCBPY3Qg
MzEsIDIwMTkgYXQgMDE6MTQ6MDdQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFNpbmNl
IENOUCBpdCdzIHBvc3NpYmxlIGZvciByYXdjbGsgdG8gaGF2ZSB0d28gZGlmZmVyZW50IHZhbHVl
cywgMTkuMiAKPj4gYW5kIDI0IE1Iei4gSWYgdGhlIHZhbHVlIGluZGljYXRlZCBieSBTRlVTRV9T
VFJBUCByZWdpc3RlciBpcyAKPj4gZGlmZmVyZW50IGZyb20gdGhlIHBvd2VyIG9uIGRlZmF1bHQg
Zm9yIFBDSF9SQVdDTEtfRlJFUSwgd2UnbGwgZW5kIHVwIAo+PiBoYXZpbmcgYSBtaXNtYXRjaCBi
ZXR3ZWVuIHRoZSByYXdjbGsgaGFyZHdhcmUgYW5kIHNvZnR3YXJlIHN0YXRlcyAKPj4gYWZ0ZXIg
c3VzcGVuZC9yZXN1bWUuIE9uIHByZXZpb3VzIHBsYXRmb3JtcyB0aGlzIHVzZWQgdG8gd29yayBi
eSAKPj4gYWNjaWRlbnQsIGJlY2F1c2UgdGhlIHBvd2VyIG9uIGRlZmF1bHRzIHdvcmtlZCBqdXN0
IGZpbmUuCj4+IAo+PiBVcGRhdGUgdGhlIHJhd2NsayBhbHNvIG9uIHJlc3VtZS4gVGhlIG5hdHVy
YWwgcGxhY2UgdG8gZG8gdGhpcyBpcyAKPj4gaW50ZWxfbW9kZXNldF9pbml0X2h3KCksIGhvd2V2
ZXIgVkxWL0NIViBuZWVkIGl0IGRvbmUgYmVmb3JlIAo+PiBpbnRlbF9wb3dlcl9kb21haW5zX2lu
aXRfaHcoKS4gU3BsaXQgdGhlIHVwZGF0ZSBhY2NvcmRpbmdseSwgZXZlbiBpZiAKPj4gdGhhdCdz
IHNsaWdobHkgdWdseS4gVGhpcyBtZWFucyBtb3ZpbmcgdGhlIHVwZGF0ZSBsYXRlciBmb3IgCj4+
IG5vbi1WTFYvQ0hWIHBsYXRmb3JtcyBpbiBwcm9iZS4KPj4gCj4+IFJlcG9ydGVkLWJ5OiBTaGF3
biBMZWUgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPj4gQ2M6IFNoYXduIExlZSA8c2hhd24uYy5s
ZWVAaW50ZWwuY29tPgo+PiBDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgICAgICAgfCA1ICsrKysrCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDcgKysrKysrKwo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYyAgICAgICAgICAgICAgICAgICAgfCAzIC0tLQo+PiAgMyBmaWxlcyBjaGFuZ2Vk
LCAxMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIAo+PiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+IGluZGV4IGU1NmE3NWMwNzA0
My4uZTMxNjk3ZmRmZmQzIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+PiBAQCAtMTY2MTAsNiArMTY2MTAsMTEgQEAgdm9pZCBpbnRlbF9p
bml0X2Rpc3BsYXlfaG9va3Moc3RydWN0IAo+PiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
Pj4gIAo+PiAgdm9pZCBpbnRlbF9tb2Rlc2V0X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpICB7Cj4+ICsJLyoKPj4gKwkgKiBWTFYvQ0hWIHVwZGF0ZSByYXdjbGsgZWFybGll
ciBpbiBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoKS4KPj4gKwkgKi8KPj4gKwlpZiAoIUlT
X1ZBTExFWVZJRVcoaTkxNSkgJiYgIUlTX0NIRVJSWVZJRVcoaTkxNSkpCj4+ICsJCWludGVsX3Vw
ZGF0ZV9yYXdjbGsoaTkxNSk7Cj4+ICAJaW50ZWxfdXBkYXRlX2NkY2xrKGk5MTUpOwo+PiAgCWlu
dGVsX2R1bXBfY2RjbGtfc3RhdGUoJmk5MTUtPmNkY2xrLmh3LCAiQ3VycmVudCBDRENMSyIpOwo+
PiAgCWk5MTUtPmNkY2xrLmxvZ2ljYWwgPSBpOTE1LT5jZGNsay5hY3R1YWwgPSBpOTE1LT5jZGNs
ay5odzsgZGlmZiAKPj4gLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYwo+PiBpbmRleCA3MDdhYzExMGUyNzEuLjk5OTEzM2QxZjA4OCAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMKPj4gQEAgLTUwMTUsNiArNTAxNSwxMyBAQCB2b2lkIGludGVsX3Bvd2VyX2RvbWFp
bnNfaW5pdF9odyhzdHJ1Y3QgCj4+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGJvb2wgcmVzdW1l
KQo+PiAgCj4+ICAJcG93ZXJfZG9tYWlucy0+aW5pdGlhbGl6aW5nID0gdHJ1ZTsKPj4gIAo+PiAr
CS8qCj4+ICsJICogTXVzdCBoYXBwZW4gYmVmb3JlIHBvd2VyIGRvbWFpbiBpbml0IG9uIFZMVi9D
SFYsIHRoZSByZXN0IHVwZGF0ZQo+PiArCSAqIHJhd2NsayBsYXRlciBpbiBpbnRlbF9tb2Rlc2V0
X2luaXRfaHcoKS4KPj4gKwkgKi8KPj4gKwlpZiAoSVNfVkFMTEVZVklFVyhpOTE1KSB8fCBJU19D
SEVSUllWSUVXKGk5MTUpKQo+PiArCQlpbnRlbF91cGRhdGVfcmF3Y2xrKGk5MTUpOwo+Cj5DYW4n
dCB3ZSBqdXN0IGRvIGl0IGhlcmUgdW5jb25kaXRpb25hbGx5PyBJIHRoaW5rIHRoaXMgZ2V0cyBj
YWxsZWQgb24gdGhlIHJlc3VtZSBwYXRoIGFzIHdlbGwuCj4KClRyeSB0byBkbyBpbnRlbF91cGRh
dGVfcmF3Y2xrKCkgaGVyZSBhbmQgcmVtb3ZlIGl0IGF0IGludGVsX21vZGVzZXRfaW5pdF9odygp
IGFuZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkuCkhlcmUgd2lsbCBiZSBleGVjdXRlZCBi
ZWZvcmUgaW50ZWxfbW9kZXNldF9pbml0X2h3KCkuIFNvIGl0IGxvb2tzIGdvb2QgdG8gbWUganVz
dCBkbyBpdCBoZXJlLgoKQmVzdCByZWdhcmRzLApTaGF3bgoKPj4gKwo+PiAgCWlmIChJTlRFTF9H
RU4oaTkxNSkgPj0gMTEpIHsKPj4gIAkJaWNsX2Rpc3BsYXlfY29yZV9pbml0KGk5MTUsIHJlc3Vt
ZSk7Cj4+ICAJfSBlbHNlIGlmIChJU19DQU5OT05MQUtFKGk5MTUpKSB7Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMgaW5kZXggMjEyNzNiNTE2ZGJlLi42MjkwNjMzNjI5OGEgCj4+IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4gQEAgLTI5Niw5ICsyOTYsNiBAQCBzdGF0aWMg
aW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCj4+ICAJaWYgKHJldCkKPj4gIAkJZ290byBjbGVhbnVwX3ZnYV9jbGllbnQ7Cj4+ICAKPj4g
LQkvKiBtdXN0IGhhcHBlbiBiZWZvcmUgaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KCkgb24g
VkxWL0NIViAqLwo+PiAtCWludGVsX3VwZGF0ZV9yYXdjbGsoaTkxNSk7Cj4+IC0KPj4gIAlpbnRl
bF9wb3dlcl9kb21haW5zX2luaXRfaHcoaTkxNSwgZmFsc2UpOwo+PiAgCj4+ICAJaW50ZWxfY3Ny
X3Vjb2RlX2luaXQoaTkxNSk7Cj4+IC0tCj4+IDIuMjAuMQo+Cj4tLQo+VmlsbGUgU3lyasOkbMOk
Cj5JbnRlbAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
