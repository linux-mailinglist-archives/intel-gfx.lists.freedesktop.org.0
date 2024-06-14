Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3C9908FEF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 18:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D5C10EDD1;
	Fri, 14 Jun 2024 16:18:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGy3ybAP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9680A10EDD1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718381897; x=1749917897;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VrSHn3QsZIQCtmeYbcUjIaPYPPugIW5rxrfQGoCCO4M=;
 b=hGy3ybAPCHhBu1VZenSng5p5ba+1ugzjxlbDkjqgUB8fx93ArkCRBCMu
 nlgVtMkpvE9pdl3gUtuAOiSvx47gfSrp6eotA9ndhUdoTO9gqz1APaPB0
 qooYrmGoFuAxfTUsxEDG7yKpyzy1gNzX5ZvrHVtDUoYsRwKas2xeERQuO
 GygOLmj/vWN8lCO0kw1yiDS/6yjyRRpgIC1LAXu0xerc7WqAOfvkljcRw
 nloBk3Zr/9BD1JM8zZlg5w5V3pVMO/iiJrJrHklIuENQs9T7UpZKChmJw
 CrGjKVY5TRf9AckF43OOiU303d8NhCii7fyb0f8R575a32ABE4u/xg7ou w==;
X-CSE-ConnectionGUID: 6GBi/y5hQzS5Lf+H2tOY7w==
X-CSE-MsgGUID: XI6TaGjpQXe/R/67NYIEXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="15110535"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="15110535"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 09:18:17 -0700
X-CSE-ConnectionGUID: xS1sx+uCSVadQ8jDiPLRJA==
X-CSE-MsgGUID: zIAP42X/QImd+q+q2ZCJMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="40464290"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 09:18:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 09:18:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 09:18:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 09:18:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bXEr6r211AEKFUUJg3Ca9yJL18RDzWsVb/x0epY8tztPwjB4bJ049FBBvt+7DkVJejjG9B58ibCT1Oj//dYUXOE8Xkat8KTBGD2G45z+ji/cuk2aNW3HrPUWMhsQLfhwiuRw9Bhi2EiM9GwCAWsFtP++L6+AYOKpIo9IlAlR+vg29gllFw3KKKhcjHrc/Rp+JycN2kw1AV2zJkJT5n1lnzvRvNubtAudrBiNMfea1dTLBKonQjgDrn7swWK0OEAZWC8LD41q8I9PFtU4C8Glh4ddzsZKQGQ00ckgcrVXd3d8vdmdyB3H8O8tDKb3IbnG//ZUtoTM+B12Agrdjhj01Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VrSHn3QsZIQCtmeYbcUjIaPYPPugIW5rxrfQGoCCO4M=;
 b=JHAfZcnlADTAY0GAp6cf4oD2cIpXKMrzKBLjJv/DLiy3Hw6uej/BpxeWrcYx5BBvwLA4SOdKuFS1kZqazqeKGuUZb9S3SLX9RWK4V5Dd5QuhGQkDN+mejcP6uC6b59ud94JjZrjhN2zmIIfkR+pY26XMMhtNr4Ig4DKlE8SAybXHl+T1MJ88FeIR0WmTAhGc8heXwSFUsomTgA0OANJiMPxJALzWIMoA6vs+boWr3neImcEKrES7cgPQZgogYPwMwIOwQj8lyIx5LJqCQ+Q4fY3bIDifbCmYfjJ+u+R06t2e22S564j4KX+i2+8MYnaAIaWyjb9u3RNDu/EkYSzexA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB8474.namprd11.prod.outlook.com (2603:10b6:806:3ac::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 16:18:05 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 16:18:05 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v8 03/20] drm/i915/alpm: Fix port clock usage in AUX Less
 wake time calculation
Thread-Topic: [PATCH v8 03/20] drm/i915/alpm: Fix port clock usage in AUX Less
 wake time calculation
