Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GP4KDPESnWkGMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:54:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A3818129C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:54:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E093910E489;
	Tue, 24 Feb 2026 02:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jtpzvYMu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1823710E489;
 Tue, 24 Feb 2026 02:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771901678; x=1803437678;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t20EnKzqCTtCl1IlBkt9TOlM/lQhGxQ531L4OdTtWqM=;
 b=jtpzvYMu5xSgJziBsCdZcofXR51iAAHeNpEUQ+GdC4PA/M9H8fhrAxUr
 W7DPlKdIlu8vaJLECYGXfdez6io0HxMW2/GKM8qGPyLza7zEnDH5sW7qf
 hYl/LCsIWSJIFAxwn3YjHbqmIV4a+dykZ2V5DJrkzryx1n1BqN8Ph+X1Q
 Kr9Ju9yUXJnkzmibbLq9s0Nmf9k7xszbxGetrk8wuy6o8ompc8gaKgFfm
 C7E1xkT2ZnEFOt2GOA6CSzP5EkWN4jpMwXR744yDOhzbAXN97iPwLAF9+
 mVN5zC60znHECk2wCmNE2lW0yTIleGsnadODAFymiRcLQ/6yFJdH8cZXC w==;
X-CSE-ConnectionGUID: WZYkzsazTzCDaqdu8d3pfg==
X-CSE-MsgGUID: pC1i03asTbiey5uodYOrWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="83620959"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="83620959"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:54:38 -0800
X-CSE-ConnectionGUID: thWktvnPQqm7Pb4BoEDjAA==
X-CSE-MsgGUID: NyrIhLicT7iXEZP5Ig2z4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="253484796"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:54:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:54:37 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 18:54:37 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:54:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Emgz4w3qcChNy46ugUzS+lA6zY5deAhkgacisENEyxwdtBDouiiQdN/6q0QP0OD2er3pDnzmotPv7W/LxyPVa3LLJXNpKnprpoa7stM52Uyaf3YiZqHqKcG31wFqFOfJkOk6ZFjjZMMesc+Qi+qjbFIkw4vAJN3lIc5D0U0F7SHHXBmmCA5eEmq6YuBYv2udWpjqMLQL0DQaIvc7s2p6q+kNcErYVzlzjSVRcLh7g+MroaJEJiSAnIlauQ4GiJmBK2cphW2YhHEugrvF6ikdH3F9rE5g4yvUBReSAEcD8e521Y6If3WQbv53bHd+dzHNlrzoedqSmuAC5E8suv61ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vFf9nx5C8o7UrmeSDlPI9CW4cg5nin9tpk5aPNIDcgg=;
 b=RiYMR5Ez+yB7fn9n441WBbg9BUYqyGr7df5U42aM9gro5RsP+6GNx4zbzp8cLC/hDYASiqzM+5QqVFFQ2e5d1RBKFGtRWwDBnvlzLGOXISxcZAhFbpWS6Tya7RTt3o/Vq9uoB5aROpGn1tppwPh5GAsKrUOFBw0//ib0qrwGWyiTTRsEm1UAcGN5H4iTxfZfN0Fkk8QCIOeww2iRBqt+ok8LsvDRNDtT4wiKFzk2IoD+DbO9c6JgIY9KiI13eUPi6d9l0iezVYeoOGAC9OuoUGtD/XhvXQJb836kkgyoP5LqH8SwnOwgCGVvuqLu9OfHe/5r2Y3KmwJupLy5pv24NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB6265.namprd11.prod.outlook.com (2603:10b6:208:3e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 02:54:35 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 02:54:35 +0000
