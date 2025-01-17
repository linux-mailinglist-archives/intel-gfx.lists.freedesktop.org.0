Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 668A6A149BB
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 07:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8DE610EA69;
	Fri, 17 Jan 2025 06:33:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UcZqgykc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8633010EA67;
 Fri, 17 Jan 2025 06:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737095602; x=1768631602;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ryo0bYRVW0z68aWfvF6e/02poKzQWqbhvdAWMNt/3uM=;
 b=UcZqgykcrA2oX0hry5eIaDmsRSNWqMj9xUjLGBIqw3as1VX3pKwLcToV
 HkMEg80N2TQybuwgl7yXQ6fbadLPccb1rrATaSjkAbmBN1o598OCvrLJd
 NXbfi1Ey6dC2+WR5m0JWsU3AZMPV0Y/pl3QKGm5qUocd1z3S/nPiXmh7t
 CeMT4Fog+gP01AvIqRmf8qXVwz7t9RNd1MIVKT0vdSQlFGNAYtEpIRot4
 3ZZ6B9vfDPQ8GZiE2S9YGQ3dlQbuF8mQDv0WaTGaZFYp5c7Kq8arUaMVw
 hoOUIfHbhCaMM38IQTLO6U4VmSVXmxLSUshj5suJZ1vGYjAYRxVA0gqLm w==;
