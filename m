Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1268C1DB5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 07:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E3210E20D;
	Fri, 10 May 2024 05:31:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ku1eLfqO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2696510E410
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 05:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715319110; x=1746855110;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=gj+PvABJmfMGM7qOHyfsCGXkQA4DX7ecBmewy9r0eRw=;
 b=Ku1eLfqOEWOrYXVidLFRKepB7aODr6KGJVAMcf3sB+f7r0QF1QG+N/D2
 fmY5bia/1vpPgj4nAoOH6KLjCsYAL3sDz7GQLPVMKtWaiEDaf73idxy0U
 rE7UTJ0Q5pJtxmROA3HqrW40CThgahk4MeiHxlvTKsWP9VhwS2aIl+LaR
 tmtO0SUZONeLMriKfKr9AvyUvQiiCn6qePL0B2QWO/hWzeqcZVYPu3GEN
 72tLbHvt0mj6Sv+C/brxi/nB6jss5uqF7vBTdLRrSBUNakOUkO3SfswLw
 MNI7pW9BiEo0rb4/bgU8Gd4RaWTFvTMqxe0sftsZ694pOUiCvzlApcmqi A==;
X-CSE-ConnectionGUID: OxtJ+o1TQfiiYOFmdApt3A==
X-CSE-MsgGUID: NCmqitmBTJOnJbMB4fLCow==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21878089"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="21878089"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 22:31:49 -0700
X-CSE-ConnectionGUID: eavsdQrGTA+jpr/zXP91jg==
X-CSE-MsgGUID: 2fGhsyIkTfq+d130u4ZjOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="33926843"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 22:31:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 22:31:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 22:31:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 22:31:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 22:31:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NJVd09CBUqJ2MYd6/ZmKRwBZV3YUp2bKfjoXUFp2fKeaPoZV5uIzVFbsuGs2lZ6YsjsYmtPvcXfVFuEs+RVmTi9ahSG6WTkTjaEdXx5d02jG+NT6R0Bku8iJ+BP74nWf5QLyB8N/HupXzb0bz3D0XyXulP1o4EjiKiDQ4TGQnMwk/VE0pPxmBTppH78NOcXh0FvVTspjFm4Vt/9zt3TNoWz4GAUXsFuzfaSzMkMgn2lJnLmKjQY3OztB+FLGiYvy4NUkg0Cb2ibSg+ibNQMpmrxZvDfBPl9JBmDSHVxDW6rqchspE2DBdIVVz0Yx2VkQ4lGjl331fEEJlLFlPge7nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gj+PvABJmfMGM7qOHyfsCGXkQA4DX7ecBmewy9r0eRw=;
 b=M6ZdxXbH/0MRH+V6QAAaK+cP4j/WDZ6OgCpxeMudhOT6hIHheMLrDYJv1N7Rgtk8wKCWEU23aMXP7Sz1Dffs6RdbcD0xXfGpaUzgAwkKLY+MOOLBHk9sj5xzenK+uX6O15sAlBCA/3O2jqLHGHGNpdHVXRQNd0ku/NAsqK56pfo+R1fLcQE6SF9Vw1fsFAVyE6mvhAwYnA29WIYIEg8kA2fgeW4NHeA6bS342LS/PBW6BzMedmlRyxj1i2ntAjH4XGbjjeDtNZ6NiznOW/1fYy39Jv0hsUmAVa9CLpD7PbhjsqrBiFpPRQMELU6KI2/M73JaPzDwwFF6zhRREkUzXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB7352.namprd11.prod.outlook.com (2603:10b6:8:103::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7544.48; Fri, 10 May 2024 05:31:45 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7544.048; Fri, 10 May 2024
 05:31:45 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v9 08/12] drm/i915/psr: Panel replay uses SRD_STATUS to
 track it's status
Thread-Topic: [PATCH v9 08/12] drm/i915/psr: Panel replay uses SRD_STATUS to
 track it's status
