Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0A69EDDF1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 04:35:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A5C510ECA9;
	Thu, 12 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="LxFWCAIW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2062d.outbound.protection.outlook.com
 [IPv6:2a01:111:f403:2408::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237F510ECA9;
 Thu, 12 Dec 2024 03:35:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UfxALHEugRf0aIVinsxAI0LQYp+ZKpdOKR7Sp/i6njXPV1Zsr7BkvtAt78LeOIUgY6+riU0RgGJZD0yMNGbaFw9AZzyBQJizYMe2GUF6gcA7ub1G8mUOByCjwlJqTx1fkPDBMTXaQx73Rk5kVJ/6S2QXoNPZ0XZ4eUFyFneISBAwpnX9IVYOGDxwi/KBvw54lRM76+RYbmKKIRMM++1gmxQOPoxyvPXZvK5M46pt8Ksl8UBsiKVZ0Imz/jsiQu5DOVNG42AQb54wiGfGMWu7CD1NoGd4FMbEHEtUlLE/IZ8C5Z/fsIXZQmaZIu0/3/H57wTF4uVOLALOdLh3taYcNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VXHQXkXxXk43gSJb4zM7OeKUK4R4JRHW+Vfcnzfxgfk=;
 b=XppquEe9F2Q6btaMyNsUC+zzReDxsxGCof3yIxgJ5ruAOuWEHAYofskH8Iexntvlgyr+3Ugkdq+LaVDCjB3/MF1IO5VHLOcG/72vM108cCwENYt6cFrU6/7JaYv9WLYxr+eXm4KRXHshAhvN4XK9PD0dbNtG6JhC3/hlgAjiO5miQT2/TIgNzSBWRqR/Y9oNTL2ihbRiqy9AWLi1kPnG7cmzFoFt90r1XkvDyD1hGfNPiFBO/Qth+4oN0H9WqD2TPzc9C+gnqLZyj4zOZy9t1jDe+EJryNZVnzHJv4VHhs7Hao8b1C0XFrB089I1fw+T2XWO9Fz+kQSOSYSoLRqnNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VXHQXkXxXk43gSJb4zM7OeKUK4R4JRHW+Vfcnzfxgfk=;
 b=LxFWCAIWzBlNoabm3O3WET6Y+WRx+HCQiDXn0/AJsfoDfc4Ko2fxyvijr2s0Vyx/DySg+l+ZNwb5pXaNLAFMdN3QV/dEUesubV7B+Il/WA9UsPZuIB6JFhSNCA6mWOnIUabBFJsINkuUa28HlNcMuzgVzqFoPMLjQ+QWV2js+/A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from MN0PR12MB6101.namprd12.prod.outlook.com (2603:10b6:208:3cb::10)
 by SN7PR12MB6838.namprd12.prod.outlook.com (2603:10b6:806:266::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.15; Thu, 12 Dec
 2024 03:35:48 +0000
Received: from MN0PR12MB6101.namprd12.prod.outlook.com
 ([fe80::37ee:a763:6d04:81ca]) by MN0PR12MB6101.namprd12.prod.outlook.com
 ([fe80::37ee:a763:6d04:81ca%4]) with mapi id 15.20.8251.008; Thu, 12 Dec 2024
 03:35:48 +0000
Message-ID: <abe7da39-b576-4fdf-bd9f-5c51abd7180f@amd.com>
Date: Wed, 11 Dec 2024 21:35:45 -0600
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] usb: typec: ucsi: Fix connector status writing past
 buffer size
To: Lucas De Marchi <lucas.demarchi@intel.com>, linux-usb@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 chaitanya.kumar.borah@intel.com, Luca Coelho <luca@coelho.fi>
References: <20241203200010.2821132-1-lucas.demarchi@intel.com>
Content-Language: en-US
From: Mario Limonciello <mario.limonciello@amd.com>
In-Reply-To: <20241203200010.2821132-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SN6PR01CA0010.prod.exchangelabs.com (2603:10b6:805:b6::23)
 To MN0PR12MB6101.namprd12.prod.outlook.com
 (2603:10b6:208:3cb::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR12MB6101:EE_|SN7PR12MB6838:EE_
X-MS-Office365-Filtering-Correlation-Id: d1b7ddac-8fcd-4592-1f70-08dd1a5e1168
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGtnRFRhRXBteFZXKzRqV0RFWGE0SGFaUzNQVVlDa2Jib3ZzVTBCUnpPQXUw?=
 =?utf-8?B?clE3cUc1TStZTzFrbXVPNnJubGFCYmtvcDhjeUtSQzdFcmEzczVQcTRRandU?=
 =?utf-8?B?M3U3d0Fwc0dodkswUnRwQzhvZFdpdzVGcmRLcnlRQWplRUZhZjhBT2VLekxH?=
 =?utf-8?B?R0NpOGp0M2kvSExySERqV21pYXROWGQ2MUx2VjFqS2Jmc21RMktQM09CTVlI?=
 =?utf-8?B?djVqR2hjdzVSbzFZWUdpNDBIOVgyNGFhTGFyMVlUbnZtektIb0lxV1NMaWJ3?=
 =?utf-8?B?MFh1dEhiVytJZGpPRW1Pc3BGZEZqOGxvOUx2Nm53MTB4TFRJQTlwVTkwYVRN?=
 =?utf-8?B?ZzNLd0o4VmpHMDduK0lzdzFhU0dXZ2JmSUFzVktSc3MrTWxzdzZJQlNzUTBm?=
 =?utf-8?B?NThHK1FWNm9JMVY4dnJCN2lqdU9xWEFWL3cvOGJxdW1Ub0lPUWc5YStMRHo5?=
 =?utf-8?B?MGdIbkJDeXJNQWhjSkV3ZXlRZWUxK2JURkU3UGtwVC9yV1RLYjFiM01MS1JW?=
 =?utf-8?B?M3FsRjdEaWFtcG5zRVZ1bkxrT3l0M3FPWUcxRGlyU2U3ejRZN0xQNkJ5dExM?=
 =?utf-8?B?MXZpSllneWdtek9ZdEo5Wm1IekJrMlFaaEFOVEh1NHBsdXQwZ205UnZQUHlS?=
 =?utf-8?B?WmNiWGRld1hiMTRyRmhqYlNqeTY2OE90NU1JZjFwVzhudWRabVJFWVRWQjFh?=
 =?utf-8?B?ajdDcXZtTEVIN3RZbnhFdGlxeWFHSEhBMU50M3l4aHhnYVVVTGJMSjZXOEhl?=
 =?utf-8?B?Z3hjWUFuejlhaFpDQmY5ZDBtN2NqSzlpTWIzQlFQN1pWeFB2QTlaOEpubXlK?=
 =?utf-8?B?S0poeDdxZzR4QlgrZG5mZEpvUlJOZ3JKdlE4ZjlkdmpXa2V3YnBIeXVENUJJ?=
 =?utf-8?B?ZkNSdWhMc0FLc2dYeHlYTEVEN0ZVZ3hTNWNJNmw5bTBGVGwxbWNpTnhSdDJt?=
 =?utf-8?B?VUlidW0wSUoxUENVZWwvaXM0UW15Z2FualZDWU0xUVhnWjZHanVsQVU5bzJM?=
 =?utf-8?B?eER6bisxSHNMQUVBZGhkK2R0TU51T3lvcUl5WjRoUzlIcTVTTmdCaHhtcTgw?=
 =?utf-8?B?ZVRFVktHdmx2Z0lnWE1nNVdhYjFwK1pYUlhac0Y3R2t4dzZQcGpMNG93TDhh?=
 =?utf-8?B?SG4wMXdUY01JZjd5eDJWeUlicmFDWU14Y0lhUzE5cXNjVFlaTUllQWpjdHdT?=
 =?utf-8?B?Vy9LcGVzQWVvUUJ3TXkycFR3ZWQrdUdabWY4eGo2c0tqNlZGemNFdGpsS3pR?=
 =?utf-8?B?TjYxY1pkNzdSN2Jaam1ZSjlxTHQvNzFja0wzR2syN1g0aFJTeW9tclNpditM?=
 =?utf-8?B?dXM4aFZobFNBYW9aK21YdERib0x6Q0pFTncxeGF4d2wwM3VrdlhNWVAyV3Zu?=
 =?utf-8?B?a3VLVytla3JBenJ0SmlSZXR6eDRUVUtPYVFhaVkvUHBmREdwd1Z5b2wxdzlM?=
 =?utf-8?B?MEtZMVFMMlBuTXVOVGk5UEZmRCswWXU3dXlnTVdmR1RDUExtb3MvdzVObFVT?=
 =?utf-8?B?QzN1ZkUrQjYxWFBheW9IdDdzcUwrMnhHU1FwWDZrbXBzMTlLUU9GZ202QmJk?=
 =?utf-8?B?WGQ2d2RPcWpFZzlWem1wZzh5TjhtNUZyMU1hemJEVGxyWW1DQkJiTkppaEpF?=
 =?utf-8?B?RWRqZkZPbWJhc3EzYWxWRFJ6TzN6ZGlYazV3bXhRamk4bWlCM0dyU2RqSURn?=
 =?utf-8?B?c1BwUmt1N0RHZm51c2xIeWR5bnpEME5ERHphSWUzY0dIUmFjcVdwMEMwS1ZM?=
 =?utf-8?B?dkdyTkoyNXcyR3p2eVZMczgwUEwyTDRtOE5ZeEJCdGwxQnZ6Z1YyWXkyd1V3?=
 =?utf-8?Q?jYCkyop1YaM1gf1Gi+OIItQBYnmqAJCkEM840=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR12MB6101.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THZkVHN3bzJ6SWZNSDZTWkNPOUJUM3VlelVHc1ZQa3NTYk5zS3RIT05STzQx?=
 =?utf-8?B?SENWSTB3cmVxNTkrR0tkUlVKd3NsK0l0L21nRXZMV1lxbWFsczZZaTNDTFB5?=
 =?utf-8?B?SzNXYnd2R0ZreDZtMEVtM2Z0M0Jaa002Q0pQMEpiaGM1c3lFQ0E3cEdDbXVU?=
 =?utf-8?B?b2x0SldEd0Q2bXkyZUFXMHc5R0k3OFJSWE5iKzNHK1hQUnBrNDhObHJOUjJ1?=
 =?utf-8?B?TnpvbnRuOTgxL0MvL0Y5VCtLdmNqYXVSREFiRzVGZkdVMFFNTjRLR2JRY2lz?=
 =?utf-8?B?bkt6NjFJZVM1MW00MWpTSFpkU20zbkJncFhmcWdNZ1Z1YjVOQVVYOUdpNnBt?=
 =?utf-8?B?SitkNFR1Y1hwTjdKeTlTakhaUjI3RWRFVUJtVXZRbWlHVGVSNTFHRWIxMFY3?=
 =?utf-8?B?Mld1RzhOekhaNXlySTlPaVl2eS9jUkpyL09oWTdINDBoTUhNLzFOQTJsWnFo?=
 =?utf-8?B?ZW1FU0d1ZVlBSnp1K0dGejZHRmlZSVdrNkpka0diUHR0OW5Oekh5QXF6cWw0?=
 =?utf-8?B?aG9TcC9WUUtDalRNTWZWSGZvWHhiNnQ2U3U4MDZOMTE4bzFaUEVMOE4wQ2ZB?=
 =?utf-8?B?bzJaZytDdTlZSzdRVEJBU3pZTHVheEFLN21Heng1T2dUTlV4c3hodWVNS29O?=
 =?utf-8?B?UURPaWRlN0taQkYxTFN0NERNamsyUlhDRUFvNmFFVU8zakYzWUpQMnU4SDZp?=
 =?utf-8?B?Rld1a3Q5Z3Y0MTJYTTZFcXVrWTc3TTJOWkJWbjRKbmpRcEdZNWxXSzhkSDRZ?=
 =?utf-8?B?WmhiT25mN0JkOEM1Y0p5RDh5cmMwMm5EcEd1OFpDNndzWndTMXRtYmZWY3dJ?=
 =?utf-8?B?aDVMYnNpMVpqZGVBUzV2WmJWbFhHM3I1emtFa1hlbjZHTGNZZUtXNzUwdkpp?=
 =?utf-8?B?cVR0Ni9KRFVHUERNUmwvUE5tWWJIL2I0YWcxNS9WNzVxbEFKWTFPQ2VYQ1ox?=
 =?utf-8?B?MGdXQ0pYaEltSFNhbEtzalRyYXZWdEZ0cDEwTXUxd0UycWFRZ0VuZUNhOVJ4?=
 =?utf-8?B?YkxYYVl1MEFBYVpwMDhIVVNYaTdGa29OcVI0VFJ6dmRHb2MwZG8yV1VTbllq?=
 =?utf-8?B?WGZRU3N5c2k2YnRRcTI5QXRGQy85d1JYR2RFbnNzNmtGc0J1bEtKcVVYVnlW?=
 =?utf-8?B?QmpvaVgzTnN5dzVKNlZWamRsK0xFL1hJV1JNSnBDaW9ibEJteHhZOUdKWjF3?=
 =?utf-8?B?R1JDMGZOR2NFR0l5K1AzcjBqR29Sb3UyKzlmT2llcmQ1WlpWRUlYOFlHVVg2?=
 =?utf-8?B?c0UwaGp5MVFQMDVnTmdxRCtzNnBKc0lyVWV1dlRWOTR0eGFFMDBnOEROYlRH?=
 =?utf-8?B?b0NIMEtiUWl4T0w4RlFFOW9tSy9DZUhnNUJFUm1OOEpjd2dZeFRUdHdrRDNS?=
 =?utf-8?B?ZXArWW9aeVJBTXN3eFVDWFF0ejdQdzFNSC9PL0RvVU5XcUx2ZXlQRkRwUkZ6?=
 =?utf-8?B?S3NjT3VadEN1MmJ2UEwrajEzKzhMZURaRnd2NWtIQjJ6QVdnSy93eXBjbHky?=
 =?utf-8?B?VzVBV0NTRy9VOGdFOUhvQkZvdjlhSWZOalRLKzNYRERTZ2F3NE1QaUM5bW5s?=
 =?utf-8?B?aFI4SkpBMzQ1ckU5RWl6dFU3NW0wZTZua3BVZEF1Sk1uZnNnYTYwVk1COEZ4?=
 =?utf-8?B?TU9ZYXgzQW1EVFp3d2hwaHA0TWxCbVNWNXNmblBPMU13TnllUEhPQ082T256?=
 =?utf-8?B?UGk5L1JLcFdOYUVzbzhlck9RRXRFTzAvL1NWaDk4cUpwemRLWkQycEZkYTVJ?=
 =?utf-8?B?eVlweVpMbWpHRU1DN0NvekhsK3NNWDBtUUtDYUxZa1NVVXVPM0x3UWJ4c3d5?=
 =?utf-8?B?RGYxblNFUlFJT2tBSS83bE9ST2xUMWlWcVJWcDc4b1VsL2laekthZzFpa2Jt?=
 =?utf-8?B?SWg2NGZMZzZQZ1RJY3VseCtBbUhLTGZPMGRaVm00cXdLTUdlTm1UMUxGeFU1?=
 =?utf-8?B?UTErRDJlZklINVE4VmVYcGFka3QwRWNqTmkzekhaemZ0ZUZDVWNvUWI0eUJ1?=
 =?utf-8?B?V0dkY3JqOXRUSnA5b3Y0N0RLdlZta0FKMG9pNGNiNGtFMXFIb2VVUGZiVTVw?=
 =?utf-8?B?OHk3V2xRTWNJY3lrb3VUakthUHZGTUp1UGVlOVAxOWJhQUN2eWFrazgxSVly?=
 =?utf-8?Q?AwamT5/XiBnECeP78mm0D+9Fu?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1b7ddac-8fcd-4592-1f70-08dd1a5e1168
X-MS-Exchange-CrossTenant-AuthSource: MN0PR12MB6101.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 03:35:47.9565 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HtW03sm6n+5MGPqkFNBQb7f9H5QiaWAXSmSZXLZYbvbVPUfGCVe9g71GCQRim7M5fZYUaTcs7p8VKN8sjncw7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6838
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

On 12/3/2024 14:00, Lucas De Marchi wrote:
> Similar to commit 65c4c9447bfc ("usb: typec: ucsi: Fix a missing bits to
> bytes conversion in ucsi_init()"), there was a missing conversion from
> bits to bytes. Here the outcome is worse though: since the value is
> lower than UCSI_MAX_DATA_LENGTH, instead of bailing out with an error,
> it writes past the buffer size.
> 
> The error is then seen in other places like below:
> 
> 	Oops: general protection fault, probably for non-canonical address 0x891e812cd0ed968: 0000 [#1] PREEMPT SMP NOPTI
> 	CPU: 3 UID: 110 PID: 906 Comm: prometheus-node Not tainted 6.13.0-rc1-xe #1
> 	Hardware name: Intel Corporation Lunar Lake Client Platform/LNL-M LP5 RVP1, BIOS LNLMFWI1.R00.3222.D84.2410171025 10/17/2024
> 	RIP: 0010:power_supply_get_property+0x3e/0xe0
> 	Code: 85 c0 7e 4f 4c 8b 07 89 f3 49 89 d4 49 8b 48 20 48 85 c9 74 72 49 8b 70 18 31 d2 31 c0 eb 0b 83 c2 01 48 63 c2 48 39 c8 73 5d <3b> 1c 86 75 f0 49 8b 40 28 4c 89 e2 89 de ff d0 0f 1f 00 5b 41 5c
> 	RSP: 0018:ffffc900017dfa50 EFLAGS: 00010246
> 	RAX: 0000000000000000 RBX: 0000000000000011 RCX: c963b02c06092008
> 	RDX: 0000000000000000 RSI: 0891e812cd0ed968 RDI: ffff888121dd6800
> 	RBP: ffffc900017dfa68 R08: ffff88810a4024b8 R09: 0000000000000000
> 	R10: 0000000000000000 R11: 0000000000000000 R12: ffffc900017dfa78
> 	R13: ffff888121dd6800 R14: ffff888138ad2c00 R15: ffff88810c57c528
> 	FS:  00007713a2ffd6c0(0000) GS:ffff88846f380000(0000) knlGS:0000000000000000
> 	CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> 	CR2: 000000c0004b1000 CR3: 0000000121ce8003 CR4: 0000000000f72ef0
> 	DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> 	DR3: 0000000000000000 DR6: 00000000ffff07f0 DR7: 0000000000000400
> 	PKRU: 55555554
> 	Call Trace:
> 	 <TASK>
> 	 ? show_regs+0x6c/0x80
> 	 ? die_addr+0x37/0xa0
> 	 ? exc_general_protection+0x1c1/0x440
> 	 ? asm_exc_general_protection+0x27/0x30
> 	 ? power_supply_get_property+0x3e/0xe0
> 	 power_supply_hwmon_read+0x50/0xe0
> 	 hwmon_attr_show+0x46/0x170
> 	 dev_attr_show+0x1a/0x70
> 	 sysfs_kf_seq_show+0xaa/0x120
> 	 kernfs_seq_show+0x41/0x60
> 
> Just use the buffer size as argument to fix it.
> 
> Fixes: 226ff2e681d0 ("usb: typec: ucsi: Convert connector specific commands to bitmaps")
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

I've got a laptop that can't boot 6.13-rc1 or 6.13-rc2 without this fix too.

Tested-by: Mario Limonciello <mario.limonciello@amd.com>
Closes: 
https://lore.kernel.org/linux-pm/93978193-1273-4954-893a-f27528ed1d0e@kernel.org/

> ---
>   drivers/usb/typec/ucsi/ucsi.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/ucsi/ucsi.c b/drivers/usb/typec/ucsi/ucsi.c
> index c435c0835744a..69caae84879e9 100644
> --- a/drivers/usb/typec/ucsi/ucsi.c
> +++ b/drivers/usb/typec/ucsi/ucsi.c
> @@ -651,7 +651,8 @@ static void ucsi_unregister_altmodes(struct ucsi_connector *con, u8 recipient)
>   static int ucsi_get_connector_status(struct ucsi_connector *con, bool conn_ack)
>   {
>   	u64 command = UCSI_GET_CONNECTOR_STATUS | UCSI_CONNECTOR_NUMBER(con->num);
> -	size_t size = min(UCSI_GET_CONNECTOR_STATUS_SIZE, UCSI_MAX_DATA_LENGTH(con->ucsi));
> +	size_t size = min(sizeof(con->status),
> +			  UCSI_MAX_DATA_LENGTH(con->ucsi));
>   	int ret;
>   
>   	ret = ucsi_send_command_common(con->ucsi, command, &con->status, size, conn_ack);

