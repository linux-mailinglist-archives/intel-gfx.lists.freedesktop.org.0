Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C385B7CCED1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 22:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C50B10E329;
	Tue, 17 Oct 2023 20:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5720F10E329
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 20:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697576162; x=1729112162;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=BwCq8Ki/T7xk85GYvPeEQHgKzhW1y57a7VrM0elU7ks=;
 b=fJPgjMbFXJnsGkFFhH2jnp4LHomfjgKP7duZq6q2sZqznXK+FSBm/kWh
 tmMArCCefbPkpwvR+1/p4CxDwfypQ+jdc4u/nEKHuzOKShQfJGSAsizqs
 kdvKrVlamQ659z+I0eXS+OWIv9lgwGaAcyOa/VOj0E0reGJTXahO/VXMc
 6k2XwRW7UdtQrM585tj4ompyZZho90//JclVE7rzt6a5uR9FAp/XcKNy8
 8M4E2Tgjp3dTLx8bFTYdtL4mwCRz7oOsL+qG+b2NRhw8P00b/sQ7732c2
 tGtdi6vgyglg214yX77Xxu6CLfaBujQpfD+QYqTMhffq9nAPJugRlpApv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="384755583"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="384755583"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 13:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="706162358"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="706162358"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 13:55:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 13:55:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 13:55:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 13:55:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 13:55:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bMzXUojq8v0tSWRCDVjeALCeXbYc6Z/OUXmnSo9sAv06Ies/aJwRdXtpIBGMOoUMJDbpFy/9qrzgl5uA75x5LAH7NdpSPxXa+sJnyZP2L02o6i/ij8VrZohJpP4i78oqV6C1mjbfP6u9kbZFM7pPpHHYalQdm9JMakN2A9yrI51K9Pv03eu5+HQQqeD2wYbhIZf+vufaEuWeFyjEafTi4llP87aBzJlWW8TKlsxEtW0ioD5z2qKzJ0WnJGdTPF9iBUDeTPBXCVqyT7fr6lbDGYXbxzFzt4x/ZeAqx+60XiU2hz97byZkEvRuvCzOsz/2jhqKTbWgOtOxzOUHuP1/cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BwCq8Ki/T7xk85GYvPeEQHgKzhW1y57a7VrM0elU7ks=;
 b=EFurp4vJbifnnIgzTQcFbVev6NfUtGbL76CUiEmW13K2GK4h1Gb4t/XxJ9LPSICQ2GCXwYLT5xaTaS+TBwD17uPUbnUefLn9Ci9CFf0GD84ddE0HwAZsMrnWfSHcGVBykcoWy7Yu9RMDsdhTu/Io8xyc7dvurf+uXTVQXwIevqO6n18i71/mw6NQLmnJOv86/lmvbn5d2r0KbjzkC9bD8MbWQha90Rhn10W/MKs4haCHA6aLfB5SWVgF47dFQcBRcPvWTGKcGZGvX8zQ4P7IsR8LSFrnE+lc2RZ1O9lqGOn0OY4ljhu8rjBXeYvGeyEuw+gUGvvlHIRpzEipkKnSKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH0PR11MB5492.namprd11.prod.outlook.com (2603:10b6:610:d7::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Tue, 17 Oct
 2023 20:55:42 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 20:55:41 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 0/2] display device info as a separate debugfs entry
