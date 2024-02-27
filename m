Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 917A386A0A1
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 21:03:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 715D410E35B;
	Tue, 27 Feb 2024 20:03:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MtdBIhQS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2226B10E35B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 20:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709064231; x=1740600231;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=McdRsgVQmVAA4ecTsRpX3gcOTQt5kvt1Gp3UDHB90nY=;
 b=MtdBIhQSLkh2lNt7mfdonlu53ZnKuLmQ7+C2myxc5kOTjWuSP2SQHl7q
 zIxY4PWYIr1E4QUJXHnnv89WJE3qtmhXaCUQDarBtGY0D1pFOGnXvP0sS
 NKprAKI0pjrltQOTzsD9UxeaG1/bKVJ+cchPV9U8dDqWCTR/nx7gTdDHh
 XyRSkZlkkJis8mf3YZdaa/bMVaThXJ7hggliaAY/Tr4mn9N4gND/i9x4o
 vYn6551lIWkVM/0B8gCAqC2f+JMudXX/NsvCjZnW+C9yNOJYFuHNBcNm2
 QLrJmw8+HRkYjjuV28UnGMfMpRC1wzaaAV4famQhQieFRyzf7pWQVqk8z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3276315"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="3276315"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 12:03:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7601366"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 12:03:42 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 12:03:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 12:03:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 12:03:42 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 12:03:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VxJS5aix7dj7M2ydWBCh9U/ETpv46wVU/Dk26W9IFg6moe/3PJHadGRcNz7D5Mo1MA7tc5ls8e1NmMy/whKU6FVgKNuCE9Vof7IFAFuwdE72S1lwR9YS2SUHvAP268sr4Djx4bPxcCO1WPTJ/gwyx7zlXPf2f/iopLrrNPnlQlSOXzEyZ+9KcVynPz6itvn1zjWtZl3cL89SNzD+ubdQcJN+Fncat7tbIgzUbvVuH7jQh0rTaib2QvMLCPCa5LRElzz8XCBRcxvYtKreKFF0cq9Xp7LvGe6ZPk21S7tLoMEN9wr3H4Yrm3wP+4rZ1SrNodusMo6fKA1fggMKmv8q0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CEbEPk1JrCYzrnz1M57m0C5mus6wynYkbS87yuey0DQ=;
 b=axHVQfK+FYxi/fqRCX3JkbKR5kyGffTVMX1R0MbVyLKlWzNUcec2IvqYci4molaWOtPY/3W/rQ+DKK1XBs56UTH3DwJlKVsnf9sSxXnhg1cLvlhsiv6W5EEOXke6ULtmwevi9O8kVCC9O2BKNN0vFT8/s67qxqClbArE0TNBXoldTgNMden8UsGjRQybDdiYsRHDjqsXON1ajvdddx/2IMtls7APseTTFerqQRHkpJUizgsrlMB88CcLLt3laZTRNCKfO07MmmELIYbNXKlPhUwDlHZ1bLKoJR/SAkCHsPboHKmt2hp+k6kujFsG2g5lHXSWoAIR7qtX0YX165ZxZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by LV8PR11MB8511.namprd11.prod.outlook.com (2603:10b6:408:1ed::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Tue, 27 Feb
 2024 20:03:39 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::71ea:e0ea:808d:793b]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::71ea:e0ea:808d:793b%4]) with mapi id 15.20.7339.023; Tue, 27 Feb 2024
 20:03:39 +0000
