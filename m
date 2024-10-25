Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBAC9B040F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 15:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C9510EAC5;
	Fri, 25 Oct 2024 13:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gGdNx8eE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5025310EAC5;
 Fri, 25 Oct 2024 13:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729863127; x=1761399127;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=W+rkTqEXSA83ESQkTNQ9ilaSpfMAUM0F+GRzpzofXqQ=;
 b=gGdNx8eEZybbN1dXuU1dWcAfAs8FRK2po6TuptiZo1CNuY6KhSR+PLLv
 24fB2Tx4EDlwmqjkC854/7Hhn34Kpm25cGagwxIOg1pHBPOpXv8NYhMfU
 AbLk3hlwAZrf9HQFIsyJjbI/wRYjD11Ig1YV140MVRst+BpG7JXPsXRsB
 Rx1dXE6Fdo0BonJqNpXfOK1sNRzh+k9+O70bxFjEmeVHSYAmlxsPcAzk1
 FyNZxi0m6wDHSS0itp4SzZrzz88UTUVKGaL1NBB6+sP2tJHqe6ywU4Vv4
 /45DSz12+hFS0L7exgkBp+Tlz1n6yMIrwxQZR/elYi/u1xmh8zvcEhxDv Q==;
X-CSE-ConnectionGUID: QXz6gScvQce2sMvzK+NSkw==
X-CSE-MsgGUID: u0mADpo8RX2DMJl8I2gLNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="40907047"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="40907047"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 06:32:06 -0700
X-CSE-ConnectionGUID: 8xzFxSgyRvWIX8+qwbvYuQ==
X-CSE-MsgGUID: hctlE2/IT5uZR3rgpYcTrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80516013"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 06:32:06 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 06:32:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 06:32:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 06:32:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BB+8u6K8seZfrWpYdjt3JmgQaJIRUryRwNKujGQJeHibFov5Z8B9aOczkzeLw1E5URnnmx2D1W1nylf1wCv5k0jX42z8QgEzRFQe66BM+VNWlOchu9YRPs86Vm5mW/jmySMEyXdnkWF73P88VK8zBFigVUrZqdaPxZtBYsxKxmvdZ9Wkg/OH2Ty8d+iKZJp85ADh/rSfSQISBVx0nX2PjLiGiFoOc7pY5UFe3Oem1kodJHg1mY65Ewc6bMQq7eguyTXTMRhoyG5X4hSm3F015mXU4VoUeVjnNcCLpdKHkMJGPSB9OwPCUdWDeXa0CO+ojsNwSOLTYylVb2lIx1Xwdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9X+//dcHQrufdHU+ehEZU9j79P7fY6hXJ8lzqZzQgMQ=;
 b=QjsN8Jj0pXTqNjUvsLDdtNW5iICP3A7ffjHeAz9UviaYe8e9YMiHXkxt+HxyINzSYWETkTfKTRBRhUDxF5odLkCSAffi4mngJp+h6CIbFVAMbzNamWf2vzNHyN6dtSDkcgemwHTfMdx9+qkafVYgZj9YlfBUlK3inTexgCcA28qxfzQdpb3Tydl4fv0EbD/dW1BgAP4FZWXdmDjUjKctQdJLqFrf3AmatCzwmgfk7PluIAIblGawKeBhJdblqW9nWnfIZyQTd9mkREYW6MOeV6v7hxyZiDDK3KIZ91uaPOYwBaCgwDwlgkfxeeFX8CLTa6163mfut8QOBqB7VIPUxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV3PR11MB8481.namprd11.prod.outlook.com (2603:10b6:408:1b7::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Fri, 25 Oct
 2024 13:32:02 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 13:32:02 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241024223114.785209-2-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
 <20241024223114.785209-2-clinton.a.taylor@intel.com>
Subject: Re: [PATCH v4 01/11] drm/i915/xe3lpd: Update pmdemand programming
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Date: Fri, 25 Oct 2024 10:31:56 -0300
Message-ID: <172986311694.1548.11080444560306759369@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0219.namprd03.prod.outlook.com
 (2603:10b6:303:b9::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV3PR11MB8481:EE_
X-MS-Office365-Filtering-Correlation-Id: bc1084b9-bfad-44ef-49bd-08dcf4f968de
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkZJdkx0djNlNE9zYjN4bnErRDI2RnN6cis4VzZ2ckZEaTZFVWRtWFMyMzRD?=
 =?utf-8?B?SHVmL28rMnJpNTBSQ2l0MU1uYm5LYXVGZis3SS9PZGcvYkNLVEcycm9uWi9n?=
 =?utf-8?B?NjZEc0dOczRNS3F5aUc5RitjeDRtVnBSQzQySFYwQk1lNU9TclgwdDUxR0ZY?=
 =?utf-8?B?dzZzZ0dWTjhzdWZXaU9Tb0lDWmQ3QmpjeGNxWDNpY1phemdKdG1aM3VsSHh4?=
 =?utf-8?B?NUsyd3ZSWlJDY0k5cW1MV2paWjRieERhamlFeHJJS25XNmNzM09oSzU3d0RJ?=
 =?utf-8?B?OW1nUFFiYzBqZU9rTkZyc2RDZDZMcjZOMDN2RzNIRzFRTXpCRWx4eFRCd1li?=
 =?utf-8?B?a0tUTkZsTFdYNUQzYmY5aDd5dGVpVkJKVlRDRkpaSW1DemdGN3dETzdaT213?=
 =?utf-8?B?c0lYbjIwR1BML0krRlE4WGJBdWpVQmQ4b1N2TThuV1h4enBuUlovZ2N1OHZ4?=
 =?utf-8?B?ZkJOcVcrSWlEV3FMa1k3SWNoSHZJSTVrWmdDY3V6cDdwZk5RM2VaZlNKNTA2?=
 =?utf-8?B?b0t4QXNtOXJ6SG5ZS0JZOXU5RlZJbjkvMXNZWXVEbmx0RnNsUDZpaHJuSlBw?=
 =?utf-8?B?UUt2S0tzeUlmand1UVowU2gzUjEva3Z0NEhrT25BUVB6QWNjQkxKTS9tRmQv?=
 =?utf-8?B?RUo1bzI5bXVGNVROOXZTaUZORVlhRjdZNGU2d0d4ZnZTRldGYlBUK3BVQitq?=
 =?utf-8?B?RTg5TjZJYlozbU94VVNqcUh2OUJ0ZEdsVTNzR0x1aGZ0Uk12bVJXRnFaWHZh?=
 =?utf-8?B?VTJFVGdNQlovZlYwVy95VTVLVHBJajdQWUZCbzhOSkx2cHlWSEVmV2ZjL2M3?=
 =?utf-8?B?TDlJenlaSUxCQmZOVFVONmt2cnNDSVF3RWc0N1lYK243ZDdEcXh0bFJKN3BG?=
 =?utf-8?B?N0cvZzdWb1FmTVFDNk1UWEwxVlFnU0N2R0NNYTI0cjYxSk5JL04zeTlHdlZy?=
 =?utf-8?B?YUkwZ0hwcHhTR3JKTWRkQ1JraVBZQ3pwL29aSnc2ZmliSUdWWGNiOWJtbmhH?=
 =?utf-8?B?Ulg5WWQ5SFo1L0VjTS8xQ3BjUG1BWktuZm1XNlRSd0JtQWg5b1VGbHZQbzdY?=
 =?utf-8?B?UllucFAvSXlJSnI1NzdmWDdYMURWK0R6N2FhVzRBNnFWNkJPc3NYdU5zaVpJ?=
 =?utf-8?B?SmJ6bUUya2VVTjJFNFVvdDU5aXpoQUkrQ2pKdHo5b1g3SDAyVmM0cFZwUUNu?=
 =?utf-8?B?TGtSUy8zQ3EwUTNtZHF3aklLVzRmL3IrdWZhNGJoSHZUUTBSOWxTQjArTG44?=
 =?utf-8?B?UFBsTko1c0pSaWQ4MmEzc3hHbXY5YnFzdEd0OGVPcnVlcXJNem5OblBvazB6?=
 =?utf-8?B?RHJRQjNWMWtwVi96bjhETUhHcWVZS3pPSThKbmlzbDBYKytlNTNkYUVOTjN4?=
 =?utf-8?B?d1FrM01oMkJaUjR1NXBWTEo3M1RRL09MK3pUaGJOR3hIdUlRcUMyZzdpdjRp?=
 =?utf-8?B?MEpwR3pYa0dZK2lDRlV2aEM5NGRwMDRFelZBMFhiR1RKbU0yOENzTWFaaTly?=
 =?utf-8?B?cWp6elFZeHUyVVN3RUdwOUpDSHFPU1loQ3hCU2Zmb1RrZTNNeU1xdXM1TTJh?=
 =?utf-8?B?ZE5PWWNIK1FqZ0dWdXBDLzBXV0EvaUtHVjRyOTluWkNOV2VIU01TdVFaZi9B?=
 =?utf-8?B?VjBWdkRob1FJMmtpRk9VZW9oczJxbWtwSG8rbmdRWXpUQlRGYzFPdGM4bXRy?=
 =?utf-8?B?Q1R3YW91V1llM0MvRkxzWTZFQ0VuRThFdm1ZTGM4cXdNcW53WFZlN0VwTjkz?=
 =?utf-8?Q?lmyqnTBzNKmbiz+2Ks=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnBKNmpnUWtlajdBaGlPdTJoa3hnWVZXb1FNdzIrd0pXT09DQXR0OWtLNU5u?=
 =?utf-8?B?dkx2czR1ZXVHbUVUek5pRFRpR3FxOE1YdGRIU3ZWdHdtQ1BwTnJOMitJcGds?=
 =?utf-8?B?c0hUL3dEYlE0d0dPZ3Nwa1U4WjI1L29XNUxoZGUweE4xOWhPb3FwWHc2NjUz?=
 =?utf-8?B?NzB4b3c0LzVtZGVnZ1NPUktvMFJMVUVMTmpLRXhndFhXcnVFbnVEakY0akZl?=
 =?utf-8?B?NWJLYytuMFVIL2tFd3FQTmtFcXRuWkk2WGJXZzZhWFFpQk8yMFNzb3FmNUZS?=
 =?utf-8?B?S1pWbFVZTGVIN1NYVkxaMnBTUllRbzNBa2VKdHozSUo1ZFV4ck4wQU0zYy9j?=
 =?utf-8?B?WDhsRHA2UEJOb21URWZkZnk5ZXFRaVpaNmQvdHlNL1ViQklyZ0Y0WVFlTjZq?=
 =?utf-8?B?OUgzOFJrTnpmZi8xWWV3T2xJSjBEanFjNytTaXBWdllaS1dXNVlzbzFJZk1O?=
 =?utf-8?B?SG1sb3BPc0FBTXd3R1BIWVJ6ZVRydEJjT1Y3UHZTWmRGWjF4Q2VUNWp6QXFR?=
 =?utf-8?B?dDJMNGtIQ0N5bi82NURSUDZhdjI1S3lNdHBOcXhUMzFaMnkvdFhzWkp0OVJm?=
 =?utf-8?B?ZXI4SHhtaHcvMmFkSUdkLzZKMVI0OFF5N2JRUGdPVzJiTkRGSmNFY3hESWZS?=
 =?utf-8?B?YkhEaVFZMTRBb3FoTDJNYWNaQmR1WkhMbFcrNWRnblQ2Z3ZtOU1nMC9NMGNC?=
 =?utf-8?B?alQraS80cytJSzFGWXI1UllwQndwV1hXYkNvTmhmbENWNjVtS01WOTFkRTN4?=
 =?utf-8?B?SExrMVhoR3JPTmgyZXUzV1NhWUZrN3AvMnBFM2FmMS9uU0RPekJDYW1vUGlp?=
 =?utf-8?B?Z1lMc1YzUWJlQW9Mc2R6TmxPM1UwMTdXK2h1S1crMHh1RHlINnpRMUF2WWZx?=
 =?utf-8?B?NTU1aXVHNWxwUHl4bmd6dnMwRDF5VGFObzVWcjFSNFdEU2pDakNJRUQ3djk3?=
 =?utf-8?B?Q052cGZIVWpPRXZPcWRJSUVMaXNMTGZPTnU1NzVaOXBaUGE4U2dKbmYrbXJQ?=
 =?utf-8?B?blh4SWp1RnRBMFV3VkJMM1c0czlsZUlxaG96NUdhcjZwRjFRa0dSZDZZV1Bv?=
 =?utf-8?B?OHZyQzhaaTJ3MDUrVTNybkJ2NjM4YkEvNUdZdW5rZW5NcCt4YlVZTjh3VTdy?=
 =?utf-8?B?NUwyV0hvSzlDV3JlSG1lNUdUb041aU9JZVRpM2ZMNlFlUm0raWhyc1BFMEFa?=
 =?utf-8?B?eG53TGlpQ0hwZytMSkV3YmpwN0Z6Mlh2aUl1c0p0YjdXM2NKK3hvSy9QVGtM?=
 =?utf-8?B?VnZwQnRieXZVY1dLU0dSeW80QkpGRGNuTlFLM2pKOVYrQlNDMUFrUkFXNmgv?=
 =?utf-8?B?bGJCdkxiYmFSbnhOcjErd1ZXRVB4NDVFbU1nVXFpTnFiZWEyN3Q4Q2d5dlQx?=
 =?utf-8?B?Vm5pVEg1TnVmam1oemRvQW9DMnNGaWpWT29VTUFmRXIra3NnSVlEUGpDNXRC?=
 =?utf-8?B?K0hVM1RHall1bFl1V0ZVQ0xodXpaNWhaNkpvUlNJMDNzM2hJdjYwdzFkeDlP?=
 =?utf-8?B?RXRBcDZqenFHcFZnZTdWeExBbm1LYVU1STBCaHc0YzJEYlFId1RxeG5NOHlo?=
 =?utf-8?B?UzI0WkdZbEMya2tPdjBaZ296My91R1dYM1FpZEpKTWJtRlA2SG9IMjdGYzY1?=
 =?utf-8?B?T0JMYUtaUWxkb1VoTlhjeFhqNkpjNHB3bUd6ak5KOGtzcUNUaEpxbXYyOEpa?=
 =?utf-8?B?Nnd1K0JoK3I1YzBvQXo2VDFJOHZnZFJ0aHU1UWVQblhTNW01TTdCWjlLWlZZ?=
 =?utf-8?B?ZnlKanBZUE9lTDRpejZNZjNvOFN3aFN1K0FhNW5ZaVZnK2dCWFZNS3U5Mmdk?=
 =?utf-8?B?bjFndVFYTmRmeldlNEFPclNvVTliU1MzZUp1YWI3YXpQWEh5Y0xKY0FwR1pk?=
 =?utf-8?B?RHVHOEhWZVNWN3locG8wdlpFQzYzT1ZseEtWWWI5ZWRlbzA2Q0Y0LzJNalhY?=
 =?utf-8?B?K2szVjl2bCt3QzY2eGJUSTllZCtOK0ptTUJYZlpIeGVSRFN0azI1OGIzcHRV?=
 =?utf-8?B?dnpBQ0txUEFBdW5wWWppNmt6SGh4am5PM2t4eG8zamRXT2JERTRvSHJxaXZk?=
 =?utf-8?B?QmtVVFd2aFZxUnJnNnhRTjRobUlYRlBJb3RxZHZGOVU2NjZneU1iaktFbWlo?=
 =?utf-8?B?NW8zRGdSMmpqbXd1Rm1iNFdCbHRrUnFGSk9XakhmZXQxcHlXOENHTGJjcHYy?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1084b9-bfad-44ef-49bd-08dcf4f968de
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 13:32:02.6730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x7eejSTEAiGY4qCwsfuj6hYoQeSGDXjD3RZGufJZzyX22ozJ4z8Cra06/GTIZjcGzjt+Cw4p96wTAr2Etdc4Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8481
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

Quoting Clint Taylor (2024-10-24 19:31:04-03:00)
>From: Matt Roper <matthew.d.roper@intel.com>
>
>There are some minor changes to pmdemand handling on Xe3:
> - Active scalers are no longer tracked.  We can simply skip the readout
>   and programming of this field.
> - Active dbuf slices are no longer tracked.  We should skip the readout
>   and programming of this field and also make sure that it stays 0 in
>   our software bookkeeping so that we won't erroneously return true
>   from intel_pmdemand_needs_update() due to mismatches.
> - Even though there aren't enough pipes to utilize them, the size of
>   the 'active pipes' field has expanded to four bits, taking over the
>   register bits previously used for dbuf slices.  Since the lower bits
>   of the mask have moved, we need to update our reads/writes to handle
>   this properly.
>
>v2: active pipes is no longer always max 3, add in the ability to go to
>4 for PTL.
>v3: use intel_display for display_ver check, use INTEL_NUM_PIPES
>v4: add a conditional for number of pipes macro vs using 3.
>v5: reverse conditional order of v4.
>v6: undo v5 and fix num_pipes assignment
>
>Bspec: 68883, 69125
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 68 +++++++++++++------
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
> drivers/gpu/drm/i915/i915_reg.h               |  1 +
> 3 files changed, 50 insertions(+), 23 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index ceaf9e3147da..749905b35f2b 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -258,6 +258,7 @@ intel_pmdemand_connector_needs_update(struct intel_ato=
mic_state *state)
>=20
> static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
> {
>+        struct intel_display *display =3D to_intel_display(state);
>         const struct intel_bw_state *new_bw_state, *old_bw_state;
>         const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state=
;
>         const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>@@ -274,12 +275,16 @@ static bool intel_pmdemand_needs_update(struct intel=
_atomic_state *state)
>         new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
>         old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>         if (new_dbuf_state &&
>-            (new_dbuf_state->active_pipes !=3D
>-             old_dbuf_state->active_pipes ||
>-             new_dbuf_state->enabled_slices !=3D
>-             old_dbuf_state->enabled_slices))
>+            new_dbuf_state->active_pipes !=3D old_dbuf_state->active_pipe=
s)
>                 return true;
>=20
>+        if (DISPLAY_VER(display) < 30) {
>+                if (new_dbuf_state &&
>+                    new_dbuf_state->enabled_slices !=3D
>+                    old_dbuf_state->enabled_slices)
>+                        return true;
>+        }
>+
>         new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
>         old_cdclk_state =3D intel_atomic_get_old_cdclk_state(state);
>         if (new_cdclk_state &&
>@@ -327,10 +332,15 @@ int intel_pmdemand_atomic_check(struct intel_atomic_=
state *state)
>         if (IS_ERR(new_dbuf_state))
>                 return PTR_ERR(new_dbuf_state);
>=20
>-        new_pmdemand_state->params.active_pipes =3D
>-                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>-        new_pmdemand_state->params.active_dbufs =3D
>-                min_t(u8, hweight8(new_dbuf_state->enabled_slices), 3);
>+        if (DISPLAY_VER(i915) < 30) {
>+                new_pmdemand_state->params.active_dbufs =3D
>+                        min_t(u8, hweight8(new_dbuf_state->enabled_slices=
), 3);
>+                new_pmdemand_state->params.active_pipes =3D
>+                        min_t(u8, hweight8(new_dbuf_state->active_pipes),=
 3);
>+        }
>+        else

Checkpatch is complaining about this. We should keep the else at the
same line as "}".

Furthermore, Documentation/process/coding-style.rst also instructs us to us=
e
braces for the else block as well.

>+                new_pmdemand_state->params.active_pipes =3D
>+                        min_t(u8, hweight8(new_dbuf_state->active_pipes),=
 INTEL_NUM_PIPES(i915));
>=20
>         new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>         if (IS_ERR(new_cdclk_state))
>@@ -395,27 +405,32 @@ intel_pmdemand_init_pmdemand_params(struct drm_i915_=
private *i915,
>=20
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>=20
>-        /* Set 1*/
>         pmdemand_state->params.qclk_gv_bw =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, reg1);
>         pmdemand_state->params.voltage_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, reg1);
>         pmdemand_state->params.qclk_gv_index =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, reg1);
>-        pmdemand_state->params.active_pipes =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>-        pmdemand_state->params.active_dbufs =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>         pmdemand_state->params.active_phys =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_PHYS_MASK, reg1);
>=20
>-        /* Set 2*/
>         pmdemand_state->params.cdclk_freq_mhz =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, reg2);
>         pmdemand_state->params.ddiclk_max =3D
>                 REG_FIELD_GET(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, reg2);
>-        pmdemand_state->params.scalers =3D
>-                REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2);
>+
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XE3_PMDEMAND_PIPES_MASK, reg1);
>+        } else {
>+                pmdemand_state->params.active_pipes =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_PIPES_MASK, reg1);
>+                pmdemand_state->params.active_dbufs =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_DBUFS_MASK, reg1);
>+
>+                pmdemand_state->params.scalers =3D
>+                        REG_FIELD_GET(XELPDP_PMDEMAND_SCALERS_MASK, reg2)=
;
>+        }
>=20
> unlock:
>         mutex_unlock(&i915->display.pmdemand.lock);
>@@ -442,6 +457,10 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priv=
ate *i915,
> {
>         u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>=20
>+        /* PM Demand only tracks active dbufs on pre-Xe3 platforms */
>+        if (DISPLAY_VER(i915) >=3D 30)
>+                return;
>+
>         mutex_lock(&i915->display.pmdemand.lock);
>         if (drm_WARN_ON(&i915->drm,
>                         !intel_pmdemand_check_prev_transaction(i915)))
>@@ -460,7 +479,8 @@ void intel_pmdemand_program_dbuf(struct drm_i915_priva=
te *i915,
> }
>=20
> static void
>-intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
>+intel_pmdemand_update_params(struct drm_i915_private *i915,
>+                             const struct intel_pmdemand_state *new,
>                              const struct intel_pmdemand_state *old,
>                              u32 *reg1, u32 *reg2, bool serialized)

Jani ask been asking in other patches not to add new i915 variables or
parameters.

As such, I think we should make intel_pmdemand_update_params() receive
struct intel_display *display instead of i915. The caller can be adapted
to simply use intel_pmdemand_update_params(&i915->display, ...).

--
Gustavo Sousa

> {
>@@ -495,16 +515,22 @@ intel_pmdemand_update_params(const struct intel_pmde=
mand_state *new,
>         update_reg(reg1, qclk_gv_bw, XELPDP_PMDEMAND_QCLK_GV_BW_MASK);
>         update_reg(reg1, voltage_index, XELPDP_PMDEMAND_VOLTAGE_INDEX_MAS=
K);
>         update_reg(reg1, qclk_gv_index, XELPDP_PMDEMAND_QCLK_GV_INDEX_MAS=
K);
>-        update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK);
>-        update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK);
>         update_reg(reg1, active_phys, XELPDP_PMDEMAND_PHYS_MASK);
>=20
>         /* Set 2*/
>         update_reg(reg2, cdclk_freq_mhz, XELPDP_PMDEMAND_CDCLK_FREQ_MASK)=
;
>         update_reg(reg2, ddiclk_max, XELPDP_PMDEMAND_DDICLK_FREQ_MASK);
>-        update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>         update_reg(reg2, plls, XELPDP_PMDEMAND_PLLS_MASK);
>=20
>+        if (DISPLAY_VER(i915) >=3D 30) {
>+                update_reg(reg1, active_pipes, XE3_PMDEMAND_PIPES_MASK);
>+        } else {
>+                update_reg(reg1, active_pipes, XELPDP_PMDEMAND_PIPES_MASK=
);
>+                update_reg(reg1, active_dbufs, XELPDP_PMDEMAND_DBUFS_MASK=
);
>+
>+                update_reg(reg2, scalers, XELPDP_PMDEMAND_SCALERS_MASK);
>+        }
>+
> #undef update_reg
> }
>=20
>@@ -529,7 +555,7 @@ intel_pmdemand_program_params(struct drm_i915_private =
*i915,
>         reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>         mod_reg2 =3D reg2;
>=20
>-        intel_pmdemand_update_params(new, old, &mod_reg1, &mod_reg2,
>+        intel_pmdemand_update_params(i915, new, old, &mod_reg1, &mod_reg2=
,
>                                      serialized);
>=20
>         if (reg1 !=3D mod_reg1) {
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>index 128fd61f8f14..a1c49efdc493 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -20,14 +20,14 @@ struct pmdemand_params {
>         u8 voltage_index;
>         u8 qclk_gv_index;
>         u8 active_pipes;
>-        u8 active_dbufs;
>+        u8 active_dbufs;        /* pre-Xe3 only */
>         /* Total number of non type C active phys from active_phys_mask *=
/
>         u8 active_phys;
>         u8 plls;
>         u16 cdclk_freq_mhz;
>         /* max from ddi_clocks[] */
>         u16 ddiclk_max;
>-        u8 scalers;
>+        u8 scalers;                /* pre-Xe3 only */
> };
>=20
> struct intel_pmdemand_state {
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 405f409e9761..89e4381f8baa 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -2696,6 +2696,7 @@
> #define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
> #define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
> #define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XE3_PMDEMAND_PIPES_MASK                        REG_GENMASK(7, 4)
> #define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
> #define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
> #define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>--=20
>2.25.1
>
