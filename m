Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBbKKknSn2mSeAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 05:55:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CF81A0EE4
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 05:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7C0510E10C;
	Thu, 26 Feb 2026 04:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L/WkkDAh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E41910E109;
 Thu, 26 Feb 2026 04:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772081733; x=1803617733;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JYvCZfETEOLOUNal4vwnxIz8ekUDG4tNWmHPxYhVGB0=;
 b=L/WkkDAhDhmSG51xyc8rmdn70g05RuiU/K4Keaur4lKJbB+a3nrVd4OU
 44gFOLh0y3yC62w6IqjP2KlC8Gx1gk8kJczO4toPnWP3b6vnM0NuZNGo7
 GvT+XFvFOL2NRcGrTkcE14mxEbRZmwPUO6vwvL/1aKi7pGJJW8A+RS8nk
 1R3WM057eOXfoFCI9UPm8WZKl9ewaZkv8dg/BhAIHxkm0QDitpObTit0O
 DMl4Sz6z31SW/G379RLgiKu7y2JYnFZLJ+dPJq0jWr5gaRlEd1QZBsFa9
 HVz7j/JibnlnehJv6UdAe1bGaEvq8xKxHH4LytA1t7A6TcCx0PFhDr3w8 Q==;
X-CSE-ConnectionGUID: 4i2DIDUwSSCxF16YDSKpRw==
X-CSE-MsgGUID: 4i2Gi9I3STyRIFunYoaZ3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84590811"
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="84590811"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 20:55:32 -0800
X-CSE-ConnectionGUID: 72qotR3YTU2PLejyINxbBg==
X-CSE-MsgGUID: 5u8FKqq7STWKJohC+xJdKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="244093014"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 20:55:32 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 20:55:31 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 20:55:31 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.37) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 20:55:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dwicTIhMg2FthWcNiy7VgYo+CJaKvZwng/q0ZKfxFhooBGvhaldf4VmgLdCOpDr5S8XKNhNJWqIQ8AEUKsiDDU77PYCcDidyA2M/EbwtTnTV+deQ0VZD/XjOc/jX6njh9OqW8UIOfop1ya26Lx+uO26uVTuJ3gwR/1vuW76/cDsAWB76JUXn65y3W431OOxiECWDHM0fIHRAETWW/7bu+uWfcE9cXhj5lUMLjpX3eTKvr3EDhTen94f8M00iab8mBaswEVW6oyghzKfRrbpzakrOT5wKgGODrTL+wDod1jaO5O/N0O4f1Nc+WTcYs6vpNXDEG/PiNHnHDY53cSmkSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NrVSPCWVF5mKlFtmo9aNTs0kGMs++ZNrw6nOGIl50XQ=;
 b=ubB1qVuR2IHmW/oHFcXaMFFocV6fXivYpoHRUfj2WiRfvPhK8Sk4z/Czg+oI2kki+Nl4MzBhInLK/2MLX8y3WBBygPNJGBVXisDiDA+aMecOQmnv8iusKYeYxYBhBleBShkq+DbPNkzTONYfyeWsDWBCFhI8TrTw48E4xu0jgvds9emwVBqet4LhvpFldt8ozygoxFQRoYrKAeo4wJe9zRxVQ74FXPsANOYmI9Ulww10cj93pwS4bJpYUikpS8hanncuoYiwhnJVyU4+qImu7v1ZHXYu0wxPg1Afg45ntgRe7xqKGgP3VLbRZdRTgNXNln68obhPNBSIkpB+UFfe1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4564.namprd11.prod.outlook.com (2603:10b6:5:2a0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Thu, 26 Feb
 2026 04:55:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Thu, 26 Feb 2026
 04:55:22 +0000
Message-ID: <de59cde0-48be-44ca-a377-f211badb7e5a@intel.com>
Date: Thu, 26 Feb 2026 10:25:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/backlight: Remove try_vesa_interface
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20260224031322.2568874-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260224031322.2568874-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0280.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4564:EE_
X-MS-Office365-Filtering-Correlation-Id: a2a2a0c7-557f-4756-5192-08de74f33f7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: UoB0SoKWO2+AZsfPeoNpuwXICM4F6OFqeXWy/HHnw2HqXnVeN/mPFKVCIgjcCUq6BaxNX2AXjxkjg1naPRwbZcV6yrMfCPhqWMGYdY0T+3yBUG5GcT3T+b5pPjB/V9mrvzdaaB62TihMJ5f2kZmy5peZg0INpGjpHACVVn2OyOsRK9NVlp8b7K12GyTn/TXYPMhfJAfn0lOOoQGIb4tRAUAtXQiOA7ILRRQj8uR11PSG6QjPqxUc7fuvsCIInvkaAAL3TBU1cMc5HbGgsxenfqwlhwwVQdm09B89BL/aa/1r1tCTsLJZQ02CNrqd1C26nHva9SCOwdiLk4Up1Rrah5VFXpe66TdErPumiDiy1DMbkZNAEA+3IDC5w82pDTpWZQwSa7xK031kyKpy2ADD2kGjBlgpEVN6FDXYZT4+vAgTAJWbUo/NI8ZOnO/3hG0WIO+rDbwJHGPPwcdE2N+uEzJ44BHNBjAZxf5qr+sbjqPQw5fV8EN63sz6P5Ft4V2Jas1nS7hBgnoCUELco50qJaswLD9QId6mVYOq0OdWJ50JHbbVHxa7n8G/z7fmHa3NPbgIKV7qSX1KxpE+SIh8xkjaBAJLyAnewAq9uN2d8E5nOAJLagfhyMc44jKyqv3KhFrVmtYNSehBORJz7BYCNFb8gPVhSOaoB72QP3ElZjSEJcCPor87TGlKMZ1VfCbK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WG5aWlRoTmJscG5WNlcrWTNoSXV5b3VGMXB3YTk1cit5MkxaamJJWU9BZkpw?=
 =?utf-8?B?SktvOHVONFpSVlpsS2F5QzlzNHNqa3ZpRGJkZDdYQUJPTHR0UDVXZDBJRmxi?=
 =?utf-8?B?MFZGTUhtS2lsNU5xUUhZUElmcTlaeEJmNnlJLzBxUTFPNUZPYm92d1o5Mis2?=
 =?utf-8?B?TWo4c2h1Ykd5VGJKNnlQSDhKKy9acCtFM0xEdkUrM2xabGc2YUsxSEpwOG1R?=
 =?utf-8?B?S2FFc1p1SFdzSnBYVmM0dDlSVi9hM2c2TkZBSGc3YWhYcEliVDhBaitVS2xQ?=
 =?utf-8?B?UFVRYy9XamtKUHF5WFBtMlFqWHBIMVozMkpTMmhlUDBhbnV1dGVnUlh0OGNo?=
 =?utf-8?B?Znhxa29FRFVjYmUxZVBLR0dVRm1tZEEvU1R0QTBSaGZ1S0Y4MS95NWFKOENy?=
 =?utf-8?B?MXJRVWk1T1Y1Y2tway9iU0VETS9EV1JjVHIvQ2FhVjRoS1BqVGU2UFlaNmUv?=
 =?utf-8?B?U05qRWM1Mk5UVlVlN2dTZDV0SGRSNi9UbGEvei9kaGZJQkRaZFcwMXk1eGNV?=
 =?utf-8?B?MUhmNlFjcEJKY3U2cHRDS1ZpQndaWkMxN0ZMZXh4M3RXMVI4V3BBdUV0V3lD?=
 =?utf-8?B?MXdtTFlBQlF3U2srMDFpM1NKQlRqaGk3bHM2Z1VlOWhEZUVhQXR5NVdURDlR?=
 =?utf-8?B?OWloakRsNlRJQVpDWUJtZUp1ZWEzQ3dzeGFHSm1ZbThZdTZPNytYNmJ2Y0Y4?=
 =?utf-8?B?UE9yOFRuRDJxV2JjTDMxZjNWcWlBUkQ1NDNyUWlCMzFmV25ReHZaa2FiTFht?=
 =?utf-8?B?MUVLR1poWFVuOGc4MDdZZ1g4aUtjc3pkTmluL0gxeXQrcFRZT2xWL0MwR2dU?=
 =?utf-8?B?SXZtbTh4eEI2aXhvcy80NVJjaEFYcGFqV2thY1E5MUtpUFRGRTJReXgvUWtQ?=
 =?utf-8?B?UU14Y2Vlbmg5UklnMTZNVk9HVE9ZRlF4N1BRYm5nR0c5K1ZYY05DNi9tVyt1?=
 =?utf-8?B?SkVQbnJFSjJCcjRMZCtUcnN4ckR3KzJZWDZtSVBNY0hkZjhQMytXV2RPT2cr?=
 =?utf-8?B?bmRUdzRvNndQK1ZneHJHbmd5Q09ocFhCcGd5anZrbHlJVUtXQ2NqRDloYnBK?=
 =?utf-8?B?bDVESmQ3WW90U2V4M29DR2Z4TXBpU3RZUklLNHNyajRCNFJ0OWtrck5OYXlJ?=
 =?utf-8?B?OU9YYzU2dFFMeGJ5aHZXbzJMTDZheDlPYVFQSjV6bTZVc093Z1pLNmEydVRV?=
 =?utf-8?B?M0NBU3NCMWV0TjJ2bUJwbXNpWTkvdUtkT3dhVVRwR0lCQng1MTIvWVpYQWox?=
 =?utf-8?B?a2hQOFZZQVhZditrY2FiUWtBSnVWNGFZMG9FRWdKL0FRT25IVUVEL3hpRktR?=
 =?utf-8?B?cU5yUmlYVFlleG1rRmhudFVINDZXY2trcmF5ZFVyeFF5NDYra2tuKys2cnpL?=
 =?utf-8?B?M28yd1Y1bndiU2FXTmw2a3RIamErYmtmVmkrZ0dWbnJJa3lvd080aVgxbGxi?=
 =?utf-8?B?ajc2SS9jOG9tVytrc1BubTBuQmI1UHByaGVjUVJnSTFSWnNPQVdnMHNKeW5X?=
 =?utf-8?B?NFEyYkhhOVcva2RNK1FKVFBwdzBYK3JIYkVxaS85c0tOd00rRUZNOTc2VTR4?=
 =?utf-8?B?eEtYaldmejRGMkpwSkxHWWMvU1ErSEVVWSsveXNxbDhQYnlwTldtWDR2cm0r?=
 =?utf-8?B?L2NqYlkwandGaHEvVVNCQk1JbjRLV0dodlJWY3d0Rk0xaFpUaVcrN3pZZ0sw?=
 =?utf-8?B?VFVxR01uTVNtVGs2aCtTU1ZldU9qMm9VZnh2RmIvYXE0N3NjZVR3clJFNndi?=
 =?utf-8?B?dWZqM2owd3RlTy9lbnRkYUNCSStadG1KcW1CaXJFOFZiMStCdmNZSGtvZ2dM?=
 =?utf-8?B?Rk5Od2ZNalNtZisvcDBPbDFOMlhTZkVwckpGanhBS3hsZDBmSkFwem1zd0l2?=
 =?utf-8?B?TGlLcXRSbW1QY1Q2aGJNYUc1bFNYTlIzNWdnSnhUYmxZcjlOYmcrVTlCNGx2?=
 =?utf-8?B?Y1dwMnBaSVlrTFVnbjJ4Q2JMcVVpWWkxVUpYeEl2REdFMGhzazZPbngwQU1s?=
 =?utf-8?B?MEpLNjY3WkNrNEJJQko3R1VPbFU3M3ZLNjRic3VDOWpOaFJwblpUNEllNDh6?=
 =?utf-8?B?MWVOS2tTcFJyVkg0d2tYMWtWNUMrR3FCcE5YMCtOVTJLRHdRd2hhWUsza0Yx?=
 =?utf-8?B?bUlQb1VEdkU5eGYvMytrcWxBU0hJV3hlVTF4WWV2em1zTm85c3BBVW9JWmFH?=
 =?utf-8?B?M1QwS1oxd0RNSW1VWGRVR2w4czRhU0FnMXpZL2JvaXdFejhHTnNsU01pQXVq?=
 =?utf-8?B?SWJkcFpUYVhUeGd1REd0NG9KRFZIVUNZd3BSdWl4UlFGbkIyNVdVdEtVbHMy?=
 =?utf-8?B?Q1dQNEFNTkt3Z0ZLV0hoQWRIakxlRUtrK0RBUmwzYjIvbFk4SXhXaVdQN3Y1?=
 =?utf-8?Q?5OFT1mcx8dYAuabw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2a2a0c7-557f-4756-5192-08de74f33f7c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2026 04:55:22.7363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3DeRaq8lALr35H0GHMyQU6CdkqitJC7Cww2XyrEREAKtgNPCfbn7TucavnEp78/KBo/CA7SQ7BEu4RfpOTHFkAw1oQ3sXu6Nz31crNVQn2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4564
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: F1CF81A0EE4
X-Rspamd-Action: no action


On 2/24/2026 8:43 AM, Suraj Kandpal wrote:
> Remove try_vesa_interface. This is because we now make VESA Interface
> as a fallback mechanism for Panels which needs VESA DPCD AUX backlight
> mechanism to work but have a broken VBT indicating otherwise.

I think lets start with the problem:

- some panels need VESA DPCD Aux backlight but VBT says otherwise

- we try with Intel backlight interface first, then check for 
try_vesa_interface flag before trying VESA backlight interface

-this causes blankout on such panels as try_vesa_interface is not set 
and VESA backlight is not tried.

- remove try_vesa_interface flag and lets attempt VESA backlight 
interface as a fallback mechansim.

> While at in sneak in a small comment cleanup too.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15679
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_dp_aux_backlight.c | 19 +++++++------------
>   1 file changed, 7 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index eb05ef4bd9f6..a8e9872566cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -644,9 +644,10 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>   	struct drm_device *dev = connector->base.dev;
>   	struct intel_panel *panel = &connector->panel;
> -	bool try_intel_interface = false, try_vesa_interface = false;
> +	bool try_intel_interface = false;
>   
> -	/* Check the VBT and user's module parameters to figure out which
> +	/*
> +	 * Check the VBT and user's module parameters to figure out which
>   	 * interfaces to probe
>   	 */
>   	switch (display->params.enable_dpcd_backlight) {
> @@ -655,7 +656,6 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	case INTEL_DP_AUX_BACKLIGHT_AUTO:
>   		switch (panel->vbt.backlight.type) {
>   		case INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE:
> -			try_vesa_interface = true;
>   			break;
>   		case INTEL_BACKLIGHT_DISPLAY_DDI:
>   			try_intel_interface = true;
> @@ -668,20 +668,12 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   		if (panel->vbt.backlight.type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
>   			try_intel_interface = true;
>   
> -		try_vesa_interface = true;
> -		break;
> -	case INTEL_DP_AUX_BACKLIGHT_FORCE_VESA:
> -		try_vesa_interface = true;
>   		break;
>   	case INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL:
>   		try_intel_interface = true;
>   		break;
>   	}
>   
> -	/* For eDP 1.5 and above we are supposed to use VESA interface for brightness control */
> -	if (intel_dp->edp_dpcd[0] >= DP_EDP_15)
> -		try_vesa_interface = true;
> -
>   	/*
>   	 * Since Intel has their own backlight control interface, the majority of machines out there
>   	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
> @@ -694,6 +686,9 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	 * panel with Intel's OUI - which is also required for us to be able to detect Intel's
>   	 * backlight interface at all. This means that the only sensible way for us to detect both
>   	 * interfaces is to probe for Intel's first, and VESA's second.
> +	 *
> +	 * Also there is a chance some VBT's may advertise false Intel backlight support even if the

s/VBT's/VBTs


> +	 * tcon's DPCD says otherwise. This mean we keep VESA interface as fallback in that case.

s/tcon/TCON


With above nitpicks sorted, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   	 */
>   	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector) &&
>   	    intel_dp->edp_dpcd[0] <= DP_EDP_14b) {
> @@ -703,7 +698,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   		return 0;
>   	}
>   
> -	if (try_vesa_interface && intel_dp_aux_supports_vesa_backlight(connector)) {
> +	if (intel_dp_aux_supports_vesa_backlight(connector)) {
>   		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using VESA eDP backlight controls\n",
>   			    connector->base.base.id, connector->base.name);
>   		panel->backlight.funcs = &intel_dp_vesa_bl_funcs;
