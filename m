Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D0F731622
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 13:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6F310E4C5;
	Thu, 15 Jun 2023 11:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 300F110E4C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 11:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686827279; x=1718363279;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=i/YIrUbB2mjmTkUCFSL0FPY/w94qnvqBVujJR6Im7Pk=;
 b=nRlikQO+Mare+Wd/1SBYfX3ZE3GrelFNIJ3w4RCrFCtpM+oQiT8YnH+s
 eBbeVti2O7liQF1pN6Ms5YGWJ5owth06C4oY04FcIDTtOMiJbqpY+xaZh
 jgddBybh3URf/1rVVnqv93h8PLti/hhRnJfG3TsuHjHMfUwZzcW3WAAOv
 rlnkEEPQdiM5b5kcfWoTOVndJdpURDWEi1LRuspUetHwqxvJdd/hTvUNK
 S26wXPJYFVF6XtxcK92E+DaQMyBX7sGGkiPIq1Oa4Q3HvvhY3lNczI1md
 t6Y1YJfU7NOofaToh+UxI3OObPfw0IDEbzbToSn/gX0ShwBM+db8SkArT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="387330816"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="387330816"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 04:07:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="959158778"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="959158778"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jun 2023 04:07:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 04:07:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 04:07:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 04:07:56 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 04:07:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IsEvJsL4uCpz/gUKDDI4MPTvhihyo6dmJLRwpTK0qQVrQHk2HPo2K/8h2dYZvvpU/ZX/XWtWdpvEg/mF3nl3BUXSN/chYtkhhbpgWyfLKNCu84CLIysajd8/YpMh7xfw5+apm4IU6+VyHbgS1b7daj8ThO2RHCJOkwIzSB87WAgGWGewO4XVMZMkDAPtICIRXKdJqh6/VHvhcgWy3Dcyq5PjKTQBdGwVAWmgkv6H1UdFG0XJF6LMwiM7/sTe77Zz6KNu4wqS/ImCwgHTC1VOHxhooixk0EHlWYkgOO46/ZOARBVzjplCOp05s8gVy3DP4nzarUiM0RujWNgG0sMWmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i/YIrUbB2mjmTkUCFSL0FPY/w94qnvqBVujJR6Im7Pk=;
 b=Hcl8eggk438Yz6Af0ucmKyrlgz6QEO6mrcmTMvKWvgLTpNsnhvFj9MJlWjLlShtixkgjrGp1OB78t2tSU4HUycpsr7rhsZQdchqbsyWyvN6HGTtpbXG6Q/7m1rfGuuE94cjTw4sAFQLP3fgwr+kIjQ3Km+aINqQwcSrwOn6m9DXVgcAjpcTyDacuLdFI+X+1JujddjYx0Bv7QduTY1qOY0urXrybz65PHiYllwoal4h9CkjZQEN8mRm5+BWeVuqLdzwXZhrvJvuana5kadgh2slU+776Wqxn493w8GHXK1XGn73fCj9AeruoY1xaAulnWS3r/D1KdF+FANXHn9wfoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7337.namprd11.prod.outlook.com (2603:10b6:930:9d::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.36; Thu, 15 Jun 2023 11:07:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%5]) with mapi id 15.20.6477.037; Thu, 15 Jun 2023
 11:07:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 00/13] drm/i915/psr: Restore HSW/BDW PSR1
