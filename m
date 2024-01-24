Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3A383AAFB
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 14:35:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77BE10F768;
	Wed, 24 Jan 2024 13:35:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F212810F753
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 13:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706103341; x=1737639341;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/G7JPVMewYLYxeKVL6gxDAlsPAIQgDtwjbC4R2Ku1DM=;
 b=Bs2d4XiqNEdhR/4qsqvviIuJov+C+pZZhaTFTirqLHdIW+xmB8LgBA8X
 /UxYtcoIMSFILY99KIuBHfOsDFOkManQ7AAEOkYs3umUjUxYklDWGjawc
 iMrF0IWEISyiEmx/epCcDZ3dEHRM7qZS9XwEkSuwkCxXLSrmkv5ANERdP
 xSA/ncsBxjshoPuYQdl5LaKksLCoFPtDKAOeqPZVLJwCk7QCckd8oebTz
 ytCA2cLaRK/96j1kNjfUu+MsMWRtRr1LRWQz3Eu5HqlUbrXpoyz5f47da
 a7xjEj+Mo7pdGxkEdQOZvIrvAnSoVUyxdkcTXQ0eagBmeHCo5rLf0exxx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="739081"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="739081"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 05:35:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="1927387"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2024 05:35:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 05:35:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 05:35:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Jan 2024 05:35:38 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Jan 2024 05:35:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UKYtbjTEYUSR1AlgWG2/kPpymJ3sZizeJZvm/hikmH7CI7GNQgQjajEZUyCM6nfJWZznS+DCuB6kfUrvo8Raz3im8/UGCUEMCBDpf6ykkw8c2NYtWKuTf4B6edU+Mb5JGhrCtaGPxCqRbVKddzfmmhNIiuFRyqqLly44NgzBbxv+EN3pCdzef1RViXXfE221H0qSU8GeOh0pNOqQvCo9hvqQdH+j4RzghiHttO0mxkRE+HDQVdYU+pP2+cIti73e3FPvHr+W4rAnr3ZMw4YsXoZxb8Hb0ovPkj3lMq2XDatt7hznkKmVtAFxe2hR7wZQMNH8pcpXibKa6rz2Rx6PsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/G7JPVMewYLYxeKVL6gxDAlsPAIQgDtwjbC4R2Ku1DM=;
 b=dSPmwr4KIn8puiIrKWnqYB3atF271Dc9dv5uOMN1UGbuVQthmFV771ohwL2nZjoEqcmhrIE7bLEa+3JSzRoTCGMq5tHc7Plyegx0xmeEeKO8ivfMCmq+BN+zL1beZd93R72DDY4swW8ZgFIHqu/K0dhTWpjOtvuV5GTj8XJ7U36ouucTQEgdjvCdqfb+4n+/zD0uLglSdVafO17p3UDYKDwG/QFSwqhKvuz9AvSZCboqK0fjD2QFIoK8s4+MEqYLYyWIt25QUY2X1b2CV/QBM2khlR0bs17OocJX4l4Qx9V1k8IR9oyCh0DrHrOgqFsYEsEzDBu/Ja5Fva4UxjyZjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by BL1PR11MB5352.namprd11.prod.outlook.com (2603:10b6:208:311::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 13:35:32 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967%4]) with mapi id 15.20.7202.034; Wed, 24 Jan 2024
 13:35:31 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Thread-Topic: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Thread-Index: AQHaTp4TcTAIbHq1HkWfawaAwwaC27Do9yeA