X-CSE-ConnectionGUID: ikyoL6uwSJOMjjanniHbCQ==
X-CSE-MsgGUID: zlHk6W6WQgmlFflwd3NbsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41282632"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="41282632"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 22:33:21 -0800
X-CSE-ConnectionGUID: 5UyxrI5QQwSyOxMWtBsQQQ==
X-CSE-MsgGUID: Ex1za+p9Q9OEZMsxsynDtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136598095"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 22:33:20 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 22:33:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 22:33:18 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 22:33:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K23DV8LbNvoxcNnQdn2qfCmHvpGOORNOMjJWJktk2JD/WMlTPus/9QSdFG5oYmpuejS/MVKoyrdAJns6E/9FjA11snTWz80ZbnwSzFBud1jrUgqi3+ZsJ9CXNK+6dGIMpF8O3dOtxJ6MPu4TiZnI74snQAsLlELZFtX6IsrPtz9ZtXGrNeizvI4fys3fQtZEFF6dbIRqq99t81EFqtbuDPUhfDlFFFNU8j/pwWiYmwUoGT7NOo5HzpGZb3s/Y/o6itTg2Fd/0/wtiVkIAk/rIuwENYq47EuhvEJGxPCD8ledRcP25E1hD6K/4K//0Eo8v+ZY0E+up6So+3ZD01vSlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fvJjLdbBExUAjEXUFHqFKyW6RX20xD45Yhag7dnZEo8=;
 b=C37GU+0sQkQCj60LvAQPYnMLd5UaC37SfNT7vCCSO5avz5zyM2FgY2MHbsF6GizCNlZ9ruLAEujANzpjjuTFs8s1yT7RCydJIUHfUrmDgExS/cPjctN8OL26qiEvbjYLlmAsu8okVJEXP8QRygQUmQUaSKUzl8Y/OJl0C931vUiEbFpx2GfwsDkJUIj9T+DVS/UNiEN+nC7PcZhiUtrybyxEhNmefwXTo/SxQaMRZu6eEaE5DvIf9oM/b5VcYvHyMPGqWE8aXsOeFTRWmDrS3H+M1JwQeaIW4Qym67Ic7NyZ64q8IjTev2KvUuVrWGDIaiS+7z+vC+bzbnlco81T3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ1PR11MB6251.namprd11.prod.outlook.com (2603:10b6:a03:458::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Fri, 17 Jan
 2025 06:33:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 06:33:00 +0000
Message-ID: <eebe0491-d90a-422c-9ac1-7557175c4aa0@intel.com>
Date: Fri, 17 Jan 2025 12:02:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 6/7] drm/i915/scaler: Check if vblank is sufficient for
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250116163130.3816719-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250116163130.3816719-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0041.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ1PR11MB6251:EE_
X-MS-Office365-Filtering-Correlation-Id: 49355d2a-bb7a-4b2e-a1aa-08dd36c0c9dd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QTZKbzhSM2xzQjUwNkdVcVFTUVYyZ2RGa1VsNkZGMisvMVdNMjBPS2tHWkwx?=
 =?utf-8?B?OEtiVTVzcm1DMXZvOExMLzViNklmQXpmVHVDcFZGMjZ4OTBxUUZDOUJreFZu?=
 =?utf-8?B?LzdqV0xYTE9vUXFERFRhL0Jnc3hiRHkreUkzKzB5SEw3TlRFSDVYVTVIditt?=
 =?utf-8?B?KzQxc1ZrNVp1c0xZTFZVWWNxMmt0Tys3bWdXK3dGVkFITFV4Sk1RaG5oa0Y1?=
 =?utf-8?B?L1cxU0JjejZUL1ZPRjVReGtMVGVVS3ZJWHZQeFExUkMwaGhiVHo4eEVXNG03?=
 =?utf-8?B?WktrZnZPVVZia2Izb3JaMDBtUkcvVHE2S1BNNEJvYitKaHJJU2pNdG5EaXZO?=
 =?utf-8?B?U01KbFErdmo3MFF1bGZtRzdlMXA0UEFWNi8wb1ZIQUVpWmtQL1plbmF4NEo4?=
 =?utf-8?B?SmRjMDV5ZHVvajljYXdvaEh3RU56RHFEak1nNDduTEpYc01KRktYTStDcmM3?=
 =?utf-8?B?WFV2MTZybDFweVJMQUVGeExBRFdRandFUVpaRjUwYlNyQU9FSzYrK015elRW?=
 =?utf-8?B?M3plSGQzQWRtR1J1S0EzSnVwR0w3K1F5NnphNGcxbmpicldVVWw3UGpUQjdT?=
 =?utf-8?B?K21WL2RMV3RoRUlveDFCWVo4SWN1VXhUdDR2d0pMai9JS1BlYmNsYXFMVk84?=
 =?utf-8?B?WnlOaC9ZTlZFRFhtd1Q1NkRSd2pjTWFXQ3BadEwxUlp1L0tVdUNHaHo1MzFD?=
 =?utf-8?B?VFRwN3hVdDhwYXFDcWw4UXQrTDQxbllIcUQzSkdzSVhGYmtOMUNjMUd2ZlhG?=
 =?utf-8?B?VnZ5U251RzNhWTA2enlacS8xdFVsWVdMMEFiNE91NVF5cGJuMjV6ZkY4Yk9a?=
 =?utf-8?B?MjhxaGRXaEFidWgyM0lmMmd6ZWtUNnNMbGtpcXBNclZWdUxTdzI4NUpkYjA4?=
 =?utf-8?B?UnpEdU9oRkhmamJNWjh1TVZXM3Q5WHU3M1pCY0FOR2pEVGtwakFhb3EwcVB1?=
 =?utf-8?B?dk83ZktGazJ0THkzU29GZmU1VzAxMGk4SEdnSFNKWVQ3QUY3S01pbnlQVFRm?=
 =?utf-8?B?V1JMUkJXWkRTczVWamlYaDVWSGFSeUlJV1BnaXVkUjJCMVBobGpJUzNNOEVs?=
 =?utf-8?B?Zm1tVnZ2aUxHZ1VZNWZGTHJnQWxKbFo4dXNONDB2OEpCMzRBSnF6N25QUktt?=
 =?utf-8?B?TzhxcGRwK2kxa3NSd1dJUjJ6czJER05XeTh2a2ZwWGpicjR0cUYxNXdwNDRT?=
 =?utf-8?B?WWZsNk52S1UwN2JOYXpvVjE3dXRKRThJckRjZklPWmlDZGsvZnc0alV3dVl3?=
 =?utf-8?B?czBYWEtvaW9YUjhnY2pRMWtQWDhCOHBRYTRCK3djN2x4ZUNnejY4RkVEckZm?=
 =?utf-8?B?eWlrOEFnREFWTW8yTktBV2RKWUdKeEZBa1lVSVU3L2JxaytQUllMSnA2NUhE?=
 =?utf-8?B?WHFhb3dYeGRFT21lV3RkYnFKMWdUcE51MGE5QTNXczFTT0p0MVVCMGR6QWNU?=
 =?utf-8?B?ZkFHUDdZY2laSWM5M1NTbURSSGViUWdWaVlCZzNGdVZkQTB2aHY1TlRRb2F1?=
 =?utf-8?B?cFFFMmlqSlZpZ1B6cFlqUXh3K2orZy9iZ1FHenV3QVRJVFNVNDZJd1NpemFl?=
 =?utf-8?B?Y0UrQXEvOHVEVUJ4bXdMTUFhUFVkemIwOHNWQlFzdllLQzg1UWRtVmxZT1gr?=
 =?utf-8?B?TGs2cnNvWkVWRWltZ2dVYVRZREw0Y1l4R0JQV2dERWlXbnJFV1Q2WkwxUVNj?=
 =?utf-8?B?eGE5b0pZL0QxdCthLy9pQ01iRy9hUFNDR3Q0ZGVHTjErTWJWT2ZsK1lCaHlk?=
 =?utf-8?B?SVA0eWZlMzVCWk1nR2s1RmY2a3ZLcFpaVFFwczB0Vi9CNlBHUjBxZVgzM29L?=
 =?utf-8?B?SFROUjFMMGlpTkFJWENYc3ZmdGhQYTBDYm5heVBtUEp1aDk2M0tSYkpVV2NE?=
 =?utf-8?Q?2AhUqe9gAs9yz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TW1CU0RNWHp6amZQL3RPcGg2SkpXbjlha2swaXpEYnhiSUdZVUYxTEx4dkU0?=
 =?utf-8?B?NWNmb2d4V3pxbzZ6L2FtNlYxQTAvblY5MzF0ZVZOcWZzaDQ5OHdvOFI2cDBK?=
 =?utf-8?B?aGhscnI0ZXBRR0hhWWxqTW5xejlRWjFPQWJURDZmNXpoZkp2L3M1SDY1allB?=
 =?utf-8?B?cnFocjNheGFhRjgwS2pKRk15K2F6TDY1eHN3Qk45QmZYR3IyV08xQWlBSUhz?=
 =?utf-8?B?eW1NcWtHYm1jTndpaW9ZUHM3NllmYm5aaWxQTGpxVUxwWklGRnZET0xrdi9h?=
 =?utf-8?B?RHFJZHdBQ2tPcStsQzBjbXlwOHRFcjBKckVyUXUwOHVUSFZoQno4MlY1c3Y4?=
 =?utf-8?B?N1BqZ0Q1dlVtUnF4cVpNMDQzQW1saTFlSG1ZUGpPUDdRbERsT0JZREF3WDlu?=
 =?utf-8?B?LytERkVmaWpwa0oyYWF0Q3ZCNUF1dlA1R0Q3bklKVS9rSjlKdCsvSk16MGZ4?=
 =?utf-8?B?NzdvdExUMEpNVm80RUxhUk54RGVSTCs0S1FDUC9EN3Bsb1BYcnpnUGNKbTIr?=
 =?utf-8?B?cm5GaG5FNGZ5SUJneDBpT3RMZ1JwbmlmNnpEUkVsWTNUSXZqLzhCamxWTmdy?=
 =?utf-8?B?Ym5Fb0dPaXVOVHNscDJXZisvMklydHRKWWVVbUlyWDh3Rjc4TE9Xc0xrRFIw?=
 =?utf-8?B?cWhCd1lZeUNubWFTTnBrV2FYVUN1U0dHYlloc3BWRDJzUG1ZNjlNQkVDbnkw?=
 =?utf-8?B?N3FvTjRxZ1MvVDJRTUxyS2dRWkpzM0hROE9IVmV5ZnVBbFhxbWZrZGlPcy9k?=
 =?utf-8?B?ZGkxSktSdnNneUtuWk5Rd1NKdVNlZjlJdjl2aUFEOFVPMGRiMzIzOUs2V2xV?=
 =?utf-8?B?NFdVdHRpVXZCN2tJc1d5SElqMm9ocnZlQ01kSDdoT2loc0xhWFJFZll4bGxT?=
 =?utf-8?B?WUwraEtHM1FYZ1ZUVnk2bE1wNmdJQVBKS0lLOUFKc3NyRG96K3NxL25nZkRC?=
 =?utf-8?B?SFIwSVNlcWR1SE96NHphK05udjQ3YTZEZEZUc1p0SjZNcHFpejRHZzNKOUI0?=
 =?utf-8?B?dkM3eVB4QUl3S2IvTHpPV3luMWdzd1daZVp3OE51blNtVUdmNkdCRnFNQUdv?=
 =?utf-8?B?bGsvelhGaW1yc0dnOE1GMDFtV2RqRFNiTXVCVC9mNEhQbm05TW9tQ3BhQmJ2?=
 =?utf-8?B?bjlEUWszSFc4clV5eThkQ2wzNzEwUGtsOVVLR010UERVdXp3V2VOUW1aMzhk?=
 =?utf-8?B?U1YwSDA5c0pNTzdObFMrNnU0VVRPUTRrTjJpMVBhNWZxaFpKNU15SWpSajlk?=
 =?utf-8?B?L01CMzdoNC92OXdpUGpYZWxWREt1K1ZKR3BBOUJuT0haNzZJbWdMbDRXaldN?=
 =?utf-8?B?VjI2N29TMUVVSDRuNGRhczgrUVJnSkxpMU1wRGpoakxyY0JseExBZnhJd3Yx?=
 =?utf-8?B?TUxBYmJobkdTdmROUmxraTMwVnZBc0FwTStGU3RiSCtBejJvbnRXNEc4eG5Q?=
 =?utf-8?B?QTBrbSs5cURKRG90OGdQWVpoUGF5ZDF5b2VPSndHMGhPOGtPKzJBVHYySExQ?=
 =?utf-8?B?bmJyL1NIcjRJRzVSZFFSS2VzSVlpYzdDVXJuanYxdFk0THA2MWU4SUhLY3Yv?=
 =?utf-8?B?OG42eGoxbE1ZSldmOWhUTVNWUm5VWFV1YVN2ZTM5WFFOWTF1QzFZYU1sdE4x?=
 =?utf-8?B?UEhpUzFtMXVaY3RzeCtoLzBOVDljYjlGYzZkODVXNGpNOFk5bEFvZEFEbUNi?=
 =?utf-8?B?dlVUanpoL3k5QWxUbkFQWXFBcURySThHYnBSYXg5RVdJNkd6SjBETVZ5VTNJ?=
 =?utf-8?B?a2tRYW9PSkN1aG5Tb3ZVSEc3ektpUjRjQVRGb3IzaU04T0RtNUZGckFNd085?=
 =?utf-8?B?alJCK2R4Q2pEY25rZElkN0Y0ZjM0SXBhQTFYRzBKWEppc1pqOGdpbEgyRFNo?=
 =?utf-8?B?emlJOTJkMkt0TFRKT3RRcUtIUmhRd1ZkdUhpOE5Fa2xGSU54eUphMDZEMHh6?=
 =?utf-8?B?RElDdWNhQWdzbXg5aDREeFBJZ1l4c3Z5UUVPR3NaTXBxdFE1Z1czOWRzbGtw?=
 =?utf-8?B?eTFhZlVMdXZEUHhHU0FjUVNDMnBpZWxRdVc3Umk5QU5DSm5CUWZRMGpVRTZ0?=
 =?utf-8?B?bUdvM1EyN2RPaDU1eEZVUGEvN2NLRW5NRG1KZDE4d2IyYVRUdFg2UVNHRmx4?=
 =?utf-8?B?bkRIU3gvVEFXTGhLZ241aHRmaVdoM2RHYnVpUXZqRitPVS80N0FlajJHT3Az?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49355d2a-bb7a-4b2e-a1aa-08dd36c0c9dd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 06:33:00.6698 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wGFcvnv6YsUPreZrJYhI++3MftxuMqAMKPfwc0dCQRIsLe+lPkNscV41sIV4Ihgd/xsSuhMEgIOyQOjnI4aO2OrhnUb8W2NMow5DXCxtbAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6251
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


