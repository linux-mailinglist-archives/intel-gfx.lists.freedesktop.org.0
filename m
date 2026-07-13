Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U9psMvdgVWrdngAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 00:04:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A65CB74F6D7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 00:04:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=K9N0oAYn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C45CF10E676;
	Mon, 13 Jul 2026 22:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0816B10E676;
 Mon, 13 Jul 2026 22:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783980276; x=1815516276;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aTV9h+IffLVRcb5FLloQzXaj3FbcPyXxfsHuF7S3BT4=;
 b=K9N0oAYnZ9RWn4pPgoFS+6RjoXVY6MkjwUNctaI8tl39bMhnHefZoFFV
 jd8lWVwWyJ4PQeT+Xn5y8xKRWG1WFMRsHvpDkfXUYYY81581l8/UZTlTZ
 b1WsDFLd38cgaYoZGz5UyKVcb7Gakl/cxKxxgy9hj0E68J1OLM5wDsfZ0
 Y69CXtZVcN4SkAsSDkK8UuoBgq1aEVNXw/0qli9W6Z79Y1EjUffUokN6j
 z1uMIzOs4fizo/HwdsY8XQKQijQv/wcP5vEX7shZ/Olw4zvG7od2nKOMP
 09a92tDYeOKkVTXRmAjCwECccRKzPlEisMfNNSn+x1gHr14PWdYSc6sqI g==;
X-CSE-ConnectionGUID: yuDHyQuFTe6PdDkOjSzlrQ==
X-CSE-MsgGUID: l8OOyqKRTFO9cti4dtjEEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="102147495"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="102147495"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 15:04:35 -0700
X-CSE-ConnectionGUID: sC/NlhqTTCGRORpRZZFuWA==
X-CSE-MsgGUID: jRMof9rATSy1/m+sfzyLSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="280088563"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 15:04:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 15:04:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 15:04:34 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 15:04:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v/vErNrtU8Bfs3BTR4sKAZJcZw9NN0RdCwtQMzoXmRoCNtuyWIs00g4g3KZwvYwcz8YgmRJJLTLnta5P+4WibMfTDxugoU1DtJh4zIy+EeBVvRRwY7VYQEtMksrS910FKqEjNTeKu48AFt+mzDRcEjeN+jgf4Lbh1DgIGA0RRsjU4zNYBtI9etaRAv3dcS0VVrWP4XfPQbmcxorCIl4FaEI8+cXxb8JOaQmTXPn7E7vq3YWdO3ozy9jUsjNqRGr2XcYr5DKp0J9rbFZ/wIfMkhOceeb0dFPmHPl44pnkrvatFev4JQWhjI3Vm3sx2Cx/YaDK8nPTHDMc421tzdxMUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aTV9h+IffLVRcb5FLloQzXaj3FbcPyXxfsHuF7S3BT4=;
 b=LEt4PH/9Db1862OBkTPfwaBIiOIv8RCbrC/k5kHGtCEWT7qirKm9cQ2BeGfv0pkwlWgi0RKAP4p5ZTNlllRTUWYFFDW80CzhvyUVwmwCvpShFFa3c7qOlIsOowiWGExNhl8+L0jehWW5uOcjTLKMFjVei6iTLy4XXsvVGENaQkeHNwSqUVAVzyr55/y2XJGlg51B+hKPu/RGTcHhcF81BTrBRhZP03eM6pSkxTDn7tbzHto2Nox3jl8NsMZqDZYJ76PhmfzXpLmBI2k3jBQexugCkBU8B6kIfx8vtFJwSrdAdIeqxB6rDA8w0OONnc2Q8Ll++x+Kqf7gR3tcFfiN2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH3PPF9E162731D.namprd11.prod.outlook.com (2603:10b6:518:1::d3c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Mon, 13 Jul
 2026 22:04:31 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.014; Mon, 13 Jul 2026
 22:04:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 =?utf-8?B?SnVoYS1QZWtrYSBIZWlra2lsw6Q=?= <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] [RFC]: drm/i915/display: Fix NV12 ceiling division for
 bigjoiner case
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Fix NV12 ceiling division for
 bigjoiner case
