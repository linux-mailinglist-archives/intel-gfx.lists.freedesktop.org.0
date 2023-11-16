Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E20A67EDD33
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 10:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8137510E145;
	Thu, 16 Nov 2023 09:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD4810E145
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 09:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700125218; x=1731661218;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VBdyL/AyJNk4phdBoHz/1tsiiOPcw7nv5PkDOZTXrYo=;
 b=Hve+XzbqIOCjUJZwuwOvA89yNxXhJfPYB326C/rA49u2BQPiflDojnvB
 6l3oaaF0bjQDQVocSObTyply24XusNlP1gLwsi3kkcLmILzAxPVOGfuL/
 iJ4/10CcSNh4We9+ajU1zRzGDksJcQKUtSPPxIHqDLXal6h6beLkBYth0
 anCWdmyFG0FCow15tdMKE2zcX9kq/BMEUoKTL3ewT5zUWsnE+PFks+t9X
 nDRdKuQ6rTvPMBknNpTLT+OASh54c6jvO1HxCs/h55xyyA9gciDgOAwLh
 PxFfQFuQN25cNRuOOeTk4mJFeBmyhvgUmvw98Atn4Tk7qM3xuQ1kMjl/4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="457542623"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="457542623"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 00:59:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="1096732882"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="1096732882"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 00:59:04 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 00:59:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 00:59:04 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 00:59:04 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 00:59:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VBQPxj6DnRPLf1hKK1SuYF4yYAOuDrbJZMnE7eEquUGNBj4aMUaI6JjGtVfAVcI58xCxzNX2LmYkA55K2kXParC0Q3IDm5gzH1U/EyVatHYONapg72CVhr3jK1A5L7YdbxRru1aGEXzrQHMGeKarEFNris66b15sFYyPwnjCaxqdkkopKQiL1xC5S3n39Ju2eCUAuFMeT8O4NEFgr1bA3Qte6Pj5/nrcZDEbqdav/iOwqRed4nxv4WnCx7sUNNCtHV1XRKy9vNY4Xk2fQ3MHQHP53+D6yg4fK1FJjvu8lMPS5bVAAguM0IWcsZHpliMnlOStOMhtBNwdRqhAA+lViQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VBdyL/AyJNk4phdBoHz/1tsiiOPcw7nv5PkDOZTXrYo=;
 b=I5IPrnshPkbztLJNltAEAt5yJLmzcvhNCaTM9xMMVT/r0kmkljEY3fPXD1TaECrZMHAE3k7JZatJCgKrFKDpuSgeceqoHDALB6bVM3hB64oquuYbQNhC9NNyySTNGUd74gbdSo31xJ1aRE3Y3oGSLktdfkoY96NrtKslPZ2JORdk64wEfngRQdFdj6Iakqh2H3lMPb2npkKR8O6aW+bKKi4tDoN4Oitaew3MyrHB2Mjarnqj4TxK8B2VMXwJ3x2pQAcbQhJlcy6fi93QEG8JhfUn9QMkWiCtFllElCpllLKLo2mPOLyzbYi4Xum8IIun+TPEWHVyrPOEN6XOFH0Zqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB6371.namprd11.prod.outlook.com (2603:10b6:208:3ad::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Thu, 16 Nov
 2023 08:59:01 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7002.015; Thu, 16 Nov 2023
 08:59:01 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/mtl: Use int for entry setup frames
Thread-Index: AQHaFhXtV4piplU910qpDYyj1bUr87B78Y4AgAC4bYA=
Date: Thu, 16 Nov 2023 08:59:01 +0000
Message-ID: <MW4PR11MB70547CC923E9FAC2929AD580EFB0A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231113093737.358137-1-mika.kahola@intel.com>
 <ZVU_BMGQwjdTIaqc@intel.com>
In-Reply-To: <ZVU_BMGQwjdTIaqc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB6371:EE_
x-ms-office365-filtering-correlation-id: ba415d5e-66e5-45aa-d161-08dbe6824725
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pBT9/9uR6ciULqS9l81pc8UvsdPzxeQeEcb8gf/vzw0Jp6bMsOn3TwQL0yFtRoSZXgLiFNPhHb/dAmGlRLtBH4zs2WV/zSYpKjHUN2sOtQOllNTOKK3r9llKq0+XdlCWvFEZ+bCBpGP/zB4vh1E4gXtrUn3gLAqc1KXmlMRfI7da1C/AIJ/wA9nAU/iDSEyxmBVQj5SeAZ060mNZveRQBjfY9bfxyAFieFIaJMgXrL5Qmbv4fx3x73Rl7d/N7EClWLxiewcZx1bV7xZ8mdb4QFjFjngSJzeKtuiWLntVRh0w4QZD2BMvezGMuOyPtRxad3rGLJOXRGYLxLftSxbm099AwTT5S/36WSPbdv0vZh522TPSwN8hVui+C3kvs9Lh+eA11uPcWXYyIetkXTb599yQ8ISBxOs8jlU57tWJ+J7vNEAxaA4l4y07mzzmMSj3v9nBMUMGHEpG228tnoqAOdYwS9EUEbp7HUzZwsbrfp0ey8DeF7PLWNrT8eVH1LPidZUjQmK01tvQY6QBDf4a9zNkQIzwZBdYrDHMMIdT8Cbfy3dJaGgYVxYwoMp3e+FDd900PHdFvw8tbwnLX/MGSpVreCSx5tUQM9yBakBgRZvDqBviIQu6eCUivVPmSkih
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(396003)(136003)(39860400002)(376002)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(64756008)(71200400001)(2906002)(478600001)(53546011)(6506007)(7696005)(66446008)(66556008)(5660300002)(66946007)(66476007)(86362001)(54906003)(76116006)(316002)(6916009)(55016003)(41300700001)(83380400001)(122000001)(52536014)(33656002)(38100700002)(9686003)(38070700009)(4326008)(26005)(8936002)(8676002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXdkL3kyUHE5b2xUN3F6QXFSTWtWa0hSQWw2YUt1Zzk2V0pzTzVaZzI4QTlE?=
 =?utf-8?B?K2ZaTWFKc1NrYnp5Yk1EUThWTG5GYkxXZnAzL3czZCsvQVR3RXpWaUtMTFdG?=
 =?utf-8?B?RC91dmxBVDlIUituUGhsb3BmeEt6ZWIrU2haK1BZR3F0czNiZ0FkcmZSMGZW?=
 =?utf-8?B?Zll6SkZITmpXQjUxS2hyNjJnVUEzYlpLNGw2ZW5Sck92dnZiS0ZsMDJZdnZE?=
 =?utf-8?B?blRXQ2paS25kNEpBTzV5VHZZRzBrS05FYzJ3MG5OZGk0Z2dDWm94V1JBVW1a?=
 =?utf-8?B?blRnaFJCY0R0L2drdEM5ZVRnZjRoVFVFazhpdGo2M1RpcVFxd3BHZTRKSG1C?=
 =?utf-8?B?S3ZVU01XYlpwOG5lcUVtdEZqempYNXR0YTJ2YVdBMGNMUEQ4U0ppSWRGSXFq?=
 =?utf-8?B?V0srTmdXNm5aSzQ2L3ZySGRhZGwxUytkNk5SN0lQdEo5OGhSaG5EMDBUbTU3?=
 =?utf-8?B?NzRhWGYvOEtkRHlBMEIybUpCeE5jc2cxSVhMWDhwTEVXNlZSMEZBU2JyY1di?=
 =?utf-8?B?MExVNVVhNWY4MTdMRkdQYTA5azRkT0hjMGd2TVhQa2E4alY3UjNRMFVKOCt1?=
 =?utf-8?B?SzFqNlNmNUQyTVpKSzFwOU9BMEtiRW02U1NwRk95M3dxaDlPdklkTmMxamVj?=
 =?utf-8?B?OW9RK0Q4Yi8weGtCellVVFQ1ejVweWx6Vm0rd3JYdDBFL1gwdHBiMlJFK0hs?=
 =?utf-8?B?Ujc5SVZkUmdTMmFKazc1aVRrZjZGbzRrSVlIVU1GSlhXU0tvS2NVRkZJa2Yx?=
 =?utf-8?B?YkJ0SVhVdzJVL3I0VUh6RnhVWnRvT0JJZUswY0JoUFBaT0hSdXVWQXhvTWRx?=
 =?utf-8?B?NDhEaHFZOHNDbVRVYlNpL1dJMzIxV202c1VyMFIwMGRqNjUwakRML2hNRE9o?=
 =?utf-8?B?VEUzWHJUSUI1YkEwNUY0Z0J6RUZNZWN2dVloV1ZsTlM4RjU4OUp1NlVkNlBv?=
 =?utf-8?B?S2JFbG5uZTcycjZ0d3NzYnFFTUtoeDlWTXVhTWxRa3prQXpLYURKTjQrWGQv?=
 =?utf-8?B?aWRRWFl0c3ZqUEZ3UUQvV25KK0IzKzVkNHViQ21xRlVEUzdKS0NMa2FYY1pY?=
 =?utf-8?B?WUFacDZ2TlEwNXpHd042MUJWcFMyd29hRmE1cGhqVjgyemc2N1ord3hBQlNS?=
 =?utf-8?B?Mks0Z1RrZWVuY3dkVmtlRWd3dStSOXBZT09mRERpb2FFUTJUNjNVNktIMDBC?=
 =?utf-8?B?aFN4RWY4WFNFc00wTnA5MG9kcTFweUJIY0tsVzdBNy9XbFlWbzZnS0FON1J6?=
 =?utf-8?B?M2QvSERCazRzejJtQ0JTR2pTVTB6a0RkSy91b0FnSEx4eGVSOStjQWNaazU2?=
 =?utf-8?B?UEpEM1ZwODh3TTlNMnRlbFJySGZhcnNpWlhUZGhHZWR2N3pCa2VyZkFhS2Jn?=
 =?utf-8?B?TUtzNHh3dHRJb0JKSWw1R3dHVFRhdGozSmpNdUlIM0J3dWlHOUt2cUxqUVpS?=
 =?utf-8?B?b2RzelZYTk8yUStpTFZhdU5heURvQkRjRU9GY0N0U3BTLytyRDg3VXI3Njkz?=
 =?utf-8?B?WFRTcUFhY3RmT0NpWHd1QzQ5OE03czhQeE8zSXpJSHlKMk14cDJUc1NTYndu?=
 =?utf-8?B?VHB0UkZxdmFKYVlxL3NhYndiM3I1Mkt6N0w4TENhQWUwcnVKNlFIQjFQSXhx?=
 =?utf-8?B?NjVONDVuZkY2Kzl2ZmJpODVOai96MlRFMmNaNENYbFdjeXp3QlVOSEdqcnVm?=
 =?utf-8?B?aGJGS2FXNUJDVFp2dEw4N0J0OE9DbmRYY1dlTklCbjA5VVhZVDVMeVFFTmVh?=
 =?utf-8?B?OXEycVloeGFPbitSWEh6ZGNEYkcxc0I1RHNVTngvUCtlTmk5Tm1FSFVIQzVB?=
 =?utf-8?B?elorNTJaNWJLTGVOTVJJY0RUaU1aZC8vTHlDaDhEdEZxd3RFb1k0N0d6N3dx?=
 =?utf-8?B?U3crbnh0d3dYT0hCZE5lc3Q2anZvS0xSNE9GZGQxNnp0eSsyUHRGOVlwcDM0?=
 =?utf-8?B?d3R3Y2JZSFkrNlpRUmFGTkhzY2dqWTBxZzNGTGVzbHRWejdpalR4YVpBNEhL?=
 =?utf-8?B?eGZRd1NsVmRtNFpEanMzVmRlWWRIN2srYVB1Y1c5eHJFSzl3UG1XQzNubW95?=
 =?utf-8?B?TEI3TkYwcjlJQVQ2ZnFmUEtZeW0vZWpuVXY2dVg1V3FIWEhwdnRmTmRYdkho?=
 =?utf-8?Q?rruk46AtxVCsuILq7bGz4eMeY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba415d5e-66e5-45aa-d161-08dbe6824725
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 08:59:01.6674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 993E6zuLdPcv/vmv4jxIwot7Nay05SFpUyd2ydsAVYdl389pO71Th8PMvCjlzQ4NbxHBkB55uPj/8cOc3c11Zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6371
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Use int for entry setup frames
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVy
IDE1LCAyMDIzIDExOjU4IFBNDQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IEhvZ2FuZGVyLCBK
b3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBk
cm0vaTkxNS9tdGw6IFVzZSBpbnQgZm9yIGVudHJ5IHNldHVwIGZyYW1lcw0KPiANCj4gT24gTW9u
LCBOb3YgMTMsIDIwMjMgYXQgMTE6Mzc6MzdBTSArMDIwMCwgTWlrYSBLYWhvbGEgd3JvdGU6DQo+
ID4gQXQgbGVhc3Qgb25lIFRHTCBoYWQgcmVncmVzc2lvbiB3aGVuIHVzaW5nIHU4IHR5cGVzIGZv
ciBlbnRyeSBzZXR1cA0KPiA+IGZyYW1lcyBjYWxjdWxhdGlvbi4gU28sIGxldCdzIHN3aXRjaCB0
byB1c2UgaW50cyBpbnN0ZWFkLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYgKysrLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDM2OTFmODgyZTFjMC4uYTQ0
MTdlODVmOTJhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gQEAgLTEwOTMsMTIgKzEwOTMsMTIgQEAgc3RhdGljIGJvb2wgX2NvbXB1dGVf
cHNyMl93YWtlX3RpbWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gIAlyZXR1cm4g
dHJ1ZTsNCj4gPiAgfQ0KPiA+DQo+ID4gLXN0YXRpYyB1OCBpbnRlbF9wc3JfZW50cnlfc2V0dXBf
ZnJhbWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gLQkJCQkgICAgICAgY29uc3Qg
c3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUpDQo+ID4gK3N0YXRpYyBpbnQg
aW50ZWxfcHNyX2VudHJ5X3NldHVwX2ZyYW1lcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiA+ICsJCQkJCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlKQ0K
PiA+ICB7DQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUo
aW50ZWxfZHApOw0KPiA+ICAJaW50IHBzcl9zZXR1cF90aW1lID0gZHJtX2RwX3Bzcl9zZXR1cF90
aW1lKGludGVsX2RwLT5wc3JfZHBjZCk7DQo+ID4gLQl1OCBlbnRyeV9zZXR1cF9mcmFtZXMgPSAw
Ow0KPiA+ICsJaW50IGVudHJ5X3NldHVwX2ZyYW1lcyA9IDA7DQo+IA0KPiBZb3UgZGlkbid0IGNo
YW5nZSB0aGUgb3RoZXIgb25lIGluIF9wc3JfY29tcHV0ZV9jb25maWcoKSBzbyB0aGlzIHN0aWxs
IGxvb2tzIGJyb2tlbiB0byBtZS4NCg0KSW5kZWVkLCBJIG1pc3NlZCB0aGF0IG9uZS4gVGhhbmtz
IGZvciBzcG90dGluZyENCg0KLU1pa2EtDQo+IA0KPiA+DQo+ID4gIAlpZiAocHNyX3NldHVwX3Rp
bWUgPCAwKSB7DQo+ID4gIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gPiAtLQ0KPiA+IDIu
MzQuMQ0KPiANCj4gLS0NCj4gVmlsbGUgU3lyasOkbMOkDQo+IEludGVsDQo=
