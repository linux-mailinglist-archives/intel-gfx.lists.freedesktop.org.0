Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CC78B570A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 13:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C5C10F979;
	Mon, 29 Apr 2024 11:46:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fb4L3Qsw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEF4910F979
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714391214; x=1745927214;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=tDYedKQJRJVDLog16meANnWaUBLPG8cGelTxQMdeI6A=;
 b=Fb4L3Qsw5BiRf6NAJi/f9cu60FNP3GNPamfN97kmT4ZDusmSW+9K5yPg
 c4O2J1Zm877eYH1JwXbJfeGjEgXXdUyw2RrWJlJMCf2AF0Gdi2kyS64sV
 lOplvMSz5fY66gTlhmn9//5x99GBtEa6qwOQ8uRd2LSDNLjwTVXerd7Yn
 0OiUkYtopaWV4KfNUhsd5nOMKhPPncj1h6Mq5R+x70PKB2zeYIONPGhXY
 QSzTa1Ppf95K3nJU33d+9Y63bw20b47A4Cp4j3+We/KWiYac1NcMUPPEQ
 04IbPH53dGWvwAPS90qnHTTep/c2baG18ezc1sRt6oG7eiNNbjsmjoeA2 A==;
X-CSE-ConnectionGUID: 0kXPN/BEQUiCJGcCoVWmpg==
X-CSE-MsgGUID: JoAqVExVSZK+FDrglDC0mQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="9875475"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; 
   d="scan'208";a="9875475"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 04:46:53 -0700
X-CSE-ConnectionGUID: P2wCLwl7TWW+XEzOj4bJxg==
X-CSE-MsgGUID: 68jnWDdYSuue5b1cvgs7Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="63562818"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 04:46:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 04:46:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 04:46:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 04:46:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AU7RG6LQPbItDU2351p2c0f8pKQ1LsZ/y3hhOCPoMmujGGp+MLXlexlO+ycEsFMlWpWSNPGnUl7OFXe+V/bfp+m9x0z+f4wfGQiUcYAUmZdIBf8Mp/f7PZBzr2qqsdMuII+EQ7s92OTRaTH+Ig7YP4XpEfRdoR6VsYuoFsjDq1gFYVZIQq0GDLQYGoDr02Q+lS/FCMeY/ipV8F/XHFSxRGd3PnAXrkQW8bxXL6gu/dI8ppKsxOThAA1q6uM2mSSZObobiXqjfHdk5MAdZQqez3tPBAfog8wuN816M5V3mYR/b9XojRtbiuI8hRcWHriOwXLp1TOVAbINcP++s/RsdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tDYedKQJRJVDLog16meANnWaUBLPG8cGelTxQMdeI6A=;
 b=nERWn64rSMoqwRDI15SsOOmWyfy8SKY5BPtFixmxPVDwMi2B3fEdQTj8xGkx5TS2rTk+ws4BF3UPJyZRG/JmHaMihc6BQykUTjkjWrgiuM2W+f2lF9Ko+8+VOYqGkWH1jZr3BD512x1qkK1zIgwUdODVoZyM6RZsIMYkYhGd1t68SSW/UFdY+GWXB1yMmCun9ZUqFSlK6gLKue86aL6aaQRiqBHq1qX++SpNE39qAIJ+iZxmdeoC7zUHxRxhR7NY9ZuJW13E/yCWYIMC2WjYypdTJ34mIUwQDZCZ/MZMIS/rif3/caX/GCKI/3iZ+Hr2+yEhUXc/hSb3E5+wahVRkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB7633.namprd11.prod.outlook.com (2603:10b6:510:26c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 29 Apr
 2024 11:46:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 11:46:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v7 06/11] drm/i915/psr: Modify intel_dp_get_su_granularity
 to support panel replay
Thread-Topic: [PATCH v7 06/11] drm/i915/psr: Modify
 intel_dp_get_su_granularity to support panel replay
