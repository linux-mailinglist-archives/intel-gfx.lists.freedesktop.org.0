Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 274EEC921FD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 14:24:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152AC10E8D6;
	Fri, 28 Nov 2025 13:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R9kzQmhv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3C210E912;
 Fri, 28 Nov 2025 13:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764336292; x=1795872292;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4kqzfpyPyqKu1TnLT/l7lDek5wVLkZp0RYcowQxg4NU=;
 b=R9kzQmhvhY4S1s0ivKWF5R7UGBXi+dzTwlT0AGSC0p5AVnXXrxe1hUlk
 SWEwz8gjDHLykh04rQMv+Zvq9Q99pSQWOqHYpTBgz0wLWUKhg2id0ZerS
 ILP7o+2mWlea0prcs3mktHOgS4lD3kKEY+MtNF6WJEQiZWsbTEnE8LvRc
 75Ak+Q+YYlDBWAreTnKfd3C7T0c0y65qBOndHnMAplq3ytPwhUZ7e5Gp6
 qxWlUXRl/pfhSQ52o8ABxid5KIpOW0ERk0Abb7jL0kUWrlmZJixG06XlS
 oL8Nw13b3HUIpoo9I88UzNdXTCYlQiyV8Lj22MwArxM0g2VS4xnXwr8e3 g==;
