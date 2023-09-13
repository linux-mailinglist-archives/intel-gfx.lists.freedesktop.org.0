Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6128479EFFF
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 19:14:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E6910E0C9;
	Wed, 13 Sep 2023 17:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D686610E0C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 17:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694625250; x=1726161250;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PsMRXSBWNzSfY57Gdock8kfx+FcZD4YiRrXHC3N/reo=;
 b=IRtKLCn0ze108zBQzoF6Qeauzrb6MUA4SzoGbQkrARL295REeE/361KV
 cnWLosaRt4wKOjWYVs0FqV5H+mw0Rn7fhKequKlnhxUGmA7ctLHsgAE9I
 xEb0iZFQVLF6Ywm+d/PqW30Igq0rcfqJSBwH0c83u1SeJFQs8ih2AnHcT
 qwoXlQ5y4fwRiSYjQSgTluLqJ/DU23YDZX2dMjyjyPEFVkfItpuUiptQ+
 zgbSYhz6LqsfKNTjHxRepbLqUfpaNdQI7BBhQ9/WImOXgcB965GL8Prap
 23t6orhRDFFXSUqOrCjCjPqyehr/ZnAmu3EG8kYQb3tmbSSt/PVZDCKxI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="377633983"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="377633983"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 10:13:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="1075023645"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="1075023645"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 10:13:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 10:13:50 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 10:13:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 10:13:50 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 10:13:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T++GviMghF9WVv28rGK3HnQO/pUWLIOVNFcC/F0IVGvbXoRU5sYtcxUfZ1MwSqrlq6OunIUUlWyrt6RC6PurjTZ3ckvjjtIIccXqmBM1YhN+jMlXpuRLkLj9XXN17xTMdsN8JJ6pNeMHsobArN+I58wOO0j17GUhww2p636IwkJlMnf0H4MZpfpcg5RYwWrHE4HZSM1lDhqHOz8kqcgSmeXyIjIbK9ZAwAlpKMq7yD2YzizLPYnmY/Q8j5TpcZy2MP37wVGybikNeE59vWBtmx6au2FKZ8BXqr2pL8TwwEal3dgwpiVP1C8rCj2oi29jaHjGwDwcyxW/eFUcqdIOcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PsMRXSBWNzSfY57Gdock8kfx+FcZD4YiRrXHC3N/reo=;
 b=gevaOoxxj9ka84aTpgile1X3lt4L1GOXW94Jck8aF+eJlR5aRvDtfWb9Oyy2jemUp2Dpx/kwizUwO15SGi+RNRgpIimlUI7f/AG9rFd198yQ9CIcAyrqSVmF5QvmTcYqzj0c33P4tgU7NYzeACeNTCQhDtJn44o4FqDDDN6qD2RJYlAqJYuGqcPEc/YqCA9jE3+iQVy0M1xs9B5ENqRf1liCs6KIcrfJwrdVqUeqh5HVyPohRCTyom5jsFfjd5JVs42B9GFPQQ/DkuGQi9kSrmn7yPKv1CqaMSW6qPM0Bl143o0x03XFn20Y9/A0p8bHaaBj7ccRW3v7JSjQ3xCKjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7735.namprd11.prod.outlook.com (2603:10b6:8:dd::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Wed, 13 Sep 2023 17:13:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 17:13:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 14/19] drm/i915/dsb: Evade transcoder
 undelayed vblank when using DSB
