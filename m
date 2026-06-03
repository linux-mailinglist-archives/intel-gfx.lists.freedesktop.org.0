Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fhCyIWLNH2pcqAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 08:44:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1DB634C3D
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 08:44:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XBJC2bxr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4FD10F8DE;
	Wed,  3 Jun 2026 06:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A855010F8DB;
 Wed,  3 Jun 2026 06:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780469085; x=1812005085;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ayTmlM7FRqo7jAdUuKLenHIQgkPtPHvk4C22Q5N9s60=;
 b=XBJC2bxr0hUzZ7jaPFhrUbsiPTsjeb8bWgs5W+8ZQuuqQ3b+jxZ+4Jgt
 ymgjhf/x22866RwKCynBpq/csySZ55JHQqwQ72NqlMqfzTI/SldxIIDRn
 US43erVyogX0pCKEHEQeWFf1xhPdJwviHUTQy90dHYIWyZOscc1FNTq0o
 xOFV1DbNcHydr00JNTfeITik2goiJKDAvPlHJleYqbOV03szKipARqF6L
 zFWmLhLJckXeJxSwCNw9aRay4cWFtP5htvfhTKFQIEAAI8OVX5pbQ0H+V
 wUYoPnacZKpEanSqRaCcTmbS1zRPLAekfhlC1M6nwh/3dDMoV2UuMOlas A==;
X-CSE-ConnectionGUID: pghHprDcSvWeDIKPu0rRYQ==
X-CSE-MsgGUID: PdO+eX/7RG2d99+gPNVOdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81243108"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="81243108"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 23:44:44 -0700
X-CSE-ConnectionGUID: ZWWSxKgWSh2WSrjmTv7KXQ==
X-CSE-MsgGUID: cfPCHorjQGGAfs5iVN4IRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="241141708"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 23:44:44 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 23:44:43 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 23:44:43 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.0) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 23:44:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wxEPxT7Xlj9u7H4EeFVZtWqHELmfjIjwZRixJ0KQnh5l8weeFesMmNc1SAFWmYD8orMLWGUCenzZjRFRd5XYpjD/dJg7Dj73ZPH74fcIP0RjuVveWn1xr3hD8tnLyqJrtwczAAzF8SEmV38uC4dkMvbsRuzauEvJCMeOnBnZnGtDc+JyHJRbdc9uzIczSmDAFBY8oxfBgNifOfvnGDvgV75+XtLkMgeQWAl0s5NG+Zc0FZ55coK7/YcNgSFiWR8d6bmURhq4A+WMuiE4lfs5DwrxQah1jDBOJbPS5KfBU5R3VmIZqx+0twzhGIj8uiNGppe2i5FWyuvhyrpUmVfs6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TKHHdrpmFrZws1T9ktta4RNYcc9LvMh5ExXh2YsEL7A=;
 b=t+5cbTfFO2ftgnqoeHnILmetXmATlNsg5QK+nstkgjlucj0PzY5QDOBDNOyOgxfOrwdWQjf2Cqotbzdo8zZ+ZMk72AmsFQuga8YYsYEsy7tX34FkSv/Od+LC5LrzMaImlYN3Epo3huQljhgWJONO85MtA3cyjeGc8oa3WUAj2SOrgst8jEqLFOQhY8T5zgAK3JpAz96AT862L35ngFQsOvGKhvai73Y+RXR+Al4VmSTf/cCQ0w0GVwSsRLKYE9G1lmYglurJc80dNTTrtWCS2I3JekcBn9DlXQmOslrxD5fa3LI/D4WmEdgKhLGKAVKnZOQK6jV3JLYD2e/dNDyJTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS4PPFA08475C7D.namprd11.prod.outlook.com (2603:10b6:f:fc02::3f)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 06:44:41 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 06:44:41 +0000
