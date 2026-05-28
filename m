Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KXCOqvBGGp4nAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 00:28:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5C55FAF25
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 00:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAAB110F6A2;
	Thu, 28 May 2026 22:28:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DiCrrGTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD68410F69B;
 Thu, 28 May 2026 22:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780007335; x=1811543335;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=FMnWphraZLsWlbqsZTPJq/0dGiNbFxr/+QLk0yF3/wc=;
 b=DiCrrGTGfkLToWU0mh5MMfKXtkb19srMMtgcGX6TvfVnAz/sWxvNErlx
 sbo4sH+vtxgUS3iDqKWj5iFIF/g9N1x8c/1zPeY1mfHf/RNpMp2zNP3uN
 wwkGnDyAVFpLhWHF5aNm7mpus+pCzLEBTSKG2sJYoKHGBXFwba0FhCMUS
 /BBYqH+9PQy+aZxs/jSzKgFWraAHqDG7StsGN0xQm5SF+q8wWHGlDrJd8
 FtxL+suWmTfRqBsa0VXcd1r7NA9Ghyo9Rbw1nRSq99T9gX26c0Lf2m8p7
 +Wx06BsJ+VA0J1ZXoL/smACXU3u0YeSKRC9A29qXHIvS1c1HeAHVcuzqE g==;
X-CSE-ConnectionGUID: 7Vsgj1AYRa6obHhGK4o7sA==
X-CSE-MsgGUID: y7WhSdGqQuyThfqcneDLjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="80006087"
X-IronPort-AV: E=Sophos;i="6.24,174,1774335600"; d="scan'208";a="80006087"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 15:28:55 -0700
X-CSE-ConnectionGUID: st7INWjKQ5O7kUCKl08JAw==
X-CSE-MsgGUID: uppc3yRlT0OUghiBGtvONg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,174,1774335600"; d="scan'208";a="244494388"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 15:28:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 15:28:53 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 15:28:53 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 15:28:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FsLfgslpmJ3Vouhirh3L1+GHw0wGe4VR5omSqyt8EupyoZ+M/0X0OQ5JZvorLhfTHNZH4STGqxxyi4NizB5EMQFsHD2Zjc/ltJjK4mnPGizSqZJm+291MNzmE1l/EEkRzAyJkwptFWwYgU1uezcnZq8biRAkzuWCUep4+zT1dVtC5Qu3t1RvbComYOFMRKKwMhhzxph9/M+ZFe4NOWFQxpZmKLJy7WRSvPX9hlDLPxeAVei9OlVg8O8UIhqiyziXvgXDCSAYLClE18QVOPbHYPih2GLT4yVOqegeXE3Pp4ThdzZCVbY3XjkEySokZ7fgNAmlwMKIh1hWiOjNB41+Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7khuMRxs/8RWLnYT7ldd2GO37uOF2TpMRScoEpD6u6Y=;
 b=fmrN54jfVYrLcJMts1qhK0ydrg5LwVVZGZkPxjhUBVAz2JofiEiEs4uojueLMGQrX0wehDLJ+eVsgKjCDbutc6CxZzjSTMu7M4Vu0wNmBWmXbVfKwJMKWXTcqupQ41dba7LWkef3OI/d/LfQhY6mYmQLE9OGsTerbJleNTlITuDIlL+urvP1OgpmKUaR7f22BTr9LmlRYwSic2iAQ/a4wrJeN9lTcbQT0fRhNQI0ukC52A/RAdJsHGlMoK/oKLRQNeOX1xw4QuWX+0iNJn2fksKIkhB2KMIxN1Xsaala/EBeDyFj3XVAfvkdbft86+cgcVd/TxluRJvnbG9Nu1OxOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by SJ1PR11MB6108.namprd11.prod.outlook.com (2603:10b6:a03:489::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 22:28:50 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 22:28:50 +0000
Date: Thu, 28 May 2026 18:28:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH] drm/xe/ggtt: use full-range drm_mm with reserved nodes
 on PF
Message-ID: <ahjBn2vYp5dppkYp@intel.com>
References: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
 <c5b06289-f353-47eb-a918-102288fac7e9@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c5b06289-f353-47eb-a918-102288fac7e9@intel.com>
