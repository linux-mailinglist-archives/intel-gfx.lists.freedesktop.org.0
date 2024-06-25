Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C7591711F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2024 21:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF3110E2A8;
	Tue, 25 Jun 2024 19:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mEuLX1OA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF4FA10E221
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2024 19:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719343923; x=1750879923;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Bz9qSCHmCKl33XUQ8jCwK2frfnAFtIXJWF2vuP6A2Pc=;
 b=mEuLX1OAM+hzaJvbY6huNW61OwHLoD6RjFw5MTF+lSW+YFsFHeB3jDEq
 +qGOCiHwfCySUsLeFP7lJpcxBA0JJ9iNUDIshoIECsN6Qxj9KAz+rAY7k
 uUgxP4Ci0mDgBHgDugrsonOUWcK0AZcBOJ0KMOgRZVxrd/bMWsZrj5dSZ
 mXUUVsZZ42MvdQcZ9E6kJYD26QQHErR3qbWPPImGBCK0Ubf7k+x0vZnu2
 pm4EGOmVXLbDQ7WZYg4wj9QjQ8t0wC3jyprsHhWWfwoWJROk3B5c28pCy
 1OAPPIWNSmHVDcbyNXSWnGO0qqckNFXbfhZmf6bYbCp4FaLd1MqQfyMdt A==;
