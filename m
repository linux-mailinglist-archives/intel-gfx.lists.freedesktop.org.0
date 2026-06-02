Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id b2h5MYHWHmq3VgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:11:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B0A62E528
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 15:11:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OtHKt9Qm;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC9E710F0CB;
	Tue,  2 Jun 2026 13:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A279010F0D0
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 13:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780405887; x=1811941887;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BZGKjlXo7KlbvbUdrUcKeZtOQclNyGvTffcdemo9x44=;
 b=OtHKt9QmILIJ8jzSVx+APiBBPYfItG4OnQSVtzcdjYMfL8bO1DFpS97r
 riN6KPFn1+ebT8NWknzU6njUDLL96fWZ2Y7cHmwGaZCHLObUwSIZQHBhn
 eyEhPHiqD1U8LhaGQbVp6i4clHcZ6b7q5W/t8RA9v0Gz7kJpJ1SBp4inb
 TX/3xTqD2YbTKiD1DgAhCgBKbrMJr78XKYks07l8YwRE3SmyJOLITr9cg
 WVpoEaiglaBnue4bhkbKmPEqQ0pxgfBPaiL1IZqXgtrUx3BveUifpx46O
 gpitcokD2yLg9+Fk6qrxywlB8vwASMRvdgEwwSZSlsLkQ3MpWHvPT1ATW Q==;
X-CSE-ConnectionGUID: F9/N8TZcT5K7F5C8L+B6Dw==
X-CSE-MsgGUID: H+FWjePbRKC2dNFm0OCKNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="81159018"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81159018"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:11:27 -0700
X-CSE-ConnectionGUID: I87GaoEcR6KxeNR0M7cotw==
X-CSE-MsgGUID: 8ey5dODRRF28oEiNjkXJUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="248976667"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 06:11:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:11:25 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 06:11:25 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 06:11:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=am74wqU1RErgRBdwU2PRS/NOMtRN7lTGN2cwmZJmGj4GNCIZrUSz02h3pZI/zVRzl3oDgdCD6bJlkYb6SFwWszDIscTUrC28BDwuusK3q0CK9AESvTQ19ynSC2vmQ2iJXg3QEZBGlV5fJTRNVBR/iazC78tBpc+mYhcKNVNStwpnLllzb5l1SbvIKdP2qI2RWr0B41RCAuYZYl22YZO5pb7oICq2jtVY175CaBFDwScUInId+D3D7Ra0YHObWleC0ZftRfnkoWdBhnu0ryVmW+iauOh6DlEsVFgV5lQ2XbRdHiwVe+Nfw5hMSqEvPu71gQJ07EsnxFNd6GLufnt+RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fyqTcRFOJ/QB3PSGmn4yv8ghm0kNZA3zN47UkyhdaPQ=;
 b=HbrCBwP4P5rFr6j/Dh/HTFeCFtQdfaNvVQE0z0nmFh7kE5DrEg/dvUZ2VgkZWui5z1UldqdkJRX72oHjpkgLEIK/Snxzs/LueVrYIVOSWjzpn13f26ZdsSMD9gRP5KrcHqNOWUiFei0PEsmth4Zie91agdoQNOZ9JjDc5imM/c5dXnuze8oPfwkK+HYr0N1xf9zQm7Llq/fUmWhGbuocdi+tQ3MJLck1TjjLowhIQUojSZcEQ1dwQtWQEcp+s2ZZvqOszj6jsSbvu0TsMpSGKcytxg0r79o0IxPZOLIdm77EEFxFgA5HEwgVt55HuX8IlSx7cw7DIfyVwc/IjDkxTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW3PR11MB4651.namprd11.prod.outlook.com (2603:10b6:303:2c::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.17; Tue, 2 Jun 2026 13:11:23 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%7]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 13:11:23 +0000
