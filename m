Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B02D1FDDD
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 16:42:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E2910E338;
	Wed, 14 Jan 2026 15:42:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hsFUMLjb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1352B8985A;
 Wed, 14 Jan 2026 15:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768405370; x=1799941370;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iV5F27l5wKK6JgeMTxc6yqFrJx9wZ3el/z5G26rIzZA=;
 b=hsFUMLjb2Iy1mFixyuFOodvNqDDrD/1yk0JtM8sr3mLMwwddVKs+aPlp
 2xI5zudrUH5d+AvauZESsX/3VrYmmaPOhztx1uLUHJ71E0+U/D/wODIOw
 wHDCU24vLiKgvEfDo+ouDsGBri1yciRhYjrdUHecku5Y53U0450UzSM45
 3rno4ta3bxfwBzz1aOz1COluXdxzb72J4N3gun6wHx4WxgVoKc4L7lq+C
 j9cY5RQLwHNny+djyHMRC94rgZK2RVDbdyn1KNjBhecM4anKqM6Z3CH4J
 tQt1etTMiVxCgD4M5MbFZ4KNrJ7znCQMCoj/fwAG03SxKJxZ8rdG4mI08 g==;
X-CSE-ConnectionGUID: kOzR5ZsIRcO+EmmXdA3sGg==
X-CSE-MsgGUID: 1rkZTUbsS9iCgTIPG7/emw==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="87284485"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="87284485"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 07:42:50 -0800
X-CSE-ConnectionGUID: idkfc+QRSGiqfvYq4kh2zw==
X-CSE-MsgGUID: feGmBy1mQeyew6Y/hyL/pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="209216278"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 07:42:49 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 07:42:48 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 07:42:48 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 07:42:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c+gubV0nYnGAhUNeL7tGPAaLQYcP/T//taAd8g4mIJslXO/Qon15Z9plrqTbC7EcSTK1rZ0TO9gIO2uoaimP8la8i8i0VbncTR19ahfpEibo2iKJOM6mhFWkuFihZTH/xO7f6z8AotjNgBTGK5yeovQQXhXUndPm57fJeGw7vX/IK1nIEHyWLDRzgdJmTfSMpaC1ziX42GN9aUPI+/zSUrGi9Lv/5usw2odNyOwculDxArBKk4S0+Wh0XO/m8KSTABnWyTskJBuqCL1DUPiWG0ZusmOGAk6p4H+jZCrhwhMV/1DpG4RfmcL3ijaz/G9VYn2Rw48Yuf41y+G185KXkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iV5F27l5wKK6JgeMTxc6yqFrJx9wZ3el/z5G26rIzZA=;
 b=ALAAYBa5YYQy46omvXygcjEX0/fbcHCYjUlhRVpC1XrYgqSqu5ahpvt8eY2QogG14NBxd1rUgVE4agADU03ofjhzdQ3RaKCDoOVrosnZe/q1DaQBcGUzaQJDds47SiUyIqpNRwUhM5J/wdTzO6zHduJeFXp2VUCxZMss7Pt761c1JU1A1SSI06a5xsKZxtI4vN9qmMOSR9Uv/gaPXEvPf4HAAHmQs7UojpHPl3D89HeT8DOT1v4yk3e7ZWIp1taT1KHMcqc5h7lRksN9ujAovt5VnJchGyIfma/lNuYqis/Sk8U1WXPX3BlXL2RKzCCZpZYrviEm6V5E4U3onftm5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 IA1PR11MB7872.namprd11.prod.outlook.com (2603:10b6:208:3fe::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.5; Wed, 14 Jan 2026 15:42:46 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::ce1b:9c1d:d571:9eb8]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::ce1b:9c1d:d571:9eb8%4]) with mapi id 15.20.9478.004; Wed, 14 Jan 2026
 15:42:45 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v2 0/3] Fix Cx0 Suspend Resume issue
Thread-Topic: [PATCH v2 0/3] Fix Cx0 Suspend Resume issue
Thread-Index: AQHchQfustNcHB4sqk+eWdYMxygJa7VRxaqAgAAI8VA=
Date: Wed, 14 Jan 2026 15:42:45 +0000
Message-ID: <DM8PR11MB5655CA92197880A87DBF7883E08FA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20260114034259.466605-1-suraj.kandpal@intel.com>
 <aWexzTR221l0F-we@intel.com>