X-CSE-ConnectionGUID: SNKTHq3zQ5m2KdhoyAj+lQ==
X-CSE-MsgGUID: sWtHuSnnQyiLHNAouGLZNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="68961051"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="68961051"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:24:52 -0800
X-CSE-ConnectionGUID: Qa2cyQSiSBWt8Rb3PRwgfA==
X-CSE-MsgGUID: APWbHJ78TLSZAHkfE3P4Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="224414989"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:24:52 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:24:51 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 05:24:51 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.57) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:24:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QF3LcGDGQdTWVewsfnuoMbeqIefQnun5nC+xGQW3H5oJT+exoBsMoijs4fHusrqCiyRVo6U2reNXZE0E4ksogJbEY3JJTZGl1ezjR02Ud98JpI2Fn4LvXdrJ/dHk/TFARTRtDJ65G4ULG4Y/PTqwBTuCaRvMOzeATH88fwGp29ODuJJyf+fKONQX3J6u39dSLS5v6CU1F+UNTfQtO6Nwz3sczHbPGYcN2DJphKNmedKZ4U3JRY/R30W6jgWDrB7/zCSz79GFG7raKk3TVvLe5fc2rC38K77nlADqGzM6+5jWKgXD+dSUlw9yfrEroReaiq8mjfi/RgAsZUeA1HHR3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=79ADleiq4tqzaXNjphA7BE6C5J/i0t6F/BUiIo/CxZk=;
 b=yB59X5oHGJ8DeVTjYxk9DFGKKYZK+dIn380p/8f+lILX0vbY76DdthdhdOpAEVrueoHo+ailBpBqrN28Ast4pQr4tJNEntsURVrv+OF+jfnpFmlYxt+eHOHtmMWWQz0FiBkEedP+RbEcDEK/Qkhxo4PT0cmr6Opvpza3tSLuk8nTFxCuqP2zBVvrVvxNvdCRyI6+E3Oy5fLUsGgDQxASBzr0OLfdxW4kvUacKA+Pyxz6Wo7hcdtKAAKSX3jLk6Z3RRia7co9M/GnELWk0ub39gaFbRBQyNyjqXQZwZo2hsoqSqBRNO/8y9UMBA0VzIQ7K1pyA+ONVyEeA2rixt822w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA3PR11MB9445.namprd11.prod.outlook.com (2603:10b6:208:578::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.15; Fri, 28 Nov
 2025 13:22:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 13:22:24 +0000
Message-ID: <3d24eced-5cdf-45b7-b5a0-f0b2d47ab3cd@intel.com>
Date: Fri, 28 Nov 2025 18:52:18 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 13/17] drm/i915/display: Wait for VRR PUSH status update
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251127091614.648791-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0269.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA3PR11MB9445:EE_
X-MS-Office365-Filtering-Correlation-Id: fc9effd2-b68f-4875-f3c7-08de2e812b32
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MVlTNUxhSkxISGVVZTB2dUJuSWl3SEdCdC9NSjJHR2dJK24xMzF6T2FZWlhL?=
 =?utf-8?B?QldZTWpaM0JoTTFLdlkwb1dRNC9TbmZOb1lXZFNDcWNucE1CaDJBcTZwWkJE?=
 =?utf-8?B?TVBpVmxTYjRWODdDTTNWeDdzQ2pSOUJWeVZMbGhuVzBDT1U2WlRvRSsxVFp0?=
 =?utf-8?B?cmVENU5abDhHSERkTmJSVDh4R2dSVDlKNCt6Z0thNHZPVW1CZzVWTEUzMllG?=
 =?utf-8?B?Qzg3L1BEdFZFUlprdGpNQTBoTmg4L1NHOHhaeGcrNmhWVzd5M01xeDN5VEVa?=
 =?utf-8?B?cWJ5b3JmenlUVTBlMXVWMzJqMjJkbExTbmJZbnBEbzArN2J4dnJSdUEvend5?=
 =?utf-8?B?L2JsQlVqRlVnWWF1NGk3WkZmbXFqaUtsejN6NWEyZllaY3dSV3JXZ1RFMUF1?=
 =?utf-8?B?bEVLcG9XVSs1K3BCVXY1bVQzTmVzZzJjcWZOaWhETXVnZURSNElDKzFZalZQ?=
 =?utf-8?B?UDFDQVlUN0JxZmFGSGFiNnNaQjZTVDFKNnJiaGp6YUM2U0srRUN2ZXRORnJX?=
 =?utf-8?B?dURIMHZBZEk4Mnc5T1pDWEZ0dzdsVFU0TEtVYlEyM0dOVmlGaUZLUnhxeDNz?=
 =?utf-8?B?VStSSDlMc21ta2REVHlzeTVrNWx5RUN6UExmdytVektuY3prKzFMT2ttRVY1?=
 =?utf-8?B?WmVlRzAyVmNHMUFJL0Y1VTVycTBUeERaY3dLcHJ1bHdXdldEaE9vVlpCVEdZ?=
 =?utf-8?B?QVY0aTJoVTd6YStLeERUWXpKTlAzRkZuSk42UlpUS25Ba2txUXp0L0gvWElj?=
 =?utf-8?B?MUx3Rkw5ejlVYlc2ZCtLTWdEYTZxWjRFYzRSU2NnL2d2ZTgrWVI3bVoyOUhW?=
 =?utf-8?B?TGZHcVQvaWZJamNYdC85bFdqeDY5N0tJMXIwSHZxNFFUR3hBSTdaYi9RVlE0?=
 =?utf-8?B?WDYwaEFEWElzNDNBc1BhdVZ2Z1BjVnkwcmlmNnU1QUZ0Tk5ZMGQ3b0V3c3JR?=
 =?utf-8?B?ays0M09VUitHaXFsL01NYzNmblQ4QVBLWXVaeVU0WStMclJwZ0ExalhPYXRK?=
 =?utf-8?B?WDNMaWZYV2QxdlZxbFlrZjRXMHZ5czV5elVmd3JUUjRJWkpPK3M1RFZ6Z0hw?=
 =?utf-8?B?dFR6alFJSGVJNjh3MFpIMFRkVVQ3K3ZuNEhHTkRwSk9zY1V5eGxWbVJuTzRX?=
 =?utf-8?B?TnJ6QzgrTFBpSDVpV1NIckV5NmxrYU1QemI2bXFybXV1MkIyS0V1S05kNXVL?=
 =?utf-8?B?U0NaMVdJWERNNThZaVhIRDFPTXBCOXlmK2srY3o3UU53TWZocW1lZVVFWXY4?=
 =?utf-8?B?SEIvbjBGdTdZNnlJZVlxZU9EQ3J1c0NsUC9KWjAzQjJxSGVES1JtMFpoT1VT?=
 =?utf-8?B?ZVdyRkdITW9yVFo2VzR0cTBkcDNvLzlTMzk1ZElyQjNsN0lTZjlsd1QrMWFW?=
 =?utf-8?B?UmJLd0piREpHNCtnOTlKemF5OXNjRjRpd3dSQnEwbURoVi9UeXRUeFpyb3lK?=
 =?utf-8?B?NW01Qk51TGFYZUNlbzQ5Tzl2YVg0VnluUmZkc2RYbmQ1OVhHanpmME4yL0U1?=
 =?utf-8?B?MUw1K2EzbC9LelZlalNGWEQzL0JoT3FMcFR2M1dTdDhSTncyTlJHYWp3aVEv?=
 =?utf-8?B?dXNYa2h2d2xXVFI3dDlJc1FBV3B4b2tNSDdJTWVVU2VVNldIWnFuQUc2Q0Vz?=
 =?utf-8?B?MFI0aDJKeHRaVFJGNlo2c29mOTNjb21La1R0QXQ3eENIRGRmTnhlSXdMem9V?=
 =?utf-8?B?UHNWOWtyemRkL0NTQm1uY253QjVlcTJXWVBtZVR2eG12QjdyWG5Ndi92OVhM?=
 =?utf-8?B?M1JOVjZSZ1VMbGFFNlRkM05rSmRTMzMzK2o2OVlZQlplTVQ4dWEvN2dLNDlo?=
 =?utf-8?B?ZC9LSjdhUFJUOXppUnZWUi9PMC94LzM1eXFWUTlsdXordU10YmM5MWxUeUU2?=
 =?utf-8?B?YzM2S3Rab1BkNGNrdk1lNGhxQW5idndHR21jVnhqWHhuNmFSS3lROVBUeUVM?=
 =?utf-8?Q?r3B6CUw+LSRaPsjTdXodBpWjN4xvzz8p?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tk4wZWFmbFlOUzJRSVFvenlBRjZQTGQ0VGQ5eXJEOG02L3dSWlNoL2JFMlRs?=
 =?utf-8?B?cVA2anBpcDVRTXplSXl1Q0MrSk10SDAvTFJkQU5SZm0vV3BBVnJSckVvVUtS?=
 =?utf-8?B?bU45UVAwdWhXajZEQXlHWHcrR1VBTDFSVjFWaTIyTWszeHJ6QkJTUkVBR256?=
 =?utf-8?B?ajJyb1psYjNIVGtxNVJ6Zlh1VytrNTVSQzMwcmVOamV6dklkWVdPVTNQTng1?=
 =?utf-8?B?elUxaGhuWXp0dTYzRnNCQlVQbTVJUEZGY1kvTERnUHJYUnlabUJzamN0N3Y5?=
 =?utf-8?B?VExmemY4blBuTnBoWCtoYm1vS1VUQ0xvT0NBS2R4ZDJtYzRhWVpXK2R4WWlG?=
 =?utf-8?B?UVpNZ3UwMUFGYUZ6TXdkbTl1T0NPd2p5aXV1Sm9YOEV6MC95Um9jamVMTkR6?=
 =?utf-8?B?a1pQLzhnWTJNRlJhMy9SVlZpRERvcE9SS2Y4V3NNN2ExMExsNDJGbThBRm14?=
 =?utf-8?B?M2RFMjdtTFRkUGRVdnp4S0R3Ynp6b1U0TVpyZ1h1eDdlbkZBWTdwVmdYSUdH?=
 =?utf-8?B?WXYzem82c3NTUjZrMmdPMVMzakVFNTEwdEdTT2dCRm5lWG5SR1huME5EcVJp?=
 =?utf-8?B?cHNMeUl4dnREeEcwQkg4UHFCL1R0WENmc2pyUVJENEVCRW9XbUpKK1VjZmc4?=
 =?utf-8?B?bU9nczVpSTlBeWFXK3JTUk5vSlduQkdKaXdLdWMxMEkxb3lLZEk1aDhQc0Ix?=
 =?utf-8?B?MGtGUXhuTGtsdUJ2SjMwd1FMeFgwendLLzM5akRwNWk5N0lRVThqR3Fha1gr?=
 =?utf-8?B?dS9EcmRiT3lCazVzMXEwK0Y1eVVndjJVU2IxRDNQbGxCejZlRVV2T3c1Ykwz?=
 =?utf-8?B?OHZ1SDRUWi9wN2lGLzRoaVFSVWJTdnVlNFh5bWk3NmQ0UDltcm4rMWp0REZN?=
 =?utf-8?B?UkFsMDdWOUFtM2lVZWZIRkFJQTVqNGpRNUZhQWh3RFJsWjJTODhoallTQmNE?=
 =?utf-8?B?b3JjOStkeElHR0plbW1SYWtzdGFJUm5wSGl3RzBpL20wQkdSdHhNMHZlc0FD?=
 =?utf-8?B?UTJYRGlsVFl4Y0QrZGlJWnhkTks2V2ZuTHpvZ1F4RS8rOWc2MDBmb3FMWWZV?=
 =?utf-8?B?cFlFNjdtT0FKVlFxY2JrcHdxQWYrdU5MYTFnbENiZzlmU1YwR1NqbUdYTGRo?=
 =?utf-8?B?RTZnMGVQK1U3eFZFTTg3RndRK2t5bmg4amVlTzBEbC8zVjNpeEgzbmR2aFpF?=
 =?utf-8?B?SGdXMGVSUERJTVM2WHJPYW9lSm5ERTlJem5FTmdOZlB5N1AycVhxU2M5MU9M?=
 =?utf-8?B?QXRBQ3NTMUdhRWFKeXgrMXA0UWhkWGhGSkF1L3RQeDBmbHhjZW40TXQzUGZJ?=
 =?utf-8?B?dE94YStucjFmMTgxZkdRZ0dMdnRtRmt5RFZVWCt3L01zcis1eU9xMmVEMjBZ?=
 =?utf-8?B?ZWVyNC92aEcwRFVQVmtDTXgwTC9LSVIvZXJiV1VmSHh3NDRwOGcwQVJEU1Nm?=
 =?utf-8?B?VGFldktmVWszSUZ4YnpIV3lqbStBSXNVa0IwV2RZT24zWjRPQmxia1JlNElS?=
 =?utf-8?B?Y2IyVnZBd0gxZ0Y1eXZEQXZzdlBlUjI1TjNxRmtRLzZjQVUrTlJRNTJvZjh5?=
 =?utf-8?B?c3BBVFNHSDA0ZFNXNlp1TXJHVTFLaXhaREp5Z2IwV3dqUGR6TGFCUld4OWRm?=
 =?utf-8?B?QnJYZitNbzhzT01RblhWZ1pqYjAxUCtDSm1tOWxLSVEwU1MwOHNONjRCUFBU?=
 =?utf-8?B?ZXViZ1dyYmk5RURwbmhVMFNCRUMzRS80WFIzMGlVZ0haY3dxaURVbkZxdzZm?=
 =?utf-8?B?UXlwODVheWgxODVKc2JGLzFBdm1lQVZjSUErRmlqcW53eml0Y2dLSzBhaDd2?=
 =?utf-8?B?aFpUWENGUDBMeDhkUDlNMmRtbURaSEVWL1IxZ1RVMGxOQ2lTcXIrTysrdkpX?=
 =?utf-8?B?eU1ZeERmWTFLcWdMMDNvY1U2YjBhQjhiS2I0QkVyVHNSdWxGcG9ONXBibVRq?=
 =?utf-8?B?RUxySjhqNzVmWEFKME9nTzhrdEtuRjFzSGNQdTJ5djBiU3d5Ujdrc3NkYnNV?=
 =?utf-8?B?bE9mampEVlA5Uk96am5pUzdpbnVCZ0lZT2tmVWk0SUd3UmVKM3djcFpzTVJy?=
 =?utf-8?B?Q29DSW1iRzc5TnBYVFRRdE5Pdkh6TEZUa00wOVNZL01LVklEemJjN1hUVlB1?=
 =?utf-8?B?ZWk4bWZSOVZydG03OW5McVpxZTRlQ3ordTB3QTJvZTFwa3kxZnR0THMyK3lj?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc9effd2-b68f-4875-f3c7-08de2e812b32
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 13:22:24.7021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ytKl6RDhuenz7cHhTb6vZDCN4Lbi5F/OLvFpQQTxkBsVyCb27I2M9hIDPTIleqn2ipXlDCCPs7gbGg2uqZ4UewDXd3y83zuyg0+Dz0OeSYs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9445
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