Message-ID: <a4e53d82-90a5-43e2-8f6d-9e7b2c4c7739@intel.com>
Date: Tue, 2 Jun 2026 18:41:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 6/8] drm/i915/display: Add per-CRTC debugfs interface
 for CMRR fraction level
Content-Language: en-GB
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <ville.syrjala@linux.intel.com>
References: <20260519050322.3677451-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260519050322.3677451-7-mitulkumar.ajitkumar.golani@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260519050322.3677451-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0208.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::13) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW3PR11MB4651:EE_
X-MS-Office365-Filtering-Correlation-Id: 96822a11-f875-478c-1429-08dec0a87198
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: AHGN5O5AGgJ7Cbhfu9YAaf01Y9frTaXp+DBZdR2d6EkK0cj7q/Pq0IEYQZn/KLRMiDLYVkSXWa96ayqLQxNLlree1GGYRjRbkkHS2r/89CUQ2MRRSKgBVo19cqULkfTae/X4Pnb6APm4xOGC5Qrghyo+zESGhcb7i3cJEGjDus3df8tDAp0WdzQo8+WNjbXzJLBJiX+94jY0q2xSxkbqj3FQLW3gzyAykkJpbCqz0zYVz3JBAHQXPtXnYoGW873xsdbcY9stbevWoHkiVLfrWS2bV5OJtygY9AdJ4Nr9v6RLF9yNfSVUsiFKgHLD3+g9JNdhb/g2HjwZ0gMT62c8VNag7ULWfaRJvCR09Beg4bg6arkWQ/i2QW8PaAZplCS4ld+7Pmobud0IrexYRxXH1H6Hin1dgmZP3V0F+APvzbGTSShjsuCex7R0Rij294AhsFmfWUvTbHeObud0Uya8GmETFpremxdXMNR6hzRroYhxU/bB9nxYQ8WwG4lgMlb68cZ5G9sl9/atVBu0FY+YX8mgrTD10PI9FNzYPVhsraaZMBGOwsg/BF7bMk1YSJtoFhZHVsMSt5pdmdjtch78sumD8LIG+fvcz1GAG+tKiALtBe/xRCZTv/ENbiRmt03cJraOqmMeyZVqlSamgmzkdkSJnxxlC+fvccOVUS6jXprdRtdnkaARn6m7VziRQx/G
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWt2TFByNEtPM1VjUEVhQnh5bklucllhNU0xZm0xRFNqMlBFOUtwVlM5QWVa?=
 =?utf-8?B?UjA3RHVacE1uWkFVaU5abGFNRlFQTE9RWUZvcVBBUVRLUjRwOWhuNFpId3Bu?=
 =?utf-8?B?M2UzQmozNWszT2NwWk9PV2dGMEFOeU9aR2h2MGtBTENMS1BvNWdxOXhFT256?=
 =?utf-8?B?a1pYUCs3NVNKRTg1azJZd0Rhd2RlODIvTyt2UFVEQ3JZc1J2Uk9MV2pMN3F2?=
 =?utf-8?B?QnpDZ2ZoNVNVbFhYZ3AyUFdobUxQbVh4am1qUFhBdFhud1N0a0E4czRDTkxP?=
 =?utf-8?B?OUI5UjI3bE9OSktIZmZKSGh3V3FQSGNZQUdpbWhhMHpzTjlPMWg0cUNST0lM?=
 =?utf-8?B?emdieVZWblVNcENwMEhnR3VMTFFCdDdoYUxnVWtjL0lFbkpSbkR1dGFQMTJa?=
 =?utf-8?B?RnlCODhUQkxJcFpYVll0bjhVSXJPd3plNzJhcWdHTHZacXM3NG1kSldSVXZM?=
 =?utf-8?B?bmRHclN5YUNGV21OQVhpYVdLOTM5WlIzditKbytXemNkRmhQNGhTa1UvVlZF?=
 =?utf-8?B?RW0weDV2SG5tQUMxTDVqMHJQS3FrQ0s3MGd4NDZwUm9vZVhkQVdHMVFHWHZv?=
 =?utf-8?B?dnhpc2pyL1dWVWZpTUE4cHZ2bm1aS0E1R0pMajhwNmgwcUE2NUl6QjJjQ0tC?=
 =?utf-8?B?Tkw0WkNoclZjaUJkZ2VyUlNhVy9WNVkrNmduZnI5VUd0MGM1dHJqaEJwVnhj?=
 =?utf-8?B?WXl5ZGxwc3NEdkg4bHFIbTkray9NcnhSZ3h2R1d2RkZRejA3d3VscCtveGpm?=
 =?utf-8?B?SFFHdkZkK0YrR3hOQkdGbmsvNi9pK21ZMWdkVExFcXJmdXg1VnV0eTBVU0NN?=
 =?utf-8?B?YTk0S3JSVmVBeHhGZm1sc2FDQzhmTFIxOTdneHpUK2E2V1BVbmljNWQ2VzdV?=
 =?utf-8?B?TUJBTWIzZG1ZWHJZSG5RcUtVR1F0ZDdlWXBSa0NtYTdMd0ViM09yRVFyaUFR?=
 =?utf-8?B?OS9XL3Y1em1zRHFXWGN1WVFZdjBGdzlUU29HdU8zeldOWnVHaHFjM041VEtq?=
 =?utf-8?B?QnVpQi81Y3BicUIrMlhSdytMVGNobFN4dVArNG5uWms4WkNGV1NTSnFOeUlt?=
 =?utf-8?B?N1FKUGhFZnVabStRKzdpakp6OU5POXMzZUZPZFV6KzYwOFpqMGlZZGg0T3Fn?=
 =?utf-8?B?Y3duR3B3aE05dVJYbzRscmxyanh2SlM1Q3BWYzBSalJpT29Zc08zazArbmdu?=
 =?utf-8?B?Q3E5N0VNVldUUG16dXU3V0NjbDd3WFZtMkxzYzd3WjlZL1N3aFF5cGREOVNQ?=
 =?utf-8?B?bnZEL2U2bENQeXZVR242S081MXI3QVFIRjFNaWxPN2pEdVlFZGZKOG00Q2ZK?=
 =?utf-8?B?aG1mQ09mMllSVzk4aFZXbDcrZkwvK3hxZEI4MmFDZDBFbmRKWkw3eVpIdTMr?=
 =?utf-8?B?R0gyTkYzSjVZeGxxZm5VNXhzVlFHcW1Nc3hodWNSRWo3dlF2cWRKUW95M3VL?=
 =?utf-8?B?eE9XRmZzdWt6eTVjUktWSlQ0c1h4cU1DZ3lJc2RMQUtEbnkvcTVOTG9MdG03?=
 =?utf-8?B?eElUenNMRHAwcmthY1p3RkNvNGVIM0djOFVMejZxWWlzZ1Fic1lXREdGMWdw?=
 =?utf-8?B?Y1ZVbkY4dW1aRjg3bzRWMldwNFp3cU5rOHcvWmZyU3d6c3VVNkRBbHovUDNa?=
 =?utf-8?B?MkwrbFhUWkdzeHF1cFM1NlQ5blMyTjI1S3NpNzI0Y1pkYy9VU0hxTzNNcSs3?=
 =?utf-8?B?SndrTXpmNExjNWt0OXc0WTNWU2tYOHJwbkIwZytlVzFLQWR4NWVuaTRjYkN3?=
 =?utf-8?B?c0JaRWRSMXR3Q1U0K1lTQnBoVTNGR1d5bGVSMnA1Q0pucVo2azJyQjJqbVZB?=
 =?utf-8?B?KzE5MjZWc09RcVpldDVoR1BlWmZXcldlVFYwUVFvMlJOcDhQNTZYam52elF2?=
 =?utf-8?B?cEtMekMyQkxKcjBTYWtKTkcxY1diZHI1eS9ocnBHMHpmTUgwTXdNY2RLdVBV?=
 =?utf-8?B?NzlveGh6YjFOOVNOK2M2Q095RmNUNjhzaDVkVncwdlZsaGR5SklyeTBlYTZS?=
 =?utf-8?B?Ui9DWU1HTW16Tjg2d2RCU2h4M2YwbDVHTm8wY2tvc3FmNjV5NDMxTFRpQVFQ?=
 =?utf-8?B?QUQxMjhLM1U3UEVUTXM1M0RhOS9Ca0IyN3ZuVmQvejRmdGwzVFlEMXJRcEZL?=
 =?utf-8?B?YmhKZ2JRUGsvamZMZ3pwM1l4NUQ1aHZJSHcyZ2tjYjUxMktybitRVW5aYVhO?=
 =?utf-8?B?aHY2Y25sNDIvSWhHTGQxYUxMek9weEZqUG84U3l5d2R0RHlOWmVxN2xlYkhE?=
 =?utf-8?B?Z3B1SWw2NkNaS3ZZNkY5V0lSeUh4SVA0cEZnM3RaK1VicTErM1gydlB3cng5?=
 =?utf-8?B?LytseDVBSERDS25jTVZXdzVBVTlZSDdxQXJ5YTB6dWFTS0hnMGF5aE9rVUhw?=
 =?utf-8?Q?w6940aXNIseKfT6I=3D?=
