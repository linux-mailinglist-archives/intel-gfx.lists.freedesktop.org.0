Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F12709D8D4B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 21:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E08810E721;
	Mon, 25 Nov 2024 20:12:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MWsZArec";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C1810E721
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 20:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732565535; x=1764101535;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aGAWWWQer8OvKzTyz3N5qkp2TK+16nvTXoFob0HBbgU=;
 b=MWsZArec2s7cjxywT+XBchf27WwBLkfoRbCXz+FjjJ+RcfmUduCrz6+4
 XBrVGJuoW24Q1T52ZTVNWS2Cn1BhvW/a3y8q/4SMUJC/I9wW9qqam4BPI
 Rrtqkon9PxMGJykH7BhE08rF+F733ViIxj1hXR7AhkSS9Am7gB+56vn2T
 vtX9fg4EomlCXrg353SIl9ZVwNeBM8Bg7UIKS5N21jVWzUB/i7ToG7m6/
 LnsX66orowo6gGKk+iMj42WND1ENp3IfOkKaGOSES5d2rOxaYbQ/i/BTq
 ts7ovBCshk5H81PRQkaj5J64B0WdZJ8A6hCEqXovIiED66J47ZC1zOfJe Q==;
X-CSE-ConnectionGUID: j6Z4MyN1QHmjEU+kOp+VmQ==
X-CSE-MsgGUID: jbF9Ulq8RNiPEu0x6/JtCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="43354436"
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="43354436"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 12:12:15 -0800
X-CSE-ConnectionGUID: RJqm1xfuRx+Udu2qKLINRw==
X-CSE-MsgGUID: 69MAbZYDQhyjd8ELldXzBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="91511899"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Nov 2024 12:12:15 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 25 Nov 2024 12:12:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 25 Nov 2024 12:12:14 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 25 Nov 2024 12:12:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L+OyxKYHA/IJMJ8M/2umMnQBX6g0TbDR4QGLFcpTYGNNaHVDTK1qqwqx0blB78zklzlYQ10FdQaZQKS20wud36xO4CmTCxhC+MW5DXu0a5uS9OQg7qXks8zI5XYuiTp142VMbM7RaKpo4btHfD65E5ikfifaawqYEk2XlGduH+z0YJjUUB5kpv68mP+qnJ9hq1A7W2mobynQXxo5k9e+Yy6HIprzIqAoEXYEmppxMJ0BsFj9YwrYbEtXjq1s8pKux/IwcyE/PUU0c1RtZmruq6tbAQIgtVgqnG/RoHIIUCVp3YG4NWwEuauDh+uNQ6+DIIL+31f239/NfbDnh47NiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NbKheVmS/9THGtgXuDcq2spNb77rfAoLwZ8jqkowMQA=;
 b=UhdDSiPja48YC/e4QB+PcXqnpkMGdv6TIKlX/NM6+sNjxpaBP5bM91iGOJlb6ZplojzOe0LD+T01hhGNcPuUPKPuJnN0LtZ8OHXojFmjia398u9K+TfA7mhT1BRacp7yzZwDrTHZEfiIRF8d0QHFVvZ9OqPY9ohtvrmPkq18YSfTnhF+RpNuRQmoPpJLspTwC8p7y4TEGy7rKtD1pW9TuWOUHQCeeRVZiiQrUxFFgzD0+N30R9zwrxpgli4dLfQrSTseco8mLrt1XbgZtDvAJYKlKZnf7q0IzZt2ulPOZ4DojT9Z2I/P9BuhQDWzv7X4LUDnO73CLqAAaJ1pwrrD4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by DM4PR11MB7255.namprd11.prod.outlook.com (2603:10b6:8:10d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Mon, 25 Nov
 2024 20:12:10 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%4]) with mapi id 15.20.8182.019; Mon, 25 Nov 2024
 20:12:09 +0000
Date: Mon, 25 Nov 2024 12:12:07 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: John Harrison <john.c.harrison@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] i915/guc: Accumulate active runtime on gt reset
Message-ID: <Z0TaF1a8mMQ0Ljfu@orsosgc001>
References: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
 <20241118232223.53639-4-umesh.nerlige.ramappa@intel.com>
 <f3974eb2-e694-4ed7-a827-dd9dc1c1c55a@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <f3974eb2-e694-4ed7-a827-dd9dc1c1c55a@intel.com>
X-ClientProxiedBy: MW2PR16CA0022.namprd16.prod.outlook.com (2603:10b6:907::35)
 To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|DM4PR11MB7255:EE_
