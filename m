Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71618A1B559
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 13:11:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D92410E95F;
	Fri, 24 Jan 2025 12:11:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ivaQ9eWm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803B510E25E;
 Fri, 24 Jan 2025 12:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737720662; x=1769256662;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hb/2qFiCzrElXLqB87nWhYxnRbLfgC3wRnuhzr0ZH/Y=;
 b=ivaQ9eWmGFvqqzStbSgMt+Fz9R7PoMoUweWNMs2GDEbJ0vXuR2wPf3Mh
 0MEp7QjGDmw4AGpsyU/cG8W28sAtXWD9oZJcgbYRi6FMYEKf8EBHtisDR
 oMBfHXvHjTnzCSyH9Z81T8wGIAG849Uj14vaXxrQXfYty/fMcdeeSTnuI
 BF+sqS7Sbtnq5aNUIhoikv9SSOESHbhNIxtYEGqAibgel2I8T8t2GY5DJ
 8d10ZdcZEA2De7DNlnwg9ZAecOFMzpPPNUdv/MZfxi/C4dy7cRMQd211n
 9AnaReUx48AEwvVn7WOYYIRKEG8yqo0UNaPs+E7hjqpeQ6oId4BU2hXTr Q==;
X-CSE-ConnectionGUID: Y9WozlEhTcizAAKLmuOYxA==
X-CSE-MsgGUID: DT46RjymQ7+K2IdMvP9aPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38417198"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38417198"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 04:11:01 -0800
X-CSE-ConnectionGUID: ZH0kgnPKQeS6tKzWd6V7yg==
X-CSE-MsgGUID: eWGfTsDfSs6IBVB/6Bd0Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107877702"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 04:11:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 04:10:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 04:10:52 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 04:10:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VgJrj2W/D1dqWoZG7E+3e05Tgnu5JMlJhuhZc24DFf4WuB5G29qZqYfSFNr5fW7hTG6iKAi7Q15aebWK3k3n+ocYxsSY2utKw9TAglG27+PngBcY3uKZmyiGg3e7PQ0HwBAvj0JV7xCLwuH8MATujmc7ey1GVdEARxxqaY0mN+1Grb2Nv9fOMgnbbXJ79UPMB8In3IwOUU54sFenjvJtiqsvvySWUq7GMOf1E5qq4d8wDidq3/NNkbheYuHWvionUxQL3pbDpwhC/VXmxc6MnUxfJ+fjxfSF13rACgDp5V8U1Q5uFBkPzzlFU8YYnG36u+jNn2NP/F9on8mAuebo4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hb/2qFiCzrElXLqB87nWhYxnRbLfgC3wRnuhzr0ZH/Y=;
 b=nEbTaazy2wlpfgfCBI+kmw4C7Y4opf4EUVnOlalID4tKRrekO0q1jf/NHFDogcOKdKcD2FROElpVdmk7un1ufWHzxPJmk9mRZks5xHyG5t2FGkKfd1d58dHPaKELrcvMOpPMnDxTUrVctFk0IGNacNOrrNNv/7PBBgoOeK1DllZM3UZm7kuuO4BY6IzdJPz0jNVDri8JeFIKZu7lF0EsG/CHaSSS3yilWWmqzWTFwGDUijzsHEmlck/MCAPSexUYwaDYwXHdwv4IA2ZvUORaj3qiokGJH4zzqHFKIYf9o3VmJ01N7Eivr8kUQ/AR2QtJ47oD6nbRHbwmP2eumveAWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8377.17; Fri, 24 Jan 2025 12:10:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 12:10:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 12/13] drm/i915/display: Ensure we have "Frame Change"
 event in DSB commit
Thread-Topic: [PATCH v4 12/13] drm/i915/display: Ensure we have "Frame Change"
 event in DSB commit
Thread-Index: AQHbbk69jLVr7S+dSUy4gNNBG62tFbMlzb2AgAAHlgA=
Date: Fri, 24 Jan 2025 12:10:35 +0000
Message-ID: <e87846c38c99e8233b25f86583b361bf4b9151bb.camel@intel.com>
References: <20250124105625.822459-1-jouni.hogander@intel.com>
 <20250124105625.822459-13-jouni.hogander@intel.com>
 <Z5N83bbvxBKm4yEQ@intel.com>
