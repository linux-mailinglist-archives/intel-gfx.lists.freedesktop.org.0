Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDC59F687C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 15:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550E410E0B0;
	Wed, 18 Dec 2024 14:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UEhVPQGL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE5510E0B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 14:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734532257; x=1766068257;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aTtayBpDPQ4pZH6WyeEOgBRDDS3dyHf8SAvnmTweuRg=;
 b=UEhVPQGLVwPjb9TSoLZNv+FKcAK58ttT5VEKtXoo0zxxyHYzc6G4dmmT
 hEP8KjVQ2rs6AEw7fPXiGKArLuPcOghpcniqdtAfaL7/hvlnLf14EF80R
 nGpMPb3nbn+6LINTSiuszHv+xTE8xqSF6tFjTcW7T+CZzypZ5D41NX3Su
 NalU/imcHaCJXPTSalVIKNddC+qsMqipAYhP6sq1DmudpgJu6JY/Ccrlw
 ZlHcfm7stdDjnRXhSmfEUJIFWzXSkG1/GHlX/vorGzCX3ptgePbT7YyyV
 1uD8i39Db38qazBm3PIo9ZidzAG20E4HERaJRMjqNAGd5A6O0cLss2ear g==;
X-CSE-ConnectionGUID: oN47nX5/Sw2qDTOg5sB9Vg==
X-CSE-MsgGUID: kjpxk8GkRYKOnrEqMfWCGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46426749"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="46426749"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 06:30:57 -0800
X-CSE-ConnectionGUID: wuIDzgnfSkmJclFYNUyUYw==
X-CSE-MsgGUID: vPUI4SZbRpCCETYSKMQURA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121136712"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 06:30:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 06:30:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 06:30:56 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 06:30:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pw4RJYy7LIKmU0Ggmxhg7zXGglC5k6zf1BlAm9QsL/XTzDptMiMiM9Hy7ernUUUn6thh/6iScWMx/BouTsQ2prMlWM9F0K1UaeX5wxm//37lOVg4RzJQRPhI5q5DMwHesCqUdNe4NgQqGeQAEKZhk7kxCJt+ZWZRfISRiQAkAWjFpNVH0HP7wICo6N4qO3vtbMJz1sGtXaNW97AcdaIThs1KOPXnexmWDJ68o/KRDYaXWs74I8wQYKrWy0HZ5AFXVSc2tpYEwQ6VuB5hcvlvwQ5mQizoN/0jSXihWwwJquwxbeKvvKnMNXyW1rqJmQU758RiUQYMY6fYZoZXWn0mEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZHnWpwDk9/DPSV62eSKPNjAK4J3CjDA3bLNb56DwpcQ=;
 b=WVuNBuLbeEfvS1vvbIBbF+oB03HAwE5MKgffrr2fVKiXnyPQSs+OfDU82vgjAVnQm1T82h1B0KZAI78umdvNyEJsxqS1np6Pllr6Vm+veQXxAKS43Dfs5qPXRJPxnJKBHHQvOAmHifOSx6yNQgQ4IyZVRHgq4rj5ZcNNceHrL1X7j0Sus6H2wyyXZubywF6K0ST6v+10/EFQyG4eXzE7fk7RSmEazYNc0+1CmGWbjdS8l7psLyfaSitOasxtpK6kCNTYNzn05V3Tp66ySGfbAo38217EvMDyuKpo8o/qx1SOBLqP40vR/r50RpUBTVJDyb4iSwn9sRCdHUbhhEYuHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DM4PR11MB7376.namprd11.prod.outlook.com (2603:10b6:8:100::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 14:30:12 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8272.005; Wed, 18 Dec 2024
 14:30:12 +0000
Date: Wed, 18 Dec 2024 14:30:02 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <vidya.srinivas@intel.com>,
 <andi.shyti@linux.intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v2] i915/gt: Reapply workarounds in case the previous
 attempt failed.