Thread-Index: AQHaATniiBNqlRMwVkOZVBaFpiX697BOdh4A
Date: Tue, 17 Oct 2023 20:55:41 +0000
Message-ID: <a0356c4a60b66bb4cc3355aea008723ff6bfd687.camel@intel.com>
References: <20231017203800.123776-1-vinod.govindapillai@intel.com>
In-Reply-To: <20231017203800.123776-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH0PR11MB5492:EE_
x-ms-office365-filtering-correlation-id: 7f9f86b8-a6d4-4c65-5207-08dbcf536c9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tAnNbm6mG7L/5AcexGnHSnqCayvSkK1fwnOv5gRPq8MYw7EFhw70znf4J4TokQlUWgz0JwrDJH2Vg85SwbNmRN+/bR1DCPrgDLQUPKZtNO0WLPmfZ/KUuCGd3ZEta1CTXPeIcrq16s24p+dkKvDS/VLryuiNBx2LuLF01hXvg4xWv8ANrDKvzIgGZvV5kRZGBTn5GvGUALvjLJ8Hr2Ri0QJYNUHfTzDXKLCxIRHWFsg/tk705a4UbRCXbiKGj39cQStsZ0vFYlk9c1l1MGtieV4bDaRmFRh1njYPQ6t4YaxWYkVv77xDC+tZAsGS2uzYdsJ1zKj7Zlf2V1AZQ9YB0PWjI9AqJMLpuyciKbmYOPFz9dFWW6ze/3ms2gY94PxpGx5BRE5nI7dYS0DYEnj2Q6uH8py7hDPSWJ1d0s+iFCWOo4wLcjfOoKTkYzTpDXN9bHGRrBuzaruXQ8+4yykUO0hvpEp5XJ9+RHuy4R5bnBfWLQMX5dSo+EHbaou78gcGSCWKGJS3rkyD0VIoXpHmwJZySE8mRqTgKyT0BeAi5ugwYoFCDj1Tqef8RQ8wdHkWFwrEGGF7k+g2wqO8Uwk9J6MyjkyFyKZlUs5Gyx2SBeI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(136003)(366004)(346002)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(83380400001)(26005)(5660300002)(41300700001)(8936002)(4326008)(8676002)(107886003)(2616005)(36756003)(86362001)(71200400001)(6486002)(38070700005)(82960400001)(122000001)(66476007)(4001150100001)(2906002)(66946007)(478600001)(4744005)(54906003)(316002)(91956017)(6916009)(66556008)(64756008)(66446008)(76116006)(6512007)(6506007)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cU5OVm5wREpjamlaOFVhRjFYMGd4SjE0RXBOYk9tZjltaTJQVHBaOVBKUjFY?=
 =?utf-8?B?ZDVMbHR1SnBNcW5zQitmaldtRHltVEpMcDBUbHpqY01oanFLLzNISVB2TUpm?=
 =?utf-8?B?L281SEticmpOS0V0bDVSK0UyMnJhZEd5MDFzS3VIMFhNL0hDWUY4OXB3bm12?=
 =?utf-8?B?dFBhc0lYempFTXVBN3lLVCtqUTJsS2J0VDNTelJTNlF5SXBkcEZOWGZ5d1Ft?=
 =?utf-8?B?aHAxTEZiSVc5dVFhOVIyRTJ4QU1HbUxCZEpKLzF5ZTNPb05WUVMyK2l0NXU2?=
 =?utf-8?B?Qmx6U1RJZG1Xb1VnWjlNbm1TMDkrN0ZsVEM5RlpFZVFMOExPUEpuMGd2TWZv?=
 =?utf-8?B?WnkrQ29veCtmZjlaV3NaZHBVMi8zbllaWDZCWXE1Wmg0TGJWSUI2T3NJakpX?=
 =?utf-8?B?RXIwRWVWK3NPRG1TWG43QTBJeUM0aUphYmJMOG9yNVJEWGI0Q2k3d1lxa2pZ?=
 =?utf-8?B?Ylp3Z0xoRmo2MCtwTnpUcjdrSWgrRjV1cDY4Qkk4NERISTZpWDUzazZpb1A5?=
 =?utf-8?B?N1VkMGsyNXF5MG1GWUhlSzN1RzMvclpNUTM2R3RKOXF5ZDBBams2eFhvWDc0?=
 =?utf-8?B?QTNpeTZIcXJyek43bDhoajBGVmpmSnhQcDhRb2YxY2JHbWp0S1h4VUtOWEpQ?=
 =?utf-8?B?K0tSK2FBTTcycStLcE9uSjRabE12ekVlQXZLUnBJeW1UYlRUeWpUdTBETlpk?=
 =?utf-8?B?bWdRdkMwNHFESE93Rmc1UDVjbTFlWW5GcGpVSlZ6UEpiS2huaGVHR0dWVm41?=
 =?utf-8?B?aHNQUHkwU1pyWHBuQjlpREkxTGt1NDNFYVhFVTlNQW4zMHlyMXRHRktDYklk?=
 =?utf-8?B?bU8yMHdZdzM5TWROSVEwOWwra08xVVdlWjlmTFp3ZHBzQ09FM1MxT2MvcW5S?=
 =?utf-8?B?L1dCYTlDMVNyektyZHF5WDY0SzFJQUgzUEVRWnRyVWE5MDJoR2p2dUJpZ0c0?=
 =?utf-8?B?K3ozWFZsSVVPamhFVzFKc202eEZrZmo3VzM5YmpiL3lPc0xPRmp4RjRUK1FD?=
 =?utf-8?B?a1BBb2Z2aTV3aGpuRE9JWldrSnk1WnNOQnZqVFBQU0VyLzhIbVROcURUbjJY?=
 =?utf-8?B?Q281djVvcWRtWFN4YjMrcHpYUkYyRFFPR1pCYW4zdm5mSlZLbWovYVVZdEhj?=
 =?utf-8?B?bTY3STZZQ2lBdkYrRHZBVnVzSmVOeHlXSXl4NFFWWVpZaittUWJMZjBsd3Rm?=
 =?utf-8?B?eWNpbDlBcmd1cWwxRE9VeTQxM1QzaWdyNnBWdWxhc28reG5KUEFaa1BaYm13?=
 =?utf-8?B?NFA2SktWN1ZNK2pBTGJjSTAybTRGY2NSbTB6WWQ0UFRXV2RkM2dSZm5tMHl5?=
 =?utf-8?B?b2lmZGFSOWYyNkpzYS9GUmdjdGRWNGJWek16UVZJdWlETFRKQjBhR1lFZkhz?=
 =?utf-8?B?dm5JcWxMWnhmM0dRMHlPNXV3bzgyQVlqcFUzNzdXK1l5YzhYTHlJRUhaWEh0?=
 =?utf-8?B?SFJUV2kxRDgrSmZ4Q2ZScnFydFp4WW5ZelhsamJtUUhBcVdtWnduTWhWSHNa?=
 =?utf-8?B?OTNqQ0xWa0V1RVhUYVRtUHJ6d3E3ekJKM0JVTkxvQzRYNXZkNDB2TklNVld3?=
 =?utf-8?B?M1VuQjBoY09mc25icjFHMVhQVU9GNmFuand2Ri9OYjRQU0VIMXIzamh3b2hu?=
 =?utf-8?B?aFY2Ym43Ryt4QVF1cDZpbms2b2hlbU00VUQ3ZmtMdldkdVhWUHVkZkZoNGtM?=
 =?utf-8?B?VndiMEdzRVRlWCt6ZkNhZU5tMGlMOElNZ3NJYjFLa2x2Mzk4OGZYL1c1VWhx?=
 =?utf-8?B?dFdDLzl1OVIwc21KYWRqNjJGeWZvSENxa3crYlFNSjVGMGhLand1dnNPZHdD?=
 =?utf-8?B?Sm8yenZXb3hnM2t5dXpWaUNXV3d3Yjd5a2lqODRKa1FISDB3NXhDc0ZwWUla?=
 =?utf-8?B?bTYrcEJCMFBMOTk3c3EwaXlTYVRCMzloeVRBaXdoNHpIN204NzhpU2lmNnFJ?=
 =?utf-8?B?ZUYwaXdaNXhtMUk0SnlTVTh4RWFVK3gyOFBCVDl3eWtJRkdnclNvT3MwVnZW?=
 =?utf-8?B?TjFocStvdzNJS2lxUjllNk5SMWZXdVRhTktYbWtzWUxCS1RuM0lxR29JZ3BK?=
 =?utf-8?B?WWhSc2dzZi96bHNwVG5xMHhtVjE1Wm9QTDhyY2RnazUzdG5Ic3pXd29aY3U3?=
 =?utf-8?B?aFZENU5QTUdzSm5jS2wyOHROOFFuaWdId0o3WWZFRE1Ba0dwL2FKbkhTUW1Z?=
 =?utf-8?Q?VIXOvtzKKl54Hd8rBVu+Qm4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <07C369554E29764EA6217F6A3B628C6B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f9f86b8-a6d4-4c65-5207-08dbcf536c9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 20:55:41.4061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ujk7g4H1eY00AsYUWeK+HWEq9sFOFRSVnX8eqDuwcVZoMcMQzu0ha+EFd5GHFRHpf+ScY7VsvOZ+ltayPL9f9B6OURHUde28IYfOuMJt+Ak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5492
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 0/2] display device info as a separate
 debugfs entry
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

