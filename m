Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BADE886933
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 10:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1A6B10E1AE;
	Fri, 22 Mar 2024 09:28:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ak1ZAkCY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93AA310F1C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 09:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711099711; x=1742635711;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BHVCk60iM2KZ9qxw7nzUagPa0wh3hE+lrp1aZYqxevw=;
 b=Ak1ZAkCYSKOyib6RZUZNljuaFYTznadHs9PWd8I8GSzf+W/jG3fnzScX
 wu4GHxu8pc+yt5GE31GHPegDf6/UX3sbq63c5TVY/lwIdJs6NV8eQ5DXy
 4rueTrssI+ppRrn7AOXo5ZzfMkL8xZ1AYutH7uXF9GX1rx1ztP+WRR+Hf
 XdLBd2nVIhi1FzFDcXgPCrNbJplNFYpTN8OU9VD8GkG4TVULd3i0TUOMq
 ULdsUzYETr/gnUkD3QO4KpyrEJpgUj9OqEbmo1I58E7U3Eokox1G6TLnL
 HMrv57or87GmtFC2MNI/QAGGUZd1g5IR/v7VrhNo8sv/L6XrENH1WLkpn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="17533011"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="17533011"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 02:28:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="52272782"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Mar 2024 02:28:31 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Mar 2024 02:28:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Mar 2024 02:28:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Mar 2024 02:28:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JEE0iIY+TxFOO8Zr933zFgw897W+mbY1DLH11cLmKHo0WUtcueBUaIHsodWnDf9klP5sCXejZewc8Z6FzeSxOUu5Vf/G0SZdghqg25CRKqnNvHlYMO+87oosPsD7fJdmOzcneXDwFHG90pTz5D+M36QGTjpCvXaF0NJKwiMROvwh6KPGIaOL+arwWeV8MT6lo/glKGf06Q7LakMmENkeK0L2KFw5WDL0BMVMs6DaS1OA9UomyeBNKKXQcErEje8wWJU16DOa48UaYgAJ4BmMzSGeX4UU4SjyhJxQFhiZR029KkxEkFd99RYksaXWDy/RfiViTfAuAdyrj+xgEv4Edw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BHVCk60iM2KZ9qxw7nzUagPa0wh3hE+lrp1aZYqxevw=;
 b=QtF6VlwsextFhEQcEx3J+IjJawiCDAwW14kL4sTz1/Hr9mwEpGMjtSmlvIaUrNb4kQD6wIPkxUBRDZrxaqp1MMgNzDKt90qBDOGPB4MiTXYznlFTHqPA08AvMAuSN8WCCTrVykYn6ceTxCTxRK39dXRp4Jl8Jf9UEtyFTxmF0XbmLF4x/Qct1gkIPRsNVdHF/r7TDQHvVwzNksGDHDm0C9WuUi725doemmCTk2IvDgSdh5u7z3yxJLLgGbJT464/R7U3iqx7N6m7YjCo3t77IJg4HI7Jp3QPXMlX7U/RG9i66cig+3ezjZaf/eTp10CuAjGpDwWPeju9eWIhfSicuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Fri, 22 Mar
 2024 09:28:22 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7409.023; Fri, 22 Mar 2024
 09:28:22 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v4 4/5] drm/i915/psr: Enable ALPM for eDP Panel replay
Thread-Topic: [PATCH v4 4/5] drm/i915/psr: Enable ALPM for eDP Panel replay
Thread-Index: AQHadq8uhzL2LHBwwEyFfolDPd+LfrFDhz2Q
Date: Fri, 22 Mar 2024 09:28:22 +0000
Message-ID: <PH7PR11MB598113B548BED7E6489B24D4F9312@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240315080222.72838-1-jouni.hogander@intel.com>
 <20240315080222.72838-5-jouni.hogander@intel.com>