In-Reply-To: <Z5N83bbvxBKm4yEQ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB7522:EE_
x-ms-office365-filtering-correlation-id: 107daaf3-49e0-489f-b5e3-08dd3c701be7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ekMvdi9MUmQxRWZQbnlReWRJZVBvZ0I0QVNIZ2lWWUtjNjhpekNPVGx5NXo0?=
 =?utf-8?B?aXNxMGRZS2huZm9HbXdBRFdTcUpZUDZLUm9tMlRpWTQyZnVSNWZMTTFKUE95?=
 =?utf-8?B?cWF5L0hXVURkNVg5Qll4OEcwS2MyZFRyRXB5K3NQTHoyc09qZDdEQ1lOYTZM?=
 =?utf-8?B?U2w1V2RFekNTNVJ0c2NqZk43SHVWQ01uWS9XZWt4YVM3c084UW5RV1AwOERx?=
 =?utf-8?B?WXJLek9ncmFOdW5xM2k4c2JCZzZLSUhXazFKVVd5cUg2Sy8vdTJ3aVJ0Mis2?=
 =?utf-8?B?VmZ4R0dUUCtKdWt2OXUwRUphZWl6U3Z5eGJkWFFETGVKcE9MczVwQThiaUpo?=
 =?utf-8?B?NjFzSDVEZ1FDZFc3alZRditiMjM2OG5EUnhmVlpGa240MUdEbXVScjFxVEgw?=
 =?utf-8?B?dC9YNnpIU2VYTGx5SmQ1Q0ZqZW5SRnB3Qk41cTdmRmhzOEI2SnBFeEV0d3V1?=
 =?utf-8?B?dUplYkJkaFEreG5wS1c4cGVzMDQ2QUlZTzIwTk85WG92VmpmakIwNStaZUlV?=
 =?utf-8?B?bFlJckdCcDY5cUl0UEhyZmNxam9aUWliSytYenFpZkxIQ0xOR0VRMDZmOVpX?=
 =?utf-8?B?TGNCVDlOWmxkZ3p6dFJqVXdqSGc0bVNzZ2hTaXRBWFFPRUh5dGNvblYvK2JH?=
 =?utf-8?B?LzZMS1VpTnR0ZUhaL3dSaGxEdGEwOTU3ZSs1STUzN0djcGpzTnJjeG9rUFdu?=
 =?utf-8?B?L2ZaeHRuTXhkelE4Y3ZGSGthbnNlaVlOc3dSSzJVNmNSZElab21QdXQxTEJx?=
 =?utf-8?B?N0Rkem8wdmxyZ1pndGhPS0JLY2tSN3dpdDhoK3NOQ09LNDdWRFR5YlhZVEJD?=
 =?utf-8?B?WitoSytueWgxeCtrQ0NBQUZQb3FIUnNQV1BRY1AvUVdWd2VpK0RHaU15Yytk?=
 =?utf-8?B?OXoyZTdIVlZiL1hzQTZUVDRkV2RQQ0JqWVJPNzg3QkI5M1p0QjhXbWhlZkFG?=
 =?utf-8?B?T05lUktIWi9oWXBSNDVRb1JGeXJVM3pORVFUYzNQSWRBYkNOaU9ud2lsZTJY?=
 =?utf-8?B?WUFJalNPbk1XOG81aXVPQ3IyZ1A2WlBqVjdmM1BGNlVVd1Q5TnkyZlpXTTdm?=
 =?utf-8?B?bWZ0eGwrSmpFckdoSVdrSlNYVkMzVlZHcldFelRTL2ZMZWY1dUFadnlxNWRm?=
 =?utf-8?B?TmdFb0hvTFBIMStKZHpIa0d6OXU5aktoeUZpN2cySkVtajlTV0xQSkoyM1RE?=
 =?utf-8?B?ZXlKQkhiTE5oWGUxck5tY2tZRldKc0c5QTBtRDlNNlg5bllPU3FRV3NJVzdX?=
 =?utf-8?B?T0xRczdtQ3JRUWh2cHBKdWxWR3A3bExNb0VXeEJ0UVFjZ0piVDhKbDdMcS9B?=
 =?utf-8?B?alNPalNxejJFNW9qSHNEMkR1RTRSWTVobkdsZ3o5Um5tS0JWWnpURnkzSWh4?=
 =?utf-8?B?akdoNDNpbm9GTGQzWTFoRnN0MkhSdHR3WWdsVUUwa3RyRzBHOXJtZ0R1Tzl5?=
 =?utf-8?B?aXZNNytHNVdaMWVDc2VQdWdsTlFkeUVzQmgzVkxoaVg0a0FqL2pON21NM3ll?=
 =?utf-8?B?KytSSHV5akdsRkM2YVJoUmhaamV2alhLN0N3Y3R3TkYybWtqNmkxL3Q2MEZG?=
 =?utf-8?B?VUd3OXZFU2N4ZGt5UUJoczFaenBUWG9kSjdNM21tOHRob042UVl2K29KcFdC?=
 =?utf-8?B?TnIrcWhnYVdWd3hyQlVpc255OVVyam1Xc3Vxa090aHhFOXVhdWFEMkw2OTVj?=
 =?utf-8?B?QXlpdWdXS2dzeU5RSHpiM291Wm9Yb3UvQXhlSDl4N3hhK1NFNmVITXZrbmor?=
 =?utf-8?B?RGphNlBvMExrRkh3MFhhZEFZTTB2Z0Nvc0c5K0I2djlDTEFmMU9FcEhqTU5l?=
 =?utf-8?B?WUJUamJLaHR6ejI4a1M4WWtvNVVIbTg2ZFhOQjNJcUE1akpFQzBjKy9kQXpv?=
 =?utf-8?B?cFBzdDBNTHNOd1pWR015d0l1S3V4UXlrcktVejdFa2RZRGFhang5ZkZBR0JL?=
 =?utf-8?Q?frTOQzHteZcxW09oPlzpPrHQXxig4U5a?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zi85YjRZNy8rN0VlS1F0d2JlOEJzMGI1STJZWG5RZHVveXpMYllkY3NpSXpZ?=
 =?utf-8?B?MUZPVGZvUzJrRHN6aXk2d2FCdXRKcUM1QXNMUGdCczBOQ0h5cW1CS1ZIQTRs?=
 =?utf-8?B?dkJ4QjJDVmpNTElRT0phU1ZsYkcvdUZZNXpWSHNjemRIWW53K0E2bzZpVnRL?=
 =?utf-8?B?QVdYdmdqcGtoNFNSTUJONUJaeUhWU1lUaGJVTVFzSmxXRFIwV2hVUVpRUVND?=
 =?utf-8?B?ZzhEbkR5Ym9Lek1PUTRabmhKQ0xxWFN0VWZ2THBWamxzWUUwL0Y1NHZXenls?=
 =?utf-8?B?ZU9pLzhTSEVybDR5eXVtY2tRdXVjajhXWnpsa0pCYjFydnpMOHZnWjY3Yzc4?=
 =?utf-8?B?bkZLT0d4Y2VtYnNmOEVKT0VqSHR4Um5PY1hxQTJQdFlxSkwxZndTY1hOaFlq?=
 =?utf-8?B?NitpWWFkTVhhL0JVL0tET3lYZlZ5RmJzVDNJaktCYUhjeUd2VXBHTDR5bngx?=
 =?utf-8?B?a3hnNkl3SU04cDZCWVpkSGVja2x3Zm50Mkp1Y0VPRXAydERmTGVUTElMYitU?=
 =?utf-8?B?Z1prMW1ubHhoR1V3YW4zNGdqZzJVM1poWUxiM0VnWnR1QTY0NnJ3eUN0cWZk?=
 =?utf-8?B?NzAvdFVHRnlBRWNLUlhSbk1jNUE3Z3h1cEFPam94YUdQOTk5TytCZCtBcDJU?=
 =?utf-8?B?bDhlZ0RKMTB3R0xTNVd6MHd4SWxhMXVuaDRCek84RWh0T1lYM21qWXlGWmpi?=
 =?utf-8?B?VVJLSjJlRVdKdjBucUYrc1JYSFFiTmQxT0pTOGgybnBRL2ZIakZRL0RHSVpu?=
 =?utf-8?B?MklocC9DQUF3ZWFrT21FWE5pSWxRdUpzSFJ4cXpGZ1VUL3JhaGpQY0xJcUlM?=
 =?utf-8?B?b2NUd1c0dU04Tmo1OXRMNEdMaHE2RFI5bW9zN0t4amZjM1U3UnFCS0kvWHMv?=
 =?utf-8?B?OHB6ZWZIdk90dUc2TXFJTHA2QUZlQjBxbUxiQVB5YzVMTlliK3dGZ1JLeC96?=
 =?utf-8?B?KzJ4QXY0SUVOQ3RjSENsWC85SEh3RFRmckt3UWRaV2g2U3RRc0w3L0tuV1hh?=
 =?utf-8?B?SVlMSUNycHUrdWRBcXZsSFpqQ3FZbVg0dm5JWWl1bnpVNWRiMXR6WjYwMldY?=
 =?utf-8?B?OUFkMDlpMEo4eU9CK0tNU1I1b2ZyTksvc3JjQ3ZHMURkRnVZaVdYQktLQ3dT?=
 =?utf-8?B?QmR2NGx3UVorQ0tZNjRBTi9rOGtUUXdHYW1keUthT092U3dHb1JnOCtXYW43?=
 =?utf-8?B?QkhtR1FLSHdxUHFUMjdvUFZwWm5tMlhTVFUrR29GQklCUkVySkZBZFEvSHVy?=
 =?utf-8?B?c0VHNUF2eE9WNGk3ZURUR21rQUYwOHFVdE1WZ2l1eEd0RENLaTA2cmZ0RnZM?=
 =?utf-8?B?YXVGTExNZktZSFhzSXZtNUU4ZXUvdmwwck1Ub1NnWUlKeXZ0MllVWjQveDNQ?=
 =?utf-8?B?MWF6bG5UbDlTMmdpSWdDUWpmOUViVzhoWjl4TklOTUp4bkxtNHlHK1BCODBY?=
 =?utf-8?B?TFBWWjdVdmxnNGFLaTFuRlVOWDFCdWsvOE9FVlh1TjU4cnYrRFRmRHZpSnZO?=
 =?utf-8?B?VkZtUDc1eW9hVHJWdUZjOVVITWFKT1dvNnk0L2I4YTBYRHgyOUF4UCt3dGtw?=
 =?utf-8?B?R0V2YTJYeDFqeVlQc3hUSnF1Yk12aVZJb21yaUR4QTYzVmFMMFVGVS8veXc5?=
 =?utf-8?B?M3NiaEszbXliaTRuUW5UMXZwSHNxa2hzSDJOWHdzN3dwcVN4TTd5aHU1L3Rk?=
 =?utf-8?B?bHcrM0M2c3dham9MdEU3bU41cVNzb3E1cVhENnZWL05IZHJBWE5kRkFST1dR?=
 =?utf-8?B?dEwxd0k5YzVOQnNRMW1WaW9Rb3lVVjd1WDRpVXpDbzFIa2hibFp4R05ERHNo?=
 =?utf-8?B?NlQxOHhHZVJiRHVlbm16ZEY4bUcwcDQ5VG5jSUtCWmszQlRNYlBTcWVETHNJ?=
 =?utf-8?B?OGV5TTRkLzdyQnZjUytLaWlYYXVNZVFWQ0FqblcreWxEcVF2bGs4cFJtYkdZ?=
 =?utf-8?B?UWJuTzFkYk1wQmtud3JpNmxKU0xEUlVPUXBIdHBBdlo0UDc0Nzl2ZmVKRkIy?=
 =?utf-8?B?SWRJQkNJbFdmSy93Wk14Rk0xWEx0R25sRGovcXJvY2lObDBvWVYxQUZHWXcy?=
 =?utf-8?B?Uk4xREhZbWkxT3dOaTJRYnh6aTkrdzIxcVlYZ3J1dENTak8yeVJBZmhvNFoz?=
 =?utf-8?B?OFFGSXBiWmVuTEsrZVkxYzVoaHZuUkNCUTJoRmphdUVpK21oQ1REWE54dHdI?=
 =?utf-8?B?NFVWc1BHQzNEbXZpT1RvSkZDTEJQbTcyVkw3NEFIRmR0aGRoNFVzbW9ZaWpj?=
 =?utf-8?B?Kzd2THl1NG1HMHlWTzhaR0Jjb0dnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6CE6068E56D094ABA726033F811E54C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 107daaf3-49e0-489f-b5e3-08dd3c701be7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2025 12:10:35.8429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZBiLDH7ZD/XFkspcaVIhlYw9VTqI0s/C4xRo7+d/PUmIc5C2LpxslI+JoMUHmg/PcPNWStt7N7wc/pz7ByXK+xXxxuKXZPOL8GLSe7SSr+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7522
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

