Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF61FCF5127
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 18:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E18910E2DF;
	Mon,  5 Jan 2026 17:49:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mfYoYSOQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2EF10E1ED;
 Mon,  5 Jan 2026 17:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767635364; x=1799171364;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=D3WMwu7/t9gz4waRpDeBUGKWDiQ3ePNtcnoWf2Mbm9k=;
 b=mfYoYSOQOK4vdvj5YWRMcymM9uOKFJ1SbwJGrMG/3eXQ3svIgXfA4syQ
 2+nrQXDDHm1vor+4qBfOeTIUwmnRte+EoP+Y8iRDfFNfh3emwSnneTeDk
 01o174yY57JVHEn4wOsVorDCeFs0z7IzPc9KBoefrmazOLetx8pYPvHPV
 hNrH7xxaxLlrh5344SyDVGdKWJ04gQ+2dpOiTNrDzIoB5Wgm0KA8qQQ8n
 bP7ZHYiJKOFJoOiYL2MfOgt5SvzaaquA0S0GTzM4VGvlHWtdQMIRHqW+W
 IuJ5UC76FQ1O/GMDSKbhUXqF/DkcBX/po/dlTU9Bpmq0phN2timKzybhQ g==;
X-CSE-ConnectionGUID: lyFruCfSSdqekp2PrknO+g==
X-CSE-MsgGUID: SEUCxFaTQKe5G22CRFAd2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68200012"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="68200012"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 09:49:24 -0800
X-CSE-ConnectionGUID: aLzPT9GFSjOGCLlzhewi9A==
X-CSE-MsgGUID: 049iyTsDQ1K2itjhyU/dXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="202066715"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 09:49:24 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 09:49:23 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 09:49:23 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.55) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 09:49:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AGPKeCpbEhvhqCOCg3q3q9GvJhhnN4S1VKlPqAEt7GR9FKpCwvuC9qGEMb/GVBI6ygMXbPlf1TpvJ8r7trVwjymTWZxNHoig/n30fYW1mUcLKbJm5zNyVihhl9/NVNbe7os/e3WrgKWoEoGIaxCZLSPOsc05J67ekQDyXIO8mWApxbO/l1BZqcLF9Hql6Q3JhHVxAs83tKW0YwY6W8YPaEItD+esFZiOOqcyj6pUw2Jmy8dZdzscLvDy7jDj5XK38nt+1uWKxV7jzJcLsAXgcnVV+AqHrxQSVeoPo5jnH5kVQdGRpCSRMsoKZxji1SfSvRhSuJQxCn4KAFEwIvk9Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ENf9uKfuVzI1dHMcJihBNOhpQMI5lx0RbzGiE5edtw=;
 b=TGTp3YvPSlMRjnBfNOJuz4wIoVBzXXpqN+MRIvqj7XhrmWXRAM26bImvxzPiR/jZ/8hXc0R6749RKq34Lt84TMl9D8CLMuWse03X9uhh3qWJYI7HaWCmafVs+3bGpi9luLA+Dr/QLvSC752kE4e7qCvaAU/lIGF9aYDCx5F5LDHAxwfWdwIYDwF7QWXIYoAu354op3Vyhg6ZX5GxxFK37b11JOCTjdRbDlyxcW70Vw79uuFOmc6Az5HfTAOxjfUTYllLtMMkhsFOpTFxd6VgEj/1m7nKv1lkkySwVVWKn/ijJ9q08vX0bPEbOLWhcpgrAEEIR22iQo8wjZjnUFAe7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 17:49:21 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 17:49:21 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <176763507911.9480.16301562560632046947@intel.com>
References: <20260105104858.283686-1-vinod.govindapillai@intel.com>
 <176763507911.9480.16301562560632046947@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: update the wa_22014263786
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <vinod.govindapillai@intel.com>, <matthew.d.roper@intel.com>,
 <ville.syrjala@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 5 Jan 2026 14:49:17 -0300