X-Exchange-RoutingPolicyChecked: lRzbwd2C/Xd/OgyWTZV99fBEaHrpTBZ2wRbIQYnz9VUnbbO1uD8N8JB1pepag52CkjWNQZMRp6AOMIIkwHepjG15XC0JJuoY8ljxkfR/jVAA2db/I2U2M5/JM6ur2smL1itEUdEatgxtwHv4B2DISrAVh7Bw9f9CIVqvNhDENlWuWaaD1jcMFNFiK1fetLZssz0I7QIaQi7CLWXdZdLETyw7PA7Ne60aenxjSSWr/SOfg7GMJBEdEt5OW24TQktOQ+/GV5cnIuQ/6CBk/w6pTEc2yYtmf6zniFeIU+H0ngKbLLqffp+9JPKR1+BdrFLdurvf15X46TaX9fhE366vDQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 96822a11-f875-478c-1429-08dec0a87198
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 13:11:22.9959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /P1XxiTkiKkQvw4bZX8lTvJ/KO/KidBdMZ0aNClpG5AtylV/3qc2f9d4ixrnEui+NeELfgol55ZgzGqH3Qv0BMjT1umVmT8kbXQtMpNZJy0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4651
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mitulkumar.ajitkumar.golani@intel.com,m:ankit.k.nautiyal@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36B0A62E528



