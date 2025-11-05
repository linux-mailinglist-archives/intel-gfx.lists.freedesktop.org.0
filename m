Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC2BC33ED6
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:27:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCCD10E6AD;
	Wed,  5 Nov 2025 04:27:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ed9XcOPi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8422A10E6AD;
 Wed,  5 Nov 2025 04:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762316841; x=1793852841;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+430izOgwfwnFnyWLOatbQ86wFyutlNFdhXHM8qmMPE=;
 b=Ed9XcOPivQpH9Ulh/jViwLRIGPIEWOlZZBFReS/QPXNAQL2uv+oBw705
 axED7dtlGCu6r4Ay4gr8SUIetHcr2oxSuvqTnW6/kC2Z1JsRDh4t9bUGE
 BMPU3fA+J080hplj1Jue9BvDxpT1mfoYlcG6pFqHYpQk2Vjr9CwMt/HL6
 wdJ8xxdoHFQ1uLxJVtsHWbkj86YsfjQCceXoxLeINTwMe9T0wBwOPXsOX
 hi+gLpO29hz0w+y7A/xUeuBOFg8LXb2tDR/K+4N0MQm4HG1nuH9kIdLkR
 YWo0pL9+nZiV3RcfEhoJhca0c9nOu1gsVAKSC0mc65JxlsDi6LvoFboDK Q==;