X-ClientProxiedBy: SJ0PR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::23) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|SJ1PR11MB6108:EE_
X-MS-Office365-Filtering-Correlation-Id: 04906a57-dc8f-41e3-3c50-08debd087dee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|11063799006|56012099006|4143699003|6133799003;
X-Microsoft-Antispam-Message-Info: +UoUnNt9Mt2lfrUBpzIfkCsi9UR975O52GBtg8bEr43wDy0+0eggsKo8G5pbFoXwdO5d4XR7MDDmnGRf1lYVnzDYFvhAu88LPneRHiRnPj41rrK7aqLklvGjUp9m0Pm3sSvklwBHS9J22NDAv/Px2kUz8ioe3C7zs3gb2FXAG+jjJmilihWeeQokcZ65M1pXXwOR8Qv/ch5thsNh/jO8AbeHKFNZnhz74RK3tiueHubfOASCfNr3OAF9P8azXYvGfqb28vAVNiM4If65Cbp9VRqhvdbbjWGPGX30Tz6AhznhnQK9W4b1HUIwgNMDoSMmrc9AW6nFVsiQLQT4JFPtMKs7zzVbCR3iarvtvLULRRsRwpoUXM3NKG9w4cmWcd3cLtlMEVVMvQN6Dh3lfIdXsVp+4UOMOy5vhObDBd/Z9WQNNVV199f0ws1dh4E60AQCBoG6zes+0FqHfH7Ww2SRbnTyJX+7LE/05nVe7ugHMjaZE5lC1O0fkQH0eUbySmsQ1Eb6KJpleeMPCvqG8D7kaULLBwXcNHRnHB8QIx8dtvkq53Zc3H2IdFwrYez1uDHWSR+YZLszAfhytqlYN3gsjjksHQ7wFUZ88CsYb0t4HCSCjcxfPdrKH+83Mu4O3xkMdQjoI9CGDcaaDCIguBdaAck0ze+sD8+KDhq1bvoIJUCf3BlIoyaCgvBThuyJfH7I
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dm5tWHZRWnpIN0Qrb0cyT1pEcXNNZlJwRGRJMFlYdHVrS21Pa3VHaTU5SkJw?=
 =?utf-8?B?cEFqemlrYkt3cHVZVHRjR1djSjV2aWRmVmRFeG1JUENSNnhYUlB5OE9aZzRi?=
 =?utf-8?B?ODN0eVJ1d200MzB0SDQ2TGd2Zk1kNi83NnNNcHJudWpRRVVBRW41SlRpMHRs?=
 =?utf-8?B?aTB6TDBzR3RDRmZQc3ZSWDE2OERRVU5rRlVVYlZpWkh0LzdTNkUzYWVHZkE5?=
 =?utf-8?B?bUNiUHliS2VkR0JpMm9GVFZtNGk3ekNoRUN3Z3NHWTdXSGN4bVQrbThpc2oy?=
 =?utf-8?B?NkpVZXhEUm4wTWg0QjBEM2RnWXhHS2ord1N2YllkVGhySEI1Y3lJWS9ZTHkw?=
 =?utf-8?B?UGo5d1dISEdEV2RabGJ6aEVFSUd6NytQMmo5SEt4Qkt2T2srcGlnekp4Sm5k?=
 =?utf-8?B?eGU4QVoySC9PdGYydysxS09QZ0tmZFdUamNxQ1AxTzZxMXdRNmZRalp4Yk5y?=
 =?utf-8?B?NG9ja29DbVpYRW1jS1ZNWlpIZFYwbXVDNlJRUmxBakpMYjBaeWV5RktxSGls?=
 =?utf-8?B?Z0UwZkgwcXFjcWZLRWpYUGs3aXBHSFVOYW5xMWlmWWtoWkhYNFdEQURmbktL?=
 =?utf-8?B?SG9NR3VYVlVSWFh0YnVqT1dwMXNteVlrT00wY29sajBxaHdab09VeTgzaUpr?=
 =?utf-8?B?QlhGNmIvQ243ajdPK3lTMFR4YkhLUHdOVS9obThETS9tZDRxalQxSTdOenlF?=
 =?utf-8?B?UjdxaFN0TENjcHhLVXMxQUVlN1AxM0lpeDhxSnhZRFVGaHBjdFlmb212M2E2?=
 =?utf-8?B?YmlYVENQbksvc1VCUE1GeHJsc3dUQjBRMk9qdUJveUY0SFdDWW1GVjBwQnMw?=
 =?utf-8?B?a3VlK2hmMmR5ejVYVXY3M2MxUzlxWm1Cdk1YbzlnRjRFSjc0VCtYRDBITGhR?=
 =?utf-8?B?UUV2b1o3MFdPUVl6aEdCN1RxZ3FoUEdETGRIMjdUelk3RGNEWWJvOExsd05T?=
 =?utf-8?B?dWdoVU0rbmdtQjJvWkZLVUUyb2puRWtLT3BPWkduaGZtTzBXb3ZETGV5Umtt?=
 =?utf-8?B?SnpuVGU5SnBqR3FSN3NISTU3VHUzM1M1dGpMMXVUbDI1TW9lUjlWc1gvSHFt?=
 =?utf-8?B?T0JTbTJOazN5Q1pJYXNmcVpiV2l4TlJxVCsxcXFyL3oyWmpseEtXTERuVldp?=
 =?utf-8?B?MnEvZTUwT1FtYytmT1VjUEJEV293ZC9OeDJTODBjZTl2a1pwekJ1U0ZvUlJX?=
 =?utf-8?B?YVR1L3ZSdkFHYXh2bG5mMGxmREkzeGlsNm5LbDREeUE2MWlac3BxOGFaVEpE?=
 =?utf-8?B?UGV0SW1HK09wdVM3OU1VTWIrWkZYS2cyMVdabW9NNi9LT0prL2oyZktqMWhk?=
 =?utf-8?B?K2I5MDNjQmJIazJrcXdvYU44TmN1MGk2T040Ukp1L0Y2alZuNFBhRlF5SmpS?=
 =?utf-8?B?YzBpc2wyWW43KzB3U2s4dlM4aWlYdXZLam9abFRIdVpXNzFMOW55QmtyaEhE?=
 =?utf-8?B?ZkF4Qi9WMkRtaW1LUFY1WlZhWDBJQ0R3L3Q4VDYxOEQyaFF3cllVVTF6bEhy?=
 =?utf-8?B?MVpENkhsSkp3Mk11YUlyWXpKRWZmWEJ1V2N4Y0ZFMk5aN3Zldk1Md0dUU3Zi?=
 =?utf-8?B?c3ZReWwvMjZtYSt0NTVWMHd1V1l0UHNPZUt6MEk3SGNSV0RrYzVaMnIrZGJV?=
 =?utf-8?B?alRiWDZDbGFKZHdBVzdxcERWMVRDSFI5Q3poNTlLZlJzelB4RGtjUlU4amVF?=
 =?utf-8?B?dGE2RlptVS80YU9JZi90OVNEUm9palhpYWh4Vkd2ckFsQitoUUJSTktiRjcz?=
 =?utf-8?B?b2pBZXo2WkxhSnhPODEwNWNoUnhhL1N2TWc2bzVsbHVxWWNqQkl6bDJEMFhU?=
 =?utf-8?B?SHhGc1B3djFSUm1vWGJoMTdpeVVleGRBa1NFa3M0ZHF3U1dQMmhWZFlRWFZV?=
 =?utf-8?B?VGdscHF1aXNzT1NJSzhQaDVtWGFLcllRSVAyUHlJT3FVWEpEZ2ZuU2J4ZzNt?=
 =?utf-8?B?UDdrV2FVRGp0VnZoU0xXOEJlenUrUHlCWnFiZko5OUE4VngrbWlHYlRkUEdt?=
 =?utf-8?B?R1BpK0hxSitzR1NUTllTM1hNSTJhSUFrWCt1L2xCbzVmcmlOV1NNM00ybWlQ?=
 =?utf-8?B?R0lKWjFaVTR0SDZOQkxrb0REdStndHdxT3FMZmNnOVczRHc5T0RqNmFLM2RH?=
 =?utf-8?B?YkJWWE1LQ2VGMkFMYnpGTjJQZXppUkVJK1c4eFpLN0NlQXdMM2pabEM3ejIy?=
 =?utf-8?B?dUJnKy9vaUN0Uk5pNzBkMVpXU1o3aVA5WTNLVXRWQjRSVXNCSjA2bFlERmh3?=
 =?utf-8?B?dTh1M2VmcEcrUEQzQUpBTkdyL2hjSlFoY3BuN3NKQjMzK1d1SDgwNzF0ZSto?=
 =?utf-8?B?QjlvQ1BrVGtDczUrdFhTbDM0VDNvbE9FTUFkdzZMRHhLQTRwTndIUT09?=
