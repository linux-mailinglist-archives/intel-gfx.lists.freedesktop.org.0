Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C140391782E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 07:33:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D0410E76F;
	Wed, 26 Jun 2024 05:33:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KvwXhmSA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A8510E75A;
 Wed, 26 Jun 2024 05:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719379996; x=1750915996;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HMb4LgoaFT9yxuVtL5CXG4fqsK1xSrczVtvOjRDgsZs=;
 b=KvwXhmSA+7Gs+rmXMxTsy6szR11ol3ViNHxrsV47YmjxQiiSxL8LaDoo
 IrXoseYqNBWOVmHNwoJzHDx45oVGrzA4QStSMaEnf8EzfaD2vDHF0XiGg
 29yTPW5YAidU4VrZZDyk27kq4DRs64qU6J3lqFW6eAtEFcCYE5thCJeJe
 hZ4YLSgaS2z3OPY4Rp879W2PTJ77ZyZmaBVqTxBhFIZqZPiN2WMYn4iQh
 0lqRpxkQPBMIp+5b2L7/nzLoMjRrXxjNOg4TEbfgX8pCkljO8CrQI+dRm
 atc624o8jyF/LpQ/bryC2Jhf5/PPNBODj0Oi7N3ni50IoufYG870losKv w==;
X-CSE-ConnectionGUID: vpG6eT3VSp2/b24wsy+zoA==
X-CSE-MsgGUID: /wqlBN0ASzW6y1tqVBDOiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="16560197"
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="16560197"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 22:33:16 -0700
X-CSE-ConnectionGUID: zebl/U5fRuKk6r3PkW/0Tg==
X-CSE-MsgGUID: eh2RKnu1SsOsuFKobOtx/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,266,1712646000"; d="scan'208";a="44320352"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jun 2024 22:33:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 22:33:15 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 22:33:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 25 Jun 2024 22:33:15 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 22:33:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=blwYvnDnj/nfQ3yqD7JHXntPK0cGspQ36mNu/VhwSqLB1YS9JB+Wx3nhzP2EXPAOnE7A1TIIV+RTE29FDhUaUAL4PvGdkukGXtKgaVoanmTk6S6SOF1gCgFkxY/pizEce0jvo0chsw4xfff/y8MmWdAHysj0y+baQA7NiDtamRJvA5rxUesSWcbKOdQq6a8ZL18ScTPHGlCV+VOsISTMmQO90+jfviAh/G3d9MGeA1HB2WB+SlQ7dops2GUr/F7dVLZQm5L4cEqq6ZKD6IKESMZKv3Nwwvy44zBCZk53lOBZI3ewv4vb7hV7wUFMwtNiEak++Mfe056/73LRAIOtsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80RD0k5wrPLuQCMYsZxbPXvL6etwRKx7LKa0tEYdQSM=;
 b=XCcXUHUmp05V1R3S0nGlIn3o1QyBx/KGW+VBmEUdb3qMLbqGjtMPqkYZvQwfNuk+ENIqQxib5NcY4c6W2Q87F87XirlcgRMluNcwPTbADB3nwDP7kkddoJQb/tJZso3YO1jaFljaTgkmLBTItuHKob11tp7OR74iogc+vckdxVB6Pfd0kRL3uHJH+QzAB9+AK5ilYk0FUznxOL+MZYq/o1we8PoLBRDWh8OBC63L+Poj+UxmFU5M1m4ypJvmokXkJYZf0buqzpB1gNLlpKlIMaUX1i+YoQZxegSy/mxz+D13JOqPtU+hRoQkhRbfX6xc4q4Eoomqa99NGU+xhbzqHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by SJ1PR11MB6179.namprd11.prod.outlook.com (2603:10b6:a03:45a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.29; Wed, 26 Jun
 2024 05:33:12 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%4]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 05:33:10 +0000
Message-ID: <c7624206-da33-4bfd-877c-159b4a8af89c@intel.com>
Date: Wed, 26 Jun 2024 11:03:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Skip programming FIA link enable bits for MTL+
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
Content-Language: en-US
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <20240625202652.315936-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR02CA0045.apcprd02.prod.outlook.com
 (2603:1096:4:196::21) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|SJ1PR11MB6179:EE_