Message-ID: <tmbe4t7tl7745vdpijiefbx22id2l63gfmqvvd53srxrfpufqf@2aus5lbmwntd>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <752zde6fl47boamqiccdhz2wmkxoee5rmzqucphvglhs53bclz@jlv5clqnxngh>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <752zde6fl47boamqiccdhz2wmkxoee5rmzqucphvglhs53bclz@jlv5clqnxngh>
X-ClientProxiedBy: MI1P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DM4PR11MB7376:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f8b3011-8068-4fa9-c10a-08dd1f707b2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?alE2aENwWTNHR3VaTy9GVisvOFYyaTJpOFFjTkp1NmNDTXgwbEpneTZLUFNi?=
 =?utf-8?B?cy9CQ0JnSFV0cGJ0aWVSZmRPbHRBK0tQdVlqVldzUzBXYm5KS25maDh1SkJQ?=
 =?utf-8?B?WGRmVHB6ZGFwNmUrbVRZVmxUQnNoc0l1V0hidVlmbmxoVjB0aC9PSG90WGx0?=
 =?utf-8?B?MTluV1dwR3ZMRDBYcENTUTJ2N3FmZTdZMjE4UHpjYWVtZHp5NDM4dTMzMjhB?=
 =?utf-8?B?Kzd6R1FMZnVKUjRxQzl3RFQvbUlLeGhpMFpTQ216MlpBUm9pZCtXRDJLZ1Fr?=
 =?utf-8?B?dGtUeXZYckxtUVkvbVFJQ3BsbnF1MDZJTnFrY3hyUnoyR0M4b0IxdDZMN1pQ?=
 =?utf-8?B?ZXR0dmRWaE1BSDBaTFFlV2pRTUwxRHdJVlAvUXNPdHhDWThSQlB5cklDNXFS?=
 =?utf-8?B?d3hobm52bEJyWm43Wnh4anNVS3A4bVJ3Vm1DNW12VDVtV2hPR09aLzRVWWtL?=
 =?utf-8?B?dDlJdGtKM044ZFl5V3FoSDMzQzl1SG9hckRxSU5PUUJqQm1MTW5hWGJzNCt3?=
 =?utf-8?B?S2lKSDdoTElIV0p1TGFWN1Z4YlNOYnZKNmIwUk5PNXRQS2xKMEZQbWdZWkJ6?=
 =?utf-8?B?cVp0MmhvdEs0OFlaeDNQQXdOdXQ0RFNqSG9JQVowc3hTWkJGL0NFLytIZTFz?=
 =?utf-8?B?MFIxOXlOdG4wR0xOTjJ2Mlo5cHp6cGkyazFBd21MSVhmVHFOS1FTemRoSlp3?=
 =?utf-8?B?VloweW9FaGJnTEowNDdxYUlUaTNkV25iUlc5RmZEOEkrejIza0xOTnd0TVZt?=
 =?utf-8?B?ck0rZDhYU3J5YytkczNlQVlwZ29aQThSTHZxVWJzWlNCNDJCbE5FMXQzaHpr?=
 =?utf-8?B?Y3NMSmgrTHVmNlp4blExQWNjTEY1WFB5MG5yZko4S1hLU3d3aDFFdXg5czhB?=
 =?utf-8?B?dGJHd01uK2hhdlFLUHhXUkJ4cXJLTE5teDFWUFdaODJZT01COCtjOHdEUU5V?=
 =?utf-8?B?VzVlSGhWUWZVUklrd3lqNkUvTTBrUTFLQ1AzbWJhWnpnVWp5clZiQ2xUTlly?=
 =?utf-8?B?Z3hjUWZuRnlNOGlSemlYQi82ZGlQVmZoMWNrMXUydllNUFdyT2d5dG8vdkF5?=
 =?utf-8?B?Z0JjNHdkeEF2UUtONDYvWVFaN1oxRUhoNWFMZTNQd3dpY2R0VXYwUEdNOEtH?=
 =?utf-8?B?MlFqajVlT1RKV25qMCtna0hDbkhqcE5OYWd5YnpVeGFobEFSRDdHbVpFcjFG?=
 =?utf-8?B?VXB4dVlkUll5QXVnejA2MU00OGdZbVJoNVRYRVZWSEw2aE1Kbk9QZ25iNGNN?=
 =?utf-8?B?T1lxNkdQemhyZ1FhZHV4NmRvQ0I5aXRPY2hMNWd6Y1FTeVk2bDh4dmFZdnAx?=
 =?utf-8?B?Qy9LNFdPNnovb01rMHJ0YUZUZUFCVXRISG45aklKU3loNmErYUZVbGpFZGhF?=
 =?utf-8?B?T2h6bS9MVS9rL28zSmx6aEVrRkxtQ3l4OGFKbzY1UFBjcVhZNDdjakdMZTZE?=
 =?utf-8?B?THVtaVhlTGJoS3ZSeWZUeW4yK0haT0xIVDAvQnRxQkhYK3J6eTVtdHhZaG5R?=
 =?utf-8?B?TUZQSUlrNEFJaGIrVENaOWN4dllWcUFSM3VQTmt1dCtpUG9Bck40R1ZrbG9Y?=
 =?utf-8?B?QlYrUFhhQ2tHVEJnUmQvWEJiVklzaGNzQll5NmUvRXJXNmN6RzkrdkYvVjN0?=
 =?utf-8?B?VmpaRmFOWDdObjdhTGpadXQ4MVZSVEVCc21ucEN4bFFwSVlXV0tEZFVWaWJB?=
 =?utf-8?B?M3EyRWJwSWk2Ym9VMXBUbkpjc2xTN3dycmxRTEw4aFpzTFF2bjNwTUxnWms1?=
 =?utf-8?B?aGw0NnZlcmwzQTZQQ01FRGIwWnUxdXhjUlh4WllxY3kwV3pVNHhXYU5Qaklx?=
 =?utf-8?B?eHdQTStsTnh5K3p4RGNlVDg3ZkhrTEpjU29IZ2didk41aUtOT0oxeW1wVEpk?=
 =?utf-8?Q?84GWemqShygDH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2V2NnhjdzE5cmNoNWJObmNNeDMvTnZGdjlwZHZPSVY5Mlpmd3Q5MHJ2SUhr?=
 =?utf-8?B?VjhJMEp5UjNQWitzVzVuRzJyNDdRT2hKVUxROGRnb1NwajFBK21TeFI1RkEy?=
 =?utf-8?B?dTVoSFBQRDUrN3hZL04vb1Fad200cDkwNUlUK2RjZDJyeVFkTjg3aWFNbkdk?=
 =?utf-8?B?NE5MejlDeWkzb1FuTVFqNjY4VVVjNkRMQlRFS3l6akRRSUd3bFZORFV2cmcr?=
 =?utf-8?B?SHpBM3IxZTExMmFmWjg2NWpqSlZzRlNZQzk5WStKSEs1QU5YbitONjFzakVR?=
 =?utf-8?B?ZVhuQVY5RkU2OC9iNUV4bFZzcmpDWjgrWU9tc1Vybk83WEkwQTdUTGQ4WE00?=
 =?utf-8?B?Rk9jNmVBQmtpeTR2YjdKRHcxcmpzQkNQalR3Ukd0MjgvclVpbUR5cnpLTnRP?=
 =?utf-8?B?V24waEp5UlBqN3dxSEJEaDJmeFJ0NGNZdlJoNFQrVjZoajdHTEdNdWNlTm53?=
 =?utf-8?B?QStXWFlHM1hhMjN5YWgyRitaSkJUM1BmS1dZejJMZjBkNVNXOGo0WFJlaS96?=
 =?utf-8?B?K3ZQMUVOdUVjR1l0eFlaM1QvampWMXZLdEVLU1FaZEVPNDI2Zjg5aEF0b2Vu?=
 =?utf-8?B?anFUOGR2TFpMMUxtM2kwdFJCUDZCSnpHa21QdmFIclJrUmtrRVIxZzFzb2px?=
 =?utf-8?B?NmhxM3NJSFU1ZkVzcTFsWFJhTG11T3ozaGpvSVhmREZEZWdQdDZoQlpPZFFn?=
 =?utf-8?B?RTZ1K1EzWjUvVVpQa1djbUQ2RStBT3RYcTBWeDZ1RHBBQzZBUlRjU3RvbVpz?=
 =?utf-8?B?ZXdZQTFXZEF5V2lDNEVHeWVQeTV3VWtTS2Q2TFUvYVZNRWU3aUFOSlJJUUQ5?=
 =?utf-8?B?SWZneHFsU0doTm9hL3JOYnl0OHVPT3l2bUU1UDR3UE1KS3RRS1lQWkV3M2Yv?=
 =?utf-8?B?Q25kWXZ2N1U5Zmx5RTA1Zi9MQ1dsOU5jakZqN2R4aUJxYllUWDZyVzB1cEd6?=
 =?utf-8?B?M3FCdk9YZkRvK0pjVHl1V1krdnB1Q2VuY012QzZ1Z29SQy83bGp1U2JYTVFF?=
 =?utf-8?B?SGdaUFp1QU5qZUd1azZpSGltTExyeGNBcnZWcnFNS25PVDB3d2FTV3dIODRx?=
 =?utf-8?B?b2l4dTRHRzU3SUwxSmlTc1BVVkhUTXhsM0xKK2RsYnVtM1VLT1E1Ylp6SE4x?=
 =?utf-8?B?M2xNVWNmUzEyK2xpbXovZTZXaSs5TXpudUw5TCtxSVlXYnVWVXdBU1BrYnlk?=
 =?utf-8?B?cHl6Q2ZuWDZGWXA5c1VYTnVkVHRqVjkvb0d3emxOSFZFRzF4VlczWFNhLzQx?=
 =?utf-8?B?R2ZSN1FFdG9CVTkyUlJqQVZoSFZ5K05nd21FNVRyVDhJbjh6NVowdzBzdXZP?=
 =?utf-8?B?ZklHQUdvYTVkVTdaZlFtYmtyclFtalBkRkluNHZEZyt1ZXdpci9Qb3ZmY2JN?=
 =?utf-8?B?NlJTOEl3bTFjLzhtMEZwaEdra3NWUFM2c0pPczFtMDJTSVpDU1JWWENLVGIz?=
 =?utf-8?B?MUpHYWRJZGkvL21NSFZ4QmN3SnppeDJod0RROG1MSXg0cVZVWEZFWnNFMWFO?=
 =?utf-8?B?YXBnNGhIN0pWQjRjdllMVitvajZEODBWeVIzM243OVVOUXN1SzUyK2lzcnMw?=
 =?utf-8?B?cE1abUorM0w0bWZkL2NNZXJ2aVJyQUxLMGhxL29NRk9YV0JSd0NHTHlTcE5C?=
 =?utf-8?B?UU5nUktMK2VPTEt2NVlMdm5rSUFFa2N5RkRIK25yd2FJMVFiNzNsdlcxcDhR?=
 =?utf-8?B?cHZqSEcxYTZkK0RwOWlNZDF0NkVLTXhGdk1jbVRPMnNCUzdyNExwbWxtaXVj?=
 =?utf-8?B?OVFWY1p0ZndTVkxFL2NkVlRwZEdZQjVrd2E1azRYWktweUMwTXUwU2hjdjEx?=
 =?utf-8?B?VDd6WGtjNjNvVWNNT1RoSUNwUWpJUkY2SVB0M2lveFZBMHMyUG9sdC9VU2th?=
 =?utf-8?B?Rzl2ZGZ0ZlI0dE04NVNFMjI1VkpxRXN0cHVsNTJJR3JXTGwxT2JITnJLVjN6?=
 =?utf-8?B?VTNNSnRpQ1lKYTQ1RnBUSHJ3bWU2amd0TWppbVRvYndka1c1OFpnTHlVaDRG?=
 =?utf-8?B?ZUd0QWNhSGp3NngyOWNEOFhRTVJPc1pZYWZZWGlJVDJtZkxaZWdUYVBRYThq?=
 =?utf-8?B?SG1hWGo3QTdwd2lUR2Yya2kwUnNnUGQ2cXhjQkgrUDZFRVl5RW5HeEhxWk9i?=
 =?utf-8?B?R0NJMnhhblVvVWRqZmplZWoxUEZORUx1K3JXZldqUCtrTjh1MFVsdFljNnRP?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f8b3011-8068-4fa9-c10a-08dd1f707b2e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2024 14:30:12.1454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8L7iwE+O/ZuPoUzuewo8en3HjrI2tAJh95yg8w1rrybmNO/zGYmtMO8zzdKYLbMAQRHhkjyI32nmK6tg6rqCQbNc6iwVXFmRipezOe/ZlbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7376
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

Hi Sebastian,

...
> +		/*
> +		 * Writing workarounds can sporadically fail,
> +		 * in which  case try to apply it again.
You have a double space here. Apart from that the patch looks good to
me.

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Krzysztof

> +		 */
> +		uint repeat = 1;
>  
> -			wa_verify(gt, wa, val, wal->name, "application");
> -		}
> +		do {
> +			wa_write_fw(gt, wa);
> +		} while (!wa_verify(gt, wa, wa_read_fw(gt, wa), wal->name,
> +					"application")
> +			&& repeat--);
>  	}
>  
>  	intel_uncore_forcewake_put__locked(uncore, fw);
> @@ -1793,9 +1806,8 @@ static bool wa_list_verify(struct intel_gt *gt,
>  	intel_uncore_forcewake_get__locked(uncore, fw);
>  
>  	for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
> -		ok &= wa_verify(wal->gt, wa, wa->is_mcr ?
> -				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> -				intel_uncore_read_fw(uncore, wa->reg),
> +		ok &= wa_verify(wal->gt, wa,
> +				wa_read_fw(wal->gt, wa),
>  				wal->name, from);
>  
>  	intel_uncore_forcewake_put__locked(uncore, fw);
> -- 
> 2.34.1
> 