T24gRnJpLCAyMDI1LTAxLTI0IGF0IDEzOjQzICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDEyOjU2OjIzUE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBXZSBtYXkgaGF2ZSBjb21taXQgd2hpY2ggZG9lc24ndCBoYXZlIGFu
eSBub24tYXJtaW5nIHBsYW5lIHJlZ2lzdGVyDQo+ID4gd3JpdGVzLiBJbiB0aGF0IGNhc2UgdGhl
cmUgYXJlbid0ICJGcmFtZSBDaGFuZ2UiIGV2ZW50IGJlZm9yZSBEU0INCj4gPiB2YmxhbmsNCj4g
PiBldmFzaW9uIHdoaWNoIGhhbmdzIGFzIFBJUEVEU0wgcmVnaXN0ZXIgaXMgcmVhZGluZyBhcyAw
IHdoZW4gUFNSDQo+ID4gc3RhdGUgaXMNCj4gPiBTUkRFTlQoUFNSMSkgb3IgREVFUF9TTEVFUChQ
U1IyKS4gSGFuZGxlIHRoaXMgYnkgYWRkaW5nIGR1bW15IHdyaXRlDQo+ID4gdHJpZ2dlcmluZyB0
aGUgIkZyYW1lIENoYW5nZSIgZXZlbnQuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDEwICsrKysrKysrKysN
Cj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4
IGExODlhYTQzN2Q5NzIuLmNkN2U5NjBiZDI5ZjEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC03NjY2LDYgKzc2NjYs
NyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfZHNiX2ZpbmlzaChzdHJ1Y3QNCj4gPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRj
X3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3
X2NydGNfc3RhdGUgPQ0KPiA+IMKgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0
YXRlLCBjcnRjKTsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50
ZWxfZGlzcGxheShjcnRjKTsNCj4gPiDCoA0KPiA+IMKgCWlmICghbmV3X2NydGNfc3RhdGUtPmh3
LmFjdGl2ZSkNCj4gPiDCoAkJcmV0dXJuOw0KPiA+IEBAIC03NzA4LDYgKzc3MDksMTUgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfYXRvbWljX2RzYl9maW5pc2goc3RydWN0DQo+ID4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkJaW50ZWxfY3J0Y19wbGFuZXNfdXBkYXRlX25vYXJtKG5l
d19jcnRjX3N0YXRlLQ0KPiA+ID5kc2JfY29tbWl0LA0KPiA+IMKgCQkJCQnCoMKgwqDCoMKgwqAg
c3RhdGUsIGNydGMpOw0KPiA+IMKgDQo+ID4gKwkJLyoNCj4gPiArCQkgKiBFbnN1cmUgd2UgaGF2
ZSAiRnJhbWUgQ2hhbmdlIiBldmVudCB3aGVuIFBTUg0KPiA+IHN0YXRlIGlzDQo+ID4gKwkJICog
U1JERU5UKFBTUjEpIG9yIERFRVBfU0xFRVAoUFNSMikuIE90aGVyd2lzZSBEU0INCj4gPiB2Ymxh
bmsNCj4gPiArCQkgKiBldmFzaW9uIGhhbmdzIGFzIFBJUEVEU0wgaXMgcmVhZGluZyBhcyAwLg0K
PiA+ICsJCSAqLw0KPiA+ICsJCWlmIChuZXdfY3J0Y19zdGF0ZS0+aGFzX3BzciAmJiAhbmV3X2Ny
dGNfc3RhdGUtDQo+ID4gPmhhc19wYW5lbF9yZXBsYXkpDQo+ID4gKwkJCWludGVsX2RlX3dyaXRl
X2RzYihkaXNwbGF5LA0KPiA+IG5ld19jcnRjX3N0YXRlLT5kc2JfY29tbWl0LA0KPiA+ICsJCQkJ
CcKgwqAgQ1VSU1VSRkxJVkUoZGlzcGxheSwNCj4gPiBjcnRjLT5waXBlKSwgMCk7DQo+IA0KPiBJ
IGRvbid0IHJlYWxseSB3YW50IHRvIHNlZSB0aGUgbG93IGxldmVsIGRldGFpcyByaWdodCBoZXJl
Lg0KPiBTbyB3ZSBzaG91bGQgcHJvYmFibHkgc2hvdWxkIHN0dWZmIHRoaXMgaW50byBzb21lIGtp
bmQgb2YgDQo+IGludGVsX2RzYl9lbnN1cmVfcHNyX2ZyYW1lX2NoYW5nZSgpIGZ1bmN0aW9uIG9y
IHNvbWV0aGluZw0KPiBhbG9uZyB0aG9zZSBsaW5lcy4NCg0KT2ssIEkgd2lsbCB3cml0ZSBzdWNo
IGZ1bmN0aW9uLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+ICsNCj4gPiDCoAkJ
aW50ZWxfZHNiX3ZibGFua19ldmFkZShzdGF0ZSwgbmV3X2NydGNfc3RhdGUtDQo+ID4gPmRzYl9j
b21taXQpOw0KPiA+IMKgDQo+ID4gwqAJCWlmIChpbnRlbF9jcnRjX25lZWRzX2NvbG9yX3VwZGF0
ZShuZXdfY3J0Y19zdGF0ZSkpDQo+ID4gLS0gDQo+ID4gMi40My4wDQo+IA0KDQo=
