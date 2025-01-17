Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCD9A14ECA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 12:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE01C10E238;
	Fri, 17 Jan 2025 11:51:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ajav8hUW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B116A10E238;
 Fri, 17 Jan 2025 11:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737114712; x=1768650712;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=hms/2jXgONYrV6K8MphpJRjAHUh/3tQOW2/bzJMoUlU=;
 b=Ajav8hUWpHWF0HYSoyJ4tlVD8LgBXY3HGUr3vPW/373DyAEeTv8D8jsY
 jvWBxj8XnrFymhvqoEvHyKHU5BOwhRD26gfNNez1cZ+lS3XHgoBvZosaX
 Gk1lKeNcdTP7xLHaHjrEQCJn6wp1Xj4Y0U0wrM5W3xnJQqqp36HU0cylD
 bNFjsUniGlsIrwLanEFMYPjAT731vXZHs7GsyZDS0Nphs86M2/PdzbkN9
 AVUXre8YCQcfi2soaoIYIFHeonSMecAY2n9x0vfA9vpTt8POR69OFarjE
 GgYubN/Oi+gZzXedBdc0Vo6RtbMv+Og+YExvczbSMadFDs+ZKYQ8Bhv8v g==;
X-CSE-ConnectionGUID: DwfazBRhSvGg1yBhNHzFHA==
X-CSE-MsgGUID: YrJcZSvZRR2nmbPYwY1kNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37700002"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37700002"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 03:51:51 -0800
X-CSE-ConnectionGUID: RMUySn4RTfWHutmVVkA5zA==
X-CSE-MsgGUID: g+EKFBKLRF+l3x9423mCzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="129044711"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 03:51:51 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 03:51:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 03:51:50 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 03:51:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qv2Zjl6cIdEQuoajXYQmNaVslCEaoahftXvAE2DGXsgf1hrBB6E5VbOBgfTEa+oKKos6KM2pUy86f0gjY/BEqma+fiYK7HHm0FIIzxDyts7TCp7S1Yd3xDdMh2UFD0sH7Ra2gmggt6K31dvm8PCSFoJKM8NEyg9j+VHIx0RgKVWCA7VmBE0pYtyp9klhJ3X+QZC8mCZGHO6ANVnQe5G/RDv7Uc011/8pm3n3PiPVreE3VHtPegZaY5QGziQG3FUSdB8xgEhqWMdYkstI+gWLdII4SsIpkuMwjPBt8igZjqwVmmwsooyicgAZbQl6k/c9/9JuE3nUFl9tFUkxkIsusQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nHHQ8OCcmwanQuu4kXPuD4CsVV2GAMgyyzjaeR2dQYw=;
 b=K3ofMk74yvrahzIrlGunW1p8BQwn+suPkSaJzujiSdWsV/CHdZXES9Nlp688B66Y9WU0RhpMY7FThnPiAF5n28OCcZyustPh+Vzvqdv2EyKnUo55lJPJc8gcDJ+AYfGEdtH2VICQSMfbYs1yXnuGJWKqueH60JzlX8jFMy7cYtCfOqwMwRncyganXm0weVpH4uwk8MDCjrru9l3lq4XlHJpF63eRzskQ1NYLJyiLRC/ZHscquCFLBnspHvNkvujukJaj87IisvozPKVT7YRqyeSzcyviU7tUbVfPuyKKLv791JLcAL1Emu5Iv689tddyYokRNFQc4tRFRim1nbmezA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MN2PR11MB4566.namprd11.prod.outlook.com (2603:10b6:208:24e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 11:51:21 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 11:51:20 +0000
Date: Fri, 17 Jan 2025 11:51:12 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZv?= =?utf-8?Q?r?=
 drm/i915/gt: Use spin_lock_irqsave() in interruptible context
Message-ID: <rhpjcrtn7osi4sikg4oozsykiufp4lbumoi7ejk6avpih77lbg@osmgfwd6tsdy>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <pusppq5ybyszau2oocboj3mtj5x574gwij323jlclm5zxvimmu@mnfg6odxbpsv>
 <173703350514.268104.10075462320208944554@b555e5b46a47>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <173703350514.268104.10075462320208944554@b555e5b46a47>
X-ClientProxiedBy: MI2P293CA0010.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::20) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MN2PR11MB4566:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d6d0423-0867-4f51-0070-08dd36ed4243
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?by9aOXlQZFlGS1BiOFFINGh4eWk3MjlYalVoT2Z0SGxKZHdIbjVGeldHSDJh?=
 =?utf-8?B?cmd3eUw2L1BJZVhqQkN3ODBUMmpJSWRod3FZdFVjY1AwV1ltbUlOSWNoTXRz?=
 =?utf-8?B?OEFHZFAzZ2tZR2Q0S0hqV2EzYW1BcUFrOGRrcnhveCtZQnVXcGJneTV5M01K?=
 =?utf-8?B?eVZVd0t4dTkvYXJpdGhqRnRtZGFNbE9TQXYvOW5tanphWHQ5MU0xMnF1TWcy?=
 =?utf-8?B?NVduOGM3czUxcFVPVjVDeG5tV1NBd3BJcW9SZ3NKbmk4Q24raHpxTS9qbTQ0?=
 =?utf-8?B?TWtZSk1hMk93TkdEc0lESHF6MHFTcWVNT2NQcENqYkgxYWxJMzhYL0p3OHpT?=
 =?utf-8?B?TklpRkM2MDQzVGxFNFhyWVhIcHIrdkh2ZFIzc2tFL1pBOW9SYnZTNUF0OWJR?=
 =?utf-8?B?clhMQmJNTnhoS3hYU3FtMWh3TGNYVVFNRnpCcEVWTXZVcGQwZUpjSGpreXg2?=
 =?utf-8?B?cmY0V2wwZEI2cXBud0FKeGEvNjh1akhXYk02bklwd2lPeUFJNlEwdUFXVURs?=
 =?utf-8?B?VVVIaTYzOXJCOExJaXdpa0ozdkFRZ2YzelovVkF5dTk3SnRHRjNnUXFxdkxX?=
 =?utf-8?B?TmhVSTdvTzVCeWY3YmY5amFpalVtTlgwYWtvRXEvdGtzTmdjYVN4STZpRVVj?=
 =?utf-8?B?NnppS0VRTE9BUDlMbFpLeTJLWlgwdWs3dDZ1N2VLeDVwZzYvOUp2VSt4Q2xk?=
 =?utf-8?B?VVJjMVNKajFRaVlDQ3htSHFRZ0l1ajVSK3lESnhSM0xjekdhYzRXcGFjN1Rw?=
 =?utf-8?B?aVVMWVUwYndoZGhsS3NpOVI3TjNWN1YwMUI2UVNnbnhrUDFxNDQrNkcya2Vr?=
 =?utf-8?B?bXJLTDFnQUcwSHo1U1gyc01IWVZwSUNJR3g3VTl1MTNzNTFHeFBZcEJ4VDhl?=
 =?utf-8?B?K0JQY1hmQk05cUJNeDZRQTB3aDdYalFMbWp6UE13ZjNaTjZ1NUtZcmptaGM5?=
 =?utf-8?B?YUc4MW1kSHhtdXJ0Wm9jcHZsNnN5cHU0VkZJdFZFRkpLemc3TFo3QzFQUllS?=
 =?utf-8?B?cVVCV2dSbUlEZjhsOHNhekVBKzRIT0hQYXU4ZFB1VXB2TDJ4Y2ZtNnpWa2pl?=
 =?utf-8?B?Z1kyK3BSTG1xKytNNDVidTBUbm1tTm4vNDhvZFM4ZzBxcElHOEVEQ1owOHBz?=
 =?utf-8?B?a2NuYnNDQy9HbG0wOHBKSXN4UkRGN0lrb2E3dW13YzhxZU9TYTJBMmN5QXkw?=
 =?utf-8?B?VmZGMmhrNjRVUTFBRWRadUZmS0xTVDFVWnNFbnRoQ2FKaFQvb25PNWZoTXFC?=
 =?utf-8?B?UGFzcWtrTW8zbE5wZjBFVFNKc3VvWHM2SGYya3pDcWw3UDJZbDlKOERwQjdm?=
 =?utf-8?B?YmJXV0c1blZNcUFvY3BkRnRKVzc3NGJxYW1Ld243RTE3bHNmQld6eUZMQ0ww?=
 =?utf-8?B?ZUpQSktZZnY1Z0RiY0pic0Fvd1hNSWZpTUFIcG1BdHBJWkFidmFuK2xMdW5u?=
 =?utf-8?B?RWo3ZWhnaDRZSlJWUW5QSXVGSlFZR3JQZUk4TDFwYzVJTWRRa0s4VGh1M0lm?=
 =?utf-8?B?Sk81NE1aMkVKelFaYU5XYWN2NDdWMk5YakdUSTcwM28rVnQrcFBVTFBzT1JG?=
 =?utf-8?B?cFhxSENKQU1Oam9KdjZzOUd6NmgvczhZM1FlRE9jb2M0YTM4QWs1VDMvOHBI?=
 =?utf-8?B?THdneUJRc3JvWWxESDdGLzc4MEhSRkpFa2hzQkUwU1BZM2lvRVI1eUhHczQv?=
 =?utf-8?B?UnI0b3lJM0dhMkdMOTl3RXBjak9LOXdrU2REdkdVVG5qbDgycko2bkdtWEU1?=
 =?utf-8?B?OVJmd1JKL21rc1daWlF0ZFRTUjZXNUljaFh4aitQdUdoNTFuVlFwQjlXNC8x?=
 =?utf-8?B?eDQzb2NjYkp3bnpMbzB4QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rjc4NndyMEEydnhwWVpmaFdudmxTbnZHa3hHbCthbEFUNnh0ZFk0MFlPZUxa?=
 =?utf-8?B?bC9Xcm9rUnV0MUZMSlh3UHkwSmxFS0ljRzBsY0Q4Y1RVWEpRcEI0aVJYVDR6?=
 =?utf-8?B?MVg2dXc0MlhuM1o5bEFkWHJhaW9ka204a0hzZlZaN1ZmcXI0SUJkRGhyanQy?=
 =?utf-8?B?UGV0ZmM5WlJobzZEaUpNR2lCMzNqNGU4dGpreWE2R2RGQ3hpRjkydWhJeWh1?=
 =?utf-8?B?aUIydERnNkQxZmJYbEpUUy92aUFEOTIvalZzdkp2RW5hV2dQeWdOSHZ5Z0l6?=
 =?utf-8?B?M0FDTjQyNWI3L0hhUGptZHhzb0V2VExDejVtQzFmalB0ZlgrTlYzU0J0RVRj?=
 =?utf-8?B?ekN5M0JYYnBMYmtWSXprZ3d3Z2RjMFY3QmRqSURSbENmVHdnZUdNa3NaWGJC?=
 =?utf-8?B?UmdQMk9ncWpFNW1hNmhrWUg5eFJiSHowb0RxaGtrNExnaUE4ck5mM2IrUXZV?=
 =?utf-8?B?aUYwRm0xNjJRSnRKOTFHVGc2VVRqSnpvQjhOb3BxdjEwdTRreFRIV2ZzS0Z4?=
 =?utf-8?B?N0o3R05KaVZYL3BaM1FEL29wektRTm9RYStFV3NuRDRyTGZNMWhWYlZZWitM?=
 =?utf-8?B?NTM5UUV2YnBqSGx2blplakJSaEwyclYvS1ZDWWorUDkxOEV5UFdRWmdhZm0r?=
 =?utf-8?B?anFlbE1ycFBRTkJHWWxMbTkrTzI1OGtoandMbXlOT1JUSlFFZHRkb1p6NTZU?=
 =?utf-8?B?Tk9sVElTMTRtVkJDbkF1WGp5cy9VUW9TK2JTSm12aXRxaDdCeVBPQzZzbjBW?=
 =?utf-8?B?SGpRcXdBR1BQOUF6RFdrZWJhRHBhajhwQXNPelM2R2RwbzlUVkNDbG5xQzIr?=
 =?utf-8?B?NlR2bHpOelJadVA4Q2UxQ2ZNMVM1WGREbElTcHdZZlJ1T3BRTy9QYW05ZkNE?=
 =?utf-8?B?cUY1M1JKeERUL0FqaG1kTjlOY2l4NjZTcnNFRUF4d1BPODRsTXBNVE9PYmIw?=
 =?utf-8?B?TWplUWF4THZqOUxqTUNzNk42YTJYSUlYa2ZVYmxsd1lUUVRaQTlLRDBGZzg4?=
 =?utf-8?B?MVYrNko0OFhnbVNEV3lyWDZhRzJXU2w1dS9JenlJSHordjBqY0hvZFdJRFZj?=
 =?utf-8?B?S2lvQ3JNcDFENnNHS21Ya0hmQnFxTHZPbldqeSt5QjJDODl2WGYzUFhHTTZi?=
 =?utf-8?B?b1NNUnU2WEhwQnR0V0V3aU4xRE41M0krNk5TTzZkRi9GMHpRVHIvMHZPa2dn?=
 =?utf-8?B?bk1lV2xGeVZpQW9qYUM3OFB5YmY1ZXFiQUt6RzRlUmdGUWI3ZmJHYTlXc0dZ?=
 =?utf-8?B?cEtRNXlva1VZd21uT3QyQkY1aUcyZmdlSHZhUTNtZXNDWnhBV0RCZDNwYmhO?=
 =?utf-8?B?cFFqNUxkUzg0TU5za2FnTWdNeTBQcVZDNlpFNGIweFhmL2ZNTk1oQk14a2tM?=
 =?utf-8?B?NEJwSFQvWlRLU1lhNVlkVTJtY0c3VWEwQWJDZURraTBDL3NXOEF0RUhtc21G?=
 =?utf-8?B?WktnU0hhMTRzbGladzV0R2NLNC9vNHkvTThObzE1YWpnMGNlM2VOa1dKUWNt?=
 =?utf-8?B?VnlLZ1pkd0VQTE1sUThsZTZoZWVyZkVoem9rZitTZ2NRcU1qSDNhSnBtYWx0?=
 =?utf-8?B?L0dDdncxclNDVUNaVndEMnJvdXRDdlA0S0Y4bFJPMUlsTWoyL2JIVFAyTUpB?=
 =?utf-8?B?TWt3SDRyVk9IZDdCWHBFS1ZaaGlPdkdnR1Yyc29RMmE0bkdPMVVKWWszOFVR?=
 =?utf-8?B?c1Byc1A2RkNHN0ZrQkxBL25CRkZINzJPMHVlT0NlNlBXUGt0UTk2QUplUEp4?=
 =?utf-8?B?bGh4eXY1MzlEVUFYMXR5TGR3bDRLOUdTMEV4RGNOVWdvNGEveFE2OHo5QUJL?=
 =?utf-8?B?dUZRZzZsL3NpQmxMYVpUTjc2WDU4aWNoOVk4ZDhDbEIzQUxzZmc3dk94YUZ2?=
 =?utf-8?B?bEdTRE4vWWhaOVdZVEZBbVVPRnRkN2lFMzk0UjdZa1dmZXlpTlFXcWpsWlc0?=
 =?utf-8?B?S1pzbDFFRFBENXdCa0ZoRmR3SEZBeWliT1VnZ2dtQ0h1NTZqbVZsMGRjRHBX?=
 =?utf-8?B?SmtqeVQ4WFlyWS9Oekd4QXY5MityMFRDejZDMFNWdTh5L3NwTk90Rk5ySGZO?=
 =?utf-8?B?T2ozb0Z3dDhKVE9BSjdnRnBoYzhhdTNYWDNVV2ZCWGkrTnNhd3Rrd25ZU3ZE?=
 =?utf-8?B?cWpVb3hmcFg5bk83N1E0bk5kemVEbklzaDk5QmZpQTMwazFHNmx2aThTODhQ?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d6d0423-0867-4f51-0070-08dd36ed4243
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 11:51:20.4283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FhHRDhwfjrSLatWZRS0eUybnofZF8gmHKx5t/j+HVXJUDsc09Rp3hZCFDZbUaGm8yQSquB6ftqz4W7OE4rb5M7b07TGas5WKaNdLutBv0dU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4566
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

