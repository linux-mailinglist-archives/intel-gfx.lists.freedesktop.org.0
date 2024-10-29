Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE1F9B4BBF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 15:09:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0B0410E672;
	Tue, 29 Oct 2024 14:09:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fTYWh+is";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4832B10E66D;
 Tue, 29 Oct 2024 14:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730210951; x=1761746951;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Wc78WzLeJ+l9wEV1Xlnuu7J3ukc9ANlJzWDYwwS3crg=;
 b=fTYWh+isAJTBF0ZCmxn+mzuIlc72a2U3cgupBPbvZIgN1H1Xxz9ZDb4U
 V4249cwB2HyOshmh3QddDh27GEEMY2GBz+zIRrpuOJ+KZyQEcn47/8h38
 75zU332jhqksE9IVsQ0Y8+ubjB+umap3RqRmVnH1xYEM+rFtYbnkMtLym
 O/w1BTAL3JHrFrlpyJ7IO7Hycq1TY9a3T674FRcPs8JOvNU0n4j3T83zL
 9+XyGRgNUkSTg5PpDrhno6mitqbfe3PSAlx7xb9GAdHOsX3bnfafIst4q
 deO1CUIa7+Yh3OpguK3FXo2bzRklRZGrs/YKZGEA9sD4NyEyoTpI8XZv8 Q==;