Message-ID: <176763535723.9480.4501748588399787683@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0P220CA0002.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB6141:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e5b173c-f3a9-4d1b-28f7-08de4c82c1bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eG4yN0dVYkpXTTFwLy9mSjdmUFRDdjJERHZPYmtJWTUzZUVmMnVuMncxdi81?=
 =?utf-8?B?RVBtVmJNdUU4R2s4OFV0K1BDMzZjNE90VXVFNnJzRGVnc3NXbExrRFdORktu?=
 =?utf-8?B?OHkxQ3hoWkdJdEFST2h2cXk2dEg5S0NGa2lPdHJoNEpLWlFFY3pCQTdrK005?=
 =?utf-8?B?SUZvSXdOb0EwQnE1OTExRUpUR0N3cUljcGtMeFVVdWNKVW9wbnZPVUZDaFFX?=
 =?utf-8?B?OTZOc1NMNnBwWHZSMjhPU0FWajRpNTNMUjE2Y2NpOGdYUEZWUGRDZG5FWS9V?=
 =?utf-8?B?dHU3NVhBL3NzcGNkWGhrNEkzVlNzU2I5aGw1ajNOSXJmV0NkM1B0NWRaWjRZ?=
 =?utf-8?B?L3dCNHkzd1MwVmZSUDdJeHVQRSs5S1V6RlExRUpaSW9ZTW44SThHa3V5dldh?=
 =?utf-8?B?RTBLUmpzT0tmQ0UyNkhpemx6d0VadjAraWN2ZGZ4dUZwMjBhMlRmMUdiZVgr?=
 =?utf-8?B?UUJPQUVxWUEyUjIxRENObVRlQmt4VSs0T1dqMWV2dG5idHhxbXAxOW0xK0Nv?=
 =?utf-8?B?b2p0SGtINkpVSzhLT3FSTlZpdHZsayszNHBpcVd5NmdzUXJmdmJ5eWFzdDQz?=
 =?utf-8?B?cjB6aHNPLyt6dlZMcEIwQkpmMVRBemhwdWk3c0V5WVhmVUxEYk9jMlljWEcz?=
 =?utf-8?B?a0RiT1pSYlRXb2pBNGkrYU1sQ1BsY0h2V3A0UksyN2htM2N3MlJ1OVdhRlJs?=
 =?utf-8?B?MEx5dXJvT3c1VldEZGRaVXE1Mmx2SWt4VDJycnVsVjlyQ2E4eHRLM0Evc3J2?=
 =?utf-8?B?b2ltT3I4cStiY1F3QXEyVzFjOHhLYStWTmlncThOU3Y0NXNTL0RVKzNCanR0?=
 =?utf-8?B?bGxuNXhITTIxODN1aEJyMGp6UEtNU3VEdVdYK1BVOWdobU80MGZYeFJHdXF6?=
 =?utf-8?B?ZzZScVZIQUJDcHU3Tk9iTU05OXlBOUlwVy9pSTRpUEo1SlluaDFvbFdCV3Z5?=
 =?utf-8?B?M24vL1FjRHlMZkg2YmFpZFA0VVV2NGwrMFBiZHJBbEdxR2gyeHR5TmczZ1Fq?=
 =?utf-8?B?L3JjRDlWZXRHSitNQ1JlOXU4UjJNVEtyczBGMGdyZ2h0NHNmZnRCOXQ1TFd5?=
 =?utf-8?B?Q0RDTlFNaUpiRFNpMldHNGk4SnMxSWU4VHVRWTJCcHYzWUljeXpGMSs3bW56?=
 =?utf-8?B?ekNWYmdCbnBRQ2RycnpmcnhkU3VNWm1UYmVDUjRUSkNBc2dDU2pIMk1FaXNr?=
 =?utf-8?B?UmFYVU03eTBJYm1jTTlOaFgzcWpUc2dERnpRM09iOE9NRHRYa2N2TDhZUlRj?=
 =?utf-8?B?V1pvM0FTZWx6V3YvbTF6WkV2bGMvU2RSUCtNSEhNQkxEaHlIUkN5VDFpTHlo?=
 =?utf-8?B?aXFlcFQ0VzcvdFlwSjBlSy9NNm8zdURqWFdBZkFteUpCV2Q5N09xWTFyWVVx?=
 =?utf-8?B?Wm9BOGF0SENsVXBFUTUwaDVySkpjS1FSeEdDcGQvWVZxQngxelNxbkdaUERh?=
 =?utf-8?B?b1dzTVZCVTVjTU12ZzNNbzRVamluRzdDNFgyWmg3M2Z3N2dKVXEvQ3pnZWVw?=
 =?utf-8?B?cXFQSjl6MDFpWDNRUTdNYk0zR3h1WVpSWS9JSVB0VTlORHNoYWh4VENaTDF2?=
 =?utf-8?B?c1krWTh0cE9lZjhtSlkvcTRBL1hmb0F3bWtaNmpSdFdMZ0tvbExKc1Zxdmo4?=
 =?utf-8?B?c1pxWDUreDRzMlgzSlJYeFZCUERLQnBhcHBhTDJxNkNBNTU4YjVtLzVmMyti?=
 =?utf-8?B?MUV4RlZhR2xmeEdHQlZ0SU1NbFJ3YjFDcGluTXE4UnBhbTA3NFRxdXVnNW9J?=
 =?utf-8?B?ZnVUV3RIOVlEWkdqNDE2dHh5Y1dSUUpyOUg2TFJNVkxFQ0s5cGsxTzNlVTFH?=
 =?utf-8?B?K2RhR1gxZVhZczZIYVpsR2ZjcHhLbWRKU0xzM0ZzazlXMHY3dXQvcFZyMjgy?=
 =?utf-8?B?NktlRU9jdlVLak5DSlh6emFKWFJadE1acHBsSTZCRmJtREFReEwzbk5ZdXM5?=
 =?utf-8?Q?gLk/uY5az+pxag63saTtZtF1s07oY26U?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0dRZzlia1VDaWI3QlpBN3VSNnBEdWhzaHMyd3hrOGRRQnlOeUYrOG5RMWF5?=
 =?utf-8?B?UDRQT29uS3NONUtUOG1zSkpQWndIVTFhSmFsczlXdEFZTjBBRDdBbkREZ2t4?=
 =?utf-8?B?LzFmdVZ6Tm9iNjBHMXhScGJnaHlGNkgwWGcwZmtXQTNVK2VGRThCdVc5R2kw?=
 =?utf-8?B?LzBKZStJV0JEK3JXWnZPMTRsYTUwUjBoZ3dQdXFZSkVIRTZIOXdhY2dMVnR6?=
 =?utf-8?B?eEFGTkNoWlVPRVBuaGZaRXM2K0ZlUUJmamFxZ0ZKUkFOUVllQW5iZ1lLc1ZS?=
 =?utf-8?B?WDVCdTVmSHBnbGRWTm9icldIayszZXBkVkhjMlArV1AvZ2xHQWN3bHVFdU1r?=
 =?utf-8?B?d3ordnNUNUNoQk9HQUJHbmVQZzdaQ0pnM2lXVDJ6N256L3UvQXdzZ3pSYjZW?=
 =?utf-8?B?R1hUS0FZdkUyWWVaamdDMG50SktFRHluQ1VzcUdlM1FSUVU4VjUxeUJWSzl1?=
 =?utf-8?B?Sm5rMXo5NHFsYk9MZ1I4VWtIV21qZ0ZQQkFQa2pvQWRUeENJMWthVjNETHpT?=
 =?utf-8?B?TXpWREZFNU5zUmwzeXpIaC9qTldpRmdXVU12UGhMNDZHd24ydHYzeUpwV0xR?=
 =?utf-8?B?MkdwWWhPZTE5WHF6bWwxa1dqKzg4TlBIOEZ4MmN1UmZqU2ZKenozV3UwbWF3?=
 =?utf-8?B?RlFyVUpNTlNJOHhZSGNjUVBPeHFMNytzMWpNTjJ0ZHhjcS9URUErdi9rRHFj?=
 =?utf-8?B?cS9NeFhRV2dHODBnVkk0TUZtYUEwOG5YdFo5QTM3SlI4RFY5b2JLdy9Da2Rr?=
 =?utf-8?B?b2t3RGlVME05RHo4ai9zdDZZUnlDSjI3ZzZiRmI3d3JiTkl5dXVYQnRQa2hn?=
 =?utf-8?B?NXZQM3pHWVJyVDV2UWhHeU5oWEUxQ1p1NWs2NUtVWmtSeU8vdkRHRXpwQUwr?=
 =?utf-8?B?RUNROUowNTYvanNaWERKbjBRaFlkZldaQ0o3cVI5a2RBcDVYaUZCb2xoOUVI?=
 =?utf-8?B?aXE2UnRpS1RXM3FTTjRHWWNiSTAvSnBaQ2tOSVlRdnBHMFdpbGNmSzBiYU5O?=
 =?utf-8?B?OER6bDc0MDVib1B3a0p1OG5KS0p0Y1JhcDc4d0x0OThYY2N4N1hTQUpJNlJB?=
 =?utf-8?B?dHZIQXMzdnB5NGdpS0J3b1dNZjYvQVE3OWN3QXZGUVRUR3lMMS82alFSK08z?=
 =?utf-8?B?NkJPUk5XVlJRK0xWamF4NXp0WnZ0MTFicHphbmpuWDMzWFdPaWxDVW8yM0hs?=
 =?utf-8?B?V3lrVVBNbXhwby8rb1RCQ2dCZXJYRGpHdDBvUXcvQXdPd2M4Qzc0WXF0N3Ax?=
 =?utf-8?B?b2c5ZWpSZm5yNE9Gam53S2pscVZRQ3B5NUFsN0ZSSTBJdmNxWjZxKzZ0czVk?=
 =?utf-8?B?MTF3a0R1dGxBRm51ZUtXamNNSGhob0FWN1MzWXlBc3FKNmI2eVBQTTM2U0ls?=
 =?utf-8?B?OU9GNDhlUWRBblFpUVdaTm8vVDFsejV3MmhDcmJIQWtDZ29CTnNKZEVScmlm?=
 =?utf-8?B?Wm40bnpiQkFuUzBNKzhlSWRHN1VhQkR6V3d2SDMzRG1WL1p1cEF1MVhoNVhT?=
 =?utf-8?B?T2YzcVY3dFFVcncwaGtqeHg2R0syTWFQKzQyWllIVUlWKzJvWUdRT3lneUVr?=
 =?utf-8?B?UTZhQXRVTGpxZ3c5RThna3o5NURMYU9OZU9qQmlsSm9UQ3p3R00vZTNONXE0?=
 =?utf-8?B?c3JTOUVNdm4xNUJpc3dCSFNMb0h1Y0pLTEV0N2VPRUIrMXZ2eE5wdUN6bkZT?=
 =?utf-8?B?UUN6TnRKRjM5VkJjYlB6RWg0TjByd3JGNG50anFST2lzUXdUYnFXK3NHVVQy?=
 =?utf-8?B?aG5RTlUxN25zaDZXa0Z2YmxycjdOQk0yUVZYdmNTeW9icXprVFJaOEEybjJC?=
 =?utf-8?B?K1czN3NXVkdZWWxRTkxza1cvOW9jOUsrNVh0OGVtS01QcWlVeUJQV0pEblhq?=
 =?utf-8?B?VjMxV3k2b1Nja2loZUc5LzE1RndzMjdaWVNKSGd4VVFUTVlDR3laMVpYSE5V?=
 =?utf-8?B?MUpha0tXeDdpMmtkYmQvMXIyV3AwbENtbVZBSHRrUGd4N0hGaWZDLzlEUGpO?=
 =?utf-8?B?OU1tZmJZU0dpek1OUmc2ZllMQmNvYU5yKzM3dEt3MXpvOVlsWm1sZmp3ZXdh?=
 =?utf-8?B?Slk1VGdEUU9STWYxakduVlg5VXc5cFVmQkFJSzBjakxmQnd3UGFwanE2bk9J?=
 =?utf-8?B?UXd4bXFGZEpxSnQ5ZVhlbHpueG5BamFFVkRTaG9tNi9XSXRuQzMzNnB5M1B4?=
 =?utf-8?B?dDllS1hORFpGVXBNMS9CUFlJd3VGYVhyYldtZnpZc2RORXJUQzAzalNEZWFF?=
 =?utf-8?B?ZnN3aDB2d1hFUjE3V1IwL0MraUw1cTNvZG42Um5jTGJhSTZ0WC92d0Zzcjg1?=
 =?utf-8?B?Vnp0dGpuRGZBNGUzUm96NEd0cHM5YVJVUlJEV2ZmMy9mbW9TcEp5dz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e5b173c-f3a9-4d1b-28f7-08de4c82c1bb
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 17:49:21.4183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AU2O5ap+15ZuHrSvFnw0BlXl/6fPNFFGdwic7Z1o5dLA33wOOxpalYs82pZBo37eSISYb+xokvSQrG2V5MtT3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6141
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

Quoting Gustavo Sousa (2026-01-05 14:44:39-03:00)
>Quoting Vinod Govindapillai (2026-01-05 07:48:58-03:00)
>>For DG2, wa_22014263786 is applicable only if the number of active
>>planes is greater than 1 in pipe A and pipe B. Cursor planes and
>>any planes on pipe C or pipe D are not considered for this. As for
>>DG2 this wa condition is based on the number of active planes, the
>>check is moved to the fbc post plane update calls. The force slb
>>invalidation chicken bit is set/unset based on the condition. For
>>the other platforms where this wa is valid, the wa applied before
>>enabling the FBC Unconditionally as before.
>>
>>v2: wrong version send as the initial patchset
>>    for DG2, active planes check should be done all pipes not just
>>    the FBC pipe  (Matt)
>>
>>Bspec: 54077, 72197
>>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Ah, also, the commit subject is a bit vague. I would mention "DG2" in it
to make it clear it is about an update specific for DG2.

Is this an update or rather a fix? In the case of the latter, I guess a
"Fixes:" trailer would also be warranted.

--
Gustavo Sousa
