Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DFC9A2855B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 09:15:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B65310E749;
	Wed,  5 Feb 2025 08:15:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L4az4U7q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 327FB10E747;
 Wed,  5 Feb 2025 08:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738743267; x=1770279267;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=19OJaIk7vUi8Mo6Gg0VxLguvprIQThpAiOKHZ67WpQ4=;
 b=L4az4U7qBt8kPazbq6MiWNlYCpCjiWRUIwSHigit8HPPNwQibcshwKp3
 OiVx6WSODcvtYW8MDUStpdF9Hg0+kqeFLGQ6FPYz6HkRw6cjD4/st7z1O
 ownPK0qGYvpAMBSVaruonRmvpiHmUV9jpuqVmaHZbMA3PZt9YvNf09gpW
 +KusCeg6uFPNHBzQezDIW+LxJLX5M0P7Ii1Q3s4AbFpDq/vP1l0iqq9rj
 5t8DZBI7Cik/ZqS7TQDne5B3JLs41DlVefzRwUiRs+G+wnosEEZQja9nl
 aI22oTUKtpn5YkssfLbNOnaiLP5rdtzrlIcQ1V4xBvGu4K1WtCuGaUYoE g==;
X-CSE-ConnectionGUID: zg+SnmBZRVOe7tXcb3z5rw==
X-CSE-MsgGUID: SEOVMEYCQSu2iTkvxohJlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26901610"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="26901610"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 00:14:22 -0800
X-CSE-ConnectionGUID: Ep2WulovSaSyeO/MZQjRAg==
X-CSE-MsgGUID: w4LAhBoyRtK393y97iQkUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="110720608"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 00:14:14 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 00:14:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 00:14:13 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 00:14:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LZm6VY9dg8cvQ/mor0hpgSIolDtz06GrkEr0PPm9hNn4RGF9hNFZsOYLvhua+wEtpEHJDfsBbtuXrglVluD4sO7n3IV3VD9/1+iB5hiMHjGaGgKAnzkg8RL9fWaMRg8pHnlRyoSendk5HbiUzkuYixvsQlJUdGKfdujxio/hclP0cjeUjzHiI2S4bwGRm3m3VqG5fAfhc9ZixnDm7MadYxOtGr1zir+GHcnuipfY8kceN88QCkVCkeEI+J3NWK3gakPkpvhq7uaxdr7MJ37pdCDao5gEKZj9Hy0Z8Bx8q08jAf+s+lo6D78S/skcLpECm3rYwhghJh429ouFdLPzuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LJsCrfArtzND3iD7CN+5L5Aq/tqAPTzxpUIgfM03hUk=;
 b=XkpoyXvfZY9zpVzskteNac1ay+8mwkgq+Qf4kR/YrpsLrVYCuas44w5bREAlnuRgQnocTAHvKmd0z5VNr/n1uTBUMRXZVLFO+lR3ffiXfA2fhf1RBDBJ4UrpPUIYOuEKvllK8rNc0oIL1oYI/aEt7E5fyqRvg8Rw8jdqWuCFYuLEgIMMxlUABRTvfDKeXAy3hpIlkK05d7WBZ6KW85wXwSU1+7IzaJDvCQ2wt0NEQ2rRn/A3wk9oBDRtTEVBJTONSzBphrXl0BVEYe3DgklmHCVcyq/bf2cajnyCI2AUnYp5qWzsk2JahjuRaZwJdRylDE+X0sO4aMl1yDhda2D5uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6133.namprd11.prod.outlook.com (2603:10b6:208:3cb::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Wed, 5 Feb
 2025 08:14:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 08:14:10 +0000
Message-ID: <921818d1-b357-45e6-a189-cd6766eaa278@intel.com>
Date: Wed, 5 Feb 2025 13:44:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] drm/i915/display: Configure the scaler
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
 <20250113104936.1338290-4-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250113104936.1338290-4-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0017.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6133:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c234b16-8118-4269-764e-08dd45bd11be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SnlyYXIzUUZickNhR0JHQW1HQm5UeDYvdnRQbEhkN25SRjg2YWdtVFppRHJX?=
 =?utf-8?B?WHVabzY3MGMvVWFNN09kUXdUeElrNWpBOURYRWUxQ2ViZHZCVGs5enZVbnVi?=
 =?utf-8?B?eHdKTmxoZDNoZS9BR0cxWFZVeHlsQTJMTFFLTTFLa2hrNXg3OE1Hd3FIOWhk?=
 =?utf-8?B?eDVrUjM5NWhvdzB5YkREVEZCbUFPV2FyeVdkNm5FMU93WlZzZEVuM0UwNjhm?=
 =?utf-8?B?dnJXRzFEK0krdDdxVFR1SHljUnRlTWE3QzVaWEhQZ1ZHd1lSUkVjaCtXbmtF?=
 =?utf-8?B?NFNVd0N2WjRPOEJIMjlkZFkvSTdCQ2JIR3hYaG1XK2VOa0xJd09xZGN0S1Nw?=
 =?utf-8?B?dnpYYnY4VjZUQS9xSDV6a096VHUxY3NHTzduM0ptUnUyajBaM2VRZ29UalZl?=
 =?utf-8?B?K0JJVDFaR2MzSWJUbEJ3S2xyMmp5VjBmZndiSjd1dTF4eHR4cDNRM3VNQkYy?=
 =?utf-8?B?WWxIbjIyVlNyNExOQjZBaVpMMDRiY3NTQXU1YndKeGpTWTJFazV5OWhybWN4?=
 =?utf-8?B?c0x5RklnNGRaNDVyMmVya2dDa0VYbmM0MERHYlo2UEluZWZUanpIS1FYUUZW?=
 =?utf-8?B?cnNBc1E3L0Fzb0xrOThabkxrV1hFNGZOVVNCWkxzVDNmMmpmZ05YVmUwOFdI?=
 =?utf-8?B?cWRSVDNaU2RHTUFJTExpUWJYMDFaZTh5ZHZFd3VXa1dhSEs3Vi95SjFSWTNV?=
 =?utf-8?B?M1VCcW5pNEY0NzdTVTdVdzRFZTdoL002czFZcWlOWEE2Y0dXaDJKME1ETW0z?=
 =?utf-8?B?NmpNRzhkMFQ2bldPOXZ3aW56dDlEdW13dndoL2VKVkp4TjJCeHdzUXZFbFV6?=
 =?utf-8?B?UXYyODJvaVNWV25hVXJ6R1ZYeWlqMFc5Z1VHY080VDNZUDVVNFZKSVdSRkFU?=
 =?utf-8?B?MHBjOHpBKzk4MDJPK0Q3MmhpN2dwRDRCY1ZGWVB1ODd0bHRORzhqck84MjE3?=
 =?utf-8?B?VkZVSks5VTdpb28vcWxmcmNpK0JaNHh6T1NTZ0hRajB5OGYxak9VY2N1TWhF?=
 =?utf-8?B?Tmg3NWxEREczRkpoME55TUM3V2tSclVENEhaNjBlYVZ3RHhxK0NNL1QwenZS?=
 =?utf-8?B?K0V0TGVINFJENml5UXJPdXV2QkJvekNxY0tyZnhPL25KcUc1VnppcFRueUlm?=
 =?utf-8?B?bng2Nlh3ck5tYmJvdXVKRldiYVY4QVRHQkttM3Q1Z0RJYnBqQnFqZ2ZsRkhi?=
 =?utf-8?B?bFZ6WEVKRUUrVm5rREZSOGNTS3lBNlo2SUI0RDlxcVd5Yk9WbzNQT0tab1J3?=
 =?utf-8?B?N2Y5NFNCWG0yYlg5NlJwNjAxaHRsLzcybXNtR2UzOUNDUTdYdFBaR1pwcGUx?=
 =?utf-8?B?ZUNBalU1Wm8rMjVDTk14a3VIcVBqVllqSklhcnYxUlpuLzA3QUxqUWllY2hr?=
 =?utf-8?B?UEwweitSSFJOMWFoRHlJNEZrazkrY1BOQW9Obi9zU3V1MTZNQW5zZGk3Ymw5?=
 =?utf-8?B?N3dpSVpaaDZLYUlxSExmeFV4bnBkbW1VODNsSnlNTHZzZEtnYVhUYmdITzNm?=
 =?utf-8?B?dUV4bEcvY204b3VNOUwzTlJxcTJyNzh4YnNKbS8zbmpyWnJlSkxzL2VmZW9V?=
 =?utf-8?B?L3ZYZ2x1WkIwTmord0QyMzQ2NlA5NXlzWndjVzJoMlRqazk1MmtpMWFaeElu?=
 =?utf-8?B?Vk8vTU02M0t6TTZ1SUpqOU9jQ1Y0NzI4V3Zib1N0RGhpSmg5VWJHNkc5aVcz?=
 =?utf-8?B?Q3FlWGdCbHpUQndDUmNEbCswRHAzdnBISGNNSlR5amkrdE0xa2NGakx4L05O?=
 =?utf-8?B?MXVEd3NYUDd3MjV3ZVMrV2tMVVFyQ3E1Sk8zaWZDWktINmpicjJ4WEd0UFVn?=
 =?utf-8?B?NHdXRWFRUmMvZG1BNGJjcjNLK0hITDZZSis1d3I5NTR3YzFSOEdocnp3U3Jm?=
 =?utf-8?Q?jEgVYCUlhMGMP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXZ5UFBwVGhkd0d1Smo3bHFVTHBNSkFzRDNuYzdRV1hMVnlCZFcwVjhNS3JG?=
 =?utf-8?B?UVc2MWxkSDNqckFuTFRMVlFKN1lHbmt2WUdaaVNmOXQ0dmtGUGdKdnFtcFF4?=
 =?utf-8?B?NlpCaVVIci9TRFNCbjM5b0JEeXVEUHlzOGZ0YzNyUkxmWitNK2F6NS8zSEcz?=
 =?utf-8?B?aERFK3NkQUlyYVNraXRjZlJraEdIaXJrYnkxQ1VLeTBXZmE1YjlkS28zdWZT?=
 =?utf-8?B?WTd2THVwZ3kxV0tGN1pMcWdiWVR4T1pxZXRKeTMyVVErOFZJeTZMSklzaGtF?=
 =?utf-8?B?a0tpZ1hCMldHMko0S092VXlDaVlMOWl2VHFhY0xXTTZVMVIyZzVQUzIwOThm?=
 =?utf-8?B?YnNWRFRURUN4T3lzNWF3eXBrek1rWVNZSE9nenJXd2dDTkxGNDdsUk5TZHo3?=
 =?utf-8?B?cUl0bVhKVFc2b21uSWthWXpVc0JMSnB1RzlldlFhYzkyZ3M5NHZ4WWpnckFu?=
 =?utf-8?B?YTVjYlhYSXZIeFFwcEdhNUFOejU3bS9xY0VySFJybTFvR21DSDYySncwRU0r?=
 =?utf-8?B?cGRjNy9IRXR0NmZqTjBXK1h3RXg2aHpJRmVDSmI4WGhRQ3NMcGUvK1FvSVJr?=
 =?utf-8?B?aUEycGJlT3dieWZhZXZjR3lrSFFlRFdjMjIxVkhvaDVtMDBrajZlejhPeDF6?=
 =?utf-8?B?RWZIZk9nM2dOSHRNSjl3MG9GUzN6TEdtS1RDcEdKaHNhZ0EvazBpcmJTQ2Yw?=
 =?utf-8?B?NGVCT1pOYXgvZG4yZ0dzVElkSWhZdmUybEYvaEcrWlhuQnc0bVNXNFhkdW4z?=
 =?utf-8?B?OHBEV0poOVROUSt1VkpaNDhOdXR6Ty9nK0lrbmtLVFJkU2RLK3FIRmRDMGRX?=
 =?utf-8?B?blVBbGoxanBsNm5kM24rb1ZGM284ZnZmY25mcU9RYWxzNjJmeHBCTnFGdEhp?=
 =?utf-8?B?VmswTXZDSWkydzZPejlFdi9HcDM2bEpWaHlteFJCTStkZmx0bjAvNkdvNERm?=
 =?utf-8?B?WXZFdHRvMmxKRjlEcXBqalUrVEZlZmkycHY3b09hTUV6TlY5UGVKM3pGY0Jx?=
 =?utf-8?B?Rll6dTNYSGJpcytHUHFDMHNxZU90eGYvUzhheW03dlRwallrSWV4aXkrb0x2?=
 =?utf-8?B?VEpkVjZnT1ltZjlQY3FETCtHSEErLytsNHNiZXR5ak1zczJHaWpQbDZCcStV?=
 =?utf-8?B?RFJiZDkxbGpDMVNtNHJQZmcwbExxbE1sWkk0bGhtZVZoODN6Wk1PeGJVb2dt?=
 =?utf-8?B?eEF3dG14QzhxeUw2YU9SYWZObDNiZkNQcmI5bElmc3VIUHZoQld3YmJqS2pp?=
 =?utf-8?B?Y291eDBsTTM4UC9aUDJMMURuNVU0VlVzMkxjZHUreXpUK3EzZ0pTc2ZUbmNV?=
 =?utf-8?B?VDgvRk1kUjlBNTVzRG5URVZ2eEtEaEhHMG9jTVloRExZMWh1VlhCTXk0L3lL?=
 =?utf-8?B?K0l4T3EvZmMrT1QyWTBRUWpXdXhhOHdma2RDSnQzT3BsVExWMkxIc2s4OFpz?=
 =?utf-8?B?djRVY3NzaEYrMitOREE0aEhBZmpkcTQrUjhUVkN5NzM1SitCK2RabTRYR2VF?=
 =?utf-8?B?cjNJSitTaWpoMC9xMDJaNjJ1cXoxaE1CL0VUQlNDemViV2lubW1sMHlIUVJ0?=
 =?utf-8?B?UmJqeVM2ekRYa2dYRVQwY294K0YvWjZNbW1MUjEvYnhySXpCc1E3RFJoWUNv?=
 =?utf-8?B?dlV0bnRFME9OYmF6Zmx4MmMzSlVxV1Jnd2NGTlpRNWdUZEMrU3M4MTdHdm1K?=
 =?utf-8?B?TURNYXRoajhiR3VOeDNkVDI4VmJobWg2VTM5QnRhK3RaMXhRaFNPOTIveXdK?=
 =?utf-8?B?c3pkNzFrSG1TMFhoZG95VU5MTk5ReDZCcDRPd1FTMURSeWphaUlLNitxMHd2?=
 =?utf-8?B?RWlhSXNuTzNPbndjTDBwWEdFMW1BdVpMMHFZL2tmbTFvM3NrV1pkYUFoWlJi?=
 =?utf-8?B?WmlQUFc1ZCs5dXFTMk5Ld0dia01zcGVyWFhMdWdHb0grRXJaU1ljYnhrTXI4?=
 =?utf-8?B?c01pN0p1TFdROWIyUmc3d2ZxVllxWDdnUEhFdU5QTGkvZGFRZk5GdUhDT2s5?=
 =?utf-8?B?SlRvQ3FOMndxdE93MDZJS2dVQ0JqdmpINEVrWmRabUplQTlqS3dobFJzcVhI?=
 =?utf-8?B?dFRXZjJlenlRWUhncjR6VEEvTFd0ZDlvcDI1cHk5Y1ByTFFiZW11VisydmJx?=
 =?utf-8?B?QnZvVjlzdmJSVnRJdGJCVStIZWx0QXFhbWpLaGNIY2xockc3bEtGZ1NIVHEy?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c234b16-8118-4269-764e-08dd45bd11be
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 08:14:10.8595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yLg2E9CtHLteOHL/Hv0mrAV1jV9Zgvi4wWelU6zMvhlPIueR8azj9wf+uZJuA86gp+MyBdsaM8jvi94/7moYpu2VP5qhsnftWtMrlkg/Cbc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6133
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