Thread-Index: AQHaklLS+bDwN6kamU6jMaUbCrPcp7F/JO+AgAADwYCAAAULAIAAAwaAgAAAbwA=
Date: Mon, 29 Apr 2024 11:46:49 +0000
Message-ID: <8bb9cd2612e3df23aed9c9a3e2978cc73f859c86.camel@intel.com>
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
 <20240419121141.2665945-7-jouni.hogander@intel.com>
 <PH7PR11MB59810085CCECB6DB47C1E2C9F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <7a26db3d48f6410e5b554c4417e397e18635f295.camel@intel.com>
 <PH7PR11MB598134A474544762E5A725FBF91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <PH7PR11MB59810DA6F96CA4FA0127A3B7F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59810DA6F96CA4FA0127A3B7F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB7633:EE_
x-ms-office365-filtering-correlation-id: d16016c2-b522-4cd0-ed36-08dc68420e3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?S2FnRXAvVUc4dFAwWWQ3c04xNUhBSDM2dENmUzFsYXJTZVRkM3ZCZUNXOHE4?=
 =?utf-8?B?ckVTQWpDTUV5WDJyQlQrTlorZ3o2a3FoaTE4cGtla2Y2UVRvR2pnczlPSTJy?=
 =?utf-8?B?bjlESVZGV21mbzV4blFhcjZkbzIyNFdFdHRraDZJeGZ6UXRLMG9BL205WVVN?=
 =?utf-8?B?MVNsc1dTeEpkTjFkZGZEbDVXaWdMMVB3V0ZzNHlWZVhRaFZ6NzNuSjNUVVZa?=
 =?utf-8?B?cDhCN3FmcStmZkhyYXd6cHlqMXFTeVVLK1lMdzJKNE9wWGtMczIwN2Jlditt?=
 =?utf-8?B?bFYweG1mcWU5VzJyeVFTRTZyTk85WC9ReU1USVo5b0w3b1V1cWRlR3V0TjRW?=
 =?utf-8?B?QkNtZ21ad0V6L2FXQVdnRjdSbGRZMU5ScFlLOVVaYVRRU3hMSXhCMTBTNngw?=
 =?utf-8?B?SlVobmpQVFJvaTByem9DaGV5T3Z5Qnp6TkRDYnFVUG9maTI2dDZiSlQweXhK?=
 =?utf-8?B?UjN5MThDNmhQaDZjYXVMY2xpUUFNN1Y0U1RSdkZmdkMrNUxVdy9NWmdyRURV?=
 =?utf-8?B?ZmliZVVTZzVvSElIeGdYY3JwTmNRdktIbzJaSmpRNUNaZEtFZnhvNm1RL0ZF?=
 =?utf-8?B?U3JxMnhjWGtyNURjc2RkYzd1cVlBMmx0LzdvcmNFOGV0VjAvYXNhUmNSd0lO?=
 =?utf-8?B?aHhRU0lmU3FaZzY5UGM0Yi9pZmcxT3llYWZZWXhkL0xiTmlXZ1FyTlNNODNi?=
 =?utf-8?B?NWJmTHlCdys2ZkhQWDQwZ2lSUEMySVVLejgwNnRsTGtPQVJnMVMyM01LWHV0?=
 =?utf-8?B?VkdXVnZiQW1mTkNqbjhublorM3hNdFJIZVFTNHR3U25ONEVDMTdWWFU2eXFY?=
 =?utf-8?B?SXVldGdDMVVEQnJXTDdQMEIxRjZ4NDZ0MUhQU0hxSHJPdGtXNHowckRpQUhy?=
 =?utf-8?B?SzNlTldPcEoxbjhVS1AwOFIyc0txcGJQdlA5WlF1a0pMVGZhb2lGbVFSck5X?=
 =?utf-8?B?UWpJeG9mbGZHTWlFV2RWUElTUy9xaTJUL1RFWFNTcm1UMFVoNTZuTVhPcElK?=
 =?utf-8?B?VktIdmlqMm1kcjJJMDFSczVaNEJRRFhBdVVCUllsODExUjllSStWdDNxYVNW?=
 =?utf-8?B?UlFlaysvcFM3aXVsSUZZVjZzdmF6anNiaUpJd1VicUlLejF4Z0NUTk55bE56?=
 =?utf-8?B?YndyMTk5MmNxVkk2SlJZeWJSS0dMN2RhVnZ3eEFmWmJXeEY0SUJKRFpoYk5h?=
 =?utf-8?B?NWVHRi8zc3dYd2tDMisyM2syZSs2NWFwa3VtUDRMRzNXNktPNkFKNVE0VVRJ?=
 =?utf-8?B?TkUwUU5IOUVvZEFWVG9sVjlxUm5rYnhhVURuc2h6RzZJcW9lU3h4U1FFb2lz?=
 =?utf-8?B?KzEzOEx3b2NIcXpnOE9ramhqV2tORVVQMWttSDZTWnUvMTh3Qk1OQU82eUZw?=
 =?utf-8?B?L05sL1daTUpmWVRaTjliSUxOejhnSzN6MVR0Y0RNVHVLQVBnRWVOL2t3eVkr?=
 =?utf-8?B?VWdvY0dYZytrNVp5ZHBURHdlUEZhbWRRYXY5NWJqSlYzT0VxNGJkMjVna2l4?=
 =?utf-8?B?cFcyWlMrUWF3VHBRWm1iNGtRYUxMbWNGV2JzdnJMUWpuNjJqaVlKWm41S09w?=
 =?utf-8?B?dnVYSUROa0dzRUJkV0pXQVhMNjVUQWNqOFNwVzFxcEM4VnJrdW9jdmxzU2J2?=
 =?utf-8?B?QnpYQmZONk53ZE1OQjZmQVJQcGpicGlpd3FXYnNSMlJnWTVBYk8wQ0NTa0x4?=
 =?utf-8?B?UThyYXljN2NmUy9VNlFIbDFYQ2puM3JSaml0VHI4NUhxUWg3alprQUpCZ0xD?=
 =?utf-8?B?ckFIUDZud0ZEdmFxWVNzcmpOVGlMY0xjdGVpcFNWOTZZTDZlNFJycUo2UU5L?=
 =?utf-8?B?d2Q0VExJbW0wTjdVUkVOdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WU8xcU93bDRrc000YTRnNC9vVW5aM3ZqUjRMbjdEbUhlSGZ6a000YldtdW9X?=
 =?utf-8?B?enNXRHlqc2dDSk1MNjRUZXdLV2JSN1BUVU15QU53SGZOVW1WODlwWDVpb0tP?=
 =?utf-8?B?YWR2aSs3RlFZMXc4RXEzSmlPSTIvNFp2dnZJOW1QK0Rhbk5yT2JrbGszQk44?=
 =?utf-8?B?MHFPZHlTOW1QMmVwRjIvVkRWcXdlMCtueTYvVU1oN2UwY1FhMEhTMUNuK3Nx?=
 =?utf-8?B?SlFaZXM1cmFpSG9sTEdGVGVmQmRHMCtTcUxZd01ySm1HTGtIWFVxbTVrRWRD?=
 =?utf-8?B?bHA1c1d6UkxKcmFxZ0lCZlk0alRiUzRwWEN0QnEyaEJ2V3dnMmtZSDlDekcz?=
 =?utf-8?B?MlBpQVAvQ3pqaEs1aUt4SmE0UUhjVmMvZW94U3E0K0dpMVZqQitsVC81RnQz?=
 =?utf-8?B?a2F2SEtWQjQzZnIyRjNaMDB6UFJoNWx4UENoLzZFOWxWakcrUUZLanl0cmQx?=
 =?utf-8?B?aHZqMFRIUlIwc2hJOXUzYWtOalY2UEdNUjdZVTNLOCszQ2FzeUYzZGxHMldX?=
 =?utf-8?B?c3RYbGpmNENqcTRsVU9BUWl5VlJFODNzQnV4SWN6SytxbGxNeVdlemJKTXZW?=
 =?utf-8?B?SERYSTBFREhRYURZd2dYd1dEaGtucHh2dlRrb2ZTUEVCMGdxTzFNK3ZJOEp0?=
 =?utf-8?B?YVVLbXAvVFNiamEyZWlvZ0dwVWFyemxyQmFMbUQwditNbXdLY0IyUXpqS244?=
 =?utf-8?B?QnBZWWN3blZMWStDM3kxeGZOS2tQKzhHTnp6eDRZZ2JPaUkzbC9ZdS9lekFa?=
 =?utf-8?B?bjFOMGhzcUJaUER2MXRDY05nM3ZGOTg4dGkzcW1rQjZaME41RjhVR1BWNUlY?=
 =?utf-8?B?aTN2SWFHVE1NWXRoMVpjdEpOMUxGdEJqN2pGTW8xTkVvSjNhSzdVZDVLQnYx?=
 =?utf-8?B?b3k4R2wvbzVPMEpNV3FLb01FcFRMdzlydXRTN0l6c2dkVlAycGNtVS9LRkdu?=
 =?utf-8?B?RjZhem9LMXZBZFZHclpzMW92MThyT0lMdFd5Y3JjV01nQWhjRi9uUExzUmcz?=
 =?utf-8?B?dFp3ZHo1VHNCVGw1KzYzMmJ1eW4vWEZMOUo3SnVWNGtITFFEWmdvL1JIQjU0?=
 =?utf-8?B?ajhkczRLOVJadDkyK1BGMzBuc3VCUm94NGlTRWhQZ3E3RWxLTWwvMWkvNnJ1?=
 =?utf-8?B?WDlqNFBVbXNjVmJOdm1HZ1FPR29Ba0tubStOYUlyK01KaW9XRThYOFVxeng0?=
 =?utf-8?B?RmtrWmhnb1VxWG1udlYxRGQ5R2V4WHFzTHpDZ2hIQ2VDTVk3dHRFY2FGbFpz?=
 =?utf-8?B?WUtnL0VmK3JaVGFnblYxQlFWbXJNVGYwNDAyamhBUHdmNEVrTC85Z0dRTFRD?=
 =?utf-8?B?R0VhNTlXSi9sTE9CK3JHcTZlNEFDT3JQVHpWRkdScHQ3ckJ1bldOcE9mTXI3?=
 =?utf-8?B?d3FneFA4Zjd2dzBMVmQyWXpPUEVqakREbDBtN0tXSi9EN0JyRTJCOFZwOHMw?=
 =?utf-8?B?aVJvRUNZblFISnFPZDdRWXk3S25tbFpaNkFlUEVqOEJ0OGVxVHZnYjd2dDNh?=
 =?utf-8?B?SHlKUWFOQzVtQXZ1djdkbWdMR0lpN2JEaVlZcDAyTDBMSU1zNzVmS2VwMmoy?=
 =?utf-8?B?c3pJR3d5OHdUaFZMY0E3MEZNOFdQa1FTTGF6U00zd0tTUzdOSndBdTlnc1pq?=
 =?utf-8?B?am01TWlyL093anNOVHVEVFdNYy9VRVM0SkNWNmRwUjlXZDZxQWw1ZkFuVXZY?=
 =?utf-8?B?bjg5T3VNMTBhNFJSbmhYcCt2ZnU5YUk4d3YwVWlVbG95VytxL2crRWZCb2p0?=
 =?utf-8?B?WVN1a2lxeGptR0hzeHFGd3JnSGhOSnJydGlMT2w0VUhqR1VNbk05MzRWem9R?=
 =?utf-8?B?SHR0dUR3UHoyTXM1WDF1S2d2b1hLU1BIZll3aUJGYkpjSzNLS1NSalgySExl?=
 =?utf-8?B?VDRIMlA2bzltcXlXVzNETTlicEhxdnNRaWhQMXhNeW8xekk0T0g2cE4yUkpu?=
 =?utf-8?B?cGt0dEl2L3lKbXNzajZ5YXRLYUwrVHlPL21hTFpHWTBSM2FiWXkveWFMV1Ny?=
 =?utf-8?B?Mm10akJNQlNMUU01Nlk2aEhJalB4OEV5c245QzNTUWZPM3d4N3FJT0k4SWhn?=
 =?utf-8?B?MVUvT0sveGEzWDVGRWp0TkU3WE80S3ROUTIyY2k1UTlZSU03a0tta1QvUFpS?=
 =?utf-8?B?WlphcUZSei9TOWJqTmZiazlLbEdQT3N3NTZxU2E5KzladDdBNEZRUXpDeVQr?=
 =?utf-8?B?OWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C07A5C2DC8F85649A179120402421D69@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d16016c2-b522-4cd0-ed36-08dc68420e3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 11:46:49.5482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4VTgzMVfgbga119MOJYjdnhqc8KB2z4r6TPYHqFTMGwGjRdsfm6CliZoHiKey1f1hngvi9tMB/WSfCYR1uV7OQzrDkrIn9CRQxiVIdydNTI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7633
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