Thread-Index: AQHc/0/q0R55Hl74nEWF8IRV8qvFj7Zb51CAgAAocwCAEBh34A==
Date: Mon, 13 Jul 2026 22:04:30 +0000
Message-ID: <DM4PR11MB6360F42B3679B2C630E08EB7F4FA2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260618181837.687302-1-vidya.srinivas@intel.com>
 <26ed323d-c0f5-42d4-b736-de7efcf893d7@gmail.com>
 <PH7PR11MB825216B25018B09F3D5D554789F42@PH7PR11MB8252.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB825216B25018B09F3D5D554789F42@PH7PR11MB8252.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH3PPF9E162731D:EE_
x-ms-office365-filtering-correlation-id: 38291ee8-4fe7-4cd5-d69b-08dee12ab6fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|6133799003|22082099003|4143699003|18002099003|11063799006|56012099006|38070700021;
x-microsoft-antispam-message-info: 3a2m68prnKYo2qGk6iTYHzkNxGnh1GTAcGY0hH+9QzxoYNz62j0npODyylsk/XbLrhJwhb7rw7WGlYsoMdqbytBEiIGcvaQKs0eCnc/wTb9rd4RQgIPdQrcnfqQGYBxNcZgLkooGn3FQLOBKh+fcATYvWl84gMu/ZGOI/XPQa1f1UyhUQILwv3j4EFxfvZIeg+INrlNy0PZ+B/n4dIg6mxwyifUEdmoToa1zTbmCixIk58k6psTU8EH9FFLRM+TlgJzPvT7P6iPO8GXQ3jrdJg1YtofrqZFrbh4sjB1m8kAh5xAA+Boo5RP5m6UKk13uEcVisK4W232dEArTd/jf4d/NXOEkoubc2/oHh0euaVitQNx95Rq4T72RBjv7W0TvIKa5O46WOazNl7HygY7i/TCWbKpgzfjtF5Up4QG+NTEIywzV2eKpxMurQudwpOF32MYtx6GqzpU7+lN+ud9auqUbh362eaBivO95MX+kCgEDUyyOCvOmpIVeLbky6lCMzgPsoTn9Xert5eW1y0PAozE/ue2zfnmFCpr6nw1yRtubjaUacCiZ17uXdS3CymT1xmUn4BwSq5XR4rHLaR3UQJeq8zPYuV+kNzwUVtK+DQyEO4ldOulMXPoBlxAg794+a8HQyJWyKzwfF8aPSioTW9By9QG258KEkGpA/HkQjhr4FFinj/z/tT+VQB0EshAgBZiONphdVyw//EajBqiKxMAh56QZJiAl6H4S5qbdjOY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(6133799003)(22082099003)(4143699003)(18002099003)(11063799006)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVUxL1ROYTVjbmJxUlZxQ2cxMTR2SVhIQVpOSG5UUTBlWEJFWEtKNW5pdnpK?=
 =?utf-8?B?dzBpdU5PUWt6NTd2a1plZzdBTFhIUlhXaFdsMTRPamNHdytmUGFyanFVWHMv?=
 =?utf-8?B?UWxOOGlBTUdYRlpQcWJ4YXZ6S2owSVdWVVpyTzhIempGcWZ2N29Ea2tGV1hE?=
 =?utf-8?B?R3ZibnpQcXJtNkR6Y2RvL2V2cjVnUUQyREN5dzFXcUxzYm9WN2R3WWZaaXJJ?=
 =?utf-8?B?TklpMDYwY3MzYU1mWlpmM0NCRVpQRTZwZ0N4TWxwVzMxaVdmL2lMdGZ3SEdl?=
 =?utf-8?B?clJCRGdZaXF3elRybGRwK0QwL2VaSEFaNk1BaDY0UGVGaUdKZnJhdUdmdEl3?=
 =?utf-8?B?VTg5cUlOT1hxTmJFS3pGZmgzUlZRVzRSd0MzWTlUWGg2UklVSkJCcUt3R3VH?=
 =?utf-8?B?Y2h4RHl6NDNjamt1Zkx1RzlFTEQreXBhOWFXRmkvTHhybHFCZzN0V0FZa3hM?=
 =?utf-8?B?OCtlWXVPRExXVEp2RTI5L1ZUUm1uYUQySmtTeXhNQjJydWJFYkgvbG9IZWZj?=
 =?utf-8?B?dlJCWVZhZnRLUThYQWJDS0NTWVEra3NIajRIWVE4WFQyK0lOMjU4WlZDdGJh?=
 =?utf-8?B?YWlTT01sWW5FRmtuVFdqeFN5MFRUN1lzRmwxK1hTQkE2WGNDQTVBYUZEQWVs?=
 =?utf-8?B?NmVCZXZYeklHWDZxQ1VFeVVuOGpyKzRBSy84Q2NEaFFxMnZ6bU9GSWcwaFVp?=
 =?utf-8?B?NURxbzBsVkJjYWk4Y01HZzFDYUQ5WExDd3R4Y3RNUmR0M2tsbDJOS1ZrZE1I?=
 =?utf-8?B?R0dsT0xySU9ZMzRtYVZkK0pzZWpRQ0N2NDZONHFyZkp4bkFkay9XM251V2Vw?=
 =?utf-8?B?ZGVacUEyZ0IxQ0EybEY2ckdYbW9iTmhrTk9LSzZlZVZXWHJSMmJLTkl1d0x2?=
 =?utf-8?B?SHRNVHNITUhqaG0zMDlnWlZXbUc0QTBBaGEzcFlBdzNIM0RlYXpYbEduY3hy?=
 =?utf-8?B?TC9yTlhYNTRPcldaK094bmZFNTNNVUhKMjh5OEtNT0RSL0c5dnQxOHBsTEI3?=
 =?utf-8?B?b2t2d3ZXT0pFc0RkYUJVUnhFK1ZlOFdmSXNXdUZobkpXOHgvUUpESVAxS2ZY?=
 =?utf-8?B?a0hCNW02c2pLQ21EVEUyRVY0WFFLR0VlRytoSzI4UEVVK1I5NHozVGJDMnpD?=
 =?utf-8?B?aGQ4bC9VTjl0aXUxdVU3blRCVFM2L293d0NFdmZJUnRSV2hBbnU0Z3llTEZh?=
 =?utf-8?B?S2t4UGs0U2VHVkNnejN2NXJIaVdvcXFnZEpWVVZERFk4ZGdBUGpUWFIzNGVB?=
 =?utf-8?B?L1ZxZ1RoWlBmSnJvdUcxaS9Nb2U5Y2daang4MkY2V2pFS1FsWjl6WHZSekl2?=
 =?utf-8?B?Sys1STFzU1ppbldWQ2FMVXJ1c2JrWWpkM0J3bkczbmcrVEIvMytWYUs0eUh1?=
 =?utf-8?B?Y20zb2ErWXhiN1F4b3N4NlVnU1pDRHl1QjFHSWcwaWs5VUxVZzdqVDQvZjRO?=
 =?utf-8?B?bXI5VEtZdkxpWkwxbmdvME0wL3g0U0RkMWJwZEhHbFpOdkU4THUvSm1HVkt4?=
 =?utf-8?B?eTcvaVBjV0lESEw2RmFZVE45TC83TjNDV29LakhYdkoyVC9pU0o1SVdqR3RY?=
 =?utf-8?B?aEt6YjZqUEtRZlpuT3l0dGNxZG1VbC9ENEwrMEQ3Vk1QcFoyVE5Ub0J1eUkx?=
 =?utf-8?B?ZCs5L20rQlpSR1BKZlIxZ1luVmFVZWhoQUtuSFhZcTY1UW1BYzJmNFlvcGxs?=
 =?utf-8?B?eUJNQ1pUeXlnTHF4aUZSTG0reWNybUxlU2RtbnBMVzRoMzBXeHpueXFhdzNJ?=
 =?utf-8?B?bDllQjJGWktaelJ2LzhhQ1l2R2tEakRDOEpLdjRvN1dsVEJlZmNGQ3VPeUtN?=
 =?utf-8?B?N2NyQzhZeUVXL0J3L2dGM2oyZG5CdkY1Yk5pK2t3TnN3Q0FJZTE4ZDVFUjMz?=
 =?utf-8?B?bkh0eTE5NFlzOStVUVRSemtMbmNIaTlUZktTb2lFTHJIUHF6YzNQSXpBSWI3?=
 =?utf-8?B?dCtZT3doUi85ZDZBdUR4Z3dGY21Sb2hJK1JJT1V4NVFiMy9xUWpQOXM1OWZs?=
 =?utf-8?B?Rys5SnMvSTc4aURReU1LWEVKSUVuVDhvaFpzcjcxWmNJaXJwckRDc2oydER1?=
 =?utf-8?B?ZzU2dnFaelMvVjhtM3RUbkZHMStVRVBDMUl1WUFFNDE0aFVtTGJidVk2MW5L?=
 =?utf-8?B?N2hrSFVnY0YwRmtzd1FCaFZsNWV4UnFQNGV6SzdBTnBLd1dEa2hwYWZHV3Bn?=
 =?utf-8?B?Q1pBTnNicklBcjhRd1pKcWJ1MnN2dDhxTnU1WXRxTEVQN0RwZk51UHVsaks3?=
 =?utf-8?B?M3h6cm5HVEpnWWRyMm9vUDZweHhuNnVkZFM3ZFBCZUx6SzYvVDZCZWR1VEJ5?=
 =?utf-8?B?dnduMFZUUmptcTk4R1lCRUxIRmpja2tvbWQ1d2hZWmd5OVpzZ3UwQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rr8wk4daurrBXmjqfUzuvHdBr/8s80krRCt1MmNHjAPJz4Xk6xLmc2xUcPZcla/cFkaRgaE8Xo0n2AfqEwJodxRbLTNT2TPjEdzIzZPor1d1Aj22edSHRYs4da1VpESj5/y9FCnr1krLNqIfO+6Ux8OvVJ2tYWj/6slRMRpkerKQitAiWlnB662cSv9WUARhRgpf6LKi0tlykiyJ2trOjAJb6Jl3OEP56zSga/CwKRG+DzMeKYfyitobmMJV1jDpJHHk5XiEiGOrOHcwfqisS49uE5RmGC6pnpbTiyxtxZrkWEEZSP23t5240ebqd69jfrjohv5sF6QcELLCo/nNmg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38291ee8-4fe7-4cd5-d69b-08dee12ab6fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 22:04:30.7774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wMg8E6fhhoFJc8quLni7XXRJNUFoXiLs8xR1gJ7jcoepqiFlmM0iAEI9AnHDZgdIfkz3OddPtRRtEsaWe5tXOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF9E162731D
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A65CB74F6D7

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgU3Jpbml2YXMs
DQo+IFZpZHlhDQo+IFNlbnQ6IEZyaWRheSwgSnVseSAzLCAyMDI2IDk6NDYgUE0NCj4gVG86IEp1
aGEtUGVra2EgSGVpa2tpbMOkIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPjsgaW50ZWwt
DQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSRTogW1BBVENIXSBbUkZDXTogZHJtL2k5MTUvZGlzcGxh
eTogRml4IE5WMTIgY2VpbGluZyBkaXZpc2lvbiBmb3INCj4gYmlnam9pbmVyIGNhc2UNCj4gDQo+
IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEp1aGEtUGVr
a2EgSGVpa2tpbMOkIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPg0KPiA+IFNlbnQ6IDAz
IEp1bHkgMjAyNiAxOToyMQ0KPiA+IFRvOiBTcmluaXZhcywgVmlkeWEgPHZpZHlhLnNyaW5pdmFz
QGludGVsLmNvbT47DQo+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENj
OiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBSZTogW1BBVENI
XSBbUkZDXTogZHJtL2k5MTUvZGlzcGxheTogRml4IE5WMTIgY2VpbGluZw0KPiA+IGRpdmlzaW9u
IGZvciBiaWdqb2luZXIgY2FzZQ0KPiA+DQo+ID4gSGkgVmlkeWEsDQo+ID4NCj4gPiBhcG9sb2dp
ZXMgZm9yIHRoZSBkZWxheWVkIHJlcGx5LiBJIHRyaWVkIHRvIGRvIHRoZSBtYXRoIGFuZCBzZWVt
cyBJDQo+ID4gZ290IGNvcnJlY3QgbnVtYmVycyBhcyBleHBlY3RlZCB3aGF0IHlvdSBzYXkgYmVs
b3cuIEkgY2FuJ3QgdGVzdCB0aGlzDQo+ID4gYW55d2hlcmUgYnV0IGl0IHNlZW1zIGNvcnJlY3Qg
b24gY29kZSBhbmQgaWRlYSBsZXZlbC4NCj4gPg0KPiA+IFJldmlld2VkLWJ5OiBKdWhhLVBla2th
IEhlaWtraWxhIDxqdWhhcGVra2EuaGVpa2tpbGFAZ21haWwuY29tPg0KPiANCj4gSGVsbG8gSnVo
YQ0KPiBUaGFuayB5b3UgdmVyeSBtdWNoLg0KDQpQdXNoZWQgdGhlIGNoYW5nZSB0byBkcm0taW50
ZWwtbmV4dC4gVGhhbmtzIGZvciB0aGUgcGF0Y2ggYW5kIHJldmlldy4NCg0KUmVnYXJkcywNClVt
YSBTaGFua2FyDQoNCj4gUmVnYXJkcw0KPiBWaWR5YQ0KPiANCj4gPg0KPiA+IE9uIDE4LzA2LzIw
MjYgMjEuMTgsIFZpZHlhIFNyaW5pdmFzIHdyb3RlOg0KPiA+ID4gQ29tbWl0IDE2ZGY0Y2M2M2M1
OCAoImRybS9pOTE1L2Rpc3BsYXk6IFVzZSBjZWlsaW5nIGRpdmlzaW9uIGZvcg0KPiA+ID4gTlYx
MiBVViBzdXJmYWNlIG9mZnNldCBjYWxjdWxhdGlvbiIpIGNvbXB1dGVzIHRoZSBVViAoY2hyb21h
KQ0KPiA+ID4gc3VyZmFjZSBzdGFydC9zaXplIGFzIGNlaWxpbmcoaGFsZiBvZiBZIHBsYW5lIHN0
YXJ0L3NpemUpIGRpcmVjdGx5DQo+ID4gPiBmcm9tIHRoZQ0KPiA+ID4gVTE2LjE2IGZpeGVkLXBv
aW50IHNvdXJjZSByZWN0YW5nbGU6DQo+ID4gPg0KPiA+ID4gICAgICAgICAgeCA9IGZwXzE2XzE2
X3RvX2ludF9jZWlsKGZwXzE2XzE2X2RpdjIoc3JjLngxKSk7DQo+ID4gPg0KPiA+ID4gRm9yIGEg
c2luZ2xlIHBpcGUgdGhlIHNvdXJjZSBjb29yZGluYXRlcyBhcmUgaW50ZWdlcnMsIHNvIHRoaXMg
aXMNCj4gPiA+IGNvcnJlY3QuDQo+ID4gPiAoVVYgc3RhcnQgPSBjZWlsaW5nKGhhbGYgb2YgWSBw
bGFuZSBzdGFydCkpLg0KPiA+ID4NCj4gPiA+IFdpdGggYmlnam9pbmVyICsgYSBwbGFuZSBzY2Fs
ZXIgdGhlIHBpY3R1cmUgY2hhbmdlcy4gVGhlIHBpcGUNCj4gPiA+IGJvdW5kYXJ5IGlzIGEgZml4
ZWQgaW50ZWdlciBkZXN0aW5hdGlvbiBwaXhlbCwgYnV0IHRoZSBwbGFuZSdzDQo+ID4gPiBwb3Np
dGlvbiBhbmQgdGhlIHNjYWxlciByYXRpbyBhcmUgYXJiaXRyYXJ5LCBzbw0KPiA+ID4gZHJtX3Jl
Y3RfY2xpcF9zY2FsZWQoKSBtYXBzIHRoZSBzZWFtIGJhY2sgdG8gYSAqZnJhY3Rpb25hbCogcGVy
LXBpcGUNCj4gPiA+IHNvdXJjZS4gRm9yIGEgMTI4MC0+MjQwNyB1cHNjYWxlZCBOVjEyIHBsYW5l
IGNyb3NzaW5nIHRoZSBzZWFtOg0KPiA+ID4NCj4gPiA+ICAgICAgICAgIG1hc3RlciBzcmM6IHdp
ZHRoID0gMTIwNCAqIDEyODAvMjQwNyA9IDY0MC4yNjU4OTksIHgxID0gMA0KPiA+ID4gICAgICAg
ICAgam9pbmVyIHNyYzogd2lkdGggPSAxMjAzICogMTI4MC8yNDA3ID0gNjM5LjczNDExNSwgeDEg
PQ0KPiA+ID4gNjQwLjI2NTg4NA0KPiA+ID4NCj4gPiA+IFRoZSBsdW1hIHBhdGggZmxvb3JzIHRo
aXMgdG8gYW4gaW50ZWdlciAoc3JjLngxID4+IDE2ID0gNjQwKSwgYnV0DQo+ID4gPiB0aGUgVVYg
cGF0aCB0YWtlcyBjZWlsaW5nKDY0MC4yNjU4ODQgLyAyKSA9IGNlaWwoMzIwLjEzKSA9IDMyMS4g
VGhlDQo+ID4gPiBZIHBsYW5lIHRoZW4gc3RhcnRzIGF0IGNvbHVtbiA2NDAgd2hpbGUgdGhlIFVW
IHBsYW5lIHN0YXJ0cyBhdCAzMjEqMg0KPiA+ID4gPSA2NDIsIHB1c2hpbmcgdGhlIGNocm9tYSBy
ZWFkIG9uZSBjb2x1bW4gcGFzdCB0aGUgNjQwLXdpZGUgY2hyb21hDQo+ID4gPiBzdXJmYWNlIG9u
IHRoZSBqb2luZXIgc2Vjb25kYXJ5Og0KPiA+ID4NCj4gPiA+ICAgICAgICAgIFtDUlRDOjM4Mjpw
aXBlIENdIFBMQU5FIEFUUyBmYXVsdA0KPiA+ID4gICAgICAgICAgW0NSVEM6MzgyOnBpcGUgQ11b
UExBTkU6MjY3OnBsYW5lIDFDXSBmYXVsdA0KPiA+ID4gKENUTD0weDgxMDA5NDAwLA0KPiA+ID4g
Li4uKQ0KPiA+ID4NCj4gPiA+IFRoZSBzcGVjICJZIHBsYW5lIHN0YXJ0IiBpcyB0aGUgaW50ZWdl
ciBwaXhlbCB0aGUgbHVtYSBzdXJmYWNlDQo+ID4gPiBhY3R1YWxseSBwcm9ncmFtcyAoNjQwKSwg
bm90IHRoZSBwcmUtZmxvb3IgZml4ZWQtcG9pbnQgdmFsdWUgKDY0MC4yNykuDQo+ID4gPiBDb252
ZXJ0IHRoZSBZIHBsYW5lIHN0YXJ0L3NpemUgdG8gaW50ZWdlciBmaXJzdCAtIG1hdGNoaW5nDQo+
ID4gPiBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKCkNCj4gPiA+IC0gYW5kIHRoZW4gYXBwbHkgdGhl
IGNlaWxpbmcuIFRoaXMgaXMgYSBuby1vcCBmb3IgdGhlIGludGVnZXINCj4gPiA+IChub24tam9p
bmVyKSBjYXNlIGFuZCB5aWVsZHMgdGhlIGNvcnJlY3QsIGluLWJvdW5kcyBjaHJvbWEgb2Zmc2V0
DQo+ID4gPiBmb3IgdGhlIGZyYWN0aW9uYWwgam9pbmVyIHNlYW06DQo+ID4gPg0KPiA+ID4gICAg
ICAgICAgICAgICAgICAgICAgIGJlZm9yZSBmaXggICAgICBhZnRlciBmaXgNCj4gPiA+ICAgICAg
ICAgIG1hc3RlciAxQjogICB4PTAgIHc9MzIxICAgICAgeD0wICAgdz0zMjAgICAtPiBbMCwgMzIw
KQ0KPiA+ID4gICAgICAgICAgc2xhdmUgIDFDOiAgIHg9MzIxIHc9MzIwICAgICB4PTMyMCB3PTMy
MCAgIC0+IFszMjAsIDY0MCkNCj4gPiA+DQo+ID4gPiBUaGUgdHdvIGhhbHZlcyBub3cgdGlsZSB0
aGUgNjQwLXdpZGUgY2hyb21hIHBsYW5lIGV4YWN0bHkgYW5kIHRoZQ0KPiA+ID4gQVRTIGZhdWx0
IGlzIGdvbmUuDQo+ID4gPg0KPiA+ID4gQXNzaXN0ZWQtYnk6IEdpdEh1Yi1Db3BpbG90OkNsYXVk
ZS1PcHVzLTQuOA0KPiA+ID4gRml4ZXM6IDE2ZGY0Y2M2M2M1OCAoImRybS9pOTE1L2Rpc3BsYXk6
IFVzZSBjZWlsaW5nIGRpdmlzaW9uIGZvcg0KPiA+ID4gTlYxMiBVViBzdXJmYWNlIG9mZnNldCBj
YWxjdWxhdGlvbiIpDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWR5YSBTcmluaXZhcyA8dmlkeWEu
c3Jpbml2YXNAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgIC4uLi9kcm0vaTkxNS9kaXNw
bGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyAgICB8IDMzICsrKysrKysrLS0tLS0tLS0tLS0NCj4g
PiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQ0K
PiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+ID4gaW5kZXggYWQ0YmZmZjY5MDNkLi4xNjRiN2Q2
MWM5YTMgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiA+IEBAIC0yMTI2LDE5ICsyMTI2LDYgQEAg
c3RhdGljIGludCBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKHN0cnVjdA0KPiA+IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSkNCj4gPiA+ICAgCXJldHVybiAwOw0KPiA+ID4gICB9DQo+ID4g
Pg0KPiA+ID4gLQ0KPiA+ID4gLS8qIERpdmlkZSBhIFUxNi4xNiBmaXhlZC1wb2ludCB2YWx1ZSBi
eSAyLCBzdGF5aW5nIGluIGZpeGVkLXBvaW50DQo+ID4gPiBkb21haW4gKi8gLXN0YXRpYyBpbmxp
bmUgdTMyIGZwXzE2XzE2X2RpdjIodTMyIGZwKSAtew0KPiA+ID4gLQlyZXR1cm4gZnAgPj4gMTsN
Cj4gPiA+IC19DQo+ID4gPiAtDQo+ID4gPiAtLyogQ29udmVydCBhIFUxNi4xNiBmaXhlZC1wb2lu
dCB2YWx1ZSB0byBpbnRlZ2VyLCByb3VuZGluZyB1cCAqLw0KPiA+ID4gLXN0YXRpYyBpbmxpbmUg
aW50IGZwXzE2XzE2X3RvX2ludF9jZWlsKHUzMiBmcCkgLXsNCj4gPiA+IC0JcmV0dXJuIERJVl9S
T1VORF9VUChmcCwgMSA8PCAxNik7DQo+ID4gPiAtfQ0KPiA+ID4gLQ0KPiA+ID4gICBzdGF0aWMg
aW50IHNrbF9jaGVja19udjEyX2F1eF9zdXJmYWNlKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQ0K
PiA+ICpwbGFuZV9zdGF0ZSkNCj4gPiA+ICAgew0KPiA+ID4gICAJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KHBsYW5lX3N0YXRlKTsgQEANCj4gPiA+IC0y
MTU0LDE0ICsyMTQxLDIwIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX252MTJfYXV4X3N1cmZhY2Uo
c3RydWN0DQo+ID4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiA+ID4gICAJaW50
IG1heF9oZWlnaHQgPSBpbnRlbF9wbGFuZV9tYXhfaGVpZ2h0KHBsYW5lLCBmYiwgdXZfcGxhbmUs
DQo+ID4gPiByb3RhdGlvbik7DQo+ID4gPg0KPiA+ID4gICAJLyoNCj4gPiA+IC0JICogTE5MKyBV
ViBzdXJmYWNlIHN0YXJ0L3NpemUgPQ0KPiA+ID4gLQkgKiBjZWlsaW5nKGhhbGYgb2YgWSBwbGFu
ZSBzdGFydC9zaXplKS4gVXNlIGNlaWxpbmcgZGl2aXNpb24NCj4gPiA+IC0JICogdW5jb25kaXRp
b25hbGx5OyBpdCBpcyBhIG5vLW9wIGZvciBldmVuIHZhbHVlcy4NCj4gPiA+ICsJICogVVYgKGNo
cm9tYSkgc3RhcnQvc2l6ZSA9IGNlaWxpbmcoaGFsZiBvZiB0aGUgKmludGVnZXIqIFkgcGxhbmUN
Cj4gPiA+ICsJICogc3RhcnQvc2l6ZSksIGkuZS4gdGhlIHZhbHVlIHRoZSBsdW1hIHN1cmZhY2Ug
cHJvZ3JhbXMgKHNyYyA+PiAxNiksDQo+ID4gPiArCSAqIG5vdCB0aGUgcmF3IFUxNi4xNi4gQSBi
aWdqb2luZXIgc2VhbSBtYXBwZWQgdGhyb3VnaCB0aGUgc2NhbGVyDQo+ID4gY2FuDQo+ID4gPiAr
CSAqIGdpdmUgYSBmcmFjdGlvbmFsIGx1bWEgc3JjOyBjZWlsaW5nIHRoYXQgZGlyZWN0bHkgd291
bGQgcm91bmQgdGhlDQo+ID4gPiArCSAqIGNocm9tYSBvbmUgY29sdW1uIHRvbyBmYXIgYW5kIHJl
YWQgcGFzdCB0aGUgY2hyb21hIHN1cmZhY2UuDQo+ID4gPiAgIAkgKi8NCj4gPiA+IC0JaW50IHgg
PSBmcF8xNl8xNl90b19pbnRfY2VpbChmcF8xNl8xNl9kaXYyKHBsYW5lX3N0YXRlLQ0KPiA+ID51
YXBpLnNyYy54MSkpOw0KPiA+ID4gLQlpbnQgeSA9IGZwXzE2XzE2X3RvX2ludF9jZWlsKGZwXzE2
XzE2X2RpdjIocGxhbmVfc3RhdGUtDQo+ID4gPnVhcGkuc3JjLnkxKSk7DQo+ID4gPiAtCWludCB3
ID0NCj4gPiBmcF8xNl8xNl90b19pbnRfY2VpbChmcF8xNl8xNl9kaXYyKGRybV9yZWN0X3dpZHRo
KCZwbGFuZV9zdGF0ZS0NCj4gPiA+dWFwaS5zcmMpKSk7DQo+ID4gPiAtCWludCBoID0NCj4gPiBm
cF8xNl8xNl90b19pbnRfY2VpbChmcF8xNl8xNl9kaXYyKGRybV9yZWN0X2hlaWdodCgmcGxhbmVf
c3RhdGUtDQo+ID4gPnVhcGkuc3JjKSkpOw0KPiA+ID4gKwlpbnQgbHVtYV94ID0gcGxhbmVfc3Rh
dGUtPnVhcGkuc3JjLngxID4+IDE2Ow0KPiA+ID4gKwlpbnQgbHVtYV95ID0gcGxhbmVfc3RhdGUt
PnVhcGkuc3JjLnkxID4+IDE2Ow0KPiA+ID4gKwlpbnQgbHVtYV93ID0gZHJtX3JlY3Rfd2lkdGgo
JnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7DQo+ID4gPiArCWludCBsdW1hX2ggPSBkcm1f
cmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7DQo+ID4gPiArCWludCB4
ID0gRElWX1JPVU5EX1VQKGx1bWFfeCwgMik7DQo+ID4gPiArCWludCB5ID0gRElWX1JPVU5EX1VQ
KGx1bWFfeSwgMik7DQo+ID4gPiArCWludCB3ID0gRElWX1JPVU5EX1VQKGx1bWFfeCArIGx1bWFf
dywgMikgLSB4Ow0KPiA+ID4gKwlpbnQgaCA9IERJVl9ST1VORF9VUChsdW1hX3kgKyBsdW1hX2gs
IDIpIC0geTsNCj4gPiA+ICAgCXUzMiBvZmZzZXQ7DQo+ID4gPg0KPiA+ID4gICAJLyogRklYTUUg
bm90IHF1aXRlIHN1cmUgaG93L2lmIHRoZXNlIGFwcGx5IHRvIHRoZSBjaHJvbWEgcGxhbmUgKi8N
Cg0K
