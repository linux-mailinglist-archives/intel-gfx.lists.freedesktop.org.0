Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB18C9F5F7
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 15:55:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A0310E0F8;
	Wed,  3 Dec 2025 14:54:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hwR0MIeu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A5FE10E0F8;
 Wed,  3 Dec 2025 14:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764773697; x=1796309697;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=oRLqDX7yqOu0PF4BlH0Z8p/MJvQeC1Ep9ztQlGgF3eo=;
 b=hwR0MIeup1PjvkWbt84LBLsDOG1Vbwyn0iDyYVSs0NI1gGKTdA8PNgeG
 l22yl3wGDmVmg1uJO/QDGkdtggZvQRxpRptKba9sDsDJdhVIhl7WypV9R
 vpmi/KctZhUt5gWKO7f3EIzBlpaQzjOeymfVWqpenIP79yzpSCDqkl4Ld
 MjrO9W1wAd56tVJUcgZK+Hf6w5tbXO7DgunZMOwGYOqL3g9mWFpOTp2a2
 6UtjxHe2C76L4lKfOGvvgb2/7hsG1/E2m4JO+QakxPkFRHRNBQiSKE42Q
 OFe6dometzzsojFQ+x5ZrD+a3wuVJz1c96jkBq3AUEoTWAREOY0hkkwig g==;