Thread-Index: AQHZmKtb3WHR82orGEC1Zv48wsP2ELAZmFyg
Date: Wed, 13 Sep 2023 17:13:48 +0000
Message-ID: <DM4PR11MB636086A050C10B429AEDE0DFF4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7735:EE_
x-ms-office365-filtering-correlation-id: f6132c55-7068-4471-e6b4-08dbb47ccb8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dQ3GyYlWvgHzhf3xa1GZ8dhWYme0c9cX++U8KV/Du0xPcGk8PXSn4Ux4FM4OD73eT8+eSPJR/kbdHJrUuA9+U5xSVj8TsOrP4WGikqlZ9LN+53+T9S/Sb+SHcKKLMXsciOPHqkOwj6Zn5GF0VOfim9cWyOh/gwqbqvzffGsft4L0O2b8xWA4AypSLzK051p7pMRYr9TJLpGJf4HzOeK10KCgAcv4XJi5cIarAp5fBU5YsbJqX1MbRyfiZpWVyOPbXj7ZWqhksjcNqBKQ/66zx97i544Ojz7mljyt3+tSLdPWlSyMNlfm370opgoxjZiBGSUDhccN63E3mm+UiNnpDM5IS2hz04r+IdWXtLnjh/Ke/m/lfbvN8yvBSFNEvokdClVHyiIWzxjVG98JGYFwFS4iSMlrHecOYqw+jI0felMscMTyGUwAa2K1f/OtOqKvzWdevmDDfAXJbfrlN4oj0fPvpVrH2jHRxQh5/GtcsE150GyrqmDYnirEPGPKuVYxUhd5bbKDF8aVd2CXOwM1Wx37U4wEqJ1Rr6MQe/lcJX7ETJiy4WMo6q3WsUM8JrVngJGD4S2MIePC2IqvPdMzzIk6V89gPsmMKzisnpzD7jTxyfl4QLjos/7jEuk6+QjD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(376002)(396003)(366004)(1800799009)(186009)(451199024)(8676002)(52536014)(8936002)(5660300002)(41300700001)(76116006)(66556008)(66476007)(66946007)(66446008)(64756008)(110136005)(316002)(9686003)(2906002)(122000001)(86362001)(38070700005)(55016003)(66574015)(82960400001)(38100700002)(83380400001)(26005)(33656002)(53546011)(6506007)(478600001)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WUd3UTBkbjAwUlpTL0NUbU1ZN1kvekF6TFJ0SzZsaWx3TDlOc3pKRURJbzBw?=
 =?utf-8?B?WmVIeEhuMVlpaHNjd2plRDYxdW5yQ1o5My9vdEFUTXpMc0UwdkVqTFlwS1Va?=
 =?utf-8?B?Mnc5MnpTcmFFMVUrZmlhUTZuTXdTeFE4QzloaFFUUXNoajFiMGV2WmRaQVdJ?=
 =?utf-8?B?ck1yV0VUTFhDdThTQklpc0V4UGFuKzgrTlBmQ2RKTHZCTTBETFV0YjJONlc3?=
 =?utf-8?B?YkZDRkN0dGxwbHlXZEdwS3cyeGlPSjcvaGhseU1Bbk9JdTArVEQ5N01uWC84?=
 =?utf-8?B?elBxSHJIRjBRMEVtaEJoTzM3b2pET20wcTJuZnhPc1p2M0w5aDZ5TFBHdXE5?=
 =?utf-8?B?b3BFU0NPbDhTRUtFWS9CbzVCeGEzVXlJOG55RWI5OVc1MW5ZQjY5TWlMUm83?=
 =?utf-8?B?UjJSdU91dEJMN21leWVZK3MxeGYvZ0Q4bEhGWTFHS3hsd2ViOWQ4eXFCYTVG?=
 =?utf-8?B?TW1PTEV6OHQvajdGMjhxOEEwUEV2bEZzK0E2L3BHUTJXK0M1M2JyTE9Qck9K?=
 =?utf-8?B?TTVwZzY0Zm03RnNIZmRyN3hPSFByMHdVUWxVcXFJNkxuMG83bHV5bEl6UElv?=
 =?utf-8?B?djhrRXpiZURDS1RQOU9HVkxuK0NxeVdZOUlpd3M3Szd2SDRtMUVNNEpwTldy?=
 =?utf-8?B?TDFWODlBTjNoK2V4eTFTVFFwWUVHSWpuNForWjZDMHI3cXdPaXlBMFh5RHM2?=
 =?utf-8?B?TGgxb3R4TjJhdEpNNXIrMzd6akVuMEl4UXBZTVd1UStPd25UNE1DZDZ2VUha?=
 =?utf-8?B?YXNXaUdhYk1QS1FxdnBwQk9rZ1AzVmpKZk1JanRXNjdLYVdkc0x4THpvTHNm?=
 =?utf-8?B?eEtyMnFRZGs3Y09iQ2ZDME5PMC8vaG5OOEZHaDN6VFBJS2hCUEV1N0RiOWFG?=
 =?utf-8?B?QVNXdHhIK3lLWjBBQmlOUnE3WWFvVmsvSkFSS1pqSm5nMFpCZUtqckYvUy8z?=
 =?utf-8?B?WUNUd2tZczd6WkxWdi9DYXBWRS90VzEwcjZrTTBGeWtITXBJcEp5aGJyS1Ay?=
 =?utf-8?B?dTZDTjlJUVZ2dVZvK2NVd1E4VlhaL2dNL29kZkhKdzRIb05kL1Q5dEp2NHZX?=
 =?utf-8?B?aHZZY0xac0lkWXdDajAwZjlDa0E2SjVIWlVzbHlsNFNxbmFsQlBFOWsxUlY0?=
 =?utf-8?B?VWFGbXk0aXZIMXJIczBvZmhnMTdOaGZ4NFJTWlY1cEN0YnhOdXFjYlM0RklM?=
 =?utf-8?B?SEErOWJqb1JUdkdBRVV0VGVLcENXczY4a3MxR1NSRUphOGlEYVJOMW9aRkNY?=
 =?utf-8?B?UWJFN1ZSRHFCaGIrbG1qSGNJT0tER3hGSWljckFDZUVxQXI2Tk5ETEVnQ3VN?=
 =?utf-8?B?MThkQi9uekpGV1o1MXE0T3MxbWc5aTc5UTd1bkdIeWJUbEh3ei8vdDBGSEJ3?=
 =?utf-8?B?Q3U0SlFuZnBIOVhKUlJiL3BPV1BUMm5DendON1JyT2MwQkdzMW4xV3ZGMGpG?=
 =?utf-8?B?YkNwK0V0bUZQSWpjcHlsSDJmZi9XZ3RSaEllRjltdWVxZENUendRY1ltUjdR?=
 =?utf-8?B?ZTUrSXFTOVQ1VG83YXk3cS9VTTFGNEpyNUtSWkJMSGdyK1QvNGRrcTBNREN6?=
 =?utf-8?B?QjZNV1hnRC9kRFRzV2Q1SkpoSFBjVnRkYjdaYlphbHAxbkFQVGI2cXVURDNY?=
 =?utf-8?B?YzNKT1ZRdHVKM2E2cUNkMVdQamQvNWpRUzdLZG45QUdxNGpwbm1OODBxcEtG?=
 =?utf-8?B?NkFkZ2RyTGxvdnN6Y0wya2w1TytvV04vazZ6VUFXUEI3djVRQTJYWVdhRU5K?=
 =?utf-8?B?TEYwd0x2R3ZNenJuaTBNdEZDNHBsczZhanhsTFgzMXR5VWl1bXJHMWk0TElB?=
 =?utf-8?B?OXhXMEw4NmpIL2txT2FiK0U2NWxvV2lwclphQ1NBZ2hmMm1hSFRqL3h0MHFj?=
 =?utf-8?B?cGhUcG5hbWdjU1RreVk0eXUwcnJvWnZJTG95QnFzNS96S0EwblNRVU9LQ3NE?=
 =?utf-8?B?UERIekFMYlhZVXZlV3FsV284VmF6ckdwY0J3clVHZGMyVHVSNHBoNmdnU0JT?=
 =?utf-8?B?T0VlWjVUNlZ6UTRob1RDZDZmNHJzR01iQitPUkV6eXdVR0VRNVdpRjZTRzFu?=
 =?utf-8?B?cnhBLzBQbVlkUHlRaUlUTDFZbldzeE9CM09sYS94Ulp6eEZYby9UM0J5UjhM?=
 =?utf-8?Q?Cb1BJo6+VllZfmR8B5S5TiOiq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6132c55-7068-4471-e6b4-08dbb47ccb8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 17:13:48.6995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HBCI/akEzpekefa54mFADMeq2aOgnJWJKSoW1QVulXNXlCP2VNGIB1JbwsuNxtHE+lcBsJxAqk7FCRoxLgpo9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7735
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 14/19] drm/i915/dsb: Evade transcoder
 undelayed vblank when using DSB
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAxNC8xOV0gZHJtL2k5MTUvZHNiOiBFdmFkZSB0cmFuc2NvZGVyIHVuZGVsYXll
ZA0KPiB2Ymxhbmsgd2hlbiB1c2luZyBEU0INCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBXZSB3YW50IHRvIHN0YXJ0IHRo
ZSBEU0IgZXhlY3V0aW9uIGZyb20gdGhlIHRyYW5zY29kZXIncyB1bmRlbGF5ZWQgdmJsYW5rLCBz
byBpbg0KPiBvcmRlciB0byBndWFyYW50ZWUgYXRvbWljaXR5IHdpdGggdGhlIGFsbCB0aGUgb3Ro
ZXIgbW1pbyByZWdpc3RlciB3cml0ZXMgd2UgbmVlZA0KPiB0byBldmFkZSBib3RoIHZibGFua3Mu
DQo+IA0KPiBOb3RlIHRoYXQgY3VycmVudGx5IHdlIGRvbid0IGFkZCBhbnkgdmJsYW5rIGRlbGF5
LCBzbyB0aGlzIGlzIGVmZmVjdGl2ZWx5IGEgbm9wLiBCdXQNCj4gaW4gdGhlIGZ1dHVyZSB3aGVu
IHdlIHN0YXJ0IHRvIHByb2dyYW0gZG91YmxlIGJ1ZmZlcmVkIHJlZ2lzdGVycyBmcm9tIHRoZSBE
U0INCj4gd2UnbGwgbmVlZCB0byBkZWxheSB0aGUgcGlwZSdzIHZibGFuayB0byBwcm92aWRlIHRo
ZSByZWdpc3RlciBwcm9ncmFtbWluZw0KPiAid2luZG93MiINCj4gZm9yIHRoZSBEU0IuDQoNCkFn
cmVlIHdpdGggdGhpcywgbG9va3MgZ29vZC4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgfCA2ICsrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gaW5kZXggMzZjOWI1OTBhMDU4Li5mZjBlYmRm
N2NkZTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3J0Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5j
DQo+IEBAIC01MTksOCArNTE5LDEyIEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gKm5ld19jcnRjX3N0YXRlKQ0KPiAgCS8qDQo+ICAJICog
TS9OIGlzIGRvdWJsZSBidWZmZXJlZCBvbiB0aGUgdHJhbnNjb2RlcidzIHVuZGVsYXllZCB2Ymxh
bmssDQo+ICAJICogc28gd2l0aCBzZWFtbGVzcyBNL04gd2UgbXVzdCBldmFkZSBib3RoIHZibGFu
a3MuDQo+ICsJICoNCj4gKwkgKiBEU0IgZXhlY3V0aW9uIHdhaXRzIGZvciB0aGUgdHJhbnNjb2Rl
cidzIHVuZGVsYXllZCB2YmxhbmssDQo+ICsJICogaGVuY2Ugd2UgbXVzdCBraWNrIG9mZiB0aGUg
Y29tbWl0IGJlZm9yZSB0aGF0Lg0KPiAgCSAqLw0KPiAtCWlmIChuZXdfY3J0Y19zdGF0ZS0+c2Vh
bWxlc3NfbV9uICYmDQo+IGludGVsX2NydGNfbmVlZHNfZmFzdHNldChuZXdfY3J0Y19zdGF0ZSkp
DQo+ICsJaWYgKG5ld19jcnRjX3N0YXRlLT5kc2IgfHwNCj4gKwkgICAgKG5ld19jcnRjX3N0YXRl
LT5zZWFtbGVzc19tX24gJiYNCj4gK2ludGVsX2NydGNfbmVlZHNfZmFzdHNldChuZXdfY3J0Y19z
dGF0ZSkpKQ0KPiAgCQltaW4gLT0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192Ymxhbmtfc3RhcnQgLSBh
ZGp1c3RlZF9tb2RlLQ0KPiA+Y3J0Y192ZGlzcGxheTsNCj4gDQo+ICAJaWYgKG1pbiA8PSAwIHx8
IG1heCA8PSAwKQ0KPiAtLQ0KPiAyLjM5LjMNCg0K