On 1/16/2025 10:01 PM, Mitul Golani wrote:
> High refresh rate panels which may have small line times
> and vblank sizes, Check if vblank size is sufficient for
> enabled scaler users.
>
> --v2:
> - Use hweight* family of functions for counting bits. [Jani]
> - Update precision handling for hscale and vscale. [Ankit]
> - Consider chroma downscaling factor during latency
> calculation. [Ankit]
> - Replace function name from scaler_prefill_time to
> scaler_prefill_latency.
>
> --v3:
> - hscale_k and vscale_k values are already left shifted
> by 16, after multiplying by 1000, those need to be right
> shifted to 16. [Ankit]
> - Replace YCBCR444 to YCBCR420. [Ankit]
> - Divide by 1000 * 1000 in end to get correct precision. [Ankit]
> - Initialise latency to 0 to avoid any garbage.
>
> --v4:
> - Elaborate commit message and add Bspec number. [Ankit]
> - Improvise latency calculation. [Ankit]
> - Use ceiling value for down scaling factor when less than 1
> as per bspec. [Ankit]
> - Correct linetime calculation. [Ankit]
> - Consider cdclk prefill adjustment while prefill
> computation.[Ankit]
>
> --v5:
> - Add Bspec link in commit message trailer. [Ankit]
> - Correct hscale, vscale data type.
> - Use intel_crtc_compute_min_cdclk. [Ankit]
>
> Bspec: 70151
No need to leave a line here. This is part of the trailer.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 33 ++++++++++++++++++++
>   1 file changed, 33 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index f4458d1185b3..792e59685578 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,38 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
> +	int latency = 0;
> +	int linetime =
> +		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> +					 DIV_ROUND_UP(1000 * crtc_state->hw.adjusted_mode.htotal,
> +						      crtc_state->pixel_rate));
> +	u64 hscale_k, vscale_k;
> +
> +	if (!num_scaler_users)
> +		return latency;
> +
> +	latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 4 * linetime);
> +
> +	if (num_scaler_users > 1) {
> +		int chroma_downscaling_factor =
> +			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
> +		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
> +
> +		latency += chroma_downscaling_factor *
> +			   DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k),
> +					    1000000);
> +	}
> +
> +	return latency * intel_crtc_compute_min_cdclk(crtc_state);

On second reading of the Bspec it seems that the 
cdclk_state->logical.cdclk was correct.

Apologies for the mistake. You can revert this to the previous version.


Regards,

Ankit

> +}
> +
>   static bool
>   skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   			int wm0_lines, int latency)
> @@ -2302,6 +2334,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	/* FIXME missing scaler and DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
> +		scaler_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