In-Reply-To: <aWexzTR221l0F-we@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|IA1PR11MB7872:EE_
x-ms-office365-filtering-correlation-id: 2e199205-b191-4173-385d-08de5383903b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?dHhqR1NaaHZEMmh1V2RJS2kxUWMyYkJ1WUxla1hJZjA4YjQzSjFBYWNBb280?=
 =?utf-8?B?bHRlR0ViTVRSUDZ6eGYwWjJOMGY2REMwSlFRS2o1eDdyWGlkdXY0RHpKT1Yw?=
 =?utf-8?B?WTU3QzdEbUxwcE5mMFRWaU9iMmhDbk5lVDRrYnRqZm1oUzRITmcrWDdlSThZ?=
 =?utf-8?B?NTNxeFJCc3p3MHR1cGNNd2hGSHdrcXV1ZG9GVkZwNFFCc2hPbk1HazV3N201?=
 =?utf-8?B?TFVKRWlSdUNGZDJTSUpiQTVrVzFGNHBUOEZRaTE5dkZEbGUzYjhDZ3o3UFpB?=
 =?utf-8?B?Vzd6b1F1UmpBdnVhN2FsUDFEWHpHZU9mSlJMYU5GQlJlK2NONEJ2elkzUUJu?=
 =?utf-8?B?czNPVm4xMjVhYU9zT0NRQ0RYMFFsVzZzT05vUkVwRUljeXpRRy91c2kzaVhY?=
 =?utf-8?B?dFRZY1FhMnRmZkxEWk1TSEF0c3FUZksvbkM1UWE1MlBIYkNDZUl0a3VzN2pk?=
 =?utf-8?B?cWs5anA0S0xLZnNYV2c0RHo3Skdrb3BKNmhqSFdhazNRalZLMHRsNzZENzRr?=
 =?utf-8?B?OXdSTjFWZStDbmxUSmxzd043T0pLNXQvMlN6OWFMMldaaVlwdFhDSnB1STNL?=
 =?utf-8?B?WmVldGhBa0cySEF4UkE3TkZtcjQxWjUrMU1lREt4Q0lVSVRPVXlVUHAzSWRk?=
 =?utf-8?B?UVMvSllyTVZNQWROMGdhYTUyRFlMTHFPZUxOV0VEemFKUjdhd2pGb3JicUVr?=
 =?utf-8?B?dVZmR0tHbk1JMEUvaUZLSDEraklNWjFjdE9VWmphWVF5eVM4VFA5RjdVSERC?=
 =?utf-8?B?S2NZNVNHMU56amlMUFhKUENiNU1FYkNleElRZWlFMWFITVY2TTJxcVhEeERn?=
 =?utf-8?B?NmNGWlcyTnBQajd6Q1h0dmwvcThJZFFOSkRNMU5wOFhSV2RUMEF4YkRJL2Ex?=
 =?utf-8?B?Y2I5ZHYwWnpTaVRXL3JoQkVXVDcyYWM3Q0lLRDZxV0taVXNnWXpEZjU5QUJ0?=
 =?utf-8?B?UTcySVZWTy9MWU5mQjFCVDBUUmtpbC9BZFpwekNwcE1wMWkyYnAyNE41L2V0?=
 =?utf-8?B?MkI4THh0eWhZMGJaMC9GNTJGUnFzRmhmMmgrMFhCb2svSHZqTklUMzFVWS9u?=
 =?utf-8?B?c3drT2RpakNWZFlscXJzZkFHL21EdU1XWWh0Wkw1VENNa1FEbXFiY1NqNG1p?=
 =?utf-8?B?Q2NnR0hoSkNpNWZqV3Q4bUpRMnBaaXRvb3pDcm0rRjNKM2NKczlqZjQzWjF2?=
 =?utf-8?B?UVFjL3JFVGZKTDNCbWJzeitOVTdKSWdEOWhMNFpTaHVRbWg3R3FZbjNsTS80?=
 =?utf-8?B?YkF1c0RjMTRDWG9lWjhZbmt2Ynd2dzYvY0Njc0x2cWxNK1RCMWNidHRVTm56?=
 =?utf-8?B?UFB5OFB3RjIvWnBQejQ4aTV4OFU0TVczQnNySnI5ZExYQXBQcHN2SXdVRjZP?=
 =?utf-8?B?WGlHbUU2d3JJbjZUOEowRjFFN3VNYjBicUVFUUJRVXp6N285ckM1Q0lXRnF6?=
 =?utf-8?B?dDVyNVZ0ZWR2YUt6MEh1bUUrRG1tejlJcUVBNVBTemdJUEFoWTVucjVxWXRu?=
 =?utf-8?B?a25DZ1RuTTZvREZlbkd5Y0VMTkpoWUduZkQyNGd6djFPbFM0V1N6cDEyMHk5?=
 =?utf-8?B?b3VxWFZTUFNON1dTZ2o2U2kvblFRcmR3SUZwbnRLeXJJZmZQcVdOMjRSbERU?=
 =?utf-8?B?dG1VQlRwSnVMbS9neWpKd2ZzMTh5UTk5UTdmQlBtR2RUaHhHczRnN01XdG14?=
 =?utf-8?B?UmVjZVpwUWlWZmJnVjZYd2JmWGVrYnRybjhLblIyVjFVMW05UFRVYzN4S2RN?=
 =?utf-8?B?NncydFp4RDRuUXdaT1QzbDU2eG9TclN4UWFKTWZ0MUZXQmxibUpMQnAwWjdw?=
 =?utf-8?B?VmJoc2NQMUJEaE5NZTJ4UUN1azhGa0E4RHZKWHZNRW5RUHFJSjlmOWhJQ2d5?=
 =?utf-8?B?YjRaU2Q5WXVMR01HTnIzeHJ0aHNNWnp1ZWp3d1hxRloyUjlmLy9GcnBlQ2ZO?=
 =?utf-8?B?Q3dJQU5VVTk4cnI5NDR4NlVkOFlnb0owZ3RSakhYa2ptOHVMYjd1MUdtTlcz?=
 =?utf-8?B?SGFwaHNoUE9ZeWtKTVBYMExyNWNCRC9BTko4Z1psTXBqZEJwaU44S3B4dk82?=
 =?utf-8?B?Umg5N1ZkYUFub3dLR3VlZzBvNHB4OTVoQlNBK3NobFc1bmxjdDkzTGdMTlRQ?=
 =?utf-8?B?c2Myd0F5bXhuNXloei9lUTZWckVRUHBOem5CUitTZW1LY1h2K3dMclROQlEr?=
 =?utf-8?Q?M1L5enov20JK24TPnHy6EN4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elk2VlVEMnJYaENQMjRCMTNGMXQ1NTNmNnZ4a2pyaDZtaDBVbi9aaE1EbGdN?=
 =?utf-8?B?Z2xCUjZrSXFoUVRzcTl3WEg0eGpoNmlBT3JPM1pBSmFDQjI4OU5qcUJ6SThi?=
 =?utf-8?B?bWRRdVhjZzRISkpDRCtjek1JU0ttOE9UbU0yYkw5WXVOc0d1c2pDWER6c3Nk?=
 =?utf-8?B?UldtYzlDdUlpRldyUHRTaDZQbEJmQURhcFM3SzUyM0E2R0hDMnlzVDcyRWM3?=
 =?utf-8?B?QzVydlpiVzlVSlRpZHIrdDRXTno1NDZWd25Ncjl0RENHVFd1Q20wTEdESHlr?=
 =?utf-8?B?VkNzZHFYV1U3M0pldGtGT3pYZ1VvbDlQYXdiM21oUkpqMmJhalRyNU4wNlUv?=
 =?utf-8?B?eXp5TjhoZGo5V3JIcXg1dGhSdWZocGxGNGZkQk9mZW9EWGhYMWFFTnNVSWlT?=
 =?utf-8?B?N2w2RkN3dkdZMTBqek1MZncrdld3TnlQL0plQnk1QVVPUFRYTU8yeWJlblM2?=
 =?utf-8?B?dUhMZ0FHL1VVL1BPT1c3ZU9yUlhZYXIzZkhrVW80VDd5aE9Icmc0Qm5GQXhK?=
 =?utf-8?B?YWN4WFNmeFZUU0dDT3ZCTHFYRk5pdmk0eHdwa3BpaWthLzRjWGZxVlpRYlVQ?=
 =?utf-8?B?NVloenU0blkxNlhFbWxhRHpObWQ0SU55YnRBbHY0alJYNzNNN2pKaU5zTlV5?=
 =?utf-8?B?OHBpTUNsU3ZvZ1dvQnVTaGo3UmRET3dIcWR0RnZvcnRHcXN2Mlk5bFFMV2Fy?=
 =?utf-8?B?WUp1UDdLemEyRXFwdlE0ZWpSNUtPeXVRcWtsZ1BxTm16SEF6RWQ5NWNHeG9D?=
 =?utf-8?B?TFlQVVhxcHNXajVZRitWWDNFdVdMYlhRbWlnNUpuRE52WXpSSXR1WmpLSFhV?=
 =?utf-8?B?d1g2dWk2dnZ2dnVqS01wdGlqcDRmYTM1aEU1NWpRMzZyYlZqZGpyRU1TRkI3?=
 =?utf-8?B?WnMrK294d3orcGRVdjNSTjB3Y294cGh1RURPd3F1T1ZLV3ZtWE9nVnd1T0pU?=
 =?utf-8?B?UUNUUFExbzlSZjJHQ1NrWUprOUhRU1F2Y3pST2tDTXNmOFQzSUx5QTFXeWFX?=
 =?utf-8?B?S2RoYVM4dlVwUzl6OU94c1FuQnNFZ0xxdEE5WE0yc2VWVU5OTlZYRHh2azVw?=
 =?utf-8?B?emwrNDlsNlFnQ2gyMzZhazI2UVhiclFaN0V0dVM4cDZxRUoxKzRjc2FLcnZj?=
 =?utf-8?B?VTZDVzF6VTZtYVB5Z3M0VW90dWdpQ0QvUUxVYktkL0E0VXBPV2VFb29ZdVA0?=
 =?utf-8?B?UHpIQ2JoOGxjNXBLQk9LRHVFYjNjNzFwVWR2M08zc0Q3b1lUYURyYWkyYWtw?=
 =?utf-8?B?ZjdjWUR3aW9Qc2ZCM3YyNHVUdThLTE1NZU9JYzZ3SEpFanl3WURuaUNLRnRn?=
 =?utf-8?B?L2VDVk5nWlVjeXhEVnptUGlXRVptcWlTaktaSnRrTzRmYUduckZtREdtK29O?=
 =?utf-8?B?RFdWWmJIcll3NWUvNXVFZ3RBSit6SzJQTzZVTXpscjRBekg4VVlLMno2WGdO?=
 =?utf-8?B?NldmV1BCSEtXS1YvU3dvbFAxRW5Ba3dBdnpZeSswYU4yQUh1TEJBV1llc0U4?=
 =?utf-8?B?RUYvc2lQMVRGOStwTzdLREsxWTc0UFdza2NlcVpBT3pDdGV6RjVVa29rVGpo?=
 =?utf-8?B?TWVPTVB6SzNQNncxa3d1MGFPWUgwbVJGRlMvbFRUd1VRNnJaYlhrSTg4eGZF?=
 =?utf-8?B?Q2RNTS9yeXcwdEsxZU9uRUNmcU11UlVxM1dnM092MCtqTTIyeTFVWGhNVCtF?=
 =?utf-8?B?WkVHQ1BJczhia09QYkZ3a005WUVJM2lRY2JBbXYwblVQNGJjRFpvalY5T2hO?=
 =?utf-8?B?YUhONXg5c1ZXRWh4RStpd2thQ1VhZTUvUnNDcENqNEUzWWJXZThhU2dHcFho?=
 =?utf-8?B?YW9qNVNweU9WYUZZd2pwT2V4bVRDM0RtYVRKa2d0U1JhRU5mTnptb01wOFp2?=
 =?utf-8?B?dVM3dTRCQ2dGNGZlNkdsRTl5aWp4KzNOZCtTNjZVOHpoTUgrbkJ2dmlhQSs5?=
 =?utf-8?B?TkJ6ZURxNXJWcUVQQ2xGOFVBNlBpbXJhRUF6TG1tUWJGelc4MGxVMnBFQUZ6?=
 =?utf-8?B?cmZEdDh1ejBEN1NDcnAvcklHT2JSVUFBazZ1eWhqQ2pWZm1PWHR2MHFHMjRZ?=
 =?utf-8?B?dXA2MnhCTEhLTVNXK3ZuWVV5bUVialpWK0NlVnhjTVJtN2hsa2hPK0dGbzF1?=
 =?utf-8?B?NTVZZU1ZUEFQM3JyUmhIcDA3TThvaFkrZWc0VXBzZUY3cm9DVkJCUWF5TUNR?=
 =?utf-8?B?S0x0NG5ZdFVRaUtrQXZza1VtKzFLT0QwY01oV0hjQmY5OEVheEd4VlBOWFB3?=
 =?utf-8?B?Q09sUDUxdUQ5NHdxL0ZQTkZsamRpRis0MlU5SVlpN2t2RlRZTTdzVkJacUMy?=
 =?utf-8?B?OEZGdHlLUUExVFNoMnpCKzFXRDZoakZOOGJPUkdZWmQ2UWNEV0Jhdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e199205-b191-4173-385d-08de5383903b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 15:42:45.8646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s0eu+QkAimdQvMaQGjIVHOmkV5Jl3rzy52XG8mLzt2ezzEn5vgJr1a09SVuEiWizgMtgKIFIz/0YldLa7+YMYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7872
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

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IFJv
ZHJpZ28gVml2aQ0KPiBTZW50OiBXZWRuZXNkYXksIDE0IEphbnVhcnkgMjAyNiAxNy4xMA0KPiBU
bzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
OyBOYXV0aXlhbCwNCj4gQW5raXQgSyA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMC8zXSBGaXggQ3gwIFN1c3BlbmQgUmVzdW1lIGlzc3VlDQo+
IA0KPiBPbiBXZWQsIEphbiAxNCwgMjAyNiBhdCAwOToxMjo1NkFNICswNTMwLCBTdXJhaiBLYW5k
cGFsIHdyb3RlOg0KPiA+IENYMCBQSFkgY3VycmVudGx5IGhhcyB0d28gaXNzdWVzIHdoaWNoIGNh
dXNlIGEgaGFuZyB3aGVuIHdlIHRyeSB0bw0KPiA+IHN1c3BlbmQgcmVzdW1lIG1hY2hpbmUgd2l0
aCBhIGRlbGF5IG9mIDE1bWlucyBhbmQgMSsgaG91ci4NCj4gPiBUaGlzIGhhcHBlbnMgZHVlIHRv
IHR3byByZWFzb25zOg0KPiA+IDEpIFdlIGRvIG5vdCBmb2xsb3cgdGhlIEVuYWJsZW1lbnQgc2Vx
dWVuY2Ugd2hlcmUgd2UgbmVlZCB0byBlbmFibGUNCj4gPiBvdXIgY2xvY2sgYWZ0ZXIgUFBTIEVu
YWJsZW1lbnQgY3ljbGUNCj4gPiAyKSBXZSBkbyBub3QgbWFrZSBzdXJlIHJlc3BvbnNlIHJlYWR5
IGFuZCBlcnJvciBiaXQgYXJlIGNsZWFyZWQgaW4NCj4gPiBQMk1fTVNHQlVTX1NUQVRVUyBiZWZv
cmUgd3JpdGluZyB0aGUgdHJhbnNhY3Rpb24gcGVuZGluZyBiaXQuDQo+ID4gVGhpcyBzZXJpZXMg
YWltcyB0byBzb2x2ZSB0aGlzLg0KPiANCj4gSXMgdGhlcmUgYW55IEZpeGVzOiB0YWcgdGhhdCB3
ZSBzaG91bGQgYWRkIHRvIGFueSBvZiB0aGUgY29tbWl0cyBpbiB0aGlzIHNlcmllcz8NCj4gDQo+
IEFsc28sIG5leHQgdGltZSwgY29uc2lkZXIgYSBmaXggYXMgdGhlIGZpcnN0IHBhdGNoIGZvciBl
YXN5IGJhY2twb3J0IGFuZCB0aGUNCj4gcmVmYWN0b3Igb24gdG9wLg0KTG9va2luZyBhdCBib3Ro
IGk5MTUgYW5kIHhlIENJIHJlc3VsdHMgdGhpcyBpcyBub3QgcmVhbGx5IHJlYWR5IGFzIGlzLiAN
Cg0KQnIsDQpKYW5pDQo+IA0KPiBUaGFua3MsDQo+IFJvZHJpZ28uDQo+IA0KPiA+DQo+ID4gU2ln
bmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4N
Cj4gPiBNaWthIEthaG9sYSAoMSk6DQo+ID4gICBkcm0vaTkxNS9jeDA6IFNwbGl0IFBMTCBlbmFi
bGluZy9kaXNhYmxpbmcgaW4gdHdvIHBhcnRzDQo+ID4NCj4gPiBTdXJhaiBLYW5kcGFsICgyKToN
Cj4gPiAgIGRybS9pOTE1L2N4MDogQ2xlYXIgcmVzcG9uc2UgcmVhZHkgJiBlcnJvciBiaXQNCj4g
PiAgIGRybS9pOTE1L2N4MDogUmVuYW1lIGludGVsX2NsZWFyX3Jlc3BvbnNlX3JlYWR5IGZsYWcN
Cj4gPg0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyAg
fCAxMzQgKysrKysrKysrKystLS0tLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5oICB8ICAgNCArLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAgIDcgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuYyAgIHwgICAyICstDQo+ID4gIDQgZmlsZXMgY2hhbmdl
ZCwgOTIgaW5zZXJ0aW9ucygrKSwgNTUgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiAtLQ0KPiA+IDIu
MzQuMQ0KPiA+DQo=
