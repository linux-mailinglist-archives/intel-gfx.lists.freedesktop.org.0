Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E93A7F734
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 10:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D2510E0B0;
	Tue,  8 Apr 2025 08:01:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="daOoBMtE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7D6810E0B0;
 Tue,  8 Apr 2025 08:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744099291; x=1775635291;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kOcBMiknKqToRjMpH/4wzCddvVXt0CDkmdNCYLpdEcI=;
 b=daOoBMtE9FHSamAXNgCV/sMlMUBZtSKlYNTsE3V41L1wmn0GF8AP6D3t
 T9BPWw0QtdmoFBQCby0cGFhCz/vcdW8JeSwLVTrQ+g2pT3JWCRBR6v+8A
 zteaNlNdp1bVBByQF0UpsMRUVvjeMK0Z3mWIRbZ/Mtb34AEp4UcTUJ+mV
 opaLYkNPSbG3nRrjUI3HnTiVNWC3+GYsUACp85wXWqOtNBqZNbqs0qGno
 T+z4cpjUvLvhIYu5P09YLVvOFC1VNna3QjzdZY7wcdLOEnyMuD2UfRk+a
 WVprOZf/G/Vn8g3j0hLKzq51GbpShtLEhjll6BACNLf0YOLWis/O6atiC Q==;
X-CSE-ConnectionGUID: +qDOsyMVTaufCGipFIwqdA==
X-CSE-MsgGUID: Jgjxb2XpTzC6iTk5uQ7/kQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49174630"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="49174630"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 01:01:31 -0700
X-CSE-ConnectionGUID: y1J0FFbESLOo3vLvkV9ehg==
X-CSE-MsgGUID: m1GWZBp6QpWSP43+HBOnCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="128087837"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 01:01:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 01:01:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 01:01:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 01:01:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RY8TDk7ECMGV11Z0SwehYLpgIa2GZ2zu4ItpmIpFsYRfnP15miyGddAo6WcHZUz4gdvnQZhDXdxM6/7MW0J/u2LiI2oYUJXZv5dQbRmt9pzFx37HWFvRUdQb2FUYf+J/VAtlqD87w8dum8ba/hzOIAK3qPaFjideHhLqS39xURHxT03Im/ga5q2SrspblY5KYnpJTVIFP4jdqz+Zj9UQJxFgcnjDYbkxPnyTW1ohbtIO8SSQq2G6s5qmm+U8cXqA7goIX4EpniQDpUQOOfWKRge9kVih8mN0u7L6j708qKW/te6/ZMHyDesMvk5b3arRpSOQg4ZrPGLI7C3z8ld3pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kOcBMiknKqToRjMpH/4wzCddvVXt0CDkmdNCYLpdEcI=;
 b=EX7/quYjY1EnSgzqitwCMHPBAv1P9TgHJwLXQsPixKrp5h+hGjVzd/eOYVmdiLqn2k4adh4IaTnrV7hkudOCcNZVsVf/1gT6eQUMbKMdNsYLyP9uWTQPJerNQxAj/xboqzO832x11HfkZRx4C8F9rE9bwuKjpuhV8hdqs1u8wiimJHBSzxTS1tIguVkmWAxZX14Z+UOJQ6aK+VvBRjDa70LNuL5Odp2rPQEG/pd0mlZiypdRnpOI/trrwSTrPSlTF/LOE9ZpCGJ80ROmovTBcUwlujpaTwfBtuBlnpDMdQQ0RBxpFBoIZGocF3PDvo11CeQYESPZ9BYNJyLgP/1ofA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by SA1PR11MB6893.namprd11.prod.outlook.com (2603:10b6:806:2b4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.35; Tue, 8 Apr
 2025 08:01:25 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%5]) with mapi id 15.20.8606.029; Tue, 8 Apr 2025
 08:01:25 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v7 5/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v7 5/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbpH354KdM7qKQdECNpdziTBcdqLOZbfuAgAABwtA=
Date: Tue, 8 Apr 2025 08:01:25 +0000
Message-ID: <BL1PR11MB59793230CBFC30CEE5EFCCFBF9B52@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
 <20250403092825.484347-6-animesh.manna@intel.com>
 <f1269259cd440a03f0e7dc210d1fa76109c6fb85.camel@intel.com>
