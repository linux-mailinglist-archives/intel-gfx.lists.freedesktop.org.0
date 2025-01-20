Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AFBA166C9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 07:47:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC9710E308;
	Mon, 20 Jan 2025 06:47:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5mIF5nX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04D1E10E2DB;
 Mon, 20 Jan 2025 06:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737355625; x=1768891625;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=AOzdXZOzId/GT0QYnr/ICrJ4By4MvZdp68enaWE76a8=;
 b=K5mIF5nXj6JtneIgH8S58WujUmGJDOd4dfhxybO+LAQTKzO7TQJmaUfb
 7sdUlNlnV4unyblPjiclwQlb/OkGVMCnlXYGgGf8kGPlF22ioNfhttdVL
 TYJL9tNZSCxGEP5GYBiO4V30iHn9apc8AWkXia9OXAW6foFOLouRTGHkH
 lMldJsMaQWxO+TLxtlFH2tkdQcVqSya81nthfGN/b2BKF3RZelhU2rol1
 gdKQIU8tHX2wKJQ4eFKeWGdizzVrFAQiJDwMJkyJqn/XIt018xIQYrNKY
 2oU9ewnriy/MoT7TDY+7T/33OkdhJ3EcQHbe+0mtNKeGdwMyPmSUrrtvm g==;
X-CSE-ConnectionGUID: RF6SahQDQ5GJa3SA9yJ9TQ==
X-CSE-MsgGUID: Wobcln3fTDqkhDIueEwGXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="37625859"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="37625859"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 22:47:04 -0800
X-CSE-ConnectionGUID: 2WlbVb1WTUS2XiFJELErHw==
X-CSE-MsgGUID: sBJWSWUSTg2+LCCh9peeuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107291974"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jan 2025 22:47:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 19 Jan 2025 22:47:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 19 Jan 2025 22:47:03 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 19 Jan 2025 22:47:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wqZUK6spDyxj8aseftSkBu0sPTnz1A8/X10XitRvFuNBSVljrJ+1Kbpzcb1ARsxzMUBWecyRxzEKKYnj21pxv3aZKFq7BvVEkDTQbboA2/G4ZxKM0IN83SRGoq+cATAaGVN3014in+CdBq+BpIMKIxIpXM4MpmqmgTx8pX5DEdct6hTASBTyqZXdL/gis1cMC4WgXG17GhB0MwJmvYjwXL3XDZJrj4gSrgzXiu0kRTqayAiDYbZ2i4cCCe527JUgCspL5Q/JHddbkvA4aRkXw5mkENMDKGG9M2jgpLgmx49ZN1My2nsy7AQP6hvcCemlIk/THzju0DQzbmCLkCB++g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AOzdXZOzId/GT0QYnr/ICrJ4By4MvZdp68enaWE76a8=;
 b=FAdnJEOfWWte5MOlHV3oK6L+8mo+hDvFiIqjHlR/RV2erdWaYtpc9Id2PweUYRMs3ICnvqVBPqiJ2irHJwrEVXjy3zuq2UGNNHBNhgvXbcuMt+2y7T3elQnJvPQTCkuI36J9ec14KSzEao6b3q3C2QGOu1jbiNpUkWhBAp7x97LndNVMUz3EC5d57fUU/F918pqP7T8ZHI7Txu73vaOg4M/GxccKaJ8EC5UevgTDc07FOdWtwviA+PYOxsi5Mr6KrQq1/uQ5VyPJLJhwCNiIcD3vLVLaDwUt2cGo6WYFI93oC0p5MLl6XQwX11oqR04wA1JmMr6we6NxkU3/xSoqMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB5804.namprd11.prod.outlook.com (2603:10b6:806:237::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.17; Mon, 20 Jan
 2025 06:47:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 06:47:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 06/10] drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL
 using DSB
Thread-Topic: [PATCH v3 06/10] drm/i915/psr: Allow writing PSR2_MAN_TRK_CTL
 using DSB
