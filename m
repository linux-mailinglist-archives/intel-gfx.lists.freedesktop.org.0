Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC80C9ACFD2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 18:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F74810E052;
	Wed, 23 Oct 2024 16:12:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M1vPX12O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 279F710E052
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 16:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729699927; x=1761235927;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=75oVZQTaam8XTHrwlVcTJKxRD8fBTLmU4JVZcAbiWxE=;
 b=M1vPX12OPgtvqd+9mwtG8kGpHSwcE0NK/5wXsn89tELIHe3MZSaDu8NK
 2cwEvMsw1VHrKwhMeVeqUxBzz2p0WrR5A/PFsvuNK67S9pukVIK0J8zta
 NP78I8OaLSOZdOkFPMFzltXHXGt8sLdTl7Q2oXF5b9QQxv6K2RQtoTB7I
 xqZUMKMFwyOoaZnU7uLL6ivZf27lm3m5YglL75zQt+CERpxzm9YZY/Qrx
 2nPUDHRsTyLgH8scFW9rCOKVFNQCQ2fhfliIdmgh61bG+VDC0KkDk+GES
 kRL6g5K94aHaPIQG7pZ4Muk84lWDGxixLixNM0O7Q2VSon1Lt0h5Imwkh w==;
X-CSE-ConnectionGUID: i4AM7yA3TFy3poadX2Oakg==
X-CSE-MsgGUID: hI/CMfguS32g0ub/jT0e7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29406440"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="29406440"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 09:12:07 -0700
X-CSE-ConnectionGUID: igW1YvhoTRioT8iE0xcq/g==
X-CSE-MsgGUID: oOAf/bcWRZum+D+7paWnTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80291110"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 09:12:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 09:12:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 09:12:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 09:12:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=coqEBJCJaoRrfJ0M/j5DnjOjEtRU/WdpRZteoXJacjvKjcHPpnYzA5ZZPnb+GlQCKrZw6eivDV0Hk3iKIKL4/wnEK0yRIL+9y50a6Pu/AT+nY+MrtTbSuQ77gKuX0QR7LFPsy1pP23oRJ8g+cl3DFMg6i9Sdhsx82+nhMfFldcKV8A3B0dgAowXcElC0lVi/BA7f2V6fgiiYhZlR8UVYJUJROH3ODBSw7+aK3WIq389x9T0W7qnDV1thRtYT5EZ/V5SufHXzAPH3nej3lj5zZ6BeeYh/LzgWmxGHb3XtdOS7frx+ROZVESw792jwO4BZsfQZiGJ40HXITY1K9qDezg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FEgAg9rJ8aJtbcmba3POlgRE0oDl+ukjAcw02I9iHo4=;
 b=SEYnrAlWmzIJPgL1rj4C0XNd8wIm3JUT7rQgcTKxec7A5P2+v/6o9owqNzS6t9tYrmOqPlKi31nqOISk0fRvcqLDQ5VLnubYL5dPmOujKBgMb7iDP6/Z/1BkP5AaoFX1htH9aMqeJaJJn/YUQohnuRFRWpTCwagVmP/+1Ghhws8/0K4O2u+eRsgn60+2/ieSahOof5t0TdmLgoZliZVnYHEXVJ3eOea90OBdiHxUdTIOkCQvc9f/sGeRD7RATRdPNXSzfwoiL3/Uk8b+k3M1+BL+ub2bnYsbIW/KLshMXOn+sVRLS3COaR4Yl5AxjvCFgLfSmMxxiN+EjxcL2qTkJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SA2PR11MB5179.namprd11.prod.outlook.com (2603:10b6:806:112::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 16:12:03 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%7]) with mapi id 15.20.8093.014; Wed, 23 Oct 2024
 16:12:03 +0000
Message-ID: <1f218b09-8385-4bc2-9296-28f7ec4ed2e8@intel.com>
Date: Wed, 23 Oct 2024 21:41:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
From: "Nilawar, Badal" <badal.nilawar@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <chris.p.wilson@linux.intel.com>
References: <20241022132226.1110383-1-badal.nilawar@intel.com>
 <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan> <ZxfcPLgi8tmLiomr@intel.com>
 <c94a44fc-0211-4b83-9faa-cb8d0765f76e@intel.com> <ZxkMo6BVeb7xvhs2@intel.com>
 <3416b828-2040-4deb-8df7-e5a0e7db51b4@intel.com>
