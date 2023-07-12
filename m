Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C22D4750FD7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 19:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368BF10E5C8;
	Wed, 12 Jul 2023 17:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2124E10E634
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 17:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689183714; x=1720719714;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8vIJ5DJrHwFgzmaHDq3fCASMBQUj7f6/507WKl4/agQ=;
 b=UCf9gjphFsmLPs3ckXy7Pdu5VwLW3ILQSOauSIMnh2KOV9OjJAL89GL3
 5FsNSr1X1zZ/BfsZojOdR7r4+jWHxr6awhy/HUW7zE0i5WS4+LihPNClQ
 q0X6MEsuCMcV0Fzvz3zZ0y4URYvewZdCKLEe1ltHl34+mZsHZCnjWyBrd
 8sSPUzRltxBwBFl804wfrsmrxVkUp0v6d3gskEaIxzHI9cQ7/g4EdUH3M
 FIh/YTwpRY46nRTxkcvb77ZayUz/5rM5vDqMDtjJQFpvt4X11+1e+j1Bj
 8EVWrCV4bnWrHZDIAuvdVlavKlXBwtUV3ZFRkH/zbknvEmZ7gwUMvC56P A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="349812465"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="349812465"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 10:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="787123135"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="787123135"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jul 2023 10:39:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 10:39:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 10:39:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 10:39:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 10:39:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PX5RMCJSELd6UNDyRWgUJjcA8B8/kslKKCFtF7AoLk7rnqnCkebbC336Q1XhYJx8my4OQpcNWB17S93k6Y7TjVAXolEPfoB+A1OrmIcoCovS78I5Bl85hr4FqVSlqbVy14OMM/7Yxps771SDQdqh5R/r4FTfLcQgWFZHVcxPZVQmqZksxBGeFxhlgZNkfQpeLK6oDzm9DxKFvBx7foBolRePz/KoJYBD11mXJEo7X6oWxUclcMWmBYoZ2pyCSVSMEhDjYxqQG2GuWvXW37BxuRgT/Lk4OGBEv8aVV54QTS9zr053M/bQq7JOJizl8TSEnyQGH1gtxXA3Z5FHh/UCoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8vIJ5DJrHwFgzmaHDq3fCASMBQUj7f6/507WKl4/agQ=;
 b=Ybl3IAH0FimC4wMIwExsr/TDhMY7Nb4WZcXdvuqeB0BJr5aaPlhCJvUpgcpzOoVU+7tz1LDRdySFuufzbm4iOG84cgInoEKYfbOuwbCRwdtLHCtVCxS2X5bXGLhSvKjTBXOVD2squrt2G/UXnJlvFiKAE9Gfeb2dicJJI3UbyjcN6kmZZdShWPiAJnGj0n0OrAR7A3aevry6qt1f9KnfmLZPAjFCeaI/t7n2Q7SrJjHTnPmQgJjIFUwch1g3ubPmcoih3HQr+43ch8Hxrys5vVcgPVbj+vaIR1mGOz8dzhf5oH1S+r9utov7vfX8Z+RYy9OLUMcONVlucN+Lap/kRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 MW3PR11MB4650.namprd11.prod.outlook.com (2603:10b6:303:54::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.20; Wed, 12 Jul 2023 17:39:23 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::f674:6c10:d181:ac70]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::f674:6c10:d181:ac70%6]) with mapi id 15.20.6588.017; Wed, 12 Jul 2023
 17:39:23 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcHhwL210bDog?=
 =?utf-8?Q?Update_gsc-heci_cmd_size_and_timeout?=
Thread-Index: AQHZsSzkgpewfyqTB02JcGL/oyklea+2bTqA
Date: Wed, 12 Jul 2023 17:39:23 +0000
Message-ID: <f5068fdb0f01a52e05a4402158d90a79fceb1267.camel@intel.com>
References: <20230707183426.1952655-1-alan.previn.teres.alexis@intel.com>
 <168877342003.14757.3694771101892267398@emeril.freedesktop.org>