X-CSE-ConnectionGUID: n53FdL5ZSzSR9Z7DnarHXA==
X-CSE-MsgGUID: DZyyL9cNROuLA+qYTj979A==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="77393579"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="77393579"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 06:54:56 -0800
X-CSE-ConnectionGUID: /u38LDamRSy+jdoAg1JeEw==
X-CSE-MsgGUID: 3jnaE/eTS1mzXBXsMJgRfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="218037063"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 06:54:56 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 06:54:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 06:54:55 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 06:54:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uwRXenECgMeB7HoAEpZUYGT2rNSHx/smwwLLC9qNnrbsBjU8ovndUnwcZ8L1sel+g1+TDvCHp+39A8PA7BsKaEMm/T8YWasfSOnyG4woio6tbOuiNFAPDerSU86x/viyLs4W5Vspdly28G/JuWwUCSsmerRYtScDEEpIQzu8IC8niThIib/hunxkUoQUebjrc9Y61ZsbrlDHVkUE9YB5eyzvmEFgghbJ9B6+nRu+5ININYGPD+hRAuOLY0vBcruVmaBeU4Z/OaTGWDRdwi22qeZOJUzJpWcXevD+V9CqS4MNswHZm54PoLLr4KhWKyg//8jDxeL6AByLcvDKpxrwtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SzT43i4sdnEgcQ1YORG4OCAxLpOf67Xek54mvX3w4N0=;
 b=aLaiRmIB8vZ6Jdl8qfakr+vh7z/HGHH6otYwI/ypsiEMNK3irjSmcGdjWpvEIaRD5mE6qRBAJ6qOpAhpPO6v6RqyUDu8ZsY6zQKGlpEnyoZl/LABZauMgr1TqlnvyXYg2NfbDbeOE3st8NKL689PClFYXVJIsP05xCJUfiBwTAteqUsCFlTeLtVppW4FGf7f167XqBq9hIIKIvZVhoryr9aLCCe8XYx05MAkSZH+NR6sG6+NDmp+DPfdki0jZNLyTmcFtI7RG2iL9r7f16Y6uSyAZ5J1lXTnRiAOTEQQ7yndukKWC/Rf3YB2IJ1xkAQCRTwioA0XNaIVvpaio/SEyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5203.namprd11.prod.outlook.com (2603:10b6:303:98::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Wed, 3 Dec
 2025 14:54:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 14:54:53 +0000
Date: Wed, 3 Dec 2025 16:54:49 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Message-ID: <aTBPOUHxGGT-rB5Q@ideak-desk>
References: <20251203103134.1054430-1-jouni.hogander@intel.com>
 <20251203103134.1054430-6-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251203103134.1054430-6-jouni.hogander@intel.com>
X-ClientProxiedBy: LO0P265CA0005.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:355::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5203:EE_
X-MS-Office365-Filtering-Correlation-Id: e894f269-884b-43f9-5aec-08de327beac6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?vGxI3Va8c9ERVamiY6hMEG710fallNi3GUesebLu1EHCpplOfVVaJJW8nX?=
 =?iso-8859-1?Q?8gEHht+0yocOeU99iTbc5AlkpIQhpOl4UYvquPCTjd7Kw+V+Y6Ds961Hfz?=
 =?iso-8859-1?Q?FaFg8mvpmRQ2X6rgyO7v2ntAGE7ockGoCeq1mGqXgCjAjxZuX+2HXMfbAd?=
 =?iso-8859-1?Q?c+X+ibzWZF33So/7Jlg96CkErPzLizpJZo9Sh7Vr5lJcqbL56/JpvPiflE?=
 =?iso-8859-1?Q?dlo9JMljkFILWd0vO4whYZt45rYFIEhL+rVSetz7MNpwMs76o3FgsAk8Ef?=
 =?iso-8859-1?Q?jTEAl0c4QQlc732S9KTad9QNPGMAblzMS/knDwPnOXZRAVDz6TYEc8jFeP?=
 =?iso-8859-1?Q?ogxMbAJcWKI65cpXfAHoRCCPd6ZLlbJdRi4WQXgDg702hWosl+57xQvTV+?=
 =?iso-8859-1?Q?dP04wKk59VAA4N8RPE4IQI7CEKC35T1QbJsnX9oqsiXndfZndnRbSSuBJa?=
 =?iso-8859-1?Q?CradB9y8s+YM/OPyTcvRfULfukE6Yx6PZY/cSK/bqmi0SN6hwkBgI18cIZ?=
 =?iso-8859-1?Q?x79/CHAMBMYujdCLwhNjbUZs6m0Jp/UBZBm0fwGZJml1ElXvptWQXATbiv?=
 =?iso-8859-1?Q?3etolLg9JVKFV5qgSHxvYfHLRbsO5gdq3xdnUkzr2VozbHZWN4Xr9U7mIf?=
 =?iso-8859-1?Q?EIsDumtOdY4nXhkPYvmTuQeE5w3ZxG7/vuzfOJGgKRIWiBgEnByD5kph/4?=
 =?iso-8859-1?Q?i1BI4GxwWJuyoJsMKVvJD19CsLQ8v8a7zJTjaI5RXXvJjdQEnNsDTqmBht?=
 =?iso-8859-1?Q?vtbvPRsOK/pf4NAZcOdFskdaFAI3wS5iECjI3iOy15DntD3Hm3dAKbqr23?=
 =?iso-8859-1?Q?/Qu+3VDRvXsx11gwSKAWeV+espA7lO9r+B7JAmkJTyYIzaY9+BwD5R71mj?=
 =?iso-8859-1?Q?u6GU5H412+6CdRn5l5+nSU6oPaQA6eqsAD5NVWrwzAN3CBEBTAoUIJqMMQ?=
 =?iso-8859-1?Q?/6grh2B0jQjEi/D+95frP9rnAyl6lJfWweUXNVnhNVDXqYdEhMh6bRvXWQ?=
 =?iso-8859-1?Q?8lTyibqW/xYMQixFL0NH5GOLHP56SdkxQcuNGgEzo3xy/5pMKKT6fNV9Ke?=
 =?iso-8859-1?Q?QZ3X5btKAamRaHzYZLhqJKmQdOxIvWK4x7ZgsjX/CQXt+kBJ9yFz0Q72pc?=
 =?iso-8859-1?Q?xWatZHQEl63OlJ+rbX6/YM/axILpBKqIrvU7YJBeY6B0KI8ABfdMSB85/W?=
 =?iso-8859-1?Q?hIh5g2hn4FhvypT10RMWe/5gLLeHCRWNgyNJC+nqBBTGSsyj6ukY9tJH78?=
 =?iso-8859-1?Q?n7prDlKy5AgeYeeJOJEOAd3beUUgF1qfxZCKYIt66p4TcqvEZ4OI4ZqKGi?=
 =?iso-8859-1?Q?vnMphTEllzHdWqtxYbFscoOpc5Xaw0E078iznfJLYH9GWI5bY5r/0G5Rsi?=
 =?iso-8859-1?Q?T3fZvgm+c1Rymvh9nw7w6TdJjune5UKrBNlD3N1wmhX6/AR8oSrtFKCWvM?=
 =?iso-8859-1?Q?78eUM3z/Dz2p4PXEsmRuaohRh3+7xYj71UOfACbaJE3ptpKR6AcLbDuZ/Y?=
 =?iso-8859-1?Q?6CQVN4yDpzL6MB98+pj0UP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?dbiAoK591sIh2USo77NcjcBLAc7Lv+TE7xzSpd0Dp2kSU9O+V409OKddsI?=
 =?iso-8859-1?Q?B8w4kwVI1f2xLC5zTKJnpsk4Gx9MPlpJmNfUgwjKtPuHS9VWd0Ffae1jtE?=
 =?iso-8859-1?Q?aitMAs0UMJAXYubFPfTocuc2bsW0FUGmgPKvWrFPm8DDWWtuUTYqvgcdRD?=
 =?iso-8859-1?Q?4ongNFGnp4KbOQUHJuR/5JR8N/+oLEA1BRwRqHkEk+M32m5FMK7OS0JQCe?=
 =?iso-8859-1?Q?1Rbugmx9zQ/y5qObd2cm9B43+BHztV0Sq9sFWVUUyMZbliFyw6s8hl6gQH?=
 =?iso-8859-1?Q?CRS2lj0pda1cUrsU2KORChfTEXDtWgbpsYUbJuFWb+9CwBcMA8NMOu0YfC?=
 =?iso-8859-1?Q?F0IPgIVBdRmXydshObKiPR63Pn9Zy1IF9pkW85Yp/5nZi5aLFB0WuayW4O?=
 =?iso-8859-1?Q?dLC6UhLKeRyoIlEGbGUhOGkKhqwIn0lG/G6xOA4nqaOO8rNBDJkdu6IUmG?=
 =?iso-8859-1?Q?rzDd3PjqBpx/jOcP515kAgGDZ/CmW4zLOf5I0CI1K/lwB3rDsihwaaM6On?=
 =?iso-8859-1?Q?X7QO5ikx329W2mjh5TDLgS8vVvMQEJUp2Xj+l5/sIRUklyQZkBk1YKsHde?=
 =?iso-8859-1?Q?kS9koHJ2zjty3z0a5E9ZXu05CDt5tzrpyDqgN1WDfrmeeHppOkTE0L5XCC?=
 =?iso-8859-1?Q?DgXyoqmb6y5BWwG+JSHlQq6tcyy97Mowda+3ZenOrg7kZ4BWMTJGS/eErt?=
 =?iso-8859-1?Q?+qVhVla2xe2DW+gfqeSD6NzH1vCFNY6QYbLAyyx/LJvaj0i/2dAmx4+jgY?=
 =?iso-8859-1?Q?r0WN1SX3wWcdG00szwtuE/ftzCfsoeSjoXJTOg1Cz1y94vBXWAji1lTTMS?=
 =?iso-8859-1?Q?dXP6ruMK8Z8puPbhcZpKHW543YTIrbi2ghfnLbPk/O6mt+jmHZ9u9Kb9h+?=
 =?iso-8859-1?Q?19bT07K29Btcy9XSYrcJ6b7lwwBRQ1pO8QrsrR8z/jaUJImP8jn4lehPZe?=
 =?iso-8859-1?Q?H/0bcglqgKle51Psi0O+Fu9tsRIKuThpQ8rutss+v+LnWsAVA7f3HVINin?=
 =?iso-8859-1?Q?HZbK1RZySr9NHTAwNDRPD5gWzNYE+psRoUtg6fcdqK/VIDWhWBYLMPWRcz?=
 =?iso-8859-1?Q?Mgkpq65ydDz7VBvICWC6V+Rv7mJ7sRQ63fJwbwKuMH1IaovI9uYMFqwrR4?=
 =?iso-8859-1?Q?ArCUPHwAhe6nukFXdWNdhpaUnqNLpEjWbM4kaKL3Nw+pHi/ozxQ8Rdwera?=
 =?iso-8859-1?Q?OV5fuJTyuQOXIfw7z19zbR3Fn3zaZhZECZwDX0yza0I+eIo5TDQcsS7z94?=
 =?iso-8859-1?Q?An8UgZE4xbejlhDug+AlnfJpWslFx0rILpogFMDKB0wvdGqceFwR9Oek7V?=
 =?iso-8859-1?Q?krkDJVgHJu2XeD3behw4trqZQAKDtSyjscROPezk2yocG19qDz6HYkJbem?=
 =?iso-8859-1?Q?Jx5S611ZjPmwBw69Q2yA6DhDC36j6pvcNQkNpAnyESvScyr1gLyPi7TihF?=
 =?iso-8859-1?Q?GUA+y/053Tp8m+A8bvETV2tChtP+4fzm+w4MYDtBwzoHyQw30bBIp/LfrN?=
 =?iso-8859-1?Q?hYBAxdcvDWdsXK2XmEqD7BrFRYe75sCysRZ9pHgiDJyB03c+IEsIqz2KrC?=
 =?iso-8859-1?Q?ehimJ0wJM06wy7FAD2nVTALWEnp7asYibxO8iFfyzTcQSatKGa2hxVNAHz?=
 =?iso-8859-1?Q?5inF+oXi8yP/dc00qvlXhO3kKn2NR5oHY5NFCLz+E1rWKKFBj4r61zmiI/?=
 =?iso-8859-1?Q?Qnm5zCctPxMXBT2+L+TVx+psMVXQMyDwkcTA9mSM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e894f269-884b-43f9-5aec-08de327beac6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 14:54:53.5242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xpiahv1c/nYVm3//in3osdJN6W8Elh5sxRaEwSCTBFDHB/+KZMfJAQpb7fm116t03QEE2yNpfkCALAhLteDqmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5203
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 03, 2025 at 12:31:31PM +0200, Jouni Högander wrote:
> Currently we are leaving pr_dpcd containing Panel Replay capability DPCD
> registers as it is on disconnect. Clear it as well on disconnect.
> 
> v2: add FIXME
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index dcceb0ae2a56d..3838835e7e7eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6048,7 +6048,15 @@ intel_dp_detect(struct drm_connector *_connector,
>  
>  	if (status == connector_status_disconnected) {
>  		intel_dp_test_reset(intel_dp);
> +		/*
> +		 * FIXME: Resetting these caps here cause
> +		 * state computation fail if the connector need to be
> +		 * modeset after sink disconnect. Move resetting them
> +		 * to where new sink is connected.
> +		 */
>  		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
> +		memset(connector->dp.panel_replay_caps.dpcd, 0,
> +		       sizeof(connector->dp.panel_replay_caps.dpcd));
>  		intel_dp->psr.sink_panel_replay_support = false;
>  		intel_dp->psr.sink_panel_replay_su_support = false;
>  		intel_dp->psr.sink_panel_replay_dsc_support =
> -- 
> 2.43.0
> 