On 5/19/2026 10:33 AM, Mitul Golani wrote:
> Add a per-CRTC debugfs entry 'vrr/cmrr_scaling' to allow reading and
> writing the CMRR fraction level at runtime
> for debug and testing purposes.
> 
> The file accepts three string values:
>    "Low"     - Apply 1000/1001 fractional multiplier to vtotal
>    "Default" - Use nominal fixed refresh rate vtotal as-is
>    "High"    - Apply 1001/1000 fractional multiplier to vtotal
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  |  2 +
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 85 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h      |  1 +
>   3 files changed, 88 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 81bef000a4e3..ae698560f306 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -48,6 +48,7 @@
>   #include "intel_psr.h"
>   #include "intel_psr_regs.h"
>   #include "intel_vdsc.h"
> +#include "intel_vrr.h"
>   #include "intel_wm.h"
>   #include "intel_tc.h"
>   
> @@ -1387,6 +1388,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
>   	intel_drrs_crtc_debugfs_add(crtc);
>   	intel_fbc_crtc_debugfs_add(crtc);
>   	hsw_ips_crtc_debugfs_add(crtc);
> +	intel_vrr_crtc_debugfs_add(crtc);
>   
>   	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>   			    &i915_current_bpc_fops);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index bbc68c614667..e31778367245 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -20,6 +20,8 @@
>   #include "skl_prefill.h"
>   #include "skl_watermark.h"
>   
> +#include "linux/debugfs.h"
> +

