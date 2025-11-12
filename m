Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 823D7C54B78
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 23:32:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71A3110E7B3;
	Wed, 12 Nov 2025 22:32:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="q1cv878j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com
 (mail-southcentralusazon11012054.outbound.protection.outlook.com
 [40.93.195.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F64310E7B3;
 Wed, 12 Nov 2025 22:32:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t4qusthuOD54G42JbdmNVuWOgM7VZVO4c8fdbac1fs6NLPDmrjvyoffNNAI/YSYj4S3Ka+C4woET2x64miHYJgJRzW9bU54kGghD4G9N/NiMiXlq0CSS90nJiJnfVk0JpqSBKvEpHZiNTqA5jUFPxGpCYmJvGgiMF+lMLeHm1qWoB3H+Ddz4rJ5p6CwrmaQbKNDkG/fKWolHE9PROxH2jk5LUvZ3F3Qg/DLeprL8FLCcyfdnMgm06nItIHm0fwvDhV7qtI/PJAgaclPFd4YX7fAaOSnRwv2RyMIuRrm5McYhlD+Ic3wm8vVq7ZD9NNq799qeoK4iJL0/SCCVHSMRCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5eVt05BR2WYQHXezQxNwFAlQ71mTr/9cwvXWxdKkDPM=;
 b=I6c2padax/4WvHNL0GtrxKkhIqykpcrYVKOFVQ1uSkZVlwOz/DMpaEuO24GW/XVgDSbBXVBTKlfqnpkP7C272Y4RKYdrbFuSzS2t7DVIYeib/tdrm8gt0VS/Kwh8opNL5LfVS7V2igf5/95dQQ1Ph29uR8xVoh2a9+cmjyEE9LI/ISPnBLlvH+LJ8ehW6sHGPAPGcyuEUeQzHCiNowqdktLjohowS3jx/Z9xzRrpIXwVc8XqkaMDjaVQXTRjquW7lbksAyZwxIfdlAykRAk6E5P7Eq3KRbJAKuDneYnJ5unnKrYKzoztGGXJaWDWu/fSbenxtE54E4GQaNJW95QA/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5eVt05BR2WYQHXezQxNwFAlQ71mTr/9cwvXWxdKkDPM=;
 b=q1cv878juOfofNIqt2do2IExnEpZK03//Ofgel9h7+NAhARU04QtV5zTqS7geDl8ubWJ+bOe0b4KnhtqU4U75rvFce0vxIGiGBJWIuBTns3UjrBUl5vVh7aRzhysoSqC0sUFfUDX7QOzaSE2wWhFe5+cqma2MDxNx0U69ufb6zdKMKhK9QzeC9NkhfbmaNRutRbChpPonASJw29ZFac6RwIlYApdyAm0oJxhYq7F+W7cJo/FFDYwOw78rOEk+pt9u6nCUHfktKdCrBUhHEhxBj2dV90euFsktW3exPZpnEz7gwz3JvzhniKSIWx8GqBcW8uoEPPfa2BEsWVnjlsy0A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by BY5PR12MB4036.namprd12.prod.outlook.com (2603:10b6:a03:210::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 22:32:21 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 22:32:21 +0000
Date: Wed, 12 Nov 2025 18:32:18 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Kevin Tian <kevin.tian@intel.com>, Lu Baolu <baolu.lu@linux.intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, matthew.auld@intel.com,
 baolu.lu@linux.intel.com, iommu@lists.linux.dev
Subject: Re: REGRESSION on linux-next (next-20251106)
Message-ID: <aRUK8vDZ3dE1zNxL@nvidia.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
X-ClientProxiedBy: BN0PR04CA0099.namprd04.prod.outlook.com
 (2603:10b6:408:ec::14) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|BY5PR12MB4036:EE_
X-MS-Office365-Filtering-Correlation-Id: 31822f5d-b9d4-458d-b248-08de223b57f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dmhFYTJDR3FKaTVVOUlxQ0kyUFIrdU9XaURDdlBWZ2FZSE5EcGxLajB0MC94?=
 =?utf-8?B?aUxMNlM0MUtBa2xpTmtOMVNHbVZnSzkvZkhtOExqbWdVRUMrbFltN2NVUklB?=
 =?utf-8?B?dGRONVBtS2hXaWpsbFJuRmZzYUc5ZzVwajVDZUZZMXc2emhYaUJIWWg3VmtJ?=
 =?utf-8?B?SVFEdm1IV0FpSFZwMm9QNnRob0NwV3djZXFic2VmMHYvZnRUM0ZlVmZ3dUds?=
 =?utf-8?B?R1pLQk5DOGl1U0owTWluTFoyUkFhd2dkSWIxU2U5Q3RwbVhSMTRnWnVrcEhw?=
 =?utf-8?B?MTZBSEh0Ri9hT00zdzdlV0VCbkVHck1kcTZlYzVKcmluRFpjMlVXblZVV2Fk?=
 =?utf-8?B?SkQvS1B4NlpJL0VqQXdMUGsxUy9RNGJHY3ZtdkhUZW91NEovamIrVzJNd3Fh?=
 =?utf-8?B?eC8vNk9uc2liWlk0dWQ0SkZaaDBLaFRMVXcvTVBON1pQNkVIOXNFVC9lRDJw?=
 =?utf-8?B?TUJWTy9LVzJQSGg1QnV3M21HVlR3d2NPdnBlTml3RHhuWVRuMS82TllHdG0r?=
 =?utf-8?B?a3NkWnp5UE4wY29vaiszdjlZOS8xNjdQUlFNZXdnOWxhQVpoSXQrUlZRVVNI?=
 =?utf-8?B?Z095aVpkazFuWWMzMnhWWHpzK3kxNHY1N2RKTU51UEtTelJTMFAzWlVWdy82?=
 =?utf-8?B?cXNXQ2tvTmNpblFtWnNYQkxIcnVsLzJEbTRIM2daV0V5QlEzSy9jd0huUnUz?=
 =?utf-8?B?QUhiUVgvVGxyM3YrM0dxYVJ0dktheDJlYnY2VFgvNjRKNEppbEUrSmNuNGYw?=
 =?utf-8?B?dHNoenNZT3lEWSs4R0RwRnhFdHBibDlVZ09TR2x0M0VoSlovbURzUURkSjc3?=
 =?utf-8?B?MksyeVY0QTV5NU9Ea0hzZEh6VWhKdEVrL2hpR0kzMEtqRTV6dHNqVW5URnVV?=
 =?utf-8?B?MHNTWDRFQkpzRU9jNGtSWWtDYUdYOFlIcUJQU2paNnM2VDRkTWxjUXRyTDF2?=
 =?utf-8?B?VXQwZE1yR2NJcm1mcFFiV3B6RUpES1I3NVFzQnB0NW1vcTFQbS8rbmluQkZY?=
 =?utf-8?B?ckNOcWNBZFVXKzErYzcyVXFRM0tUZFZPNFRXc3JRakpPOWZ3TW5MTDJRQ1Rr?=
 =?utf-8?B?Uk04VTlhQTEycjE3Zy9mSUZxcFRrZllDb0QxNlBuUHdBWlNjY2xraU5wbWxU?=
 =?utf-8?B?YmVPMUw5YWtoeHZzMzFDaDA3cDl0azhzaGhYaURYYkFWdXpmQXhNQmVKUjZ5?=
 =?utf-8?B?ZzVrcnhnbE1PZU9ReG5LSTV5d1dnU3dueHhsM3JiajNENWpZb3NGN3hweEth?=
 =?utf-8?B?Zk83dU9nZkFVbW8rU1JHYjhISEk0TkFkOXFOelc1Y1VKeW5rODVwWFhhdDR3?=
 =?utf-8?B?MVJtU0FEK2FmdUlRL0JrVUdkUVRNQ3ZoSWtHbzhUVVZJcWd1MlBoaFBsZ2c5?=
 =?utf-8?B?czVWaENNRkRkUEhJbXF1QVluMVBIOXNxV0ZIOG90aHAzRG5MOWhOYjAxYUJ5?=
 =?utf-8?B?dG5ldDdRVVJacXhFYUNqOTdVM3YxYWthbS9DTnhiemFranNxVHZ4RkhRMmJk?=
 =?utf-8?B?MzJhV1VmZ1BQbi9lNFJKU3J2b01KMWY3cHBvWFhZbldIckU5eWVybVQ3NGFJ?=
 =?utf-8?B?VWN2ckViQldmMFBHQ1lyOUI4d25VRVc3NFpjajJDb0JYdFQzdWZxb2p2L0Ju?=
 =?utf-8?B?NjQ1REV3OHNnbS9UbmFSOVkrNXZBRWUxU21IYWZVUCtjVWw5NU82UjRiOTFw?=
 =?utf-8?B?cFNQSitxRzRRQW5IN29Gei9ZMUZMdjAwd3pwWFc3ZnFkNGxXWGd0NllRUEl4?=
 =?utf-8?B?ZXJSZkMrL254dkdtcDN4RXd3MENIUnluaXkrS1FBTklZMG8zdW9RV05LRWhI?=
 =?utf-8?B?RVk1d0orVWlQbGpBR2dWR3BOdFFtT1g0NW5OWjZwQUQ5NFJzR1pCZm9kaVFK?=
 =?utf-8?B?ZlBGUnAwbHNNUmZXNXdReHBGQmlvZmVtMGJQdWtyOWhRTTZtWWM2ZzNQc2to?=
 =?utf-8?Q?bciKFC6kNQHHvAmw3Ut9g8eJ8kVaqz4g?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3613.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QmFKZnlpMmpxR25vQ0xtZUhtYlVUaHFkaGtsYXU2dWR2a0lTMDJJQUdpOHB3?=
 =?utf-8?B?RERuWHBBTFJ4eDloY1NtS0Fxa05xdm5pcTd3bEI2VHkzRldhOEd2MXZEMzhM?=
 =?utf-8?B?cDhESUR0d0toY3BVY2VuMnlGdEVicXplOXA1L210WEZqZVBrWS9PTGdOamUz?=
 =?utf-8?B?cWttYm1vdnhIamVxayt4NVgrSGhjMlJlN01reUpwbWNZdWw1QWpFV2tFRXlL?=
 =?utf-8?B?SzlodFNGY05TMlZ3M2ljaXBoT1dmV2dtRjZZUUM2aEVFRURGbk5FWHgyR2Jt?=
 =?utf-8?B?RFRiaHhId2dUTnoyY1FxcXlNdWovUExDSjMrQTE2QUg5L3pYSnZmTVdCaEJ2?=
 =?utf-8?B?Qkxqck5YL1R5Um5tTjdTcGNhajFIZ0lEUjVtNHdWaVJmNlZ4SHJ5bWI1bTlM?=
 =?utf-8?B?NnJIbGswd1NwVHJBUWR4Y3YzbUd6V25jSnZ5WEYzQmp4NnFZZS9mNURZWUVs?=
 =?utf-8?B?MFhnODNibWxPN3dqMnVuY2sxdHhJeVdpblBSaXp6Q3JzbDI4OFI1d1FmKy92?=
 =?utf-8?B?ZTVScVZmdGFFK3I3VHIyZFgwWThURHkrSXpwMVJEcjhTN01hbEgrNDdlM0t2?=
 =?utf-8?B?OVR1RWxsT0dUSmlpRnp0WUZSS1ZUVlFHZ3o1YkVsS0lLclA5a25MSzJBaHI2?=
 =?utf-8?B?NlA0dkcvZVZaVUpsT1QyeTJvRmMyQ0I4cWFuLzZYbjNYNkh3SDlRQlpDUHJT?=
 =?utf-8?B?cDQ2blVtMnhYeHZQaDZkRE41NWJ1cis1a0cwN2xnbUtTUThhVXJRMGxEVXZN?=
 =?utf-8?B?UlpmejNHSVNvaTFtcXkvVVFXUG9EVnFGL2U1dW5NaDlSdFJnamdnUXZtd1cx?=
 =?utf-8?B?QnEzakVmVENtNnlHSk80VWhJbVVacXZ3WlRYS2lqMWMrcmRJVHAvKy9KMmN0?=
 =?utf-8?B?WTZrSEcwR3FUSW1GbHlKZ0tVZkJxc3d2TFlveHJldHA1R1h1OG1RMmE4T2tJ?=
 =?utf-8?B?Y3dkVjBUTENRa3NNUVVFUTB3Q1ZVcURyUUVlMXAzSEY0ZS9Ub2c2QlZFQ0ov?=
 =?utf-8?B?ZmdKbXprWFIraHlXNlArbjM0QU5SSXZJQVJwYnVsQTVneitlSkZudjlJTXdi?=
 =?utf-8?B?ZFZIZmNoalpwTVA3bk5MbURVZHIvbExJZ05QUTFxV0pNRlgyUWdOVFRJTElk?=
 =?utf-8?B?bDl4L29tT1IrTjNKY1RTSTE2Z1VuczZ4VzZ6b1o1aFltSG5NZDIxYzdDZlcz?=
 =?utf-8?B?RFpoZ3N6bkV2Z0RGRGI5QTJkcjN3NGFpSXNXVEhpbldYRWI4Mmt5aXp4QnJR?=
 =?utf-8?B?clUrUHc1WndRWllSeC9DZ3kwTm5Jb3U2UFJkVzFUcFZRNEhKWkI4UVRYK25D?=
 =?utf-8?B?SVBkS1NLZXZCOE85RVVUWVFKZUlPSGtDMmNOTGtHNUM4SWVqSkZDemFOanU5?=
 =?utf-8?B?b2ExTlZyZWEyTXIvRWY5UitZdU0zTjhVRmJOaHM4RmFsVXROeDhZQlBWV3B6?=
 =?utf-8?B?UlkrSWtrNDQ3ZGZESHJ4UTRSYW1SZlFSR3RIL2xmeEJGWllQVkJJVnZQTk5l?=
 =?utf-8?B?bW9WdCtNSlU0QlZZNW5LTDFjMG1ucC9iU0xkQy83K0JGV0ZnUmZKQytHendr?=
 =?utf-8?B?T3dNRnEzbzJIRkprbm1UNm55WWxMbzhNOEtUVU9iaE4vdGk5NXozdWNFcHN6?=
 =?utf-8?B?Y1hqZm5ZV1FtdjBaZmQ5TC9EajN6L1U3Q0NOOTNhUy8yZklLMzZ6cnFTR3pQ?=
 =?utf-8?B?Wmx2UVBMUSs2L0NZQUVrVjVwV2RHUGlKOTVlaXFxQmJ6cTlvSDg4cXhTV3Ez?=
 =?utf-8?B?eWNORktDY053VzlIWHZhTjdnb2FDSDN5OVZTeXA1WVNuak9ndGpvVTFER0RM?=
 =?utf-8?B?MWs5RndNVkpiN1ZQTFNpd1Fhczlwcno0ZnQyTVgzNjNOOS9BbXM5TEl1VkpU?=
 =?utf-8?B?bWltTzlhZW81ZXU0Nncra1phVERCTTlKU0MzOU1uZ3l5Mlg3bnNKVlVBYVFo?=
 =?utf-8?B?dFBqVDc2Ym1rSjhsRTQxTTh2YW9ZeWlkMkFGSnVsZllDL2lnclIybnc3QUZv?=
 =?utf-8?B?M2x3YUVoa2QyUkhpYlVQOERwMnhZMTFsVGtucExPV3J5a3FUQWFFZE1QK1pl?=
 =?utf-8?B?ZVNhNzF1b1J3eVBxMExKWFIxb25tZGtnRU5XWEh6eDRBc0x5eVl4UUpkbmJB?=
 =?utf-8?Q?lRqDeCWD/6XvJwCEytGVW2i+9?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31822f5d-b9d4-458d-b248-08de223b57f0
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 22:32:20.9226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ryLd+v22RwuYDmNWmei0XlwNh9LohWQyKRu0y/NC+NEP/w4k1axbeWpvl+wQpT8L
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR12MB4036
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

On Mon, Nov 10, 2025 at 12:06:30PM +0530, Borah, Chaitanya Kumar wrote:
> Hello Jason,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in
> Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on
> linux-next repository.
> 
> Since the version next-20251106 [2], we are seeing our tests timing out
> presumably caused by a GPU Hang.

Thank you for reporting this.

I don't have any immediate theory, so I think it will need some
debug. Maybe Kevin or Lu have some idea?

Some general thoughts to check

1) Is there an iommu fault report? I did not see one in your dmesg,
   but maybe it was truncated? It is more puzzling to see an iommu
   related error and not see a fault report..

2) Could it be one of the special iommu behaviors to support iGPU that
   is not working? Maybe we missed one?

3) I seem to recall Lu tested the coherent cache flushing, but that
   would also be a good question, is this iGPU cache incoherent with
   the CPU? Could this be a cache flushing bug? It is very hard to
   test that so it would not be such a surprise if it has a bug..

4) Nobody has reported any other problems so far, so I'm inclined to
   think the map/unmap is working - but maybe there is some edge case
   the gpu driver is tripping up on?

The lack of a fault report is very puzzling, even if it was #3 I would
think a fault would be the most likely outcome of missing
flushing.. The lack of a fault report suggests the wrong physical
address was mapped as present which points to #4.

Can you investigate a bit further and maybe see if we can get a bit
more detail what that GPU thinks went wrong?

Jason