On 1/13/2025 4:19 PM, Nemesa Garg wrote:
> Write the scaler registers for sharpness.

Here you are enabling the scaler for sharpness, so subject name 
configure the scaler doesnt seem right.

The configuring is done in Patch#4.


>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_casf.c |  2 +
>   drivers/gpu/drm/i915/display/skl_scaler.c | 45 +++++++++++++++++++++++
>   drivers/gpu/drm/i915/display/skl_scaler.h |  1 +
>   3 files changed, 48 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index b507401457bf..773abaad74ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -97,6 +97,8 @@ static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
>   void intel_casf_enable(struct intel_crtc_state *crtc_state)
>   {
>   	intel_casf_write_coeff(crtc_state);
> +
> +	skl_scaler_setup_casf(crtc_state);
>   }
>   
>   static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index a11e09a15e23..0718210de910 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -132,6 +132,13 @@ static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
>   	}
>   }
>   
> +#define SCALER_FILTER_SELECT \
> +       (PS_FILTER_PROGRAMMED | \
> +        PS_Y_VERT_FILTER_SELECT(1) | \
> +        PS_Y_HORZ_FILTER_SELECT(0) | \
> +        PS_UV_VERT_FILTER_SELECT(1) | \
> +        PS_UV_HORZ_FILTER_SELECT(0))
> +
>   static int
>   skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>   		  unsigned int scaler_user, int *scaler_id,
> @@ -667,6 +674,44 @@ static void skl_scaler_setup_filter(struct intel_display *display, enum pipe pip
>   	}
>   }
>   
> +void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_display *display = to_intel_display(crtc);
> +	struct drm_display_mode *adjusted_mode =
> +	&crtc_state->hw.adjusted_mode;
> +	struct intel_crtc_scaler_state *scaler_state =
> +		&crtc_state->scaler_state;
> +	struct drm_rect src, dest;
> +	int id, width, height;
> +	int x, y;
> +	enum pipe pipe = crtc->pipe;
> +	u32 ps_ctrl;
> +
> +	width = adjusted_mode->crtc_hdisplay;
> +	height = adjusted_mode->crtc_vdisplay;
> +
> +	x = y = 0;
> +	drm_rect_init(&dest, x, y, width, height);
> +
> +	width = drm_rect_width(&dest);
> +	height = drm_rect_height(&dest);
> +	id = scaler_state->scaler_id;
> +
> +	drm_rect_init(&src, 0, 0,
> +		      drm_rect_width(&crtc_state->pipe_src) << 16,
> +		      drm_rect_height(&crtc_state->pipe_src) << 16);
> +
> +	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
> +		  SCALER_FILTER_SELECT;
> +
> +	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);


Should we not disable the SKL_PS_CTL when sharpness is disabled?

Regards,

Ankit

> +	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
> +			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
> +	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
> +			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
> +}
> +
>   void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 4d2e2dbb1666..e1fe6a2d6c32 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -28,5 +28,6 @@ void skl_detach_scalers(const struct intel_crtc_state *crtc_state);
>   void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
>   
>   void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
> +void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state);
>   
>   #endif