Hi CI Team,

On 2025-01-16 at 13:18:25 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Use spin_lock_irqsave() in interruptible context
> URL   : https://patchwork.freedesktop.org/series/143600/
> State : failure
>
...
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_143600v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_busy@basic@modeset:
>     - bat-apl-1:          [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-apl-1/igt@kms_busy@basic@modeset.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-apl-1/igt@kms_busy@basic@modeset.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>     - fi-kbl-7567u:       [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
> 
These seem unrelated to my patch and I've seen similar warnings about
FIFO underrun on other unrelated patches as well. Please re-report.

Krzysztof
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_143600v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-rpls-4:         [PASS][5] -> [FAIL][6] ([i915#13401])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061] / [i915#12435])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-arlh-3/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-arlh-3/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [PASS][9] -> [DMESG-FAIL][10] ([i915#12061])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>     - bat-mtlp-6:         [PASS][11] -> [DMESG-FAIL][12] ([i915#12061]) +1 other test dmesg-fail
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197]) +2 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - bat-twl-1:          [INCOMPLETE][15] ([i915#9413]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_gttfill@basic:
>     - fi-pnv-d510:        [SKIP][17] -> [ABORT][18] ([i915#13169])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15966/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
>   [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
>   [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>   [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15966 -> Patchwork_143600v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15966: 2334d1179d652eb4032fcb0d8e6f53cbc6a1011c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8194: c505b5e9853c3270751f264b0d4055d4d7ae13ce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_143600v1: 2334d1179d652eb4032fcb0d8e6f53cbc6a1011c @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143600v1/index.html
