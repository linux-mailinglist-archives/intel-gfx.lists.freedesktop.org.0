Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3716F75A03A
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 22:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2325310E510;
	Wed, 19 Jul 2023 20:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0036810E510
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 20:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689800002; x=1721336002;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RrIn1sez/Mjf9UvxvfQgeQQcq1iA5MW9wy1S+T905js=;
 b=Wntkn36d4Nb1M79FTOi2myET6cB2Xm6dtAgt6jHVdXJd0fX+uxzhaTp8
 NyUjPspsnFGP5sA5xWbB0lynZJTCZFDioP7NKckZ2XBPjI/TcekSfYwDx
 R3J0MNfp5yPPy+XQF3bd+N9w4DZ85Dr9nveEM8PAndw4eZ/XzGKynkddx
 mVNg3kZ84g5XbVsW68mFAgk/PuOz0Z+U4rhSkBSF4SBuGhSKBNel9CzMM
 8ln7Kruuk8YODIG/+przksU57UtcnWY6gHpjssjZViA11hjnF9dy2Vb+V
 ceIjENsULHGwHAWTp0hWF/t7AS1ohDAxncuFTnTyH3+O9meXCIaYfEW9h A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="346872536"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="346872536"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 13:53:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="898042754"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="898042754"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 19 Jul 2023 13:53:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 13:53:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 13:53:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 13:53:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dSAZljAvvmgc/m7M9D2mN78z/EaTHRq3r138H3hDIk19uCvlmly4VpFLM5PTXw/Iy2uyjD7yy3k+m/NEKzIHKucVcw6eYtCd+Vh95ToOxV6RsTfA3afkRITIoYX8P90I5dlexePtkPNWhBPKyShsZ6vLRPa/ZJjrwGk88HZ2To2Htry2KodHfl5oU1XFQVL5Erca/txr6eXPsVeiJ1gS9Lkcbkt2lTOQpUf6dEUCSvTtXfDzb1NRyG4T5r6IywdQGDWEa9s36g5nCbYsY94MgAeU8zpRApu86g3qmNo6fa/mTNaRTOaojLSyRMusoiFFpTs+/7wblV69sK28FCKnjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RrIn1sez/Mjf9UvxvfQgeQQcq1iA5MW9wy1S+T905js=;
 b=gFKLk+lp1DCRijfDkbYGD4R870x/J8LpPB6XL58wb/gsHGOpxzZfivnyGAiOLMPxKzOkiHwiGh3HeyPCy3uKW5eLUAsIsGInI5OYJgRBWBHZV2Ha4hh1YRMtqlT9YSBFVRCAgc5G5wiUvcSx4sabbGo7gzV3osu1cBzuVW2daStHb7xiE6utQKZ0ABIOHV79x+L5/LSP8qVoSVcqIEbu9XiQnscF2IBIXmI87oxzZ4Xv2SA+LJdRE2gNrO/IfuCFgyuLrfRcIiJdDFZtnGyrFsc+5lsgK03AgsjmM4vOiwxdCfB1TUIdIXS0pQY/vY7nloz4iGJxMLkfeIXtHGhmcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB2574.namprd11.prod.outlook.com (2603:10b6:805:59::14)
 by PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Wed, 19 Jul
 2023 20:53:12 +0000
Received: from SN6PR11MB2574.namprd11.prod.outlook.com
 ([fe80::1eb5:786d:f6a8:4d9c]) by SN6PR11MB2574.namprd11.prod.outlook.com
 ([fe80::1eb5:786d:f6a8:4d9c%4]) with mapi id 15.20.6609.024; Wed, 19 Jul 2023
 20:53:12 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Sripada, Radhakrishna"
 <radhakrishna.sripada@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/dpt: Use shmem for dpt objects
Thread-Index: AQHZucqXbpCHCNjET0CvMF5DpgbiAK/BGGkAgAB22AA=
Date: Wed, 19 Jul 2023 20:53:12 +0000
Message-ID: <SN6PR11MB2574001C852621E0AFF4CF7F9A39A@SN6PR11MB2574.namprd11.prod.outlook.com>
References: <20230718225118.2562132-1-radhakrishna.sripada@intel.com>
 <37f64727-9bbd-c967-193c-97266dfc1331@linux.intel.com>