Thread-Index: AQHavXS12vgQ0X4hUE6h8YTgAkWUBbHHccrQ
Date: Fri, 14 Jun 2024 16:18:05 +0000
Message-ID: <PH7PR11MB5981E584FD0B0731E4F187E8F9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-4-jouni.hogander@intel.com>
In-Reply-To: <20240613093239.1293629-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB8474:EE_
x-ms-office365-filtering-correlation-id: 2491fc52-5eac-4c8b-e4a8-08dc8c8d92ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|376011|1800799021|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?OS9rRnJyWSs3V1U2L2lGVXNIMzQ0RlNVOXYxL3F5MEYvUCtHK1ErL2xGOFBh?=
 =?utf-8?B?dzFIc1pMQTM5QXI2N0sydHBsaHRRWnZuenBVV2lqSERHOU0yNW1hcE16c255?=
 =?utf-8?B?Vk1LTjdxVUgzWlpDRmowU2tCVkN1dGFqU1BXbndhVW8xanVXcUx3MUdWcXFM?=
 =?utf-8?B?NDBKajQycnVtY2lseE90OGxvbnpqb2c2SmVBSE9yL2hEOVZiSS94NytUME9Z?=
 =?utf-8?B?T0VDKzdhNW9valdPMnJyVXAwVjhsUE02dktSalNUUUF3MGVlNGZJYVA3ZzdM?=
 =?utf-8?B?Ty9uSmZnUFJMNEtQdjBTa2dCYTBlb3VacWtqNmlVVlZ1MzE0ZWtSbUM5OGJH?=
 =?utf-8?B?UWJCNWg1bFhTM2lYalpXcTVBbVU0TE45M1Zic3JlZVUyeFcyWjZyZkFKSWwx?=
 =?utf-8?B?b1B4TTh1anFnR04wRnBMV2tNaHdlT3RrRFp2ZUZoWkt5L1czSWwyL1d4OUJN?=
 =?utf-8?B?eDMwSUJyUjJidzFaNzFoOXdFMUhLWFVVMlAzL28zdUJENERBbkIwNUN4c2o2?=
 =?utf-8?B?c1YxRkZxeXY2R3pueGMwdTBFcURzdGQyY2hET2thOElwdnhvZVY1dnRad3NL?=
 =?utf-8?B?Q05wNHNMTmxiL0VLd2JyTWF3UnpiNnlOeWlTaU9aNjZGaUJOWXBXQURiVXpD?=
 =?utf-8?B?K1JZSzVXOVZBRjU3RGRXVitsU2srVE5odjcxM1hOYjIwSDg5dFlma1VHa21W?=
 =?utf-8?B?N2VRUXlzVWptMjVXQjBxUlVoQktMU3VGUFRyVHRremhqSTJra1JWajZzQkNw?=
 =?utf-8?B?bElsVDdVSzVYbGpvS0JXOGUyQlRkZEFhZHhjYm50UDhIWituUEpVQXZyMUpx?=
 =?utf-8?B?U3p2L3RTWm4zdXhVVG5xSXByN21tRkpjRkwrVGt0WGU5RzlseGIvdWRnUDlk?=
 =?utf-8?B?NUk5bkxRU01RVXJmTzdKWnoyMTdBTnV2S3FYbFFPZTh6eFFqUGJBVEYyS1RO?=
 =?utf-8?B?RU1USUlhOTlyRE9ZeW5IMGZmSlVSSEo3QWNPNGJiMWpEME5SZCt4Q25FTmVx?=
 =?utf-8?B?cDBkUitwbXhUN3p0UDh4d2JOZGFDYXdqUWhqUHRoSm1ncUpRejZkcmdIZjRv?=
 =?utf-8?B?MGZVZ1ZQNy9MSi9aUk56T3FUdnRZZmdGbDN3UWQxWWZUS0FKK3BNSGtUSmpZ?=
 =?utf-8?B?MTJ3REVQUmVITmZleDNjVG5EWjdpb096cmFVS0tZbGE4dmZwOXV6clh2ekdM?=
 =?utf-8?B?TnB3ZVlGaDN3WHBZR2srSXYwTDA1MXZ3bnowVHh2Ui93NU1WQVEzV0VEWVd6?=
 =?utf-8?B?WENweXBQYW9pM2pnNWp0VGpYV3VZMmxOSWZFc1RZUUdjZzNaa1Rndk5qSndQ?=
 =?utf-8?B?N2RKQSt4ekQ4cjRtSm5jOUxRWTBzd3I3MDZCMENLanJrdTZSUGFibUxlRnJY?=
 =?utf-8?B?YTk1cVBDM05laTJheU51bFhFQmJGRWtNZlk1S0tBaFFZN0tRM2J6VisvcXBO?=
 =?utf-8?B?UGFEZTd5SGJ4STN3NG9odjB1VzhhckwvcGlHbFY4RVhzU2o3blVQeStUanJI?=
 =?utf-8?B?a0oyQU5aT1Vqa2xOTXlMQ2FGQVM1Vmp6cnFHYkxKVis4NjR6a2hPdFArRW5h?=
 =?utf-8?B?TmdRTTNDTnl2QUVPT3phTXl3OGk2MXJnejUvTnBldUJLUnVyeDk4dzEzamJu?=
 =?utf-8?B?V3g4dGdYanppd25SWjBoNGhyR2R5YjdTaG1iczJ1d2xJNEROd2tKV0o3bFQw?=
 =?utf-8?B?emlFdGZiNFFJeU04UXYwZnFqN0Y2cDh2RHBNWHpXd0hnRWxmZjR2ZUY3Mmdi?=
 =?utf-8?B?THgvUTFURFV5UmZPWTJGNHJJR1dVQklUMGlSZU1wQ21TRnR1dy96MVFpdEpP?=
 =?utf-8?Q?vWvsPc2KO4UNl1+ezeIGyMKu85Ecmjxm1qTK0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWpRZnVGckkzdUVTeTg0SGtoM1k3TWVLeHZLYW56YzFncHJSeFlFajhudlBY?=
 =?utf-8?B?TE9lSEkyTzZ6YUJ6UVFHYk8wQnJXOWZRV0NHbG1XZitGRm9vMUNSSjVTS21H?=
 =?utf-8?B?MHJPbUs3cFdKdEZmMmdFWC9INmp1ZUhRV2I2VE41VHd0L2paMnZWN1d6Z2dK?=
 =?utf-8?B?S05OVW1TOHAvM0h2QWlEVjRDSXBSVHhhUlllUVJ5UUZIRkZTbWVJNjVqa0d4?=
 =?utf-8?B?VWQraE1RbmJIU1N0S1BZK0d4TDJKNHBGeFk0cHpVS3pkM1lYRjVtZ0V6ZXRz?=
 =?utf-8?B?VmJwREh5TUFRT29DSmltUmo0aHppVkhiTlJCK3doWFBBMlEvVm95dVI0bmFS?=
 =?utf-8?B?MytWVjdGNHM1NWs3WTVFclVBUzQ0WGgvSmMzd0JMd2xLSnk1SlZsL1NUTlIz?=
 =?utf-8?B?am5aZDJOMjdXMWQyaFhCRHlpcGxSUVNrTkxmY0MydHJ3TjFnajFJNmRwZDha?=
 =?utf-8?B?cTYzYVRSRmJPRW5UT3lRK0hYaDdNMkVyN2lJTWZocGd5SXBnZExvcXhUaEpK?=
 =?utf-8?B?UUZKRTNrOW1hMVUxSDZaWFg4b3U0VUgrb09ja0ZYRnZ6TmZJQ1BsYlIvOUw0?=
 =?utf-8?B?RTVWYnY1Rm0vNVVRV1g2a3c4Y005L2NYKzJhUmlvby9ET1JWNy9yeE5KZ1Nm?=
 =?utf-8?B?dElXT1RUb25Qc05rOGVWeDNWQ2h4YVhuMVFleWZ5SGVnMXozaDViVEFJcEdF?=
 =?utf-8?B?d0xMMUVWWFN5V3FMWnc3eDVlMHlUQ0dVVHBhcklubGQyWFBFOU13WXdQMlZ3?=
 =?utf-8?B?dTYxSTQ1SHQxZzRTWHc3clRvNHhUM1BWQ21Md3RMei9lRXQwY3F4Sy85cnFB?=
 =?utf-8?B?ZW4xbmdqNXlFZHFlYlgwdjRhNlZjQkFqaCswcmxXK1krWGdKU0h2NlN4ZklO?=
 =?utf-8?B?KzVYejduOFhrME9jU0NlZ3dIZnpSaWtyOFpqYXh3UzlLTXV5OGFsV2tBSmtl?=
 =?utf-8?B?QllmZnBzMzVQZTlRSURVZ2JSNkVXaFcyeVlkdHFSSjFLN2dQcm1aek5IUlR0?=
 =?utf-8?B?eGtlYUpBWm9yTVNKd3pVTmdZK08zY29KbXMrbDlxY2hQMytXZkcwSWlidE4r?=
 =?utf-8?B?M2JLckhqSTRBVkQ1Y21LVVJlT3U4eXd2dDM0UHhzZkViOGo0MHJUSVRqUTQ0?=
 =?utf-8?B?QUNrbXhLR0JZUW1XT3JWb2lLMTcvZlZOeFJ5QmpNb0dSdkhCNGZIbTVmTXVI?=
 =?utf-8?B?SVNReVlvVTB1WHZ0R1ZsQ015SHVxbXpGamlvTUxGZ0huMHlQNFdOTmxTeGc1?=
 =?utf-8?B?ckRLWkNWc0RsS1VSczdncTZvVVVaWURQM1c3Wm8xbTBNQlc5WGJNVkhNOFNO?=
 =?utf-8?B?STR6bGVjQitjYjZEaWZqVnJUYk93YlZHeDEwMjBuZDl5WFBUQkhmQUloTklq?=
 =?utf-8?B?SmxSbUZrMGpOTXlVbnpvVlJQTFlLQllSLzJzd0pmY0JBdUtFQ2wvTTNOanZY?=
 =?utf-8?B?bW5PeDcreTNhS1A3SFlwam8zb3FaSnZ1ZkhidllkSkQwR2U5VUZXdFpFNGNw?=
 =?utf-8?B?SXQ4c2tya1ZnWDIzanlmbTRzcmlsWk1JY2ZDOFZQNUdnLzBtaXA0Y1R0TzVs?=
 =?utf-8?B?clV5TzFvQXY3bVRjalJETGFjYStxYlNROE5vRHpXSkQweWtUN05nS0RFWUJQ?=
 =?utf-8?B?NWZYK2t4NzBuOUtqSDJzcjlBZUVEL01tMmlNbG5kMEU3NGZmNklLSmRqYVlC?=
 =?utf-8?B?bWZYKzhHOGQwS0hMVVBvR1A0eFNwc21ITC8zcmllYTVtK1djZVdEaVlDRi9t?=
 =?utf-8?B?ZEMyK1puV29EWTNZeDNoMEY4bnVWbm91U3BXMm0yQ2FaUXJDQTdySzBIcUJz?=
 =?utf-8?B?ajJWYnZwM2d5MXp1ckMrSWZlNGEvYXYyK0lickVtSW03d1NiUmJWSHpnejVs?=
 =?utf-8?B?UlUwQzkxaUFLNlA1Z2VsbVVMQ1IvYUNJS3R2a1FyTCtkM2FLNUFNbnBkWHFz?=
 =?utf-8?B?UTB3OXI3WUg3UnhHNXE3THZqQTh0WExZTUgxNFNLWEIvWmkxTFdKNE1RbEhn?=
 =?utf-8?B?WW1nVGttNlFzNytKZnJtaThvUnhzQnRVL3d1V0Rrd3M5MUxVdTgweVBFZmNv?=
 =?utf-8?B?dmZ1Z01JS3BMYWwrS2tKWXpiemxlclM3SWE2eTdOTmlld1oyZDl1NnR3cWJ5?=
 =?utf-8?Q?lyEoEeado/80wOhHds9ajogfS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2491fc52-5eac-4c8b-e4a8-08dc8c8d92ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 16:18:05.8728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9PNWcAx/dK35pZRbv6bObWIx2w8x1GAimBHKEjEr/I0nXO3HVQwLK4enPSRVFqK7IgVtiI0cQgyKukvwCqrtZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8474
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEzLCAy
MDI0IDM6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAwMy8yMF0gZHJtL2k5MTUvYWxwbTog
Rml4IHBvcnQgY2xvY2sgdXNhZ2UgaW4gQVVYIExlc3MNCj4gd2FrZSB0aW1lIGNhbGN1bGF0aW9u
DQo+IA0KPiBQb3J0IGNsb2NrIGlzIGxpbmsgcmF0ZSBpbiAxMCBrYml0L3MgdW5pdHMuIFRha2Ug
dGhpcyBpbnRvIGFjY291bnQgd2hlbg0KPiBjYWxjdWxhdGluZyBBVVggTGVzcyB3YWtlIHRpbWUu
DQo+IA0KPiBGaXhlczogZGE2YTk4MzZhYzA5ICgiZHJtL2k5MTUvcHNyOiBDYWxjdWxhdGUgYXV4
IGxlc3Mgd2FrZSB0aW1lIikNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5jIHwgMyArKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IGluZGV4IDkwMDcyZjZlM2EzMy4uNjc4NDhmYzFlMjRkIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtMTI1
LDcgKzEyNSw4IEBAIHN0YXRpYyBpbnQgX2xubF9jb21wdXRlX2F1eF9sZXNzX3dha2VfdGltZShp
bnQNCj4gcG9ydF9jbG9jaykNCj4gIAlpbnQgdHNpbGVuY2VfbWF4ID0gMTgwOw0KPiAgCWludCB0
MSA9IDUwICogMTAwMDsNCj4gIAlpbnQgdHBzNCA9IDI1MjsNCj4gLQlpbnQgdG1sX3BoeV9sb2Nr
ID0gMTAwMCAqIDEwMDAgKiB0cHM0ICogMTAgLyBwb3J0X2Nsb2NrOw0KPiArCS8qIHBvcnRfY2xv
Y2sgaXMgbGluayByYXRlIGluIDEwa2JpdC9zIHVuaXRzICovDQo+ICsJaW50IHRtbF9waHlfbG9j
ayA9IDEwMDAgKiAxMDAwICogdHBzNCAvIHBvcnRfY2xvY2s7DQo+ICAJaW50IG51bV9tbF9waHlf
bG9jayA9IDcgKyBESVZfUk9VTkRfVVAoNjUwMCwgdG1sX3BoeV9sb2NrKSArIDE7DQo+ICAJaW50
IHQyID0gbnVtX21sX3BoeV9sb2NrICogdG1sX3BoeV9sb2NrOw0KPiAgCWludCB0Y2RzID0gMSAq
IHQyOw0KPiAtLQ0KPiAyLjM0LjENCg0K