In-Reply-To: <168877342003.14757.3694771101892267398@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|MW3PR11MB4650:EE_
x-ms-office365-filtering-correlation-id: b7d44521-53aa-42de-fc75-08db82feee21
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SegOxCqToxajSylTYauS1ei4R9UiFPKhXIG9DkZlwl0JyqxLH1s/6Qhl84qz8CnY82XEdky9P84jCQBUOdf1MXwaz44q2xkmFz+it0MLRSb33Xu3292g2Tl45O7AQHtrWCPm5HD0gh3Y6FcdbG2zkCeB9CnQ/jNL1RA+J42BbBuMO0GIpomy6CsTKYZC9YreARc2Da96YVuTWqb1Xy2Vy0atm7fpnR6lxmaj3owXs5FNOuES8N/dQHMpPfp8lsUL4fJKwgd5LwIjspPP9GdzJsy4aYgAMKMhYDk6RMXQVBFDWJwS1RCFGFhqjSQfR2ZSmNWcs9HjAhc+90PECKpEwakYa227+CGN0ub/+EJI4UeMfCeSBSyu71qCI00KTtYmRbko45aNVHlJ+Rx+AEt6Ny+1kf+wp3IZHv9855VOvrTqYOm5Vx881KZV8L6cg+q7otEIMUwfEioHUUJEkhsiqKvxd/uL7U312TYGhrur6RW0ECPlniHuVMZm6qF0Ag7joh9Jzw22H9XwT8pWoYw61m7Rq09+tS7c8atIhLAjt1TrNZNjt622m5D/g46kCgQDpYm7KOrUJizerU6JuDmkmTrP0jcgLh3tdF54SdKW7Y4sEBBDwuG+tQit5XqvW0a5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199021)(91956017)(186003)(86362001)(83380400001)(122000001)(38070700005)(2906002)(2616005)(15650500001)(8936002)(5660300002)(36756003)(66556008)(66476007)(76116006)(64756008)(66946007)(478600001)(41300700001)(316002)(66446008)(6486002)(6916009)(6512007)(38100700002)(6506007)(26005)(966005)(82960400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ti84VU9hUXB0R1dwVDJNRExhanh6YlhzZ2VPM2grWnlFUi9WZTlPU3o3VGQ2?=
 =?utf-8?B?ZHIwaDUrUnRHbWZERFNOYnVsQ0VuRlpQR3Y2dmM5UDhwNDA4c1JSVFVHOFdo?=
 =?utf-8?B?bmFNakhGZldnUVZIVFBuQ0ltMlR4aWVNZkM3ZDZ0cEMzaWVWWWV2RjJWaVlx?=
 =?utf-8?B?QzJBd0xCblRsVlVSRlpZVFo3R3NhalF0Zm9kOUx5aEpONmNWWDRWWnF3ekdH?=
 =?utf-8?B?ZmpkZGgvSVZHTzdPa3BDTExYeS8zdXNjeGxXU2pJcXluVHk3b0o2V2NPRklB?=
 =?utf-8?B?Rk5ZYlBkZXcwd2JvN3VkeW9pVUZNSmZ3WHFLeVU5YjJCOVNYUlc1Qys2ak9T?=
 =?utf-8?B?cWxFK0ZLN0M4bWlnbWxrcnp1T2RsNVNzeVR1M0k3VDFaRmRJcWlzYkN1WGRY?=
 =?utf-8?B?V2ZvMTJiV3BKR0hZeGswS3kyMmQ4eVpER096ZlhTY01JYjI3MzRIZFBwSjFC?=
 =?utf-8?B?VkNSN2lkQnJWWE5BelRRZDBTaEJVZXlCMmlTYlZMaWtNOGNxUEFWWmxFMDJx?=
 =?utf-8?B?MTRFTERURm9GY0Y2M3gwek5hMGNtb1h3MUZYVll4Qkt0UTRUSGVJdTgrc2Q1?=
 =?utf-8?B?L2MxWkgwMlJjRm1UaURYMnNLb0s2K2labUsrNk5OV2M4RUhxTkVCeGVqOHFl?=
 =?utf-8?B?cE5ybzBlYXBKS0w2K0IrY0k4T2loRzlvY25VWFRJN0tKVHpXbTNwU3lCcFM0?=
 =?utf-8?B?QlBpMzRlOEJRSG5wc2hhUS9FenRGMGdzVm5ENjlYeVorcVowYUlVbkdsNFhJ?=
 =?utf-8?B?Nkhqd2JBS2E4V3F2T25WTytrS3NTR3FsYkFSaEFsUnlrdlZsUTBnVjNVNGRO?=
 =?utf-8?B?bFUyYW82VHZBZkh0UFl6Zy9vSHRaNldGNkMwd1dMNHZkYVdRWWtzUE5LMFB0?=
 =?utf-8?B?aU9GVlg4WXQ1WHdGZmE1SjVaV2tGNDR2ZmMyNkk0V1ZoaDZZV0VmbWloWlZI?=
 =?utf-8?B?aHp1a05zanBySGZDT3M4QkxlbXVNUlp1dGVPSEN6dWpGNm9qenRMY2Z4K1Aw?=
 =?utf-8?B?Y3BoSHpKcVJ5QTVtRWlOemMwWHFHUFJhcEdWSXhWdWNtRVcweTFobFJHSVdT?=
 =?utf-8?B?eHNmd2ZMTktTQ29SYVI1dmxuV1hKT0RQY2dHT01rR21qR3ZQUHZQbHk5MGFp?=
 =?utf-8?B?eFd2bGJvME52QWxrYkVJRGRINUNubnRoVGxtd2h0Mm9TWVZSdEQwM0ZOTmlL?=
 =?utf-8?B?K3ArUFE1L2lzdkdIRjRlK1gzcytoNnJmSlZYOXRiREFjRGR6MXVGcSttY3VQ?=
 =?utf-8?B?L1JjeUpLaE5xUGFhbkQ0eVZUNzBtZjNORHk0SytrV2RaL1VoenppRERlY2ow?=
 =?utf-8?B?ODE2bS8zNnIyV3RlTFovY1owRjF4b2lKSnp5TVFCcDB4czFla09VUm9TSGJX?=
 =?utf-8?B?b2N0SFRCQUVDNWdHNHFpQXZmNTRMOGgxQnJJUDI4UFk0blpINXN1d0RLWTYz?=
 =?utf-8?B?MTZHdzFRdmFIcnFaL0hFbmdFSHpBR2JOWExJc0JUazk4aGQ3ZHBlbmxGRGtZ?=
 =?utf-8?B?cWtQMzc3QzcwU2hhQjRaOXdSeStta3liRUVFajFHdllRcVJxQXVBSWhhYm1K?=
 =?utf-8?B?Qk0zUDRrZk01UCt0dEhMcTBjWkk1dzIreDZhMmY3N3pRUkwya1RNLzJwWm9q?=
 =?utf-8?B?L3VITitObURTL1BuMlNWakVWdUtIV3N3Y3ZpR3gzVUkvaVRIMkFNRXdJTGs1?=
 =?utf-8?B?QUdKQXlVRVdUTTBlRXQwZWNZVkVleEtWNDhhZ1AxVTFTc1dOUzFjYkovOWdZ?=
 =?utf-8?B?V3d3TW9QdG9RbTJyUHhvRTZpTmVkbkpFU0Foc3ZhaXB6cjR6bVY3UENCQzkr?=
 =?utf-8?B?VHRWd1ZIMjlmdUxaZmsyeFZRUHE4MjBUQTBBZTBKTTRpRFdBRUN6aXFrZEJ5?=
 =?utf-8?B?V09tTlQycnJGMFhBY1ZvNmFVSjdvTVdYeDZvWE1lcjlrcStmL0hUZng4eEVB?=
 =?utf-8?B?bE5Yc1NzRFhuTFpyano3WFRUUDg2NFZ0R0l3YmZXN2czTzVhcTB2QWRiSjRK?=
 =?utf-8?B?NUl0SUxXLzNmZ2JMd0dmZnZLRHBHMTlqd0VWdUVZSW83UVlqNHExM1dFQU5n?=
 =?utf-8?B?YXovVkVyVzJESzk1bFU1SHBTTmtnbkdkUzQvSGF3dUNCZElBNFFlMXdUS01W?=
 =?utf-8?B?c002WThlbjFRNk1oM01WU3U4U2UxS3hzV1JvUFR4Znc3ckhTSW03Y095b1dy?=
 =?utf-8?Q?VX8szoINeOsrL5w8g3bJbnQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <439A1B2DB3D75743A23AB51772D67444@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7d44521-53aa-42de-fc75-08db82feee21
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2023 17:39:23.1428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 66Vlq4ec4G9e1mK51OEoEgkl76rxmJLwj07DS7CRPcdxxYE1Mx0elJvx4d2OaBZMD6ieHTCyK0xEvwZMONRIn8B32JTdTSlNgliinV4JqngnOg4VN8VuyJ5BKSw9Blk1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4650
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp/mtl=3A_Update_gsc-heci_cmd_size_and_timeout?=
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

T24gRnJpLCAyMDIzLTA3LTA3IGF0IDIzOjQzICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOiBkcm0vaTkxNS9weHAvbXRsOiBVcGRhdGUgZ3NjLWhlY2kg
Y21kIHNpemUgYW5kIHRpbWVvdXQNCj4gVVJMOiAgICBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzEyMDM2MC8NCj4gU3RhdGU6ICBmYWlsdXJlDQo+IERldGFpbHM6ICAg
ICAgICBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
MjAzNjB2MS9pbmRleC5odG1sDQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzEz
MzU1X2Z1bGwgLT4gUGF0Y2h3b3JrXzEyMDM2MHYxX2Z1bGwNCj4gU3VtbWFyeQ0KPiANCj4gRkFJ
TFVSRQ0KPiANCj4gU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3Jr
XzEyMDM2MHYxX2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+IHZlcmlmaWVkIG1hbnVhbGx5
Lg0KDQphbGFuOnNuaXANCg0KDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gDQo+IEhlcmUgYXJl
IHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzEyMDM2MHYxX2Z1bGw6DQo+IA0KPiBJR1QgY2hhbmdlcw0KPiBQb3NzaWJsZSByZWdy
ZXNzaW9ucw0KPiANCj4gICAqICAgaWd0QGttc192YmxhbmtAcGlwZS1iLWFjY3VyYWN5LWlkbGU6
DQo+IA0KPiAgICAgICogICBzaGFyZC1nbGs6IFBBU1M8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTMzNTUvc2hhcmQtZ2xrNC9pZ3RAa21zX3ZibGFua0Bw
aXBlLWItYWNjdXJhY3ktaWRsZS5odG1sPiAtPiBGQUlMPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzEyMDM2MHYxL3NoYXJkLWdsazgvaWd0QGttc192
YmxhbmtAcGlwZS1iLWFjY3VyYWN5LWlkbGUuaHRtbD4NCj4gICAqICAgaWd0QHByaW1lX3ZnZW1A
ZmVuY2Utd2FpdEBjY3MwOg0KPiANCj4gICAgICAqICAgc2hhcmQtbXRscDogUEFTUzxodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMzM1NS9zaGFyZC1tdGxw
LTMvaWd0QHByaW1lX3ZnZW1AZmVuY2Utd2FpdEBjY3MwLmh0bWw+IC0+IERNRVNHLVdBUk48aHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTIwMzYwdjEv
c2hhcmQtbXRscC00L2lndEBwcmltZV92Z2VtQGZlbmNlLXdhaXRAY2NzMC5odG1sPg0KPiAgICog
ICBpZ3RAcHJpbWVfdmdlbUBmZW5jZS13YWl0QHZlY3MwOg0KPiANCj4gICAgICAqICAgc2hhcmQt
bXRscDogUEFTUzxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV8xMzM1NS9zaGFyZC1tdGxwLTMvaWd0QHByaW1lX3ZnZW1AZmVuY2Utd2FpdEB2ZWNzMC5odG1s
PiAtPiBBQk9SVDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMjAzNjB2MS9zaGFyZC1tdGxwLTQvaWd0QHByaW1lX3ZnZW1AZmVuY2Utd2FpdEB2ZWNz
MC5odG1sPg0KPiANCkFib3ZlIDMgcmVwb3J0ZWQgcmVncmVzc2lvbnMgYXJlIHVucmVsYXRlZCB0
byBQWFAgYXQgYWxsIC0gdGhlIGZpcnN0IGlzIGEgZGlzcGxheSBpc3N1ZSBhbmQgdGhlIHJlbWFp
bmluZyB0d28gYXJlIGFib3V0IGd0IHBhcmstdW5wYXJrIGluY29ycmVjdGx5IGF0dGVtcHRpbmcg
dG8gZnJlZSBhIHZtYSAobG9va3MNCnRvIG1lIGxpa2UgYSBnZW51aW5lIGJ1ZyBub3QgcmVsYXRl
ZCB0byBQWFAgYnV0IHJlbGF0ZWQgdG8gc29tZSBsYXN0IGJpdHMgb2YgR1QgY29kZSB0aGF0IGRv
bnQgc2VlbSB0byBiZSBhd2FyZSBvZiBkdWFsLUdUIGNvbmN1cnJlbnQgb3BlcmF0aW9uKQ0KDQph
bGFuOnNuaXANCg==
