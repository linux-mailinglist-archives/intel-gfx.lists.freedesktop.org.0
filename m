Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C269A155D3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 18:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A7410EB50;
	Fri, 17 Jan 2025 17:36:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EfGBwHET";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9091D10EB50
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 17:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737135411; x=1768671411;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lAj9Oyl0DN1wMa0ny5gkejp6dXvYypci1c7hFE+oGNk=;
 b=EfGBwHETRU4XLON1uzXCvcNwdogRQodt3U+hkmK8uUkXyLfvatAKVCSz
 +Zg5nY6JpkIQ7GnUHyEYtrxhIKX5eLv4J0bKFu6D4TFPslQOCwvTgjVoW
 yQ1gLHKsJbZSDMG88qK/s+pgvh97ruK1Bw3OAZSt3wsrV6+Ilw+HP60gh
 5jZBDFOBj/nitrkK/BHiL0Fp9NwbWxLw96X0zkJOe1VIwNXQRbHanbL/7
 LC98bNEMWpeEWEeHPOdGyxN31UfJRgfmLxQeUbC3wYgLCsqaDqXKByZzU
 N+qEoIccGF5Ugj4Cnh79tXM4WrqN8266yPB3Xj/9LmiyMfm6ZZY7Zjd39 A==;
X-CSE-ConnectionGUID: AkoBzCp6QRS1JNelBahEPw==
X-CSE-MsgGUID: ybSFZPD8RGqPR8lLqImTSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37732628"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37732628"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 09:36:51 -0800
X-CSE-ConnectionGUID: vYbiTcaoQeeSalLA7TGMjA==
X-CSE-MsgGUID: 6JtmXNI2SgiHSVIVhWZ9Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106744986"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 09:36:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 09:36:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 09:36:50 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 09:36:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x3gFyx08IA8XgbkCN5ibJpl7VA2HwMRmPJ79TpNPbW4PSSdWMErtfyheLOqNFKEQsYCuV3iWzOiGdxSE+nPqVbC+iJpkxlLsCn7efN13CZUaiXmHJtFEFok4AvnlsVoLVVBqzA4RniPoBerHB8dcUUs73QN2W30zJeTJQpay9pUUSjB1+c/tJAXDWS67sQMoD7DFOFQZ9bynOXD0NYahS/FTFlI+jgAUqOz7mr9USo8+glTEIVPfrbXakrAJiumBjc4osslMVwDicvfLkGhEwmzr4KD9kqlCzYhNrKBppEMLRSHUA1QKTUpab8QM0aDdg3txfTNac5fBsGKSQEs/tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/E48CXEpty51czXlF1kW+TBIfTN2L1GzQkxekfHqrVg=;
 b=ofJNQXD+3HRBSJj4pbWOB7bFogh7++EjWQImvgo4M6E/wV6YGkLfgGdQnrrpkcDeIwl6Kglu2+fNRqXFSfMO5VWRPH4+iYUsjNxYPzMeSzt7YGRJwTzDGK/uMpE2DEBG9C7oaPTHqs1i72do+1ujaEgiAhvkiCXI2hDxIvuXWR+YfUPSjN0973jO8dwFNKHi/CB2E7omnSOxh4Kk2nfftz43ehSr5eh5OEaLCsTuuMtl6WGMvy0N1ei4tC/c0cxZIy2HyfaRxWDPIz3TIEuODW1jXsjNwvpc6cAE7+fU6iDwkWZ+9UGKLt0qUqle81Kt1SJYSrL4DrjWbbIyafdiJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by PH7PR11MB7663.namprd11.prod.outlook.com (2603:10b6:510:27c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 17:36:47 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 17:36:47 +0000
Date: Fri, 17 Jan 2025 18:36:42 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 5/8] drm/i915/selftests: fix typos in i915/selftests
 files
Message-ID: <tgmxm7qkkhjjwp37jrpkelyumgsvwdsgpn2sxnzmosjp7l233a@lir7t2okvqsx>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
 <20250113184318.2549653-6-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250113184318.2549653-6-nitin.r.gote@intel.com>