In-Reply-To: <20240315080222.72838-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: e9f21bd2-61e3-4614-c1f3-08dc4a526b55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VPB+K8hhXCP6bVs5DZw0qHrTiDwlvkuIvCnTB/I4PJlf9E7IawXqw1X8RMS54S7iGBHtUPoOvK/bWLak+GbKOL0f9tM6GcYdqAfnhATMPidj2pWeVDBxxkmcmmn+0VnGNfFgsWqR3tT+PlHjSSw1U7rFvLtAclYRPCEvBIrM0IrLyXdTYSATJqNFPK3+yzks9Ec/GwquSVns6rjIbCpmwhyfivH0W/hIhLPssI9gmHhrDZMImwtatYEzY/5BrQOjPmpyDCXpC/JIoJt5zL//Prbv2Y/+5ATIukU2sx3co3XaDsUEbF8PI10AraBFgDhwRu6bpI+wfFt6vGIuimPBScSTbJjzaUWzm6oe51jFYS1vTeT6Q114OhS/LSAjyiKxBYiyw7R3NTknyXJfq2wj677MnKuE4eW6/dkmnjsFgV58LtexdRH6BppE3wd9S5kQM++jVYRE0jncXDVdrrI0Ckr6jnaba/6R0taTQ4sUlKOkhloy+H8z/LxJBmKAhkw431f/Y1eLWRatzlBOFwnXlw3L6EL7yoFPczk1prvsaEqAVJFsUMbDm1W2pZ99LoseWMVTAm4SxeoDgdvPP3ek43KV2O4EhCsVxLBmGsAyodRpFwgB+PCrpj+p+OJDafXwDRYLDcruIHD7aS0YkqriC34Oy1IM/cW41OqBT5kUQZu4rC/4ySWI6zaDi8nDS9TkWHU8IbFH82vjf3LzJopG4IdgNvbwQXBSq48zsKY1Kec=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YkRGdEozaEx6YnR3NnQzS0hBMytZNHAzRTN3eUdSM05CcS9pK21PSEV1ck41?=
 =?utf-8?B?Y29pNTJmR2VtL3d2N21JOEtBUGduN3FiTk41bWpYaGNOeVM1UVFKUEpnTmpp?=
 =?utf-8?B?QlRheXRWQjNvRTEzMm1GVGhGaHZHS2lwYkRvTjhJdWViYkREWWVENk5hWjB4?=
 =?utf-8?B?cWRkM0tNb1A5V3JwRXZDeUNhT1BTekdhRW5ySEh3dnpTL2ZsMDVlb01ac0JL?=
 =?utf-8?B?alVEQlZXYnI5SWFkZDMvVGRUdFlud0lMOHV5cTBRazY5QSs5OW4vTHU2Rzh3?=
 =?utf-8?B?dE9LdWxrQVIrOXV2K0Rua3pTaklEcVdGQU1PcVZVVlN1T0UveERxb04wakNT?=
 =?utf-8?B?eTdIU3BLZ1RPVkZUZ3dsSkhRWlVFVVNDQzBGTXVzVWxueklYK3ZOMFZoMGlz?=
 =?utf-8?B?QzRYa0x2amc5MTlCVW9NbDF3aERXRnhMUk1Kb2swRHJ0cUFPN3FSSHpYdzlk?=
 =?utf-8?B?cUg3NmtZdjcyR1dOVE1yR1VWL2xKbDVPcFI0Wk56cUhPNjBEdkJlZmNzWity?=
 =?utf-8?B?MEptREs3a092VlZEVmxXYVdiTHJwa1p2YnRtbjcyOUd4STJLeGNxUDJRYnJ0?=
 =?utf-8?B?cFJ1MGFyOWl1MStsNHNqR2hudUJUMlpYemhKVXVCMThxd2E3YjA2WDFnZWR2?=
 =?utf-8?B?TnFhSEZndkNMekxVeENJenJGSFA1RFFkTUlHdFFXZWljVjM3bkUvVi9zZzhx?=
 =?utf-8?B?VlhLeXRqK2tOMFU3REdiSEpxSXZVRGFGY1M0MU5uL2NacHM5VllpV2l2RE13?=
 =?utf-8?B?cloyT1BYWmNPZlJZUFhPRGc0THVwbk9neC9MYVFVVmVQNDlSakluVDloNEky?=
 =?utf-8?B?ZkxiVXlYekg5OStWei9CZStYRk9lZXZpaENva3ZRUUpxb2Rjd2paMCtDbHNi?=
 =?utf-8?B?TGpOclVJdWxEdXBaV0VMYndlQktrSEpYKzBLMitQTDNoWHkzd3NCOUtLbFdY?=
 =?utf-8?B?UWVGSjFGT0RDeElieXVOd3ltVk5rMWRyUkU5SUUrbWFCUW9COFpOdFpvOHdr?=
 =?utf-8?B?NEx3YkM2RWM2UUlldEhZcjFzWGpuU01HSXhJb0ZpV2FETnlFNmVPZWlkcjRF?=
 =?utf-8?B?TVRxWlNPZ3dLMSs5T0tQRFRGWWJVK0Q5anZVWVFrVUJMN2RJZ2JURGxGVS8z?=
 =?utf-8?B?UW1iZnIrUWZLL1cyOGIzY1lzS21lajB5d0h2S1Z0ZmZpOXY5NTE2VjR6Vm1J?=
 =?utf-8?B?eDkzVm45amRlckdSWWlOTDZKaFpRb3pNakNFOEtFK1NpL1IvM2lJZ2RlS3Qx?=
 =?utf-8?B?UzRhMEpjdWhIa1Y1M2hKdjhmd2NoL2x5aFdCcVduZnU1NTA2S2oxYVpoMXBv?=
 =?utf-8?B?TFAvZUJ1dE5nMVkxcks0Wk80cHV5QndJL1A4RmhGZXFnRThCSCtSWHdlNkN3?=
 =?utf-8?B?Q21vY2ZJK0xMMUJ0ZDBOWm9GRlBweDR0Z1hNa1RwWnVLYytUYzlCZ3Z2NkFr?=
 =?utf-8?B?V0tUdGNIOFRYRWlZUUFPenI2aFd1SHI0bWJhY3IvVDFIOUxXOWNaZmhCaGxt?=
 =?utf-8?B?TGxhOEEzWm1hcXJWK0lUc2lVc285NWNBdG0vN3paZ1Z2NTNmZmNMRzlKajlP?=
 =?utf-8?B?SEdHdGM4clRHdWJjMEpKUEw1aUNyOUM5OW9PTXBJTUZHa1RuQTNIL3pSaHV0?=
 =?utf-8?B?YUt0VWR5YzNKVEZ5WTA1OHZJL0VpRGdGeDdTUlZZbVFtbzFFV0JVaVROUG1I?=
 =?utf-8?B?SXluSGUzeHVzTFRSUm9sc3hLUW1WU1hCRE95U0h4cXNwZ3h1QUsxK3g1bGlK?=
 =?utf-8?B?MnRUVjhvY0NmamZqbEhDcVFEME9SNVFJQWo0RFRHNmYwK1MvOG1JUkp5UVBC?=
 =?utf-8?B?RkppSk1SMWdOS1NuN2FRRVRwOVFPblIweTRVUzZpMElMQTF5ZFh5QzN4clc3?=
 =?utf-8?B?US8zQXpBeXVENkR0OXpJajVhVmVEVHh0YkN5K1BpM1Z6RVlKNmphamhUVVFu?=
 =?utf-8?B?Q29BcUVjUVVoRXlvM3FrTGh0SFJ0VHVJYUlXekxqbWw5NjdtbnF4R0wvaHlT?=
 =?utf-8?B?ZFpzZUV1ZWlSeXhNOC80ck1qcWNxVzdLYWJGZThtelc2UHpBVUZWL1NCU3Vr?=
 =?utf-8?B?QWVLdDlGZ3h2UGFsdTEzVmJ4bSsxZEhjRE0wRHVQZnpNalk3cXdacjkvM09u?=
 =?utf-8?Q?OPIUm8+neC8qg5Vwr6Bc6W2gH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9f21bd2-61e3-4614-c1f3-08dc4a526b55
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2024 09:28:22.7704 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tC9Ru0SgoM596AhLPuFX9afoJHOwsSmNkKU9IUyJgKYoNlzPW0hgEuf8ApkbrEYxpXBdTceLCVsDaIGyAiBXDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMTUsIDIw
MjQgMTozMiBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IE1hbm5hLCBB
bmltZXNoDQo+IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IE11cnRoeSwgQXJ1biBSIDxhcnVu
LnIubXVydGh5QGludGVsLmNvbT47DQo+IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgNC81XSBkcm0vaTkxNS9wc3I6IEVuYWJs
ZSBBTFBNIGZvciBlRFAgUGFuZWwgcmVwbGF5DQo+IA0KPiBFbmFibGUgQUxQTSBBVVgtTGVzcyBm
b3IgUGFuZWwgUmVwbGF5IGVEUC4gQWxzbyB3cml0ZSBhbGwgY2FsY3VsYXRlZCBBVVgtDQo+IExl
c3MgY29uZmlndXJhdGlvbiB2YWx1ZXMgYWNjb3JkaW5nbHkuDQo+IA0KPiBCc3BlYzogNzE0NzcN
Cj4gDQo+IHY0Og0KPiAgIC0gYWRkIGNvbW1lbnQgZXhwbGFpbmluZyB3aHkgQVVYIGxlc3MgaXMg
ZW5hYmxlZCBvbiBlRFAgcGFuZWwgcmVwbGF5DQo+ICAgICB3aXRob3V0IGFueSBleHRyYSBjaGVj
a3MNCj4gdjM6DQo+ICAgLSBkbyBub3QgdXNlIGFscG1fY3RsIGFzIHVuaW5pdGlhbGl6ZWQgdmFy
aWFibGUNCj4gdjI6DQo+ICAgLSBkbyBub3Qgc2V0IEFVWC1XYWtlIHJlbGF0ZWQgYml0cyBmb3Ig
QVVYLUxlc3MgY2FzZQ0KPiAgIC0gZHJvcCBzd2l0Y2ggdG8gYWN0aXZlIGxhdGVuY3kNCj4gICAt
IGFkZCBTTEVFUF9IT0xEX1RJTUVfNTBfU1lNQk9MUw0KPiAgIC0gYWRkIFBPUlRfQUxQTV9DVExf
TUFYX1BIWV9TV0lOR19IT0xEDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNDcgKysrKysrKysrKysrKysrKysrKysrKy0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA5NDI5YzUw
MDI5ODYuLjA1YjMwZGM2M2IzZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IEBAIC0xNzIxLDE0ICsxNzIxLDQzIEBAIHN0YXRpYyB2b2lkIGxubF9h
bHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiAgCWVu
dW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsN
Cj4gIAlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gKwl1MzIgYWxw
bV9jdGw7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAyMCkNCj4gIAkJcmV0
dXJuOw0KPiANCj4gLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgQUxQTV9DVEwoY3B1X3RyYW5z
Y29kZXIpLA0KPiAtCQkgICAgICAgQUxQTV9DVExfRVhURU5ERURfRkFTVF9XQUtFX0VOQUJMRSB8
DQo+IC0JCSAgICAgICBBTFBNX0NUTF9BTFBNX0VOVFJZX0NIRUNLKHBzci0NCj4gPmFscG1fcGFy
YW1ldGVycy5jaGVja19lbnRyeV9saW5lcykgfA0KPiAtCQkgICAgICAgQUxQTV9DVExfRVhURU5E
RURfRkFTVF9XQUtFX1RJTUUocHNyLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmZhc3Rfd2FrZV9saW5l
cykpOw0KPiArCS8qDQo+ICsJICogUGFuZWwgUmVwbGF5IG9uIGVEUCBpcyBhbHdheXMgdXNpbmcg
QUxQTSBhdXggbGVzcy4gSS5lLiBubyBuZWVkIHRvDQo+ICsJICogY2hlY2sgcGFuZWwgc3VwcG9y
dCBhdCB0aGlzIHBvaW50Lg0KPiArCSAqLw0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnBhbmVsX3Jl
cGxheV9lbmFibGVkICYmDQo+IGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpIHsNCj4gKwkJYWxw
bV9jdGwgPSBBTFBNX0NUTF9BTFBNX0VOQUJMRSB8DQo+ICsJCQlBTFBNX0NUTF9BTFBNX0FVWF9M
RVNTX0VOQUJMRSB8DQo+ICsNCj4gCUFMUE1fQ1RMX0FVWF9MRVNTX1NMRUVQX0hPTERfVElNRV81
MF9TWU1CT0xTOw0KPiArDQo+ICsJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQT1JUX0FMUE1f
Q1RMKGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJCSAgICAgICBQT1JUX0FMUE1fQ1RMX0FMUE1fQVVY
X0xFU1NfRU5BQkxFIHwNCj4gKwkJCSAgICAgICBQT1JUX0FMUE1fQ1RMX01BWF9QSFlfU1dJTkdf
U0VUVVAoMTUpIHwNCj4gKwkJCSAgICAgICBQT1JUX0FMUE1fQ1RMX01BWF9QSFlfU1dJTkdfSE9M
RCgwKSB8DQo+ICsJCQkgICAgICAgUE9SVF9BTFBNX0NUTF9TSUxFTkNFX1BFUklPRCgNCj4gKwkJ
CQkgICAgICAgcHNyLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLnNpbGVuY2VfcGVyaW9kX3N5bV9jbG9j
a3MpKTsNCj4gKw0KPiArCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwNCj4gUE9SVF9BTFBNX0xG
UFNfQ1RMKGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJCSAgICAgICBQT1JUX0FMUE1fTEZQU19DVExf
TEZQU19DWUNMRV9DT1VOVCgxMCkgfA0KPiArDQo+IFBPUlRfQUxQTV9MRlBTX0NUTF9MRlBTX0hB
TEZfQ1lDTEVfRFVSQVRJT04oDQo+ICsJCQkJICAgICAgIHBzci0NCj4gPmFscG1fcGFyYW1ldGVy
cy5sZnBzX2hhbGZfY3ljbGVfbnVtX29mX3N5bXMpIHwNCj4gKw0KPiBQT1JUX0FMUE1fTEZQU19D
VExfRklSU1RfTEZQU19IQUxGX0NZQ0xFX0RVUkFUSU9OKA0KPiArCQkJCSAgICAgICBwc3ItDQo+
ID5hbHBtX3BhcmFtZXRlcnMubGZwc19oYWxmX2N5Y2xlX251bV9vZl9zeW1zKSB8DQo+ICsNCj4g
UE9SVF9BTFBNX0xGUFNfQ1RMX0xBU1RfTEZQU19IQUxGX0NZQ0xFX0RVUkFUSU9OKA0KPiArCQkJ
CSAgICAgICBwc3ItDQo+ID5hbHBtX3BhcmFtZXRlcnMubGZwc19oYWxmX2N5Y2xlX251bV9vZl9z
eW1zKSk7DQo+ICsJfSBlbHNlIHsNCj4gKwkJYWxwbV9jdGwgPSBBTFBNX0NUTF9FWFRFTkRFRF9G
QVNUX1dBS0VfRU5BQkxFIHwNCj4gKwkJCUFMUE1fQ1RMX0VYVEVOREVEX0ZBU1RfV0FLRV9USU1F
KHBzci0NCj4gPmFscG1fcGFyYW1ldGVycy5mYXN0X3dha2VfbGluZXMpOw0KPiArCX0NCj4gKw0K
PiArCWFscG1fY3RsIHw9DQo+ICtBTFBNX0NUTF9BTFBNX0VOVFJZX0NIRUNLKHBzci0NCj4gPmFs
cG1fcGFyYW1ldGVycy5jaGVja19lbnRyeV9saW5lcyk7DQo+ICsNCj4gKwlpbnRlbF9kZV93cml0
ZShkZXZfcHJpdiwgQUxQTV9DVEwoY3B1X3RyYW5zY29kZXIpLCBhbHBtX2N0bCk7DQo+ICB9DQo+
IA0KPiAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwgQEAgLTE5OTksNg0KPiArMjAyOCwxNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9w
c3JfZGlzYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gDQo+ICAJaW50
ZWxfc25wc19waHlfdXBkYXRlX3Bzcl9wb3dlcl9zdGF0ZShkZXZfcHJpdiwgcGh5LCBmYWxzZSk7
DQo+IA0KPiArCS8qIFBhbmVsIFJlcGxheSBvbiBlRFAgaXMgYWx3YXlzIHVzaW5nIEFMUE0gYXV4
IGxlc3MuICovDQo+ICsJaWYgKGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYN
Cj4gaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgew0KPiArCQlpbnRlbF9kZV9ybXcoZGV2X3By
aXYsIEFMUE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJCSAgICAgQUxQTV9DVExfQUxQTV9F
TkFCTEUgfA0KPiArCQkJICAgICBBTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSwgMCk7DQo+
ICsNCj4gKwkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBQT1JUX0FMUE1fQ1RMKGNwdV90cmFuc2Nv
ZGVyKSwNCj4gKwkJCSAgICAgUE9SVF9BTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSwgMCk7
DQo+ICsJfQ0KDQpUaGlzIHBhdGNoIG9ubHkgZW5hYmxlIHNvdXJjZSBmb3IgYXV4LWxlc3MgYWxw
bS4gR29vZCB0byBtb2RpZnkgdGhlIGNvbW1pdCB0aXRsZSBtZW50aW9uaW5nIHRoZSBzYW1lIG9y
IGVsc2UgYSAnVE9ETzonIGNvbW1lbnQgY2FuIGJlIGFkZGVkIGlmIHNpbmsgc3VwcG9ydCBlbmFi
bGluZyBpcyBwbGFubmVkIGluIGEgc2VwYXJhdGUgcGF0Y2guDQoNClJlZ2FyZHMsDQpBbmltZXNo
DQo+ICsNCj4gIAkvKiBEaXNhYmxlIFBTUiBvbiBTaW5rICovDQo+ICAJZHJtX2RwX2RwY2Rfd3Jp
dGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRU5fQ0ZHLCAwKTsNCj4gDQo+IC0tDQo+IDIuMzQu
MQ0KDQo=
