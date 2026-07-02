Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yvqDK6MERmq7HwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:26:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CE26F3CBF
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:26:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NuyRW40v;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A4010E458;
	Thu,  2 Jul 2026 06:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEAE910E458
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2026 06:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782973600; x=1814509600;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Z0e22V20z1lKjlBo1mU04MqCUb1wPVKQhcbhDnT3060=;
 b=NuyRW40vqQEM6fxYFhvNlO2AxAM7Xsx81Nak/It6jFKmJiuTvnJV4G6+
 ng78Jtj3P9x3/TbsWYB5rB5xpBfCP4bxwGKF2EeJQJganBGznkPDJR2T4
 /EnBZ87qPBuDrEhNt1ZqCKEfBd+p0eU2XthNTwCWKBhnjgj00apLrTaGe
 cMCvWAJfDNt8MvNBUOgfin0YV6xZQY92Ss4DEFXU0UxkLu9TiNqTlfGpk
 Yy76RUVL+ox2GI43cCtQuXtfHdqZZ5SRBn2Euzaog9t1QnZKnMXKR8ji0
 GMJorY408JVSmV+ZH3bCRgfbBryXrZZ4Q2uV0TRCk8TZgajgCxz8UHtRb A==;
X-CSE-ConnectionGUID: 8dJYlVZlQ5Gok1/hrKFy1Q==
X-CSE-MsgGUID: Do60gzrGStGBS+CRs0s8qQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94314184"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="94314184"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:26:39 -0700
X-CSE-ConnectionGUID: /95Bn5kERiWYMcA+6Bm8sg==
X-CSE-MsgGUID: D9uQbhc4SeCVBIXbzpVTgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="257098637"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:26:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 23:26:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 23:26:39 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 23:26:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ef6OhbmkOcf3Ory2V1koAmMF4ENyeRJVDMuzL7FZm+ELzw/h7P0uSTJPqiwgkE5W6W+LtfIkUywQbI8hfO6U0qFfLJTwtK4ziXbtQaF6JGrntQ4D631o5j4Xvsxv6mNA4MxG55YYgJOuVigai5yX+VGyhxsfn0mr7mYptyys/fwx+UEpb6FG1adrvN8FqtrS3Wbfj7IAKh2gv64zh9W/W9w2nKq3DxTbLFk3pkBZBCMvosruDPJA/8P3S6U0wr6oW0wren2/UOtiXoo7ztTYaXFulMPjyDqw7WLHoEIQn/LQ4oexy6hrbMyY/lth9VsG2Rd4/bhBuMbz+2X63d1HrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qy2INOnoDbZQUR54Spaw4MJAcxEWVpSo10eoWCN10uI=;
 b=nSSlSqpxjqdm6wUG99wO/M32jfDKm9sJ6lRETdPGziF7TtmwskAYx7icOZLdYj/xpiEd2K6Ddxuvuell1JoR6zWuDyzn6ST+kJEschDy6+rt9Pdh4GV9xOshZXY8Jm18KMOMv84J6yyBCGKakZSqetg0wAEkQ09zCn/W/vS//ILo7AavB6wms+gCJ4BVSOnRgRyuwtA7H29UMeg2ARnU54F9E2hAh57zos22Y40B2QEu9bzpwki+RhnHNAWpvzTmf9utjOAbA4mzJDgvo7ansM2vxCG0cCuwn4Mxnul0rxiAgqV4c/Iko1pwNxPM88ZKHIFb5kZxLuXpyFDsi6Hy9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by IA0PR11MB8419.namprd11.prod.outlook.com (2603:10b6:208:48b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Thu, 2 Jul 2026
 06:26:30 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 06:26:29 +0000
Date: Thu, 2 Jul 2026 06:26:21 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo, 
 Alex" <alex.zuo@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "Shyti, Andi" <andi.shyti@intel.com>
