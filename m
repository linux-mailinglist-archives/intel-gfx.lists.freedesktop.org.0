Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAA2945280
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 20:03:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3BC10E8FC;
	Thu,  1 Aug 2024 18:03:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sq3vkeTS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697CA10E8FC;
 Thu,  1 Aug 2024 18:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722535391; x=1754071391;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=6xS68+Z2iGOL7BK62AOWD6NDgVyTrX91i6qw80tJPi8=;
 b=Sq3vkeTSM3KdJM3rnzzPBInEQ5IAc1GexWUbcNu+9kWYsBlKN3GxWmXc
 sneCFEezgS/zDl0k1XmaFcF/1lzCPBKk/qGxXql73P1hGh/dnt32V/0q/
 +ahPvk1tpaGWkypinxcfk95Pa++SPM0ThsiaEYexN96cHlFay/bMDOgux
 vOPGpCs+EGq0DRsNK5Suml5MayJLdw0FiMLUOpW403BZqJhcntptOF/NZ
 hsdJQPpcGEKrweBLL95uFC6IN3+jhEy+IFM4p1rPyguoFYds25qCFOQom
 5Y3VChNZr+Nv/Pfj66lRN21OXw66C2IpwBzj+pPXepazgVwa53eda5Nxo A==;
X-CSE-ConnectionGUID: h1Yf+PDnSrCmXe26GaKN4w==
X-CSE-MsgGUID: 2L+m9gw2Rii+0gKjFWdsug==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="20673307"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="20673307"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 11:03:09 -0700
X-CSE-ConnectionGUID: PPfbzKqFSlyPYn640uVFAg==
X-CSE-MsgGUID: Z6lU1sNzSTCUKFNl8SmV4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="85720668"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 11:03:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 11:03:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 11:03:08 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 11:03:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cinMthwMJppwlUAxp0oh2q3DFCMJ7XS45/9aCAqnnYplALPtwQWEQs000HWRWECWkFtY+gvqNv44wr+KA76htek7I+gWRPYGBeZ7mnImFeGor9A9XtD3hj5x62TqQPu4o/lxE+KoolsaphOVFvid1fVWEewHwZIhUoI2paaFkNPu85LYyu+houqkrmgCaJfL2TDc/W7yt/uPYnCPHvLEzEZDBR6x40+HKY5bA4weB02P42qbfutNw0fJULsUGYilpJFd6TSlNVyCPOndTcCn1QGcgbJiWmmkV3YUWI2r7DiiXm0qz+qXor0QrSP1sS4DoEeczOCMkEJME4gnrVYjFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vAdUMzc3ViyW6cxtum6ZEyVBFXAWNBwsoCu8BGi8YRk=;
 b=LuGLKCiQ1/BFucLX12DnkgiqL+/JjZhntt2mPuMptfKPezN8cAJ0L5YWh+fXzdWRFDYM6T8IUb+ZQgLRD1Pavi9MH2SS+Dl6tSC1Q38Mp3FCndfOQRZWzcfoeVaVB8oDAQk5QixQXbeqJ7wrQ3/caKTCuskDqMhhfQtFrYW7GaiMCKYNvAtD4nk9e7dE/sgBjH+CP3dUG8mLlqZnFCdviyX2QSgSxpbH8xNKSIykUfhcTSiuGUpIrsq60nae+++YTfiuWDhFGKPw9B2elE/vdoRvGHizXoJG98Tw3S7454XZnG/6DePYISiLUlFrdUc2sN9XTOc3nK4Sl9EH6DEbtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM6PR11MB4594.namprd11.prod.outlook.com (2603:10b6:5:2a0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Thu, 1 Aug
 2024 18:03:05 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 18:03:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <0197760071fb3a47f579fbdc78976bde4f5629a8.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <0197760071fb3a47f579fbdc78976bde4f5629a8.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 07/10] drm/i915/audio: migrate away from kdev_to_i915()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 15:03:00 -0300