X-MS-Office365-Filtering-Correlation-Id: daa6daac-c25c-405f-0f63-08dd0d8d70f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R2IrUlZoMHR1Slc2NEpObDJpellWTjMzVzdrMEk2UW9rMVRQZEZibUUybE85?=
 =?utf-8?B?YkFGdURIVjA3RENnaGFLTUR2U2syd2FsbVV4eTZJc1VSOEpqckE5UFYvc3FV?=
 =?utf-8?B?RmgwekM3czVWTE1XYmlFZE93ZWxCeGg0M0UwSUFlSEJvSm1zdTVQWkl1aWFn?=
 =?utf-8?B?VGljeFhIVUVCZENkMmNBU28xcFRYMnd3SWhIcUdpRE9iT1pkdkc4VGxLdU1j?=
 =?utf-8?B?eFBMMnd5eCtPd052S0RmVEswZTBHbnM3RmlDTmNNTmV4M1JoM1RackZJQ08r?=
 =?utf-8?B?T0huWnhVV3NaU2JFbTJSR0cvRmlEQStUSjB4VjNXRmRJakM4RkQ2K3dlZnZP?=
 =?utf-8?B?aFV6NzFhNUJyNi9TVWZjL0dBMFhXcXk1ek1rMlNNR2xqTStaVUFmMEhvaVlx?=
 =?utf-8?B?a3AxOXRjSEw3MlZSUG5WTDBSUkpMdm5VQlFMQWE2MlFFV3F3QnhvRVUyaExh?=
 =?utf-8?B?WXpKdUM3UzZ4eW5Ba1FPcGo3WGxhYlkrTlZFMjlBYUpLOWpxMElZSmdHT3Nu?=
 =?utf-8?B?Q3paY0lZdmg3NStlSmlGS1Jjek1KK0lBM3F3MFFIRlNXZEt1SUIzcmgveVdw?=
 =?utf-8?B?Z2tXUGlLKzF2c1RZM0RDMlJoUC9nTTAyYXQvTFcydkdRc3hQRmdRenR6a09l?=
 =?utf-8?B?eWRGRmtTWHdMY0NvN3N2czNKcHhOQklpMEtGNHFvV3N5NW1Jb1p2ZDJ4UzRl?=
 =?utf-8?B?OGg3eStBY3UzZ2k4RFRKcHFkL2RlVENnTFF6Vm9sL3pjVGx0Q2dKMFU4TUtL?=
 =?utf-8?B?ZzBVZ3VMNU4vTnFQbHpQV1c4NEFJOTJaajdWNnprK1RPUzRQRGN3QnAwM3li?=
 =?utf-8?B?ZSsrZERYUkZWbWpENnpld2NJSy90dmZoZkd2Um8rTmVXM3NzQXBCdkMvVFhv?=
 =?utf-8?B?U1RXejlVL0lpMWFDUHlROGZoYkJzb2xLakRFSVdvRUFLK2d0eVdPZ1U5NXkx?=
 =?utf-8?B?bk9FQTd2NnBPVmpoUTRVQkluUVFlR1YzTU1hSzFXRy9BQStrT1NtMTUzSDA4?=
 =?utf-8?B?VXk1NmtFb0Frb1pRQW5KWENJMjFCZFJRdUVBNEZTSlpQNFBmQlVTWW5rWmY3?=
 =?utf-8?B?Vzkvb3h4RWg5QWNwV2ExMzBPYzlZRFZrSTBmbFh5YUtKVVVkazVla21GVlg4?=
 =?utf-8?B?RDlmbW1pb0FralZDV2ltYXVETy9xdlM1NEpXV0VJTWYzZjNvUFdHWWRmT3JD?=
 =?utf-8?B?WFRZQ1hSL3dtSUNKYy9PTS81TXU1YzZrSlpoZHNrMzVzMWx5aUJoK3VFOFg5?=
 =?utf-8?B?eklNTzQ3cjY3VVdUNVliakFKR2VnNjRoTTFLUytSUmtUaHcwejRaRnk3V2JW?=
 =?utf-8?B?ZUVlYlljN3BkbUNHSUU1T0dMRUMyWG9BN1U2TUtuSUY4dElhNFlXckl1ZHVv?=
 =?utf-8?B?VGtYVFJJY2hOckhjbHAxaTYyME5ad2w3Vzh5UVFGZXF2VFNrcmg3TWFvRVNa?=
 =?utf-8?B?aDFaVGhaQVlqdjlKMDZob2xpUE5Wc0E0amhrMHZURFh4VFZQZ0tWVnRtSkhv?=
 =?utf-8?B?QjMvQVBMYXhsckxmYTdIZE1nK3dPdlJFTlVBS0hvMTk1VkhUUTFmUEE4aWZ5?=
 =?utf-8?B?VE82WUtPSjRPeTE2dVJDTXVwYjd2TzdPWi9UcFlEdmN0MkJWVGF3Z3Ywc0tQ?=
 =?utf-8?B?ck5IVFNWWk5idXVlZDhwMVpPRHIyKy9jTERxV3BMVTB0UmphdzJaTENKZmVx?=
 =?utf-8?B?Zm5hNTZLRXpOa1FTeWd5ZUkzWVhieU8vRFB6MEFaN1R5TXpadzlQYmpyQ2w0?=
 =?utf-8?B?WSt0VElvTjFER0p4VFBIbGV6TDgwT3pUMHB1QUdhNW13ZUhwTEZwQWFxVVkv?=
 =?utf-8?B?OUI1emRGM2hFVzAzRzhvUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2Erb2xHSjJnK3RKeXh4Y0ttc3NEQVVWT1dKUWQ2VWMrUEdwUVhDWGRGMlM3?=
 =?utf-8?B?TzRxaVVWVVRGUnB1bzNhcjlTeXc5RElNTWZtRnkwS2RkdGlBZi9YeGhJN3Zo?=
 =?utf-8?B?ZXZxTTVFVEVKdWRaNzdBZ3dtK2lid1BRQ3NxRkI1aHl5cmVzQ2h0dnZUcnRM?=
 =?utf-8?B?UDhjaHpGMDJsbldGYTJXSHhrTDg5RTRSQmoxbTd3bmxhUmtDV05pQzFETXpa?=
 =?utf-8?B?V0JqMDVrT3hKcGQyNGhWRmlicDNNSFhhZkE5TDBhekx2YkpFZG5sN01ZVUVK?=
 =?utf-8?B?aXI4Vy9iM3RJRTJXdG1Nd2l4ZDNsSFVyeUt4aXdDWXlkNkFORktoYTFhQXVn?=
 =?utf-8?B?cXZOYjBQbWdJeUgxamJuYW9UbXVCTkI0SndTU0RFNUkwMUdRNmMwekMxZ2Yw?=
 =?utf-8?B?NG9pTGViR3dvOVA2RlRFem5ocUZPR1RWa0lqbytRNldEUU5wbGZPZURBL0ZL?=
 =?utf-8?B?aXc4R0dValoxUWdRTGlZSDNDejhKS1cwVjVMdWE4dHc4RjNuR0wzUEFmTXhy?=
 =?utf-8?B?M2N6NVpYQlE2c1JTVTRnN21uaWNrQTZkMWdQV2Y4MHN3V3ZTTVh0Q200U3Qv?=
 =?utf-8?B?QjU3SXIyNThSUnM1QWtzSWo0bkZ6SHpIOUIwLzIwSzVBQ1gzczN0TjB5Z201?=
 =?utf-8?B?QVFTSUl1YVFIejhCVFBiVnlleVVQTDloa2dNOElpYmx4clIzUmp3Q0RrbXA4?=
 =?utf-8?B?ODRmY3Q5bVVXbXh2RXFVaWNZWHFRKzRhRUZpRmxTTmJDNk0zMXpJT3VKblVk?=
 =?utf-8?B?Y1d2dENiaXRaZlUyN1pQcmErR3hCOElSd2N4TWFCQW5qcXNUdXVVS2ZXd2My?=
 =?utf-8?B?QzhnVGNSWWVFWEx6OUxsYVlKLytCMzl6a0RlNWRCWnFrUW45Q0h4REEwV0Fr?=
 =?utf-8?B?MXd5SVoxSzEreHJjYlBQU29pQS8rd0gzZ0VjVks1SDlrWlhEVE5odTNOOU5m?=
 =?utf-8?B?c3pTU21RQmVBNzRUVzdxdC93aFRVZTl3YVNMTFoxK21obG5BZDZJK0dpdGRW?=
 =?utf-8?B?cU52dXptYkR1NDJZdmUyUTVVRUx3dzRldmoreEpUUFhVdUxtSkdKQ1NQcmdp?=
 =?utf-8?B?VFVYNGhLVytadEE5ckp6Vis5RUtTa1k2aHJwemJicng5U2srUUdmYjFITGgx?=
 =?utf-8?B?dW1MalFJdmZtUDVSRnBXTFErVmZPU0ZneEtWQ29QK2dMb0R0TDJPU0ljcS83?=
 =?utf-8?B?Rkl6aGUrbnl2Q0p1Ukl5clZUTmhTLzFFZlM1dGxBbytiZ1R5OGdEV2NnTXpv?=
 =?utf-8?B?N09JNWtvcldndWt4dWM4SGtzWTloUVYrdDRkYjFhMGtHdWMrWGplOEdzTHBG?=
 =?utf-8?B?Q05kMWZpZFpTODdZOEx3MFdoNzdsT1lXUkxJckJDYmtNR0RvdmxhamFpN3Nm?=
 =?utf-8?B?dVQ1MTVldzNMV0ZXeS8zY1Nhc3hCc1dvYUpvWk83QjNhV2V2VUNLUGdOTStE?=
 =?utf-8?B?Vm5yUDBLcUlrK0JndExmdndqc3B2Vm8vY2twTWJlQ2EyYnlhd1FIL2VnTlVG?=
 =?utf-8?B?VlhERG9BdWN5bjdickVWSFZkRXlwVGhRek9LMi8zSzF0NmIxOTdMVlNvcVRr?=
 =?utf-8?B?eGIvR1YvdnNvQWFwZTBDVG5Sc3RhSGZ4dWFsT1lGOWZtSWhJd29RVEkvR082?=
 =?utf-8?B?SUE1Z09kQ3JGNVpPOElDdEkxbEthNHdBRXh5SHhreU9oSytmWi9HNVBkZy9i?=
 =?utf-8?B?N2g2UU95bGRGaXRXS1dPR2hZZDc5UjdHcSt3VTB3UEo0bEkzTVhtQ0Q4Vm0z?=
 =?utf-8?B?YktXbkRWZi9qbS9WQlVxOVZQVVhsMC82MkxXanZ4cWp1LzZaYmtqbnpENGxM?=
 =?utf-8?B?YVNPemtoUi80TEdLM2V2WXhRa1JqWnR2K1JzazlRQnJURytQa0pzcEVURXht?=
 =?utf-8?B?VXRFdDFSMEkyeEFaV1FKWVgwRy9HeHorNFhJN2FSemhEdmYzR0h5NDZPdVl1?=
 =?utf-8?B?UUY4VFBGOXJ4VFVxTmxmZlFrMFBHa0NpbzZlMTNzeGhzc0ptb0VHUmpCeFdU?=
 =?utf-8?B?cU1UaVV1S0UzR0dRRzJiblZDZFJjUHBPVSs4MUluS0FRSXVQendwOGRhNXkr?=
 =?utf-8?B?Mng5Rndic01rdWdpLzV6bHkxU3ovbTZJOUpmK0dBYjZVU2licXNLZmVQbXV2?=
 =?utf-8?B?ZUlpYzdiK0JvVzZ6dkZ6dEtTYU5TUWUzenowZVoyUi9McFJBM3RvWG9pNE9u?=
 =?utf-8?Q?5/eYjB6eacjxOgp45Vaq2b0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: daa6daac-c25c-405f-0f63-08dd0d8d70f0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2024 20:12:09.4484 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h6k6Bgg9aSS1kZ9dzYyRFZaxRPgsnN+7UJpRWL6r22tY1nF37SwG92Nt76GIBS3X2Dcu+TA+cs9DlZKBKXPIKwTj+r883Rc07P1UGZ1RtG8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7255
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