X-CSE-ConnectionGUID: oE1+lx6WTqCl86/z8AAP/A==
X-CSE-MsgGUID: ZLG2waEwQ22buafiKbVlcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="26973641"
X-IronPort-AV: E=Sophos;i="6.08,264,1712646000"; d="scan'208";a="26973641"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 12:32:03 -0700
X-CSE-ConnectionGUID: YEbzHMbpR9+i33x4RfY6dQ==
X-CSE-MsgGUID: +EEyh8PzTCijZ/w0IiBuOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,264,1712646000"; d="scan'208";a="81286678"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jun 2024 12:32:02 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 12:32:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 25 Jun 2024 12:32:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 25 Jun 2024 12:32:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 25 Jun 2024 12:32:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIT6dedbMdIvxXMSx0wrggqlFW7sNPFZLZVZG7DvzjLZVr7C0sJ0rAORKO8U7qCRx6aeo6ek/pmq81Di8LFlow9IF3MPwiQQHCDP0K92QpVcX3rB/Pfrm3AFsh/X2stxygvfegRyG9p8TJwqxSqMeLhhK9DfKIXHNdQyOmCKGWRJlFYuUuq8QHQAwYyoKyvZyYJVUf6S1DNyUzXq92GwTLhIK6zSbzWODRFGDr3EEhMB9Sj42Ql4UuQP/fqvCS0f/qw6dx0Dxtl5/tynQrQ2p6Xfk8qxNtAiUEjitRj9JzFQJwejZvE5GOpHN+mK4Aq7Pn80NrzJ5re7WX7PPPeuqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vJHyn2TXVQyU4nEpjseeNXYeTjUsRMQEHMug4U0uw44=;
 b=oYV31SFaAhBSqyk8FLTVurWhT7Go04g43jWB4D1/HZiLJthRkU87hjDEo5PbKnqUEYW1rTZE0Q8ii+6B6WJTwu27JDe5ACC7RD00601GqNNCaNDD32C2qrN/V4nHI2pXuUwOGrWLxCfl5Vktov/DEexRNm72Lo/oJKr7QAisN5zvTbDRF0AVX47nQVlaFieRqUgUUbHwdz9B4K2Apab8YfjEuMfC9CcpxJCBtRd2M8KL5W0XTFttyQOLbKiOdeeVFV90TxqoO1OFmR6dN6PE/uZZWywfuHzHoKlrYPszlyssNiaizqojr2F2qhNxwA+UsLBaHeLeXC6hifH4c7/TUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BN9PR11MB5306.namprd11.prod.outlook.com (2603:10b6:408:137::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.29; Tue, 25 Jun
 2024 19:31:52 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 19:31:52 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240625111840.597574-1-mika.kahola@intel.com>
References: <20240625111840.597574-1-mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/display: For MTL+ platforms skip mg dp
 programming
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 25 Jun 2024 16:31:47 -0300
Message-ID: <171934390705.2542.10983050954904919169@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0373.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BN9PR11MB5306:EE_
X-MS-Office365-Filtering-Correlation-Id: 778c897f-72e2-417d-ea29-08dc954d773d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|376012|1800799022;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U1BPYlFxMTBDNytKb1BkVGlkN0ZIMGRDcDV3alBibDd0WGFUdHJHMzBNNU9k?=
 =?utf-8?B?bDlockcwTU9xdXV3RkpLU2N0VjkwTFNSSVczZXNEQ2RES0djUmRmUEZSVFMy?=
 =?utf-8?B?Y1pTOHlmZ3hzbVVZeFJDa3JITGJ4TzBzNWZ4Yk5Pc1lrZ1NVY3BjZ24vV2xt?=
 =?utf-8?B?N0RocThIMW1DMXo0eUc1TlRPYkgzSjgxcjhyelZKdkM3ckZ4WFppM1ByY05L?=
 =?utf-8?B?TUMrU05wZkNRaHpFQ0NWL2kxYVRPWUVqa0piQU5mS1FxZG4rYk5XdUcxRzgz?=
 =?utf-8?B?UllxNkxmVUFUdU5WbWwwTnliVnlsSWY1cXk4ZmJ5WlZnOUc4c0s1S3c2VlZX?=
 =?utf-8?B?Y0RPdnV2NXQzUSs2ZTJsc3R4YWYzM2FUTStBMmM0azRGdnNsRUEyVVVZNlV5?=
 =?utf-8?B?anQrdjNnSTBWeUlTejQwSkRxNVVDU3UwYXVIQXVYb1A3SVh0YUUvN0tRNjhI?=
 =?utf-8?B?RVNBanhxaGlxcmZHdmE1Z2EzS05nV2p0WVhKV0x0a1RWUnVqekcxZjgwOWxw?=
 =?utf-8?B?ODNYbUIzVXV6YnMzVGR6dHAvYUZleXpFckJxUlNVY004akZtcDVPSXhYNHhm?=
 =?utf-8?B?MUNoNG56NFBQbFk1SWdUQ3J1NllHOHZyRWhzbzZYMkZ4MkwvUTBvRFV3TUs4?=
 =?utf-8?B?bktNSEFMc3hYWGN5N1dIMjB0K1RjUDFrRE8zN2hFZ2RUUStNZ0F5WkFTL2Vr?=
 =?utf-8?B?UktMV1B5WmlNTkxvMjlkcHJYVEpXb053RkM5ZXBIZlpJRWVRMzJPb1RPdlhn?=
 =?utf-8?B?aGxIaWxTNmM0Q3l4K1ZSajF5S1NDYlljUXFKbEFqYXorNGJqbWozSjRpUkdM?=
 =?utf-8?B?a2IyMURVYmJPS2lMRTUxMDM5c29kQ3hIMU93TWhxR2N4S3l1cTNRQVBQTVhO?=
 =?utf-8?B?dHZxTnJnL09mUTFucWc5QW0xRkdwVCtCWk9ma1owUE8xbzd3OVkzamppMitY?=
 =?utf-8?B?ekFSdm1RZlp5SWE1dGNPWFZDbnpRVktxTGhuaWNYcGx3TURSeUxVMzVMVnZi?=
 =?utf-8?B?YmxPcUN0azRPNVh5MVJ1dXIxVk84T01oaEF2RG9wZEo3Nm1WNDU4UEZkMEJp?=
 =?utf-8?B?MU5iREdJcHZuRk9sU0JmUUlEeG1CVUkvMi95ZTUwdzF1ZC9ieW5TditQVUl1?=
 =?utf-8?B?UnFiQThzNUJuNkMySVNlbVR2TldFQWhNYk5wbTVxUXRLVGY3VGlIQUhQVHdD?=
 =?utf-8?B?VXNnNWk4bmNLYlJHZCs4aXVJTFlHU2lMRXR5T2syeWtBV3hSRHpJdmlwV1cx?=
 =?utf-8?B?SEl0K0FuMzhHRTlmWFFzWkFwUUJDQndCRjVCWjlrRmwySFhEMHJWQXJSczN6?=
 =?utf-8?B?QmNUZklKRC96MFFFcGMwbVgwSFUzRDZSRlhPUFBXVlc5TnorT3VuV3RxTVFI?=
 =?utf-8?B?VVFBanJzaFNPODlxYWwwMVdXMXhRblhoR1piOXFRNHVQOG1xSTVIWFJtaTFx?=
 =?utf-8?B?UytDeTNrUWE0dndwK2REbGdrRzViTWk0ZkFvY1dyZGlHdjd2MjROZHJWcHFC?=
 =?utf-8?B?ZDRDbWd0MXliQUEzcHpKWUpFLzZacDhMVEY5Y3pmb1hMdVdlOWY2Yk1iVGtJ?=
 =?utf-8?B?dzFCK25UNzFqNmNONHhQREhReG5tV0poa3RzUjFWQ25DT09abmJYME90ZUhP?=
 =?utf-8?B?SW9qb25ad3ZUYzVzMG5HeEppK3pQYWlWY05ZZnBoMlhVaUM0V0ovTUFQN0hh?=
 =?utf-8?B?T0VmL25xYkhyV0xQZGd5dG53emp6TFdReGcvRHluMFoxRDgrTGlHYkl4SlBG?=
 =?utf-8?B?SHlIN0ZOd1lNdkZtazBTR3g3dnFSVGRmM3IzMXpZWnBkUjFJdTdKMXc1OXlz?=
 =?utf-8?B?cTQvVlJXaVhJNTVUSFkvdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(376012)(1800799022); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SG5ZTEczOW1lbm15OS9oaWxXWHVYaktua0dVY2pyUy9oL2RhOEFMcFFmc0Nj?=
 =?utf-8?B?dzF4QXRlOG5iZkN5T2d1MStkNVFNQ0h5TUFYVy9mQWV5N25GMXFCSzNCSzJq?=
 =?utf-8?B?OEkwdUY1amtIQ1Jtb1RNZFh3dUpXMkVQTC8rMU1xK1plR29yNFdUTlZCZTAx?=
 =?utf-8?B?TURWaUc3aTBqU0ljWU0xZjNIN05jZys3QVk3QUZzMUpzTEgxMEJkL3BRbG5H?=
 =?utf-8?B?M1ZuQmtkQVFuQTg3YmxTYm5yS05OWW5nUGlXQllOcDZQOFZTWmpVNU4rQnd5?=
 =?utf-8?B?andCazVrakt3ZG55by9yNTN2UUlrcE5pQXBwanptcWVYekpiTTF5QkJUZVVo?=
 =?utf-8?B?eVVsMEp3Z1FnclgrSHRkVkhOOElsZTd4cVU0SzE5em5yMFR0REZpN2xIZkhO?=
 =?utf-8?B?WlJQYU5qcW5SNG1qbmprTkw1ZWFYNHE5SUZxVGlzRFJsZk1yQjQwQVFIdjVF?=
 =?utf-8?B?VFdQYW5LbEZrczc4NnFrbVpMUGZGd0JYNCtUTXc0MzVHbmptTi9xVG1ad2ht?=
 =?utf-8?B?MGo3ekM1bDRrcDk3c0hVWnQ3Q3o0ZUZ6Z0JPa3RubEFYYzJQNjhRRlE1b1RN?=
 =?utf-8?B?ZFc3RTNwK1dxMDNYbXpJNEJxK3pjbm5hTmI0TElIOW44Sng5UzZIdjRtMHho?=
 =?utf-8?B?TjVZektXY3BvSTNFNm5XV0RXR2h3OWRUaFVFMnAwN1FzK0RFRkNjaUVRS25R?=
 =?utf-8?B?VlhNeitrWE5BUDNKczhCOElZbUpRdlFucmdLSWNrLzFBMmFlT0pXTElLSzl4?=
 =?utf-8?B?WDZyUFkyY2gxbittQUFKUGRKVjBVYU5IYkF4ckN6VEk3RC8zdHVFYXo0cU1T?=
 =?utf-8?B?T2x4SCsrTkRaRmE4VTE1Vkt3TUQwZXdMRVlwTG5JSUwxbitkMHRPY0YyUTdC?=
 =?utf-8?B?aTlTUDJKODh3MVk4UEhIbHdVQmMzRis1N2JjTk5SZWsrZGxSTUJnWXJBVkt3?=
 =?utf-8?B?VW1XSW5uWG9yYnZiSW05V1lQU2F0cmVsMDk0d3hKN2l2NlhHWnNrbFVKSnBw?=
 =?utf-8?B?MmxKME1CS3lPN3BNUFNjMjQ0U2hYeXRjcldpYjgrN2dabmRxVW81cGZPTS9B?=
 =?utf-8?B?Q3pRNlFXU0tvTmVENzJ6WDd5ay83WUdCM0VCcjdNeHJ3UHlqT2licThqZ0tG?=
 =?utf-8?B?UUNFczVKcDcyb0VaQTk5bHoxUUtPQTk0YUxRVEpyNFBQTE1yaWJXWnlUcGZX?=
 =?utf-8?B?cjNvcmJUYVdDeWNMbExFSlErQ0dRNlNoNkxPdHlmQjIzWUVBTXZrd1psT1E4?=
 =?utf-8?B?ODMwWEZVQTBxaFMzTmMrYnB0Z3pwUnhRUndjTFBwR3ZhLzVFRm4xbjhZWHhG?=
 =?utf-8?B?NDMzSi9hNjlNODRRNkEzTDY0b1BBMTE4d2RqbUszclBQZ2s0M0Y4eXJsN05C?=
 =?utf-8?B?ZENVSzNzVHNndG5sV2E1QUQ5ZUpHTmZ5RE9QWm9lZnBjeU52NDRjVldhK2dE?=
 =?utf-8?B?UlFUakx1QS9oTHI1NzlBZGdaMDY1aHdnUFFuOXFXYnBOV1ZuSmQ4c25XbndQ?=
 =?utf-8?B?NXVnVjhPZkwvTXVpNFJHMWFrV2JXVnNDTlhBdFI5RGRTMkw1ZkNhYWNDbG84?=
 =?utf-8?B?VW1nL2dmZ3JGOXBCL3FyOTk1Q2F5Q2pYR3gwTG5udGFBYkk3d3BOUWVtaTlw?=
 =?utf-8?B?R2VMQ1c4dlZFeTNKTEFSRFBodkhRWFQrTzZzSFhWUU1FblY2YTVDTGo3MzBx?=
 =?utf-8?B?dDRCeklYQlJoYzAydE56SjFzQTlRTkZJbFVlMExVNmd0RWFFVHdjQ1Mvc2Jy?=
 =?utf-8?B?Sm13Z2dwd0taU0tQdTZXcmMrakMvdlNrOVBJNzBkUDBQcGRQd052dXhLRkdP?=
 =?utf-8?B?N1M1dVU5Tk85RW9OZlpLM1pvandjOTZNak81L21vbTZmcVZUekRMQnBWMnBl?=
 =?utf-8?B?MHZtVlY0R3pCSkhCNmVaVXpTai92Y3dXOGZtOTI1N20rdy9FQW9UNkRMbDlF?=
 =?utf-8?B?QUNlMW1CckUxaHBTZDZQVUt6RkM2K1k2RFVYMTM2VGpSVERMOUdVeTF1NytG?=
 =?utf-8?B?dm5MNTFKUnNnWlk4RHh0SEdvRjNNQUorTDVqTi8wSDZMd2JaR2VRakdwM2Iv?=
 =?utf-8?B?MzJzOXphZzFkdERsdWxSNUF4aTJlNUtpQUYxZXpwR1JscUpNME5Ic3N0ek8x?=
 =?utf-8?B?MUEvdE1FbGpRWTZEUFBMVkJheGxjVzNJYTVraytNTW04MENZaklRc0Q2dTBn?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 778c897f-72e2-417d-ea29-08dc954d773d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2024 19:31:52.6963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: syyLdFlMJvxOcM6j8ovS5j4use8IOmKGIGOrk8vD6ElM4njG8+o/bef3pxZVkRYojS9+j1ajM3jqFWLnGExDoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5306
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

Quoting Mika Kahola (2024-06-25 08:18:40-03:00)
>From: Imre Deak <imre.deak@intel.com>
>
>For MTL+ platforms we use PICA chips for Type-C support and
>hence mg programming is not needed.
>
>Fixes issue with drm warn of TC port not being in legacy mode.
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index bb13a3ca8c7c..6672fc162c4f 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -2096,6 +2096,9 @@ icl_program_mg_dp_mode(struct intel_digital_port *di=
g_port,
>         u32 ln0, ln1, pin_assignment;
>         u8 width;
>=20
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                return;
>+
>         if (!intel_encoder_is_tc(&dig_port->base) ||
>             intel_tc_port_in_tbt_alt_mode(dig_port))
>                 return;
>--=20
>2.34.1
>