SGkgU3dhdGksDQoNClJlYWxpemVkIHRoYXQgSSBjYW5ub3QgcmVtb3ZlIHRoZSBkaXNwbGF5IHJ1
bnRpbWUgaW5mbyBmcm9tIGk5MTVfY2FwYWJpbHRpZXMgdW50aWwgSUdUIHN0YXJ0IHVzaW5nDQp0
aGlzIG5ldyBjcmVhdGVkIGVudHJ5Lg0KDQpTbyBleGNsdWRlZCB0aGUgcGF0Y2ggdG8gcmVtb3Zl
IHRoZSByZWR1bmRhbnQgaW5mbyBmcm9tIGk5MTVfY2FwYWJpbHRpZXMgZnJvbSB0aGlzIHNlcmll
cw0KQSBuZXcgdmVyc2lvbiBpcyBzZW50ISBTb3JyeSBmb3IgdGhlIGNvbmZ1c2lvbiENCg0KQlIN
CnZpbm9kDQoNCk9uIFR1ZSwgMjAyMy0xMC0xNyBhdCAyMzozNyArMDMwMCwgVmlub2QgR292aW5k
YXBpbGxhaSB3cm90ZToNCj4gRXhwb3NlIHRoZSBkaXNwbGF5IGRldmljZSBpbmZvIGFzIGEgc2Vw
YXJhdGUgZGVidWdmcyBlbnRyeSB0byBsaXN0IG91dA0KPiBkaXNwbGF5IGRldmljZSBpbmZvIGFu
ZCByZW1vdmUgdGhlIHNhbWUgZnJvbSBpOTE1X2NhcGFiaWxpdGllcw0KPiANCj4gdjI6IHJlbmFt
ZSB0aGUgZGVidWdzIGVudHJ5IHRvIGk5MTVfZGlzcGxheV9jYXBhYmlsaXRpZXMgYW5kIHBhdGNo
DQo+IMKgwqDCoCBkZXNjcmlwdGlvbiBjaGFuZ2VzDQo+IA0KPiBWaW5vZCBHb3ZpbmRhcGlsbGFp
ICgyKToNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogZGVidWdmcyBlbnRyeSB0byBsaXN0IGRpc3Bs
YXkgY2FwYWJpbGl0aWVzDQo+IMKgIGRybS9pOTE1OiByZW1vdmUgZGlzcGxheSBkZXZpY2UgaW5m
byBmcm9tIGk5MTUgY2FwYWJpbGl0aWVzDQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgfCAxMiArKysrKysrKysrKysNCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDEgLQ0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPiANCg0K
