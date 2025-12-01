Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 144E0C96C04
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 11:53:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FF310E38D;
	Mon,  1 Dec 2025 10:53:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEGy64Ag";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31A010E38D;
 Mon,  1 Dec 2025 10:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764586410; x=1796122410;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=HBQIkXKSL+RFi9oqVZZXua501XIiu1LyUa8G0qmEQyw=;
 b=MEGy64AgFMz3A4gkdEw5C7qhlgCOKEuT5AR21eUkHxOPHvqGFXUr1P1O
 UbHEWyYa87yvH1QvmwIHKqYNwrAXBifMDxG8BwsKPGYbzombT2wI1E3gi
 AY6/avX12C7BNYRkdp/KbEiKvKEm0wl/oSCxQtIoEkEHrcfc9c3fUshUI
 JBgiEF+GBeRuqJVmbSml18kUoKlSn7z2SUkYb6yTB7qZFfHqXo/K0zC+3
 Ys1G7ZavKIlTQAZkivNJ5jH6QrAu7rKgfY/qBpmnRshjB8irZZTMLzJ87
 hqLQuu7eHgeZPG/mklhbUpx9u3Sly24bcGKe8jPrPjQkRcybkvziBw8FK A==;
X-CSE-ConnectionGUID: OZP02oOMQkefLkI0Liz7YQ==
X-CSE-MsgGUID: Jx6Gy0XuQvuLW9XVBAJ3ZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66410619"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66410619"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:53:30 -0800
X-CSE-ConnectionGUID: PCm4LPGDRa2/cnYNXK6yow==
X-CSE-MsgGUID: smr8Mu8QSaGKMeomSzpfXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="193303999"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:53:30 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:53:29 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 02:53:29 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:53:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ACkKB00/hT2YvlMQgQha3fQiB9bpjvzqkNOMGBypxP1KRiBtn1xcZ07Izd7RIlqtWq4Cf98UYsnuay7xq6DYGB2zm78vmjjugaNV6WE2IOIge8WhjCgbn8lW29jLRtl+/z6sizdG1c1y0yDwujo6BVfhT4keIl/W61Gj8LJyx8dBpuwK19gHqC9P0CxjOHC5OW3Ax2z7/kZyLX86oK85LEJDFFf0KCrHOOKQCLfTCI5ZjGniL1LP8bNp4btkDNcVtaH08Cilzik0GmMvcOShHqi0yXcr5uTUUWFKTbkfFwuGcyvmyYMdgaQj6MDvgqCNDTdDfMjjf5TCwyMbG6d5pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYq9FSHOdTb7yblVKJYkaoPRXy16cbi2OwiK6QIbwjQ=;
 b=sMRex9YHnLg3/ELPLuOgT9aMGbMzk+5H/TohLJJitO3tvSBukT0qtpSfvi/uYVUOud0+0vTtn5xm/ZAQxR87p1RqD2pAfkN5GmbeYBiXdcFSx1WZSr18kQ+2+wMuMCsJk355ejH1nuX7lr9G3gpZNonB0+68ARl8DWciG4kH/bAtr1gMKqBy1MFyHGmlspctPMUC/OE3Mi0ITF3e+N0S7dPJ2R+6USQySzOhKAhWGDD/7YMVHgi8B5NJLyUaJ7TJbNEhY3/ZTlqbTwVyTGJ+tfO1l2OpbThu+vABeiluNap27TYWOkoFePwL8zRt6M3Pf5Oxi1LZfBbILusFkSPDlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB6290.namprd11.prod.outlook.com (2603:10b6:208:3e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 10:53:26 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 10:53:25 +0000
Date: Mon, 1 Dec 2025 12:53:21 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/8] drm/i915/psr: Clear pr_dpcd as well on disconnect
Message-ID: <aS1zoYALyiaUezDI@ideak-desk>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-6-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251121111655.164830-6-jouni.hogander@intel.com>
X-ClientProxiedBy: LO4P123CA0107.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:191::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB6290:EE_
X-MS-Office365-Filtering-Correlation-Id: 1debbc71-f755-4c5a-4c9f-08de30c7daaa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|10070799003|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?QWJtk1sxiJTxiUPj2eHYas/WbWZQC/jWF65ReN93QencYu7PV28DoVVV4W?=
 =?iso-8859-1?Q?4DURrCzB7qcMDd64EyxCC/8bIBTnwnq0A/yyftPjW/FKZ4VHYiycHaQQVh?=
 =?iso-8859-1?Q?2pYFty3eW0CpiA+NSktBT37RctSYb2T0dnu0HZqwL8/di0a6+K7/Kn542W?=
 =?iso-8859-1?Q?DMczrEYl/5KoQSH12/gqzpcfhvegK2RR5+ygChOCSDOd5H3C6dAWVchifR?=
 =?iso-8859-1?Q?2oUvWjLLjdZW5ODz9XR2DuRYBnFyx7zCo+CXKP0d4s1Nv0rXv7b+ATMOMT?=
 =?iso-8859-1?Q?y62GclEmGsUxtIG5QS/VoxVVwLRPDR/lfqT6E+9y7aNCn6VLEZqStDLeiP?=
 =?iso-8859-1?Q?W44yyACTKw/fiLLlVTbWRE3c5S7+1WPJ27IIvKGcG1vVqXXIjprHkz77EH?=
 =?iso-8859-1?Q?LX0csBkzg9SmeOcOokzFMnqepjsPug9+HCm+LD5+NZW18enoSFBQ2kIiYx?=
 =?iso-8859-1?Q?6CW37Cz32iYxrvdXNdA95JH+HGlYjVCjZGESCRR08fGsWXfQFB1xfgLznV?=
 =?iso-8859-1?Q?5x5hVlGpLpd52ege1Hff9K5U0Y4mJcP7yLgcEoUiD3XLjogULiTTHPXBb4?=
 =?iso-8859-1?Q?faCxAOcTvByZR6LHONbUKBNQ3GgeO3qhicxbwu6vmhPKFQFa/Bvv6dZmHd?=
 =?iso-8859-1?Q?S5aesWHrnSHzTrc9jqChqE2LL6FMjVvp5c/LZh8zar2FkQ3VodPXMm2URd?=
 =?iso-8859-1?Q?H3BYteyOIemwXZI0YKZGpd/8CS4oT7HsEPqnRZ05/l06+MRbdJlG8gmz3c?=
 =?iso-8859-1?Q?etXLvPvI//1GwdOgOA1Qc4aDPmXfqPGUxBULqBXuoLE/J5sPWiPRMdFROY?=
 =?iso-8859-1?Q?t9k4scVgV27xL9hBtclYUzJfohOKFPMHvtbVDpkUGc8WWEtEQ9fTWkB7Vn?=
 =?iso-8859-1?Q?sbv76YsFWwM1dHY21IH4zXmyoS+9bp8QQ8dPGpNooyVmDw84IkFPDdUKzb?=
 =?iso-8859-1?Q?A3fPDKMeBX22XkvKQ/WvDAtkmbzeVRTVyKekWlr7wdYT1swuduviFujUPU?=
 =?iso-8859-1?Q?DdHSGoqqPE7bZD8v+yka3ysm+L46q42PwTKCnfYIBn3ihcIcekx7r48YHE?=
 =?iso-8859-1?Q?Tq56ZqJaWLSPkLI1tZ1U4Rg4bV1SoGiFiayv/UigEAq3UefWOMzwlRZOWC?=
 =?iso-8859-1?Q?dt4xrMPKVKEmvitIFL8xUHIaPyaOTVQ7is0FU5BCqhnlK6Y+ecQF8DbB+h?=
 =?iso-8859-1?Q?Q7RJLz8ovgp0VO0X3WIYxWGOj6ivRk9SbmwdMKAoVCxNK+z/TthSwkcIv+?=
 =?iso-8859-1?Q?LkkaGyKq7EFQCcVQxvzDUk7Dot15W5uID/krAZQg7uMPtmatznzt4czkIN?=
 =?iso-8859-1?Q?g5r8qiIdMZdLOSTzyE8XtfuzKo7k696jYcAMmPc/r12tdmsNqaI+bUqSDj?=
 =?iso-8859-1?Q?sh0Y5q9J3E3+zRgAlSb1fU2Pq7ox0aJOzMoVU7Ji5hzUh9yP/dP0rEGcHL?=
 =?iso-8859-1?Q?aKqIK8QqSNu5aMvu19+ZZxuB7bWiCHi9cBeQcx+qiPONHdzpfFwXpAt8eO?=
 =?iso-8859-1?Q?RThZixJxtqd3SpibofKkf4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?0YdmA5f+Gs6s8W8uVnAPuzQjEc7BCV18cQMdxtJx3kMdGet1tSw8VD839b?=
 =?iso-8859-1?Q?AQo62JloHu/7gcSyrRyR27OlVR2eRKNDUmT/UkJsGd+/NezIpfrygjhWpn?=
 =?iso-8859-1?Q?S0eeR27fRRi0KCqIQtiNsrv/5pgTExhpRVLdjS4KfgJEu7EJb+h22K7Pxr?=
 =?iso-8859-1?Q?S4Ue/iRMtp5j9OcxHDv1xaBmhKpy1hgO7AcKyiwSWJ6dg1f4o2potjnMWg?=
 =?iso-8859-1?Q?7mHteoFXT0AEqtDEoVk36wPZwZt0Flxi6BOe7PUWX54OLkzvkTskjqmxYP?=
 =?iso-8859-1?Q?w9lFpMXhz/IpHNQ79bbN8JpZ3guouzaOeQYJ4B461Ilwo85aT1E6jmRSkL?=
 =?iso-8859-1?Q?uWRa6Xe0mxz/9SbHpHmLwbWpLX2VuQVZ0ogRUUOLZf1+/CQZjqVa8LiOmV?=
 =?iso-8859-1?Q?xvB6nROmtusbiLxfl1x5jajXaHSTRr29KsbGlMMS2no2Q84ZT3Rm67SDlp?=
 =?iso-8859-1?Q?GKMt6C2Zg+8CFdRrnEczTpzh2C3vyrp4wJDVpjd5ObVawA99OuyXEYRym0?=
 =?iso-8859-1?Q?fUR+tpbf920iXdSww6LdQEbY4uMrrer/C1dXsgo/hBiKiVnFvPK0HYHXJq?=
 =?iso-8859-1?Q?1F+6P87n6pkmAN6m9GuJ+vAx02eDNhqZ/Gud3TRQYTjBRVYTQ/geE0FE8U?=
 =?iso-8859-1?Q?YdWZmRJ2tTmovqRqf/4+CniVt5HwYTWRIc2MWsXw4mlFo3uPJ0XGLbwkyw?=
 =?iso-8859-1?Q?Dmfp15q12zt9hmrU2QqggqpvkhNUm7dWrfeJh9/ByGMvC0qNZX4q9sSPEh?=
 =?iso-8859-1?Q?5WKfrksM7uq4VDrkkbHlZzspHd9S+3wWJcdF5iWhdHCm+/LpwwzG8r5dkU?=
 =?iso-8859-1?Q?YnC9o47+7ePeD2J2PDlZ79lwbyUNnHC3dEZ/p+exeyqYfQI0oSsltyFzHU?=
 =?iso-8859-1?Q?z3csSjh8Kpw4cSnp2APC8NzaN2tbuU/R+fPFxYBq0FZTparwNGk4ioMgGL?=
 =?iso-8859-1?Q?Zl9K3KgR13vdFYdJPmh3HSOj81zUfIrdGbuUsMl65TL9VIPuJRIPxPerH4?=
 =?iso-8859-1?Q?S/OmVCDKp2bgO+pWUJ4DKF1hnMvFVWQrOIZAXPTQEvxxx6fhDOgGxnOWpU?=
 =?iso-8859-1?Q?xH294Ike5QqXodNRjvLShMHYRXVYEObU8bg2M47DrW7w9ZwTWRE1jRsc+F?=
 =?iso-8859-1?Q?NqZhI17nOxMSaMBer7G+CceBMV3iflxx8pHPvFf8/QMqCoB7WFHz59NJtf?=
 =?iso-8859-1?Q?1vlTokMO4D0OKhDnpqUo+qOBjrZ286mQCTvAM3MvmcN8u8TRBIfoTA9ikp?=
 =?iso-8859-1?Q?4Frz84XMoAiy2rOe0Yp/1CZFMcsfdMEwEG5hvOpZcFRRZg2TzX/UhunLDy?=
 =?iso-8859-1?Q?ZGjlXHP7+SpKt8jLPEjsXKjQSgHSCZQo6hqDW/JsND0U+zft0ifO/Ae8kH?=
 =?iso-8859-1?Q?r8hkx5wverg8XNvniQuxTW+qHj10iXt18nPEHw1Y1AMlXeX2hCvITE21KE?=
 =?iso-8859-1?Q?IrL7uBj0trPxYNp6C7ig3xcc8pUBVQFi0/frcN0DKJGautgIp2jiIU+xP0?=
 =?iso-8859-1?Q?781Ey0d7WSjBpdt1kvehwYVyUZB0EpbspJU1yqRNv2SetbXMEw3tJ/PhZ0?=
 =?iso-8859-1?Q?imPtQAzB+QDyUHZuk6KvsRdbEuZOCb0g9kvcYrO+Xy1VWhjg2NOrtcP0w5?=
 =?iso-8859-1?Q?IZ+t3zT22VFYXBmAUIm0bDHGa4LiQ0K16mdN0l10W9tC29EyQDhoTFzLXn?=
 =?iso-8859-1?Q?Z4xcmp3yDmtKemJI1sXexAIfyQK4EOmM7naz6mE1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1debbc71-f755-4c5a-4c9f-08de30c7daaa
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 10:53:25.9291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dqlVMfDp96VNstW1Kkk84T+CeDaFApxGYqhnDKktPwMay84IUauEUHGy3EFVDOc8bDLeLM+Qp7T7VdFQSOXqkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6290
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

On Fri, Nov 21, 2025 at 01:16:52PM +0200, Jouni Högander wrote:
> Currently we are leaving pr_dpcd containing Panel Replay capability DPCD
> registers as it is on disconnect. Clear it as well on disconnect.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 62808cd35f5f2..7195c408d93ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6050,6 +6050,7 @@ intel_dp_detect(struct drm_connector *_connector,
>  	if (status == connector_status_disconnected) {
>  		intel_dp_test_reset(intel_dp);
>  		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
> +		memset(connector->dp.pr_dpcd, 0, sizeof(connector->dp.pr_dpcd));

What about psr_dpcd?

All these resetting of the caps cause a problem if the connector needs
to be modeset after the sink is disconnected (since then the state
computation for the connector will fail seeing these caps being reset).
Instead the caps should be kept intact here, resetting/reiniting them
only when a new sink is connected. Since this is a pre-existing issue,
could you add for now a corrsponding FIXME: comment in this patch?

>  		intel_dp->psr.sink_panel_replay_support = false;
>  		intel_dp->psr.sink_panel_replay_su_support = false;
>  		intel_dp->psr.sink_panel_replay_dsc_support =
> -- 
> 2.43.0
> 