Message-ID: <0f567475-d3d4-4a9d-ab38-afffbb2381fc@intel.com>
Date: Wed, 3 Jun 2026 12:14:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/managed: fix drmm_add_action() kernel-doc
To: =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>
CC: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20260522135520.1862848-1-michal.grzelak@intel.com>
 <20260522135520.1862848-3-michal.grzelak@intel.com>
 <e645a8cf-45a2-423c-81c5-cdb9f6c57faf@intel.com>
 <423f5568-0cc6-8e28-8886-9178d78847c8@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <423f5568-0cc6-8e28-8886-9178d78847c8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0164.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::34) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DS4PPFA08475C7D:EE_
X-MS-Office365-Filtering-Correlation-Id: d916d7f8-e478-447a-70a6-08dec13b96c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|6133799003|22082099003|18002099003|4143699003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: wG0nGHi8kn8tXgx0LdJiMq9bb5kgbiQcw8ZX41ISVZ0LSBud+/syDLe3485Qt3elND4hlOKjGuYP4YQkYuz/gZvyFbEO65i7oBap1mQQQnUpgUHeX5mwNG5e8WRrx7xaxN3XuT63EmHGAXc0ZSLwLnWKvRbPG42A13ljVsPGG56VB40CtAY7ixUKhh+4o57Ua2qkaMRbNyUsHU6XhzoJj+AVTFvl9aIRod7aD4hkrdLL4Vr5DoxFibyZ7o4GfIyVj5S+oc9MQxy9HlofelTtIPusSfNkam29hJ26Q1sPHI/zrFVWzle/a4nPXSGIm/jVlvsC6iuKI/FKBbOzxfdOcIdmdbMx7AYX1poUGtfPc8qub5EAde2sL5o7dZoz+xFf1OCLcKnC/tLAwSrg7/SXQk1SFGgqpJoQTbmUUqlz5ywgFBItvOJ1SEFjTUJ7r0QXmdnjMSZTRedW/L+EVSamjgpMhT5JJrf8R510msI62L6VvRoXf09SSRhGUF6UFMcKK9Ozn+YP+97GXNPFGFdlfBT+HCZQVjrt/uLAfUhpdkBYlZi92uubNbvlTIlS32DsvNBsUuKrQLZI2C91pDVZpdtnOPaE7xrb4Ly/qrKhcY1Px6pWzrBtz3ua5jBs4f5MAapOD/KmC+/7IwMWWxGE8A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(6133799003)(22082099003)(18002099003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3dNbklNL25IR1NzMUNVamF3Y2dYS3FmYnFBNFJIR3R2Z1g0aE5tQitsSVRW?=
 =?utf-8?B?eTFxeVpSV0l3VGUrTzlnbURpeXIzY1lHMFdPbm8wMEZ4cUtFUnIrcjBGcm05?=
 =?utf-8?B?MHR4SWViWkNIaGV4MkdXYkovQ1ZyNU90WG5NM001SWYrMit2cGR6MmFZSDBF?=
 =?utf-8?B?LzM4MDlOWnNPa2tPVG1WQ2FCaVByM1d0c1RsRVhMaWVoVUgwOHhGcm1ndUgz?=
 =?utf-8?B?NkJ5Z1lOZS9UYUZpZ1RDUnU4UG9RaTJwZ3dUd0dYZmhDU1BCQWI5Rzk0NTgx?=
 =?utf-8?B?TWhDaktwM3V5MytJZkJoTE42YmRaV2ZwbnZiNkcxdmtQclcrNWJ2cUJTWHE4?=
 =?utf-8?B?SGFLNm1HQmRtcVZFUEtVWkJ4aWtmN3gwZ3Z6WWMxdDR4VElreWxaL2ExMFIw?=
 =?utf-8?B?YWtjVG9yWTNKRmE1cHRkSFpnVHQ2VUV0QTBEK3VXTXI2N1lwbW9XenIvYjhE?=
 =?utf-8?B?UUZxUVNQc3VlV25VMnN2Yjk2aUh0UmpSd1ZIbWVIWFlSQ2hvSS9uYkZFdDdS?=
 =?utf-8?B?UnM2R2s2cW03QThYdENoS0IwdDUxeHcxT0Fpcm8yek05RFIvbjFXTStwZ0dP?=
 =?utf-8?B?TTFIQjFvMjJIL2VMNTBTNHRwdlo1ZGFCbVJKYmlqa3l2Szd1UWIyNyt3SlMz?=
 =?utf-8?B?YVdhWkg4YnltV0pZM2RiU0ZzWTh0WHQ2RFltN1dpSkdHdHNvTnhORExyekFX?=
 =?utf-8?B?cG8wSzlnTzlyRkVONE81ZVhxKy83c0pDaWdOYVN3VjFrSzZGR21zb3ozTmNK?=
 =?utf-8?B?THFlSzdGdUtvQTJ5STBTL0tpc2JpVUJHZ2daeFExUHg2empMa2xKcTVUaHg2?=
 =?utf-8?B?ZnFjS0FzOFg5L1UrSmFrZ2FCT05peldhOHdHcWRsOEw0dVZKNEtyclltcVdG?=
 =?utf-8?B?NVBuTm9MUnVWM3dRRStzdzRwRm40bmhPV2tqdXl5RENlSzRTLzdWYmVMeXJQ?=
 =?utf-8?B?eUdCMU9WdGs0RWFXTVhObHcxMGlxTzIxNzEvMnh0V0dNTTJiN3l3VTV1WnZK?=
 =?utf-8?B?cC9yU2N2QzJoZnJOWG1Ydm8rbjMyb0tjdWhKaE9wUkQxdC9FRjRCTVJvZmZC?=
 =?utf-8?B?OUwyYXVLbE4wdkRjQmZZV3VsRk1OY2JhZThjL3FIVkl1cHhydGEwQU1ua0c1?=
 =?utf-8?B?enc4VTkyV1FLcFFLL2RsdWEvNDlGVmJyWlJteU1xaTUvZ0U3WkpVa3AwQ3VP?=
 =?utf-8?B?VElxb29XWXFDL09tenh5bm1Jam5aNXllNkphd2dzVWNwaUtXUjF2bWRsV0di?=
 =?utf-8?B?OVp1aXZpbnF5Z0tEUzNMdlJrb2tqTnc5U0d5dTNoekhNMmR1dENSU0xVU2Fa?=
 =?utf-8?B?K2FUQ0tpK3YxWUQyRkNlMm9TbzM5ejh2TVBtQlZxV2tQekVLSldzK1NmYzBJ?=
 =?utf-8?B?NjFsVWNiVXlEOW1BdlArT1lDNnBpcktRYVhmczhNeWNDM0pMV3RLOWwvM2lj?=
 =?utf-8?B?MG5jVENnNi9JR2Y4dGh1R3lBWGtaK0xtak5uYmtMMGRCVkZ2cW14ak1oMjNT?=
 =?utf-8?B?d015SEJsM3JwT1dxbUpRbGduL3ZDYWI0VnZXNHE3RXQ3eXltOVRwbUlZcHRB?=
 =?utf-8?B?NUlFRzByd1VOSjRjaFkvcjN3Z21KaTNaY1o4bE1HL2pZTHRxeWpQSkozdGVR?=
 =?utf-8?B?T1RGcCtBSm9LV3FkTnorRFUvVE92Z25XOUFBMkpSSHQrdGNNZUh5QTJod09O?=
 =?utf-8?B?RGpCUmxVTDBkR2lLb252eEM0OUU1b1RZcWdCU2U4eTdVaWJVOStJVkFxOVRM?=
 =?utf-8?B?cnBBTzRPZVJnUmN3N21LUUxPaU9ySWx4R1RaZnc0bTI4TW1CT3M4c2hBVkUz?=
 =?utf-8?B?Q1FrOURmaXh6Q1dCVGtvRTZ3NmRQS1EyWktnUGN5OUVWWDJXZGpDRUl2cDRj?=
 =?utf-8?B?NjR4WDQxZEJPbTdQbW5WT1RZMFduQ3hSMTlack5sUnJ5azB6SUtGMkx5ZTQy?=
 =?utf-8?B?anI5V081N1RPT0IwaHJuVlZQazhQd1Y2akhVOFFaN2dYT1RndDZGQktDTWhF?=
 =?utf-8?B?bVBDRnJMczY0dlFwVW5QN2I5dFZqdXhFM1NtYzZ2UlFFRDJGSUk0ZEJPS1Bm?=
 =?utf-8?B?M01oSnlYM0VteVZUTnJCWCt4YXN4UTdnbDFTenBZdlJaM2Z2ekh5N0hzd1Z3?=
 =?utf-8?B?UlA3M3NBSWlVUWZnT3dVbzV2S1dsbldCZjc0UFJVb0s0bWZ5MlVGN1F1d2tV?=
 =?utf-8?B?WUwwUkpvMTV6c01ua3V6ZnFiQW11RkFRUVZzeUI1aXNCN3ZxNjE1b0RUTU1v?=
 =?utf-8?B?Nk9LZ1UyS2ZXRHdvRnFzazExUHJzbDVjODkzS01hWUVJRXhlQVBYK21qcXBQ?=
 =?utf-8?B?ZnpEU3dMSFBpTFMrUnNsdG5XRm5uT0JDb0xrWnQxSGdiWWFUNEp6cFZQQXNS?=
 =?utf-8?Q?4TkHujXpoyyk3yDE=3D?=
X-Exchange-RoutingPolicyChecked: rOaIUR+ZGpocLxPIKvTuKcG+TDqGXwIExJaia3fTsKc7WcnGSF4b/jpF29YJPrnYBchBu/UVAUkf/FN6ORsn1kpF9EdyK4KhSAmb8oV62EByhngtJBPowcAqCeXWgoZGskTiDG/zzL5DH5jMZENuB3NHkQo3Ygaq4Bw33FwuDNNBALAw3nbfR0ouCc787p5bvi1jE7rn/EYT8cA10/VNGUAStgca7tmh3D3Yugl5yFxnEoQ4LdWm+R8yWJ40F6ohr/VtQ0q4z69axXCmKOzQJjCnrYxoLTQU/8v4NBfp2rO7RDEmGBJ7N0TqQwwoaXaXGZAUoZI+28KuBzNuIOzfRg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d916d7f8-e478-447a-70a6-08dec13b96c0
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 06:44:41.3008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M+DK6y4aY0GxQ8+nSnlwtnzIVj7ybzl01kx0nbn3zRKjmtrKeiXe2KQD6S645dwd8s6NVkPecVWmhdyFSBot9kU6qN0DMYVwake1LbVRIMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFA08475C7D
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2E1DB634C3D



On 6/3/2026 3:28 AM, Michał Grzelak wrote:
> On Tue, 26 May 2026, Borah, Chaitanya Kumar wrote:
>> On 5/22/2026 7:25 PM, Michał Grzelak wrote:
>>> Kernel-doc of drmm_add_action() references @releases which is not
>>> on argument list. Swap '@' between 'releases' and 'action' words to fix
>>> the documentation.
>>>
>>
>> LGTM
>> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>
> 
> Thank you Chaitanya for the review. Do you think this series can be
> merged via drm-misc-next branch from drm-misc [1]?

I suppose so.

Asking because I
> don't have commiter right to any of drm-* repositories.
> 

Same here. You can check in #dri-devel IRC if someone can help.

==
Chaitanya

> BR,
> Michał
> 
> [1] https://drm.pages.freedesktop.org/maintainer-tools/repositories/drm- 
> misc.html
> 
>>> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
>>> ---
>>>   include/drm/drm_managed.h | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
>>> index 72bfac002c06..72d0d68be226 100644
>>> --- a/include/drm/drm_managed.h
>>> +++ b/include/drm/drm_managed.h
>>> @@ -18,7 +18,7 @@ typedef void (*drmres_release_t)(struct drm_device 
>>> *dev, void *res);
>>>    * @action: function which should be called when @dev is released
>>>    * @data: opaque pointer, passed to @action
>>>    *
>>> - * This function adds the @release action with optional parameter 
>>> @data to the
>>> + * This function adds the release @action with optional parameter 
>>> @data to the
>>>    * list of cleanup actions for @dev. The cleanup actions will be 
>>> run in reverse
>>>    * order in the final drm_dev_put() call for @dev.
>>>    */
>>
>>