Message-ID: <172253538083.5121.5662120010405890444@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0284.namprd03.prod.outlook.com
 (2603:10b6:303:b5::19) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM6PR11MB4594:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cbdcea7-08e9-48f8-16c2-08dcb2543125
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFpjZXJCMUF3c3FMZ0h4bUIvc09HSnJjTnJLdXJJWVFoTXJSN01CQ1FtMDRK?=
 =?utf-8?B?dHFNZ01HSGJveVNReWUzZjYzTU1WREpEWHpnRXNRY2NubDBYTFh3eXQrTHl6?=
 =?utf-8?B?aTRnWVVhb0N1OHNjaGpWOUFqL0g4YlpEVVBaQjJqb1RDK3pxallYTDd4S1N5?=
 =?utf-8?B?VXo3djhLUUM3L0JOVTEweUtsV0NRQWFROW9YbEpsSWxCOXB5TFlzTGFkTVBy?=
 =?utf-8?B?eUl0cldldUNMUXd4ZG9tVVdoSWl2bk9CR1BXWUgxd0JvWGtuY0FQTEl2U2ZT?=
 =?utf-8?B?ZW9xcHFMSWlFWmlodGVpM0grbjJNcWs0WHd0WndhSjZkdVVwczlTYWJDanp5?=
 =?utf-8?B?MExaOGlaQ0gxOENWOGM4TWgzUURWVWpnaTRjQmY3YUVCY2FwUzY3UUpHc01n?=
 =?utf-8?B?Q0xoNzJkRGxUT3lJZElIYWhJWVp0THRDakVPcGcwMzZnZVFLLzNGTzNmc2tB?=
 =?utf-8?B?WFZBZVBGamNzTnp5amsvZ00xeFpuUWlKT3VudnNCNWsza24wWE4zSnQrK0RB?=
 =?utf-8?B?Z3VWeVR2ZVI2dzNkT1YvdUVNNEJ1QldodmdyckZnWEhlbi9NenR1Q1N4M3hv?=
 =?utf-8?B?bFRTaTYwM2pUT2I1Y1pFNWlqRTZiWTVqN0Y3eVpZdExVbDR4WWp2V0V5ZzFh?=
 =?utf-8?B?WVRCOWlIRURvVnNKaTZxV3hIbUxDVi90UGtBNFRsQlZweXFmQ3VsbjdycGxq?=
 =?utf-8?B?dEU4VjFRYjdBZTRRTUZSbUhhdzFRRytFaHJmalRlSEZ6WHM4alVJN0NXd1hG?=
 =?utf-8?B?WkRnMGYyZGtxSllyc05ObTluS0VJQXBsQ1NER2hrNVhPT0o2UjJGcFQ3Rmxj?=
 =?utf-8?B?STAySURXUitDVzZWWmQ4VTJtZ2crZXJHZlhkcU5ob3M1VVlob1VRbDk1dVdv?=
 =?utf-8?B?K0tpdmx2ZEwwZ096VStQT09ZTEhscWRZVENCaHQrSlhSVjd2dkh6RGpnM2NV?=
 =?utf-8?B?R01KWFFIUUlyajBWQnpPNmlsRjdKcnhUZk5tcGZ4TnRTcHFCOHhwL0lzNFcz?=
 =?utf-8?B?Q3lCczhrNXRrdnlvelhkd2FmeFVqU3hBWnNNb1NTSzRES3U2VENmSUlRZ3R0?=
 =?utf-8?B?V1FjTnJxbVlFcUgrQnpZNGFWYXhNbng3bVI3MDNISGtJdHg3cklyb0lWWFJF?=
 =?utf-8?B?RURlTlczemFVS25kSmVtOTQ4cnJOS2hNdjZqN3VyY3VTNHNHYnV4Q056VGIr?=
 =?utf-8?B?NnJEZ0hUWW8ycHkrR1hiZzR6ZjVXSWFUWGlxN0kvVXROVHlIZHM5eCtJMXpo?=
 =?utf-8?B?b043N0NHRHBjaCt3TjlWS1BUeGtnOUV2OWZPczc5MTh1Zkw5SmdiaWFUN01x?=
 =?utf-8?B?UmFyT2dXWVhzZk9zb3dVdW1RTjdDdjJWd1B3YkJkZVFkdHdQTGVPT2VvbHhw?=
 =?utf-8?B?UUJGU00rS3dxNHJhOEw1eFZwWmUvNlFvTVlhSW80VGVOcWprT0hEcW8zWHd5?=
 =?utf-8?B?bTZTT3BVSFloK3FDc0lnR0JKejdiR2hhMEMxTmlxc1U4UDFDZGxFZmxsUDhJ?=
 =?utf-8?B?eHYrMUJWeXBaQ0krVDFOY2tqdWhYM1JocjVaZ1hpUklWd0E3WTYzR3l3cExt?=
 =?utf-8?B?WFh5WVZjeXZxUzJKcGNvbVJDVnFWR3FNS3A2cGlUOWtRbDJRcW9STnlOSzVz?=
 =?utf-8?B?dm9vcnc4bU84dHkvSWV1TEhzQlhuWk1iQ0NQZUp5RldtMXNjZUc5dWliNm5n?=
 =?utf-8?B?cmR2VjNzejM5Vms1K1hYUzNVTGZxbWN1blRvcGw4bzVvTVN1bHdlcXh0ZTBS?=
 =?utf-8?B?MWJMelFxSHQ3RVpHNFg3WnBwSUJOcEdMRXMxV1ZYMW5kVjFDTjVEN0YzNUpM?=
 =?utf-8?B?bW1wZHhOUnc1NjU1WXAzQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QldJcFF5N0NBU3hyU0ZBblpRTGZsUGpPODBPTFZja3lLRC9yaytWRlRWYUdK?=
 =?utf-8?B?RlB0TzNyZTZOVzhlbTh1N1B6d2xzWTJEaFphSnFoVkhVbFRqUnJnejVoQjN4?=
 =?utf-8?B?Yk5aWVBkT0c2VnlrMXRDellRcXBPQ3FmUVNiUFVSRUZqL29wMTJCTzc3T0t4?=
 =?utf-8?B?Q283ZVhDRDR5N1h5SXlPU2N3TGh4U1prWFJNeElWN3dSRUZwUDZmV2J0QW14?=
 =?utf-8?B?ZTEvTWZaWlZ6WmNnWHFoYlc3Rm96Q3J0cEdCYUFGVXp0R0dHM0JEUDhaWTJw?=
 =?utf-8?B?bUdZK0lCVmVKbEIrS0Jsbnc2c3p1MnhaNE1kRTZoaDBCL3BCVCtqVGpWV1py?=
 =?utf-8?B?a0ZkNXo2QmdmQU93cDMwV0ZoM2tRQ3hFQ2F3SmdtWDFaUlRGMWFjWkhPeVBH?=
 =?utf-8?B?cVVRa3NFRDB3UkVNakpNdlMvNGdNbGlmd094eE5EemFCaEV3enJFTGFzM2o3?=
 =?utf-8?B?ZDNYK0xHcmNHR2Q3c1R3UGF2ZzNUVTJFK2pOQTkwaytzRWdYWm9CN0J6dHZh?=
 =?utf-8?B?WWFiMGllS1B3TzhUSjZkQVZsc1VhWFZsSUl3MGNpeDNTVlRFWmZESHdNaldl?=
 =?utf-8?B?a3p0V05kRjdkalVwWkNxczRKZXFwakE5d25RL0tqSnF5QnY4QTVJV0QrcTNx?=
 =?utf-8?B?b24vYjdaOVFYeXl2NkxjOGgxeklOeFUwblZ5SDM2SzRlcmduM2k4WnpPR3lx?=
 =?utf-8?B?WlViTlBtQmk3azNHMDJFRWtWMlhrTmdpMHJBVitLQ25UU1YzeEt3a3QwZEFI?=
 =?utf-8?B?V1RwUUYvOXpaZ2tnTENQNko2VGE5Rno0THJlUWJTQVNQVGJ2WHFQdnA3MmtO?=
 =?utf-8?B?SGlSYm95ZGN1ZVVwaWNHTjFLRnp2SFhnTDRab3oySUo4d1R6VEtjekc0NFFl?=
 =?utf-8?B?Y214bUVaakVzTE5kckhuV2g2cE1nL0g5YktOd2tMQk5CZ0o5RHFYZjJ4WE1k?=
 =?utf-8?B?d2hwVVFndzd5NWtkdzRQb0U4RE9nNkd0dmRzZDBXQ1A5K0JyaE03amNMVTgv?=
 =?utf-8?B?bWEwaktDbG0zWHFkcFI4UU5mZ2lJMmFEaktIVjNmRHBaMG9YSkJaN25XZTdr?=
 =?utf-8?B?RXFYcWFYTTFYaWJaUHY2VDVqR3JrTk0xZi9jRmhvcmZxcU05WHpISEExWlQv?=
 =?utf-8?B?amJnNGlnaUJzeFNKaWMxblFUTWpUK1ptYXo0WEdWUnoxZ3orUDFiK3ZMY1No?=
 =?utf-8?B?aHljSmdVY1M0eUg1c3JoUU94WWZmWTR6YzJWWlRwek9BclRoaWFVc01FS0Za?=
 =?utf-8?B?WE8xbkxkdDl0ZlpveHdJcXQvSzZVQzVkRjQ0aW5KSXd2UUJWNVBjeW5aY1RL?=
 =?utf-8?B?RFFQQ3hBUWRrdEFyZFVHSkdpaWFXQThVaTgwUkZjMEhucG9qRFJkMmtwN3Ft?=
 =?utf-8?B?Vm9ad1lTeFlTeEp5WkpRbUEyb3V3cDVyU3JqRmltTTlNNGNGV0l3SmVSd2Fu?=
 =?utf-8?B?QzdYVkdXdnVWSTJKMWFvRE04eTFCVnh2UmxTbzlmQU5OMDVBWFpQWUhmM0dK?=
 =?utf-8?B?Wmh0UmRJeFB1c0lsNVBOYURVb3dYTFpIazd2NHhNeGwxNEJDMVhyOHNDeEwr?=
 =?utf-8?B?eDhlaVhic09teHliQnUrdTEwMmtlVjRtc1ZRdVlWVFZWZ1JqSm9JditoSXlh?=
 =?utf-8?B?UWhlYmJqaUw5YTk0Lys0RlRJY3lUR1NQeU5GWVBlNVorR2d5NDBmZ3VqWVF5?=
 =?utf-8?B?OEV4QlhwTHh2cVdvZVVsenBTYXhPVFR5MWJMSFhieWhXNzU0bnNGcEpVeE9v?=
 =?utf-8?B?eTB2aERYdHNTd1djOTJ2U3N6a1pIMDJQVmtDTTRZT1hhTytKZTJkZ3NkUVR1?=
 =?utf-8?B?T3pOQlhVRGNLNVNDZkZzZWQxTVdlVnF3QlZWbTYwSld1aWFUQXJEeUw0cGNQ?=
 =?utf-8?B?UHgvaTRDMlBpRGVLWDdlZEJMcDhybUtrSm1sSEJBTnM1Nzd1cy9JUU9zM1l3?=
 =?utf-8?B?Vm14L2d5ZzNueWpqdzNkRHdvR1MyeTArTEtWNzFzUmRyZmFEck12dy81VzVt?=
 =?utf-8?B?Ylppb1M3R04zOTM1YnoxT1Y2ZmJleVRPSStVTnAyQ0dvbkRzam5lNHJ2KzlV?=
 =?utf-8?B?ZnFZc1F0bGpCSFpXVU5WL0hnVUZrdWZGTWVRNmlzVXI0eTBMU0h0UUYvTTJm?=
 =?utf-8?B?am9yeC91b3djRzdmTUFXTTJBbGpMZUxua0xYdG1OekRqcGlEcE5MZDRTa2l4?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cbdcea7-08e9-48f8-16c2-08dcb2543125
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 18:03:05.3246 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4eOreGbqdNPzt0QKgf9hFKFdF3ROPc208CHXs2S4nD/NVTHXwh2Hq3+96vgsuFiu2PyUWyEi4/slLJ/o+F7a4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4594
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