Content-Language: en-US
In-Reply-To: <3416b828-2040-4deb-8df7-e5a0e7db51b4@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0013.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::13) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SA2PR11MB5179:EE_
X-MS-Office365-Filtering-Correlation-Id: c02ad91c-5468-41f9-7d46-08dcf37d6e8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STIzc2JYVlQwcU1iZjljMVRBcXNURWRRK20wK3hFV2RxMzdNZ0JrY2ZaemRs?=
 =?utf-8?B?eWlLZnpGZ3k5MldqUEVBeVVsUUJOem4yT0xRZlBKRGErMG9TSGlSM3hUSlU4?=
 =?utf-8?B?anI5U044aEZmaGZVaVAzT2tVT1U5WmdpUElkenpmMkJkYnRLYkI3WWZsQzNQ?=
 =?utf-8?B?NjhtdmpFSVBBUlNDOWdEYkE0ZWY2c29WVGxpNDFuRVBWWTNxS09ZaFRIQXI2?=
 =?utf-8?B?NitPWGJQT29wSHZraUJaSDhPNnN6U3A2MEhNKzdZcmZxQTFLTmVmWnBnU3VJ?=
 =?utf-8?B?M21RSHR0cWpwQ3lGc09IcHNvekdxSGwwTWFmTHV6WUU3N1ljQXplME9lS0tG?=
 =?utf-8?B?VXN0TmJCSDFVU2JOQ3N5Q1F0NC8wQnA0Y2w3ODJIVklwZ1F2NjN3a0VyeTBS?=
 =?utf-8?B?ckowWFluc2dYcS9XZ1dZc0VoSzlVZDZjN1pMeWtMdnJxM2w2TFJFQUNHTEt0?=
 =?utf-8?B?UGJEMWprNkpGcFJpYVlzdG1zQWlKQWlqaXpWR054RHJzY3l1S2I3OVNqYjRX?=
 =?utf-8?B?ZWxwTWkrWmRXQmJmbTdLU2FBZ3loOUtGTWZRT2c5OGFhNlMzL1ZrQzRCdzBC?=
 =?utf-8?B?eHBqVFAyZkowWkhNQk44TFZURVlLY0huWWVSR0FlMUNHTkorWGZ6dXZ5clVY?=
 =?utf-8?B?ZDhpWHpRaUpwOGpBd0VXbWJ0bmc5cEdCSDEyK2E3OWk2Zm5CdG9FYTlST21r?=
 =?utf-8?B?QVNiSzlFQTg4bk50MDJ6Q29sMlRXRXBNTjhUMFRtR00xZkZMRnUvTktibS84?=
 =?utf-8?B?Zy9NODIyeFplQ29BVlZTdDBjVlRtdXlVVmVRcGwzR1c1c3BsVUFKOXZRYjRG?=
 =?utf-8?B?czRFMERlWUp0OG9JWXB1ZUFCdkQ1emdQdnMrc3ovVGNpZWlFajBST0FmRXcv?=
 =?utf-8?B?dDMrckYwZ1JsRHpaR0oxM0dqQWhsc01WdC9MRmpCL1BtYzJncWl4S1JNWmhl?=
 =?utf-8?B?akg4NGFoK0RTT0RqTG5xN3d2K1JXR1gvQ0NWYjJEZ1RDZEpQSjZ5UzZjY2ZP?=
 =?utf-8?B?ZmhFYklubmFOWWZjRkdGNDl6d3hvVWUwbU5ZMGNmNXZzZ2NMczhXK0dERmpN?=
 =?utf-8?B?cHRSVjlqdXVvNk5QdDM3cXVLd2JLSGptbFBBU01seDllelRKMERtcU9UMlcx?=
 =?utf-8?B?eHBhY1pxT3VUckU1QmlnMC93SDhFcnptWUxpSE90UXp3c1dNRU5tVVRQelI5?=
 =?utf-8?B?UUt6ai9IcHhXLzFnRVJIcE9jWkw0UWF5SDBTYUx4VTMyQXowZmE5ejNLUHNE?=
 =?utf-8?B?RWcyTjNraEN2ZjhpSjV2Q3JJV0VDZ2pGVDJMMzRXckkvTjl6N25pSHpUTk5X?=
 =?utf-8?B?ejlGM1RlQ2FrQUFZODcxeS9KU0RSTkkrRXdlMDBwUzZWZWg0RHV6K2pYVDhl?=
 =?utf-8?B?cHhzQldJTjUxUmdwbDM2L1F3T2prLzlNamZMMjZHUTFPOENlSUt2YkZxdFJh?=
 =?utf-8?B?UThEVDZJVFF5Z0NXUlBXcUlxWGVScElMNTFkcXI0cnJHeU9ZYTJxTmtlZnpN?=
 =?utf-8?B?amdQZ25FOTRxU0VRNkpkdU1NaXlmaE5OOFJMRlZOK2VTRHpvdVRXVTRRdnJH?=
 =?utf-8?B?UExBd0pjM1IwckNDSDN5UThwRTI5UXBpcFc2QzRyS1AvTFd1Z1FIOHAyTGJs?=
 =?utf-8?B?U1NuM0x5cnphREVPY1llb1pXdFFYUzZ2T2FVakZqUGNORjBIM1ZpQ3QzT0pk?=
 =?utf-8?B?eEIzdjB5N1NkdnZyTnNFTmhPV2w2UmlLNHkvU3kvVUhUdUN5aWNqNDRLSGZT?=
 =?utf-8?Q?yaYJJv5dqHjJpzK8ZdPtVYfjV+X5hGe+nq6MzA3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V29ZYUdzem1EcGdoL2FQUi9lZXVvVEtlaXBOWkkrUmxoZTlJOHFVdU9LaTZm?=
 =?utf-8?B?SEpTbVlFTHhxcHAxK2MvYnQ3cnVmWWhkRGxFOXJPOWhOL1lHWnFhcWJvSEor?=
 =?utf-8?B?RjA1WG1VeWJaZ2I5S1ZjVG8wU2VsRFk0WjdscEdEa2xKcjFtNTNCbHRkc05C?=
 =?utf-8?B?dUtoQmZFeXlvNGtxS1NlTmk4STFGdzhMR1hEYzBiUjBYemRiajExUTY1clF3?=
 =?utf-8?B?KytkelYrSWZaTTQxN2xBVS9tbjM3RWxBRnZ5bmdTRGZvdENQRkxHdUdwY1Ru?=
 =?utf-8?B?a0lKRnlFb1hkRHFtcC85VHljcGxiZlU4OFJmTTFmZW9XZ3l6MmhjWndlNVF6?=
 =?utf-8?B?aTN6Z0hFQUh1bXcrTHlYZGpsSjc3bkpRVDZvUmtQam81bEJMblgvVll0b2FX?=
 =?utf-8?B?ampVU2hRSXQ3emFOdnZ0ZjZ5bjM2T1BXT0hVaVpscEZJb3RBYXVJRjZMb1hD?=
 =?utf-8?B?aWRyTUpNV0hKQUxMVmtTcEVNRVdvYzRuM0UxUElWSmswZDRPeDVEVTVSVzA5?=
 =?utf-8?B?bWQ2bWpQVDdGczdSY0FHa1NwTnhIOUhzbXNwSWpIc2J3eldwaEhJRHZPU1Ev?=
 =?utf-8?B?L05raDE4YXprZzhNN0dUNWlUMnRnanlwTTdtY2RKOWRZYzliVDZiUzhBd0F1?=
 =?utf-8?B?ZHZ4ZUdBOFBHd0NMVGt2T0kxRkh0azIrUmJVZWJQeHQ4L0pIYWFhcE1XMlc4?=
 =?utf-8?B?WHozU25GZHJWenN0Y1VSbDhaS1FzT25nQXZRNithL2lwaGo5MnJzaU16V2ky?=
 =?utf-8?B?SHQwclNueU1wV25KTkwzaDVYMjZkREJXSURxL2NNak14YUl3cGlqc05vaHFx?=
 =?utf-8?B?SVB0ZCtsb3N0a1lsaVBkQ21oQlRuUnUxMkcweXZpb2JtRmtJaFVTTDdTWHpB?=
 =?utf-8?B?YU1qbzN0SWk0VmV2OFhkNEQzSnA5ZVVITExMQjNTYnp0dW41a3d2Y1ZSYzhR?=
 =?utf-8?B?Rk5SUjAySmdRM2hsTnZOVTNvQ1FhNzVPbTJCSmU4TS9idU5OWUlYOVE3ZnVv?=
 =?utf-8?B?N2wxU2h0QTFhRVZZSkFCMnZNdzZRU3U4d3dDeGJwYXpvMWdaZFE1SDNDZlFK?=
 =?utf-8?B?bXhzRVhNS0JHV1hKanlIRlAwQTRjelMrM0N1TThsSXR4eThZK0ptU3k3MHNL?=
 =?utf-8?B?VmwxbmtySXA2TVEzTU9jc3IvelFCNysrdWZldWs0MXFmbCtReWRqWnJvWXdT?=
 =?utf-8?B?VjdlVktsQUtxc3BXQVRxM3AwRXd2VnFqc0xSR24rU1pIdXVmakhiRHhYdnFm?=
 =?utf-8?B?dVR5ZVV6Mm5GQjhzMGIxNGRwekRmVmR4d0pxbnRKSFdoaUlpNWJxNzRLb3dv?=
 =?utf-8?B?SmpqOGZaa3d6VUZGMTIxRnE1L0lZTHN0YkVMbUlzeWVoK1ZHd2JNVnJQRXNR?=
 =?utf-8?B?YmROWWFHT3ZlRG9PcGxlV05QTzF4Snc4S3htVkdTcElIWE4xcTdKMXU0Y3JB?=
 =?utf-8?B?NFFBK0F0YXAwZ1p2b25PaWk0TzlwbURCT1c1dHpxaVg5WTJWRVdoTmV0MkJS?=
 =?utf-8?B?MVg2amR5WHE4aCtIa2RTL3M4ZG9NN1JMK3ZvZ0YvQVI3Nkx0ckRMSHg4SldI?=
 =?utf-8?B?a1hxN01LNzZXMUxiNGRvazNpWWMzVlF2aC8ySXhoTDFyWlhtQnVjczh0Y2sw?=
 =?utf-8?B?NFN2L2tHdmswZm43b2d3clZvVzVxYnpvTWNieGZFRWhzWjQ2c0ZodEUydlhQ?=
 =?utf-8?B?YVlzQ2ZaUmJoenlHMWxmZklKVHhVZ3VmcE9rcmN6cDdwakdSV0lrVktYZWZt?=
 =?utf-8?B?ME5jRHZpaWJRWXVXZGNkWmVYK1ZqeUF2R2VRaGFFSGwvOGZpTkdHNTFscmx5?=
 =?utf-8?B?NlA5MDFFVWdlK0g1SStPV0h2ekpyQWtwSW56MVVSTkkrTFFmRkQvTU9SaG5o?=
 =?utf-8?B?ODJ6bkliSFloTFBvWG51Nmd3elBEclFhaytBSHhxSzVXN0FBQW9tYUxZQVJK?=
 =?utf-8?B?VWUzMjRZQ3VBaUZXaGZXSkFqRDdDdEtsUnU5dUZ5Ri9EamlGUkNyem9aUWJk?=
 =?utf-8?B?Mk9mcnE1TEhMR0ExSU1oY3ZGRkZSakNoUXJLUTlkK1J0RTdCRUg2REpxZUtl?=
 =?utf-8?B?UGJ0R2YyV1A3dDkyYjRwOUJ6OSt3S0hITnpPclNPQ2tCYjlHM0xtWEJ5NTRO?=
 =?utf-8?B?ejR0OTZwb2gxUkVLREkrOXE2d2R3NlJyWmk5eDNvN0JydzFnTzdHTmRaOEVX?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c02ad91c-5468-41f9-7d46-08dcf37d6e8c
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 16:12:03.3995 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X3euIOb3K6isAO4oZ4VnArVJiyxCthyGBEFx8RJvWTbfdo7OFA5YwbxbPPmW84kLtTvqmmRq9jzwQMRamJOdqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5179
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



