Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4547FA11B2B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 08:43:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7393210E4E3;
	Wed, 15 Jan 2025 07:43:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CztUd0sg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 165E510E4E1;
 Wed, 15 Jan 2025 07:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736927006; x=1768463006;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1lUM2TQ8qoyGdukFpHIjQZzWLnIH3VRRAgPSmWOS5GI=;
 b=CztUd0sg+8ocllcW5KgKLMcK2/UH3SWhjYKwMq1PFfBisc+xlqoR+C3I
 Xb8hfvci6MOr0/kkWPtd7S3LxI0aT0vxEEMg1JnqkHnUYJiCghdpwJ0fY
 aSBXv3iVqBW1ZbhTyPNl38QHIxWIHIlcK5/JF8uFbH1If4n6LZcxs7c5o
 jxcphmbnxFrpP0JTCYgsvadPy7+tmKoIsww7T5VI1pwuxyhyR8MOC1H1R
 1SkbXN+B45Vftc7H5+p1Wz3BDIq1C8UWfYRjeZKQS6c5KNIr7wmQv94da
 kyx2i2iQhW2Z8EtPKav4w5gZfRteu9o5h3zVrSbY062LpZ32FcNrYv1l3 g==;
X-CSE-ConnectionGUID: nWTpzw0xQfqvcUFljYS94g==
X-CSE-MsgGUID: I8Ots0pVS+eSET8ZPA/wuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="59731976"
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="59731976"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 23:43:25 -0800
X-CSE-ConnectionGUID: QjsYA12NTXCS7xzTCnbUXQ==
X-CSE-MsgGUID: Gk5xyZN5SlKG/amSp/l//A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,316,1728975600"; d="scan'208";a="105017836"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 23:43:25 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 23:43:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 23:43:25 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 23:43:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k+x5H6j+1A9aoGYvoWe+FT5D0BtX99j6eKib9LsWQgntAFsmb+Gxa5XwAdxxgMsdWZNgh5WYrd9ZuJbtsuyP3dDhdYfGU80DlOTm6eqT9PM3pIbHfRbHTSxiwwVJUsBM61Ies3RlLsIdFiyXujzU98ZlRVWDAu/zgUeVtD+oaDaU1Cum7YVG9vHwoI6ca/mU69D3gOpCyPDGKt2UEJe2+iKigqe5Bm4Yz9knxW3HeU2N9lLdVkfoDg45rJhxXNlmWQFwV/YY5JRVGltpqAl2ceFT4QfWCPgWrFVPTutzLtJj0sxz1afaiR7nnhm+YNi+sEepEu4kbwa5OI7lcL5aJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1lUM2TQ8qoyGdukFpHIjQZzWLnIH3VRRAgPSmWOS5GI=;
 b=Lv7g9yNNRLCnhf2raavbgFc3VnlsdLVYy74T22zer9KR3XEDUCj8CnR3j13Y0D8EvUoGAI0tqvwNhx+E7op0pp2vhYkQ+vTNC+Vc8AlgiywryAzZolcpSCnrwhEq192mRCfqJ4tBKJ8yf84m/RY0foNeOgfZtFPz8dJ5PQoNmMZw5K60o9O2GBYlPVKX2Dx7q6G/Kigjnm+DHik5yw+TLGPuiep+EjZTEzT3NoTRCRrky/lHRHrj2ehXpeZhsorFsGVMHfQ3h7jVN4VA502EfDJSpCjntRuDoFEDcG0ukKSMUcvVoeqIm9wWyEz2anJJz+il7lcBopzQuJXBkE1Rfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DS0PR11MB7483.namprd11.prod.outlook.com (2603:10b6:8:147::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Wed, 15 Jan
 2025 07:43:15 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 07:43:15 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 01/10] drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only
 to send full update
Thread-Topic: [PATCH v3 01/10] drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only
 to send full update