Message-ID: <88784d1a-3b8b-44d2-8310-cf51a5e8569e@intel.com>
Date: Tue, 27 Feb 2024 12:03:36 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: GuC issue
Content-Language: en-GB
To: <maksym@wezdecki.pl>
CC: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
 <af232621-ed88-466e-9162-7698b5583503@intel.com>
 <dRxB0peDhbOHBqsX5rpWZN-qZtPdwWItk-L1ZAZm8RH8LQYpNBGa9qghm3dOCuM4fqbzOsNAFEafiu2zSrQNbnH6oCrlBb1fiAm5AhJQr64=@pm.me>
 <G6cnnxkrPv0dkDZ2VYL51hau5Mm-RdGVA74E0lhunn-U3XoV3d8OwF92LK-lCbQ24yM8ksZuOh9EAEpvAgz7Td0xtfFwT-Zy7M-5KJ73qqY=@wezdecki.pl>
 <jDjRWkHtb3G4vJFfktNDbWc_n_3WjYYvIOYbXmZHxbcITIeP3k6FnjerNyECm8NNpgs0H1DRJTaeiE5c9qYib5djHdq34VG4wOPZbNPEj-s=@wezdecki.pl>
 <bb9bd07a-5197-46e1-8541-aeb540b421a3@intel.com>
 <5_wII6n600vppHk7s--lu7jrLDbxtBBglPTXx8BxdhPfYS5YaArq9XZ3OhcuRnYKOfBIxSTUGk7CAz-d1KZ-_-7J9g3qVNkzxDvewTrIX-I=@wezdecki.pl>
 <CH3PR11MB84410E859B484FD84ACE65E4BD562@CH3PR11MB8441.namprd11.prod.outlook.com>
 <FJKNlVdWT4pcxEIPqrlrotvNF4LQ9IruZEgoFyoLOiuC06TeBWlw75UpxC5YGBbB3q4K2HGh34RNzJqipPPJV8DMDDQ3lY5yAYmTJezbDtg=@wezdecki.pl>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <FJKNlVdWT4pcxEIPqrlrotvNF4LQ9IruZEgoFyoLOiuC06TeBWlw75UpxC5YGBbB3q4K2HGh34RNzJqipPPJV8DMDDQ3lY5yAYmTJezbDtg=@wezdecki.pl>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR13CA0033.namprd13.prod.outlook.com
 (2603:10b6:a03:180::46) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|LV8PR11MB8511:EE_