Thread-Index: AQHZmty1AyvQVvWgSkqcNWjAS+3eSq+LvXwA
Date: Thu, 15 Jun 2023 11:07:44 +0000
Message-ID: <2923f92db683a5eb136738b1158f5410a4783aa4.camel@intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7337:EE_
x-ms-office365-filtering-correlation-id: 214bdebd-d4af-4abc-75cd-08db6d90beb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DvibRW7HJ3Ygf6EK9UEFS3eQw3P0pSKG0VEBp+i1K1MqSUfzOJd31QZISKFpjtFX4/sqa7vIUjAf1DVdW8dPvfRrv+0Z8my822JllzOZIzkXLamK6FzSu7zQKW3vI1HQrB+1uxaY1LXdDKWUwwzVbBEXYARdl2xrmWvsXAXuujYVLzYimEp26TEf5f52KGKWPT3umGSSdl4BDEMuOBp/l0A7e70vXcjwelu6v6Ei+ZvX1C40BLwKpSFnHSgUUr3JOwrPBrG4ME4UFrPzr66ctMJydMHmETa8xvHQ36ytzHZJggyioplQSFR5DXttanGXVGyUwDh1JL9UZQTlsEYS7XBZ9iNnQi2bU/+bQ1E8CPYJ9AhuWiMxBqLoyh28ix++ZkA8SRkD2ri7whTsCm8aKpc0nHXOZLLMufiuCPFMc2EVpjlzn2/tcegLBxRRfShu7i/MAxf9gHLqHngNvgc0VXXvad4BKh1V+9Qm5hvdz49L1WmyU4tE+zt6ofwrN0VuGwt0KJgo+rTE/+HbHcoxh82Bla0/OKa3ljv7CDG74So0FZSx511OtbIledbo/Ps7phQHGS+gxGkljHnTNLHJHo5HAfOdegtwEZoSa4podhw+2x5OhQvkCD6EO6asb6vp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(39860400002)(376002)(136003)(451199021)(66899021)(26005)(186003)(6512007)(5660300002)(6506007)(41300700001)(38070700005)(36756003)(66574015)(478600001)(64756008)(86362001)(83380400001)(8936002)(66446008)(76116006)(66946007)(71200400001)(2906002)(66476007)(110136005)(2616005)(91956017)(66556008)(8676002)(316002)(122000001)(6486002)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2RGM0lJQ2h4TFFXUmk4bUJMcHJZV1gxdVRpaU5WZGxNa2lWYmtReWh2N3Z0?=
 =?utf-8?B?TDVyTjludk9WWkgvcm9TeURMWDVodmtpUkdhQ0JSSHAwdHpFN0ZNQm4wSTZW?=
 =?utf-8?B?R0ZqYTFpYUNjTFBmRVZSYkpZUjBsblJHNWtSUmc5Mkg3OE0zclpiYWZsbzV6?=
 =?utf-8?B?L0ZOZEU1KzRkWUNlOW5lY29GbWw3d0V0dllQckhENHBiZkh0VmZsd2VYcHQw?=
 =?utf-8?B?RWs4SG1wTDFDaWxOWGFjTUVhaDgxa29wTElFdGJxNlBwOW4yQVhkdDNsYUFM?=
 =?utf-8?B?MFBIVEttb1g0K1dMN1Z0M1JpRHM5cGU3TDdqSTNnUkxGa2kzTzBna2dUYjhn?=
 =?utf-8?B?alN1cHJCY2RSd3dxcmZaUzNOL2R6dW93NXBHc3NqR2JITnlNUGFlQm1vcFpj?=
 =?utf-8?B?NmJ0dTFkNm5OVm1xWHI2VnVBQjNhdU1UemxpOHFMSVhsTjZreWV5MlcrUjA4?=
 =?utf-8?B?RTNVVTJoOWJuODRvak9sRmE5K2JobTB3UzVKdi93RjhNcHIrSUtydXFPb3I4?=
 =?utf-8?B?eTgxaVpWMWNucnhsaUtUTFBueXpVK3V4TXB3b3U4ZHl4VVpWbVE0YndKR2ty?=
 =?utf-8?B?WjQzM2dYM2h0MFkwU1ZFUzlxSXlzQnVIcVJpMGNtcjI2VjNHa3pHMW9WMThR?=
 =?utf-8?B?dEk4TE5YTHYwbDRXM3JVSi9yZUpqMGUvTGVjZWhMWE9CNTZLbldnRGI5TTdS?=
 =?utf-8?B?akg0R0w1Y21hajNJd0VmU2lUNGN1aFAraXl0SnR6eGZGS0dTSFkrVU96dnFD?=
 =?utf-8?B?NjhRQXNvdVJOOHRaaDNNR1hDNitYTkNBM1ZjNDIrbG1hUFg2WlNtTnZYVHlU?=
 =?utf-8?B?cG5FSjFrR2FVdWkwNldMdGc5N3JTVUFORGhFMjhBdTB3RHhoaHY3aWZOaGRn?=
 =?utf-8?B?eGQ3N3EzM3RoRXdzY012d0dkc0tiSnFuQjd3U3JhRXdGZWZUaTJqbk1QMURS?=
 =?utf-8?B?K1JLVWJLdFNhaU5KOXV5eDJQRHNxVE0xaldpbzk4cUU5dThDb09wcTZiM0lK?=
 =?utf-8?B?ZnE5RHN2MDczdFdwRURDMldpV01ZaTZrMzQwUVE3UHBtY3Jsc3EyRDRGcjY0?=
 =?utf-8?B?SDc4SG44cXpPNWtFV1Q3MFpaK1FLWU1vVm1yVHFOcmp5NFJPTnlzQVdETzBs?=
 =?utf-8?B?dkJyQ1IzNnpSVjlIckVFYVZuUWNLSGNQek9mTjhYZ2R1VERNOUxsZFBVc3hE?=
 =?utf-8?B?SHdOWG9LdjdVU0dLUEVjRldzcVhwN3dGdFNuTnF3MDNIL0JkeENZSzR2d0sr?=
 =?utf-8?B?K0d4cmkweXdLbXN1VjJIZjR4SnE5QkttOXJoMGU1Q3hvQTVHT1JEMG1QVnZQ?=
 =?utf-8?B?Z0FQZWJ3bEdRWE5Za2xqYlg5Z0JxUFJYMzNtN2NRR3hJYUs3d0xGQ28rN1VK?=
 =?utf-8?B?U3ZTbG1WUXhDajJKUkE4WWo2WkRmeTdYcDMrbWRqeGdHT2VzdEltVDNmTll0?=
 =?utf-8?B?Q2tTTzM4NzdsWDdJeW5tN1BrTEE4RlNCUk1kUWcwcG02ZHlPL3NydlVlUWlH?=
 =?utf-8?B?UHdOT2RlOEltYUVGR1B1b1pTQlRZV29KcGxzZDhrclNkVWhZY2ZobHFHVDlQ?=
 =?utf-8?B?N3NVVDhlNGtwQ3UxdnpXbUdxaVdTZGN0aS91ZjBqU2pRMGhlQkdBSlAvekVR?=
 =?utf-8?B?V3dRQXQvMXZIOWhKSm82YUtRbThJMFgzRnF3Q2Y0NkZNTWNtL3dZMmkwNVla?=
 =?utf-8?B?dUQxbk1Xb1A4YXhvU2dFcmQwemplWGpCVWMzazdsSVF6UVBvTU1lczZwMk1r?=
 =?utf-8?B?MElFa3IxRHlMazV6WHdSbHNNRFVvZXU3Y0JVNHdwTGRlQ1ZNWUdQTjdjV0hl?=
 =?utf-8?B?NlNYdXVWWWtZMXJZenRSRlArcWhoTFhja3ErRWhHcW1rNStWc3dvWllMRjJ2?=
 =?utf-8?B?elZFMXRYelA0bmJUTitkcFg0eFlYVlRCbXRwZFdidWx3RThNYk5nZ2hvTzQy?=
 =?utf-8?B?Wk5wQUpxdWNKZVAxQmpJWjc2b2VBOERDY2lPUk5JbkJnUE5YRkpHVFpYTVJo?=
 =?utf-8?B?dVBoZlVvL1BSSk9tR0l4MG96a2hUc1lRejF6MHZFSTkxVFErcm9PN2t0ZElV?=
 =?utf-8?B?ZHJWd24xMU9LbkVyVjZEd3NOL0VvZ0dzRzZya2w3ejE5aEpIQTQ3eHdUeHdG?=
 =?utf-8?B?Y0ZudHV2RFRieHprSEt2cHJqbkJQMTZ0N3NXUnA4Kytya2ZnY2hQMTdIeVcw?=
 =?utf-8?B?cFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7C6EF1A2461DC041B6F79ED147A58F01@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 214bdebd-d4af-4abc-75cd-08db6d90beb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 11:07:44.5538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9eQvqjuBY8IMafotM+I5lSsun3JipHkVausQE3RzBAaOyKJRKYxRMTHTmqc82Wqi3LQVUXnAjnlyMF5Ir4+jPex4XwQOewdbGZXkgTF0ejs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7337
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 00/13] drm/i915/psr: Restore HSW/BDW PSR1
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