In-Reply-To: <37f64727-9bbd-c967-193c-97266dfc1331@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB2574:EE_|PH7PR11MB6449:EE_
x-ms-office365-filtering-correlation-id: a08c6291-69ac-4daa-7593-08db889a2aa1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f0mzA9XQVNm4+21B5mAPwW5hUCCyHux85nOf/JaAYmHw2MImRV25hlYvH1Bzf98TPqIpMUqz+F45Estdxit2mPZ9uQbPvd5bvxko29EepRAr3dcEpBF7g4p6xd5aX9++4f2jElwFnyx9A81jxLR6lYvRntHW3frfCYzVySmSVdoSVUsmRIaRSgOIW60YbM4HtIl+9VxQMCoFnlMVwT/x8CU9awiNlb8UAN6L2VsRTktyRhmrTB+m68qtfqORABTnNUDiAfbfRrVn/0nzmLuYNZTdAOsL1nw+97xmLLuIhlvKAb8IgsA+uRLH3mG9vrWKvEPVCS2uw0XehUHCMPte/QTxWOIzj5DiJSbJ5mwsumSiZJTFZ4QYyk7lrpxJRBptR/Ow0JYUHvTOHx4jC4qkX2hvBgcPNrFiSTisEEOdtNy4DGKamsz0wFMB20PvYR53kBajVnDMuZUbg3QWvfKMwrL32cFLUZ237RyCtiz5mrcHl5DRzRWVLAgjrpz5JKcH0coYriFw6QRTks7q88qLYUbTgVT4FY9/TSI7ccudo3+qg0SX8XYzf+nWdVGX8K8j6QppBLm/iqgyfPfQE41LE91fVZnT810/ENpYzaZEmaif1WMy9+I5O3wx24kLnanF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2574.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(136003)(366004)(396003)(451199021)(38100700002)(7696005)(54906003)(478600001)(71200400001)(110136005)(64756008)(6506007)(66574015)(83380400001)(82960400001)(86362001)(38070700005)(33656002)(55016003)(26005)(76116006)(2906002)(186003)(53546011)(9686003)(41300700001)(122000001)(66446008)(66556008)(66476007)(52536014)(4326008)(8676002)(8936002)(66946007)(316002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VVRyRFc0K0JzaTZPYlJkZENyYlV3d21PU1hDRDNRSU4ybUU0SXRSK21ML1Qz?=
 =?utf-8?B?cWxSRjZrT0RMazJ3TUdaRjd4V0ZuaTk0SlU1S3pCbEtkWEhXUTBHUm0vOWtx?=
 =?utf-8?B?RGNuZnJUWDRHK2tyNkpNT2ZUanljd1NZemwzTTlzZURlL2JKeS8zRUR2Smpi?=
 =?utf-8?B?RCtMckMxWGNrWmJQNlkwVTFTcmNEQUptUlM2UEtxZVdNWTNyQzV1cWZ2ZXhi?=
 =?utf-8?B?THpCakgyK1BrSDBXKzA3cnpsWUpSc2hQeWR6Y3JJZlp1Q3hoelF5dHI2Ym9W?=
 =?utf-8?B?NjJGOTBvaTdCVUpiT2Mva3lQcFFTbzJtZzZpR0o5WEZUQjFoY1RuSHRkeUla?=
 =?utf-8?B?NEErYjNpdWx5SEs1WSt0KzdtVmk4OUhJN1dHbUMxSVBPMW9Iay9md2hSTzFS?=
 =?utf-8?B?Wi9HMmZBRjFyMk9ZQzVETytpT29Ud3FZYjhkQk9NdWtSOE5KVzRFdGk2NVRm?=
 =?utf-8?B?dzVURHMyU1RzdlA5cEp5NGJ2aHVQYzJjMVFQZXliSTM4eEJYUngxUm1xcVFY?=
 =?utf-8?B?Y2ZWT3VvRzBpeUh3UHZuV1BUSzhXNWNOT091cWoxdjVEYWU4NnQ5ME5ZVlZ5?=
 =?utf-8?B?NDdJWDhwaHRGZXNJZTN3dm8rQW1XZDlRejVNaVoyTGFZZjN6UEh6RENOd0tX?=
 =?utf-8?B?bFdrZzlvYTJqZ0hSOWlSZmJTM0NFR1NySUFiVDFVSm9RQkRicTREeVN4TDlG?=
 =?utf-8?B?U3ByRWJqeExGWmtkZkJQL2JhVjNRa1pNblBLZ29HblFqc3V3MVhndnc4Lzk2?=
 =?utf-8?B?WGhoS1Z0eDRnYlZsTk56WWFJbjFaQXk5SDlFYkF0bWp4ZElWSTJmeW5JMThS?=
 =?utf-8?B?RnpwaldGV1pCZzZtZ3RnNXl4WHdHT3diTlZTdG5TaUtOOVRyb3FaK2tpcFNO?=
 =?utf-8?B?b2w0aVpUUzZXbkVpeFFsNGNsNUcrZGowL2JmalRDUm9nY0R6NjBNeUpBa0Zt?=
 =?utf-8?B?bCtzODR5MFNvYTk0KzBuajl6cERCZWdScEYzdFBvUUFjUkNoZnRhNUFrRGpX?=
 =?utf-8?B?alBBWDBIMlhucjc3czNYM2xFZWUrZ0JZd2IxT20yM1ZDQWRsc2Vod2JsVHBR?=
 =?utf-8?B?RmpDc2VzT1U3UU11ZHpuSStUUlpvTmJHMjZNZFJCMnZVY0Y1SThaczkvNGpn?=
 =?utf-8?B?T2MwQTF6dS9GRkpYSUJaVUF0UEdqVXVxNnpKa3lHelBjYTBydWdEV0Z4Vm1q?=
 =?utf-8?B?RFZweHQ0dUN2eEdzK3NuaW5VcCs0NWNrbWNIR1NheDVBZGMzMGpLN2xpdThm?=
 =?utf-8?B?a29SODQ0T2V2Kzk1SE1HbmV1UWZLRzZabDlHWWwraERKbHhuRnV3QmVqWnpD?=
 =?utf-8?B?YWg2c2NXUHREOEJpUXhPZjFnTUUyVUxoeGorUUtyaUtJYmFjekY3MEZwVWlh?=
 =?utf-8?B?RVFydlJNZHlUY2pUUmhGZHloakRWTDh3R0c2MHJXQ0hEbE45UnlOZzlNWGNu?=
 =?utf-8?B?RDVzeXZQRjRzU1ZuWnl3clV4V005K2hTV1QrczBSd0hhOFllamd3QkhoUmJZ?=
 =?utf-8?B?b1M0cEFLcHdNYVBqVGpETU82Q0l1WDNXUzh0bThWNU93NC9hUWZFdHV4aEhD?=
 =?utf-8?B?cUJVQmphZUhSVVVpdjhVa1pPWjNiOVdyc1BSSHpPZlZtQ2d0VmwyVytQVFlI?=
 =?utf-8?B?c2YyZXA3ZDVQUG5xdFZHWGcrRnB2UURRTjBHZ2tIWTNWVDBTaWdNYWhvRXU5?=
 =?utf-8?B?bmdseEFYSEdjaGwwemY1Rm5nYjRZVS9zNHZqL3BKVjhXMUNtb1Ureit6YVdu?=
 =?utf-8?B?TTh1d0s1aFozbi9LWm1lT3ZKbUVoVGZXakRaSlFnV3lwR0NBTjB0dUR3b09K?=
 =?utf-8?B?UFhoV0F4alRybjVxMmhvNmtpMVcyRHFPdnExc0RwNlNueDRaa3hHc0RjdmQw?=
 =?utf-8?B?ZVVPZmQzQWNKVG5IYitoMkVhd3dCcVNYZGJDUzJtQkc4M3UvZWh2eWhOM3FU?=
 =?utf-8?B?eXpIUEZKdjNxY3lpREtkamlUenpQb2lXaVhIb3NhTnIwTytsOHl2NDZzRkVH?=
 =?utf-8?B?RnNZN1Exam5Ybmt1bFo1Z0gzRkhVVStiMGVtbzB6TVpnaE1BRG40alhPaWlQ?=
 =?utf-8?B?NGc3aWcwTEI1RjQzVDBsaDlVMFpWRlI4elpxRDJaOUtmUzNHWEREU3VwYWRQ?=
 =?utf-8?Q?AApDjkP4KtGHd70DmEdaB0Lv7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2574.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a08c6291-69ac-4daa-7593-08db889a2aa1
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2023 20:53:12.4316 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D23MOXjnWNN+awwH9lI44Alwm79lABXGzPLfwVt6o8weXBuqCZNh+R3xvpOyTysSJxzqrKABmiJXskhDFH4hfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6449
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dpt: Use shmem for dpt objects
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
Cc: "Wilson, Chris P" <chris.p.wilson@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBPbiAxOC8wNy8yMDIzIDIzOjUxLCBSYWRoYWtyaXNobmEgU3JpcGFkYSB3cm90ZToNCj4+IERw
dCBvYmplY3RzIHRoYXQgYXJlIGNyZWF0ZWQgZnJvbSBpbnRlcm5hbCBnZXQgZXZpY3RlZCB3aGVu
IHRoZXJlIGlzDQo+PiBtZW1vcnkgcHJlc3N1cmUgYW5kIGRvIG5vdCBnZXQgcmVzdG9yZWQgd2hl
biBwaW5uZWQgZHVyaW5nIHNjYW5vdXQuDQo+PiBUaGUgcGlubmVkIHBhZ2UgdGFibGUgZW50cmll
cyBsb29rIGNvcnJ1cHRlZCBhbmQgcHJvZ3JhbW1pbmcgdGhlDQo+PiBkaXNwbGF5IGVuZ2luZSB3
aXRoIHRoZSBpbmNvcnJlY3QgcHRlJ3MgcmVzdWx0IGluIERFIHRocm93aW5nIHBpcGUgZmF1bHRz
Lg0KPj4NCj4+IENyZWF0ZSBEUFQgb2JqZWN0cyBmcm9tIHNobWVtIGFuZCBtYXJrIHRoZSBvYmpl
Y3QgYXMgZGlydHkgd2hlbg0KPj4gcGlubmluZyBzbyB0aGF0IHRoZSBvYmplY3QgaXMgcmVzdG9y
ZWQgd2hlbiBzaHJpbmtlciBldmljdHMgYW4gdW5waW5uZWQgYnVmZmVyIG9iamVjdC4NCj4+DQo+
PiB2MjogVW5jb25kaXRpb25hbGx5IG1hcmsgdGhlIGRwdCBvYmplY3RzIGRpcnR5IGR1cmluZyBw
aW5uaW5nKENocmlzKS4NCj4+DQo+PiBGaXhlczogMGRjOTg3YjY5OWNlICgiZHJtL2k5MTUvZGlz
cGxheTogQWRkIHNtZW0gZmFsbGJhY2sgYWxsb2NhdGlvbg0KPj4gZm9yIGRwdCIpDQo+PiBDYzog
PHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjYuMCsNCj4+IENjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+DQo+PiBTdWdnZXN0ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXMucC53aWxzb25AaW50ZWwuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogRmVpIFlh
bmcgPGZlaS55YW5nQGludGVsLmNvbT4NCj4+IFNpZ25lZC1vZmYtYnk6IFJhZGhha3Jpc2huYSBT
cmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcHQuYyB8IDQgKysrLQ0KPj4gICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+Pg0KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmMNCj4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcHQuYw0KPj4gaW5kZXggN2M1ZmRkYjIw
M2JhLi5mYmZkOGY5NTlmMTcgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwdC5jDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwdC5jDQo+PiBAQCAtMTY2LDYgKzE2Niw4IEBAIHN0cnVjdCBpOTE1X3ZtYSAqaW50
ZWxfZHB0X3BpbihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkNCj4+ICAgICAgICAgICAg
ICBpOTE1X3ZtYV9nZXQodm1hKTsNCj4+ICAgICAgfQ0KPj4NCj4+ICsgICAgZHB0LT5vYmotPm1t
LmRpcnR5ID0gdHJ1ZTsNCj4+ICsNCj4+ICAgICAgYXRvbWljX2RlYygmaTkxNS0+Z3B1X2Vycm9y
LnBlbmRpbmdfZmJfcGluKTsNCj4+ICAgICAgaW50ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUtPnJ1
bnRpbWVfcG0sIHdha2VyZWYpOw0KPj4NCj4+IEBAIC0yNjEsNyArMjYzLDcgQEAgaW50ZWxfZHB0
X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmZiKQ0KPj4gICAgICAgICAgICAgIGRw
dF9vYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihpOTE1LCBzaXplKTsNCj4+ICAg
ICAgaWYgKElTX0VSUihkcHRfb2JqKSAmJiAhSEFTX0xNRU0oaTkxNSkpIHsNCj4+ICAgICAgICAg
ICAgICBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiQWxsb2NhdGluZyBkcHQgZnJvbSBzbWVtXG4i
KTsNCj4+IC0gICAgICAgICAgICBkcHRfb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRl
cm5hbChpOTE1LCBzaXplKTsNCj4+ICsgICAgICAgICAgICBkcHRfb2JqID0gaTkxNV9nZW1fb2Jq
ZWN0X2NyZWF0ZV9zaG1lbShpOTE1LCBzaXplKTsNCj4+ICAgICAgfQ0KPj4gICAgICBpZiAoSVNf
RVJSKGRwdF9vYmopKQ0KPj4gICAgICAgICAgICAgIHJldHVybiBFUlJfQ0FTVChkcHRfb2JqKTsN
Cj4NCj4gT2theSBJIHRoaW5rIEkgZ2V0IGl0IGFmdGVyIHNvbWUgbW9yZSBsb29raW5nIGF0IHRo
ZSBEUFQgY29kZSBwYXRocy4NCj4gUHJvYmxlbSBzZWVtcyBwcmV0dHkgY2xlYXIgLSBwYWdlIHRh
YmxlcyBhcmUgc3RvcmVkIGluIGRwdF9vYmogYW5kIHNvDQo+IGFyZSBsb3N0IHdoZW4gYmFja2lu
ZyBzdG9yZSBpcyBkaXNjYXJkZWQuDQo+DQo+IENoYW5naW5nIHRvIHNobWVtIG9iamVjdCBpbmRl
ZWQgbG9va3MgdGhlIGVhc2llc3Qgb3B0aW9uLg0KPg0KPiBTb21lIHJlbGF0ZWQgdGhvdWdodHM6
DQo+DQo+IDEpDQo+IEkgd29uZGVyIGlmIGludGVsX2RwdF9zdXNwZW5kL3Jlc3VtZSByZW1haW4g
bmVlZGVkIGFmdGVyIHRoaXMgcGF0Y2guDQo+IENvdWxkIHlvdSBpbnZlc3RpZ2F0ZSBwbGVhc2U/
IE9uIGEgZ2xhbmNlIHRoZWlyIGpvYiB3YXMgdG8gcmVzdG9yZSB0aGUNCj4gUFRFcyB3aGljaCB3
b3VsZCBiZSBsb3N0IGZyb20gaW50ZXJuYWwgb2JqZWN0cyBiYWNraW5nIHN0b3JhZ2UuIFdpdGgN
Cj4gc2htZW0gb2JqZWN0cyB0aGF0IGNvbnRlbnQgc2hvdWxkIGJlIHByZXNlcnZlZC4NCg0KaW50
ZWxfZHB0X3N1c3BlbmQgaXMgInN1c3BlbmRpbmciIHRoZSB3aG9sZSBWTSB3aGVyZSwgbm90IG9u
bHkgdGhlIGRwdA0Kb2JqZWN0cyBhcmUgbWFwcGVkIGludG8sIGJ1dCBhbHNvIHRoZSBmcmFtZWJ1
ZmZlciBvYmplY3RzLiBJIGRvbid0IGhhdmUNCm11Y2gga25vd2xlZGdlIG9uIGhvdyB0aGUgZnJh
bWVidWZmZXIgb2JqZWN0cyBhcmUgbWFuYWdlZCwgYnV0IHRoZSBzdXNwZW5kDQpyZXN1bWUgcGF0
aCBzdGlsbCBsb29rIG5lY2Vzc2FyeSB0byBtZSwgdW5sZXNzIHRoZSBjb250ZW50IG9mIHRoZXNl
DQpmcmFtZWJ1ZmZlciBvYmplY3RzIGFyZSBhbHNvIHByZXNlcnZlZC4NCg0KPiAyKQ0KPiBJIHdv
bmRlciBpZiBpOTE1X3ZtYV9mbHVzaF93cml0ZXMgc2hvdWxkIGJlIHVzZWQgKGFzIGEgY29tcGFu
aW9uIG9mDQo+IGk5MTVfdm1hX3Bpbl9pb21hcCkgZnJvbSBEUFQgZHB0X2JpbmRfdm1hLCBkcHRf
aW5zZXJ0X2VudHJpZXMsIGV0Yy4gQnV0DQo+IHRoZW4gSSBhbSBhbHNvIG5vdCBzdXJlIGlmIGl0
IGRvZXMgdGhlIHJpZ2h0IHRoaW5nIGZvciB0aGUNCj4gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAg
cGF0aCBvZiBpOTE1X3ZtYV9waW5faW9tYXAuIFBlcmhhcHMgaXQgc2hvdWxkDQo+IGNhbGwgX19p
OTE1X2dlbV9vYmplY3RfZmx1c2hfbWFwIGl0c2VsZiBmb3IgdGhhdCBtYXBwaW5nIGZsYXZvdXIg
YW5kDQo+IG5vdCBkbyB0aGUgZ2d0dCBmbHVzaGluZyBpbiB0aGF0IGNhc2UuDQo+DQo+IEluIHN1
bW1hcnkgSSB0aGluayB0aGUgZml4IGlzIHNhZmUgYW5kIGNvcnJlY3QgYnV0IGF0IGxlYXN0IHBv
aW50IDEpIEkNCj4gdGhpbmsgbmVlZHMgbG9va2luZyBpbnRvLiBJdCBjYW4gYmUgYSBmb2xsb3cg
dXAgd29yayB0b28uDQo+DQo+IFJlZ2FyZHMsDQo+DQo+IFR2cnRrbw0KPg0K