Thread-Index: AQHbYmieVrvJ4XlfT0+47qIUixNbf7MXfHIA
Date: Wed, 15 Jan 2025 07:43:15 +0000
Message-ID: <BL1PR11MB5979519A9D8977FED5A3B006F9192@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-2-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DS0PR11MB7483:EE_
x-ms-office365-filtering-correlation-id: c234d68c-4f8e-4194-85fd-08dd35384579
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SndWeFEyZFc4VXJBb2FGTS9HODBBd3d6SmZYM1RRODNndjVTUi9MNjJ3cjE4?=
 =?utf-8?B?a0tmZzJTS3FMZXNUWTRBbFpKUVRLY2k5emxZY3FobU5KNWJ0RWMrMXhmV25V?=
 =?utf-8?B?TTQwbjdpMmJVK1l0dE5zVnZ3YjJQUjBhU2lDcEl2ZlcwcDN2ZUl4aURTVTZs?=
 =?utf-8?B?UnNENVpHUGVwbDNPVHlWcHJ5UDdrVUpKTnlBcDVpQ090S0lpZXYwbTBncXlt?=
 =?utf-8?B?cGZYSGdLc20zLzBkM1AwQkkrQ3BuSnpKTEx4L0MreW42RU45WHAzZUxncHpJ?=
 =?utf-8?B?MlFaTkxKeUh0WEJOdzh3L2Z2U3dUQXNRTmRmR2xTYU5ZMzQ4SDRyOW5JS0JM?=
 =?utf-8?B?V1p2cFJhMDRON2JGdnNqakZUc2ZLeEtCK0NCQUY2c1pFa05iamFOWCtIMVkx?=
 =?utf-8?B?NWhMazZFaDZoTSs1VFdSbitXZ1hYMis1eFM5bUlwMDFFOUFkTVlxWGRVNkRI?=
 =?utf-8?B?RlkvdDB4NGdGeDdWSGQ2bDAwa2JvSGFaRlBEN05mNTMzVHBYV3BMcm9FZmFp?=
 =?utf-8?B?cGtDQjcxd1pFS1YxNzhaOHM3TTVGTmxqcGdKMGpiZzNicDg3OTNRdStRclNO?=
 =?utf-8?B?aUplOWs4aS9uNnZGSHJyREM3bTFIbHd1WFd0dm5PM21FaWZzNDNLcndkK1RR?=
 =?utf-8?B?UzZVZVNaNWZXWTRWSEFFS2RGN25OaGdzcTFJTDVMczJYSGpmUlZyOXZRcVhC?=
 =?utf-8?B?SGJYM0tNS1ZlWmg1QytFMUxRUFk0clBydS93YkNKQ09lRVZMSVJ5azdqY002?=
 =?utf-8?B?REpzYk5aTGF0OXdvZUFsV051VHBwRG5MVDl3TU1xVkpYcHRmdGt3Kzl4ajdR?=
 =?utf-8?B?aGo3WHFqT0RDTEFLTkZwRlFCZWZEQmpIZzlGeGxpUWszQ0lHS0FWS01yOHky?=
 =?utf-8?B?WFlWN3lRTnZmSTN0ZGRuYjJkNWRwbGF0a01RdXBHcEs1R2tqVVNKZW9HTEY1?=
 =?utf-8?B?eWJWeXlZSkRJZDJhYk44U1YzSWoxKys4bld5a24yTnlEOURQeUVJMHpYNXVx?=
 =?utf-8?B?emo3UlJMSU0vaHVybzZLRlh0ZFJ1d05ZUnFyVjlpclNiaUx0ZEdsRHhxK1Ix?=
 =?utf-8?B?OW5zR2VFbFc0SXFiZkpiYnRwbzMvMHBkeDE5NHhDZWsycXFOcjVyNHE0SzUz?=
 =?utf-8?B?UmhzQlEyWFBVeFdkOENacjNXY3Zkd09Dbk5ib2Vnc1JNTmQvc2FXdTJBcWVh?=
 =?utf-8?B?dllGTXJUZTZtbk51RFFwTzA3YzlYLzRsNWRFREpNVGpkZFBkcVZGZ3VnbnBO?=
 =?utf-8?B?R01udXcxWDlIeEQ1bGxmZHFzaFVkUDZLT25LclVHc3ErZ1hjcjNFN1ppV0pU?=
 =?utf-8?B?QmhpSzFZSC95ak91ZmprU0FiVXRSNVVjZzZwQmJmYTk4cFphY2lVSXkxdTdF?=
 =?utf-8?B?aHYrNkVDdTVKVGUvakZNWUZkZ0RYSzhQZjVqMCt2OS90bzdza3phU21ySlo2?=
 =?utf-8?B?NUNzZ2tNMkxsS1lUeGVid0pQQS9kWUxtMHcrMjdmNE56NTBWdVZxQjYvK2lT?=
 =?utf-8?B?OXpwMFlQL3RZazYyUFh3bzVaS2dEd3VWVFBPZGRpVXBKOUlhUG4rZUVFWUwv?=
 =?utf-8?B?SkZRdFU3RmpTWmNCYjRmSVJEc21rNnlqQ3JWTVdCVGZjWWJoUTRLMzdGWWpt?=
 =?utf-8?B?aFBCMzlCQlowdndDQzJNeWtJTmpJNnhoWXE0a0k2anBVNzc3bERoN2VLdm1O?=
 =?utf-8?B?NS9TL2tHYWdEMXNMeFpDZEZnTWludzQ5S3FpSk0wdTh2MWE5T011QWtZbFI1?=
 =?utf-8?B?TEZRcU5ReCtSeHhPMVhFME9TVDFrbDQ3Ukl1aTZJc05HWm5mMWRZSnZMOVhj?=
 =?utf-8?B?REQ4OEVmVjk2WUxXaDlsU1B0cVpXb2g5aHJmOWY3UEU4T0ljOVBMQXAvQktZ?=
 =?utf-8?B?eTU1OGJrQm5NcS9weWJqeDBMclBDUTRFbWs1OTRxUGxtRzAwVll5TGdOZThG?=
 =?utf-8?Q?2ZKLaKRU657hfCHl97qQjsgOrN7HM6XB?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z3VhRm5pSnhHbC83enBZNXRIc1NuUlFFazQvbGNsdFBtMlZyTisxUHl2OW52?=
 =?utf-8?B?bHQwa0xRMmo3a3IvQSt6ZXZlemRzclBhUklKZjR6Y2tvUElrdTZseUxsQzNC?=
 =?utf-8?B?cEcwV1dOWGVFbjRNRUhDV0pZUGpQOE1wbVFEVHhGUXFoUCtYQXhVV0c0VTZK?=
 =?utf-8?B?TnRNWU95Sk1XVW9xRzIyeFFIQ0E0MHF3anBrWFQyUzJSWmVsOE9sa0tIbGg4?=
 =?utf-8?B?b2trWjUwSFRCWS9XSG9qazlUYzJPWXNITmVCYkllbHJtMHJLSFd6WHVMbTdJ?=
 =?utf-8?B?VDdjanlXSHdtbDQ1Z1hRajNIN0RKNzBIeGE2a1BZOFBIQzF4ZGlFeVdDaFlq?=
 =?utf-8?B?UmswQ1ZJVXd3Qk1jRGdzL3VGNXU1bDFaeStQb3Z5MzFnQVpBNGxOaGxEOEtH?=
 =?utf-8?B?VG95aGt6SkJVckppQ25xSGd1L0swRTV6c1N1aE5rK1ZRT1BMNlZhYzE0RENl?=
 =?utf-8?B?N3Z3VitHWUxoaTY0NDJEV1RhT0pFSTRvcnBTdlFYdEpVd0VVYlRwVHprWmRr?=
 =?utf-8?B?bXZIbGZxQTA0K2krTGVjV0pwSkNQblg0T09ob2N3UWlLeFVYV0ZxRWd5MWJV?=
 =?utf-8?B?R2lNZ1haaDBidkhxaTkyaG5ONlJyalU1aEZ3eG00cERLeWlaL3hJd2xYMG5i?=
 =?utf-8?B?VXN3N3RkL1JKWVRrNWRUV08yNytaMVFyOS96a1E1OGw0SWJWQ2UyZlc4akpy?=
 =?utf-8?B?dkp5SGlPTWJuSUx1bUNJemttYTRPb0UwRkxqSmNJQjZVYUNuZ1l1T2pIY05s?=
 =?utf-8?B?Zk0zSGIvNEJyU1B4OFdmcjhMV095KzgyRGQvdHdwZDJTK253cTUyeEtrNnV4?=
 =?utf-8?B?Nmk1dmJMaXkvQlNlZG9Cb0l1R01oRnZxa2Ewd3BHRXlRUXY4eU1URFRGMTN3?=
 =?utf-8?B?ajZqRlhRMG91ZTN0WnVpT1RLTXkzTUFiSFNScThuNHppc0I2SmJ0ZjNnU1Rw?=
 =?utf-8?B?a1Y1YTZ5Rnd3MW9NVlZidk82MFp5cnNZU2ZDZXhtRWl4bWJ5aUZyRXRJaVNI?=
 =?utf-8?B?WmZZOFQ1UW5PejhDWm5JUmFwZVFRVUxmWmFPOWh1Vm1HbWwwQmxKaWRHZWpI?=
 =?utf-8?B?Q1dtQm5wWjdoVGpYbTlMMWpSQzBBK1NEUmxPSU1NbTB2S0RjWE50MGo4RHVy?=
 =?utf-8?B?alZBR0N1bGV2aXptNFFBUzMyZFZmZEpkYXowZGNtcG5hZ0tSbmJTbXhZQkZp?=
 =?utf-8?B?anN5SnFZbkM2a1RUbWpheWdKelJ3MjBIak5DYWdmREZ2UHlRcGh2TThxUFgv?=
 =?utf-8?B?NWV4bU0zZlNxbC80V3lSaWh1V01BTHZvWXVhdTZ6ak5IS0wrUzk5OUE5clN1?=
 =?utf-8?B?UWdzNTU2ay9QSWpKZXAzZEU0dGZIQ2syWWkyUm93NE5PMUgvVjVMSUhLTUxH?=
 =?utf-8?B?SHFkZDlGcWdnaHJBYjhpSXIwTDRkR2crbFlSNVEreEVpVlp4WGhqSklMcjdn?=
 =?utf-8?B?V1N4SDVMbmRpaXNIWkxtTEI3N2tlTlMzSE5PTThPeHBZTTM4a0N4RlFtb3hz?=
 =?utf-8?B?eEN3Uml4UCt0VnQxdVFuZWhJTXlOYTNTUnp2bEVxNnk5NThUY3VGRW43bW0z?=
 =?utf-8?B?TDY3Y3lDWnNQTjIvSTNzZmtKMHdxVUFRYlZHekY1a25XMVBkcXd1VXNaRnVU?=
 =?utf-8?B?S1FWZG1qKy9sU0pYazF5RHJMN0JCTEVsakc3SFFpQU1ZYUJ1akhXYml3ZVRI?=
 =?utf-8?B?TCtPZVlYbWpHRmhaMXQwcDNJeEpzNHdHNm1PVVZULzRaNk5FSXp3aFpDYU9L?=
 =?utf-8?B?UE16REx0UE12ZzErRkxhWWo5eWhFWVBSUjVCZ1ZpVVdhMzYyYlJZcW00NHJj?=
 =?utf-8?B?MkNsMjV4Tlg1Vmpsc2F3U1FVUXlmbWdXSzd3a01ENkNiOWtINmZIYjFtOWZX?=
 =?utf-8?B?ckJZZlpjbmZGU2lEQ1hoeFJNZG1ET1V3N2FkUjNNTjVEVGxPOHN6ZXI0Vmpl?=
 =?utf-8?B?SzkxR3AycDkwaDdOT1lGV2IvaUswb2ptcmJOdEZ6ZVFkUUw2Zk41c2F1R1k2?=
 =?utf-8?B?TTVVVFkxZUQ0MzBVUSs2QWJGblpwRWJ3d0hMUFVIaDc4SExqUng1RjhzeHBh?=
 =?utf-8?B?UDBsaXQvYml2Z0Y4UTdnWGlJUjV2elNTWHd0N0RaQzhqUU53ck1ObUp6bzd0?=
 =?utf-8?B?ZEJqK042OEN3RElHWDVCOTZHbUZBNURqOHNUcUtvdGRnMlBlYWkwODl2c3ZI?=
 =?utf-8?B?MHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c234d68c-4f8e-4194-85fd-08dd35384579
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 07:43:15.6179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E98W1ad7+BHdJwlmLZFRLKlM6yLLM+vSA2+pkmN30lmQ/vEIcUNLsx7Goag9Zrul1DxuJRZ5MPXYsWpf1gAeDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7483
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDksIDIwMjUgMTowMSBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDAxLzEwXSBkcm0vaTkxNS9wc3I6IFVzZSBQU1IyX01B
Tl9UUktfQ1RMIENGRiBiaXQNCj4gb25seSB0byBzZW5kIGZ1bGwgdXBkYXRlDQo+IA0KPiBXZSBh
cmUgcHJlcGFyaW5nIGZvciBhIGNoYW5nZSB3aGVyZSBvbmx5IGZyb250YnVmZmVyIGZsdXNoIHdp
bGwgdXNlIHNpbmdsZQ0KPiBmdWxsIGZyYW1lIGJpdCBvZiBhIG5ldyByZWdpc3RlciAoU0ZGX0NU
TCkgYXZhaWxhYmxlIG9uIEx1bmFyTGFrZSBvbndhcmRzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEgLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBpbmRleCAwYjAyMWFjYjMzMGYuLjQ3NjMwNTAxMGUxMSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMzgxLDcg
KzIzODEsNiBAQCBzdGF0aWMgdm9pZCBwc3IyX21hbl90cmtfY3RsX2NhbGMoc3RydWN0DQo+IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJdmFsIHw9IG1hbl90cmtfY3RsX3BhcnRp
YWxfZnJhbWVfYml0X2dldChkaXNwbGF5KTsNCj4gDQo+ICAJaWYgKGZ1bGxfdXBkYXRlKSB7DQo+
IC0JCXZhbCB8PSBtYW5fdHJrX2N0bF9zaW5nbGVfZnVsbF9mcmFtZV9iaXRfZ2V0KGRpc3BsYXkp
Ow0KDQpJcyB0aGlzIGNoYW5nZSBhcHBsaWNhYmxlIGZvciBvbGRlciBwbGF0Zm9ybXMgYmVmb3Jl
IExOTD8gSWYgbm8gaW1wYWN0IGdvb2QgdG8gZGVzY3JpYmUgaW4gY29tbWl0IGRlc2NyaXB0aW9u
IG9yIGNvZGUtY29tbWVudC4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiAgCQl2YWwgfD0gbWFu
X3Rya19jdGxfY29udGludW9zX2Z1bGxfZnJhbWUoZGlzcGxheSk7DQo+ICAJCWdvdG8gZXhpdDsN
Cj4gIAl9DQo+IC0tDQo+IDIuNDMuMA0KDQo=