Thread-Index: AQHanSP8UFLfRVpzbESVbZqV9/hRhrGPDLKAgADvtQA=
Date: Fri, 10 May 2024 05:31:45 +0000
Message-ID: <5f3385ea3d24f886e6b9afa594b3c480055c27d6.camel@intel.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-9-jouni.hogander@intel.com>
 <BL1PR11MB5979EFFB7C5CD5CE34832255F9E62@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB5979EFFB7C5CD5CE34832255F9E62@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB7352:EE_
x-ms-office365-filtering-correlation-id: 9ef68c36-d8ba-4dac-5c25-08dc70b27b7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Q25QZC9GOUhSc0ZlNnFHTGJTbVRDWUZQWmpKS3pkL1FkSVppcTlVUW8yaHFj?=
 =?utf-8?B?V2pjbzdxL0I1dExBUVBzM2hUaU5xUjlvNno2UVIvaTFQZmZiOEpISWNiUGRz?=
 =?utf-8?B?ekF0MDA1N0Rxd2ZJcXJDUVN4MDA1U0g0YkhTRjFmMzNucEhXcFRjR3Y5NXNN?=
 =?utf-8?B?c1VjOTQ0ZitSK2dVZ3BqUVlETU4yZjZzamhiRUZWOU5DVlVuSXVEREZvdkda?=
 =?utf-8?B?RmhydW1mOStWeUlreHZSY1Z0QklMYm5ldTBpK0ZXeHRoSjNncG5VME5jdjRt?=
 =?utf-8?B?dHFwNHpaN0pyVlJJcUJ2eWtNOTQrODZwaFhJb09hdUlCbXNETnZQNFBNNFB3?=
 =?utf-8?B?WDRjb2syQmpQM1lsWjhaa01OQkRGRzY1MnVLMkFrYklCWndVQ2c2aEZkSjRw?=
 =?utf-8?B?L3U3TnNVZ0R2bjc5V3FaaERHSTBSNUJ4OFUrK3I4SmY1Z29FVXkzUXN5Wkdk?=
 =?utf-8?B?N0FVdFR6MzJxZ0ZIbjhtYnBkTXlrTlBwWWFiSnpGQVhxMTFhcWRPK2l3UDU2?=
 =?utf-8?B?YWNTMlVlOW01SDZSK0grcCtEOUlLci9zSW9hQk9JUXJTK3RTbEFvMUZBTlZG?=
 =?utf-8?B?YmFjelhrY25UMDZOaDlnaDZKd1l5VlNXUDhaSUNkSDRmREhPN0pCTVZGcGU2?=
 =?utf-8?B?VGRmMHRubmt4TndPT0lWd25ERUhiR04yNWRVK1BaTEh0NmlianhmUU5uc1JX?=
 =?utf-8?B?cnA5NERHZ2RlRjdkTERZRHd4SkJXTTZobFlISUpIbUd3cFdZOGlFRW1uekdj?=
 =?utf-8?B?Z1RlQ0Z6bU54bEVDVWhMOEsyLzcxYmxHYmkwaGhRdUsvcUpxbk9WQXNKVkl1?=
 =?utf-8?B?OVFDdjB6UlRncGQ4b3VjYnpKd1o3Wm5ZVnMxYllwbU1HSkxrNkVkS3pnS2tL?=
 =?utf-8?B?SmRiM1AzOTJ0b3NxV2NaWkc1Rnl5U3pXL041NFAvZU0xeXNrWXlMNHFydytQ?=
 =?utf-8?B?VkxuNGVLMUMxcmhOWWNnL3VpbVlVazBZSEQ0K0VRQTIyeWN2UnphcnJZVGgr?=
 =?utf-8?B?d1lFV3lsUXdoNC9LeVEwOUV1OExIa1lmbm0zWjMwVHZYdkdTaDNEYm9sZktk?=
 =?utf-8?B?UU0rQko2VFNka3gyRERkQWVnYVlMNFdRYzdLc09xTjNPSGI0bTdycHZ1YklD?=
 =?utf-8?B?cVdHa2VNS1lIa2RTbjcvTVpZMXRFUC9sc2d2aWp0N3o0R1VnTkVUS1pET1Uv?=
 =?utf-8?B?Q3FQYkZ5SzlPdWxHSVhnTjYvZWZCajZQbFJMWmVwRy9lU0hKMmdYd2V1V0tj?=
 =?utf-8?B?NlhZL0V3ZEsrNHlHZ1ozZUI0U2dGL1B5ZEg2ZS9NbVJYSGgzVENERXVvYlhv?=
 =?utf-8?B?aHF4L0J5alF3VmJ5MHNKODVLbHdTN1Z2Z05IcGRPSlZ0NjIrQkphN0drVmM4?=
 =?utf-8?B?MDhqNUtrS1pMYmVpazkxa3RpWjRrTktadC9QZzQ2ZGcySXlGZUNBYjNpaVpD?=
 =?utf-8?B?dUx0ZnhBWUxwSXp3a0hZcm8zY2V3RllrTlYwdW1IcXMwcjNFWm9IL3lwWWRM?=
 =?utf-8?B?ZFhjZ3drVkNBS2lMaWxkTWp4RFJwMmpNdVlsSS9icXJOYUZQSDlza1VCTTRV?=
 =?utf-8?B?S1lNSDF5T2JUbGhvS0JDRERKRmZiYnZta29SODg1QnpEam05SkRNaHhnTXFR?=
 =?utf-8?B?enpVNHdPTG1WSTFIRzR2bGs3b2Z2Nmo2RXVic1pXMERYNFl2Nm5rNkJRdkRU?=
 =?utf-8?B?bUlVZDIrKzcxbWM1ekhmL1hnVkU4aHBNdWRzeGxUYVViT2FtZG1TN2pWbnE1?=
 =?utf-8?B?YWhDamRyZzUrRnZEdWpHSVhubHMwVEUzcVViNWpHM2UyNXNtZ1pBdW1XMTc3?=
 =?utf-8?B?cEkrdmxLSU9nNWZxQS9JUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KzNkYXJHZkNjZ0pyN0ZOeHFvQmdxNWxyeTRwWWNpR0l4V2txMGErd1NWUXhL?=
 =?utf-8?B?ejFkWlNNVlB0aS8xQ2E1bXNNUDFWSmVVZDZsZUJ6WjZrSVhtd01SSCt6OWg2?=
 =?utf-8?B?YUppRktZNWQxQWhVdHlOZWtCQjc2anlPUDlKNkxvRFBIR01rTVM0NnlvM2VH?=
 =?utf-8?B?bVlTOUJMc0hTdnhzY2Q1ZE9rTGcxVnBhZVVzd0hGZGFQQXN5V1orQzJSbyth?=
 =?utf-8?B?Zk9HazF5TGlvSFBqSUtBYnhCMGN6NU5iM2VrVTArNk1jY0kyQ2VSb1VVdUZP?=
 =?utf-8?B?Rjc0TWZPUTVvS1p4Y0RYVk0wMVFtd003TTlucVdHK3NibVRLZ2ZnTjhkem9j?=
 =?utf-8?B?SnhGQjlKd2J6VDgzM0EybkhDa0ZsRG5vWGUreVpRSlRVQXlGN3ZlRE1jSjgx?=
 =?utf-8?B?UHhxcXlyZ0RGVURDT0txSmZwR2RHVVZZaFI4b3ZkUFZuZWNqNmZGUGgyMlAr?=
 =?utf-8?B?S21MYmkwSjBhelVGOEdzMjk2WHFsTXFGdkVnbnJkbDUzczlKeGNCQmJHYXV2?=
 =?utf-8?B?Z09GMXh1NEVjOS9SSUM1T3VyYmlRb0ZlbDlDWXlZY2VRT2sxcjRxb0RvdVRr?=
 =?utf-8?B?REZWN09SWW1Kdld2N3l2dnZFS2xRNXB4aTFJdmZzUmVEa2FNL3JjcFRsYWtp?=
 =?utf-8?B?dG0rNUd1NWxTeDdZN0hPb3JpdW5qSEVpdktjcFJzZ3lqcG05eHNJaytXR0Q0?=
 =?utf-8?B?dFVZZThKVEdvSndUbUxoOW8rYmZNNWxrUFZLRkt6eFVKSUI4R1J4M2crZWkx?=
 =?utf-8?B?bHB5TnpRN0ppRXVPdm1tejJtRDJyamtiekZicFE1d0hhbHBTbFhnd2RDQmQ1?=
 =?utf-8?B?bU9uTGNqaXJyUG9WU25hYmtnNy9DLzZyaW9vaXhsSXc3Vk5oUTQwOWV0M0pE?=
 =?utf-8?B?NnlINVJtZ1JlUVFkYStsU2NEM0dlS1pPV2p5QjhzVi9Cc3RyUTl3azdNOE80?=
 =?utf-8?B?ZWFlWCs5U1dWb0JEU3RPOUFpUkhicytvZytXcDJvQ1p0UU9BOFNLTGFla2NU?=
 =?utf-8?B?NDI3bGF2RjJhUG04VVlzcjBjWVZqNitKTGpDck1ud1Znc0p4M0xaS2c3aDli?=
 =?utf-8?B?YlMzTFR3MFJFT1cvWldMb3ZkVkVZMktNQWRsam5MMnJ3bW9hM3BEUHQ1Kytj?=
 =?utf-8?B?MUxVNDFHV2UxaWZNa0JpcnU4Q0dSd01hYWtTWmdOYlFWa29RQ2RJbVFGREhB?=
 =?utf-8?B?cTBYN3hEbnhIbWtSRVB5R0xTNFBTcGlIZEEvMXlDcVowTitDZkFLOUk2cnVO?=
 =?utf-8?B?WFZtOGhnb0w3S0xNcGY0TzlSbjR5ZUU5REVYUlFHd25MRFV4WW9VaGpmK1JM?=
 =?utf-8?B?dk05TVE5R0ltUmUvdi9FTFZsOWpHTHhMR2hiUFBRQXFTaWVXbG1hL2hleXVB?=
 =?utf-8?B?cmthdWQxTC90UWVnSndGZHNuSWsyZGxCR0VEWEgyMVVYQm1PemVNQndERDJQ?=
 =?utf-8?B?dWNrd0U5STFVVmVFTzhJUlpqK1dsdjlzZlFKZGZzRmxLY3RDL0ZqZjRselBj?=
 =?utf-8?B?WVpPUmJwSWhSc2phQk1WcG03OHdWRHZ1c01kaG1hTW12VVZOM0hNS0krM05F?=
 =?utf-8?B?QVh0MTRTRGxLYURrV2FEOWtwc0lqZ0dZZFFhTS95c3VrSGpUSHUzdU9makhD?=
 =?utf-8?B?aGhGK3djSlRMMnkvQnBzb0crNEpOVy9qZytiRjZmSFZCNVhROHRuVHROeGZx?=
 =?utf-8?B?cm9JTGZhSUlQZkM3Qnl3clljUXdOTVkrVStXSSttZGtHLzhsWGJhL1k0Q2tU?=
 =?utf-8?B?MG1ocFdtS2RnY0pGYkNIdVZTQWhRZ1NlcFRnSmJjSWhpdm85c0JXUVUzbGYz?=
 =?utf-8?B?Z2FmcEdEc1FNTzNyMy9YK21pSGRCZGhVbTVybTNBSXJUdGJ1aU9UTFJtYmJX?=
 =?utf-8?B?M3pMNGMvb3RLUlFka2JiSVdhYXM5WlBFVmhiMDhYM3RYdHJlSmpLWEY5N2kz?=
 =?utf-8?B?R3NXMlgrWUdNOW51QW9zMVlHTnV1YnQ5MElnL2poMXVmaHJ0VnFicWp6c1da?=
 =?utf-8?B?cDZ3WXZkVEhGSXhjYkZ1NjNCRjljVGpVMFVTQWw0S3BaZjFSejR1MzdpVUtp?=
 =?utf-8?B?UDBLRXBIWjJYUWFYQ3lTTVpYazBxTGtadDlZY2grNW1WTTU5ZEVDU0tzODZB?=
 =?utf-8?B?bllEcUZrdWNkTE5NTStTRFkxaWFkWGl0TGp2OERIVzNOYzhCb0VPblREaHV3?=
 =?utf-8?B?QVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A26DC3B76F0D07459AA56F1BD33485E8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ef68c36-d8ba-4dac-5c25-08dc70b27b7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2024 05:31:45.7565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9hQl8/0qyGYkaoi5YxeE36YFXhpnxwq5ooq5ly63GQEbkv5aifDDPeuNJHcHTzOjgyVrwuElsDxJxea6XO3ITt0v9pYKaX8Q20p5RXW7QwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7352
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

