Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 880B39ECC0F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:27:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894CD10EB1F;
	Wed, 11 Dec 2024 12:27:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UziFtdo0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC7610EB1F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 12:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733920023; x=1765456023;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=35wPbB2D9Hkdhx2mZT0IQ6y2YNj7t4EXEH6vO4LEQ8c=;
 b=UziFtdo0W+ute5jbDSbr0kHlhGnC2boO/VW0Uwi8n4DboLo7mXXDcq/D
 Aj1a1dX28h4G3SZDob6/nNr7tZ80pZeBZEr1I8qQEz2uJm96GPXuVZq9B
 ujNRXSQFswMvoyroSw/S1b9hntuYbcrkEAWirAKsUFBvWFMvuueuowNJZ
 FRZe4c/w/x+X+0QbqmP35unkyEr2gbdflImH0o843TrZkeOXKDDADlVl8
 cT7C53usroxxfpK6Y1lVpF9tEIjUlDDSjV2+dvTurpmt4CSny53bHYQnS
 QiqQkQ8zM1Awi8eo5ohFzavNDC+d4dCQzcg79se9/0z1qtfIs5ilP+FSX Q==;
X-CSE-ConnectionGUID: uwyLimCgTW+P52/keegnMQ==
X-CSE-MsgGUID: d5RVuretRBy9o7euzaxR5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34542367"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="34542367"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:27:03 -0800
X-CSE-ConnectionGUID: svTbOPzESOaGYdCeVg6BVw==
X-CSE-MsgGUID: /syN1NQ+RzicklMUUUFCVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="95972629"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2024 04:27:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Dec 2024 04:26:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Dec 2024 04:26:59 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Dec 2024 04:26:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=khcKx6odJl+ktua+i5BvdkQdnitb19j4EiOpvk3NqBMq1CV4LEd1GGiOZnWV0kk3SayZubbAATYfft08s31j7KLuhcWQhhGjVgPkU2p+vQLSqR5My6DxeW4L62iG+xsu5nzYP8WunaN5tBTtPV1HsQEjgmjNwT+2mCHyItvOuZwqPAgbj8K80Lu1ueMHfqHXmyxdSRsDGWQPIhY1/qmRPGZlP9DFvDj88A6+TYjCz8m8myxqkUOjaqmdk8QojwANiCEjTzGjNy4faEuiPjuFarj8cyHhuGkHj8f4FaaA+SWUen0dA4y/3V2xKxQy8ZzifwZWNY0X1Z6Aj9Byk3mE+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lSFZKEdFcPtXyOJjJV2SBevoOATjYqXSyxVRCZCDjRc=;
 b=jNbUpiUwFkNuXe6J+oO4ZbkPwmbJqlaCuk4ivIg+Y89oeUuuTtv5iu3u1XEjgInwwqznRouuSmExsJ49lAl8qtPW48xi0bYtCyuqwfYxcFElhClgcyjNS0nf09apDW3Yx4kiQtxf9NlifLdp3nGCnLV5K0w+YvHku4elIuGj5g3KSCfxb8TwBzKkMxLjmEoRDZnu/dnj3EzzE3l53vzbrvxrEpcpxjSeNUbrBvd6egzFyQT5Lg/+VTJt0KM/PPQJEuVLarfkmtqxb2FObLFBBsuTxfzT/DwTAnmvzwDBnHJG3B7IFZQcwoZYIotLg9j9rGGFMkutV2wuU7Zx/C/pdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA1PR11MB6372.namprd11.prod.outlook.com (2603:10b6:208:3ac::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Wed, 11 Dec
 2024 12:26:43 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8230.016; Wed, 11 Dec 2024
 12:26:43 +0000
Date: Wed, 11 Dec 2024 12:26:38 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/display: use IS_ERR_OR_NULL macro on DP tunnel
 mgr creation failure
Message-ID: <2dhagz67cwkily7ylwdhiiuwioky44piuyvgny6yr4efu7mboc@n7e6pqafpgro>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <fw4bnfdbbolmg5zdzrf7raw5d7vzcxxz3zno3pti6tmnakrnvt@tx3262k6bzfs>
 <Z1lqA1n3sL_o4YRI@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <Z1lqA1n3sL_o4YRI@ashyti-mobl2.lan>
X-ClientProxiedBy: DU2PR04CA0090.eurprd04.prod.outlook.com
 (2603:10a6:10:232::35) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA1PR11MB6372:EE_
X-MS-Office365-Filtering-Correlation-Id: ec03fa69-8bf9-44a4-843a-08dd19df127c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?alptZFNDUSs2WTA4ejZiMCt0TkdFRlhLdW1pS0NYZXZIYnh5cklxNkdid1lC?=
 =?utf-8?B?L3lPNWIvYzhPNGNiMUxkS3liNEpmM1F0Y20rbm1hZHl6OENiSTZKZno3akFq?=
 =?utf-8?B?YVNJMVFsRzkwVDZLVnViN0hBMlgzTVVvYUJ6RVJ0cURXdldicXQ4STYzWjFY?=
 =?utf-8?B?OEdqK2hvUkFhRTJjS0dneFBPWjVzSGNpYjNiYUg1akVJSk1iVHpOTTAza1NU?=
 =?utf-8?B?VjlEY1U5OFNRWHpiekNFRldVOENQcTcyUGNWaTRUeWRpb21CcHd2UDlKZ3h1?=
 =?utf-8?B?aHpNcmhmUEo4eVJoVVJIbjh4SjlhMFNFbFlEdjZSVjNIcjJzM3pkaVBmODVh?=
 =?utf-8?B?L0xQc2FKc0xGcDRMaEJMMVNUR2trK2IyMmNKeVAzaFM2YmZqYlltZDRsNVAy?=
 =?utf-8?B?MUE2SmtneWJvN29BWDg4TExybFp3NVFIQnI5NitLRm4wTG5CVDBhd0ZHaGc4?=
 =?utf-8?B?ZGdYWWpVU0l2TU00TEJ5UysyZHN2Z3dIdVR1cDNOeVZacTIwMHRpUnBweTFs?=
 =?utf-8?B?OTd1SDJrKy9NdGVoZ0NJRE0vWUdWdEZwczZBZmxDTUpNYzFkdDE0U0tNUlZF?=
 =?utf-8?B?a0xSQjJVK25STWtwUzdMeVJXeDdrRXhsVFBjUVdaNHV2QWhIUGU1RTRnQ3JF?=
 =?utf-8?B?T1hjbENRRlYyWFNKSDExUWExbU5nOFhRUUdtQ1Y5ajhKWVc3YllLQkpwMWhK?=
 =?utf-8?B?eDVUL0ZYdzRReVd5MElMdk5VbmlqM1ZkYk55cmFvYzAxajQwMC83NlBkdTRR?=
 =?utf-8?B?VWhtV2NnQnAxamdrTnhNTmlLMjNPVTN6Qk9ldzVPWVFFYURMR3hUbFN6RUdp?=
 =?utf-8?B?R2xGcEVlUGtrLytDa3ZYYzBQczZ3NWovc2FxMnVIdUI2Y2krQVpyN3RMSFJ4?=
 =?utf-8?B?Mm5QRE5kNlFHaUhDMmdMWkdVckd6ZzZwQ3I2TVI2eXBpYnNLK1J3WXdJVnVs?=
 =?utf-8?B?MWkxUDFscndMQTB0bVhoWFJYQVpMOG8wVHhONlB2ZXphSkgzSkZvVUFUVlNB?=
 =?utf-8?B?ckpEN2pUUXRxak9Mbm1WU1BiN24xNFJST2s5NERHSHpNUmRwQkZ5VW1VTTFI?=
 =?utf-8?B?enRuUTBsZy9HSTIwMmxzMmpHdStDRTNqb3lkeTVoTG1ZVFNWaWdzamhUY2VC?=
 =?utf-8?B?Y2pDdU81aXpqTW5JTzA3aUM2bmNqanVOenBDK2dLdnV1d0JqZEdpNkNDZVZB?=
 =?utf-8?B?SDRDYmtyY1J6djJ1eHE2aXQwNkV2U0Y0RWlkdHpndGFVRU5rUWVlZU1DTGhG?=
 =?utf-8?B?VTlJNXVRcjFIaGNYSS9oQ1pTdDF2cm85WlVpZmttY1IvRXVnbVd3LzlUZlhq?=
 =?utf-8?B?ZVI5VkZ3RlZEQWJOSXREeFAvT0ZGSTlDSDN3aFRhZ2FpbU5RbWFmOGMzTFlk?=
 =?utf-8?B?UjlBVlFoT2VOWWVldUl6TWZWRU8vY05nSnRmWERjNjhIVmh5aW9pYVl4Uk1E?=
 =?utf-8?B?YVovS3ZXbHc3WkZYNlJoc1RHQm44SlFOS3JEOVYvTGk2c1BJMGhTa2svejFn?=
 =?utf-8?B?d0tlL3lzSEpwakJ2aGh1L2dOUVV3ZSt0UUJwTzhocTFZdEtuTjNUYUN3VVk4?=
 =?utf-8?B?dEdLbFd6aFc3Q0lERVdVekNNalQ0ZkJQTTlQWGVxSURSOG01Mit5UU9OUzRY?=
 =?utf-8?B?Y0ZtRWpwQ29NTU80OGZxSUwxL3lZTDV6OG0yd3dJNlFncUxUZVcyQVZ3a1Nm?=
 =?utf-8?B?RDNsZmUyUzBGbnRoeCtaOFRRQkFOZVVlSHo0MUpUYlBoWDA5ZHRCeE1GTllL?=
 =?utf-8?B?OWgycy80NERnOUw5QktHc2lBd0pmM251ck5Xc1VraGZHcUdkZllKaXdQdjNv?=
 =?utf-8?B?VHZFbGh6WnZZWlIvNWQ4UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVdsV1o5T0xXMk9ncU8vdzdxYUxuOWhtM3hRS1doYWZFMzNDaFYxc01KZ0dL?=
 =?utf-8?B?dUIxd1FLajZnWjkzZ3dVdE9ldm1URXlsRlgwekJKNUFheWdxQ3ExMTBIelFW?=
 =?utf-8?B?Vms4bFNrdXBQaDZJRDBPQWwwY2ZqZE81dHRRSU0rVCtuNzhRa3RFcWFXdjNK?=
 =?utf-8?B?ZkxrVjVIcUloc1dVakYxdmVlc1VOamt1UFB1NG9tMTVZc3pibzEraW9zU0hj?=
 =?utf-8?B?MlRpWnVCaVFia2NPZCtlYzlwMm1aeUxCaWpvbEJ6VHJqRE9KQmdaZFU1dzlr?=
 =?utf-8?B?d2dPcmhiRDd1dUViRTExMmdCOHhub2M1TngvQ21Ra0IvbU5NZkNPRm4rN2tJ?=
 =?utf-8?B?VzAxeHIyMW9TQk5pR2hSMDBZL0lnQmZleUxOWFFubnVKZ3dIT1ZQNklyQUV4?=
 =?utf-8?B?dVppVkpzSFVFZi9Femd4c2ZGYUpmZHJRTjdJN2w1TVZRdjdLWUdha3FHd0pa?=
 =?utf-8?B?NHN1VituNFBHTzhpMnhrOXNzSTJsQ3ZNKzZ4cXl1dTdUbzl3Ky9OcGhoR3p4?=
 =?utf-8?B?TTQ4d2pJRTJKQTZ5dnJuVDk3c0hCV0IrZ2Y4ZEZHM0FzeXBxNmo4d0k4U21H?=
 =?utf-8?B?VkNNUlhaTmtRZW9rU09GQm9zWlZxT1Bjc3BESzBXdzRqRE1KRDIxQ3BpV3p0?=
 =?utf-8?B?YkJqS3l0ZXRuaytjaWpkMWZnOWd3ZFNOTlg4dVlFbWVuTlM5U3A5cG9wa1ds?=
 =?utf-8?B?SmMzUStjMlVTa3Ivc0hRdUZnT3llVHNiYTVQalZyYjRkT0FnMDRjc2U2MFVE?=
 =?utf-8?B?dWRBNk0zdElCaUtvaGQ4bi9QUEd6WXk4UTJpeGRPUEFaK2xObXZ1c0paTzIy?=
 =?utf-8?B?UHhBdVdrOXEydUpEam00eWVRQmFzbXB6alF5dWRWSGFiTnlBSEd1eXJJL3lZ?=
 =?utf-8?B?aWUwSEIvSmRPS0djWUdocUwyT2dqT1NJeXRQN2NvZmVxMnA2Ylc5K2YrZEU1?=
 =?utf-8?B?WGVyNWZrWWNQc0QzS3ZUOVlJOTdFbXVNZ3NOWGxYdFpBdG9SUkx4QWtYaDhn?=
 =?utf-8?B?cGU1bUxHc3d6aXl2emFhaFRJbEkzeHQxNTczQmEveFlHQjczazFUOUMyQ25h?=
 =?utf-8?B?WFVqZDBTQjdLRG16S1A3dE1ObHNsR080dXhUYXNxYnNGTFpLdDFTYzU3b3hs?=
 =?utf-8?B?TVNMMVcxVzQzcFpCKzc2ZjBBL093Vlh5TFRhdGE4VXptTEpSbUllVzZUcmlI?=
 =?utf-8?B?UkIrUzBnQndwM0diZlcydzlnUVFSQUZ2MGtxajdrdHpWdkswKzJNNEFxTUlD?=
 =?utf-8?B?Nk9LbDNRZ1dJR3RYNkVIUGxpa3FDQkYyU1RKTFYrR05TR2VLOE9lWnFBNkNy?=
 =?utf-8?B?N1FFOTAvRlBFVkhja2VROU82RDdRcE9udElKR1gyOXhDRmZ2SVdjY0psK1BH?=
 =?utf-8?B?T081QXJ2a0VzWkliNU9sYUlXZXdGRzhndERCa0NUUEYxM3B5R01CZHc5a200?=
 =?utf-8?B?eE01b3NFUnEweVFvU09jUG4vTWRhOHhCeWVhMTNmVk5oRk9EMCs0YzAvTHhj?=
 =?utf-8?B?NE9QRmc5ZDZNd21hOWVpRmM1T095OCtvY0pqckUwS1RXeFhBdWNhYk5MdFFP?=
 =?utf-8?B?cUp5QXRIUzJIUjcvcnZmTkdONnFyY1ZQczl2cVJaSDZuZEVEdTR2Z3VvWDBO?=
 =?utf-8?B?ZHQyQng5SkFVejYzSGw1MkpQRkk5NE5ZSlQrN3o4NUUwblB3N0hXdmFBU0VQ?=
 =?utf-8?B?RlBMbzZJOG83OTFZUzhWL3lOSWJOVWxrc2JZUnBXT0lJWEpyaWdrZzQ0QlV5?=
 =?utf-8?B?NE9jRkNncnJlVmFBY1RzZVh0aStqVGQwckloNHhTM0VadCtvWFVGL0hsNER2?=
 =?utf-8?B?ZTNrMlJJQ2N3eTNYT1dmS1lBM29sOFpLamJrNWhabUZ3K2ZYVU9KbHA4VUty?=
 =?utf-8?B?NUR6Z1Vuem1wb3dqa01OM1BCOE1wS1FYTDFGekpzK0xuVkdUQ1dibmJDcUlD?=
 =?utf-8?B?T3grZk1xbmFwUmN4ZitsSkp4UHU1YnFucGp5TU1iZ05VOVFpMVBySXFPaGVP?=
 =?utf-8?B?YWl4OUhrczh6b0d1VjFMamljc3JvQnYwUUs3ZnRWTTFuV0RNU2ErMjJuTkI4?=
 =?utf-8?B?RUV2Z3p2T2ZnMkNnbXdFUTk3blRsNm0yV0oyQ1FVRFlkUk5HWmdrUEFwbE5Z?=
 =?utf-8?B?ZlJkeGJGVWUzNlZkVFJkS290dTdVT1ljdStoNzBIRHJuVm5zbHZCemFpWGkw?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec03fa69-8bf9-44a4-843a-08dd19df127c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2024 12:26:43.6177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FvAqJJcKjEd46A275ZabToI0LeG6L9FKH3doruuVg+SknkivImteydm38qyWg28vWlGGTVeV9A1ycn8+8TJxuTQYm6hG5M01ezCFv2XeQmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6372
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

Thanks for review!

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > index 94198bc04939..6c960416f776 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > @@ -793,7 +793,7 @@ int intel_dp_tunnel_mgr_init(struct intel_display *display)
> >  	drm_connector_list_iter_end(&connector_list_iter);
> >  
> >  	tunnel_mgr = drm_dp_tunnel_mgr_create(display->drm, dp_connectors);
> > -	if (IS_ERR(tunnel_mgr))
> > +	if (IS_ERR_OR_NULL(tunnel_mgr))
> 
> nicely spotted, but the fix is wrong. drm_dp_tunnel_mgr_create()
> returns NULL, not an error, so that you can just check:
> 
> 	if (!tunnel_mgr)
> 		...
I thought about this too, but then that would ignore the return from
drm_dp_tunnel_mgr_create() stub in drm_dp_tunnel.h (the one returning
ERR_PTR(-ENOTSUPP) if CONFIG_DRM_DISPLAY_DP_TUNNEL is not enabled).

Krzysztof Karas
> 