X-Exchange-RoutingPolicyChecked: NZsahvHu2bJVYG172fyFxnV0yfV35/vqsy9jovgSU5/E67JOSzfzzxLJvvAwwVV1VF1LC+YwlTdLdGEyAoNivcHeZC0Ib4sUgzcP9LRbGyQyH91x3RG6pW3i32BBesM8EebzSlrsGbpha4upsu/S1ubhFyAY0ebstBQQygeG381GinWMQwB8Ww39wOW5sqghWo9PTMKD5sePwOycKbQV/cyY4ZkotBNsC3G/JCqrWbSQ7djHWj912cWXknO8pAOx5a5GZqcQoTIlnfsBvMl4thybCugWATri5pKLh/5BzluaG0Jy3npQye5JL4xnX+HISZWEYdiCbIxv7oPLI8B3xg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 04906a57-dc8f-41e3-3c50-08debd087dee
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 22:28:50.5569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SFv2xtt8TJo22ZgptWuvlHI1+BM1qTcubqVUfal1RKwL6uJCKG0B4ddd1Gn5L3m2EU/pZO3K/Gtg9eUdJtwnow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6108
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6E5C55FAF25
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 12:11:22AM +0200, Michal Wajdeczko wrote:
> 
> 
> On 5/27/2026 4:45 PM, Rodrigo Vivi wrote:
> > The PF GGTT allocator was initialised over a relative [0, usable_size)
> > range, with ggtt->start added on every address conversion to get the
> > actual hardware address.  Two consequences of that model were considered
> > "horrible hacks":
> > 
> >   - ggtt->start (the WOPCM offset) had to be carried around and added
> >     to every drm_mm result.
> 
> hmm, but this an internal detail of the xe_ggtt implementation, so why
> would someone else complain about it?
> 
> >   - The GUC_GGTT_TOP ceiling silently truncated the GGTT range instead
> 
> hmm, for the record, this GGTT cap on the top was added back in 2023
> 
> commit ab10e976fbda8349163ceee2ce99b2bfc97031b8
> Author: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Date:   Wed Jun 14 10:47:54 2023 -0700
> 
>     drm/xe: limit GGTT size to GUC_GGTT_TOP
> 
> +        * The GuC address space is limited on both ends of the GGTT, because
> +        * the GuC shim HW redirects accesses to those addresses to other HW
> +        * areas instead of going through the GGTT. On the bottom end, the GuC
> +        * can't access offsets below the WOPCM size, while on the top side the
> +        * limit is fixed at GUC_GGTT_TOP. To keep things simple, instead of
> +        * checking each object to see if they are accessed by GuC or not, we
> +        * just exclude those areas from the allocator. Additionally, to
> +        * simplify the driver load, we use the maximum WOPCM size in this logic
> 
> >     of being made explicit, leaving PTEs in [GUC_GGTT_TOP, total_size)
> >     untouched during the initial clear.
> 
> and that likely will not be changed by this patch as after allocating 'two
> permanent zones', the drm_mm_for_each_hole will not iterate over them