T24gVGh1LCAyMDI0LTA1LTA5IGF0IDE1OjEzICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IFNlbnQ6IEZyaWRheSwgTWF5IDMs
IDIwMjQgMTI6MDQgUE0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
PiBDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgSG9nYW5kZXIs
IEpvdW5pCj4gPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgo+ID4gU3ViamVjdDogW1BBVENI
IHY5IDA4LzEyXSBkcm0vaTkxNS9wc3I6IFBhbmVsIHJlcGxheSB1c2VzCj4gPiBTUkRfU1RBVFVT
IHRvCj4gPiB0cmFjayBpdCdzIHN0YXR1cwo+ID4gCj4gPiBEUCBQYW5lbCByZXBsYXkgdXNlcyBT
UkRfU1RBVFVTIHRvIHRyYWNrIGl0J3Mgc3RhdHVzIGRlc3BpdGUKPiA+IHNlbGVjdGl2ZSB1cGRh
dGUKPiA+IG1vZGUuCj4gPiAKPiA+IEJzcGVjOiA1MzM3MCwgNjg5MjAKPiA+IAo+ID4gdjM6Cj4g
PiDCoCAtIGRvIG5vdCB1c2UgUFNSMl9TVEFUVVMgZm9yIFBTUjEKPiA+IHYyOgo+ID4gwqAgLSB1
c2UgaW50ZWxfZHBfaXNfZWRwIHRvIGRpZmZlcmVudGlhdGUKPiA+IMKgIC0gbW9kaWZ5IGRlYnVn
ZnMgc3RhdHVzIGFzIHdlbGwKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVy
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDggKysrKystLS0KPiA+IMKgMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gaW5kZXggNWU1ZWY0MzJiOTMxLi44
ZjIzZGY1Y2Q1YTggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gPiBAQCAtMjg2MCw3ICsyODYwLDggQEAgdm9pZCBpbnRlbF9wc3Jfd2FpdF9mb3Jf
aWRsZV9sb2NrZWQoY29uc3QKPiA+IHN0cnVjdAo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2Ny
dGNfc3RhdAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX2Rw
LT5wc3IuZW5hYmxlZCkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGNvbnRpbnVlOwo+ID4gCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaWYgKGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKQo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2RwLT5wc3Iuc2VsX3Vw
ZGF0ZV9lbmFibGVkKQo+IAo+IFdoeSBub3QgdXNpbmcgcGFuZWxfcmVwbGF5X2VuYWJsZWQgY2hl
Y2sgaGVyZT8gRm9yIGVkcCBwYW5lbCByZXBsYXkKPiBzZWxlY3RpdmUgdXBkYXRlIHRoZSBhYm92
ZSBjb25kaXRpb24gd2lsbCBiZSB0cnVlLCBydD8KCldlIHdhbnQgdG8gdXNlIFBTUjJfU1RBVFVT
IGZvciBQU1IyIGFuZCBQYW5lbCBSZXBsYXkgd2l0aCBBTFBNLiBJCnNvbWVob3cgcmVhZC90aG91
Z2h0IFBhbmVsIFJlcGxheSBmdWxsIGZyYW1lIHVwZGF0ZSB3b3VsZCB1c2UKU1JEX1NUQVRVUyBv
biBlRFAsIGJ1dCBub3cgYWZ0ZXIgcmUtY2hlY2tpbmcgQnNwZWMgY29ycmVjdCBjaGVjayB3b3Vs
ZApiZToKCi8qIFBTUjIgYW5kIFBhbmVsIFJlcGxheSB3aXRoIEFMUE0gKi8KaWYgKGludGVsX2Rw
X2lzX2VkcChpbnRlbF9kcCkgJiYgKGludGVsX2RwLT5wc3Iuc2VsX3VwZGF0ZSB8fCBpbnRlbF9k
cC0KPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkpCgpEbyB5b3UgYWdyZWU/CgpCUiwKCkpvdW5p
IEjDtmdhbmRlcgoKCj4gCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXQgPQo+ID4gX3BzcjJfcmVhZHlfZm9yX3BpcGVfdXBkYXRlX2xvY2tlZChp
bnRlbF9kcCk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVsc2UKPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldCA9Cj4gPiBf
cHNyMV9yZWFkeV9mb3JfcGlwZV91cGRhdGVfbG9ja2VkKGludGVsX2RwKTsKPiA+IEBAIC0yODgx
LDcgKzI4ODIsOCBAQCBzdGF0aWMgYm9vbCBfX3Bzcl93YWl0X2Zvcl9pZGxlX2xvY2tlZChzdHJ1
Y3QKPiA+IGludGVsX2RwICppbnRlbF9kcCkKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIWludGVs
X2RwLT5wc3IuZW5hYmxlZCkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0
dXJuIGZhbHNlOwo+ID4gCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5zZWxf
dXBkYXRlX2VuYWJsZWQpIHsKPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghaW50ZWxfZHAtPnBzci5w
YW5lbF9yZXBsYXlfZW5hYmxlZCAmJgo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2Rw
LT5wc3Iuc2VsX3VwZGF0ZV9lbmFibGVkKSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJlZyA9IEVEUF9QU1IyX1NUQVRVUyhjcHVfdHJhbnNjb2Rlcik7Cj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1hc2sgPSBFRFBfUFNSMl9TVEFUVVNfU1RBVEVfTUFT
SzsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9IGVsc2Ugewo+ID4gQEAgLTM1MDAsNyArMzUwMiw3IEBA
IHBzcl9zb3VyY2Vfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gPiBzdHJ1Y3QK
PiA+IHNlcV9maWxlICptKQo+ID4gwqDCoMKgwqDCoMKgwqDCoGNvbnN0IGNoYXIgKnN0YXR1cyA9
ICJ1bmtub3duIjsKPiA+IMKgwqDCoMKgwqDCoMKgwqB1MzIgdmFsLCBzdGF0dXNfdmFsOwo+ID4g
Cj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQp
IHsKPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmIGlu
dGVsX2RwLQo+ID4gPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQpIHsKPiAKPiBTYW1lIGFzIGFib3Zl
Lgo+IAo+IFJlZ2FyZHMsCj4gQW5pbWVzaAo+IAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGxpdmVfc3RhdHVzW10gPSB7Cj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiSURMRSIsCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiQ0FQVFVS
RSIsCj4gPiAtLQo+ID4gMi4zNC4xCj4gCgo=