On Thu, Nov 21, 2024 at 04:37:31PM -0800, John Harrison wrote:
>On 11/18/2024 15:22, Umesh Nerlige Ramappa wrote:
>>On gt reset, if a context is running, then accumulate it's active time
>>into the busyness counter since there will be no chance for the context
>>to switch out and update it's run time.
>>
>>Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 15 ++++++++++++++-
>>  1 file changed, 14 insertions(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>index 56be9f385270..0c204b7f3b2b 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>@@ -1449,8 +1449,21 @@ static void __reset_guc_busyness_stats(struct intel_guc *guc)
>>  	guc_update_pm_timestamp(guc, &unused);
>>  	for_each_engine(engine, gt, id) {
>>+		struct intel_engine_guc_stats *stats = &engine->stats.guc;
>>+
>>  		guc_update_engine_gt_clks(engine);
>>-		engine->stats.guc.prev_total = 0;
>>+
>
>I think the comment should be here given that this is the 'if' that it 
>starts with.
>>+		if (stats->running) {
>>+			u64 clk = guc->timestamp.gt_stamp - stats->start_gt_clk;
>>+
>>+			/*
>>+			 * If resetting a running context, accumulate the active
>>+			 * time as well since there will be no context switch.
>>+			 */
>Having the comment here implies the calculation below has some kind of 
>condition, which it doesn't. Plus the comment also refers to the 
>calculation above that determines the 'active time' it mentions.

Sure, I will move it up.

Thanks,
Umesh
>
>John.
>
>>+			stats->total_gt_clks += clk;
>>+		}
>>+		stats->prev_total = 0;
>>+		stats->running = 0;
>>  	}
>>  	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>