T24gTW9uLCAyMDI0LTA0LTI5IGF0IDExOjQ1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogTWFubmEs
IEFuaW1lc2gNCj4gPiBTZW50OiBNb25kYXksIEFwcmlsIDI5LCAyMDI0IDU6MDQgUE0NCj4gPiBU
bzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+OyBpbnRlbC0NCj4g
PiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogUkU6IFtQQVRDSCB2NyAw
Ni8xMV0gZHJtL2k5MTUvcHNyOiBNb2RpZnkNCj4gPiBpbnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJp
dHkgdG8gc3VwcG9ydCBwYW5lbCByZXBsYXkNCj4gPiANCj4gPiANCj4gPiANCj4gPiA+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IE1vbmRheSwgQXByaWwgMjksIDIwMjQg
NDo0NiBQTQ0KPiA+ID4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT47IGludGVsLQ0KPiA+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gU3ViamVj
dDogUmU6IFtQQVRDSCB2NyAwNi8xMV0gZHJtL2k5MTUvcHNyOiBNb2RpZnkNCj4gPiA+IGludGVs
X2RwX2dldF9zdV9ncmFudWxhcml0eSB0byBzdXBwb3J0IHBhbmVsIHJlcGxheQ0KPiA+ID4gDQo+
ID4gPiBPbiBNb24sIDIwMjQtMDQtMjkgYXQgMTE6MDIgKzAwMDAsIE1hbm5hLCBBbmltZXNoIHdy
b3RlOg0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gPiA+ID4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gPiA+ID4gPiBTZW50OiBGcmlkYXksIEFwcmlsIDE5LCAyMDI0IDU6NDIgUE0N
Cj4gPiA+ID4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPiA+
IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwg
Sm91bmkNCj4gPiA+ID4gPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+IFN1
YmplY3Q6IFtQQVRDSCB2NyAwNi8xMV0gZHJtL2k5MTUvcHNyOiBNb2RpZnkNCj4gPiA+ID4gPiBp
bnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHkgdG8gc3VwcG9ydCBwYW5lbCByZXBsYXkNCj4gPiA+
ID4gPiANCj4gPiA+ID4gPiBDdXJyZW50bHkgaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5IGRv
ZXNuJ3Qgc3VwcG9ydCBwYW5lbA0KPiA+ID4gPiA+IHJlcGxheS4NCj4gPiA+ID4gPiBUaGlzIGZp
eCBtb2RpZmllcyBpdCB0byBzdXBwb3J0IHBhbmVsIHJlcGxheSBhcyB3ZWxsLg0KPiA+ID4gPiA+
IA0KPiA+ID4gPiA+IHYyOiByZWx5IG9uIFBTUiBkZWZpbml0aW9ucyBvbiBjb21tb24gYml0cw0K
PiA+ID4gPiA+IA0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+IFJldmlld2VkLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA2Mg0KPiA+ID4gPiA+
ICsrKysrKysrKysrKysrKysrKysrKy0tLQ0KPiA+ID4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDU1
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+
ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4g
PiBpbmRleCBiOTRmOGUzM2VkMWYuLjI5NDAwZmFjMTNjMiAxMDA2NDQNCj4gPiA+ID4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+IEBA
IC00NjYsNiArNDY2LDQwIEBAIHN0YXRpYyB1OA0KPiA+ID4gPiA+IGludGVsX2RwX2dldF9zaW5r
X3N5bmNfbGF0ZW5jeShzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4g
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiB2YWw7DQo+ID4gPiA+ID4gwqB9DQo+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gK3N0YXRpYyB1OCBpbnRlbF9kcF9nZXRfc3VfY2FwYWJpbGl0eShzdHJ1
Y3QgaW50ZWxfZHANCj4gPiA+ID4gPiAqaW50ZWxfZHApIHsNCj4gPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqB1OCBzdV9jYXBhYmlsaXR5Ow0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqBpZiAoaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0KQ0KPiA+
ID4gPiANCj4gPiA+ID4gV2hpbGUgcmVsb29raW5nIGZvdW5kIHRoYXQgZ29vZCB0byBhZGQgYSBj
aGVjayBmb3INCj4gPiA+ID4gRFBfUEFORUxfUEFORUxfUkVQTEFZX1NVX0dSQU5VTEFSSVRZX1JF
UVVJUkVEICg2dGggYml0IG9mIGRwY2QNCj4gPiA+IDB4YjEpLg0KPiA+ID4gPiBXaGF0IGlmIGl0
IGlzIHplcm8gbWVhbnMgZ3JhbnVsYXJpdHkgbm90IG5lZWRlZCBidXQgd2lsbA0KPiA+ID4gPiBj
b250aW51ZSB0bw0KPiA+ID4gPiB1c2UgeC1ncmFudWxhcml0eSBhbmQgeS1ncmFudWxhcml0eS4N
Cj4gPiA+IA0KPiA+ID4gUGxlYXNlIG5vdGUgaXQgaXMgNXRoIGJpdCBpbiAweGIxLiBTZWUgbXkg
ZnVydGhlciBjb21tZW50DQo+ID4gPiBiZWxvdy4uLg0KPiA+IA0KPiA+IFNhbWUgSSB3YXMgcmVm
ZXJyaW5nLMKgIDZ0aCBiaXQgaW5kZXggNSBhcyBpdCBzdGFydHMgZnJvbSAwLg0KPiA+IA0KPiA+
ID4gDQo+ID4gPiA+IFJlZ2FyZHMsDQo+ID4gPiA+IEFuaW1lc2gNCj4gPiA+ID4gDQo+ID4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kcF9kcGNkX3JlYWQoJmludGVs
X2RwLT5hdXgsDQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+IERQX1BBTkVMX1BBTkVMX1JFUExBWV9Y
X0dSQU5VTEFSSVRZLA0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmc3VfY2FwYWJpbGl0eSwgMSk7DQo+IA0K
PiBJIHRoaW5rIGluc3RlYWQgb2YgRFBfUEFORUxfUEFORUxfUkVQTEFZX1hfR1JBTlVMQVJJVFkg
aXQgc2hvdWxkIGJlDQo+IERQX1BBTkVMX1BBTkVMX1JFUExBWV9DQVBBQklMSVRZLCBldmVyeXRo
aW5nIGVsc2Ugd2lsbCBiZSBmaW5lLg0KDQpZZXMuIEp1c3Qgbm90aWNlZCB0aGF0IGFzIHdlbGwu
IEdvb2QgY2F0Y2ggaGVyZS4gSSB3aWxsIHVwZGF0ZSBteSBzZXQuDQoNCkJSLA0KDQpKb3VuaSBI
w7ZnYW5kZXINCg0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVzaA0KPiA+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoGVsc2UNCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Vf
Y2FwYWJpbGl0eSA9IGludGVsX2RwLT5wc3JfZHBjZFsxXTsNCj4gPiA+ID4gPiArDQo+ID4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHN1X2NhcGFiaWxpdHk7DQo+ID4gPiA+ID4gK30NCj4g
PiA+ID4gPiArDQo+ID4gPiA+ID4gK3N0YXRpYyB1bnNpZ25lZCBpbnQNCj4gPiA+ID4gPiAraW50
ZWxfZHBfZ2V0X3N1X3hfZ3JhbnVsYXJpdHlfb2Zmc2V0KHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4g
PiA+ICppbnRlbF9kcCkgew0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBpbnRlbF9k
cC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQgPw0KPiA+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWF9HUkFOVUxBUklU
WSA6DQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERQX1BTUjJfU1Vf
WF9HUkFOVUxBUklUWTsgfQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiArc3RhdGljIHVuc2lnbmVk
IGludA0KPiA+ID4gPiA+ICtpbnRlbF9kcF9nZXRfc3VfeV9ncmFudWxhcml0eV9vZmZzZXQoc3Ry
dWN0IGludGVsX2RwDQo+ID4gPiA+ID4gKmludGVsX2RwKSB7DQo+ID4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgcmV0dXJuIGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCA/
DQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERQX1BBTkVMX1BBTkVM
X1JFUExBWV9ZX0dSQU5VTEFSSVRZIDoNCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgRFBfUFNSMl9TVV9ZX0dSQU5VTEFSSVRZOyB9DQo+ID4gPiA+ID4gKw0KPiA+ID4g
PiA+ICsvKg0KPiA+ID4gPiA+ICsgKiBOb3RlOiBCaXRzIHJlbGF0ZWQgdG8gZ3JhbnVsYXJpdHkg
YXJlIHNhbWUgaW4gcGFuZWwNCj4gPiA+ID4gPiByZXBsYXkgYW5kDQo+ID4gPiA+ID4gcHNyDQo+
ID4gPiA+ID4gKyAqIHJlZ2lzdGVycy4gUmVseSBvbiBQU1IgZGVmaW5pdGlvbnMgb24gdGhlc2Ug
ImNvbW1vbiINCj4gPiA+ID4gPiBiaXRzLg0KPiA+ID4gPiA+ICsgKi8NCj4gPiA+IA0KPiA+ID4g
Q2hlY2sgdGhpcyBjb21tZW50LiBTZWUgbXkgZnVydGhlciBjb21tZW50IGJlbG93Li4uDQo+ID4g
DQo+ID4gQWdyZWUgYml0IHBvc2l0aW9uIGlzIHNhbWUuDQo+ID4gDQo+ID4gPiANCj4gPiA+ID4g
PiDCoHN0YXRpYyB2b2lkIGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eShzdHJ1Y3QgaW50ZWxf
ZHANCj4gPiA+ID4gPiAqaW50ZWxfZHApwqAgew0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiA+
ID4gPiA+IEBAIC0NCj4gPiA+ID4gPiA0NzMsMTgNCj4gPiA+ID4gPiArNTA3LDI5IEBAIHN0YXRp
YyB2b2lkIGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eShzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRl
bF9kcA0KPiA+ID4gPiA+ICppbnRlbF9kcCkNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTE2
IHc7DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IHk7DQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gLcKgwqDCoMKgwqDCoMKgLyogSWYgc2luayBkb24ndCBoYXZlIHNwZWNpZmljIGdyYW51bGFy
aXR5DQo+ID4gPiA+ID4gcmVxdWlyZW1lbnRzDQo+ID4gPiA+ID4gc2V0IGxlZ2FjeSBvbmVzICov
DQo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKCEoaW50ZWxfZHAtPnBzcl9kcGNkWzFdICYN
Cj4gPiA+ID4gPiBEUF9QU1IyX1NVX0dSQU5VTEFSSVRZX1JFUVVJUkVEKSkgew0KPiA+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoC8qDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgICogVE9ETzogRG8g
d2UgbmVlZCB0byB0YWtlIGludG8gYWNjb3VudCBwYW5lbA0KPiA+ID4gPiA+IHN1cHBvcnRpbmcN
Cj4gPiA+ID4gPiBib3RoIFBTUg0KPiA+ID4gPiA+IGFuZA0KPiA+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoCAqIFBhbmVsIHJlcGxheT8NCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiA+
ID4gPiArDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgLyoNCj4gPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqAgKiBJZiBzaW5rIGRvbid0IGhhdmUgc3BlY2lmaWMgZ3JhbnVsYXJpdHkNCj4gPiA+ID4g
PiByZXF1aXJlbWVudHMNCj4gPiA+ID4gPiArc2V0DQo+ID4gPiA+ID4gbGVnYWN5DQo+ID4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgICogb25lcy4NCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgKi8N
Cj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoIShpbnRlbF9kcF9nZXRfc3VfY2FwYWJpbGl0
eShpbnRlbF9kcCkgJg0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBfUFNS
Ml9TVV9HUkFOVUxBUklUWV9SRVFVSVJFRCkpIHsNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoC8qIEFzIFBTUjIgSFcgc2VuZHMgZnVsbCBsaW5lcywgd2UgZG8gbm90
DQo+ID4gPiA+ID4gY2FyZQ0KPiA+ID4gPiA+IGFib3V0IHggZ3JhbnVsYXJpdHkgKi8NCj4gPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHcgPSA0Ow0KPiA+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgeSA9IDQ7DQo+ID4gPiA+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGV4aXQ7DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoH0NCj4gPiA+IA0KPiA+ID4gVGhpcyBibG9jayBpcyB0YWtpbmcgY2FyZSBvZiBjaGVja2lu
ZyBiaXQgNSBpbiAweGIxIGFuZCB1c2luZw0KPiA+ID4gbGVnYWN5DQo+ID4gPiBvbmVzIGlmIG5v
IHJlcXVpcmVtZW50cy4NCj4gPiANCj4gPiBpbnRlbF9kcF9nZXRfc3VfY2FwYWJpbGl0eSBpcyBy
ZWFkaW5nIGZyb20NCj4gPiBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWF9HUkFOVUxBUklUWSB3aGlj
aCBJcyBkcGNkIDB4YjIuIEFtIEkNCj4gPiBtaXNzaW5nIHNvbWV0aGluZz8NCj4gPiANCj4gPiBS
ZWdhcmRzLA0KPiA+IEFuaW1lc2gNCj4gPiANCj4gPiA+IA0KPiA+ID4gQlIsDQo+ID4gPiANCj4g
PiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gLcKgwqDC
oMKgwqDCoMKgciA9IGRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5hdXgsDQo+ID4gPiA+ID4g
RFBfUFNSMl9TVV9YX0dSQU5VTEFSSVRZLCAmdywgMik7DQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgciA9IGRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5hdXgsDQo+ID4gPiA+ID4gKw0KPiA+
ID4gPiA+IGludGVsX2RwX2dldF9zdV94X2dyYW51bGFyaXR5X29mZnNldChpbnRlbF9kcCksDQo+
ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAmdywgMik7DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyICE9IDIpDQo+
ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkx
NS0+ZHJtLA0KPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICJVbmFibGUgdG8gcmVhZA0KPiA+ID4gPiA+IERQX1BTUjJfU1VfWF9H
UkFOVUxBUklUWVxuIik7DQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIlVuYWJsZSB0byByZWFkIHNlbGVjdGl2ZSB1cGRhdGUN
Cj4gPiA+ID4gPiB4DQo+ID4gPiA+ID4gZ3JhbnVsYXJpdHlcbiIpOw0KPiA+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqAvKg0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBTcGVjIHNheXMgdGhh
dCBpZiB0aGUgdmFsdWUgcmVhZCBpcyAwIHRoZSBkZWZhdWx0DQo+ID4gPiA+ID4gZ3JhbnVsYXJp
dHkgc2hvdWxkDQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIGJlIHVzZWQgaW5zdGVhZC4N
Cj4gPiA+ID4gPiBAQCAtNDkyLDEwICs1MzcsMTIgQEAgc3RhdGljIHZvaWQNCj4gPiA+ID4gPiBp
bnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHkoc3RydWN0DQo+ID4gPiA+ID4gaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAociAhPSAyIHx8IHcgPT0gMCkN
Cj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHcgPSA0Ow0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoHIgPSBkcm1fZHBfZHBjZF9yZWFkKCZpbnRl
bF9kcC0+YXV4LA0KPiA+ID4gPiA+IERQX1BTUjJfU1VfWV9HUkFOVUxBUklUWSwgJnksIDEpOw0K
PiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoHIgPSBkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+
YXV4LA0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiBpbnRlbF9kcF9nZXRfc3VfeV9ncmFudWxhcml0
eV9vZmZzZXQoaW50ZWxfZHApLA0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnksIDEpOw0KPiA+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqBpZiAociAhPSAxKSB7DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJVbmFibGUgdG8gcmVhZA0K
PiA+ID4gPiA+IERQX1BTUjJfU1VfWV9HUkFOVUxBUklUWVxuIik7DQo+ID4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIlVuYWJsZSB0
byByZWFkIHNlbGVjdGl2ZSB1cGRhdGUNCj4gPiA+ID4gPiB5DQo+ID4gPiA+ID4gZ3JhbnVsYXJp
dHlcbiIpOw0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgeSA9IDQ7
DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
aWYgKHkgPT0gMCkNCj4gPiA+ID4gPiBAQCAtNTg4LDcgKzYzNSw4IEBAIHZvaWQgaW50ZWxfcHNy
X2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ID4gPiAqaW50ZWxfZHApDQo+ID4gPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyX2RwY2RbMF0pDQo+ID4gPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfcHNyX2luaXRfZHBjZChpbnRlbF9kcCk7
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3Iu
c2lua19wc3IyX3N1cHBvcnQpDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGludGVsX2Rw
LT5wc3Iuc2lua19wc3IyX3N1cHBvcnQgfHwNCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqAgaW50ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0KQ0KPiA+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFy
aXR5KGludGVsX2RwKTsNCj4gPiA+ID4gPiDCoH0NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiAtLQ0K
PiA+ID4gPiA+IDIuMzQuMQ0KPiA+ID4gPiANCj4gDQoNCg==