Thread-Index: AQHbYmiaTVb6o07Mg0OYjktDX0HoiLMbZZ6AgAPjxYA=
Date: Mon, 20 Jan 2025 06:47:01 +0000
Message-ID: <d36efbc7d74045d82b1d0d860e7be8fc0ab88fde.camel@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-7-jouni.hogander@intel.com>
 <Z4quE2WnwYfiEIwT@intel.com>
In-Reply-To: <Z4quE2WnwYfiEIwT@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB5804:EE_
x-ms-office365-filtering-correlation-id: 48a9340c-0745-4f6d-6696-08dd391e3e34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?czVHM2ZiSVJoeVcxMXRvOGpISjBpYTYrZUluS1EzcjIybXJHbTkyTlVac1N0?=
 =?utf-8?B?K2JzbURkNFk2NDJoc0pUckkxTFVuWm5yMjY1NnpRVVFPVnV6Wndtd2NVelp2?=
 =?utf-8?B?d2hxbzFsdTZuNnZSZ2NFaTZuaEVLall1M0VQZjRlMERzMHhITUw5RnNGSS83?=
 =?utf-8?B?UjhaeEV4b1dYdndOS0JRZVRwS3BBaDlOWU40ZzRRN3B5UDZwTFRJNEQwTkln?=
 =?utf-8?B?cXlXc2dqOHRzck1KeXdaelowd0t3U0FVeXpabXk5eTQrajk1UmxVanFWTUJH?=
 =?utf-8?B?cGNIRjBUWVZBYkJ5RStuYnRKS0ozY2RWZCtqTjZFUzBiVEdrUldBSm1ydEZj?=
 =?utf-8?B?WllkZHo1RjdEWi8zNmd4UEFGazJTbmFxcXdmRHo2cFpCdTRpNTZUamhMenZH?=
 =?utf-8?B?RG0yWDJWLzliYUFVZE9hQVFabEc2VGoxQ2EvZngzZlNHaWNIdFNxTHRudDNV?=
 =?utf-8?B?cHVibHVFZXBCdGZpZWhUT2NEK1BDWXQyL1laQzBqYVpDQ1p3LzhwSFFDbXdM?=
 =?utf-8?B?UHdGR0Q1SnhpMjZoSGhMK0NDZWNxdG1XNnhacHF0SkdiUlRONjZ4MWpCTlhT?=
 =?utf-8?B?UWRBNWVjWEJpQUhSTlVzRU5seEp2cnR1ckx0UHhST3Q1aytqRHB4cEZtRC9y?=
 =?utf-8?B?MnRhRnZOYzg1UDJ6UUgxMnpGUldVdTNpUndNckZnNmVPWVJNK0VlQUd4Y3lZ?=
 =?utf-8?B?TUdVdkE3bFJrVExlT2J3dFRTRk94YVVabVd1aWViYVFzYjdMODUrcmUyQVpW?=
 =?utf-8?B?S3ZORkhtdW81KzBqZ1F5UGZqeTNxTjR0RjVIWnpSQnJqMllXTDBsdTlNbVNq?=
 =?utf-8?B?ZUEwcFFEN21aOXI5UC8rd09ienBzb0hnRE5PSFptcXQ3bkY3dldKb0FPZTlq?=
 =?utf-8?B?aDJMc2lMK2dmOWZ3WUcrK1RUbm8ybUtONStnYmJmOC9HZkNqSHh3NU9SUXZI?=
 =?utf-8?B?MTlBRFo5RVFuK1Q1RXplUDU3ZWtXUDIvdlJnL09NbXN4OUE3YlVUWHU4VTk0?=
 =?utf-8?B?ZTBxSzFWQkhaY2dnR1AwaTI5a3ZOcWlrcGVLOEdCVVIzUCs1L0VGVysrN3NY?=
 =?utf-8?B?QTRFcTNNWksrektuS3FVUjhXaGpSejBHa292dE1XQUxNZE16bHgyRm1GemZ2?=
 =?utf-8?B?RlErRFo1bmowZUxqU05wM0ZzYkdQYVprUzMrSkcrT3JvaDZPQnB6UkphSk5a?=
 =?utf-8?B?RktCclU2endFeXhzd1hkSDY5S2pnZWcxTVpxcVIwYk9EaCtTOVZyTFUyTVpm?=
 =?utf-8?B?N0VJN2gwbWMvRUwrUHl0N3ptU0NvMVE3Zm9aeER3VkQyOVk5eG9tbit6KzBJ?=
 =?utf-8?B?ZVVrVXpFWUNqVUt0b2dSSUpXc3QyZGN1anBMdVlPeHNwMEh5Sk9xV0JBb1h5?=
 =?utf-8?B?RHg2Tmh1TEpvSUJCQnRneWdzazJoTkZKc0dNRzI0Qm5YbFp5L08xVDFubHpR?=
 =?utf-8?B?eFVsUEc5UkY2T2JuYXNrWmdDZmRxT2F4YVVPSFZ1Rk5wRitYSVBhVXUvY0xW?=
 =?utf-8?B?bE5UMEpIR0RZcitQREZIU1hyb01BQ1VqUzBxeDY1ME5BWW5ZdDduUW9Oc2JQ?=
 =?utf-8?B?NEVaSkp1aDNtVnRDMnVCTExRbXBDUStqRFB3emZwZVg5eS9YMkpUdkhXR1By?=
 =?utf-8?B?OTNnN05NQXo0N0RhQ1Jod0FHNGdmTk00RURmRmhydzQzNEtQOEdDTUFpT21I?=
 =?utf-8?B?a3JoSW5tMk9uSWdxakpKSk1pZVU3NmF1MXc4czBvSVFuelBTTER0LzFRRS9O?=
 =?utf-8?B?L3paUGt5VXhnemVrVGcvSXVIbitvUW1TRyt2aGNjUVJTbjk1bmlYRXRXRUN3?=
 =?utf-8?B?d01aR3N0a3hvOHJxM01KRlVKU0phQmhDcUVJeDNRdThpUkw1T2hPRk9KYnJO?=
 =?utf-8?B?aGxKN2JEdzNHRHBtZ0NUY0N4QnZsL04yODB3ZkM0T2lWRG9SQXZwVFZuRFJ3?=
 =?utf-8?Q?AYEGLdgv8tlXWu9fNDpdvUY9EljtcEAQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cE14TldncDBrS0dURjVXUXpMQldTWmdXUVNOWFV1dW9makRoT2hISVFRUFZq?=
 =?utf-8?B?Y3VHc0xWaTRnT0pGSE4rOHlXOFMwc2o1ZWRnVmlhVldDTVk3VHR2ZXRYRHFU?=
 =?utf-8?B?b2pidGpuSU5xUmNHZFZkUGVuNlVNNzludUQ3YnFmNjJaeVhoUjUvazVWeFFQ?=
 =?utf-8?B?V25vQnFNeDlBU1NocHBFOTlLQ0IwUmpHWWxXbmhJVDhyZzFNQkpEM3lrSzB5?=
 =?utf-8?B?dEZGYkltSHViRHpoSFAzQy9mcENtclBCK2UvYllxTnJEWDBHOGxrL0h4MERo?=
 =?utf-8?B?d2pSdkFpQ09uWkUzKzdPSlNJRVN6cGV1UFJuNHEyT0NETWNRNnpZZTZPYkZX?=
 =?utf-8?B?ZHFxeC85N0p4eEFzRkVacUYralljS2tvaUJOSGVNRndYQnNLOGpsQUQ0NjBN?=
 =?utf-8?B?Tm85c1l1WnNaWUI5Q0NvS1lFS0d1UVVQS3ZVR014bFA2L1RjTzczQmRGMytq?=
 =?utf-8?B?a3dseWltSnBSRzBSejlFNTlOMjRONU05RC9zN0tkQlptdnJsMzhZL2dOSDlF?=
 =?utf-8?B?T2hIakM5aDR4WmxYU2xYQUpjWlIxQ0JDdEhBRElNdWh0Mkx6L3A1ZGhxUEJY?=
 =?utf-8?B?Qm5LSlJEUmlWZGcwdDVENnZsaXNXc0YybUg5MndWWWl2V2JPOEI4WFJJc3BT?=
 =?utf-8?B?ZzRYQTlWdWtWWEY2Wjhlamo0UmlTSUNDaEtsVXBVUnN4WHZIVGIvdERTaVVz?=
 =?utf-8?B?N2RYMGJwWWE4WVltYVZPdnJETCtGTEY4SkgrdGdXTkxkZDFROUZwbHgydzdD?=
 =?utf-8?B?ZW1haVpZajQ2U2hPRHN1S2duQTJuYU1BWWpDcDlJZk1RMDdsdVNDNkg0ZkF1?=
 =?utf-8?B?RU5BL0ppeXRiTVNheHBnMXJ0MURWNGovak5PZ2lYKzBlczRWbXBnMjh2aDhm?=
 =?utf-8?B?VW1pdnA0Znd2Y0Y0eVFsRXdrOE9rWDRqMlNLT0hpRmdXd1JYTW5OaGFlL09p?=
 =?utf-8?B?czZmTzRrQmoxaE8xTitGc2JxekZ5ZmZqMFFJL3FEdVRTalJSMzhVSlAwWGdB?=
 =?utf-8?B?Y3RpOGhVaEs5M2hnamNmRU1MU2pHNEFmb2dHeWRsVHhoWFVUUXA3UkZQeGRQ?=
 =?utf-8?B?K1VzdjVwbVYrQ3J4L0UzMG1Nd1V2bU9nREVoZ3JMK0haOUJBeDhLd1VyU0JJ?=
 =?utf-8?B?REY4Sjh0TXplNnloQnhYUlUxb1YzQ2VqNU5sQUppVkZMdGZRRHFWeThrNGM3?=
 =?utf-8?B?L052bTBkeWV2Zm5HNkFieFFQQjBZYjY1T1pCeGVoU05Wc2JRR0FLU1F5UDVK?=
 =?utf-8?B?NkgzWTdBWWdIb0t2VUp3aVkrOUJiSUE2cEpGd243WTJLQVZOMzg5SkRBVnFB?=
 =?utf-8?B?VW93bWYwc1R0TndzRHZ0U1dNcnc3TTBRN2ZNWUZDR3FscXhMUzFrWjhFbFFH?=
 =?utf-8?B?REw0VVVvVlMrbFYxbkVYcFBCTmNTdlVvN1B4MzUxYXRuZWpHWktzZGhCeUJo?=
 =?utf-8?B?ZHc0V1U1dDVHNzRuMzE3M2lMdHRmWFBKU0FaU0taM0xsbEhTQ0xmazkzT00z?=
 =?utf-8?B?T3VvZVNTU0VQYkNGMk9nNmhLejcrYUNFYmoxOERpNDlUVXUyQTNtaVpFNzNN?=
 =?utf-8?B?eFRuVFI2cUhreGM0WVdKdTUwdng0RFViTFkrYWpIY0ZESDZIUEpSYlpSSS9o?=
 =?utf-8?B?YjdZYzR2TjViS1cwZkpSTlBLbkVLOThrdElwWmRvQkRSQWtudm1HdDM1Um9n?=
 =?utf-8?B?UU1lb1BWa3hOcCs1QmhkYytOcmExbE5CVVhCa1lGYVdMUVdGTVVTd1l1RzEr?=
 =?utf-8?B?aThXT0dHdXpKWmFOVmYxNndwVHBkUXpaZEd2SWlOVE93Y2JZWTk0eVlNRUVs?=
 =?utf-8?B?OFNQZFBHaHE5cnkxS3lQMEQ0eFRYMzczdC9tRnk5WUpKa242L1VOanNFOUpU?=
 =?utf-8?B?ekFncTJKV2JXcXl2eWpXWlpINDgrNWZiZFhHZ0JJY0xQdUdJN3N2VjdZczJW?=
 =?utf-8?B?VlFMcHExKzEwWlZuNnFCOHFNYVQxb215bWdueVlBTEN6WjA0bFI5YmdPKysw?=
 =?utf-8?B?cWhkemJRbWZiQ0pSL1YrZlV0NGhBQjhnWnI5NW1ZU2NuVWlDRGhZdUFSVUdk?=
 =?utf-8?B?Q3JmNTRWcmUrczkraXVUSVVOQ2lFZk1ldEVGMkRkQlM1TXlqbXprZ256MHpY?=
 =?utf-8?B?b2NRVDVnSHhkRGNOQW45alAvVTVzVkVQQTVTU0xYeHZjczIzKzIzWklkcXJt?=
 =?utf-8?B?UjVZOVltcE93aDFmb3ZzRVl4enEyN1VKcTFYNnc2a0RkVkZsRlFEVTNaNHkr?=
 =?utf-8?B?WVJSMEpzZ1hrUWhiODhWN0xTMzZBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BEAB65CE3D3F0B4F87D8AA4D3D284414@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48a9340c-0745-4f6d-6696-08dd391e3e34
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2025 06:47:01.1637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EwpEBEXtxnlH/iZZtmBWhcjjEKeiRERHPa/2BnGCcbTZTU8BuOohxO6Soe1OVu48jZm3LFRXt67Fl+g/kga1o2fmN3QNGEPtIlCjqvgryM4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5804
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