On 11/27/2025 2:46 PM, Mitul Golani wrote:
> After VRR Push is sent, need to wait till flipline decision boundary
> to get Push bit to get cleared.
>
> --v2:
> - Adjust delays to vrr vmin vblank delays. (Ankit)
>
> --v3:
> - Change intel_vrr_vmin_safe_window_end() so that
> intel_dsb_wait_for_delayed_vblank() uses correct delay. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++++++++--
>   1 file changed, 15 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 11f06a5b854a..e5cff3892cb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -1081,10 +1081,23 @@ int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
>   		return crtc_state->hw.adjusted_mode.crtc_vdisplay;
>   }
>   
> +static int
> +intel_vrr_dcb_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
> +{
> +	return (intel_vrr_dcb_vmin_vblank_start_next(crtc_state) < 0) ?
> +		intel_vrr_dcb_vmin_vblank_start_final(crtc_state) :
> +		intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
> +}
> +
>   int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmin_vblank_start(crtc_state) -
> -	       crtc_state->set_context_latency;
> +	if (crtc_state->vrr.dc_balance.enable) {
> +		return intel_vrr_dcb_vmin_vblank_start(crtc_state) -
> +			crtc_state->set_context_latency;
> +	} else {
> +		return intel_vrr_vmin_vblank_start(crtc_state) -
> +			crtc_state->set_context_latency;
> +	}
>   }


This can be simplified to:

  int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state 
*crtc_state)
  {
     int vmin_vblank_start = crtc_state->vrr.dc_balance.enable ?
                 intel_vrr_dcb_vmin_vblank_start(crtc_state) :
                 intel_vrr_vmin_vblank_start(crtc_state);

     return vmin_vblank_start - crtc_state->set_context_latency;
  }

Regards,

Ankit

>   
>   int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