X-CSE-ConnectionGUID: FSVgKg7vSUWMwwLOhbRa/Q==
X-CSE-MsgGUID: DNz343dZSfiS0VDBt1Cm1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="29753038"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="29753038"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 07:09:10 -0700
X-CSE-ConnectionGUID: 5kdtVUS8SzS9MMxZ7GbOcg==
X-CSE-MsgGUID: EVraASdXQ9O8PDJBP83Vqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="112781794"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 07:09:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 07:09:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 07:09:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 07:09:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q9VQmtHoOQF9/+fVSFMj4wEDkZFsJNpDYelBauc0fPVmNBsvYR1ABS/mNFdNtUlG5Q5IYRtTvsDSPeD6+kyAG0GGvw9U5Z6ynm5AbIo0SLNwhLNGIsVvpb3+mHpXCvdXOWWvzMUDIEpkckzl1hr/B10796trrC7clwTr7xbTXVeqtbW74E/dnGSsYF/UaChIcMaVo8inHG4h1yScM3VlVirPkNmikvIpP0OLE6WXStYizzauuZLuzNGHVMWVrlAbKL2bEvVWa3qr53+tnYdhiHK48oLr9nQZMUZCIkJyT+wdLGqUXXJF68vh6wDDyeFIemKUnocn4D3mbzy1rwY+Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8DauEW6zBH+aawZfswcX1l8mwaffgmk0pdnu90vsCQA=;
 b=wD8fnf7GS9gJDgC2QNJGOWg0uHqvhE4vewCu095ZznCA0Mgj1rza3gCQ9/9nBs0QRFWuQKllnZwvm65lZLYom1SvissxbC65RDgSnd0UtPD+0MhP4/ona13YI5m/aD2KCQ4FitspPlbwa5Rw2QNYLVRVs3GQnlWgukeJ+x84zX9PyPruiyOQJ285cuCHBqaV5XT2gGuKgJ91MA2DD4ta0H5KpCNR1AbmfHpQ9e23fUgJKWHBViKWhR/SEbmo2hepn1qRYJ0ah2Wu2iE08wdnnSxiXQMxnZLbSKG1qKZQuTK7lzXFumk27uFhB1S4oWDC6CWZVoHBmDYMvOXH4pbThw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ2PR11MB8469.namprd11.prod.outlook.com (2603:10b6:a03:57b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.29; Tue, 29 Oct
 2024 14:08:56 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 14:08:56 +0000
Date: Tue, 29 Oct 2024 09:08:49 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: use x100 version for full version and
 release
Message-ID: <2mpiejvdefsq4hzollixcixbcmqdcudoehwgo2sjpenhazp2fi@urf2khz5tih2>
References: <20241024171104.2427750-1-jani.nikula@intel.com>
 <ZxtUhCYU9Fl-Cp_x@intel.com> <87ttd0r2ht.fsf@intel.com>
 <20241025145829.GO5725@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241025145829.GO5725@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW3PR06CA0028.namprd06.prod.outlook.com
 (2603:10b6:303:2a::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ2PR11MB8469:EE_
X-MS-Office365-Filtering-Correlation-Id: e1d18d90-9a90-492c-ec25-08dcf82339d3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?gTl0u41BtomaLghtKEstycoN1TEWKx9sZk+H9dVRAee8So+WynBUTMX9sN?=
 =?iso-8859-1?Q?QMk01aOUPdP045SJa67PfXNFg7NWzrMC8XGOs6oK62O6oQNIwtNf8D1qQ4?=
 =?iso-8859-1?Q?kYPOTPw4Fpr+PCj6XOkhE6gsoOnkx+AuhQKDPG73+cNQb8fI/avyTwyMwZ?=
 =?iso-8859-1?Q?MoNxqzDUvx0xvzwT4QuZO2mBuh7nbeESIjV1vn+4KSz5qkxG3+vjrcoCdg?=
 =?iso-8859-1?Q?qVUZrNjUxmlpfGrb3wjuHEZBi3MXqBe5vHA2bkohfp/zxn2GVEW8phsZXL?=
 =?iso-8859-1?Q?XXii6guOIHGVaPTC3cHDS0pHkO921A/OfexroCHg91IXCV6SOlRzjtj2x9?=
 =?iso-8859-1?Q?DULEuq9gGUtuJrfOsxVPtW66lE8PMee5oeNYidRKW/PQQnGAXGh6o/3nlJ?=
 =?iso-8859-1?Q?vGp4AwYVi6F9yf0M7gJ0970DdePg1LBluqmoQSe/3pg1YbbMWiqdgRbYx7?=
 =?iso-8859-1?Q?AI2SfBsqK6pVnqHW5/Z9pVOXRRjmh9fUwDsdjWwIUNE37r+OWGMdhqIuq+?=
 =?iso-8859-1?Q?EwbexKNReI9Ajx9Au6CJcurhqZ2wftLmJuAE8IgU4z2N8l2O2c/LbmJTnq?=
 =?iso-8859-1?Q?e6ttcWNqphGal/+nVyDi210OgjW4/l17nCGrFQ1yXviv6ZP//dIMrUnd6o?=
 =?iso-8859-1?Q?tRACfmGWOkRfiytXLcn9e/46v/aEf4WCxna5AK8aXoNKjreYfMDXO8trri?=
 =?iso-8859-1?Q?TzDK8cwhp7TIznXyN9XTruZFzOhIhzWja718GWvyvCPhMaMCymXrQMMeAl?=
 =?iso-8859-1?Q?IU7W8DbPF9ZKP5lnuLUHy6fnsn0IHcKBbTxz4+QnSvn0Vbe6sqFRU8zhFw?=
 =?iso-8859-1?Q?SB55UZkr+5+9fhGCbNSWgRKPdzNVZLo0SCapNph7PHwn2fKf6kXy238FId?=
 =?iso-8859-1?Q?/MeATx1isgXww1FRDM2ej8Jtcn8r6S6sGO4ZM4L8LjsYinZdOEEy4V7kS0?=
 =?iso-8859-1?Q?2mauB8rcfO3710I/Cm6vmig7FrnrtcWyU3HokRHN76cDYCWFRdsE8jqLKe?=
 =?iso-8859-1?Q?WUochRjht8K6WlPpIcfbhEf5Bk3B1gzGLtB+5B3+gKBIzNAauCYfbo3E+I?=
 =?iso-8859-1?Q?obOZbhqSzJzE9dJeHR4Z5Pdtrnm87HEkusvuWudTvQJRnUBZb1+CqJ5C7/?=
 =?iso-8859-1?Q?e58X1JFZTT431EsvFX+aPx02VUH6Xth1Dxd/aB2cDJWjecm7S07l8mBAeu?=
 =?iso-8859-1?Q?IIUPcHs/wxRkiWQie5x9IqYvWxkMlyiFgVFOcrMhoij3XSWj3oDlJ3mc+Z?=
 =?iso-8859-1?Q?pEzOqLEG1LxPTfapofjjRDPfPUAbX+cr6KUevi77t+sxViagVzpCYrWemt?=
 =?iso-8859-1?Q?k822BoBXD8piZK/hX0iPu7Ri3swwm2hAPiGhZvinNswCbBzzMQ54xhhg+j?=
 =?iso-8859-1?Q?ynkJ4NIA9s?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?BK7SBCgQlKyNDXka6BPuLOgUPEourg7GcObTx1aoAELIGqRsL0QALnNL9q?=
 =?iso-8859-1?Q?qlR6k1CxJUP8YzHbFSo1UJuApLbwczaNhLoMD6URBb3tPD6Cu+y3WYY54i?=
 =?iso-8859-1?Q?O1V5Xi4sYGHDPx0yZF6iN+5cRHcoBNRjeFZaWpKGj99CgeALhq2lj1Nctu?=
 =?iso-8859-1?Q?yHfStHqLCkBu7K4Fcnow1a2Xx+tQYFO43AYeldPaUPseYJzMDXvQ0blOXa?=
 =?iso-8859-1?Q?NSKfWAPi0uVACrDnnMKwdybz7V34ezKjDociNylVICo1KrLYtxngMmxkQv?=
 =?iso-8859-1?Q?KJEWmEhvKklrz+VYrG6KULbPvLgVIaUTx63ZdtecEY0qeA+19hwHtM7aRP?=
 =?iso-8859-1?Q?lO6k5VHPZ/ubxtV/WhKTOjBWw5jsE8zIf9ocCfWn7Dfs7cfADRZbEqpWjL?=
 =?iso-8859-1?Q?zjMmHrOW2qK/s+TritnhgzLSt6oW4+Q9OWEBpoaLeXg/dlxgr9+suzHjxA?=
 =?iso-8859-1?Q?dP3IR8QBrglg5Q+yIFT7tcH0Sa6guMX+cRelH/zZMlXi9VKZCsbybd2AvM?=
 =?iso-8859-1?Q?6hwpE2cEVyMPXB1VesnFURfnQwVHn/Po9SRNIGvJtfCOgc3O0ZQ1Y8aH6f?=
 =?iso-8859-1?Q?C6o3hVzz0zXZSsmT6yXUxrVdUKZ9jcXQW+SRxzKgTUaXbVcHwl2NhW8p5P?=
 =?iso-8859-1?Q?pXxdmyKvWUvWG/5A68jJIH5o+qAcpgRxpkPoivMwaKvMJtUKUZmVkCsjV3?=
 =?iso-8859-1?Q?kL1BN7mZVsIwpkoelnTswAC1kOaroenn7SQznXywAOaB3lY/K8ILWhZKtL?=
 =?iso-8859-1?Q?mPRWOAf7SevEztL4jGYZWqR+fVJk891cYCp7s42zCFrjA1ZA2xc3C0j7n0?=
 =?iso-8859-1?Q?CKM3AR1uatR3WWVr6iE72/SGRPHlabfLw7NqtYZVF/qnu9uyJVFrM8kR68?=
 =?iso-8859-1?Q?q0+wzzLBEiLHLxb05K0vdq0sM5/vQB6PkmiJzfTluy3lR9clIqX4s9VhWf?=
 =?iso-8859-1?Q?yo2FfhEpWKjmJIq5kwXpntdqC+9aeW0KdMmY2LMm5FCm3hpXn9I4bbi4H4?=
 =?iso-8859-1?Q?4APhH+v/smhkCqmEZpBgBqQ1+o4UyHe8yB6dEJFDbfS6ClegD4L5a+WVzH?=
 =?iso-8859-1?Q?HwoogMkFr0OTtiZOnJ8yviH1WtJftxhdbO2oEXLR7784BW+XjOOEPgwuTZ?=
 =?iso-8859-1?Q?2XePuBmtp6MeI8J84S1HBxM5kPxECT1WIkxRH6FrbZXCgjjJ36N613KLLP?=
 =?iso-8859-1?Q?YE4uurG9ZCs61Rgja3A5FPAkxUOshebK6xnCAQqTmAcodu9CFKtoldC7Hs?=
 =?iso-8859-1?Q?Vu2j3vIhf/aNEAn4WTOpApxhU5q6pEY+/nk8j/0NPQX7GoHU/bxQF1KqvH?=
 =?iso-8859-1?Q?4/zTw1gqNJ/LTLJ2y8FtIZ0zfE2VcT3RbMBz96ph4p2xmjOmLpvcclzYf/?=
 =?iso-8859-1?Q?zILAiFhK/5zGnVxo2vApjpqWY26ZOgaSOF1qw0BJ0F5LLuOkvLE+5sej/4?=
 =?iso-8859-1?Q?uwBX2dlaO0melXDT/pD5ehtgFArn25voQ0obZRjn74irxtE6+kM6LzAmEl?=
 =?iso-8859-1?Q?4tqxoakW3a5sMPdx0zFrsl48+XIBW6RPMT3TDzY4WLmg3CFUDWzWU9IPzI?=
 =?iso-8859-1?Q?PWyl2a5//PI63/pW7vrczprbO2mS4yi5zJaJrgds6LGM0uWix0pS8CHS5i?=
 =?iso-8859-1?Q?ywWMzusakdiNbIPPBAYSvQf13nZMsCOwc0K1ssJy+OaSvv1BTYo+8Gxw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1d18d90-9a90-492c-ec25-08dcf82339d3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 14:08:56.0925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 96TbRY3PERzDSmuxiXPkmTSQy6i4eKTKnH+m7i4+LCtCr8JQ/19CpLE+BFjM8caRH3mP7j60DYVv5bI9uXu9f4HeeYTcwckPkinrYToKUt4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8469
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

On Fri, Oct 25, 2024 at 07:58:29AM -0700, Matt Roper wrote:
>On Fri, Oct 25, 2024 at 11:49:34AM +0300, Jani Nikula wrote:
>> On Fri, 25 Oct 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> > On Thu, Oct 24, 2024 at 08:11:04PM +0300, Jani Nikula wrote:
>> >> Use x100, or ver * 100 + rel, versions for full IP version checks,
>> >
>> > Have the hardware folks promised to never use minor >= 100?
>>
>> I guess that's a fair point. Xe uses this extensively, and would be
>> hosed as well. Matt, Rodrigo?
>
>I was pretty concerned about this as well back in early Xe development
>and raised it as code review feedback at the time, but the consensus was
>"let's just deal with that if/when it truly becomes a problem."  MTL/ARL
>were already up in the 12.70's  for release version so it did feel like
>we might see the release number go above 100 if too many more platforms
>came out.
>
>But now that we've moved on to Xe2 and Xe3 and hardware seem to be
>moving the major IP version by 10 for every family (20 -> 30 for Xe2 to
>Xe3) that does give them a lot breathing room to insert derivative and
>refresh platforms and it seems less likely we'll ever see release
>numbers get as high as they did in the 12.xx era.  So I'm not too
>concerned about this anymore.
>
>I didn't review carefully to make sure the patch caught all the
>necessary conversions, but

and it's also used by mesa (they actually use VERx10). If HW people have
the brilliant idea of using something above 100, we have at least 2
projects to try to convince them that's a bad idea :)

Lucas De Marchi