T24gRnJpLCAyMDI1LTAxLTE3IGF0IDIxOjIyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgSmFuIDA5LCAyMDI1IGF0IDA5OjMxOjMzQU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBBbGxvdyB3cml0aW5nIFBTUjJfTUFOX1RSS19DVEwgdXNpbmcgRFNC
IGJ5IHVzaW5nDQo+ID4gaW50ZWxfZGVfd3JpdGVfZHNiLiBEbw0KPiA+IG5vdCBjaGVjayBpbnRl
bF9kcC0+cHNyLmxvY2sgYmVpbmcgaGVsZCB3aGVuIHVzaW5nIERTQi4gVGhpcw0KPiA+IGFzc2Vy
dGlvbg0KPiA+IGRvZXNuJ3QgbWFrZSBzZW5zZSBhcyBpbiBjYXNlIG9mIHVzaW5nIERTQiB0aGUg
YWN0dWFsIHdyaXRlIGhhcHBlbnMNCj4gPiBsYXRlcg0KPiA+IGFuZCB3ZSBhcmUgbm90IHRha2lu
ZyBpbnRlbF9kcC0+cHNyLmxvY2sgbXV0ZXggb3ZlciBkc2IgY29tbWl0Lg0KPiA+IA0KPiA+IFNp
Z25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
PiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfMKgIDIgKy0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmPCoMKgwqDCoCB8IDE2ICsrKysrKysrKystLS0tLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmjCoMKgwqDCoCB8wqAgNCArKystDQo+ID4gwqAzIGZpbGVz
IGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGlu
ZGV4IDQyNzFkYTIxOWI0MS4uNWE1MTAwZjE0N2E2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAtNzA4OSw3ICs3MDg5
LDcgQEAgc3RhdGljIHZvaWQgY29tbWl0X3BpcGVfcHJlX3BsYW5lcyhzdHJ1Y3QNCj4gPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgCQkJaW50ZWxfcGlwZV9mYXN0c2V0KG9sZF9j
cnRjX3N0YXRlLA0KPiA+IG5ld19jcnRjX3N0YXRlKTsNCj4gPiDCoAl9DQo+ID4gwqANCj4gPiAt
CWludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChuZXdfY3J0Y19zdGF0ZSk7DQo+
ID4gKwlpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoTlVMTCwNCj4gPiBuZXdf
Y3J0Y19zdGF0ZSk7DQo+ID4gwqANCj4gPiDCoAlpbnRlbF9hdG9taWNfdXBkYXRlX3dhdGVybWFy
a3Moc3RhdGUsIGNydGMpOw0KPiA+IMKgfQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggODVlY2VkZDMxNjJkLi4xZTk5MzI5YjcwYTEg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiBAQCAtMjMzMCw3ICsyMzMwLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2ZvcmNlX3VwZGF0
ZShzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqAJaW50ZWxfZGVfd3JpdGUo
ZGlzcGxheSwgQ1VSU1VSRkxJVkUoZGlzcGxheSwgaW50ZWxfZHAtDQo+ID4gPnBzci5waXBlKSwg
MCk7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiAtdm9pZCBpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNf
bWFuX3Rya19jdGwoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkNCj4gPiArdm9pZCBpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoc3RydWN0
IGludGVsX2RzYiAqZHNiLA0KPiA+ICsJCQkJCcKgIGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4gwqAJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtDQo+ID4g
PnVhcGkuY3J0Yyk7DQo+ID4gQEAgLTIzNDQsMjAgKzIzNDUsMjMgQEAgdm9pZA0KPiA+IGludGVs
X3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiA+ICpjcnRjX3N0DQo+ID4gwqAJCQkJCcKgwqDCoMKgIGNydGNfc3RhdGUtDQo+ID4g
PnVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+ID4gwqAJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAg
PQ0KPiA+IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiDCoA0KPiA+IC0JCWxvY2tkZXBf
YXNzZXJ0X2hlbGQoJmludGVsX2RwLT5wc3IubG9jayk7DQo+ID4gKwkJaWYgKCFkc2IpDQo+ID4g
KwkJCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmludGVsX2RwLT5wc3IubG9jayk7DQo+IA0KPiBUaGUg
cXVlc3Rpb24gbm93IGJlY29tZXMgd2hhdCBleGFjdGx5IHRoYXQgbG9jayBpcyBwcm90ZWN0aW5n
LCB3aHkNCj4gaXMgdGhhdCBpbXBvcnRhbnQgZm9yIHRoZSBtbWlvIHBhdGgsIGFuZCBob3cgaXMg
aXQgbm90IGFuIGlzc3VlDQo+IGZvciB0aGUgRFNCIHBhdGg/DQoNCkkgdHJpZWQgdG8gZXhwbGFp
biBteSB0aGlua2luZy9pZGVhIG9uIHRoaXMgaW4gdGhlIGNvdmVyIGxldHRlcjoNCg0KIg0KUFNS
IG11dGV4IGlzIG5vdCBsb2NrZWQgd2hlbiBwZXJmb3JtaW5nIERTQiBjb21taXQuIEl0IGlzIG5v
dA0KbmVjZXNzYXJ5IGFzIHdlIGFyZSBjdXJyZW50bHkgdXNpbmcgRFNCIG9ubHkgd2hlbiBzZW5k
aW5nIHVwZGF0ZXMNCnRvd2FyZHMgcGFuZWwuIEkuZS4gbm90IHVzaW5nIGl0IHdoZW4gY2hhbmdp
bmcgUFNSIG1vZGUuIEFsc28NCm5lY2Vzc2FyeSBjaGFuZ2VzIGFyZSBtYWRlIHRvIHVzZSBQU1Iy
X01BTl9UUktfQ1RMIG9ubHkgaW4NCkRTQi4gRnJvbnRidWZmZXIgdXBkYXRlcyBhbmQgbGVnYWN5
IGN1cnNvciB1cGRhdGVzIGFyZSB1c2luZyBTRkZfQ1RMDQpyZWdpc3RlciB0byBwZXJmb3JtIGZ1
bGwgZnJhbWUgdXBkYXRlcy4NCiINCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+ID4gKw0K
PiA+IMKgCQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCAmJiBpbnRlbF9kcC0NCj4gPiA+
cHNyLnBzcjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkKQ0KPiA+IMKgCQkJcmV0dXJuOw0KPiA+IMKg
CQlicmVhazsNCj4gPiDCoAl9DQo+ID4gwqANCj4gPiAtCWludGVsX2RlX3dyaXRlKGRpc3BsYXks
IFBTUjJfTUFOX1RSS19DVEwoZGlzcGxheSwNCj4gPiBjcHVfdHJhbnNjb2RlciksDQo+ID4gLQkJ
wqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtPnBzcjJfbWFuX3RyYWNrX2N0bCk7DQo+ID4gKwlpbnRl
bF9kZV93cml0ZV9kc2IoZGlzcGxheSwgZHNiLA0KPiA+ICsJCQnCoMKgIFBTUjJfTUFOX1RSS19D
VEwoZGlzcGxheSwNCj4gPiBjcHVfdHJhbnNjb2RlciksDQo+ID4gKwkJCcKgwqAgY3J0Y19zdGF0
ZS0+cHNyMl9tYW5fdHJhY2tfY3RsKTsNCj4gPiDCoA0KPiA+IMKgCWlmICghY3J0Y19zdGF0ZS0+
ZW5hYmxlX3BzcjJfc3VfcmVnaW9uX2V0KQ0KPiA+IMKgCQlyZXR1cm47DQo+ID4gwqANCj4gPiAt
CWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFBJUEVfU1JDU1pfRVJMWV9UUFQoY3J0Yy0+cGlwZSks
DQo+ID4gLQkJwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtPnBpcGVfc3Jjc3pfZWFybHlfdHB0KTsN
Cj4gPiArCWludGVsX2RlX3dyaXRlX2RzYihkaXNwbGF5LCBkc2IsIFBJUEVfU1JDU1pfRVJMWV9U
UFQoY3J0Yy0NCj4gPiA+cGlwZSksDQo+ID4gKwkJCcKgwqAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNz
el9lYXJseV90cHQpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gwqBzdGF0aWMgdm9pZCBwc3IyX21h
bl90cmtfY3RsX2NhbGMoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
aA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+IGlu
ZGV4IDk1NmJlMjYzYzA5ZS4uZmM4MDc4MTc4NjNlIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gQEAgLTE3LDYgKzE3LDcgQEAgc3RydWN0
IGludGVsX2NydGM7DQo+ID4gwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gPiDCoHN0cnVj
dCBpbnRlbF9kaXNwbGF5Ow0KPiA+IMKgc3RydWN0IGludGVsX2RwOw0KPiA+ICtzdHJ1Y3QgaW50
ZWxfZHNiOw0KPiA+IMKgc3RydWN0IGludGVsX2VuY29kZXI7DQo+ID4gwqBzdHJ1Y3QgaW50ZWxf
cGxhbmU7DQo+ID4gwqBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGU7DQo+ID4gQEAgLTU1LDcgKzU2
LDggQEAgdm9pZCBpbnRlbF9wc3Jfd2FpdF9mb3JfaWRsZV9sb2NrZWQoY29uc3Qgc3RydWN0DQo+
ID4gaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdA0KPiA+IMKgYm9vbCBpbnRlbF9wc3Jf
ZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoGludCBpbnRlbF9wc3Iy
X3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4g
wqAJCQkJc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiA+IC12b2lkIGludGVsX3BzcjJfcHJv
Z3JhbV90cmFuc19tYW5fdHJrX2N0bChjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsNCj4gPiArdm9pZCBpbnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Ry
a19jdGwoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiA+ICsJCQkJCcKgIGNvbnN0IHN0cnVjdA0K
PiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiA+IMKgdm9pZCBpbnRlbF9wc3Jf
cGF1c2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gwqB2b2lkIGludGVsX3Bzcl9y
ZXN1bWUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gwqBib29sIGludGVsX3Bzcl9u
ZWVkc19ibG9ja19kY192YmxhbmsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAq
Y3J0Y19zdGF0ZSk7DQo+ID4gLS0gDQo+ID4gMi40My4wDQo+IA0KDQo=