right...

> 
> > 
> > Fix this for the PF case by initialising drm_mm over the full hardware
> > GGTT range [0, total_size) and permanently reserving the two forbidden
> > zones:
> > 
> >   - [0, wopcm)           — inaccessible below WOPCM
> >   - [GUC_GGTT_TOP, total_size) — inaccessible above GUC_GGTT_TOP
> 
> that looks odds: why pretend to claim manageability of full [0, 4GB)
> of the GGTT and then immediately permanently reserve two end zones to
> end up with real [wopcm, GUC_TOP) which is what we already have?

yes...

> 
> > 
> > A new mm_offset field (zero for PF) carries the base offset used in
> > address conversions, unifying the existing VF relative model (where
> > mm_offset == vf_base) with the new PF absolute model.
> 
> but public xe_ggtt API already uses absolute addressing in PF and VF

I know...

> 
> >  The public
> > xe_ggtt_start() / xe_ggtt_size() API continues to return the usable
> > [wopcm, GUC_GGTT_TOP) boundaries, so callers such as the SR-IOV PF
> > config code are unaffected.
> > 
> > xe_ggtt_shift_nodes() now updates both ggtt->start and ggtt->mm_offset
> > so the VF recovery path remains a single O(1) WRITE_ONCE pair.
> 
> maybe it's just me - but I can't figure out the real rationale for this
> patch - what did I miss?