T24gRnJpLCAyMDIzLTA2LTA5IGF0IDE3OjEzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRml4IGFsbCB0aGUgb2J2aW91cyBpc3N1ZXMgYWZmZWN0aW5nIEhTVy9CRFcgUFNSMSBh
bmQNCj4gcmVzdG9yZSBpdCBiYWNrIHRvIGxpZmUuDQo+IA0KPiBUaGUgUEM4KyB2cy4gaW5pdF9j
bG9ja19nYXRpbmcoKSBwcm9ibGVtIGFsc28gYWZmZWN0cw0KPiBzb21lIG5vbi1QU1Igd29ya2Fy
b3VuZHMgYXMgd2VsbC4NCj4gDQo+IHYyOiBSZWJhc2UgKGR1ZSB0byBpcnEgY29kZSBtb3ZlbWVu
dCBtb3N0bHkpDQo+IMKgwqDCoCBEZWFsIHdpdGggcmV2aWV3IGNvbW1lbnRzIHdydC4gdGhlIEFV
WCBzZXR1cA0KDQpGb3IgdGhlIHdob2xlIHNldDoNCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IA0KPiBWaWxsZSBTeXJqw6Rsw6Qg
KDEzKToNCj4gwqAgZHJtL2k5MTU6IFJlLWluaXQgY2xvY2sgZ2F0aW5nIG9uIGNvbWluZyBvdXQg
b2YgUEM4Kw0KPiDCoCBkcm0vaTkxNS9wc3I6IEZpeCBCRFcgUFNSIEFVWCBDSCBkYXRhIHJlZ2lz
dGVyIG9mZnNldHMNCj4gwqAgZHJtL2k5MTUvcHNyOiBXcmFwIFBTUjEgcmVnaXN0ZXIgd2l0aCBm
dW5jdGlvbnMNCj4gwqAgZHJtL2k5MTUvcHNyOiBSZWludHJvZHVjZSBIU1cgUFNSMSByZWdpc3Rl
cnMNCj4gwqAgZHJtL2k5MTUvcHNyOiBCcmluZyBiYWNrIEhTVy9CRFcgUFNSIEFVWCBDSCByZWdp
c3RlcnMvc2V0dXANCj4gwqAgZHJtL2k5MTUvcHNyOiBIU1cvQkRXIGhhdmUgbm8gUFNSMg0KPiDC
oCBkcm0vaTkxNS9wc3I6IFJlc3RvcmUgUFNSIGludGVycnVwdCBoYW5kbGVyIGZvciBIU1cNCj4g
wqAgZHJtL2k5MTUvcHNyOiBJbXBsZW1lbnQgV2FQc3JEUEFNYXNrVkJsYW5rSW5TUkQ6aHN3DQo+
IMKgIGRybS9pOTE1L3BzcjogSW1wbGVtZW50IFdhUHNyRFBSU1VubWFza1ZCbGFua0luU1JEOmhz
dw0KPiDCoCBkcm0vaTkxNS9wc3I6IERvIG5vIG1hc2sgZGlzcGxheSByZWdpc3RlciB3cml0ZXMg
b24gaHN3L2Jkdw0KPiDCoCBkcm0vaTkxNS9wc3I6IERvbid0IHNraXAgYm90aCBUUDEgYW5kIFRQ
Mi8zIG9uIGhzdy9iZHcNCj4gwqAgZHJtL2k5MTUvcHNyOiBBbGxvdyBQU1Igd2l0aCBzcHJpdGUg
ZW5hYmxlZCBvbiBoc3cvYmR3DQo+IMKgIGRybS9pOTE1L3BzcjogUmUtZW5hYmxlIFBTUjEgb24g
aHN3L2Jkdw0KPiANCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuY8KgIHzCoMKgIDQgKw0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
ZGV2aWNlLmPCoMKgIHzCoMKgIDQgKw0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2lycS5jwqAgfMKgIDE0ICsrDQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jwqDCoMKgIHzCoMKgIDYgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jwqDCoCB8wqDCoCAyICstDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguaMKgwqAgfMKgwqAgMyArDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAxOTYgKysr
KysrKysrKysrKystLQ0KPiAtLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyX3JlZ3MuaCB8wqAgMTggKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9j
bG9ja19nYXRpbmcuY8KgwqDCoMKgIHzCoCAxMSArDQo+IMKgOSBmaWxlcyBjaGFuZ2VkLCAyMTcg
aW5zZXJ0aW9ucygrKSwgNDEgZGVsZXRpb25zKC0pDQo+IA0KDQo=
