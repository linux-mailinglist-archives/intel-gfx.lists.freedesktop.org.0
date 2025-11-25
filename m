Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDC9C87503
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 23:28:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECC5B10E4A2;
	Tue, 25 Nov 2025 22:28:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.b="FkYOxOU6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from PH8PR06CU001.outbound.protection.outlook.com
 (mail-westus3azon11012047.outbound.protection.outlook.com [40.107.209.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5142110E4A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 22:28:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qVR42iBJWLTJz2Zr7oA+GZXymixP5XuHDM0jPSvnE2ZE8oNtrowD/Cb1hp8zieVS9QgVbTi9FbXBUHb9U3o+VeaxAmZCf3oNmEHXY81h96+eRxkuwNvdwzC+SRgHgddGpO6Hh7FySkti8Txt6kGMxhn+Xtl4bZGv/aameBF3B90znCNq7pPBiklpljfSuO4fB0c+CDm8EEcUJyc+QemPB6SFTIMZWk5Y7A1pOV2sl2DVvRQRKxHRdIPloIRwKROa+CjsPzJhHn+ceXRjc7EbACatUyWDjk/msBA2+5/J80bjmnnydyNRnP1Ki3v/9MDQ2xgm9BvvejVj8MqvOXPGLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5pXTRMu+qu9htWvAh0VHDe3ed493fzqKMl8Jm2ygoGY=;
 b=lGtLcQWog/MCKGUiY7YPS9s+Troq+N9ewIGxDL5yfvM/K0NQ2IQLiIdNsvRW2yO2vlYEC6xyhMhgCTiwBp4ra4pDym9UVBwgMqPRrTmjuR+UpKcixVNGEkPmeKYWArsL7k8wUjJj5qABiU363D9qfmy+UcdJqU1LE35a/O+hO/dUB/ErKCAvCXs4gzhBFigorRQDfdrREkxurtkh5eN9G5+ovtNZKeLpv6o6a7dGxdz6W7DAMscmBgZicJhASUwUSbg5Ehls8rQV3Zk7bnCmNx2W9mDNCtAOYBggQoX3xPe342wh7Ur7CrcFpaD+i+DSjslFbZyKjdgctIlI3QJ31A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5pXTRMu+qu9htWvAh0VHDe3ed493fzqKMl8Jm2ygoGY=;
 b=FkYOxOU6x6zmg0hdX0h697W3Bq7yk/Hw6xXC8Va1RDK1S6ABCqf6n55gq6/JsTIliNqPLde+UHA3l361Ld6Z49uia4+vdw/YL74rCoW83Is5dDjFy6cuA/5EGNJ+o6Swf6s9a6ad6UCe7Jbr3LeUEdz3+B7bTuVHarfPRqmtlQbarj+owI7htS1vRJgyEMDfHVipZfkLSrK54Oay8tELqeHTVdZyMgyHcJ2SyXy5B/cuU5F+lYYiE9V9/fgvkJK+vZz7shuxt1XGAUTPxorAhjJY9mRymL4ZwTuWB0yqTAeea9l7yHGdiyYLrdEwRlo6frzCxZ1GSSY8+ZdrStVb7Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SN7PR12MB8059.namprd12.prod.outlook.com (2603:10b6:806:32b::7)
 by CY8PR12MB8065.namprd12.prod.outlook.com (2603:10b6:930:73::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 22:28:52 +0000
Received: from SN7PR12MB8059.namprd12.prod.outlook.com
 ([fe80::4ee2:654e:1fe8:4b91]) by SN7PR12MB8059.namprd12.prod.outlook.com
 ([fe80::4ee2:654e:1fe8:4b91%2]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 22:28:50 +0000
Message-ID: <ed8a6d96-af44-4c20-9078-ba3212bd2591@nvidia.com>
Date: Tue, 25 Nov 2025 17:28:48 -0500
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IOKclyBGaS5DSS5DSEVDS1BBVENIOiB3YXJuaW5nIGZvciBncHU6?=
 =?UTF-8?Q?_Move_DRM_buddy_allocator_one_level_up?=
To: intel-gfx@lists.freedesktop.org, Dave Airlie <airlied@gmail.com>
References: <20251124234432.1988476-1-joelagnelf@nvidia.com>
 <176410024265.27009.16016806541281475502@a3b018990fe9>
Content-Language: en-US
From: Joel Fernandes <joelagnelf@nvidia.com>
In-Reply-To: <176410024265.27009.16016806541281475502@a3b018990fe9>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MN2PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:208:23a::21) To SN7PR12MB8059.namprd12.prod.outlook.com
 (2603:10b6:806:32b::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR12MB8059:EE_|CY8PR12MB8065:EE_
X-MS-Office365-Filtering-Correlation-Id: d090b89c-ed7f-4cb9-1ea8-08de2c7201ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEFXTGpoWENtcmJmRDRrREtSZS95eVF2YitEQ2hqbVVrcHVDUEswSVJoOUZS?=
 =?utf-8?B?b3I5UFJVcngrNy81Ukp4WGtacHBSQmRyd3dOdzRlcDlIdEdUMlozdlpFWXZL?=
 =?utf-8?B?SThpa3djRHY4UVlhd1BLN3F5NmpVRDZrVi9hdW84MDJwbTdaZE02WDYyZVF3?=
 =?utf-8?B?ekkwaVphbEVzNXo4dW1EOHNFakRSaXgrZGZRUEtEbHBWb2dBOXNCcEpTdmFw?=
 =?utf-8?B?TmRqdTJkR2l6M1VaMnJOeDJGUXdzU3NGUFd0YXlDZlRzY3gveWZsREdaZ2NX?=
 =?utf-8?B?MTNDMXRsVWk4QmRHRzZFYnR2TGZkUDNFdkQrZUtwNmkzRTdTa2l5RkdKSFpK?=
 =?utf-8?B?dUtWUEo4Y1c0cldITE9mYWxZTUJ2YVNkalRBWHgweUlGUmdibWRPbFBEcElu?=
 =?utf-8?B?MHhINUd0SUNocWsvcFh5dU11NmQ1cFdWN1lqajl0akkrVW1RVTBuYWkxTHZy?=
 =?utf-8?B?RHZJM3FpV296MUZBU3hHbkZ3Q203T0YwYlVtS0ZMMm5oSUNZZ2lESS9nNzJp?=
 =?utf-8?B?cDVhU21qQTR5U1A5cFZ5MVpwOXNJQ2pUMG5XWXIzeVI4YVg2S0NMN2d6cjQ2?=
 =?utf-8?B?b2oxQzZEZmhTT0gydllNSXZtRDVVeThqVTRNS0tKaW9yc1VWcHh0RkZvWVd0?=
 =?utf-8?B?STNyZlFJc2cveC9xRVdZMHhJeXd4dUUzT2NUWGliSXVFSFIyMkhjelFZNzdC?=
 =?utf-8?B?cW9rTC9tSmVYM3QyelNWQ1dkOTlYTklNVHpDNUtYTjhEL3oyVDRpK1lOWFNx?=
 =?utf-8?B?eHhPOXAvZ042SWI4aEdCOFJlWnpOWU02eUhhK0NQQVRaaEdEZ2R0am5qY0kr?=
 =?utf-8?B?ZytDdTBJVWNZSzl3UHlDS0tSY1cxamMzNDg0dkRUTGJjWmhYRHEzaURQYnVP?=
 =?utf-8?B?S2xPQjh3ci9leDQyellKYnVjNHRwU3diSW5hNmZ3b2RXeENFR3Q4cmpaTGR0?=
 =?utf-8?B?UjU2S2NzRXpXWHdscmYrVWh0bjI2Wjd2Ym15U3FKdVNuKzFMZCtTb2liZXM4?=
 =?utf-8?B?eGh6L0ZsMFdLTVVhcTVoT3JHOVl5a3dxbFJ5TGJBb29MNTZxVFdzUm5wVmNN?=
 =?utf-8?B?MWhaeHpHMzhoSmk1Mi9NUHRZa1luWTN0dUJmcnE5TTBYQVN0Z3pCcW1iS2k3?=
 =?utf-8?B?QW1BWC96aWdzLys3dCsxVDY4YVMzcC9JV0xWVmtVWlBNUDJLVENQbFdnNitS?=
 =?utf-8?B?SGk3UjNCUW4xMkJHWGpMYzVqdFFNVGdiSjluYjVLTUhETWl5NVVtaVNoRnlr?=
 =?utf-8?B?Vm13eUFZNjdBQXM2UDhRYkFFa05oRGsvZEZUeVN5WG1DN0tKdWVLR2prZXJx?=
 =?utf-8?B?bmlYRVlaaFFiY1NlcVZ6K3FYTTZUYUZMTG8zSXRQcE94cGFiRlNQQlc3NzlY?=
 =?utf-8?B?aUJRL242Z1NiaVBDZXBsQ1BueVpuT2c2aDhaZW9JN1BNVnpRa2JjY21zUDVy?=
 =?utf-8?B?M2tDdFFpdGNqalVCMmZxb2Q2Tm9wZ3JXa1J2WTZpMGd3RHJPd212bFN0OEtV?=
 =?utf-8?B?a2x4VTR1elBlM29mM0F2L0w4VTF2VDRtRWtOKzNpQ2xqMUNYRnJVajZFbWs0?=
 =?utf-8?B?V3p3cnYvS2c1c3RvYUNRUjYrbW4zQXRETVZCU1RKRGhQNVYxUlJDMFRja3hS?=
 =?utf-8?B?dlhmZVg0VWVuM25aeVZtTjQyeERGT2l2LzVCOTVYZkxETFZXR1gxWlhYZHhD?=
 =?utf-8?B?ckZBamk2UzFVdFRMUHE4ZnpObzZMazJCdEY5cDhpY3psQkorcmg1TmlnU3M0?=
 =?utf-8?B?NlMwSlpWNjhHT0dEeXhJb3Q0UldXcmRzS3hjMXJwUWhtZVpSUkRVN2JhR0s4?=
 =?utf-8?B?Mk4xYStWQ1lnOVBGeDIzczBncjdORWE3TTY5OURKdHdkZkhNNlFjTXdvVEZw?=
 =?utf-8?B?KzNWN2JwZnVrMUdZV2I3a2MrZXhKbDB2T2xIUFhzb1RVWVhtSjJFYmgyd1lQ?=
 =?utf-8?Q?0vg3MFKQwDll8jp3TcqmwRCm8r/xus7L?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR12MB8059.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjA0czByc3JXN0ZrWVI2bnpIeVk2a1p6WU4vdGtvbUxoV0xzbDBXcEoxbmR6?=
 =?utf-8?B?VVhHc1VPUXZoZm50ci9TUkZWRDhWV0lkQVJ3RzJ0aTJwZE0wZjJUZW1Obisr?=
 =?utf-8?B?a3MwM3FVck5IZWtHZFhKS3l6WXN4Z25pOGJmQ2t4UlM1YStyWFQwNjd5UWZE?=
 =?utf-8?B?N2crSVo5U3hxVXRmbGI2ZU9qTlZsMlladDNEZVNxRDZXMEdoZUFIUGtTWm5p?=
 =?utf-8?B?dDZGUHZsam53bEpVK3o2UzFhalBXY0plR2ZWS2wxYmQ0NWtxMlNsK0p1UDNX?=
 =?utf-8?B?SjdBU1Q1QldiWFgwODVUQ3h0RkprOUU0SzBGWk1VcG1BL2xoc2tXOW01eUt5?=
 =?utf-8?B?bkllSkg4WXNpa2l1U2pjMDdHRmlOSXlvdjlnMDY4dGk5cjEydTF1bVVIRUpr?=
 =?utf-8?B?bzRxL25PNzd4dTNzbnlxQnBZTGh1NnY4NmhGZlI4ekpUaXBobWE1Wk5NZ0c3?=
 =?utf-8?B?U29hQWFwMG9YUzdCQlR6NWxXb0Z4YWVrTGV3cnl0UkJKYlJxRTRsK1EwVVhD?=
 =?utf-8?B?bUwvZHVXRDE2KzRocG8yN3dVREZHNEcyNnBmcmVXdTI3cWtjZ1czZzZlMHpp?=
 =?utf-8?B?MDdlZ2UzVzlhQXhiUytLdUE2d25aOHVJdTU3YWQ2TDduamh5dmFoT0hleVRT?=
 =?utf-8?B?eHpoNWpRSUdZK3Bhd1lOOW81L2taeHRzQlpQOXJ6alROa1B0WnRYYVNYQUph?=
 =?utf-8?B?UVZJbFh5Y1F3VmhvRVAyYVVXeFo1V25UeWJMZ3ZkT0ptemdLWFYrN09hek5N?=
 =?utf-8?B?L0QxSkdVcXdFaWlsSTRUWU9iTmpCRmwzNFlKY3pGczRSZDNvY2VueWRRM3Fs?=
 =?utf-8?B?aFFWVFRkREFKY2Y3anFHeldBRzBYK0hFKzJxVWJwZXk2am9ndVhlOXA2U3pQ?=
 =?utf-8?B?Wm9iV3FkTUx2dnhjV09IUHYyTFlrZkV0OUg3elM4Rnh5K3daTk9xd08yMFRJ?=
 =?utf-8?B?a2hEN1dyeTdYNFRCekhiQkpLRmJPWjI2UzlydEQ1V1hWVGhHZmxveHhGbmdS?=
 =?utf-8?B?U0F0cnVIeUFQUndqcXRML3N2NVVEbEVhaUNiMjVZemlVbmIvN2xncjJKd0tO?=
 =?utf-8?B?VHIvOHA2Mm43a1pPc0RSWjFXWGRGZzBJZUIvNlZheENRQVBXaFliYVNrWE91?=
 =?utf-8?B?MmtzMUNzN28ydWFLdkE3VXg3MGo4OHFaMVc4L1lodEt5Z3F4MFdFTUhQVXRl?=
 =?utf-8?B?cEZYYnJwaE1hbkpUbzZHU2hQbG52WGFia212Yjc4aktqdDRYczNST29ZL2Q2?=
 =?utf-8?B?Yk5JeVFSZUxIay9DekFCZTg3VEJYb3RJQjRkajlKVE1PNk1TZUZUV0pyNnUx?=
 =?utf-8?B?TkhYejVXRlJOU0Z2Tkh2RnBBVVM0TXRSYitrY3h1SVkvS2dMTkFHNnZYV2Uy?=
 =?utf-8?B?RFR3SmREdHpNd1hxYWI4UmJTSGdua0J3cGhYRW5WQzMvcjlaR2RQZnFOZGo5?=
 =?utf-8?B?ZklwWmtQVCtqSmpBREx6Mmtha054TkYxVVpVa1kweU95Sno2ZVozbGdER2ov?=
 =?utf-8?B?TWVsOE1OSEU4TTUzZ25UZjlFZC80QXV6bUxqZHoxOFdDNEdwcmFFamJyc0tJ?=
 =?utf-8?B?b3VseDh1ME5OeE9QQlZwTVR2NzNxZ2IyWVF5bE9lUWRpZzhCZFBpYlZRbjds?=
 =?utf-8?B?a2lGNE9SR1M1S3pHQlJKQU5ZRDlKb1dsWG40bWdVWnJrc2NCWVZqTCtCT1BF?=
 =?utf-8?B?cWVjVGxVYUVVbmVDaFhjNFdLanRKOWs2a2EwVElEeGg1Y2Nod1lycHFnVmF4?=
 =?utf-8?B?VVl6L3V2ZUh6VUdheVNEOE52b3A5OWUrelUzOVNrUXNFQ1lGellUMHBJTjZ6?=
 =?utf-8?B?Q2VEVVBCV0hwVUFYMUNtcWQxTFNRbWRNR042RXZnNnVrQUszc2FxU3hxbWZN?=
 =?utf-8?B?YXhJSU1pVHpJRHVUeFJidjRCUm1BSWZmcFNneUVKcUlVM3RPQlArRDduL1Fx?=
 =?utf-8?B?L0lMUHJrTXN6UHU2Tzk1Nlp2WTljY2d0TjBkU3dMT1lwR0lwV3dXTi9FU1ZL?=
 =?utf-8?B?ZE1CT3VTUzFPSytNL21FMi90cHVKOE9lb0NGdFduUHJxRGdkT3hFK2NFVWpL?=
 =?utf-8?B?bnBQb0tlV1JvckZyNitxZGdONDB2VmN3MDV6QzR2ZGthd0Q5VERJRjl0bXBB?=
 =?utf-8?Q?TfCbCGYQ1ymGnwtbCq1Y48JMW?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d090b89c-ed7f-4cb9-1ea8-08de2c7201ef
X-MS-Exchange-CrossTenant-AuthSource: SN7PR12MB8059.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 22:28:50.4583 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MSzY5dM0UXCMtYNFf7UFGavQTrz4lhXNBJVJMmlz7QhpXm9VXeY9dDpFPK7DHMNWjKBhacl/QZ13qNNKrk/6Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8065
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

Hi,
I am not sure about fixing these dim checkpatch errors because are from the
original code. Dave, do you any thoughts? Can we ignore these?

thanks,

 - Joel

On 11/25/2025 2:50 PM, Patchwork wrote:
> [You don't often get email from patchwork@emeril.freedesktop.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> == Series Details ==
> 
> Series: gpu: Move DRM buddy allocator one level up
> URL   : https://patchwork.freedesktop.org/series/158061/
> State : warning
> 
> == Summary ==
> 
> Error: dim checkpatch failed
> e9e4c6aaaf8d gpu: Move DRM buddy allocator one level up
> -:39: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
> #39:
> new file mode 100644
> 
> -:51: WARNING:CONFIG_DESCRIPTION: please write a help paragraph that fully describes the config symbol with at least 4 lines
> #51: FILE: drivers/gpu/Kconfig:8:
> +config GPU_BUDDY_KUNIT_TEST
> +       tristate "KUnit tests for GPU buddy allocator" if !KUNIT_ALL_TESTS
> +       depends on GPU_BUDDY && KUNIT
> +       default KUNIT_ALL_TESTS
> +       help
> +         KUnit tests for the GPU buddy allocator.
> 
> -:95: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #95: FILE: drivers/gpu/buddy.c:23:
> +       BUG_ON(order > GPU_BUDDY_MAX_ORDER);
> 
> -:107: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #107: FILE: drivers/gpu/buddy.c:35:
> +       BUG_ON(block->header & GPU_BUDDY_HEADER_UNUSED);
> 
> -:382: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #382: FILE: drivers/gpu/buddy.c:310:
> +       BUG_ON(mm->max_order > GPU_BUDDY_MAX_ORDER);
> 
> -:427: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #427: FILE: drivers/gpu/buddy.c:355:
> +               BUG_ON(root_count > mm->max_order);
> 
> -:428: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #428: FILE: drivers/gpu/buddy.c:356:
> +               BUG_ON(gpu_buddy_block_size(mm, root) < chunk_size);
> 
> -:494: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #494: FILE: drivers/gpu/buddy.c:422:
> +       BUG_ON(!gpu_buddy_block_is_free(block));
> 
> -:495: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #495: FILE: drivers/gpu/buddy.c:423:
> +       BUG_ON(!gpu_buddy_block_order(block));
> 
> -:597: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #597: FILE: drivers/gpu/buddy.c:525:
> +       BUG_ON(!gpu_buddy_block_is_allocated(block));
> 
> -:845: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #845: FILE: drivers/gpu/buddy.c:773:
> +       BUG_ON(!gpu_buddy_block_is_free(block));
> 
> -:1221: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #1221: FILE: drivers/gpu/buddy.c:1149:
> +               BUG_ON(order > mm->max_order);
> 
> -:1222: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #1222: FILE: drivers/gpu/buddy.c:1150:
> +               BUG_ON(order < min_order);
> 
> -:1348: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #1348: FILE: drivers/gpu/buddy.c:1276:
> +                               BUG_ON(!gpu_buddy_block_is_free(block));
> 
> -:3135: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
> #3135: FILE: drivers/gpu/drm/drm_buddy.c:40:
> +       drm_printf(
> 
> -:3149: ERROR:OPEN_BRACE: that open brace { should be on the previous line
> #3149: FILE: drivers/gpu/drm/drm_buddy.c:52:
> +               for_each_free_tree(tree)
> +               {
> 
> -:3157: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #3157: FILE: drivers/gpu/drm/drm_buddy.c:58:
> +                               BUG_ON(!gpu_buddy_block_is_free(block));
> 
> -:5364: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tree' - possible side-effects?
> #5364: FILE: include/linux/gpu_buddy.h:28:
> +#define for_each_free_tree(tree) \
> +       for ((tree) = 0; (tree) < GPU_BUDDY_MAX_FREE_TREES; (tree)++)
> 
> total: 1 errors, 15 warnings, 2 checks, 5201 lines checked
> 
> 