X-MS-Office365-Filtering-Correlation-Id: 73dcc5f4-4e72-4c5c-9d85-08dc37cf305c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bcg9jV5qR6koiXhP0gPkBtlAzuUB8JAPrw5NJUUv2G55KP780g94juzfmHtObJRcUgRfLzXY2N83QM51Ow3pwL79rhCp1mkoIFshY5oupZoYJsN3p86ZwX7D/AF9Js4aP3oT1hJTzb7WkdWkDxZUJbMuxKYFcmDEdM1c12wMT+VCXgUg90vfWrrNF3w9VJwkP6U18271e8pgMojPGSlfCXVqRnYH4q7TPfJqEzHPMHjviDuWKw+tzAVNmqIC1VBnq7AfSK7FXqckEzCfRa8DMjNy1bkyRfvbM+GcFO+tmFERFEgaLne81DMjbr3VXsQE9xdrbZPgtJk1/j8WC0lNR3cYf9zuPwD8PmIoGEfK4tiWQhdzPY2YNerUjTQzJ4Tb/v2pv+02iQPQegSn87QLWWa5NWyl+Wem5+91QgYQ0f1Guwhw6VJlbpwvOdmLZEmbvg82K4xWkGyalespEkQXPtJwOL86+xWtJ/JSRYNSAmETTywRBwMGue8mSc3zmz3yaW+sfyo2UbwekxJWDD3XoQ97kMihYyGcHkKSSIkOq4kf5VnUQ50rib1s8zoen4wBZDp7RbvrpEqg0MEitEZelzI8Cg+z+/28gM52W7LDdpJoyi5Fjh318gZ2Yz2qMFYVLQsnvlaOWxSLfDv+ZG+tYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUxNamNZVDY5aVQrNCt4MTNDYlFHVnZDaFJHWW5LMnFvM3FTOUIxQzg3bG5t?=
 =?utf-8?B?Wm5ibGUzbVNjQWcwa1BEZlkvRU1WL3p6aThTbGdxQ3Yvc051MGZ5ZXZDcU83?=
 =?utf-8?B?dTgxTWFjQ2FjWkdhVnN5VE0vUWlpUTNuQS91QU8vbDV4VzE0WGt0OFlxVTdr?=
 =?utf-8?B?UjdLaEdNdnpXRTdkbUQ3b2hzU2lPU2Fnc2loc0tkV0dMRHo3WHljNkhXSW45?=
 =?utf-8?B?RDZGUjdSM2ZzYXFDRS90ZVhMdlBsNGx6c0dDZndpbkpMbzkyM3hYM09DRjZE?=
 =?utf-8?B?ZE1NZnhibTFYb292OHhvMExRR2tsNUp2VXpLamE2aFpMSSs1SDgyQ1ZJQlhi?=
 =?utf-8?B?S1Q5TjRlT2hIcXlxdVNRL3NDa3dRaytlVUttSjVHRjFXb0c5aUZoRHowUGxY?=
 =?utf-8?B?V0RLbU13ZUp4V2RhV2pFUmdPcXE5aWw5QzdKU0tnc25MRmN0Ylc4Z2VYQnhi?=
 =?utf-8?B?cXpuRzlPTWFzejR6bTg2c3FPS2oyTWRsYVJsWHpwSUNmL29CVUIzWVpUd3VD?=
 =?utf-8?B?SXc3SnpuTExKbjdzL004aHQ3dmRkbkxhQXppbDMwTUZtZUFLUTBNZ0pKUkVa?=
 =?utf-8?B?NHd1UHc3djNWbHdPeHdVSUN2bW1oVWpUOHhIWmM5MVhEZm5TMUVteUtRWmN3?=
 =?utf-8?B?TEwxUzkxUjExcmlKMzU1Qy9XcXdiUEdzTTV1MGh1RllVZENScThWSG9kOHU1?=
 =?utf-8?B?REZFQXloSGZpWVZ0UTYxYVRmZTJQRHdFY3VNd3ZqL0R2dGRqelNuNzVnNGRt?=
 =?utf-8?B?K1p5N21tOFVJZytLMDhqamY3ZjV2eURwQmI0eVpIZm4vSVN2enhjUTJONTdw?=
 =?utf-8?B?a1pQeUVFeitUR2ZnWFR1ZkVENzhYK25RazhrY1dTNjQ3cXBnU1BmNGZJMTU5?=
 =?utf-8?B?Y3JCbU5qMC9kZ0Vsall3RkVObjhOQzBUdHJrNmhnQmF4Rk9BRWtZMjRHMVVa?=
 =?utf-8?B?WlcrME0wbzZZRG5FN0hudCtMRW1YU0QrSlZZMjZocHZMUXBNNGRHRlBFTTJt?=
 =?utf-8?B?LzhvM2Z3N0NHMTlGUXVkYlJTbVZSWDVWZ09TVVlVVit4d3gzYk5rWU5BVXBW?=
 =?utf-8?B?MG8vUXVQN092NGF2TlhBa3B3NkF5QUZyZEQyZ1pRWGYrOFVxL3Rxa2ZNdEg2?=
 =?utf-8?B?QnFwUDBiUVJwVmNnMDdYa2NzempIMjNNby82Qk4reTFyNFY1RGZ0YUhrakhl?=
 =?utf-8?B?bGxWOUhlT0dZcjhBUnFWd1ZWWHNPcVVISVJnVWNWQkUza0FGcm1xUlgrMU55?=
 =?utf-8?B?SXQ1VGRsNnZ4Y3RROHNWeVN3ZEhzK3lFanR0R2FGM05McGtYVWdEVVdLcjdo?=
 =?utf-8?B?U1ZQQVZ6OUJ3MDVGQWZqWWRiV3ZDSyszdUlqZUl6ZFBWcjRrMnI0aGN1Nk1J?=
 =?utf-8?B?Yk1BdEtzMkYya0RwNFhNU0tuL1lETGpveWpQaHdoOGZuU0hsSFJYRE50RWpI?=
 =?utf-8?B?dDVJQ3RKR216QU0yL0hQczRKUTB5ejNnajEvdWJuTGlxVCs3cTB0UVBZeitM?=
 =?utf-8?B?Vkw1NU9ORjVlbXQvdE81NWE0RWZqZ2FMc0ZoN0NUZXkwbmpJcDc2MFl0NHh1?=
 =?utf-8?B?L21TQ1lQVFFDdzZjeXgyeitlditpQk1sRFZ1MXU5aDZSOTBCaU1IcDNmY3lr?=
 =?utf-8?B?NlpGNkVmWjh5Y05uakQrakpRb1Q5Q09kQkY5bHpQZGowZXhmbXdLS3dvbEhB?=
 =?utf-8?B?WVZ6bHJ3MjloQVJGNWRzNUpwcmxWcVBKSExTaHBldE1RNEZQYXF4MUkrVTE0?=
 =?utf-8?B?TUJHVWpjRi9WY2I0akJxRXhGVXQ0K1Z5VnU2S3hUQzZvNEM2TGJmNmtKZEVj?=
 =?utf-8?B?Q2NMZGR1YVd1LzFONXdFTTVYc0FVbmlXM1Z1L1hLd0dUTTY1K0F0eVFxSy9r?=
 =?utf-8?B?SUdkZ09VSnZVTGxhNU5QajJVdWQzNkF6bGw3b0pkWEJodW1VbEhQQmtKNkUr?=
 =?utf-8?B?cDFjNmt1SC90S0ZSSzIrV3d2b0t3MFNtcldKMlZMQnpsRjlyUEJYUGlrVkJZ?=
 =?utf-8?B?aWRLMlBjNFVGZWNaUy9EVUxGL3MwNkhpa3FKWGZucTIxM1BiRGRSRGM3OERB?=
 =?utf-8?B?UmNRa1AyNnNzRHczMTd6bGJPSU11YXgrNTdqV04xc0hXVW1RUlFUb21salpM?=
 =?utf-8?B?QjNJVEt6QjlMbGRDWU1FM1Q1MmRGSGVXbDhKajBUU2Q1SktYLzNXbC9naHVQ?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73dcc5f4-4e72-4c5c-9d85-08dc37cf305c
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 20:03:39.0710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1b2qR284yrrlVYZmx2NDBSlTPKEa2luBaEvY4K0r8QwulGKx+6lnpigSTljiZqSxBkm0OdirSed8PNp/cVH7rF1kt6xkCmVzrQKW+P/10oE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8511
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