Message-ID: <aeaab229-e7e5-4ff5-ad6b-ab24633c9a87@intel.com>
Date: Tue, 24 Feb 2026 08:24:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] drm/i915/backlight: Take luminance_set into account
 for VESA backlight
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260220050217.2453681-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0246.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::13) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|IA1PR11MB6265:EE_
X-MS-Office365-Filtering-Correlation-Id: 37e91e76-ba07-4247-99c9-08de73500ab7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rnp1ZzFaQlpHbDRUOENBTEthcDdXdi9DUE1KMGl0eDFPbjJERVRyVnBLSHF3?=
 =?utf-8?B?bjZiWmFCZ3Mra2xKdWQ5UnRYcjVmakVKRW9adXhlOTlLQnM0V0dKeS9jU05a?=
 =?utf-8?B?dUhpUTN0eGFnUktNSUJMSC9JRVdCSmorVkttMzc2M0VNSVI2ZWJaT1FXbVBp?=
 =?utf-8?B?bXJHZlFld21NZGJxVUsxd0NRVDgvZE8yYlRSZEhsZlcycGpMMXJ3cS8zZHVm?=
 =?utf-8?B?L1lBRjFPMFNRYkhUaXc5Q29yU1grcUptSGMrMFloN1pSTjFiZU1nNzhWSFZo?=
 =?utf-8?B?TFFjYVlRVzJXMkhzQkkxK3BlOS8zRUhRWGRyclNDN2F3SDVKN1g4Rjdzbkdn?=
 =?utf-8?B?TGh3UmNRdFArMnlJZDNVcjBlazNzME51bEVqeWRQbE5UMW12d2RhZXF3cUlx?=
 =?utf-8?B?NFF2R1ArU2c5dmZ0akNkNGFnOHNIdUFvNEU0RktzeTZJNU5pVTBrU0QvUjBH?=
 =?utf-8?B?VGhCY3V0U2JHQ2lGcG9lSURCYVBZRXBhdFdnUzJYUnJiWVR3TEVZUmZ3L2tt?=
 =?utf-8?B?ZElhQ0dIZmN3UFpkUVJHemt0a2lnRHBmd2ZPdUp3MW1hc0RLdUJTTHUyNVVE?=
 =?utf-8?B?aWt2OEV5Z0Fyc0crK3hMTnh5cEVSSkswRS84N3BqdXRPcG54bC9YN0trd3Az?=
 =?utf-8?B?a0wwZ2lhN21OTElSQ1d6VDljdDBPWVp1OFhOQkVkWVNaVE5QWUhIMWxNQktU?=
 =?utf-8?B?Skk2R3JyV3N1TWZsc00xeXNKS1NvWmdPVloySHBYY05iSlNDMmtlTUx1dkFi?=
 =?utf-8?B?L0FsaStvcGdEc0VUa2thaUZNYnFYaGVEY0lCU09VYTY5QzQxWWczM2pid2RC?=
 =?utf-8?B?bnQ2cGE1SHJsYXByYmVhT0E4WW4vL3dUL0NaQUVOVUxtdEgxdktVRHBFbUZk?=
 =?utf-8?B?a0NNSXRkMHQxR1FUblcyU3pBZWQvK2p6Qm1NZERRaEF2Q29HWTV4Y1JXN1Yy?=
 =?utf-8?B?RUZicDA4aXVQTlRDV0FHZ1JGVDhjRDVXUGNhdTBMTWpqaXhGazhiMlhmWDhL?=
 =?utf-8?B?ODNzM2hxbVdiUTA4ak12WnJ6b2ljMGp6WVRCMzl3YWF3MUt5WE8vcEdEcnpU?=
 =?utf-8?B?S0o1em5zSWJNZjZEblFMVGN6K3ZWZm5oeVlleTAyQUJDWkx1Q2dZOWt2bTVp?=
 =?utf-8?B?WjgxSElCQ0orT1Jkc2JrVUtBbWtDbFdsbFl1d0ppbUtuS2hnMS93MUtyVDBV?=
 =?utf-8?B?dklaNHE5MkVPdWhaNHFhYnRsUlZHVHkxMHlKWTNGTEFNYXo3R01MNDJLbnBj?=
 =?utf-8?B?cVBGbDJIRkNPNHZkTXlBcGxuUkhzcmxlSDJyUjZHMVM2bzBlcnpHVTZTak9i?=
 =?utf-8?B?VlVxei9sam8xdjBoSHh5WXlNaGU4dHNSd3BWaHQ3QWJyOEdnWGU1SFQ5SzJ4?=
 =?utf-8?B?eHc5RjIwc2ovdzROUFdTNXFOTDlQeGQ0RWpsMmd1cnpnYjNiai9MRzRYdXE4?=
 =?utf-8?B?dXA3eVErZGhxUm51c2s4cm1SNTRITDRHWnltTVRaUk45TzJjQkthZkt6U1VB?=
 =?utf-8?B?NG1qYm9PMVlMeFZQS0I0WTZXVlVMbHg5RThaUnVUOTZCSmRPYnNxNG5yWGFJ?=
 =?utf-8?B?UW5xZzQ3cjhyL3hzY0Z5L3hqMHBrSCt6QVBVRlVGUWROOWpNRXV3Y3M3VkRy?=
 =?utf-8?B?NDBFdkxZQ1FjbWlndUlRaEZ5cENJM3lWVlVNQW8rZVRIVWl3dVlSNGJpcy9K?=
 =?utf-8?B?QWVnYTFGVnVDVkdZNXgxdnN0OGd5VktlKzYzUnVHVUVhbCtFTGYwajRrVVZF?=
 =?utf-8?B?eXIySlNWbTRWakpEZWRGekU4T3dVcHJsZ3RJTHM2Yi81VGJhT2ZDb0wwZy9L?=
 =?utf-8?B?RFFRQm5zS0ZybmZBdDdzaGZhVTBnVnBvNTBxckl2YWRORWs1QzF0RG9qUldD?=
 =?utf-8?B?V2ZSbVQ2c0plQTRJakx6Nlh0dkJMWTNRUzF1TG5uMjdVVzErQjJzTFNsWnRX?=
 =?utf-8?B?L2JCMlk1YjJ2QkUyOHpIU01iSTFyTHBGRGJoeXNEbTczNnJLTTVrblR1Y1dQ?=
 =?utf-8?B?a3BqSWcyTWhDNTcwTUFya0E3dWF5alh1ckNvVTNvUDlIWXloV00wTjFLekRs?=
 =?utf-8?Q?RYrpwc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDFielkzaFk2ZERHN0M5YUxjY1BsQ3Rsc0JUTElyTG5JVTFpcmxzMVFtSmIy?=
 =?utf-8?B?aVUwQ1pKYWNEWGlpOGg5eVFvQTBHZ0dac1hYeUZJQWw2QllUTnBLNkQ4RUhH?=
 =?utf-8?B?Y2NPdWIveitKYitldUUySVIvN2FIdXE5cWhnV3ZLM01IWk1QSkdTbHlEc0NW?=
 =?utf-8?B?SWUwakVpcTRSWU53Um5SaVNNZkt0L2dDRmVnTDNVNk5aakNPbHUvakxRNjBp?=
 =?utf-8?B?NFk5U3FvQVZsZ0N2Rzh2WnRISDZ0UW9MUThjME1YTWpRb0VOcmNuc0pBZ1pY?=
 =?utf-8?B?R0MzTGlUWG1oQlhpczhEM0VwQTZoRnA5eUlKMi92aU5oQTQxWVM3N3NYWGtV?=
 =?utf-8?B?N3hzMjg0Y3dMQzkyL2J4cFExbHd1blV1Sk9CSXRoQXNrRmVKR0F2bzhqLytV?=
 =?utf-8?B?T2lGcGUweStBMXZvaDVhNDFjZHYyUkdBNFpTWXFVLzdLSmVndlVtOU14U2g5?=
 =?utf-8?B?Zks0eWl4VkV1M2F6dmU3WHhTOFliSDlRTkNsQWhqN25GTHhlWWhTYUtRUEFQ?=
 =?utf-8?B?NXRkc3ZyTjlxZXBUZHBxUElaRTF1clJady9EWVJINWRBS3ovVjhKd1NBdksy?=
 =?utf-8?B?UnhTS1h6RHgveHBycDcwREZIMzNaYStYdTRmVXdRY2I3ZWFlemNsSHJsU3Zk?=
 =?utf-8?B?NlpZK0pEMk82R0dWckFpblUvemVjbkZoYVhrTk1mVGp6d3Bwb3BScFE2WE4z?=
 =?utf-8?B?Q1JPeGdhOWtuOWE3WFdVSWFpTVVITjloTE5JbkFwcUhnNWZOa2RIaHFxVW1T?=
 =?utf-8?B?UGs0cVZ3UG9uZUthYU9raTR6dU5DNlV0WDBSZWp5dEJSZkNwcnliU3N6eWU0?=
 =?utf-8?B?TUNRd3JzcFNGSzcyRXRRUmwrNWpnc2M1T3dURG1OWGFYY1dHRHY1UmFLL2JZ?=
 =?utf-8?B?YkhJNlpxWmVqUWJqblkwV2VuTVZ3dmdnbHBrQUxoWThQQ2NVc3Z3TkRhUTRY?=
 =?utf-8?B?WTZ6V1RTT0NaL3pDWHN6QkdyU1hzUldxTmUrdG5mVzJ1dWlyQS8rTERCYUxm?=
 =?utf-8?B?RHVtOWpseHBNSnVGa29vR1FBWXYxakVKVXFDNXB4bjRqcDVObmM5dlE1WDRL?=
 =?utf-8?B?Uy9PbktleFpwZ2YyTUM4eGQ2T0NEOVBkMTB3M2ZHVEMvNS95TnVmcHA5R2VU?=
 =?utf-8?B?K1I0RWZka2EwZElCRENxWG9HM2hvVjUvb3J4V0ZUbmNiSlpuMWVsYTV6MG9Y?=
 =?utf-8?B?V25mc2dLcE9qcEJFb2ZzbERwWkwyVEx3SWNZNXJNSHptZGRVRFRFeU1yZklJ?=
 =?utf-8?B?ZkFTSVphZzVsUEUzcFJHekc1b3BGVDRDR0plaDd6Y2IyUzhXb0pSaFlRVThV?=
 =?utf-8?B?UVpjY2VLRUU5bkc2bmJTWEtYWHcwVWtiSm1BNEhhOThUWFc1OE9oV1hXSC80?=
 =?utf-8?B?T0NBdXpJMGJQMlFqT2pydktha0IyVjBxZk5VdjJkU3ZzU0JnU05vN1MvRlQy?=
 =?utf-8?B?NVdZUURkZ28wYjdCeWVFMGdsTlB4dFhuS3VGTDZqNlBNZXFObTlGdEFPNzRG?=
 =?utf-8?B?azNFWU9GNGVKVHY3eUc1c0ZCSVAvRjhOZlVHOXYwcUJQK3piVGN1eENLd0tj?=
 =?utf-8?B?T1ZLVy9jbjEyRjJzV01mNEdISjVIdktoNFdPKzBwdTlkQ2xtTWJxK3VOU3hx?=
 =?utf-8?B?bktmMkoxaFVuYjhWemhTUlIrb0ZaVXJOdnI3YkprZjJoczhyNmFyMUtaWERr?=
 =?utf-8?B?YlA0VkNJeFBVUVBjTnliZG1kbDZod2E4VlhWS2JYdzVyNmYvNXo5WGtSTGs5?=
 =?utf-8?B?MSt4NUd6a09Za3EyYm9pand4R29jZGRMTzB3eTA0a2Rqc01uQktGVURncHdF?=
 =?utf-8?B?eVNITFJIdnRHVlVWL0czQ1hZWkUrRFY2VEFGcElpQy9QTEJmaGgyYldPNDMz?=
 =?utf-8?B?aWIzaitlRk1YbmRQalM0THY4TXB4OWtRQWxacytxVFFnYVNJUDYvK1FxbUJ6?=
 =?utf-8?B?dCtjdmJjcU9DdVNRKzBValhCamxmbkVuWEJUMTFiRGVNeHNCbEhVYXJDWjlW?=
 =?utf-8?B?R041a2FRbWlPaGxLWnQ3TkIwNjFvc2crOUt0aVU1Tm9rOFFTRFhUcUF1b1o5?=
 =?utf-8?B?NGhtQy9zaXBjVk1SdjJJbFJWQmJTMzN6TkJJN1ppeW41Y2hVa2tTTEY5Qk9o?=
 =?utf-8?B?UGZaSCtKNTQzS0c1eEUrUFo5ZjBOV0RiYjlDUXB3VnZnTHFtZER4OXVEZmto?=
 =?utf-8?B?WlBiSHFBbWxoQVkzOXZVOG5vRU1wZlJrQXZYaFFPcFZ6WWMwUVZOandaVENS?=
 =?utf-8?B?SS9wZHJKVTVwTjBTVi9zbkNlRFhuc0VGNmJGNGZtOXhmM014MjMyeW5xS214?=
 =?utf-8?B?emZKcTZRdm9FUCt3MFArQWNwVkxla3Q5OUFRbXdFa0Z2dUFXUXZwa0pDbUJM?=
 =?utf-8?Q?JQSFQYEvz/yAxOXM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37e91e76-ba07-4247-99c9-08de73500ab7
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 02:54:35.0560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7cUmTdmaw2CGpmH7yznscEqZyUELIDCBu42k0OCz6F2jK/KLBLMpI1mWnsja5ob1VBu3U7i9uvQNZByVi2CZPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6265
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 92A3818129C
X-Rspamd-Action: no action

On 20-02-2026 10:32, Suraj Kandpal wrote:
> When deciding what functions to enable to help control backlight we
> used to only check aux_enable. Now with PANEL_LUMINANCE_OVERRIDE in
> picture we need to take care that we do not enable PWM function if
> luminance_set is set.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 05d6d033f60b..cb39696491a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -486,7 +486,8 @@ intel_dp_aux_vesa_enable_backlight(const struct intel_crtc_state *crtc_state,
>   	struct intel_panel *panel = &connector->panel;
>   	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>   
> -	if (!panel->backlight.edp.vesa.info.aux_enable) {
> +	if (!(panel->backlight.edp.vesa.info.aux_enable ||
> +	      panel->backlight.edp.vesa.info.luminance_set)) {
>   		u32 pwm_level;
>   
>   		if (!panel->backlight.edp.vesa.info.aux_set)
