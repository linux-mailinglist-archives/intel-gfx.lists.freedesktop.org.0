Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC282A09CC9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 22:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC2E10E108;
	Fri, 10 Jan 2025 21:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9191E10E108
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 21:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736543248; x=1768079248;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=IEr021/JsEGKEivfKoKzQmHzSjWsrfTNIxtarSO3BFA=;
 b=U9CmGK89VS8qKM+AUtGNnz53dCXiwo540KHAAybRYTUG13tUgbaG7jmx
 fepNac5gz7DmSxIL/EIAroarokxSqvzvI8GEE4U6e6/rs4btDs5IlAV+Q
 ribK2kczVlW3YK14gHiCcMLG+VUoBN4p4fjz85Ut3pBE9bvr+JUwbr2gC
 Ai16gZdRoCzz1o3/VWuD+VQyezp93kXLbohzfcTfyt94evyJwCpqu1Aqp
 QHWradXh1bWZk9hOj6CVniJEwClsvDO4ZE9dUM3wJFWrxu2IbtOp7X6S2
 /WRPpEktOLqcreaJbhmskG1KtNzPa+Hrx96sBZDEApjGz/Yy8bbBV4Qwb w==;
X-CSE-ConnectionGUID: mYbH4ibxT72U24IQI468EQ==
X-CSE-MsgGUID: EB/12E3MRfuQzQa9rwTXbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="36737582"
X-IronPort-AV: E=Sophos;i="6.12,305,1728975600"; d="scan'208";a="36737582"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 13:07:28 -0800
X-CSE-ConnectionGUID: gsbefb6TRAGxphx7dU4uBA==
X-CSE-MsgGUID: pcdcomj8S7iuPZg6O6pBgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108465677"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 13:07:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 13:07:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 13:07:26 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 13:07:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KMQMluXabJ5vWLfH9adn48+y9zvxePrh06mSVn5IUzmPjHWdqB6qZfPy9zmIiUGxDw7G920dSB0PO8saEYhWlRB0y+ykFD9nEvPcWWHjuDYHs91PW3zwMvX1YmDpfR1vRRUMATV/dEOWy1pOBS/+bSTMBNZagJiC1Y2Niu4PdPaM0HsWvO2fJSwC1ypQTbTw/AKg8ALUU2kKSKU0QUhj74zJV9d5jzgI/37K7U46fxIydh2DaKW7aEfIWrdSK+ryoeIfTDwBGe6wiNanK1+ihanxSdbrO7jUSpG6HP+tI57oLBFbSsNV6AR5MHue+gatsD03AEu+s1NrGDTBpbDwwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zNrKZ8mb36RlJC0dK3Hadrz6vyQNhZ5qAd9loXyNiZs=;
 b=HngLoax8frrJqzwudX8wX70BF9H1JKLCsrlUXV7t3yOKZqi7lhTJCzomxhf9XUIx7ju5YIjnQd1JBQFBPsSliakk0Pf03H9ihw/D7f4T74bRy9EHOjing5Saou7pPL5bx+itNwJFhkO8diwLXMWsmur9UtnADnSxsOFQr3RcxCR0VlVMS/n1K7jCEJ9sw+YCbTJzYm/UFgYzuTghJPDx20/M4BGU6DBALkuKTzTGVuTfV0sK7zmrtucv69IEBs8aJaS6uz62MT0QMX5p2JCP9Biqf9Tx/HF8dL0tBBzT2X2FHUmnlEeHRn2l6isrHeGiYRCroMn9lvkHoMBrj6nb6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by MN0PR11MB6302.namprd11.prod.outlook.com (2603:10b6:208:3c2::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Fri, 10 Jan
 2025 21:07:10 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 21:07:10 +0000
Date: Fri, 10 Jan 2025 16:07:06 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <andrzej.hajda@intel.com>, <andi.shyti@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/mtl: Disable render power-gating during
 selftest only
Message-ID: <Z4GL-jY_nMSF-pj0@intel.com>
References: <20250110140947.3471824-1-badal.nilawar@intel.com>
 <20250110140947.3471824-2-badal.nilawar@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250110140947.3471824-2-badal.nilawar@intel.com>
X-ClientProxiedBy: MW4P223CA0010.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::15) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|MN0PR11MB6302:EE_
X-MS-Office365-Filtering-Correlation-Id: 365c65e7-d78d-4470-601a-08dd31babf35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTRzSjZEc3BTL2dYSnlRSU13d1FNeGlQeWV5dGFid1N5dU4raml2Ylp1QTJV?=
 =?utf-8?B?bEFYZ1QvRCtkVWZZWXRxaUx5N0RqdEs0K2dmUHdFMzk0MFhXelAvOVpIdjJL?=
 =?utf-8?B?M2JMVEt4SHRjSklxN1h5cVdUaGExWUIwRmZ6OWVKeHh0aENKQ2p2YlJtb014?=
 =?utf-8?B?dUNKdE1PRWE0RkVIcy9VRVAybFpwVU5wWlFUMGpibmRQY0hhQ1ZHR0h5QWFW?=
 =?utf-8?B?K0poSlBiZm9VQm5LMGhzblcvMXpPeFJYMW1MQXRkcWF5bU53SWdXaEVFZVNp?=
 =?utf-8?B?Y3c4bndGdS9EK0t6TEVRdHVMeWJReVBENlNkaVl2dGZYMUNlSEd5dE9oNHA4?=
 =?utf-8?B?VU4yUDFvNHo2YW9DemNvWk9Sd3p0VCtwNDlxTlE0OHB2dzFjeThQeEgydDRO?=
 =?utf-8?B?Z0dZY2I5YXhHVlV5ckthTzJ4Qng4bkZLUWE1a3phMzIvTlpiQzA2QjRRNmZn?=
 =?utf-8?B?Y1VYWmxZWUpmcXpZdGlWUVRPdnl1Wk16bnhMYjZHQmxLYlhkNXI0Q0VaazR0?=
 =?utf-8?B?OHorTEdpT2EwTjZaZnpWbkNHWDErOGlsK1dXeGVLbjRVMTBQRXJJK2NCZHNR?=
 =?utf-8?B?bndCRlhSNFp3d1YxaDE0dlJVNlpNSjB2RzFyNTZVaWhUM0xjZndWZ3JqVXNx?=
 =?utf-8?B?OGY2VjR6ZEQ3NGxpOGQzT0pubitNelI0MTY0dVpCdHBUQk5oY0E1NXBjcVV2?=
 =?utf-8?B?dE5xcmtoSlRNUHJ6ZGNRenBWRENGZnczY0d5dzJGRTBZaXlmaldZNW01L0lI?=
 =?utf-8?B?RjZHUi84d1BrL200YUkyc2lseU9nNHBRb0ZENDJxWTg0Vkt3eHY0cXoxaUkx?=
 =?utf-8?B?WEt1WXdSQ3VHcXM4Nng2eCs1b051N0hOR1JXREF2dkN0Um5TcWZpMEJBei95?=
 =?utf-8?B?WnNZQ3p2VG1YcXI3SWdtYjc5QStEQTBZOGV3RkdqVzA2MjVjMUZhRE1YbUpL?=
 =?utf-8?B?UW9oTFJTTzI2Zit0bDVFRVBJMGZja0dBa3QxSzJDLzkyM1JqcTlKRW5OQVFn?=
 =?utf-8?B?dW5IeEN1ZCs2c1p4OW1jRHF6TW03Tm9SaUNJVm5zdVhNRWwvOFQ4QTRVNlFH?=
 =?utf-8?B?b204N1FENU13dmh5NHBLOVlwOTRkSlEzWXB1YzFaQVBFTU84eVdwOTg4eTdQ?=
 =?utf-8?B?MUtIcDhDOXBQV2cwR2V3M1Q0SjMrTjZrSEkwdTlPMUZ5QTVQd09aaUt1TDJP?=
 =?utf-8?B?ZTlRRGZoWWFqeERLazdWN0VSTllCQVFYcDhETmdMaVNrdVoraVVnUVlOTWpQ?=
 =?utf-8?B?UllDQ2ljZFllZFE2T3dHazlNeE9QblFYbFZHY2w4dUZvaTI1NFduRU5kRVNB?=
 =?utf-8?B?VEFDaWdOVDRqcEMvTG1qcWlsSDQySUg3TEhlbytMZ3ZuN01mSWlMVnU1Mms3?=
 =?utf-8?B?VS8rL3UwUEx0Q0ZpbGtzL3JZcHpJRVRldUIwdkNFUnJBSXZKWVg4OVRwamQx?=
 =?utf-8?B?ZHBtQTJLY0Yybjhqc2FobWVTN2p3SXpWUHJETlNqSkV2Wm9ad2JFdjhJcDRO?=
 =?utf-8?B?Q1lBbXU2ZEhUY1dWWnFNazhjT05ZekRtc0VjZU1OdEVCNDZhaUttZ1lOY21q?=
 =?utf-8?B?L1lEdVpWL0MreUd1OVFVdm5iMUlTWlhCRnlZblNsd1lkcGE2QnBtMFVTNzlV?=
 =?utf-8?B?c0poM1liWkRrQjdhZWplV2RndjAweTdJbnBPaEwyMkdLY24xQzNXZTVCVFhS?=
 =?utf-8?B?QjJtVW8yVUhvaFVvcUdmN3BGTklJVEpHbDBDKzdZMWU5WWhyeEtYL0ZaYjRt?=
 =?utf-8?B?em1Xbk9sWnVFYmI0U0dha1kyMnd4Qk1mbDZBNG42bVZOc2FrWWlNWEVCU1Q1?=
 =?utf-8?B?cFlOT0c4Y1h2RTIzRlVCSTFXNVlmTU9qeVJ2MklVTlFFUnBaUDJodU1nbUJw?=
 =?utf-8?Q?va690QIDhi+gc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0Y5azZQWWNUUHBWTGZGdnAxLzZZYkJrTkdSblpsb3NaMFZyMS9WOGtURWxt?=
 =?utf-8?B?STJBYktDRTM5Y2pMWGljZWpVaVZ3YTRNTVpMbE1Iei9hbTBHcitnTGtuRm83?=
 =?utf-8?B?QkhzQmR5WDNkYjQyNmlyZ09FTndqS0lCNnQrVkNHM0FjK0xDY1k4aUtTTCtV?=
 =?utf-8?B?bWg3M3RMSEt4TXpuWE1ZTnFxRW1McVpScGdqQk5mTW1VM0ErUGtzdTkzSXY4?=
 =?utf-8?B?TzRNNGNndHc1VFJNc2dSWmhGdnhqVUNzVkUzY2Y2K1ZNdVpLY3oyL3RuTjdq?=
 =?utf-8?B?MCtWSHNMblR2VjUvc1gzbFFhMFZ5ejIrNEx0clk3QW92Y1ZBVGhTSXZVa1RB?=
 =?utf-8?B?MmxuS0VPUW1MS09aMm9iU09NOHhZMW9GdVRGYVdtWlg3WkVxQ1hZWVpieE9Q?=
 =?utf-8?B?Vk5kUWdYRzF0MjJ0WTBZR2dmQ0V1bndrUFJWMHRsb0x1Z3VHZ0dGekR0dE1m?=
 =?utf-8?B?VVJadEw4MmZJMlRmSEtzWGtmU3pPRGJVbXQvbFBIUU15VjB0TllXRDV5aU9j?=
 =?utf-8?B?MEhQRS9pNU1tQW10NjNFWHJiN3UyaWhkTnZGRkxRa1ZRaldodHpjanRYTmRL?=
 =?utf-8?B?MWd1VDRNVFJpSW1PcXhPODVRUjhhanNaYlNGZ0lnaEhta05NeHduTUk3bjI0?=
 =?utf-8?B?NXRNMU50RHFhQkFLTUpBMC9DL1BYaWZmWWt5WHRYNUFTUnpjZ3lnRkpoM21F?=
 =?utf-8?B?NFVIeTJDckpNNnZ2SkVrRnhmbmF4UVI1cVpnanZzT21CYWpwZHUwcVB3blVl?=
 =?utf-8?B?eExGWjUxRHQzcE5lYzk3MnRWRjU5QkFUOWJacEZMWUREclZuYUo0U1hjOU83?=
 =?utf-8?B?RktzQlVWN1QzclFEeDZMRXlHSE9LTGFYWDJabmhZRUxldi9DNjF6NFZxTUgw?=
 =?utf-8?B?MEszcUNqREEzN0VvK0RVVS9MYmIwRkNaSUgzYjlzekpzbTZkSFNuRmJ2R3Uy?=
 =?utf-8?B?alcyT2NZODVWd1c2T3NjbUU5bWMzanlLWEFsTHRmbmFuUTFicld5c0I1eUE1?=
 =?utf-8?B?cWNSTGFNTXlRd29kRUtTeld1b3FNN3hDMm8xalo1QU1wSE9ReG1rYUg2cGVC?=
 =?utf-8?B?cVBPVjlLZmJIZUZ0T09YWXN3bXlDYmkrZEpiVDNJcW56b0dCbEp6WVpwYVVG?=
 =?utf-8?B?RDRxdFQwU0lrNDBzTzhmQVdjd2ljOUJ0Rm52U0NOaGdIeVNwaVdpY1VCcFBD?=
 =?utf-8?B?VUxYQS9WUmpUazMxbGlsY2RnWThmdHFrb2h4cFJhNW4xNlVGSGtaOGNaZzRQ?=
 =?utf-8?B?MllkRjBtMGxHcjhpbXYyM0RWa0lLWFQ1NXhUUTBUU2VLQWVJcHJwVkVBTS9q?=
 =?utf-8?B?ZFY1Y0tTWnRkRXlzNjhsWG5oajh1ZCtxTmd5WWVSeWJKN01kWWdLV0p3ekZv?=
 =?utf-8?B?R0NWNzhrUTgvM1d6WFlDQ2ZjV2dIUnNiRGc5UVY1Nk13a3IwcXErclA1bTNJ?=
 =?utf-8?B?Tk1rWmdJNWt2aExKRmdqVk9yUjdWM3kvSEVTakFTRHBPdWpFMzAxRnJJYUF2?=
 =?utf-8?B?aTNlQmUxdHlBOVpCb0F3R01KSElENDRhS2lTVjhwM2prTTY4VHZyMGlGcDBn?=
 =?utf-8?B?emwrVXIrQ2tIcFd4VGlhSCt3elVZRHAyRWp6WDhhbytjY1I2NWVGcGQ4S0wy?=
 =?utf-8?B?YmNaZWcrUmFkWDNndEkyTDVHWmZTZ3QycVpkYmd6L3pleS96R3BOSWR2N2NH?=
 =?utf-8?B?WHFKSitiM1dNakRvdXR3bVRCRkFsTzFVSzlON2FoaDJzVk1FWHorL2hSb0hZ?=
 =?utf-8?B?c3pYVnprcE50SnpsRjBaZTJVM0x2MG9INURFdG1CSnF6NkJJeFk4QUg1dVAx?=
 =?utf-8?B?RjlobDNFZGdFM0oxL2wxdkpZaHh5QnlkSmNSOEI0N29GRGNiRUpCdVQ5VmdT?=
 =?utf-8?B?MVFsanl1bEdKMit6dW1KSTR4OXFzU2pZQXkxckx4SmxuMDF6bjZCZllSTDdR?=
 =?utf-8?B?VHcrQzUxMzRyeGxTdnpvVjE1WXdOK1FTbGJUZERSeDJVUUN0dW5BOW5pbmpt?=
 =?utf-8?B?aE9KTXBoM01ZWU93VTk4VTJOUTNOVWhqdVpmTVdSS2phdXNWaGpBTkl3Mmh4?=
 =?utf-8?B?cXAyU0puL2dkY2J6MDNlMVpGNFRHa2lnaDh6QU11OFBaMHh4YVhQVUFaWDQ4?=
 =?utf-8?B?ZE56Vk1WSkNZOHM3R3lpSnJIcnpPbWFOMVREdEpIZ2liQUx5aEx5MW5mVDly?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 365c65e7-d78d-4470-601a-08dd31babf35
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 21:07:10.0341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /ufEDRePKJpiXhhGH7R4EM6ce0OCXbIv1pVCN/AgSpmFibf/pSYMiaJZSrcVGHnh533zk2sgMln0ygmP/PG8Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6302
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

On Fri, Jan 10, 2025 at 07:39:46PM +0530, Badal Nilawar wrote:
> The temporary wa ‘drm/i915/mtl: do not enable render power-gating on MTL’ disables RPG
> globally. Since the issue seen during live self-tests disabling it during these tests.
> 
> Fixes: 25e7976db86b ("drm/i915/mtl: do not enable render power-gating on MTL")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 9378d5901c49..2dd68ca7ec0e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  	 * temporary wa and should be removed after fixing real cause
>  	 * of forcewake timeouts.
>  	 */
> -	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
> +	if (i915_selftest.live && IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))


hmmm... is there something we could do inside the selftest to mitigate that?
here it is crossing (abusing?!) a lot of layers to workaround a case...

also this starts to depend on some config flags, what the compilation bot test hit...

>  		pg_enable =
>  			GEN9_MEDIA_PG_ENABLE |
>  			GEN11_MEDIA_SAMPLER_PG_ENABLE;
> -- 
> 2.34.1
> 