On 23-10-2024 21:31, Nilawar, Badal wrote:
> 
> 
> On 23-10-2024 20:18, Rodrigo Vivi wrote:
>> On Wed, Oct 23, 2024 at 11:03:57AM +0530, Nilawar, Badal wrote:
>>>
>>>
>>> On 22-10-2024 22:39, Rodrigo Vivi wrote:
>>>> On Tue, Oct 22, 2024 at 03:28:43PM +0200, Andi Shyti wrote:
>>>>> Hi Badal,
>>>>>
>>>>> On Tue, Oct 22, 2024 at 06:52:26PM +0530, Badal Nilawar wrote:
>>>>>> Encountering forcewake errors related to render power gating;
>>>>>
>>>>> Can you please expand your explanation here?
>>>>
>>>> yeap. More explanation please. All platforms? really?
>>>
>>> We are seeing Render forcewake timeouts on ADLP, ADLM, ADLN, TWL, 
>>> DG1, rpl.
>>
>> Is this a regression? or a new issue?
> 
> This is old issue, first reported year back.
> 
>>
>> Is this happening with Xe on these platforms? or i915 only?
> 
> i915 only. This is not reported on Xe kmd.
> 
>>
>>> Issue disappears after disabling RPG. Instead of fully disabling RPG 
>>> I am
>>> disabling it during active submissions i.e. during unpark.
>>> For MTL and ARL RPG is already disabled permanently.
>>
>> uhm. Interesting. Why that is disabled on these platforms? 
> 
>  From commit log its temporary wa to avoid fw timeouts.
> 
> perhaps we should be
>> doing the same for all GuC enabled platforms?
> 
> I think so as temporary Wa.

Correction, DG1 we are not seeing this. I think we can go with platform 
check.

Regards,
Badal