Date: Wed, 24 Jan 2024 13:35:31 +0000
Message-ID: <b84d9e6b59187f2fa0af6950e4cb144a924bf75c.camel@intel.com>
References: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
In-Reply-To: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|BL1PR11MB5352:EE_
x-ms-office365-filtering-correlation-id: b4eadee4-e060-45f1-9976-08dc1ce15634
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xN1+yBgLMBPO5D9lzoCdtbhP4sTWKVWmCDtaqGqasoCfp136eAValKtT4Ago4CY4KFy4gcSa8M36h2xpG9/MZW7hnuTWbRiZ/qd1C8uaCpoc0i9AT4SLzi3IQeK2y6wwUQipooVi/iVmkLW8D13umWQkLuLi+xJl5mBsPRS+A+cEJZPZ7CuWFFcHXFJpSK3QMcw45KKhgh5ltSZGBMzK1LSUSx1Z+xML/ioTToF+oVmqiUJ8Mu9enSODEB3M4nkiIk90WjQEq2B4YOAhnLX33LRYFpXZYp9ZeKuLsyv40Su2sEADkgb8zWXlXi4ZHGgxLb24rLWeYs0DM3xvTBwjAZHXncTsaWo/tLWIfgsuGvRT3rZBwWZ1HB+nJ8uGSmw4DEmW5NyfJmZSglNQzDoPWGTlmALxCuSAeQQzMc74o5XggEspKvVzS3M7g6lsiYKpSKJ+aeYB8j1Q7KGSsiIu881/nbTA3QlrSfwrixeK6DMc+TAl8nS7SNPKYzqqm1ZlJyn6eAtY52NsNcQNVtWNJJ1A3aUUcDQWcW+sKSaQVfYl1o8SDKX7+JEpP2oLI9pcu3TwgQDQG3FxfVqPhJCUq/8EgLeTMk55j3VNjmHSyYi4h6Y3UNeeQEZ91e7LsW/s
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(346002)(366004)(376002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(76116006)(6512007)(66476007)(64756008)(66446008)(66556008)(66946007)(2616005)(91956017)(110136005)(316002)(54906003)(5660300002)(6506007)(478600001)(6486002)(26005)(71200400001)(83380400001)(38070700009)(2906002)(36756003)(41300700001)(38100700002)(82960400001)(86362001)(122000001)(8676002)(8936002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2ZNQkNqazRHQmROMWVXMnJGTlFGRCswYnNxNTFacjVPUTdna0pzdW9adnRa?=
 =?utf-8?B?MHM0cGJRV3A3dXdOd3Qya20zd1dmbVRXc1dDSUpJdGszZ09zS2xkNjUranJv?=
 =?utf-8?B?Rm4rejY1M0I3Y1lCcW1xVld2SXRQeHp1Ly9pK3FvZ0Rrcmp2RDNCY0Z0UEdj?=
 =?utf-8?B?MVJJU0doNFF6UUJTNTMwK0hGZU5kdkNHdDVLYVdvbi9FbW5SSGVIWVdJbzRl?=
 =?utf-8?B?bzlNNEoyOWRYOVRCd0RiTkc1VmUwY3E0Smw5YmZGYm1KVnEweTY5ZVFOUFdQ?=
 =?utf-8?B?QkNUMm52MDVmdzdQOUFlM0NsQTBjNkRsbEVQQjJ1azJvZ0JrbFJiVWRzQkdV?=
 =?utf-8?B?Z0N3UjBxeS9qMFZjRTNPOHIvT1lid1RxUHd0YXZOOGpNVUJJazVaZDRhZFJD?=
 =?utf-8?B?OG9Ca0h5anp3SzBQVzU2VEQ3SlowVGE5aFFWeXlpZmJTWFlSRTFrM2t3eHMr?=
 =?utf-8?B?ZDFqUisvTi9vdmV2dTNxS040MjJLYzNHU0VLMW94QmJmU0VnV3d5OGxYR2ZX?=
 =?utf-8?B?UE1CVm8yTVZiUnVkL0QwWnRZUTRSWWdpeEVJTlJpVFJGREttbW9ZMTNEMG5o?=
 =?utf-8?B?NjF0SmZ1RUNCcUFFcDhtQkFyTDc1THpSbXlvSXhRaG5VdjNvS2psOU15QjBY?=
 =?utf-8?B?RVd1RUE2WXNxQ3FxQUJSV0dHWEw3K2x2MlpPVWc3VUJQckJiVU0zQ282dXRu?=
 =?utf-8?B?akx3cEVLQUVKMmYvSlYxRU9IM3Bybi96ZEgyZ2dPRnZnZUlCdVJ5Sk52TWhq?=
 =?utf-8?B?Szdac092M2thb3YrZDZCUGdjRS9RSXJtcFFJN3RxdTBLRzJaaWM2Sm4vanFl?=
 =?utf-8?B?OHpteWZLOXh6V2UwRTZQWDQxTk5hTkhxeHBvUEErRkJKdUNoa052R1hvdU01?=
 =?utf-8?B?VEJFVk54T0NUNDRZRHdOMFlOUTlDVlI2VmNDcjFZamFpRk4rWEF2Y0VLTVJv?=
 =?utf-8?B?Z05rcnlhNFZsOWJFdzBrUS82Qi9Ma2p3bGRXRWJ2TWNWREFzRXA5bjdMNyta?=
 =?utf-8?B?M0dYVkFaZlBWaVZXbnlLTHEvbGRjbzllQ1RZbjl1bnRlaitia1AwTWd1cVZF?=
 =?utf-8?B?QjFybE5MVzZPb2NoYzN6b2YyWmh1Wkd0a09USktBQ1BnTFIzaUJXTFYxQjNH?=
 =?utf-8?B?S3lIaVJSN2NZdGtkYkgxdGtHNHJsd0tnSkJCQjZzU0orNU5PQ3hsVG1CVGIv?=
 =?utf-8?B?ejZqZWpNa3RMVUpCN3U4R0o4YlN1K2NQVEFZQkxrbCs0WW1OVDVENzBvM0hR?=
 =?utf-8?B?L0lKRU9oUXptV2hrNGVwcmZwRlFib0Y2bFRCa3poZ2FCWTBxaFdqcDh2OUho?=
 =?utf-8?B?My9XQ0V3SU4vVUtPc0o0T1o4ZmFnS01KaklQUHhrc1ZZZmhsTUxBY0s2ZW1z?=
 =?utf-8?B?MHJTSkF6b3lsN3laNEVWVUJXaGNDYjN3bThYNkhSWnlzM2Z3cmlXdVordmJi?=
 =?utf-8?B?OWRaZkNIc2lNT0lObDlTUTRSSmJxU1BSRjhUeHVNVzI0NUJaWVV1TURqTVFU?=
 =?utf-8?B?ZUJIREJIUm92Q3Nvekk5Q3g5RERIRGIwNUV6TVduVnBCaTNTYjhEazlVQlZz?=
 =?utf-8?B?UFMyNTZZaHhHeGd5cjFqcDF5YmlRWW8rTXp1VWFXZDQ0YnRab29GUlRma0ha?=
 =?utf-8?B?MVJTZVpwYnBDTzh1dGxLb3BBU1l2MXRlSHRMM0xMRnlxT2lkblUrOUhkTE5Q?=
 =?utf-8?B?emN2dzFad1VUd1RGbmJqYWYyZ0RTQVU2WUpOSSt5UDNUNm93THk2SktBNjZM?=
 =?utf-8?B?UWdkbkpLTVhzbVk4bUI3Q1ZwenhFbG1FMXMrRHZWTTdvRnY5ZU1wZnlyRGxq?=
 =?utf-8?B?ZnJTWTVnUEpQVSsvZXdtbkFoUlNwM3dQN2ltdTFtOTlWWk1udVIwUVZmTXh6?=
 =?utf-8?B?dk5qWFFxS1hKWjB0RExNaTZ1TjRSQWtJTlg4SEFkdEQwWTM2NXlYbGc4eTZR?=
 =?utf-8?B?QjgxalUxOGdPMzB3bTJ4eVZYakNaUmZ3YlZFczNaVU1kcnBCUzJ2T0trV0NX?=
 =?utf-8?B?dm05YXlRdTY3cXhoT2tsaE9IVFI3M1BWTGoxYVBLZXVLbDZSMlRTa0Q0Tld5?=
 =?utf-8?B?d3EraWRZK2pvaTBFcDVLbmE3dG56QWcyZzYvZ1dpbVkwOGNPWWdod2FQUVNU?=
 =?utf-8?B?am03UzNWY1Bub0FxS1hnWW5pWnZVbUxYdmFSWWlsN2VIOEIwbmxsamtWVDF1?=
 =?utf-8?B?VVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0459135099428F42AA58C8B6A078106B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4eadee4-e060-45f1-9976-08dc1ce15634
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2024 13:35:31.9135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fi41tFjhIijDgqsVFVMkGedoWqTgvTxBnivStsgJgWdumjEi+HM+/EVt+IRazlS7+WlYc3IwTHw8VflFb3hTUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5352
X-OriginatorOrg: intel.com
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
Cc: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>, "Ursulin,
 Tvrtko" <tvrtko.ursulin@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "Ghuge,
 Sagar" <sagar.ghuge@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDI0LTAxLTI0IGF0IDEwOjE5ICswMjAwLCBKb29uYXMgTGFodGluZW4gd3JvdGU6
DQo+IEFkZCByZXBvcnRpbmcgb2YgdGhlIEd1QyBzdWJtaXNzaW8vVkYgaW50ZXJmYWNlIHZlcnNp
b24gdmlhIEdFVFBBUkFNDQo+IHByb3BlcnRpZXMuIE1lc2EgaW50ZW5kcyB0byB1c2UgdGhpcyBp
bmZvcm1hdGlvbiB0byBjaGVjayBmb3Igb2xkDQo+IGZpcm13YXJlIHZlcnNpb25zIHdpdGgga25v
d24gYnVncyBiZWZvcmUgZW5hYmxpbmcgZmVhdHVyZXMgbGlrZSBhc3luYw0KPiBjb21wdXRlLg0K
PiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEtlbm5ldGggR3JhdW5rZSA8a2VubmV0aEB3aGl0
ZWNhcGUub3JnPg0KPiBDYzogSm9zZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENj
OiBTYWdhciBHaHVnZSA8c2FnYXIuZ2h1Z2VAaW50ZWwuY29tPg0KPiBDYzogUGF1bG8gWmFub25p
IDxwYXVsby5yLnphbm9uaUBpbnRlbC5jb20+DQo+IENjOiBKb2huIEhhcnJpc29uIDxKb2huLkMu
SGFycmlzb25ASW50ZWwuY29tPg0KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50
ZWwuY29tPg0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jIHwgMTIgKysrKysrKysrKysrDQo+ICBp
bmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAgICAgfCAxMyArKysrKysrKysrKysrDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dldHBhcmFtLmMNCj4gaW5kZXggNWMzZmVjNjNjYjRjMS4uZjE3NjM3MmRlYmM1NCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0cGFyYW0uYw0KPiBAQCAtMTEzLDYgKzEx
MywxOCBAQCBpbnQgaTkxNV9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2
b2lkICpkYXRhLA0KPiAgCQlpZiAodmFsdWUgPCAwKQ0KPiAgCQkJcmV0dXJuIHZhbHVlOw0KPiAg
CQlicmVhazsNCj4gKwljYXNlIEk5MTVfUEFSQU1fR1VDX1NVQk1JU1NJT05fVkVSU0lPTl9NQUpP
UjoNCj4gKwljYXNlIEk5MTVfUEFSQU1fR1VDX1NVQk1JU1NJT05fVkVSU0lPTl9NSU5PUjoNCj4g
KwljYXNlIEk5MTVfUEFSQU1fR1VDX1NVQk1JU1NJT05fVkVSU0lPTl9QQVRDSDoNCj4gKwkJaWYg
KCFpbnRlbF91Y191c2VzX2d1Y19zdWJtaXNzaW9uKCZ0b19ndChpOTE1KS0+dWMpKQ0KPiArCQkJ
cmV0dXJuIC1FTk9ERVY7DQo+ICsJCWlmIChwYXJhbS0+cGFyYW0gPT0gSTkxNV9QQVJBTV9HVUNf
U1VCTUlTU0lPTl9WRVJTSU9OX01BSk9SKQ0KPiArCQkJdmFsdWUgPSB0b19ndChpOTE1KS0+dWMu
Z3VjLnN1Ym1pc3Npb25fdmVyc2lvbi5tYWpvcjsNCj4gKwkJZWxzZSBpZiAocGFyYW0tPnBhcmFt
ID09IEk5MTVfUEFSQU1fR1VDX1NVQk1JU1NJT05fVkVSU0lPTl9NSU5PUikNCj4gKwkJCXZhbHVl
ID0gdG9fZ3QoaTkxNSktPnVjLmd1Yy5zdWJtaXNzaW9uX3ZlcnNpb24ubWlub3I7DQo+ICsJCWVs
c2UNCj4gKwkJCXZhbHVlID0gdG9fZ3QoaTkxNSktPnVjLmd1Yy5zdWJtaXNzaW9uX3ZlcnNpb24u
cGF0Y2g7DQo+ICsJCWJyZWFrOw0KPiAgCWNhc2UgSTkxNV9QQVJBTV9NTUFQX0dUVF9WRVJTSU9O
Og0KPiAgCQkvKiBUaG91Z2ggd2UndmUgc3RhcnRlZCBvdXIgbnVtYmVyaW5nIGZyb20gMSwgYW5k
IHNvIGNsYXNzIGFsbA0KPiAgCQkgKiBlYXJsaWVyIHZlcnNpb25zIGFzIDAsIGluIGVmZmVjdCB0
aGVpciB2YWx1ZSBpcyB1bmRlZmluZWQgYXMNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9k
cm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaA0KPiBpbmRleCBmZDRm
OTU3NGQxNzdhLi43ZDVhNDdmMTgyNTQyIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmgNCj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oDQo+IEBAIC04
MDYsNiArODA2LDE5IEBAIHR5cGVkZWYgc3RydWN0IGRybV9pOTE1X2lycV93YWl0IHsNCj4gICAq
Lw0KPiAgI2RlZmluZSBJOTE1X1BBUkFNX1BYUF9TVEFUVVMJCSA1OA0KPiAgDQo+ICsvKg0KPiAr
ICogUXVlcnkgZm9yIHRoZSBHdUMgc3VibWlzc2lvbi9WRiBpbnRlcmZhY2UgdmVyc2lvbiBudW1i
ZXINCj4gKyAqDQo+ICsgKiAtRU5PREVWIGlzIHJldHVybmVkIGlmIEd1QyBzdWJtaXNzaW9uIGlz
IG5vdCB1c2VkDQo+ICsgKg0KPiArICogT24gc3VjY2VzcywgcmV0dXJucyB0aGUgcmVzcGVjdGl2
ZSBHdUMgc3VibWlzc2lvbi9WRiBpbnRlcmZhY2UgbWFqb3IsDQo+ICsgKiBtaW5vciBvciBwYXRj
aCB2ZXJzaW9uIGFzIHBlciB0aGUgcmVxdWVzdGVkIHBhcmFtZXRlci4NCj4gKyAqDQo+ICsgKi8N
Cj4gKyNkZWZpbmUgSTkxNV9QQVJBTV9HVUNfU1VCTUlTU0lPTl9WRVJTSU9OX01BSk9SIDU5DQo+
ICsjZGVmaW5lIEk5MTVfUEFSQU1fR1VDX1NVQk1JU1NJT05fVkVSU0lPTl9NSU5PUiA2MA0KPiAr
I2RlZmluZSBJOTE1X1BBUkFNX0dVQ19TVUJNSVNTSU9OX1ZFUlNJT05fUEFUQ0ggNjENCj4gKw0K
PiAgLyogTXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0gbm8gaG9sZXMgYW5kIHdlbGwgZG9jdW1lbnRl
ZCAqLw0KPiAgDQo+ICAvKioNCg0K