On 2/26/2024 08:30, maksym@wezdecki.pl wrote:
> Hello,
>
> Thank you for your help.
>
> Is there a possibility to load GuC, then "unload" it and load it again without cold reset?
You need to reset the GuC at least - bit 3 of GDRST. The GuC cannot be 
reloaded 'live'. It must be put into reset first. The last line of 
__uc_sanitize() is a call to reset the GuC, so yes that would be an 
option. Note that fini is more about cleaning up to unload the driver. 
Whereas the sanitise functions are about resets with the potential to 
restart again.

John.


> By loading I mean HuC firmware upload, GuC ADS/log init, GuC firmware upload, CT init, HuC authentication by GuC.
>
> I'm asking because I need to perform severe testing on the target for safety purposes without GPU cold reset.
> What should be done in order to "unload" the GuC? Is it __uc_sanitize() and __uc_fini()?
>
> Maksym
>
> czwartek, 22 lutego 2024 20:31, Harrison, John C <john.c.harrison@intel.com> napisał(a):
>
>>
>> Hello,
>>
>> That worked better. The complaint is that the engine mapping table is invalid. See the i915 code in guc_mapping_table_init () in gt/uc/intel_guc_ads.c for an example of how to initialise the table.
>>
>> John.
>>
>>
>> -----Original Message-----
>> From: maksym@wezdecki.pl maksym@wezdecki.pl
>>
>> Sent: Wednesday, February 21, 2024 07:15
>> To: Harrison, John C john.c.harrison@intel.com
>>
>> Cc: maksym@wezdecki.pl; Wajdeczko, Michal Michal.Wajdeczko@intel.com; intel-gfx@lists.freedesktop.org
>>
>> Subject: Re: GuC issue
>>
>> Ah, I dumped them with Windows new line characters.
>>
>> Here is a new log binary dump.
>>
>> I moved to the newest TGL GuC firmware from linux-firmware repo.
>>
>>
>> środa, 21 lutego 2024 12:16 AM, John Harrison john.c.harrison@intel.com napisał(a):
>>
>>> Hello,
>>>
>>> Something is very corrupted with that GuC log. The log consists of a
>>> header page and then a stream of log entry structures. The structure
>>> is supposed to be 20 bytes long and starts with a four byte time
>>> stamp. But I am seeing what is conceivably a 32bit timestamp appearing
>>> at 21 byte increments through the log. Even more curiously, the time
>>> stamp seems to have an 0x0D, 0x0A after it. Are you doing any printf
>>> type operation in order to write the log out from memory to disk?
>>>
>>> INTEL_GUC_LOAD_STATUS_INIT_DATA_INVALID means that the GuC did not
>>> like the initialisation data passed in. Most likely, something in the
>>> ADS structure is not valid. If you try with the latest GuC version,
>>> that might give you more information as to what is the incorrect. More
>>> status codes have been added since 70.1.1.
>>>
>>> John.
>>>
>>> On 2/20/2024 05:03, maksym@wezdecki.pl wrote:
>>>
>>>> Hi,
>>>>
>>>> Please see GuC log attached to this email.
>>>>
>>>> Log size is "PAGE_SIZE+Debug Log(64KB) + Crash Log (8KB) + Capture Log (1M)"
>>>>
>>>> Can anybody from Intel decode this log buffer? Thanks.
>>>>
>>>> What am I doing wrong?
>>>>
>>>> Maksym
>>>>
>>>> poniedziałek, 19 lutego 2024 09:44, maksym@wezdecki.pl maksym@wezdecki.pl napisał(a):
>>>>
>>>>> Hi,
>>>>>
>>>>> I fixed one issue in my driver. Log address was set incorrectly.
>>>>>
>>>>> Right now, after GuC uploading, GUC_STATUS changed.
>>>>> Right now, intel_guc_load_status is INTEL_GUC_LOAD_STATUS_INIT_DATA_INVALID = 0x71.
>>>>>
>>>>> What does it mean?
>>>>> Could you please help me with this?
>>>>>
>>>>> Thanks,
>>>>> Maksym
>>>>>
>>>>> piątek, 9 lutego 2024 08:42, natur.produkt@pm.me natur.produkt@pm.me napisał(a):
>>>>>
>>>>>> Hello,
>>>>>>
>>>>>> Please see my comments below.
>>>>>>
>>>>>> piątek, 9 lutego 2024 2:45 AM, John Harrison john.c.harrison@intel.com napisał(a):
>>>>>>
>>>>>>> Hello,
>>>>>>>
>>>>>>> What platform is this on? And which GuC firmware version are you using?
>>>>>>> It's TGL. I'm using tgl_guc_70.1.1.bin firmware blob.
>>>>>>> One thing you made need to do is force maximum GT frequency
>>>>>>> during GuC load. That is something the i915 driver does. If
>>>>>>> the system decides the GPU is idle and drops the frequency to
>>>>>>> minimum then it can take multiple seconds for the GuC initialisation to complete.
>>>>>>> Thanks for the hint. I'm not doing that at all in my code. How am I supposed to do this? Is there a specific register for that?
>>>>>>> Did the status change at all during that second of waiting? Or
>>>>>>> was it still reading LAPIC_DONE?
>>>>>>> It's always LAPIC_DONE.
>>>>>>> For ADS documentation, I'm afraid that the best we currently
>>>>>>> have publicly available is the i915 driver code. If you are
>>>>>>> not intending to use GuC submission then most of the ADS can be ignored.
>>>>>>> Ok, that great. Which part of ADS is must-have then?
>>>>>>> If you can share the GuC log, that might provide some clues as
>>>>>>> to what is happening. For just logging the boot process, you
>>>>>>> shouldn't need to allocate a large log. The default size of
>>>>>>> i915 for release builds is 64KB. That should be plenty.
>>>>>>> I'll collect GuC log as soon as possible. Is it something that can be understood without a knowledge of GuC internals? Or is it simply hex dumps?
>>>>>>> John.
>>>>>>>
>>>>>>> On 2/6/2024 23:59, natur.produkt@pm.me wrote:
>>>>>>>
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> I'm currently implementing GuC/HuC firmware support in one Safety Critical OS.
>>>>>>>> I'm following i915 code and I implemented all paths (I don't want GuC submission or SLPC features). I need GuC to authenticate HuC firmware blob.
>>>>>>>>
>>>>>>>> I mirrored GuC implementation in my code.
>>>>>>>>
>>>>>>>> After GuC DMA transfer succeeds, I'm reading GUC_STATUS register.
>>>>>>>> HW returns INTEL_BOOTROM_STATUS_JUMP_PASSED as bootrom status and INTEL_GUC_LOAD_STATUS_LAPIC_DONE as GuC load status.
>>>>>>>>
>>>>>>>> Unfortunately, after one second of waiting, the status didn't get changed to INTEL_GUC_LOAD_STATUS_READY at all.
>>>>>>>>
>>>>>>>> What is a potential issue here?
>>>>>>>> Could you please help me?
>>>>>>>>
>>>>>>>> In addition to this, could you please point out some documentation about GuC's ADS struct?
>>>>>>>>
>>>>>>>> Thanks,
>>>>>>>> Maksym