Subject: Re: [PATCH v3] drm/i915/gt: Use poll_timeout_us in place of sliding
 sleep window
Message-ID: <qtah6k4dgekkh2vyjjnmzg5gujvgb3zz67bfnwpwkpkmma4vyi@cvbsy2fpeyka>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260630152511.1401029-1-jonathan.cavitt@intel.com>
 <qgju2jsejuf2glmyyuwk4smae3yvarix6bdxbafvhpxbaanfmb@cpnfgvrrb56n>
 <SN6PR11MB2717210CFB7347CA91964EDCE5F62@SN6PR11MB2717.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <SN6PR11MB2717210CFB7347CA91964EDCE5F62@SN6PR11MB2717.namprd11.prod.outlook.com>
X-ClientProxiedBy: DU7P250CA0012.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:54f::25) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|IA0PR11MB8419:EE_
X-MS-Office365-Filtering-Correlation-Id: 24393635-e6eb-4d27-8e05-08ded802da56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|6133799003|11063799006|56012099006|4143699003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: rMLaI/z4E6+MdbE7c12RXdC76g6FLN+BArOfDTMJu1mvjFOU0UNZkMv365ys1H9yCteZZoODykaglIqXidgu3LjzRIJ3rBQnea8gdiQlmaPQQzv4LzANt+WeYo8BvPSPMMV+yKVeasRn7TtyObwAKTmIdV68E5ue9jmB41MYOPVY/woK5+uDD/UQpfWSPtjCIG56ZQYwUjfNtDM+aA8uEMEYsEEvDws9D3iKrH1Dgbiv8rjC9u4Z373nCcBEIWjvouTgA0pLbI8WvWdXiaem4U/MiIDcRoDoydGPDyJ2emtBXMHFdntZL/kJNRiRiYbCvTdaPFPyyoXrDjZzca9wSPIBjxgiDK851qBdkCNNTWFP6o0kJ1RAqI0Ed+PNjsZks9g/edhIQFpcuGiLcKJm8O3boLrp/EgL2bAzyizvUvGQbP3iriiTsSVvm7CgeL1B6GpaE3eNYhNX5d0f7dFho1mWvkBb/kzlQ1T4iv3oDhrbJsz5qRMFA/SU/ocPFjfFzqt1Y6i+E7eRc/EKqaupnNdCgM+QNd/ayBkBpRXkf/EHVES0+yqap+l6n31LqGD5vTfYpRM11vxSs+m54jB97GeixGgr+iXUYofodaZHS1PqL9icE+f72PQ+JlWQDhGJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(6133799003)(11063799006)(56012099006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aG5UaC8vc3RqUXdqME1oN01CeG4xZXNwWVJXMGRlYVVXT2V3OEZsVlJZcUdh?=
 =?utf-8?B?QnVndFRBMHAzZVZ3UlhBaVEvRnlhOEpqLzRjeDJTZWFZc2xBWkxQTHdNbnR0?=
 =?utf-8?B?RzhaMllLWC84cTNUdzgzSnQyWW9lZVZ2UGo3K1ZBaVUrak55alQ5OUF3d3I0?=
 =?utf-8?B?N1JlWCtqMzc2MFJnNVp3MGRFWVZsVm84RjFPcjE1RnR4Vy9vRHJHbTdjR2pT?=
 =?utf-8?B?WmVNRFYxc1lmTERsaXVDVnM2Ly9nV2lyaTRLckEzdkV5aUwzYk85dmxFaEdr?=
 =?utf-8?B?MkZsVm9nd0l2bzNnczhibmFUL05BcEJIQ1ZrUWNRQmxqdmxzcFUxQzBKL0lE?=
 =?utf-8?B?VGw5c0JzRXdHcVlaZllOSmpoMWE4Z0ZCV2I3eE5iaFp4MEtIaTVEVnUvU05H?=
 =?utf-8?B?K0M0bGRkRGkvU3dJVjRmSmNkalM0c0U3YXlTY29YcUdVR2N3OWtYYmtsVWV2?=
 =?utf-8?B?dUFFbzBNYXlIbGdDNm4xcnJlV1hrbm5iZWlJUWFNL2xaMlRQUW13T1Z6NGJ1?=
 =?utf-8?B?S3BmeHVIWHdudlNZK3VISk1QY3AzZmNUMDFDYVBOaTVjSVQrYmdua1MrZUkz?=
 =?utf-8?B?UG96MmJNR1NscG5OUVdWRmQ2UjBFR1NOT2U2MVhUalFIdTk5VG1acUZXTFdN?=
 =?utf-8?B?a0ZnYXNjQnpYd05HTG4zRHBzaUFIUFhERUZXV0JvOVoyWm5NQlRzcVp5YUZv?=
 =?utf-8?B?cmRFaHRNSUlXcU9DNFowbElOa202SzZtbTQ3MnRGUUYxWTIyQ1lBNHdQempE?=
 =?utf-8?B?V0loRTZOYS9ZOTM0QWVyZFVCakJCdDRpUGI4NzlhMVdaSEVqNGdMcklNbUUr?=
 =?utf-8?B?RDRwc2NjdnJld2RaZFVhMEtCTkxJYkt1QVV4c29JUytzL3hDMGFLdDZNRWNn?=
 =?utf-8?B?cHMxQnBlM2U3ZGVUcUFMM2V3WjFvM0NDV2MvZGlMcEZDU3MzaytvbkxaRktH?=
 =?utf-8?B?azQyRGhtSDc4MWt6R2owOFlXQy9CeWN2SlpLVGFucDBDZEt1RWVmZ1owVFNz?=
 =?utf-8?B?RDdoMEJtYWdkeWlVV0t1WjRpYzE3VUxVSW0ySC9hU1U3c0ltZ2ovQ2hKWEpp?=
 =?utf-8?B?cmQwVDVFMy9QSnpXeGtiS2dqdUFzNDRUWTJITkhveUpEQ3pRVmdmdkFCQzA1?=
 =?utf-8?B?SHRLbGc1MVJZM0V2bGJBUmdGV2M5VDZ5c3NIM0d2b1h4cTBlR05aeUU1ZW5L?=
 =?utf-8?B?UHdrZDBaVngvbWVFSG0xd256dHU4TE1FNFZmQnVyZFdiQnplL2NXdTFNeENU?=
 =?utf-8?B?bFAzWFlOaEs5VElRYTlpcFdrSGhIV1hGWUZnYzE5UW5MbFVJKzF6YXFQUnRW?=
 =?utf-8?B?TFJNTGxzeFZRak5iK2p6aVVRbDB2YllmMWFrZENLM3gvQkJBOStwdXExekhV?=
 =?utf-8?B?QnR0RFZzMWxpWlVqY2wzSW9BTnlBRG54d3ZDUHdtT2RNRTNBQjdZRFI0Zjhu?=
 =?utf-8?B?TGx1OS9XaU42M1kydGpxMXFqd1djNlJxV1EyMWxmNzlGWFhRYzh6dTNUaGo0?=
 =?utf-8?B?dlRiM1dmckxkbWQyeElQcENmVys0OTYwbTZkMTIrdG9CTVhMN3htelVhUzZY?=
 =?utf-8?B?b1Q2aHV1R0JWbmtDcFJycjlXaWZNMGtyNloxYUVrMEJNUXVHWjZ1Nzd0b2FM?=
 =?utf-8?B?WEVWalJsUlBhVFBlQmR3d0NqQjJjVWtUY3h3d0tQRVlVV2tsUDlVUEQ0WGJi?=
 =?utf-8?B?MWZXTDMvUDZ6ZjFIUWc1S1licEdaK0p0OUdSLzJ3L3BpaWx1S1RCd002aHAx?=
 =?utf-8?B?Y3d6UGRIY09EcDRZL3NkRzRsYzE3V0FhRXNSVHhXVHNTRmNOdzNXN3M1Smd5?=
 =?utf-8?B?S1RYL3V4SE5iRHNac2J5emNkRCszcnhuTkxwaHU0dXVNRFRPMGZKZ21rN0RX?=
 =?utf-8?B?bGhaT1BjNlArcFBOa0JRdEtmOENzMTUwM2VQMGFWRTNxeE1taWFqSmd5b20z?=
 =?utf-8?B?OFZrYzN1QlcxcStEMUFFRnpLdzVYZ1ZmaWhIWXpOZnluSE9Idi94cDBTZmF1?=
 =?utf-8?B?QVdReG40S2Y5aUNUYmlLYXo5YUxZYmJOSTlUdi94ZnJ0d2VvYm9uWGNLbU9k?=
 =?utf-8?B?RlRyTXF4bVBWSWVkdWY2UEQ0Qm52VWswOHlyTVZ1VTlUK1Z4N1hhWEhCQ3Q0?=
 =?utf-8?B?RHZLQTVRaUhSVll1RWhaNy9OV1M4OHNsUTBDK2wveExudjUyem5KZHFSQ0R1?=
 =?utf-8?B?REw0ZUdVVGJDc0RRL0NQNHZYQ3FSS29iMkpJYXYxUW5ObkpsZWQ4eDIwQXB2?=
 =?utf-8?B?dnlyYlU3Smw4WmlyZGx3WU84THlhU2VpcWpIMWdvekkwNEpaNytNSjR0YXRi?=
 =?utf-8?B?QUFPenBvU2E1VVpWVzdscWV0amxTd2NhekNGR2lYWGk1N2Q0OThTaWNwQ3Nx?=
 =?utf-8?Q?H0XOSXQ1Lpo7idRQ=3D?=
X-Exchange-RoutingPolicyChecked: S5531cMmlTRji6CCC+mRXTzxUBdu5ysaj+2u996qhW5pGrrj68HI/NCqPUasW3hptTXtxi4cqQHv5fF4PX2JVQ703E8rYspRnZzIeBeDg8WvY4K4uBpg/3tEnCoTQ1dJKvzVrjegTbAqiBkueFxT8X5qphgzSzDgmcrMnaoKCSkVicH3ip7gRoSaHc+e4mF+95fLrfnN5HTORn2pGsvwSAnYyKSeIOGP0ET0hzENZFzDeEZc7dSKGq+k2VbxHwU84ICHMVMxFMWde86GiVVc1nk0mRRGildZ8G5WOqV3nGGtgzg7I1nGGozTFs6QxKSC4kjWRkIpSWm/dj59tBlnfg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 24393635-e6eb-4d27-8e05-08ded802da56
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 06:26:29.8788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y874INgJuhSRJ1UkfVx8PhmeJANNQFr2ObvRY+SxbYx+VaXbIWX2KY/0Ipqv64qfqH7W4U19h7Cl5+pEudL6yDQFfHn1o5237X95vFsZylo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8419
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:alex.zuo@intel.com,m:jani.nikula@linux.intel.com,m:andi.shyti@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,cvbsy2fpeyka:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68CE26F3CBF

On 2026-07-01 at 14:10:40 +0000, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Karas, Krzysztof <krzysztof.karas@intel.com> 
> Sent: Wednesday, July 1, 2026 1:36 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>; jani.nikula@linux.intel.com; Shyti, Andi <andi.shyti@intel.com>
> Subject: Re: [PATCH v3] drm/i915/gt: Use poll_timeout_us in place of sliding sleep window
> > 
> > Hi Jonathan,
> > 
> > On 2026-06-30 at 23:25:11 +0800, Jonathan Cavitt wrote:
> > > The functions intel_guc_send_busy_loop and ct_send can theoretically
> > > loop forever.  In the former case, intel_guc_send_busy_loop can iterate
> > > forever if intel_guc_send_nb repeatedly returns -EBUSY.  In the latter
> > > case, ct_send can loop forever if the guc-to-host or host-to-guc buffers
> > > get stuck in a full state.
> > > 
> > > Rework the functions to use the poll_timeout_us family of functions
> > > instead of calculating sleep_period_ms repeatedly.  In both cases now,
> > > if the loop condition is not met after 10 minutes, the function will
> > > report it as a failure.
> > > 
> > > This also resolves a static analysis issue involving sleep_period_ms
> > > overflowing after several shift-left-logical calls.
> > > 
> > > v2:
> > > - Reduce default sleep/udelay duration (jcavitt)
> > > 
> > > v3:
> > > - Use atomic in ct_send (jcavitt)
> > > 
> > > Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > Cc: Andi Shyti <andi.shyti@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc.h    | 32 +++++++++++------------
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 19 +++++---------
> > >  2 files changed, 23 insertions(+), 28 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > > index 053780f562c1..13be4f7e7ab7 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > > @@ -7,6 +7,7 @@
> > >  #define _INTEL_GUC_H_
> > >  
> > >  #include <linux/delay.h>
> > > +#include <linux/iopoll.h>
> > >  #include <linux/iosys-map.h>
> > >  #include <linux/xarray.h>
> > >  
> > > @@ -360,8 +361,7 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
> > >  					   u32 g2h_len_dw,
> > >  					   bool loop)
> > >  {
> > > -	int err;
> > > -	unsigned int sleep_period_ms = 1;
> > > +	int err, timedout;
> > >  	bool not_atomic = !in_atomic() && !irqs_disabled();
> > >  
> > >  	/*
> > > @@ -374,20 +374,20 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
> > >  	/* No sleeping with spin locks, just busy loop */
> > >  	might_sleep_if(loop && not_atomic);
> > >  
> > > -retry:
> > > -	err = intel_guc_send_nb(guc, action, len, g2h_len_dw);
> > > -	if (unlikely(err == -EBUSY && loop)) {
> > > -		if (likely(not_atomic)) {
> > > -			if (msleep_interruptible(sleep_period_ms))
> > > -				return -EINTR;
> > > -			sleep_period_ms = sleep_period_ms << 1;
> > > -		} else {
> > > -			cpu_relax();
> > > -		}
> > > -		goto retry;
> > > -	}
> > > -
> > > -	return err;
> > > +	if (!loop)
> > > +		return intel_guc_send_nb(guc, action, len, g2h_len_dw);
> > > +
> > > +	if (not_atomic)
> > > +		timedout = poll_timeout_us(err = intel_guc_send_nb(guc, action,
> > > +								   len, g2h_len_dw),
> > > +					   err != -EBUSY, USEC_PER_MSEC,
> > > +					   600 * USEC_PER_SEC, false);
> > Was there a reason for choosing 10 minutes or wat that more of a
> > "should be long enough" decision?
> 
> Yes.
Okay, thanks for clarifying.

> 
> > Also, since you use this magic number in multiple places, it
> > might be beneficial to put it behind a #define symbol that is
> > easily trackable in git history.
> 
> I'll do that as soon as I figure out why poll_timeout_us is causing the
> driver to fail loading.  Or, alternatively, I'll apply this revision note
> to https://patchwork.freedesktop.org/series/162517/ once it receives
> better than lukewarm approval.
> 
> I should also note that all this effort is being put towards preventing
> an integer overflow that isn't even particularly likely to happen in the
> first place.  By all accounts, it might be better to just close the report
> internally and be done with it.
> -Jonathan Cavitt

If you decide to make another version, I'll be happy to
review it ;)

> 
> > 
> > -- 
> > Best Regards,
> > Krzysztof
> > 

-- 
Best Regards,
Krzysztof