In-Reply-To: <f1269259cd440a03f0e7dc210d1fa76109c6fb85.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|SA1PR11MB6893:EE_
x-ms-office365-filtering-correlation-id: 9ea3e4ee-db5b-4ec5-a265-08dd76738f53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?WjlBTVBtYmFrTmhFbytsaEdlVWN4QUc3eXRHOTlzeXZKdWZPK29tcFFuazlW?=
 =?utf-8?B?TWkwNjAyKzg4bDdzbjJPNm1GdUZzT0NobVR5UFU2clc4TTR6dlRiNTVvb2hy?=
 =?utf-8?B?SGZIbWxFYmNpOWovK2tjRGhQbWVPcDdWV0pMMEt1dXd4S3ZpVVFlbktjR3Fi?=
 =?utf-8?B?RkhlbER3OXJUN3VaNEp6VHV6T1VFQUNMY3B1VmRreUdQb0UwV0xOdFpCNFJO?=
 =?utf-8?B?Z2lHS3RtQURQZ3RobWVjZXIyaFRNVmMyOU9vSTZFS2k4dGlPcHVhSjVjSUwr?=
 =?utf-8?B?cElHa2RQZ2JCM0R0SndSL2gxa2VPZWRQaFFTS0t5Qi9wNUJyRHF5cXIxUTg1?=
 =?utf-8?B?RTR5MmdYdnZvMHV2UEdpb0o3QkpDaEhrcExxUGNiWDZYeEprR3lqZHZrLzVO?=
 =?utf-8?B?UmNJSHIrK0JhVDdhWWl4bnJ2RkdCMGhITVJxSW5VZmJxdUFIQmN6VWFtNWhR?=
 =?utf-8?B?dHNMZWlvcnFSTlNvSEoxRldJK3FXMEcyRy9xS0syZnNNMzEwdlROMGhBVjJW?=
 =?utf-8?B?a1Q5ODJmTyt5Y2tSVndLQVFqRFkxeklrWTRBSEFCS1ZvNE9HdHBaQ1A5enVQ?=
 =?utf-8?B?QlJUNnJXVlVvK2kxNlRaanRQUDNYV1ZBaWdqN09Mb2UySXcyNWVWanJHWmdP?=
 =?utf-8?B?RW9QcjNrRnVsWXFRaDNjUjA2Mm1rT3pFamFhdGp1SjBvT3Z1TnRGWXRWTGRk?=
 =?utf-8?B?S0JuTWh4UUdwTTZFRVJodDd3cFl2TmFPNlEwVzFTT0VVRU5HTlZHSkhvWndh?=
 =?utf-8?B?Z3lBS2IycDE2NTA4bkZJYUF0RE1SdGxXc2l0aytRQ3ZpV0UwRFJoSXBIR1VV?=
 =?utf-8?B?aEhnNEVHaE1OcTJCbk9IVzVnN3RTV3JkMFNuZ3ArTTVNV3N5YnFDRUVNSmFE?=
 =?utf-8?B?WW5VNzhLQzhCZDU1eklyS1EyRm1sTVRtQUdGTmNCSEN5RW12NjVmeTFYd3VV?=
 =?utf-8?B?ck1mWnFCQUFNMElndjFpVnJ4czNPVXBXUlFqWlE5OThvbFU3KzA3czlhb3E5?=
 =?utf-8?B?dnBkZGZoOCs5ZzBzeVgzMEl3OUFKQW9XWUZDT3VpclQ3dk0zUUdma2IrcGdN?=
 =?utf-8?B?K090RUk3K3JuQzVUajQvYUdSZStBQjBmeU85b0lCd3c5eDVESUJUcHgydGxh?=
 =?utf-8?B?cjhvTDU2eHNpeTdCZzg5Rkxkcm1SOHFueU04alVzY042RVJFY1N2OUY5MHBi?=
 =?utf-8?B?bE5YZXVsdDBJeVR1OXg3cjNGSXY4djhrVGl6d01hNU4vUUlscmdLOEpRc0tE?=
 =?utf-8?B?Y1kyZ09rMnpJQzd0cHJqNGRMM0FTV1B5V3dvSVBXZms2cTRhellXaC9rZE1o?=
 =?utf-8?B?R21lUmZGcHoxaGVLd1A1U3BQZHFvNWg5THpua09tbWljbTFLajlISmIwN3ZR?=
 =?utf-8?B?a3pBTmhsQ2lDRnN2TUZxaE05Si9HRzcrdlNkWk9Cemh2bkFkSHhyU2Q2WkJ1?=
 =?utf-8?B?SkN5QVJ2d3BYT0NmZGlxN3FxRGFyWTJZdGVDVCtIa3FBYW5IQzdONHZJeHht?=
 =?utf-8?B?ajJISklsYzk3bWE1VGxkK3I3aVY5Ymc4RzBiSDFlNGhvKzlmcjBtdzRyVmVX?=
 =?utf-8?B?ZnA5dFIyZXF6MnZjdFdlN2JDUzZrNTJDRVZ2Y0Nxem0xcERMSXVoaG5mdU11?=
 =?utf-8?B?WkNxaURlcHh4Ukt6VWV0TnhoaXV5Rnh1RDRDaTJqK0I3emdTdjFjS2pPRTJ3?=
 =?utf-8?B?NnVua01lK1NkbHM3bUpZMmZSUnhZM2l4SVlGWDFLa2ZZeHJzakhBaHFncUVn?=
 =?utf-8?B?WDRVUXpLZHBZcHd0SUhncmw1c09ySWREaCs1aWdsYXpxR1h6OG9WdjdLdkxL?=
 =?utf-8?B?NC9LZUw5clFzUldyeVB5VFNuOHRjL0xmRmtLMXRNcWlEZ1ZqdkVwdWZ1dHZl?=
 =?utf-8?B?b1N1N2tNdjNaWjRRUWwray9TakVscnBxZVBqa2llbHNQbUNEQi9pREtSTHht?=
 =?utf-8?B?eTE3SDkzTmhXOHNNQzUyQVJieWdTQXYxT3RnRlh0VFh1UVkwQURRTmR2bnll?=
 =?utf-8?Q?Gr9SYmnlU2AQ7cf0zHEcoAc85Ewp/Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N24vOXYyMnVsSVRNWk9OVzdLSC81aUtLL0dWc0ZiVHpnYmw1L05BdDYydXl5?=
 =?utf-8?B?TnpVS2p6akxlWjl6S3ZTQWU0WWgrR21qckphbFFWQ3hBakp4K29DRjlMSmZt?=
 =?utf-8?B?WS9UWDN1QUpsR2tiYkQrSzZUTlFYL0J1elV0VURXd1FMT3hxa3NZbVdEekxT?=
 =?utf-8?B?a2lXcE1BU1RhQWpkZm53Z2h0OUt2NU1LbXlaTmU2bC9uRVNNUDAyUXZwaTFF?=
 =?utf-8?B?NExwend0TjNHTW9iSTZHaCtBRFVoWUNsSDZudEU4ekd6cG5xa0g5QUxpWGM2?=
 =?utf-8?B?ZW9zOWJ0Rlk4enduOVdlQjdsT1RrQ3duekRaOGpsc1o1ZEtyNGNxS2xaUGR6?=
 =?utf-8?B?cWlMaGRFYWN5Yll3YThxeVE0bFhaeThWazdPWFNaYnpjdXdMQkdnMXVsMjR1?=
 =?utf-8?B?OThLY291OWtXNEY4b3JTbktrbkZPTWU3L0RXV0R1d0JRQ3RxaTUyb25TaitK?=
 =?utf-8?B?eG1WWVZldUxYbE5QUDhtZEhPaE9yUXYwdVpMWGxOb0xLall5ZGpCbWNFNFZt?=
 =?utf-8?B?Vk9QdmUzcFkwdkwzYnNvL1lZVmxrWWtiTHp6Ty9VTERGVWh2ZnZzUzlXMXMz?=
 =?utf-8?B?YkVEM2dCazI0V1VPMUlndU9VMW5xY2g4M2lCM0RuNjNHQ3hKV1VaSjY4SHVJ?=
 =?utf-8?B?VlVldEVhRWR0Mlh4c1V0U3lwUjdYNTQyUFZ0aUJqZ0dJUy8wRHJyaVpFTDVi?=
 =?utf-8?B?d3huWWJXZ3pGbGFnbHh2WkFTSDZkbXY1Qnh3Vndrd3ZDN09tVjFRTmczQkE5?=
 =?utf-8?B?K3ltZC9wVFF6VDFYcmpoVlczU21jMnFxK1pmWGE0WU1LQmZzZ25HZGdvK3Fh?=
 =?utf-8?B?RVo4RlpaZEZaZnFsNEZqMDRoMGM0Q0lDOHVmVjFxanBjVTNBbndmMFdOazUr?=
 =?utf-8?B?RTk5a1NLRUo5TnhjdmpJci9nVVJqb01SalhPcFpiYVZwelBDcndXQnEwMS94?=
 =?utf-8?B?MlVLa1EvMTZ5dWFqNGlTZFZoQ2dTWVFVT3RyemptQURqNGhOZ0Zram9sc3RO?=
 =?utf-8?B?b1VNNEZYK1lCSC9uRVZiWU5VSi9MRk1GUnFiK1N4TDlUVVQ1R01OTW4zcEtz?=
 =?utf-8?B?c2ZzcUt6b2MxK0RXalVpaVl2WHd2ckFUYWlQbDlwUXFpM1NGbU9PVDF6dEVx?=
 =?utf-8?B?clBRd3dOVW9QRHNMbmlmUVFLTFdHZ0pib0VUOGQvLzBhdU82VjVDYWhvem9t?=
 =?utf-8?B?cEZ1amJmdThxWGxqbUtpZStiSnpMNzllN1hGNlRFYnNYSTlYcWNuaklLellC?=
 =?utf-8?B?bzQwRW9Vb0Q1dFRBNmNzaTUwdS83Mkk3MFJreWE5VHVEdzkyajBLSlVIY0lk?=
 =?utf-8?B?eFVPTDEwMjNCTVQvektNckszV1VIaU54YlJSNjRrcnlkTTdPaWY1Y285cmxI?=
 =?utf-8?B?M1Y2aVJzSU1GeDNBNTFBcTJrYWxzU3NqZyt3RHhWVU8zemdYZUhEdC9Ud0FT?=
 =?utf-8?B?MTRldXFJVjVSVWE5ZjluT0JLbC9HRHl3b2V4UE85aGZqcHl6VzNLbTBhUi9k?=
 =?utf-8?B?d0V0M2Q0OFhQdlJtYmo3SnFkVUtmWDJkSU1aUTBGQ1pNWitkaVZPSWdCNzVv?=
 =?utf-8?B?dU5rL1U1TGVZVHBNRzE1dUFLZjdESkxRTkJ4eHdmenBTazVuODdHajh4MXhh?=
 =?utf-8?B?NzVYaEh6eVRJVW1LeHRsa3NBcVpaWThxVVpKRmRWMUt0Y1BSUWRYbVpkdkJy?=
 =?utf-8?B?Z2F2TVIva1FEQTFyZzBKdlRKVmhCSjFYL2U3Y3U1dXdJOFN5WmxCRDFvVWh2?=
 =?utf-8?B?bTQ0VnBrL1ZqbWphNE5KMUxxK1NocmRDWHJIOCtHdlh4MG5SbzFSTGZKRjZ6?=
 =?utf-8?B?dDlFczZwbUhIcFNxbEhzTVh6Tmt5a3JXSE83QlkybVdadzJiUG83TytEREFD?=
 =?utf-8?B?U1oySUU0K0NlNDFqc3hMZG90aGkyVUVNMmNUUDJvSGRvc1NDa2pMTEtoWUdp?=
 =?utf-8?B?d1VtTVh2VTFQSjkxNXB4QnA5ay9IV1RQd0YyeUFNWmFqM254eDRBYTVxNDcx?=
 =?utf-8?B?SENzZUhoSC9RY2g5SkdJM0tJQ2ltQUlmQS9IS0dWWU1GVU12NEtsamxKU0Vw?=
 =?utf-8?B?MWRrRHBQcVVNang4WUp1S3ovbDk0cHRtNjJnZmwwcGdhZFBMbWdkbHZWdVAr?=
 =?utf-8?Q?EVUWJscXfvN/d691B/uTtRwIm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea3e4ee-db5b-4ec5-a265-08dd76738f53
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 08:01:25.3859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 24H4Jt+/MCPwDnQrG8h8dp2SSBsPdGh8DN1pjxSz7Lq2RxOFGFS0G7SSoZOFCNNBQnfrxmuMoL+/FwZyO2k+Zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6893
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDgsIDIw
MjUgMToyNSBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwg
QW5pbWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IEIsIEplZXZhbiA8amVldmFuLmJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY3
IDUvOF0gZHJtL2k5MTUvbG9iZjogVXBkYXRlIGxvYmYgaWYgYW55IGNoYW5nZSBpbg0KPiBkZXBl
bmRlbnQgcGFyYW1ldGVycw0KPiANCj4gT24gVGh1LCAyMDI1LTA0LTAzIGF0IDE0OjU4ICswNTMw
LCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+IEZvciBldmVyeSBjb21taXQgdGhlIGRlcGVuZGVu
dCBjb25kaXRpb24gZm9yIExPQkYgaXMgY2hlY2tlZCBhbmQNCj4gPiBhY2NvcmRpbmdseSB1cGRh
dGUgaGFzX2xvYmYgZmxhZyB3aGljaCB3aWxsIGJlIHVzZWQgdG8gdXBkYXRlIHRoZQ0KPiA+IEFM
UE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQuDQo+ID4NCj4gPiB2MTogSW5pdGlhbCB2ZXJz
aW9uLg0KPiA+IHYyOiBBdm9pZCByZWFkaW5nIGgvdyByZWdpc3RlciB3aXRob3V0IGhhc19sb2Jm
IGNoZWNrLiBbSmFuaV0NCj4gPiB2MzogVXBkYXRlIExPQkYgaW4gcG9zdCBwbGFuZSB1cGRhdGUg
aW5zdGVhZCBvZiBzZXBhcmF0ZSBmdW5jdGlvbi4NCj4gPiBbSm91bmldDQo+ID4gdjQ6DQo+ID4g
LSBBZGQgbG9iZiBkaXNhYmxlIHByaW50LiBbSm91bmldDQo+ID4gLSBTaW1wbGlmeSBjb25kaXRp
b24gY2hlY2sgZm9yIGVuYWJsaW5nL2Rpc2FibGluZyBsb2JmLiBbSm91bmldDQo+ID4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4g
PiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwg
NyArKysrKystDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YWxwbS5jDQo+ID4gaW5kZXggYWFlMmMzMjJiYWE3Li43YWIyOWM1ZmVmMzggMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IEBAIC0zNjAs
NiArMzYwLDggQEAgc3RhdGljIHZvaWQgbG5sX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9k
cA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoAlpZiAoY3J0Y19zdGF0ZS0+aGFzX2xvYmYpIHsNCj4g
PiDCoAkJYWxwbV9jdGwgfD0gQUxQTV9DVExfTE9CRl9FTkFCTEU7DQo+ID4gwqAJCWRybV9kYmdf
a21zKGRpc3BsYXktPmRybSwgIkxpbmsgb2ZmIGJldHdlZW4gZnJhbWVzDQo+ID4gKExPQkYpIGVu
YWJsZWRcbiIpOw0KPiA+ICsJfSBlbHNlIHsNCj4gPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5k
cm0sICJMaW5rIG9mZiBiZXR3ZWVuIGZyYW1lcw0KPiA+IChMT0JGKSBkaXNhYmxlZFxuIik7DQo+
ID4gwqAJfQ0KPiA+DQo+ID4gwqAJYWxwbV9jdGwgfD0gQUxQTV9DVExfQUxQTV9FTlRSWV9DSEVD
SyhpbnRlbF9kcC0NCj4gPiA+YWxwbV9wYXJhbWV0ZXJzLmNoZWNrX2VudHJ5X2xpbmVzKTsNCj4g
PiBAQCAtMzgwLDkgKzM4MiwxMiBAQCB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUo
c3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAlzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiA+IMKgCWNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gPiDCoAkJaW50ZWxf
YXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gKwljb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiA+ICsJCWludGVsX2F0b21p
Y19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+IMKgCXN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyOw0KPiA+DQo+ID4gLQlpZiAoIWNydGNfc3RhdGUtPmhhc19sb2JmICYm
ICFjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiA+ICsJaWYgKCEoY3J0Y19zdGF0ZS0+aGFzX2xvYmYg
IT0gb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKSAmJg0KPiANCj4gSSB1c3VhbGx5IHN1cHBvcnQg
YXJ0aXN0aWMgZnJlZWRvbS4uLiBJIHRoaW5rIGhlcmUgeW91IHNob3VsZCByZWFsbHkgZG8NCj4g
DQo+IGNydGNfc3RhdGUtPmhhc19sb2JmID09IG9sZF9jcnRjX3N0YXRlLT5oYXNfbG9iZg0KDQpP
ay4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7ZnYW5k
ZXINCj4gDQo+IA0KPiA+ICsJwqDCoMKgICFjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiA+IMKgCQly
ZXR1cm47DQo+ID4NCj4gPiDCoAlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2soZGlzcGxheS0+
ZHJtLCBlbmNvZGVyLA0KDQo=