Quoting Jani Nikula (2024-07-29 11:30:08-03:00)
>Use to_intel_display() instead of kdev_to_i915() in the audio component
>API hooks. Avoid further drive-by changes at this point, and just
>convert the display pointer to i915, and leave the struct intel_display
>conversion for later.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_audio.c | 34 +++++++++++++---------
> 1 file changed, 21 insertions(+), 13 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/=
i915/display/intel_audio.c
>index b9bafec06fb8..df2879538738 100644
>--- a/drivers/gpu/drm/i915/display/intel_audio.c
>+++ b/drivers/gpu/drm/i915/display/intel_audio.c
>@@ -979,7 +979,8 @@ static void glk_force_audio_cdclk(struct drm_i915_priv=
ate *i915,
>=20
> static unsigned long i915_audio_component_get_power(struct device *kdev)
> {
>-        struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>+        struct intel_display *display =3D to_intel_display(kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         intel_wakeref_t ret;
>=20
>         /* Catch potential impedance mismatches before they occur! */
>@@ -1011,7 +1012,8 @@ static unsigned long i915_audio_component_get_power(=
struct device *kdev)
> static void i915_audio_component_put_power(struct device *kdev,
>                                            unsigned long cookie)
> {
>-        struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>+        struct intel_display *display =3D to_intel_display(kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>         /* Stop forcing CDCLK to 2*BCLK if no need for audio to be powere=
d. */
>         if (--i915->display.audio.power_refcount =3D=3D 0)
>@@ -1024,7 +1026,8 @@ static void i915_audio_component_put_power(struct de=
vice *kdev,
> static void i915_audio_component_codec_wake_override(struct device *kdev,
>                                                      bool enable)
> {
>-        struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>+        struct intel_display *display =3D to_intel_display(kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         unsigned long cookie;
>=20
>         if (DISPLAY_VER(i915) < 9)
>@@ -1052,7 +1055,8 @@ static void i915_audio_component_codec_wake_override=
(struct device *kdev,
> /* Get CDCLK in kHz  */
> static int i915_audio_component_get_cdclk_freq(struct device *kdev)
> {
>-        struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>+        struct intel_display *display =3D to_intel_display(kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>         if (drm_WARN_ON_ONCE(&i915->drm, !HAS_DDI(i915)))
>                 return -ENODEV;
>@@ -1111,7 +1115,8 @@ static struct intel_audio_state *find_audio_state(st=
ruct drm_i915_private *i915,
> static int i915_audio_component_sync_audio_rate(struct device *kdev, int =
port,
>                                                 int cpu_transcoder, int r=
ate)
> {
>-        struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>+        struct intel_display *display =3D to_intel_display(kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct i915_audio_component *acomp =3D i915->display.audio.compon=
ent;
>         const struct intel_audio_state *audio_state;
>         struct intel_encoder *encoder;
>@@ -1153,7 +1158,8 @@ static int i915_audio_component_get_eld(struct devic=
e *kdev, int port,
>                                         int cpu_transcoder, bool *enabled=
,
>                                         unsigned char *buf, int max_bytes=
)
> {
>-        struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
>+        struct intel_display *display =3D to_intel_display(kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         const struct intel_audio_state *audio_state;
>         int ret =3D 0;
>=20
>@@ -1188,24 +1194,25 @@ static const struct drm_audio_component_ops i915_a=
udio_component_ops =3D {
>         .get_eld        =3D i915_audio_component_get_eld,
> };
>=20
>-static int i915_audio_component_bind(struct device *i915_kdev,
>+static int i915_audio_component_bind(struct device *drv_kdev,
>                                      struct device *hda_kdev, void *data)
> {
>+        struct intel_display *display =3D to_intel_display(drv_kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct i915_audio_component *acomp =3D data;
>-        struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>         int i;
>=20
>         if (drm_WARN_ON(&i915->drm, acomp->base.ops || acomp->base.dev))
>                 return -EEXIST;
>=20
>         if (drm_WARN_ON(&i915->drm,
>-                        !device_link_add(hda_kdev, i915_kdev,
>+                        !device_link_add(hda_kdev, drv_kdev,
>                                          DL_FLAG_STATELESS)))
>                 return -ENOMEM;
>=20
>         drm_modeset_lock_all(&i915->drm);
>         acomp->base.ops =3D &i915_audio_component_ops;
>-        acomp->base.dev =3D i915_kdev;
>+        acomp->base.dev =3D drv_kdev;
>         BUILD_BUG_ON(MAX_PORTS !=3D I915_MAX_PORTS);
>         for (i =3D 0; i < ARRAY_SIZE(acomp->aud_sample_rate); i++)
>                 acomp->aud_sample_rate[i] =3D 0;
>@@ -1215,11 +1222,12 @@ static int i915_audio_component_bind(struct device=
 *i915_kdev,
>         return 0;
> }
>=20
>-static void i915_audio_component_unbind(struct device *i915_kdev,
>+static void i915_audio_component_unbind(struct device *drv_kdev,
>                                         struct device *hda_kdev, void *da=
ta)
> {
>+        struct intel_display *display =3D to_intel_display(drv_kdev);
>+        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct i915_audio_component *acomp =3D data;
>-        struct drm_i915_private *i915 =3D kdev_to_i915(i915_kdev);
>=20
>         drm_modeset_lock_all(&i915->drm);
>         acomp->base.ops =3D NULL;
>@@ -1227,7 +1235,7 @@ static void i915_audio_component_unbind(struct devic=
e *i915_kdev,
>         i915->display.audio.component =3D NULL;
>         drm_modeset_unlock_all(&i915->drm);
>=20
>-        device_link_remove(hda_kdev, i915_kdev);
>+        device_link_remove(hda_kdev, drv_kdev);
>=20
>         if (i915->display.audio.power_refcount)
>                 drm_err(&i915->drm, "audio power refcount %d after unbind=
\n",
>--=20
>2.39.2
>