This series:
https://lore.kernel.org/intel-xe/20260511214122.8468-1-ville.syrjala@linux.intel.com/

And more specifically the discussion in this patch:
https://lore.kernel.org/intel-xe/20260511214122.8468-13-ville.syrjala@linux.intel.com/

> 
> > 
> > Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Assisted-by: GitHub-Copilot:claude-sonnet-4.6
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_ggtt.c | 123 ++++++++++++++++++++++++++++-------
> >  1 file changed, 101 insertions(+), 22 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> > index a351c578b170..00a6cd2b8a51 100644
> > --- a/drivers/gpu/drm/xe/xe_ggtt.c
> > +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> > @@ -137,6 +137,17 @@ struct xe_ggtt {
> >  	const struct xe_ggtt_pt_ops *pt_ops;
> >  	/** @mm: The memory manager used to manage individual GGTT allocations */
> >  	struct drm_mm mm;
> > +	/**
> > +	 * @mm_offset: base offset added to drm_mm node addresses to obtain hardware
> > +	 * GGTT addresses. For PF this is 0 (drm_mm uses absolute hardware addresses).
> > +	 * For VF this equals @start (drm_mm uses relative addresses from VF base).
> > +	 * Updated atomically by xe_ggtt_shift_nodes() during VF recovery.
> > +	 */
> > +	u64 mm_offset;
> > +	/** @reserved_bottom: permanently reserved [0, WOPCM) drm_mm node for PF */
> > +	struct drm_mm_node reserved_bottom;
> > +	/** @reserved_top: permanently reserved [GUC_GGTT_TOP, total) drm_mm node for PF */
> > +	struct drm_mm_node reserved_top;
> 
> maybe all we need is to separate concepts of:
> 
> * raw GGTT - fixed range [0, 4GB)
> 
> from
> 
> * allocable GGTT - configurable sub-range [start, end)
>   * [wopcm, GUC_TOP) on PF
>   * [base, base+size) on VF
> 
> and then we can continue to use drm_mm.init(0, end-start) to manage
> that [start, end) range in a common way on both PF and VF?

we need to be able to use a ggtt buffer that comes out of this range,
so I'm afraid it doesn't solve all the cases.

> 
> 
> >  	/** @access_count: counts GGTT writes */
> >  	unsigned int access_count;
> >  	/** @wq: Dedicated unordered work queue to process node removals */
> > @@ -318,6 +329,10 @@ static void ggtt_fini_early(struct drm_device *drm, void *arg)
> >  {
> >  	struct xe_ggtt *ggtt = arg;
> >  
> > +	if (drm_mm_node_allocated(&ggtt->reserved_top))
> > +		drm_mm_remove_node(&ggtt->reserved_top);
> > +	if (drm_mm_node_allocated(&ggtt->reserved_bottom))
> > +		drm_mm_remove_node(&ggtt->reserved_bottom);
> >  	destroy_workqueue(ggtt->wq);
> >  	drm_mm_takedown(&ggtt->mm);
> >  }
> > @@ -354,16 +369,66 @@ static const struct xe_ggtt_pt_ops xelpg_pt_wa_ops = {
> >  	.ggtt_get_pte = xe_ggtt_get_pte,
> >  };
> >  
> > -static void __xe_ggtt_init_early(struct xe_ggtt *ggtt, u64 start, u64 size)
> > +/*
> > + * __xe_ggtt_init_early - Generic drm_mm initialisation for both PF and VF.
> > + *
> > + * @start and @size define the usable GGTT range exposed through the public API.
> > + * @mm_offset is added to every drm_mm node address to obtain the hardware
> > + * address (0 for PF where the drm_mm spans real addresses; @start for VF).
> > + * @mm_size is the total span passed to drm_mm_init() (equals @size for VF;
> > + * equals the full hardware GGTT size for PF).
> > + */
> > +static void __xe_ggtt_init_early(struct xe_ggtt *ggtt, u64 start, u64 size,
> > +				 u64 mm_offset, u64 mm_size)
> >  {
> >  	ggtt->start = start;
> >  	ggtt->size = size;
> > -	drm_mm_init(&ggtt->mm, 0, size);
> > +	ggtt->mm_offset = mm_offset;
> > +	drm_mm_init(&ggtt->mm, 0, mm_size);
> > +}
> > +
> > +/*
> > + * __xe_ggtt_reserve_pf_nodes - Permanently reserve the forbidden GGTT zones.
> > + *
> > + * Must be called after __xe_ggtt_init_early() for the PF case.  Reserves
> > + * [0, @wopcm) and [@guc_top, @total_size) so the allocator never hands them
> > + * out.  On failure the drm_mm is torn down and the error is returned.
> > + */
> > +static int __xe_ggtt_reserve_pf_nodes(struct xe_ggtt *ggtt, u64 wopcm,
> > +				      u64 guc_top, u64 total_size)
> > +{
> > +	int err;
> > +
> > +	/* Reserve [0, wopcm) — GuC cannot access below WOPCM */
> > +	if (wopcm > 0) {
> > +		ggtt->reserved_bottom.start = 0;
> > +		ggtt->reserved_bottom.size = wopcm;
> > +		err = drm_mm_reserve_node(&ggtt->mm, &ggtt->reserved_bottom);
> > +		if (WARN_ON(err))
> > +			goto err_takedown;
> > +	}
> > +
> > +	/* Reserve [guc_top, total_size) — GuC cannot access above GUC_GGTT_TOP */
> > +	if (guc_top < total_size) {
> > +		ggtt->reserved_top.start = guc_top;
> > +		ggtt->reserved_top.size = total_size - guc_top;
> > +		err = drm_mm_reserve_node(&ggtt->mm, &ggtt->reserved_top);
> > +		if (WARN_ON(err))
> > +			goto err_remove_bottom;
> > +	}
> > +
> > +	return 0;
> > +
> > +err_remove_bottom:
> > +	drm_mm_remove_node(&ggtt->reserved_bottom);
> > +err_takedown:
> > +	drm_mm_takedown(&ggtt->mm);
> > +	return err;
> >  }
> >  
> >  int xe_ggtt_init_kunit(struct xe_ggtt *ggtt, u32 start, u32 size)
> >  {
> > -	__xe_ggtt_init_early(ggtt, start, size);
> > +	__xe_ggtt_init_early(ggtt, start, size, start, size);
> >  	return 0;
> >  }
> >  EXPORT_SYMBOL_IF_KUNIT(xe_ggtt_init_kunit);
> > @@ -405,8 +470,13 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
> >  			xe_tile_err(ggtt->tile, "Hardware reported no preallocated GSM\n");
> >  			return -ENOMEM;
> >  		}
> > +		/*
> > +		 * For PF, ggtt_size holds the full hardware GGTT size. The
> > +		 * WOPCM and GUC_GGTT_TOP limits are enforced via permanently
> > +		 * reserved drm_mm nodes rather than by capping the range.
> > +		 */
> >  		ggtt_start = wopcm;
> > -		ggtt_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE - ggtt_start;
> > +		ggtt_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE;
> >  	} else {
> >  		ggtt_start = xe_tile_sriov_vf_ggtt_base(ggtt->tile);
> >  		ggtt_size = xe_tile_sriov_vf_ggtt(ggtt->tile);
> > @@ -423,9 +493,6 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
> >  	if (IS_DGFX(xe) && xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)
> >  		ggtt->flags |= XE_GGTT_FLAGS_64K;
> >  
> > -	if (ggtt_size + ggtt_start > GUC_GGTT_TOP)
> > -		ggtt_size = GUC_GGTT_TOP - ggtt_start;
> > -
> >  	if (GRAPHICS_VERx100(xe) >= 1270)
> >  		ggtt->pt_ops =
> >  			(ggtt->tile->media_gt && XE_GT_WA(ggtt->tile->media_gt, 22019338487)) ||
> > @@ -438,7 +505,19 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
> >  	if (!ggtt->wq)
> >  		return -ENOMEM;
> >  
> > -	__xe_ggtt_init_early(ggtt, ggtt_start, ggtt_size);
> > +	if (!IS_SRIOV_VF(xe)) {
> > +		__xe_ggtt_init_early(ggtt, ggtt_start, GUC_GGTT_TOP - ggtt_start,
> > +				     0, ggtt_size);
> > +		err = __xe_ggtt_reserve_pf_nodes(ggtt, ggtt_start, GUC_GGTT_TOP,
> > +						 ggtt_size);
> > +		if (err) {
> > +			destroy_workqueue(ggtt->wq);
> > +			return err;
> > +		}
> > +	} else {
> > +		__xe_ggtt_init_early(ggtt, ggtt_start, ggtt_size,
> > +				     ggtt_start, ggtt_size);
> > +	}
> >  
> >  	err = drmm_add_action_or_reset(&xe->drm, ggtt_fini_early, ggtt);
> >  	if (err)
> > @@ -459,7 +538,7 @@ static void xe_ggtt_initial_clear(struct xe_ggtt *ggtt)
> >  	/* Display may have allocated inside ggtt, so be careful with clearing here */
> >  	mutex_lock(&ggtt->lock);
> >  	drm_mm_for_each_hole(hole, &ggtt->mm, start, end)
> > -		xe_ggtt_clear(ggtt, ggtt->start + start, end - start);
> > +		xe_ggtt_clear(ggtt, ggtt->mm_offset + start, end - start);
> >  
> >  	xe_ggtt_invalidate(ggtt);
> >  	mutex_unlock(&ggtt->lock);
> > @@ -613,6 +692,7 @@ void xe_ggtt_shift_nodes(struct xe_ggtt *ggtt, u64 new_start)
> >  
> >  	/* pairs with READ_ONCE in xe_ggtt_node_addr() */
> >  	WRITE_ONCE(ggtt->start, new_start);
> > +	WRITE_ONCE(ggtt->mm_offset, new_start);
> >  }
> >  
> >  static int xe_ggtt_insert_node_locked(struct xe_ggtt_node *node,
> > @@ -815,20 +895,19 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
> >  
> >  	mutex_lock(&ggtt->lock);
> >  	/*
> > -	 * When inheriting the initial framebuffer, the framebuffer is
> > -	 * physically located at VRAM address 0, and usually at GGTT address 0 too.
> > -	 *
> > -	 * The display code will ask for a GGTT allocation between end of BO and
> > -	 * remainder of GGTT, unaware that the start is reserved by WOPCM.
> > +	 * Convert caller-supplied hardware GGTT addresses to drm_mm-relative
> > +	 * coordinates. For PF mm_offset is 0 so this is a no-op; callers pass
> > +	 * real addresses and the reserved_bottom/top nodes prevent allocations
> > +	 * in the forbidden regions. For VF, mm_offset equals the VF base so
> > +	 * we convert to relative drm_mm space.
> >  	 */
> > -	if (start >= ggtt->start)
> > -		start -= ggtt->start;
> > +	if (start >= ggtt->mm_offset)
> > +		start -= ggtt->mm_offset;
> >  	else
> >  		start = 0;
> >  
> > -	/* Should never happen, but since we handle start, fail graciously for end */
> > -	if (end >= ggtt->start)
> > -		end -= ggtt->start;
> > +	if (end >= ggtt->mm_offset)
> > +		end -= ggtt->mm_offset;
> >  	else
> >  		end = 0;
> >  
> > @@ -923,7 +1002,7 @@ u64 xe_ggtt_largest_hole(struct xe_ggtt *ggtt, u64 alignment, u64 *spare)
> >  
> >  	mutex_lock(&ggtt->lock);
> >  	drm_mm_for_each_hole(entry, mm, hole_start, hole_end) {
> > -		hole_start = max(hole_start, ggtt->start);
> > +		hole_start = max(hole_start, ggtt->mm_offset);
> >  		hole_start = ALIGN(hole_start, alignment);
> >  		hole_end = ALIGN_DOWN(hole_end, alignment);
> >  		if (hole_start >= hole_end)
> > @@ -1098,7 +1177,7 @@ u64 xe_ggtt_print_holes(struct xe_ggtt *ggtt, u64 alignment, struct drm_printer
> >  
> >  	mutex_lock(&ggtt->lock);
> >  	drm_mm_for_each_hole(entry, mm, hole_start, hole_end) {
> > -		hole_start = max(hole_start, ggtt->start);
> > +		hole_start = max(hole_start, ggtt->mm_offset);
> >  		hole_start = ALIGN(hole_start, alignment);
> >  		hole_end = ALIGN_DOWN(hole_end, alignment);
> >  		if (hole_start >= hole_end)
> > @@ -1152,7 +1231,7 @@ u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset)
> >  u64 xe_ggtt_node_addr(const struct xe_ggtt_node *node)
> >  {
> >  	/* pairs with WRITE_ONCE in xe_ggtt_shift_nodes() */
> > -	return node->base.start + READ_ONCE(node->ggtt->start);
> > +	return node->base.start + READ_ONCE(node->ggtt->mm_offset);
> >  }
> >  
> >  /**
> 