X-MS-Office365-Filtering-Correlation-Id: 78bee2b0-f726-42b6-ad0e-08dc95a176cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|1800799022|366014|376012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckZ1VFZ2K1drUmd4ZUk5bjZFRDBvN0h5MlRSS0FGNFl6NXVMRE9ZSzVKUVht?=
 =?utf-8?B?dVVXNHI5RHBDQVNLRkwwbnNVMEVWck1XQkUySFFFbXZ1V3Vhbk9WelFaSDFQ?=
 =?utf-8?B?TUVzMVdPOVl0dzY4cWF1c3lwWDBkc21kM3luWk5pUGJpUVFicVJROWhEbEZ2?=
 =?utf-8?B?VTlVUlpGeW51WFM2VDRVczl5dFdRVGxpa1FwT0lheHJ1S09mK05jR2w3cThR?=
 =?utf-8?B?Smt3d2dIQjlSU0J1MmZPRGJvQXA4a2JrZjNJV0lFQjhoRC94amc2RGpPdGN3?=
 =?utf-8?B?NlFUVUFBRTZDaCtKdE1ZWFc3YVprVnorOWxqb3EzOUh4emZLSEp1Q1lPblcz?=
 =?utf-8?B?bkQ2UE5YWXZHbkRUR2pOaER1dmlLRGk1N0hPQU1RSkM3Wk1VS2h0bUR6WVJ6?=
 =?utf-8?B?eWFSMW82K2JtMktlbDluZlNEY3EyMTJTSnAxemVkVFlqOUw4NUkwM0NGNmpE?=
 =?utf-8?B?WnNMdkNldFRUYzQ1ZlR0TFZhcDJnVkhqSWZYRGUybjV2T3plOTBFVGFPSEl1?=
 =?utf-8?B?V2hjTXE5ckpBckwrK2p5UXdFc2ZUbENvdVFDTEJTMWFYazI5ZHJiVm1KSEc3?=
 =?utf-8?B?T3VtZEtxVkpzMjhkZ1B5VDNtS0J1eEorWXQ0UHBmSFdRUVVldzg1RHF3RHp4?=
 =?utf-8?B?NDExKzNCdTVxMWhXM3pXbkc0Z1dIdlNLSTRzWDl2OVdvdUZmbDRkVVRaYjBV?=
 =?utf-8?B?VDFva09nejBjcWRGdy9yOUdSeFVtbkhUVmJhL3FyZGsvanBIQ01NaFlCbnR2?=
 =?utf-8?B?QU43ZWtEZE9XVFZpM1EzOTkvcVFHTm9qMnJNTDBEcHc4ZEZpTnFBYjVmbFB3?=
 =?utf-8?B?UjE4cXdva3QwWDRWOWxxQzl1RDVra2EwWDFSaVJGNE41WmJhM3VhY2J6YWY0?=
 =?utf-8?B?NGVad0dUSnFzS2JZRGpxM2QzT2VpbVVDUk0rTzdBMzVYeUdWTVJhQWpWeGky?=
 =?utf-8?B?K2JWYy9rNXhBaUxmZnhuLy9OOXJZU0o1Y3YrNy96WllxTElRS2kxeXFURGcr?=
 =?utf-8?B?Q2pwUWtiL0lWdmRza1oyL0VYTlF0aG9Od3V6Q1RoUTB2bGxFZDBPcjNQUWxE?=
 =?utf-8?B?R0JFZi8zNmxSdTJpV1R6TGhjR0FSNTJibEFkUWZKRlBOREx3Z2RreVdmWEpu?=
 =?utf-8?B?NkxUM0NOWml3MWVIQnVZS0NtTENFd1Irb2diS1lKQkhxQ3RjZDF3RCt6cWFu?=
 =?utf-8?B?Nlk5UmFpdFBCalY2TkdYRXdzZkRQVWY5NGhuWVF0WDZQUWZVZXo3N1pLSWNM?=
 =?utf-8?B?RGF6V0s2N0FDOEM0OXdtNXdSdHlHb0FkTFpGZ0NKQjh3MlBXdktycVFuV0dD?=
 =?utf-8?B?ZUlOWjE3RE81N1VlRFZ1MURTZjFidnNxQzVtYURsM0dYbTR1eGE0UzBzTURB?=
 =?utf-8?B?TnpjVndkZC9oZDFMb215YzIxc1p4dDlnSi9WOWdoV01XM0liVW5DTUs3MmNi?=
 =?utf-8?B?KzNTY21vdHdLaDhKRWpnUWlTSjgrS1kvSTVQQ2xDeXdDQWtFWkxQL21lRXBn?=
 =?utf-8?B?N3VXVHZtRzVsdXl2KzZ6bjlQTjRPenExL2tiZlFJbGtUd2taQjhIY3o2ZVJp?=
 =?utf-8?B?RWlxZkl4cmYwY29DL3VXbGwxbDZrRXdwNVI3c282NGpqblloTnFmZXlEd1RG?=
 =?utf-8?B?Z204eWNSVldqdkx2QlhTUkhucXZ6NVVHZzcvbmZDalRkaGRva2NEMm9iTjk0?=
 =?utf-8?B?N0VaYlpNTmhSb2pMMGVZYjFFdEpBSEZ4R0c3SDRzbjExTVg5Z056anhnMUNy?=
 =?utf-8?Q?bxWSV/GS+/VKvpXN+f1tyVx764uBGS6xL2lbJfk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(1800799022)(366014)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2NxRUhON1lvaTRkR0UxNnR1ZzZCcEJBQm0yQzRiZDhzZFYwMVpvQnFUaXhC?=
 =?utf-8?B?bVVjRi85US9WdS8wNlY2L3h4TkY4TUl3UWFGYTFwWTNzNU1xTFRWWXp2Kys2?=
 =?utf-8?B?N3EzNHVWOXB0QXk0Y0JldGpJMkFsZmFqb1V0cmdCT1Q5TFBOaHE1ZjhRQTNI?=
 =?utf-8?B?WEhUbzZPcU9LaDZ2ZDROM1c5RnVnZ1J6SllkbVVudmFRZXlxSkJkcGwvZjNx?=
 =?utf-8?B?TUZKOWh5N3Z2WFpMWlpxOXVmZG1GNStUakdDY0d0a2xORVJRY0NtZnRMWENY?=
 =?utf-8?B?aWNMb1d1UU40blN0QTI4VW1Sb0Y3OExIc1I5OWpHMENsNVRsUGNIQ2RYWU5t?=
 =?utf-8?B?TlJURTlQU3ROL1NTa29IMUZkSHBERXhjZmpyQmZNWDFxcnFGWHJ6Nnc4cDQ4?=
 =?utf-8?B?ckZZUDlzcWNUdmt5cEY1TC84Z1doT3gzckV3encxMWIyZVpUZ0lPYnM2d2tz?=
 =?utf-8?B?MnJ1dWU0aE5kWFlCUmUxT2tDSEJWNW5XVkphQVJ3Qm5YZDk2TVkyMlBSRmRS?=
 =?utf-8?B?U2JwYTVLNGNxWHBTVFp4Zk9kT2hCOWo3NVArMFU4ZFA4OWxyYWNrUnI2MjJY?=
 =?utf-8?B?b21QT0NNUktBZ0lpYUVFZ0NMM2QrclFMeDNQUnljTU9rQ1BhQVZCQWVyNWlO?=
 =?utf-8?B?b09sek5YOTNFMGNJNFZzOWVpK045ZXEyT0lLcExpdlhTMkk2ZmF6eW04VHg2?=
 =?utf-8?B?VjFON2ZLejlMQWhoMUN2MWtMczZmZUJTbW1ma1BKRDEwejRZU240KzE3Tkhk?=
 =?utf-8?B?NXFSMlRURkxLQ1FEN3ZDN2djYmVSWWdPY0pRYm9wV3JRd2pxWXdXNEpEbG5l?=
 =?utf-8?B?aWJyWGhEV3Z0VlF3STVNUDJsMjF3WEFldFNZYWRWN2hEVUVweTNITHpWdXFt?=
 =?utf-8?B?M3I1K1c4bnc2VnhtWTNTTVowSVJJN3crR3ZhVXcxc21JUUVMSjJQRm9sRE9S?=
 =?utf-8?B?TWc3Ukdic0p0amkreDJ4UWw0QVZyUmlIRjdmdXFtQU9DUUxlNHpMZml0TzR2?=
 =?utf-8?B?ai82SU9lRjhmWFM2Z2JqOXZKS3A1QzRwOGlEY2xsY0RpSUEwVEI1V2RoUWwv?=
 =?utf-8?B?WnkzVUZnb3J1dThzZVB3RCt3VFpablMxckMzc0wyaS8xTEJsT2NYSnI3c0p3?=
 =?utf-8?B?L0c3S1ZFY0x0SUtJSTFiYlpyU0MxYU1LYlplVWdrWm5Ba0pUMWxKVkpkM1k1?=
 =?utf-8?B?cnRoMm9HcitKeG5MV0F6S0NqOTU5OFNZL0xLOVQzOC9ScmdTcC9FNlRLZ0gw?=
 =?utf-8?B?VjViSk0xVUNTWW8xdkI4K0pFcDdmRGdvYzRCNkFQNWFCTC92NnE3QkU1S2JW?=
 =?utf-8?B?R0lKNTZXQWxDWUR5dGVYcDArYTNLM3hSVW0rZjRwVEk4eUxwMlN2VjU3T1RY?=
 =?utf-8?B?dktDbXJ6dnZPVUZVL2JhY2k4RjFLdmlyRWlscWdwSllBNXVVenNDeTRDMmNO?=
 =?utf-8?B?NFVzeXJ1WUVyNFJXL0Zld3dYY3lSdmUyNXRxb3Q0cEhjM3lCOGFxRXdzSVdP?=
 =?utf-8?B?M2VPY1ppWk0zS2RvWFBtUGp2N1VjU1dmVzRBN3VKcjMwbGtSWFVCbXVJeG9i?=
 =?utf-8?B?R1FKZytTNEhKWUNBamt4MmpPYWswb055aU9qTm5GVHRWY3R1VmY5bzlwNW0x?=
 =?utf-8?B?c3duQVdBSEJ1NEVpeXhodXltWDg3MVEvTkZGSHRoK3pUOUhVMDRyT09leS83?=
 =?utf-8?B?T0F6a3YyVDc0ekVYV0Z6emNUenplejVUNDJYa00wd0dJUVFXUitCL0xoTSs0?=
 =?utf-8?B?Y3MxeUI1Q3JoT1JzVENlR2xoZ2tHajhKZ3RBM2FwU0E2cGNCTDFtMWlCSmdC?=
 =?utf-8?B?WFFzNmQ3aFZ0ZHRzbHVXbW1ZZTNxM3d5cUh3LzY2aGFLM0psTWs3RGNhSmxn?=
 =?utf-8?B?RVlsNlJ6eWxjNm1zNmJxWmF1K2dGd1RsdVA0ZE5jRHdhTjhZQVl5M2Jjd0tM?=
 =?utf-8?B?UjJtZDk1aVBNYWFyR3lGN1RTZzYrOSt0aU1GY0FBZ1pheHVuNjdFTkpSQ29k?=
 =?utf-8?B?NGxPWUlXRXFqT241M0FTM2tUVnR0WnE0OGNjV2VsUzhDU2xwM2Z6VStpSWxT?=
 =?utf-8?B?RW1yUjlid044Y2R3Tzc1ald3UXNiRUtiVGdsSVN4RzJYUTBQbDA4VllVZ2Rr?=
 =?utf-8?B?U21taW9FU2Zvd20ySXRqdElBdFd6ZUQ2ekJ3M1dXaXVvNWlUYTU3Q29TakJX?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78bee2b0-f726-42b6-ad0e-08dc95a176cc
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 05:33:09.8221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nffu9JeXv0r2O20wdKHNs4hK+fMWEcveCsVmJnDm0W3LhAwUOu1J3E4gH0x20GzY1CryUqjc+kPRDod6NPu/kqNYdnIYBiY0BMx5+k0gass=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6179
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

Had formatting issues with the first review, sending it again for clarity.

On 6/26/2024 01:56, Gustavo Sousa wrote:
> Starting with Xe_LPDP, support for Type-C connections is provided by
> PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
> anymore. Those registers don't even exist in recent display IPs. As
> such, skip programming them.
>
> Bspec: 65750, 65448
We can add the Bspec (49190) of the last platform which had this reg 
DFLEXDPMLE in the Display Sequence, so as to have a better reference 
point for a reviewer.
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
With that,
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 9887967b2ca5..6f2ee7dbc43b 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
>   	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
>   	u32 val;
>   
> +	if (DISPLAY_VER(i915) >= 14)
> +		return;
> +
>   	drm_WARN_ON(&i915->drm,
>   		    lane_reversal && tc->mode != TC_PORT_LEGACY);
>   

-- 
-shekhar