X-ClientProxiedBy: VI1P190CA0022.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::35) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|PH7PR11MB7663:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d157c1b-3424-4d09-9317-08dd371d8495
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bkNXNTZlVjFyd3VIRVBEeU5PQ0tCdzBsM0V3RGZNaGJuejlnR05GRVByclEr?=
 =?utf-8?B?M3BWL21ocTdzTFRxcTA4MzF6bFRNQ05GY3hKelhvVmNhQXd1MkU5WGR0Yjgx?=
 =?utf-8?B?SS9WRHJVdEphaFkrUTJRMTl4WFFPL1UzSnk1dVpIMllmaGRZZUt1WFdXN21Y?=
 =?utf-8?B?b0xRazNnSG1WSjdBMFFJeVJScGRLMmxsRUVFKzdQTWFWSnVsSHdGSllMQldW?=
 =?utf-8?B?ZGFOS2RBbXkxQXpSTGZNdEg5dkduZDR0cHBkdG95MWVHVW1vaWZvSTMrVXBX?=
 =?utf-8?B?V0d6T1lYaFlGUi9NdXZhUUlPSEV5RGRxN3ZVNU9zVXJzcyswWVNIS0h3c2Ez?=
 =?utf-8?B?dis5T1YyUWJRU0hUVzgzZmdNUy9DMm1rSVZHdWxRNEs4bS82KzZqTGxJa0VE?=
 =?utf-8?B?V3NRQzJ0VGpaMTR4Rys4em9KL1pLU2ZCaCtwbTdPT0tzVFBIQ2lKS1JXeUpy?=
 =?utf-8?B?Y0Ftb0ZIc0dUWTNFV2NwcnVQSC93VjZKZ1pjRVhzM2E3MjkyMUZiaS9wbXlV?=
 =?utf-8?B?K3RuOFozWVhlZlNKUFhPSlYxanNSeWJQNXhsNVlSMm5XdmY1cTNlOW55czRJ?=
 =?utf-8?B?b2FhYmpJMjdNRUhJT2RyZCtQSzhlcmRTcjhqcjcxamRDb2Rzb3BaWHhFOGlI?=
 =?utf-8?B?dlozakI2d0JHTzEwUG1WT1FROEdlOEZOMko0My9qZm9MZnRUM3d4bUp6VmRI?=
 =?utf-8?B?eTBZaVloSTM0OWlOSDJyZmpYMEpIREdDU1RWWUtKSndNRWNLajdBK1VBQWJF?=
 =?utf-8?B?aW9zSFNhbDJRZWNZb05BR281cjVpZ1pMRjhmNGtVbDFkNFVHSnJPTHMyRnVl?=
 =?utf-8?B?ajJ0NVk4QkdWcDZJWW1VUFp2ZWY5U2VNMEpqUmZaTTVUbjN4TFVaYVhIM2Js?=
 =?utf-8?B?aVpaSXEzSzVsSnRuNGxOdnJ0Nk9hVkpZTlBFMFJuRWFTZnVhaGxyWkRneUxs?=
 =?utf-8?B?aEFoandvTzN0ckl0c0FySFpsdW84U0ZmVm9PVmFzOWhtQUFrQW10QStGS1Mz?=
 =?utf-8?B?dWlZYXVlTUgvLy9vKzJqSFAyK1JPb0FWQ1AzV2Q4N1BGdlRreEdwYThXdlk5?=
 =?utf-8?B?TnRQTlRWY01nSlRFT0xTczBWVnBhQXVRVEh5d0grb0w0Yms0V1Y5UFhuelVK?=
 =?utf-8?B?LzBwUVZHczJCbTJ1c3hCUDdIRm5VbnFnK0dJQjI0eXlDZXJGOVE4RHdTVUtm?=
 =?utf-8?B?aHUvWUhvQnJsYS85bkdYQkMrUVNMVC9VSWJmOFN2VEZHQ2xvdllWVENTTHFJ?=
 =?utf-8?B?eThhdGJTQnFuNnJMUFB2RW9lV2ZEU29Cc0p5bFczUy8rdjBNRjlwNDRncHov?=
 =?utf-8?B?a2lPUFdrbzY0aGUwbFRZY1VJdkVqOGEzTVZhVnVMSDZnZXFHUGdqZFZYbi9W?=
 =?utf-8?B?b3J1QnFzT2RNY1RQWDhsY1lRM1N2MmxNQXJ1WW9TSzBHcU0rUzh0eTN6eGVw?=
 =?utf-8?B?MHdGR2tXaG1Kcy9vd0d3Q0tjUng1Wjh0cHhkb2lNTGFnMzRUaHV3VnBPT0Rx?=
 =?utf-8?B?cnI5eTJnZ0dkQ09XSHVpaWhEMUI3amZxaVJSeFcxc1hJeEppK0VLelE4QUZG?=
 =?utf-8?B?TzUyQjJOQ2FVUUdQNlF5Y3FtZ2hac3lVdGhLemRWSStMcFBaQUpPck41ZlR3?=
 =?utf-8?B?c1dTTU1Edm5zL1RDK0RSTjZmejBMTkx0dExRS1pEazJVYmtjcEpMYkxCdFk2?=
 =?utf-8?B?OVJuSmpENFkzMVU5c3pMWWJGV0hDSk1vYmp6VUxZOVlLeUpnVmlMVTE1aEtR?=
 =?utf-8?B?MDRIaWN5cytaUk5hbjV3L3M2MmJaSFdBaUNVZGZqSVN1djJ3WEl6eHQ2azRr?=
 =?utf-8?B?ditnYWdVQkZITFE2SjdOdnh3QWQxSkVJM1RPaVBvc09CMEx2SDY4NVFNOFd2?=
 =?utf-8?Q?BYF2FiCWq4Ftw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDg2M0JtalZYWG9EWU9VMXZTZXdmQXU5cFl0ejgwbkdlbXZZcE4xdGI4MkV4?=
 =?utf-8?B?bjRESk9aWUhTbEt4cm9hQmlQZVBuWHhqRTNtakd2eWRpcm1TNlFTU1RjNWdC?=
 =?utf-8?B?b2lvUThkNVkwZnMrU3ljRzI4dmZVcjJZWUJaZnBranVuaWQzdEk3RUZJZFdP?=
 =?utf-8?B?SWR5NVpRRjdpVVZDdWkzMnlPL1dDdzhlNHgyMDEvV3c1eVFFTUxONFBHeWhM?=
 =?utf-8?B?Nmg2TkJJMGlHZEJHNkxock1aOG5MaVA4WCs1b0g2QXhGYk9wbUMvMVlveksx?=
 =?utf-8?B?YURYcXc0MDlJWlRpQjFZTDlyekM5RXFvbExUMlR2Ymh4Yk5yd3VLbm90VHF4?=
 =?utf-8?B?NDl6YitZSkZEY2NkT2JWZnoraDNTVUJ5NHJKWHJ0L1UzWVN0V0tuRUM5N2FG?=
 =?utf-8?B?WEpmbE51VGkrSjZOY0ptZDBnbTVDYkJRaTVUNml0Nm5yUG1yUi9pNzJhRW5H?=
 =?utf-8?B?ektSNkxHa0JHckROT1o3WUVEMmZweVo5dHl6UU1zS0dlTUc5blh4YWdSbHZm?=
 =?utf-8?B?RXBVTk1US1JhNnNocFUyb0xWZ0lGOFJMVWtBN21ENHJPTzJ0NGZpSW5zSEdj?=
 =?utf-8?B?OGFER0ZHMktFRFZMS0QreGw2eWJ1KzdnZ3hqZzNjTHo0TjlLNWpsRWQ1MzF5?=
 =?utf-8?B?TEc5dDU2VitaS3BlOG5ERldSY3VMTDZQTW1nSjhrT3pPajRPL3VxR0ZLbFhp?=
 =?utf-8?B?d29SZEYvL2k4TDV5eHpreGoxSkxZS3hma0d5UGg4NDNxak9XRFpXZG0zS1kx?=
 =?utf-8?B?V2hUanBTN1NlZmo5M1Y0RnlIZGNtSXczUnAyR0FnNkxOUHFDYzB5OWIxSUlz?=
 =?utf-8?B?ZC9KRElMMFlDRTA1dElVMEIxMEpZQWFESTRnYkd4MHJUOGpWUHFRWVY4SDIy?=
 =?utf-8?B?V3pSV1NaenA4M2tsdVRyYkpNK09malUvVUhycjBsZU5aTVlnR2JnOFYrYUxo?=
 =?utf-8?B?RHhCL0dPWE9nd2QrQ0trQjc3SWd2blV2ekp3Tm9DZGdwL1lBKzdvczc2b2x1?=
 =?utf-8?B?R2pKNVU2VFgwRWlHSWI1eE1yd1dWS1pRS2NNT0VuU3FidXFaYS9MZXVWYUha?=
 =?utf-8?B?WDRXS1hTakZlb2x3YXpCM0prNWk5ckIzODNNMlVWYjN2ZmUvRWsxUWZWMTNZ?=
 =?utf-8?B?NXlndWJ0VWtpZFlzNTJPcXNKVE9UVTRhZEtUS2V2SXBFeEd4WG1BSTBETklS?=
 =?utf-8?B?VnNzb1Vwc2VqR3lKZndLK0VUb3FzVGpaNkhFYnUybnNNM3N1MjBBV3JYZ2Iw?=
 =?utf-8?B?b3V1Z2JFcHEzYzVaVm81dmpzR25wVVFDYzYyMVJ5OTJxZ0hWQk9DSFYwaTAz?=
 =?utf-8?B?UnA3TzRhVkkybUJkM3hyMTROekxYNjRwT3RPeHVZVlJUa2JuWUNoelRsMkNk?=
 =?utf-8?B?SHRFVnFtMFdMc2JSbnpMdkh4dUt4bERjUFJVN0huejAveEk3cW5MT0ZyMUxy?=
 =?utf-8?B?QWVtRzVEVVRnV0RqZXE5Y2FHNWdNOTE4YkNiZ0hraUhja2doV1huVFBtNnRr?=
 =?utf-8?B?d1RjODZQUzNIUlRKdGhuKzVzQnlRNzd0OHVpVWcwdTMrd0lJVy9DU3hqMGUw?=
 =?utf-8?B?RGs2dU9haU1VM0pDaUdGM1puN3A1aEdZbFBMaFFCcjNEZ0JGSDZWaXZaWUVh?=
 =?utf-8?B?VDBUcVFLb0RXSTdXZkdOSHZBMHpuc21QYU9IZkN2alhza2h0UURnVjhhcURs?=
 =?utf-8?B?WncwbDRpZi9paE1kbTRkaDMwME5NRzJaeTBWbllzYkg2VVJLSmNhbk9WSzVr?=
 =?utf-8?B?ODZ4YjNLdUl1RUp5dUJ6emxjdXFVN1RzRzRpMFB5ckdzd3I2S1QyOHVITlNk?=
 =?utf-8?B?NGx1UUxHUlF4WE5udmhwQ0wzY0NtMEtnTVJnanlDeU9NZFFseDZrZElVUVZ0?=
 =?utf-8?B?TTVVMldybW9ubndVZFpnQWp4U3ZSbVBuV2pTWTIrZDAyNjdhZFNzUEp3a0Fj?=
 =?utf-8?B?WlRucWh6Z1JBTkw2M1lUQXpJM21YTDkwdUJwa2E1Zzlya1JWd0N5SkJOZ0Fm?=
 =?utf-8?B?M3pDbGNDeUVvTmdvRzZKcUVmbmh6VzJPRFRiZ0FRTHRURkFrYzZ4MXBhQkNS?=
 =?utf-8?B?K09JMU1ZTHBLV3lJOUlSZzFJUFVON25keFdYZXFZZzYzSjhLUzFHUy9OeEZP?=
 =?utf-8?B?clRNMDF2RWVraGpYZkxPeC9xaVVXWDJsbUVKd0h3d1dTWmpTWDFFVndYbjRT?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d157c1b-3424-4d09-9317-08dd371d8495
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 17:36:47.5768 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gbt2X33RXNsy7asPNSTm4O+e7YnovFsNOLGUgrV0twivJkADR+sZOgOkiXAlDMdDoEqeGvpqAd0CThvNEqA7x4Junaerd6lgCzVPEoPDW8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7663
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

Hi Nitin,

On 2025-01-14 at 00:13:15 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/selftests reported by codespell tool.
> 
> v2: Fix commenting style <Andi>
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
