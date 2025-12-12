Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E12BFCB8275
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 08:45:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0923710E063;
	Fri, 12 Dec 2025 07:45:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gx7Immt9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C002910E063
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Dec 2025 07:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765525500; x=1797061500;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9vfe1oDm6lrV3utkk7BEMHsJXkETBvRRA/hOwcdRUZ8=;
 b=gx7Immt9bJPDTE+sslKC0JRezVNtjcG2KGAf+e8telmHtdHZne8lsKms
 3utbXJlj+iatd1NiGUogF3yaXbgmo3x39XiMpNKCjp1BF0wq7QMW7HqHP
 sgC7k/5pYu7/0ycJy4wVneCVO9h9ewnQSPKQsEnT6Hej6hOwKIJj/hrd/
 SLAYK+g+3AZvYhlcgO8Kp0d7PIRz6WISomduKNiZYykNTyX/GQpZUo/0T
 24ZWJcENGnga5FLbVD4C5r/vyrBzmAR3HXOE5BSXKfuFDFuU4ZVEVyTAD
 8m88+wGmn/R7JHAUEk+oIU0MnH2Z29r0uP2sWJD0FdnYQcZtRueJaA+AN g==;
X-CSE-ConnectionGUID: KF/q89O5TA+fVcssudKOzw==
X-CSE-MsgGUID: 76E4Ro9+SjWtXsTkdRkFkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67253249"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="67253249"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 23:44:57 -0800
X-CSE-ConnectionGUID: mmTSm3eiRES8b7GnlXrZDw==
X-CSE-MsgGUID: 0Sa9rnIIS6GR4LD0ZsyGyg==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 23:44:56 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 23:44:53 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 23:44:53 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 23:44:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O7vRlRKO/5Lp3dwBAxkFOdd+nLCSWQ/wJtHP/3hRPnYHwNvpuXPSsc2oXh30DVMR8TMidu4tQoM9hUQYgpvB7ygIDagFL22ui8R7YSBjnATneD9RAIBsMwJ199DpguFzn/fgpHE4kpunhAcQfLzCSmf/kIfReM7sgVzCrirn/EGqkwFmTi1Z/Bj1AB4xWOgrifTFAmniFkNZIex5d1dtu94WVdR89MKzXCtKHWiOXXGg9hFLGdAEv+WQuu5xMvcAFIP1Y+p4aswH/OnPhnmOpKEQSsWdpo18wRVa6rdoKGnldj+BrFR6kdlcJyTFX7d3zmv3djwZUfQFPeuOAveq/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VIBuo1oqWuCPjoMrFqIFqO7cC6y3vS7/XOKsZ7H/PYg=;
 b=EuBTaBS5WAraH15z1eUdwbmYxjAgMpqoiPltNs8FFIbemQRcX376UR9CQAhSwxe7rk1ewLm2QR1mEoZgq2Nn0/k8fj2FRYda+mTZhfPJEoa1WzuyVzeiExXhRNQ9TprNhiM6evUabkqdo+muHd3xZx2tQ4kRgfQBgvCVETHKMzQ3aFwV2xydIP1D0zZAFU3esxGSzreheU0Tove5zxjjg2DDXMw6Ww3I69hhLd4U8v6TYrChE/dIlVM/Q4meWic5OsTF6GR4N4Sl3AwUcc5NJ+tQ0poPoQld1i3t6v878NjBdVHj/7dyvZcemtFe1u8NbWLeh3pvKsWF/Ovzb3Y40A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB5070.namprd11.prod.outlook.com (2603:10b6:a03:2d5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 07:44:51 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 07:44:50 +0000
Date: Fri, 12 Dec 2025 07:44:37 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sk Anirban <sk.anirban@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>, <raag.jadav@intel.com>, <soham.purkait@intel.com>, 
 <mallesh.koujalagi@intel.com>
Subject: Re: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to
 RPS selftests
Message-ID: <fbkzo4s4uwplzo3fb4yk3wvplur5l6xc4zmupervrdbl7mfduj@x42wnrbuev6m>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251211175045.1317753-2-sk.anirban@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251211175045.1317753-2-sk.anirban@intel.com>
X-ClientProxiedBy: TL0P290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB5070:EE_
X-MS-Office365-Filtering-Correlation-Id: f092f6de-66da-45ff-ce70-08de395254c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VjdTcGtEVDc3VEYxWDMzRVlzdER1d2ZyM3h6eFBlMmpqN1RacS9nYVpIUXhX?=
 =?utf-8?B?TTliVE1WNVJNVjNaYjUxTVQ1cXAwM2dVU1AvWU1pRy9rQzYrUjBvU1FldUJo?=
 =?utf-8?B?VzlIc0pvaEJpS0hTa2g4RGdESHdqRkQ0WnVPL2JHaDNhYmJyUSt1Q3crSjAy?=
 =?utf-8?B?bExkN2c5Zmw0dnZ1dDhsUXFyNnVSRTFpS2FWaG9OMnQyWEYxdDlkeTFTOExo?=
 =?utf-8?B?aEFCeXYxRHJueWJMd2UvcEdiMTFMTUZhZFJnWEdSNElTUWhud3kraUVpbXhC?=
 =?utf-8?B?amZBWkJoYWNUaEhNVW1IQmF4aTRmUFhDeDY5Vk1GWU83TE10MDNBUmYrK0k4?=
 =?utf-8?B?TTljTVJpN0lqa3hVVk5MZW8xUk15c2F6eHdYM3pMdzRQZzhFajdDeFNKcStE?=
 =?utf-8?B?OU53NjNwYnJzVWtxNkNSRXR5NXIwQVYyVEFxQmI0b09laGJVNzlNTGM5VFg5?=
 =?utf-8?B?eVNnbUduMXdjVFJvQ3JzaFlRbGRBZGRkTnFkZFNkWDlZNDQydm1OUXo3clJi?=
 =?utf-8?B?SDQvRFVFMXlPdmVIUmtscThTek9mTWxqUGQwcnZINzhzSlVnZmZLYnJaTENo?=
 =?utf-8?B?TXFncXB0WWIvdndzbGszczhZQ3NkTE1hamUwVlhoQWZFTWNTVkVLZzlrM1RN?=
 =?utf-8?B?SDQ0cUJreG1CS1hjLzhWSmFFTlRJZGJVaWJ6Zld5dUcrdDI0dlkydm5QcUdj?=
 =?utf-8?B?RS9RbnpObXh6ZFg5Wm5WdWkvRzJEa29ZRUFZeVNnVTQwRTRiMTlCeGVhSDhj?=
 =?utf-8?B?eFpHTjNudTJLNUZxcndjcGNLUTIyU1BhS3pRQVZQbUFPMTN1YS9rMzBwaXRG?=
 =?utf-8?B?cGZkbFNiMFd0ZWMxVnl2NUJxbkltbktuQXhuNnZSNzBKSHFMRjFXY1Q3dXd1?=
 =?utf-8?B?L3QwSWdkbHZxMTBjRkdIVEh2NC9DbmRJT1ljSUpKTExiQStPT2lHdHZHQlFI?=
 =?utf-8?B?NzhlTXE0dlFwK0NEZGljN3VqREhVRmJUWU42RFR2NldQTTlacGRXUUxqT3Q4?=
 =?utf-8?B?MEl1TnppRXFMdzh3MWJKYm5IUlNrczZoSUFrRFhzNzVJRk80Y0lwR2JZaEJT?=
 =?utf-8?B?ZnQ0TkR0Q09oTEJsYytpOG5pRk9DSURFalJER0lERk9od2F3eWJBbnZjMWFj?=
 =?utf-8?B?VkY4bmNMdGNVV3VHa1JmakJkdXh3RHJ5YjBVQVRpSVlpbWpMcGZJL1dtL3B0?=
 =?utf-8?B?cUhzYVNHM3MwVnh6Mklla1MxdS9sRDU3MEwxYjdjRmk1cVdZVWEwZkVTRFoz?=
 =?utf-8?B?clVFSk5JemVOWU1mTlRNK3g1dUZzOGRzbXUrUDBSaU5qMVFvVDdlb0UzMTlz?=
 =?utf-8?B?Q0EzR3EzUGpiblY3YkhRNkpZNmtIdkVpL1dYenN6bVBXRUExRVhCYUFXeGQw?=
 =?utf-8?B?QU50L2xHM0dVcHRKT1ladE42VmdzL1IxeVdkNms1aTlGakgvcm1oYUpBaXJ2?=
 =?utf-8?B?WjhaemVIUVlLZ2tiSEo5ZVpmVDVmZkhOT0lVWHY2Z2ZVYjJOajd3Q0xyUmh6?=
 =?utf-8?B?TWJrVkdETTR0S3piUndqTGlnRXZYTWpKeFhMa01ZOWgyZFlGekE3cmc0eS92?=
 =?utf-8?B?bWpoVnhxcDhjTkRQaUFRbFFOanZLa2NvR29rRUZ4KzRxL2Q5MWFzWUVwRk44?=
 =?utf-8?B?T1FpT3lQb1U5SVpHSFRaUWdDSS95ZEErQ2lnWWc5Z3c4citKWE5wcFpHdllV?=
 =?utf-8?B?enRTRExMK1M5SUVvemlINlpGTHNTd3pQOXZTMWsyOGs2Z3dtNTZmS1I1Z1dE?=
 =?utf-8?B?djdaWEFIalQ2ZkhrTWZPRmxJOERNVTBrelNKL2tRV3pkUTR6SFd3T1cwelps?=
 =?utf-8?B?ZUtRYVdxWWhWdUpkQkhIZ1NuTUoraGpqVDkyb0hjZE9CL3BmemNVcHdSRGhG?=
 =?utf-8?B?S09GSjBpZWtZRCtHR3lCTEg0K0ExMVVDT3czSlZGdVZlY1dhdGNSZVNhaCtr?=
 =?utf-8?Q?+a6b/y6qnOEYmLf6XUcjwInkmk5jmTiH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dytQeSttRTMyeWZOZmhMZFR0TnpjaGhEODl5ME82TC9UK0EvK0N3cGJBb0hz?=
 =?utf-8?B?TmlsaHlqRHgwNU1HT0xZZkdZS1dqemdsUmdIdVN6Lzd6RVpzem9EaUlXUjNI?=
 =?utf-8?B?ckdHMHlmVURmK05sbjZlTDNBU1NTOUg0RE1pUEhpZklYZ1p6SDQ0dlB1S3E5?=
 =?utf-8?B?YVY3cE91WjlKU0hLTjhhc1RNVkkxYmJQUExBV3krRlBzcUt1L1NYTzloSVI2?=
 =?utf-8?B?MVBUVWlkdDJtVEc1R21UMGxRK2k4U29HRlV0d3B3Y2FCdU5RSkdFWjZKWUpZ?=
 =?utf-8?B?ZlJUV05tcFNKK3RYWFJ0YmxqQ3o5c1FxMU1nYjBJV3huZFJoUCtXMXoyeUVP?=
 =?utf-8?B?WlRuYW5qeTk3akVleFhkUXQ4Vi9NOS9GOW1JNU13QWlMS1FJMUN3QnBGVzc5?=
 =?utf-8?B?OEhNMzh6SjdaSDdseXNneC81eXRlK1p4ZVRBZmlwOUxGSmlMU2h6U3l1NVdl?=
 =?utf-8?B?WEdheUhYc3d1d1Vid01XejRqZ1lNbFR0SDlPMm9VaVFRc09vcW9NTytwQ2xO?=
 =?utf-8?B?WWJ5SVEzS1hLWDNJNk9WVWJrYXJVMW8zRDMzQ1RkU3J0bWE2RzBJQzIzU05S?=
 =?utf-8?B?RXhHcVpXWm11Q1pYYVB5OXNpbUF0ZlRid3ZJZ1ZKN1QrV1gvUk0xYjhpVTJI?=
 =?utf-8?B?RnhPMWpSMGVDcDBmV0oxQW5maTN6VVRHTk9VZTIvSjhVY2luTlIzaWV6NjFp?=
 =?utf-8?B?amVHWUp0WEYvTVUrWGRmOVZnd3M1WmJjY1ZNV2hvQVIrUGF3eXI4djExQ2dP?=
 =?utf-8?B?VnZhVWJLb0NWem0zcWwvWnFoWHUwREwwTjhzNXdSbW8vWktGVk5yM3d0UkN5?=
 =?utf-8?B?VUtVTWVZN3RCT0NoSEtEdVpGNEt0Q0dZTjM3bGtrYitmaDhma0pWZUV6OEV0?=
 =?utf-8?B?V3p4eTUwR1o0WDliUU1Qb09EOEFYaVZBbGNjSzZSTnBkaW9ZOXJSOWdnUEhr?=
 =?utf-8?B?TnNOZ3VPcWtZaG9BQnorWlN0dWtCcEQvai9RSzNud01NaXBOUDZrbmZESzdo?=
 =?utf-8?B?bU9GN3RpaExJYURGcmdZT1EyV3V3akljeHk0SWdFalVFUlpLVDRNWEFTYkha?=
 =?utf-8?B?aWZ4eGRhdlhNTUs5clhiUjZBM3JNNXl0RUF1TlFHVTI0WlNKSklHR3pmT2Zw?=
 =?utf-8?B?Z1owNDFoVUpZalpLUkpBd0kxczl2WCtocTQ2dGRuT2tpOEk5M0p4RllYaCty?=
 =?utf-8?B?VHY1K3pUQU9aY1VKT0lnZkErb0VwUW9seFdLa3RYdmVsK0JucVU4MmJjUG5r?=
 =?utf-8?B?QmdYYy81cEw2cFBWZUZKNFBUbGpWT0lNMG0ySTBIY2hPaDNVNldsTUZ0MVFt?=
 =?utf-8?B?Mk9RazQrL29SbnljeFhkbUpOeUdMVmhLcEEzQmp4VnhmeXFUM0NqdlhnSEVY?=
 =?utf-8?B?N204alZPOUFmaFkzSWJqUDVjM0FKcldraDNlaWNZcXhIQUloTDNON3NZVlVF?=
 =?utf-8?B?QjlNUzg2ZmFueGk1K1ZjSjhBQnEyQUZLTUhteWhMb3J2OCtORFdpYjR5dW4r?=
 =?utf-8?B?cmQyc3hvL3RQWlRUTUE4WTF4aFIyRnFCV3NzdFpDZXVRR1MwVk10OTZLTjRi?=
 =?utf-8?B?b0VRS056M2dYTEcrQlVMdDlZdlV2MzZBMHd4TlIzbzgxUEZHY1BuRDMxZzBK?=
 =?utf-8?B?eEhiZ095Z3VkbElKYXpIY004UUdGWXBtV09pbGRneDhDUGNSeHhEUEFyTjl2?=
 =?utf-8?B?ZUhKdVBsNzJzQzl0N1U0WjE1R0tYNlROSUZqVTJaS0xVL2diOU9DUkluR1BV?=
 =?utf-8?B?RWJ5TzlpL3dsY1dQa2twRFc3YWJ1dXNVMDZFU1AzVDUvYUpQT1MzMERiOERr?=
 =?utf-8?B?Q0pFZUY0dDdRclZyUUVoM3RQbEJUUjE1NFY0ekFrc1Q3VXE0MTV4WStPTzI1?=
 =?utf-8?B?OU9PV1FCdEpCazNhVklzR0xtZTZvUlM3Z3FoVHErMWJhUHFBbXdyVExucGp3?=
 =?utf-8?B?dHBwUGN2MTBKbjJDeHZHbzBsZUpET2lubWRGbWtMNmllL1F3QytuNVVwcHlU?=
 =?utf-8?B?dWZaMUJHT2E1eGR0eU81Zy9DOXRUMHdXaW9UZzdrc1BwbGpramtWQklBampm?=
 =?utf-8?B?cFhXbU0vKy9yWmg4UVNZamhhQW9VMWJuWVI3MWZ1SUVRa042UjFSTFhyNzlT?=
 =?utf-8?B?NVJkaTBNVlZsYUtWcWlEM1o5SnpMOVNUZ2xMVVppeTlTYWppZUg3V255Z0Y2?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f092f6de-66da-45ff-ce70-08de395254c9
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 07:44:50.9030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LrAgeB12jII9q1+j9Rsa4XFL/dz8GjM/InuuWInB5jn4Mbk+v0Q/tZC47nZcmwAyHZ+RVgf134DKM8hppLkoWHQ+jmmfGE9NRn+Xf/4qI1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5070
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

Hi,

On 2025-12-11 at 23:20:46 +0530, Sk Anirban wrote:
> Report GPU throttle reasons when RPS tests fail to reach expected
> frequencies or power levels.
> 
> v2: Read the throttle value before the spinner ends (Raag)
>     Add a condition before printing throttle value (Krzysztof)
> 
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Best Regards,
Krzysztof

