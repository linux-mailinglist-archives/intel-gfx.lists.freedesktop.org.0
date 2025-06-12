Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D656FAD78CB
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 19:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F5010E0E0;
	Thu, 12 Jun 2025 17:17:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fpkXQS0n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5FEF10E0E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jun 2025 17:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749748650; x=1781284650;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bNNNfmJD8s4/9JIMATbZKtOsuEOhfjakeVSywNGMJCg=;
 b=fpkXQS0nlkLh2CHbHrYWjty5KQUaJG5FYIBFK4BN7Gj6ILm3XoJ+th0P
 ykoT9tYXmw2kM8IuMzOrslw06veZPMHKUHAlOBZgQV41mguatka4Yq0RL
 vO+QHtbNJ/TKOQIJu1NbtHrwNZALmOzmU0i9gwbaAy4TyWRgUmnXQfd7N
 eaWFydW/uy4d8t0qvvjBpIi2OAcriAdfjdg7DyGKXAWcgUMS6o4iNyuw6
 s7x4gBjnxC5+BjpKZLTVD8mDS4KovjDokJG2fDBD4Sgy1PZSv7zHJ9OfT
 RoUieN+3cvWuXnBHSV2NmaSPCRdS7qyJNp3Ze/Ghoo5DqRgSBLrVxGa/J A==;
X-CSE-ConnectionGUID: 21emlN7IS9a3EP8gnFPTHA==
X-CSE-MsgGUID: K5O5P92FSkeTpDNvwtQa+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="51929513"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="51929513"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 10:17:29 -0700
X-CSE-ConnectionGUID: slVto6BZTPS9DAoPMsTHrg==
X-CSE-MsgGUID: I0kDUfqsRX+QxVJgYZoGww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="147473064"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 10:17:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 10:17:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 10:17:27 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.56)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 10:17:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pFzGZBvyi2c3g6buYxwZsg4H3EZ0dnO0E0I9LtqWQZmNmPyE2rKGcYdiXdd7Hf+VHU3zW0Bp7NiV8Bv/aDkdVMsmpObxnJt//7xwkOPLsc6bk3Kic+X1ZACUeGa5/ai1J27CixXkQhPJfvZUdZHYnqFx7jAlyqKu6pdpXRKsjFfaR/7jSe/8EhMNzioyqSNrBhxVAQ74OeFVuqe+qRERqEf2RVuC2BExUyUZtXH9PnoTAsZXUZMQTAyAgyxE2rvduJWV2Dg63wY8y07QaJEwJad3XLVrkh8nu4uvHC8t5VYqeBMF/4l1+72u1fYNWgGUgDrNkuZjVE4xNd9eTghsKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bNNNfmJD8s4/9JIMATbZKtOsuEOhfjakeVSywNGMJCg=;
 b=UzB/2PeMlre+5RCVahAOSRoF81V/WpKzC1qFceD2my0J/twkB8pkxBUNPNXjMpyL3ah95t0vY2F2VMez+YemwnzOcxXUjICx20uiDjfx3v0o6RTf4Uzwy0Hawv4ljEArFdAAg2Xb3Q8Oje4yAHI4DZSmj89XY/lnn/PsahiKI/lf5dve5IhLSxmWtjBPGf3UvNT6WkbveWcTtWl5tdEGo3fUBByzn2NCII77Y59VR2M99KMOL99ZKkVB2HoPl1c8/PcAxJzidc/OUUNglQpkJypXA94pK6AzWUMpgjimuJkPUMp/nALLxDDOXzivre4tv4fEbSVKXybsOXRg7GVNSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.18; Thu, 12 Jun
 2025 17:17:10 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 17:17:10 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CVUlMRDogZmFpbHVyZSBmb3IgQWRkIFdpbGRDYXQg?=
 =?utf-8?Q?Lake_support?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBBZGQgV2lsZENhdCBMYWtl?=
 =?utf-8?Q?_support?=
Thread-Index: AQHb2vAmdZ64zQ5UrEmR4T+50t2ebrP/xQZw
Date: Thu, 12 Jun 2025 17:17:10 +0000
Message-ID: <IA1PR11MB6266750B8C3794A2D6A66AE3E274A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
 <174966027735.68523.2337383864054795412@1538d3639d33>