X-CSE-ConnectionGUID: MMj7WEHwQBCl2GQrUg9lXw==
X-CSE-MsgGUID: Kbxh/vZ5RPue7b0jc42Eeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="63432266"
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="63432266"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:27:21 -0800
X-CSE-ConnectionGUID: 6QXYfEhaRfC+eHAipYKU5Q==
X-CSE-MsgGUID: Qd5lSlv0RPa9Rjz+SmV4EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="187033303"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:27:21 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:27:20 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:27:20 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:27:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e67URaLD3tGVItNUbx14piEjYJT/nNqicxNEli/AuTyLhbUfDM7JnzeRoqbkFJM8ANWfeTmnkJSJcZDRlKpj+ysjhL7s8D+S+IK838am9JV/KhDM1OgOpUWH6x/2MHUgbkPIwtuC18IerUkvZzZY2PZtk1DOBZgMwdjB0NfdysfZbL7slwYviqFO51n1dpLsF6XilwMYjvf3bPYwc0H4oESmxLHVfKA4AF7JIHvZEdq9Fuw+wdITUl9s7vZFnwyjmOUfzIQR6nKgY/9o5IWLwebn1NyKXp96esSrwO+oaR7/LxY7c+rv+/PXBRvCj84bZjTKcAXMOJN8xJD9uGppqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=35C0i2jsoPkXLr0oji/sf4yv/n8vzvNquYMNtGmvHhY=;
 b=lmT/SLwpBpBQb5AqOjDtdDVH7+B0uqqElTlzfBv4B3C6QmvEVUahYS8Km2rCCM2hmARpgZsuoZ7C4LlqMnfcGigUVKU0gryWtI4X2QjxaWojRpdkM+7zC6btXnV8SAjBKQHMgY4Ea257vOAOHQ9g3dSojQ0yd6NyefhfO9rmzvybPasU8F4WlOntemax55r3rz6SUjMESfTS/ziH9w1slvEhZ0O/pLGwDa/q5omlQSLZCdowNuTJh2hthW5ngKZDGz/KdsFVlBHI1l2ZPMkuBJKBV7OYrr5pc0YdfykRbJmS61sgZ2q9upTZm4c0xMx5WEEbLSmgZ2KLTobhNk7m/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA4PR11MB9249.namprd11.prod.outlook.com (2603:10b6:208:55f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 04:27:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:27:18 +0000
Message-ID: <2e0353c5-8449-42ef-a7ff-777620bebe36@intel.com>
Date: Wed, 5 Nov 2025 09:57:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 07/22] drm/i915/vrr: Add compute config for DC Balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0141.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d2::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA4PR11MB9249:EE_
X-MS-Office365-Filtering-Correlation-Id: c2498c8e-d04c-4be8-3eda-08de1c239af2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MnFVUVJHZjlCbFVFQUo4NzRvNXJ1YW9qK2dtdVI0WmFzaVhlZkRFMkUwZjJz?=
 =?utf-8?B?S3JtWmJWbEg1RTB2b1lma215bkd1eFBBK1ZFOHYyY3EydmRsSjMvVzM2cmdp?=
 =?utf-8?B?ckUvemFRNjN1MnJKVysxVUVPVENwVGxWOS8xWU5YUVQwV3NIbGtjb3QwY2pr?=
 =?utf-8?B?bVJBTEZ4b2tRU1hBMWVLY2I5TXcwTG14Mm5tYU52dE9VUmVWNDhoZ2FXbGZ2?=
 =?utf-8?B?dy9XWWIyWXk4ZFZJeFBsOEQvT2p1cCtsYzRiMlNwWE82OXpMQXYrNUVXRkl1?=
 =?utf-8?B?RklvdThJbVdSRDVza1lFSkhwQmxqSDVvalJ2MnA5cUJRVmZ3MUVRKy9SVmhZ?=
 =?utf-8?B?RDFDVzhSUTJTNmxBQTRYV1ZWTGJEU3JzVitYbVZiWkkwcWlGQ0Q0ckVlN3o5?=
 =?utf-8?B?S0M4TC95UHZkTk1FckpwWmMwN0t1RHJpN2plaVF5U1hXNVMyVTRZRWowM1dL?=
 =?utf-8?B?S3BCTG1LNTVxS2dPV245bFhvTk1qK2QrMjZXczFVUE9ib2k0M1daeVRsWE5N?=
 =?utf-8?B?OFo3NTNWMkhqWDhHOXpwWGR3MVFlTm8rS3hmUk1iQzUwSnV4eGRHSTdsd0I5?=
 =?utf-8?B?cXRSeEZBaUh3ZlN1aEpGT0tIQ3VGeExMakMyNGNxWC9GRHRiUkFuYXljSEZw?=
 =?utf-8?B?Z3g1Z3NmQko3cUpVUkE5YTBXSEZVM1ZabTFOdjc3MXRyV1ZnTW51aG53V1RX?=
 =?utf-8?B?YlJGTmJid0Yxc3psblZGNHAxQkRUZWZnY1JrM0kyS0FGemZ4SHY2K05YTWIv?=
 =?utf-8?B?L25sYUdmR3hHd2tUWEF0UldLM3o4R1A0Q25pWjAzQ2FRODFOdHdwZWZzQjVq?=
 =?utf-8?B?RWk2V2JtUE1ZeHRsWWFBUDRZZDFlNXhqdnNiTG1ocHFaNzYwVThveEo5TjE1?=
 =?utf-8?B?V2tWY3R6L1dhZSsxdHhFbEhadXluZC9hK0p5SVFZN1VlcmNySnpaczZkdWlO?=
 =?utf-8?B?UzlDNVNZOFBDK3l5NVcvVmhvNlZ1MXZ4OEVaSTlmeDZwSXZMdWFpb2xPaUgy?=
 =?utf-8?B?d255TG85czduTWtMazNwelZjWkkyWUJVUzFCbndNZzJ0UEVjVVF1Snh4b0pN?=
 =?utf-8?B?eWg3QjRNbDE1OWpqenhkRFhEN1VjQVdiZkR4QW0xK2JOcExKRC9ZeUdJRXg4?=
 =?utf-8?B?WUMrOHlidGwvYUdJK3h1SzNjVHQyVC8raDUzWDkzWDBaSE52S3BYWVFwT1Mv?=
 =?utf-8?B?MG42RytNODNUZ2lrV3lhbXQ5ZmNFNHpRV1NTUTV5eDBDUDNTNVJEdU1jWTBx?=
 =?utf-8?B?cjRnc2Y3amxwWFFKZENTVHBUTUI1VVVGQnl3Szc0VERQU2s0RjFLemdISUwr?=
 =?utf-8?B?aHZ2Q2VrSm9HMEptb253MXY4Vnlra2twNHR6cW5RUlJ1bzFSM01LSlBBQlJE?=
 =?utf-8?B?QkhVNUVDajRsWUZ3SnpkSExHNzBiem9Wb2Q1L3c5dHBMZnlHeVcxTnJ4OEti?=
 =?utf-8?B?eWMwa2ZNNGxweFo1cDVQSUpub2dtaWxtQ1pzWHJDNk1xVEc2OHJNK3hsb2pk?=
 =?utf-8?B?TU5DemxWUE5FblVJTnF1ZEdMK24xb1N3WWt2enMwb2pqd29nTVhsMUw5Qk9I?=
 =?utf-8?B?cUhWQXZFa2IrK2xGcG5FRWpmUmlxK3o4Y3BiaXVoVk04bXQ5dkJhUkprbDdR?=
 =?utf-8?B?VG9mLzBiZ1FLSm5WbkdNakhtYXdCcWJZblZVcG52Vkh2SG5NbjY4OGR5VjNp?=
 =?utf-8?B?b1daOUlZdUtWQTYyWTYvcyt6bE9CY2RLQUNSRWM5MVZTaFhCR2tPMzlJaE9Q?=
 =?utf-8?B?Nno5Yk80VGZyZ0pyTkx0em53TWQyaW5mL1ppYmV6bko2ZUJ3bUJpSld3V1hW?=
 =?utf-8?B?WWx0bEpBbFZnYkNYbStQL3o5TGs3SFd2bmtPZnZPSWwycTVJbnltdG1BMFRP?=
 =?utf-8?B?VTBScXdFV2taQmNOZUZWdHJHdTdlTkVzQ2FqT3k5b0xMaXlOcis0Z3pXdFBq?=
 =?utf-8?Q?W+BoGCH7+31iM/n0joeostg1PoDZnT/R?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MW5BK0xMSTR2ZlVhbnpiT0xpdmhlK09kYmxmSjdaODNGQURrUW01VEcvRGpx?=
 =?utf-8?B?UkZNUUhqVzBFZmI4WGs4bzliTkFIK09QYTgyRXF5bzhzTDRWSHp1emwxWmZl?=
 =?utf-8?B?UW9tTmhpd2ROdGl6a3c5VndYU0VoMzNhZ25HUUUvaXhkWnY0V2VZWVVaTUt6?=
 =?utf-8?B?b3BSYlJMbVFmM1QwbjByYmZuakE4Y092OTl6dTdBU2N3V3JMU1Q2cTZ1NnJn?=
 =?utf-8?B?b25yWVhpaWVTM0FCYXRES3dXQXRoZ3hESHRISkNMMm5SY1ExTTBwNUxNdFpS?=
 =?utf-8?B?RSt0cTdYajlVN0hNTFp3eWR3YmRyaUx6QlRNUlkxRGFSZlk1ODB1bG1xRWZw?=
 =?utf-8?B?aDRheE82cTdDMG1nSmtrNGdlQ1VDWklEVks0aTNEMGk5b2l4cHI4S2JZSXRK?=
 =?utf-8?B?bTk4bHI4bHNNS1hXMHpTM21hdDRzeFFCb29yTTk2WHBCMGhTS3d1THZXTGR0?=
 =?utf-8?B?bjg3TTVTZHRCYnBGcVY5Z1ZrNTVEMlNiQ09UTGczTG5jR0hkR1FpQkFsZjNp?=
 =?utf-8?B?c1FwcEREMDBHa1dIQ1daTUtnOWR0N0xSeHBJVFdhb2Nsc1NjRkwyTVF1Y2Ji?=
 =?utf-8?B?Q3VvQWhpM3NRNTVwV2ZmbU14NXlpTXkwV3Y0emppUmhYa1lWTXhvMDFwZjAx?=
 =?utf-8?B?dHQwTEZiL2U0UGEvQ1FrTGp4enVVVXJqLzdmOEV5ZS8yQ0x3Zm8ySzlXMlRu?=
 =?utf-8?B?RU1hbjlSSHJ5ZnR1cEY2dUFhcmpkekdPYWpPc0RmeHQvSTFpS3pYbitVb0Rm?=
 =?utf-8?B?dlFtTzZBNEQ5Y2d6dkdPTnVkc2hmSFU0V3Y3RlV6a0tXSnNPU0lZYXJOUU5o?=
 =?utf-8?B?S0c2NGVrbGQyeGJMNWJFTWJIcDhXRXRVQ1FmVGhHNWc2NGl4QkN2a3ZHdGtF?=
 =?utf-8?B?SG5naW1Zdjlzc2x5VEhiQmVVV0F0TEtwanVGQnRTdEJsOFVlVUNMb3NCQWIz?=
 =?utf-8?B?MGIzNTUwZlUxL0dzUThzcnlTUXNLVVR6dTNoQjdwbWxVRGJRZ3M4THpOejc5?=
 =?utf-8?B?T3VxcUphR1gyRUYzTXRZSHdpVDB0UldxSmhKNmc1VWVmWUNhaUJjYjJOS01I?=
 =?utf-8?B?MGtMblNnbEFFR1JQSTRhbXkrL1VrdmpRc0Y5UnkxR2lKTnpzQ3lMdStsUm5Z?=
 =?utf-8?B?VXlNUG1rcyt2T1FCNTg2VmNNTlkrMUZTSlpDRmtwTmNQZVdIV0dtUUpvblVX?=
 =?utf-8?B?VU5LNEFZeWZCdCt0d2t6Sm04WHpMQmo3eE8zdHpMMUlwTHlKN0luY2dZcHph?=
 =?utf-8?B?alZZZVBhUFBuMERabE5OYnBpY0FXRWlYUmszQ3JIa1EzOUlxZ2t2UExWdWpG?=
 =?utf-8?B?cjRzbjE2NFpWZGxFb25ZSlVvcmFaTFNWUFF2TGlJUXVXalRLUTdSenZUQ2Iy?=
 =?utf-8?B?TzZzZ2Z6ZEdEWnd3N0xxalBuN1U1a1hCL2hJR1NLdU15OGgzVXNtMnpMNFpM?=
 =?utf-8?B?SVlxWTVxUGJiQU9QYVg3Qi84QVdvbVVNT2JDQWZaK3FuOFplQ1NpM1NZTmNi?=
 =?utf-8?B?Nk41a1Ewa3lOVnBaMXhRQThUNTFqa3NKdGV6TmYwbm9ubSsxTm40TzVVaHU5?=
 =?utf-8?B?ZldvWTdWdFVkY2VrZkdzYVVxeVc2YjBNSDNlZ1V3dUd4V2RBVGdSWUVkci9Z?=
 =?utf-8?B?aHB0YnVmWWlhaXB1bWF6VGxiTVFrVnlNeEI4b1gvU05DNDhvR3VsZS90K0pL?=
 =?utf-8?B?UU9QWityam5IOHZXWXpMeHN6QkFOVVdxdlEwY1phWHNmQk9hdDBnNnZLSndo?=
 =?utf-8?B?MGdxQlV1MFllRXdYanNXUDZmNWZ2eGZhNUZGdy8vV3FOc1NmQ29NUXF0cDRP?=
 =?utf-8?B?Rnlydm8vM0hweFN4YmgwOXhNSEk1cGFQL0x0bG5PTUhGdXZSYUFPdEdyeHRn?=
 =?utf-8?B?S015RnJNRFpqYTl6eUNHYzVHNjZ4R0lLaUNsdnQzVG1DVlVSOG5VdjAvYWNT?=
 =?utf-8?B?YkdaR0d4RXhwS0txa052L29JRE9Mby9DQk9YRGh5akhoeFRMdzkxTXpWY2g4?=
 =?utf-8?B?SG9qajJmNHdaMk5VL3h0OE9aZnNPc2FWR1JFc1lINE9tRVRrTFVBUWxuMS9h?=
 =?utf-8?B?bm5HYklSSnZuOGVTRVdxZ2J0KzRMMWpTSUVqdXUvU0VFVnpldEdSMS9peHAv?=
 =?utf-8?B?ME5Xb0sxazUvUW16UElsQjQybmJjYm9IOEROS25ZWFNRY2dLU3YyK0FvUFdh?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2498c8e-d04c-4be8-3eda-08de1c239af2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:27:18.7052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6w3HRLkhN/qj7jYCZzDFktJbS7KFFRxBgR9ksNzMNkd440LZKyxmMraUUbIE14PNyBS24T8DCiTYUGf1HyGPA6APtBffqf0FyUOoo7tpG1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9249
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Compute DC Balance parameters and tunable params based on
> experiments.
>
> --v2:
> - Document tunable params. (Ankit)
>
> --v3:
> - Add line spaces to compute config. (Ankit)
> - Remove redundancy checks.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 26 ++++++++++++++++++++++++
>   1 file changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3c30c8d3e206..2948abc90c69 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -20,6 +20,14 @@
>   #define FIXED_POINT_PRECISION		100
>   #define CMRR_PRECISION_TOLERANCE	10
>   
> +/*
> + * Tunable parameters for DC Balance correction.
> + * These are captured based on experimentations.
> + */
> +#define DCB_CORRECTION_SENSITIVITY	30
> +#define DCB_CORRECTION_AGGRESSIVENESS	1000
> +#define DCB_BLANK_TARGET		50
> +
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
>   	struct intel_display *display = to_intel_display(connector);
> @@ -399,6 +407,24 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
>   	}
> +
> +	if (crtc_state->vrr.dc_balance.enable) {
> +		crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
> +		crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.max_increase =
> +			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.max_decrease =
> +			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.guardband =
> +			DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
> +				     DCB_CORRECTION_SENSITIVITY, 100);
> +		crtc_state->vrr.dc_balance.slope =
> +			DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,


Should we have DCB_CORRECTION_AGGRESSIVENESS directly as 10000 instead?

Regards,

Ankit

> +				     crtc_state->vrr.dc_balance.guardband);
> +		crtc_state->vrr.dc_balance.vblank_target =
> +			DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
> +				     DCB_BLANK_TARGET, 100);
> +	}
>   }
>   
>   static int