#include <linux/debugfs.h>

>   #define FIXED_POINT_PRECISION		100
>   #define CMRR_PRECISION_TOLERANCE	10
>   
> @@ -1227,3 +1229,86 @@ char *intel_vrr_cmrr_level_to_string(enum cmrr_level level)
>   		return "Default";
>   	}
>   }
> +
> +static int string_to_cmrr(const char *str, enum cmrr_level *level)
> +{
> +	if (sysfs_streq(str, "Low"))
> +		*level = CMRR_LOW;
> +	else if (sysfs_streq(str, "High"))
> +		*level = CMRR_HIGH;
> +	else if (sysfs_streq(str, "Default"))
> +		*level = CMRR_DEFAULT;
> +	else
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static ssize_t cmrr_write(struct file *file,
> +			  const char __user *buf,
> +			  size_t count, loff_t *ppos)
> +{
> +	struct seq_file *s = file->private_data;
> +	struct intel_crtc *crtc = s->private;
> +	struct intel_crtc_state *crtc_state =
> +		to_intel_crtc_state(crtc->base.state);
> +	char kbuf[32];
> +	enum cmrr_level level;
> +	int ret;
> +
> +	if (count >= sizeof(kbuf))
> +		return -EINVAL;
> +
> +	if (copy_from_user(kbuf, buf, count))
> +		return -EFAULT;
> +
> +	kbuf[count] = '\0';
> +
> +	ret = string_to_cmrr(kbuf, &level);
> +	if (ret)
> +		return ret;
> +
> +	crtc_state->vrr.cmrr.level = level;
> +

Will this not be over-written by intel_vrr_compute_fixed_rr_timings() ?
We would need an entry in struct intel_crtc to keep track of what the 
user of the debugfs entry wants the driver to do and factor that in
intel_vrr_compute_fixed_rr_timings()

==
Chaitanya

> +	return count;
> +}
> +
> +static int cmrr_show(struct seq_file *s, void *data)
> +{
> +	struct intel_crtc *crtc = s->private;
> +	struct intel_crtc_state *crtc_state =
> +		to_intel_crtc_state(crtc->base.state);
> +
> +	seq_printf(s, "%s\n", intel_vrr_cmrr_level_to_string(crtc_state->vrr.cmrr.level));
> +
> +	return 0;
> +}
> +
> +static int cmrr_open(struct inode *inode, struct file *file)
> +{
> +	return single_open(file, cmrr_show, inode->i_private);
> +}
> +
> +static const struct file_operations cmrr_fops = {
> +	.owner   = THIS_MODULE,
> +	.open    = cmrr_open,
> +	.read    = seq_read,
> +	.write   = cmrr_write,
> +	.llseek  = seq_lseek,
> +	.release = single_release,
> +};
> +
> +void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc)
> +{
> +	struct dentry *root = crtc->base.debugfs_entry;
> +	struct dentry *dir;
> +
> +	if (!root)
> +		return;
> +
> +	dir = debugfs_create_dir("vrr", root);
> +	if (IS_ERR(dir))
> +		pr_err("debugfs creation : %ld\n", PTR_ERR(dir));
> +
> +	debugfs_create_file("cmrr_scaling", 0600, dir, crtc, &cmrr_fops);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 86707b8af2e3..9b52a0bf0e4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -55,5 +55,6 @@ int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_sta
>   int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
>   char *intel_vrr_cmrr_level_to_string(enum cmrr_level level);
> +void intel_vrr_crtc_debugfs_add(struct intel_crtc *crtc);
>   
>   #endif /* __INTEL_VRR_H__ */