In-Reply-To: <174966027735.68523.2337383864054795412@1538d3639d33>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|LV3PR11MB8508:EE_
x-ms-office365-filtering-correlation-id: ed28f788-0d5b-4173-2a6c-08dda9d4f738
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?aGo2YnJ0T2hEWDc5MHZBaFJwbjducnpUTVQ1SDZxWGNlL3lEQjdKRjdWS2hu?=
 =?utf-8?B?VmFxVVIwY3ZVN3FQc1JKbU1IelN4dnZHQ0d0R3lEZDMwWlhEM2Z2bnpqTnNr?=
 =?utf-8?B?OUM3dU1iWXovUGlwYVg4YVA1UVllZFNMQVd2UVhvNi9UZWNrSVRMeGVXUG9G?=
 =?utf-8?B?UCtVcTZVbzFBSHZtclhxWUdzNStIaGZxdDlQU0Z1V1o0b2psY2NiR0RVd2Vm?=
 =?utf-8?B?TU0rL0Q3SFRjb09YdTBqd3JFb1Q1bzFnZGkyakoxVk9zQmgrU3Q2SlJCWnZR?=
 =?utf-8?B?QVFEWityWmxWV3g3a044bFlHRXRiUDgyeDhEV3BEdksrYTJ3QWFIUXBLQk9T?=
 =?utf-8?B?UUQvKzJzeHZJU3doTmFmbmZEZmQyTEdvM1FUMVY0WE90bHpmTEdrQWw3Zklo?=
 =?utf-8?B?a29CdXJMS2RKVVd5YkVnWUhEbVh2NTRuSHVWZ3R6NHBiaDdtZi9Fa0VEZCs1?=
 =?utf-8?B?NkszQWdvODNCbkpMSGhORHd5c0ZYOHhBRTltUUhjU050YjF6d0N2NFhDVjBS?=
 =?utf-8?B?WUxqOVU4M2xFY0dNL20xRUlNRDhsczRLZXhWck9NQm14eDlldElXMDZqZTk1?=
 =?utf-8?B?QVpNQWlBMzJZeDVvaHhMQkpXdURlMnR5K0RzQloyY0ZubFBNMFdqNHh0RzND?=
 =?utf-8?B?ZGdGa1cwRGJiREsxTTR5N2JTRXlTWWx0S0w5dXlRSTMyc0lvcEVkV2s1ZVR3?=
 =?utf-8?B?S3habmFyTnhSU09vQ1FQMGhYM0M2ZjhTT2g4U2FHV01XNzZoL3d4ZGZpZjRl?=
 =?utf-8?B?NWNJVEtDamJXS2FnS3FubUs2K1pGLzBWV0RXWVRPbjFqeVdEc1lybHFrZ213?=
 =?utf-8?B?WWg2RDV0bGtSaUdHczdkYk9vT1pZbnhVM0YwbDFtbnhkOEZpN3VJdzdESVdC?=
 =?utf-8?B?SEdMeTgrVnJVUXUyMW5NSnc1K0JqeVBsZ0JlMDJQc256bmx6NlNveTlRNzd2?=
 =?utf-8?B?N0xlb3Zuc0IzbUlzRzV5U0UrekwrQW93TkREY1lUNHVScjR6amtJZzNhcldO?=
 =?utf-8?B?TDg5cGUzNXoxbVkxUFY5cWowVURKVmpzVXB2c09rc1U3RGNiMEZ6OThCdDFn?=
 =?utf-8?B?RmxuWEIwbjcwR0FzSDBpS3NIQy8wMnJNTTRuV0tBWVJqS1loM2tpSGpiVUdi?=
 =?utf-8?B?amV2dDdEUlBLbkpoTThZTDJDT3NxQkJJbjFESlplWjlMUGs3bWhVWWNsaFZU?=
 =?utf-8?B?UjZnTXMvKzZXN1h6bnVaMUQzci9vZTBadmcyU2hlYjNIOHVQVjZKUW01S2pu?=
 =?utf-8?B?T055QkJOV3lpT2U2OW1kT2k0ZTQ2NVNVd2ZxM01jWDZRS2VZQmk5Y3J3a1di?=
 =?utf-8?B?ZytWZmxQVWlSN3FOOUFiTXZqeWVUNGdyeFMyQVlwODVqVWZpMmtqOFZKV3kr?=
 =?utf-8?B?UnRsR1E4Zk5pOGk5N0Vxa2RhaTNQUXdOZUR4a01zSlVtMWV6bmplUlpwVW52?=
 =?utf-8?B?aVNTRERPK0pGdGhOMFFzajhOR2xESUI1MlNPZ2wxSFc2NjBHYXlpVlZ4Rm52?=
 =?utf-8?B?cWNvZng5TE9DYkh2MVZ0NHh5NWVWZ3NZZHh4QU5RQ0tOS3VjbWFEbjV1ODhI?=
 =?utf-8?B?ME05aWpmNytqL1lMSzhEdFljTXZJcm0zNFl5V01PVUFNM0RPQzhCSGVXTVhv?=
 =?utf-8?B?ajdiWXVQTmpwa3dqUzhBdk1sM0RaWTQvTjJRM1RadzhwclhlRkZtYVJWUHJJ?=
 =?utf-8?B?WC9vVWdNQ2Nma1dyVlFhblFHOWZ0djhYRGVmMkpNallKcEpaSEZIcEk3Tklq?=
 =?utf-8?B?dXUzUmZGay9CNWJOSmpadXFRSjNmb2IrZjRCMTBuVHRZdDM5WGk2cWdPT1dX?=
 =?utf-8?B?ajk2SG1oM1lCVzl4WFd2Vk9DNzRwQkwxN1hYL1o1Sit1Y2p3WWVuWG1VYmdp?=
 =?utf-8?B?QytZV25weTVkZ0RWb0cyeU5ZeGQ2UWN3QTlUMW4zMEtHaFBocytJQ2M5K3Jy?=
 =?utf-8?Q?sMcLDkO3yOk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWF0OUcwd2NUYm5hbVNiRm11TFdNcFJnWE1nZXBSQzFDT3JFU0Y0aGhHdUFX?=
 =?utf-8?B?QUV6ZHdiZ3ZrZG1jbDRQZGdkUGRtaUM3VDB3RGV0TmlBbkRtbGhjMGlSOWxu?=
 =?utf-8?B?WUtpc1ZSaThoL0oxTzhiMG16Z1pQaFRnTkszcGxrUXcrKzIxVFhnbWdkbnc5?=
 =?utf-8?B?OUs1MThGdS82Z0xTUGVRWmJZNnc2bE96QmpTRXd5V2dlaUhBTVdlbTJ6cHpH?=
 =?utf-8?B?eFNjdTFjOGgrUlNwK1lHNTRBdFR4TXlNb29wZDZBbkttVHhKMHhGRUlwWk1w?=
 =?utf-8?B?T2tXODd5RkRVUkJISkhGU0tydDNRd1lEZDZNVmd0UXdWZU0wdmUwcTBlMG5a?=
 =?utf-8?B?aFM1U05wWGU0dldQVEZ0ZzhJYlhCSm1Na0tEZkhDSHFKT1dyUnZ1WEJmOUhh?=
 =?utf-8?B?aEpxalhOL2VoZk45c3pNT2pXSXpObmMxdmJtb2xWS0FaVTNRdkFtYkpSamVz?=
 =?utf-8?B?MDJtTVhvTkFkN1ZJZW5JZWNnOGJVWmxoVE9QLzhkNkwrN29nVXFJQ2U3VzVM?=
 =?utf-8?B?ZUJnYVltRUllbkhvQ092L1lramFVZUVPaG0yZlBOdmpERmFrZTJjbkxnMTVz?=
 =?utf-8?B?OGdKb0FhVTJmcXhaR3lJTHFneWpnMzZmUko3aHo1N2k5cUM0MEZJSmtheFdW?=
 =?utf-8?B?UHo5eVk5a0NUTEp4VGNFaUJ4am9TVllFY2xlTllMR0YxTHRLdk1OYUVNMFc1?=
 =?utf-8?B?dE9QeThxcTg0anJiVExZRzN5QXBYc0I2dWd5SzBOUEU5UElkVnYvelZVTmZk?=
 =?utf-8?B?czhHUW1pak94UE9oQXdSMWp6d0VueGdYUVF6S05pTzFSMW1NOStySXJGc05T?=
 =?utf-8?B?aXU0Z1VXLzJxNVFhZzk4cGU3MnlqaU9SUmFrWG9MREgxM3FsUXQ2aW42cFh6?=
 =?utf-8?B?cGJDMWxuc1NEOWN5dGVLdGo1Y0hKVXltYU56ZDRlVldyWjIybzF6QisrSDRH?=
 =?utf-8?B?dElqM29UeVFxeW9JMkV2Zy9VczNpUFNLSjRDR3BLUDlrdDZEUXFDZ2VUa0Rp?=
 =?utf-8?B?aUJaSmwwOFRaRFRzZldUcy9WbTdyb2lXL2hjRXk5L1hCMDg4aDlsY2xmYkd4?=
 =?utf-8?B?K0Vmdk8rVWtOWmxYWTE0MWRqSDE2MVZYU28rY3RKckREQ3pzb2lLamdNdlh2?=
 =?utf-8?B?TWNXTUZwZExzSmhGSXRVUDkxMUJxWE0xRDRqT0ZXMUxLUjVzWjVuajM1VVll?=
 =?utf-8?B?R3l5Z0tQbWVkdXVtU0JHK0ZzOStQNEZ5QVJzYmtPN2dKNTNtZGI0TDFodStv?=
 =?utf-8?B?ZktYYlpaeUdtMzkzZ2o4YUpTWFRsK3NCYVNLMHR3R1FYN0hSWW4zanU3anBk?=
 =?utf-8?B?VUlCdmFlcHl3K2F3L0RpUnAvY3lsanM0K25qYS8wcVNRWGJjeUp4MTc1YnU0?=
 =?utf-8?B?OUJGTWUyaUJabFVZQmRDS3Iyc3NmRkZVSWJhcWZ0QkhHMkU4dTFPamwrSjlv?=
 =?utf-8?B?NTk3dUZJaW1wNTQ0cjRWR1RweUc1ckw0YmVUU1pWanRKOThkS1ROWU5GS3J6?=
 =?utf-8?B?aXp5WENWNEpPN3BFSlJKSE92Q1liSndqQ01QaE0yVjBlbzJ2dVgwNENwdUh6?=
 =?utf-8?B?VVB3bTliSWdYTFFwM2JFbk5FWW5PM0RyRXZWVWJjR0ZNTEFTUVEvOUxLODZN?=
 =?utf-8?B?Nmx3dWhjR0s0dXhaYmpOWjd2RjhHOWFHUXkrT05WeWdaay9iQ2dZbjAramxC?=
 =?utf-8?B?MzdqRVY3bEFJT2lKNksxYyttYlBYaEZrbWdwWnU5a3JZcmhQbzlPZnJIUG4v?=
 =?utf-8?B?cVc2Rm1saERCQWRzT2lPV083RU9mRkdON0ROUlJ3eHI5clZwdGdBQWlybVh3?=
 =?utf-8?B?aTl2YnkrVW1vaEZISlVjaWxEUzFyejZHUE5BdHJudEk0cjFWdFlNQThvcDlj?=
 =?utf-8?B?K1BqeEsyYVpPNzZPOGdkeVhQeWFLcWdxZlBLQnY3b3BTVHRMVVdDTTlReUtH?=
 =?utf-8?B?MUZFbEdSbjVkajk0azV0VC9sSCt0dVdJRWVYYTVHR2g3eXhYUUhkaHo0ZUI0?=
 =?utf-8?B?T0MwRXdBWkhIZlI5S3dKbTBuWlFmbTRIc1A5eDhZU3BaSy8yNmFZTmlMdUNR?=
 =?utf-8?B?ODlwNHQ1TEdzZ2pFWldDT09jV3grY1hxWUFBQk1QaUZUbzVqTFNhUEovSUdm?=
 =?utf-8?B?aEhsMXZjRTVPUmJCR0FldG03bmVwRnZaaTZvUld2MmhsQTl2cERzTStFV2Z3?=
 =?utf-8?B?Qmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed28f788-0d5b-4173-2a6c-08dda9d4f738
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 17:17:10.1804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xtEP3unnFro2rAnxWfcQSWCl+OBJ/bwY+yYkTNRB9H1v2tGhSaPcrOtxh8h388smz61yJtYKNJGxjcbwO68epfTG3L8Xgiw6yWg/+qTIyDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8508
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF0Y2h3b3JrIDxwYXRj
aHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4NCj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDEx
LCAyMDI1IDEwOjE1IFBNDQo+IFRvOiBCaGFkYW5lLCBEbnlhbmVzaHdhciA8ZG55YW5lc2h3YXIu
YmhhZGFuZUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IFN1YmplY3Q6IOKclyBGaS5DSS5CVUlMRDogZmFpbHVyZSBmb3IgQWRkIFdpbGRDYXQgTGFr
ZSBzdXBwb3J0DQo+IA0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBBZGQg
V2lsZENhdCBMYWtlIHN1cHBvcnQNCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzE1MDEwMS8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+IA0KPiA9PSBTdW1t
YXJ5ID09DQo+IA0KPiBFcnJvcjogcGF0Y2gNCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL2FwaS8xLjAvc2VyaWVzLzE1MDEwMS9yZXZpc2lvbnMvMS9tYm94Lw0KPiBub3QgYXBw
bGllZA0KPiBBcHBseWluZzogZHJtL2k5MTUveGUzbHBkOiBBZGQgc3VwcG9ydCBmb3IgZGlzcGxh
eSB2ZXJzaW9uIDMwLjAyDQo+IEFwcGx5aW5nOiBkcm0veGUveGUzOiBBZGQgc3VwcG9ydCBmb3Ig
Z3JhcGhpY3MgSVAgdmVyc2lvbiAzMC4wMyBVc2luZyBpbmRleA0KPiBpbmZvIHRvIHJlY29uc3Ry
dWN0IGEgYmFzZSB0cmVlLi4uDQo+IE0JZHJpdmVycy9ncHUvZHJtL3hlL3hlX3BjaS5jDQo+IE0J
ZHJpdmVycy9ncHUvZHJtL3hlL3hlX3dhLmMNCj4gTQlkcml2ZXJzL2dwdS9kcm0veGUveGVfd2Ff
b29iLnJ1bGVzDQo+IEZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNlIGFuZCAzLXdheSBtZXJn
ZS4uLg0KPiBBdXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL3hlL3hlX3dhX29vYi5ydWxlcw0K
PiBDT05GTElDVCAoY29udGVudCk6IE1lcmdlIGNvbmZsaWN0IGluIGRyaXZlcnMvZ3B1L2RybS94
ZS94ZV93YV9vb2IucnVsZXMNCkxvb2tzIGxpa2Ugc29tZSB0aGVyZSBhcmUgc3RpbGwgYWhlYWQg
aW4gdGhlIGJyYW5jaCB0aGFuIGRybS14ZS1uZXh0LA0KSSB3aWxsIGZpZ3VyZSBvdXQgYW5kIHNl
bmQgdXBkYXRlZCBjb25mbGljdCBmcmVlIHBhdGNoZXMgZm9yIGludGVsLWdmeCBsaXN0Lg0KDQpE
bnlhbmVzaHdhciwNCg0KPiBBdXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL3hlL3hlX3dhLmMN
Cj4gQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9wY2kuYw0KPiBlcnJvcjogRmFp
bGVkIHRvIG1lcmdlIGluIHRoZSBjaGFuZ2VzLg0KPiBoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ct
Y3VycmVudC1wYXRjaD1kaWZmJyB0byBzZWUgdGhlIGZhaWxlZCBwYXRjaCBQYXRjaCBmYWlsZWQN
Cj4gYXQgMDAwMiBkcm0veGUveGUzOiBBZGQgc3VwcG9ydCBmb3IgZ3JhcGhpY3MgSVAgdmVyc2lv
biAzMC4wMyBXaGVuIHlvdSBoYXZlDQo+IHJlc29sdmVkIHRoaXMgcHJvYmxlbSwgcnVuICJnaXQg
YW0gLS1jb250aW51ZSIuDQo+IElmIHlvdSBwcmVmZXIgdG8gc2tpcCB0aGlzIHBhdGNoLCBydW4g
ImdpdCBhbSAtLXNraXAiIGluc3RlYWQuDQo+IFRvIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGJyYW5j
aCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIuDQo+IEJ1aWxkIGZhaWxl
ZCwgbm8gZXJyb3IgbG9nIHByb2R1Y2VkDQo+IA0KDQo=
