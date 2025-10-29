Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F93AC190E5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:32:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0499810E198;
	Wed, 29 Oct 2025 08:32:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g76OmBuh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACCA810E198;
 Wed, 29 Oct 2025 08:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761726761; x=1793262761;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=P1CQdL5TNkoqKVN2IfnJEue2ofuM5rocTcF2LK5QD5o=;
 b=g76OmBuhfKLBrqczD07RHB9nNJIj8w41B8gNhRwYFblVntSn3rT5nXZp
 dNkQ9J8YJBYZs/GD2aGb+53zmpxss/ojP+rzwDdbfz+DuOdl9VsVtDDfk
 RvsldKnBoCn/AzEWY11U8d0lij/MijkGbfWv3ELgGiPfT744cnErfY+9V
 jnWAMlTeLTSIafme8eWnUE8bGuHmDFATMMT1IOfu9M3TEjYtSMR2oPUG4
 1xdX06bHbeK+XJvKM/JQjviBowDE0AacU3vPpGWHegzJfl0C8iYlWxvVE
 MRntZlFs/duh/1H3ESbrvEV15wgV/CkYYRsgNQWqKfT8vsIqBKs2M5hpQ w==;
X-CSE-ConnectionGUID: PSgEb6mER9uDl4etRKkPcg==
X-CSE-MsgGUID: ak51THZyQLeIYc+6toWlSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74131092"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="74131092"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:32:41 -0700
X-CSE-ConnectionGUID: 8UX3rEZ8QL+p2nLYFycNCg==
X-CSE-MsgGUID: EjGpybjFSFe+w1tnAweCtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="185511096"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:32:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 01:32:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 01:32:40 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 01:32:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QP6ATIjG0zB9j8Qco3Ie/1unxUUAIddALez4b0iXPIlDlUW1SxY04SbJyCjODLhvLs1TM09E7pZdEoPFpHzI7HaWcgvEv2VNwMuQ/3PgpSqqxy/yfGxeqMtGrTwe11/7AkHzLCKzdA3d9CSZ6JS7Yfdq3sVlOGwV8aUEOIo45JP2KstbMm5Zf02q9yNd+EkCQIVXy1qdiOfAEvU/ivUnj/PFi1n0gVsgJhOTX7UQz8fa5s63zpqQ8nfeNqvrjYTmSv8zwP9N1jYMBFWMSL0flMp43pa1Zgp/cc2sRJAZLV6vvf7DH2GHtfa4Im1+NPAMscQxctvL3lVfFpwDRMpghw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A4rUuU4wRF2KOEMLVnC+Uw3zPEUDj/KHleVn0AdGKZE=;
 b=GlkD3KLuS417CmmQnFjpUzABGd7qJsqgDApU3FqIp6HebiN0+4fzLzHkFVBXEU68CD/4rxxJ5HX0SXOOmPO7mkyvEOM5oWUWRon3zRUYJHZO1GRqwL7Oh9lEv/Zke5P43/gey3dEz4K4boZYl21ISpvNRAJT1nFR+yjgt3N9JhD2G8g1M6YtdfZkHSi6ZV2OjtYzyXg92mm3hLTdSD/HUPBH/1ZybVifw7LQjzkReab4o0rjyB2vr0aQCjXKXoMjgKB+mBXrgWhKq2xIxjZqs2FWGu8Aa5YDRCVKkab+T9w6tIZdWANYH2DI4Yw0N5tlstjtphzeRj+wZnhhN10WXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB6397.namprd11.prod.outlook.com (2603:10b6:8:ca::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Wed, 29 Oct
 2025 08:32:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9275.011; Wed, 29 Oct 2025
 08:32:38 +0000
Date: Wed, 29 Oct 2025 10:32:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, Jani Nikula
 <jani.nikula@intel.com>
Subject: Re: [PATCH v6] drm/i915/display: Extend i915_display_info with
 Type-C port details
Message-ID: <aQHREd3h1Stw6Mor@ideak-desk>
References: <20251027205628.3067346-1-khaled.almahallawy@intel.com>
 <20251028190753.3089937-1-khaled.almahallawy@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251028190753.3089937-1-khaled.almahallawy@intel.com>
X-ClientProxiedBy: DUZPR01CA0214.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::19) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB6397:EE_
X-MS-Office365-Filtering-Correlation-Id: 60d27dba-4c0d-4499-bd36-08de16c5b7a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?LTilEwWDLIguPFlRwTxOntb1btUNB3Ro0ETgQNF8tZrFM2V3JUJ7rbQAj8?=
 =?iso-8859-1?Q?Xfi/SzkXqo54PpHH+txLYUatsbC5CK4A0Folaea0qtilMiwliYRAK4jtss?=
 =?iso-8859-1?Q?ZOGROG0vkoqx0GYuSvueMNvk71/38lZaJBTYc+BZtGSMjShrDiieBqB+Bn?=
 =?iso-8859-1?Q?ipdN0AoTlojO38UgS/8uBl16qTAYdU+QQzcpcmegjDvbmdCb9adBC2icwm?=
 =?iso-8859-1?Q?Ob60EJxN+Eha92CvTubGl0vucHVJ5ymIxSE/tFrMDAupRqeyQ6z/d5yr4E?=
 =?iso-8859-1?Q?BT9Y08nB6cNPdpsG7pKbXvzzeEBmwkwBZrMOx52hWWYErr/fr7zMnnjNtG?=
 =?iso-8859-1?Q?Jxm3XAvDbEhEov7ewIo1cfdHiCgEDtB6mrKLJuXkfdViUTeKBPZE+1vdEQ?=
 =?iso-8859-1?Q?gyh5/xhmG1rbNzgrCY2BemC5YXZqc1BkA6672jdifchc2FnJAWYLDuEqMI?=
 =?iso-8859-1?Q?tU+EMO52oAuv23wOyjWbURE841qteaJeZacXOjHlSwP5IFSrmQymn5P3P9?=
 =?iso-8859-1?Q?ChEpscHNI2WwevzuEWlvNDCPXgZGIiXb4C2TM9/WprWjI5Qq6+obVe4b58?=
 =?iso-8859-1?Q?AsNcNoQxRgjdBrOn1cZjmffj3K5km77bSDyJCsBmxiPQ8zNN2/TdSOZbgr?=
 =?iso-8859-1?Q?n8a6uA4GsF1JWnDMqmXB/PXzUqJD5MF0cztyA7yPSB+z2h8EtUq0UwN6h+?=
 =?iso-8859-1?Q?Yk4T+WAcyFwVFpr/jAzr37C/M5suYs/5kNUI+SgrlwJsQikKbRZNts8+/x?=
 =?iso-8859-1?Q?9Ljjae6YfspjvTeMy1xx+0//F35I3qSrdqgl3MdCLABh8oA1wmpGTP6j8l?=
 =?iso-8859-1?Q?fpHIuinQXSY0aMeCCvUr3RQOq+VLuFcPafO/KW/N76IRJwinmYUs5WR7/8?=
 =?iso-8859-1?Q?9pB0+LbU5hB1Bk+aMjTQ99ngiwInvacnZBw8ndf7zuTSbPwScMUQPWu4ph?=
 =?iso-8859-1?Q?DZJPjOzz87F9UPzkIuRzgOzIN9RuGZsl06JUF7ulpsFqOwPYYo4+vZv3vg?=
 =?iso-8859-1?Q?d4gJ/zDrw+Z18EgZxM649IJJ9TGSkZ+TEZkneIZ0Y3nWfTS1LQErH90eGJ?=
 =?iso-8859-1?Q?wjXTfCAuH9ARslg96rSXwaJQbCR5/6M3sHGpKQ0KPNwLepw3jCioUNYoEf?=
 =?iso-8859-1?Q?KOw4+HtBZrwKRNVaiT16FozG1UYExRde2jxcws/hvtVUv36dMzHo4EZJLf?=
 =?iso-8859-1?Q?QppT25HJ9CjavmpZta6SNcd2Wlcu3xJJHHOhbLEky8NGtU3walbM+9y9/6?=
 =?iso-8859-1?Q?dFVzF4hxHpkESWbSJuuMCXcM6gPLWNRHwLk25yFGjmlCcLcV/y48ISwi5/?=
 =?iso-8859-1?Q?DlU6TCp9rHAJoGDj729Un5JSPBZ0iscv6mS17h+1c17fx82uJtEsCnlfaN?=
 =?iso-8859-1?Q?VN2pn8+uQegnrJHO9FWm7E8iArWGKsZH/hWTJ2pNXGzSKRlKzDoRGo8eUe?=
 =?iso-8859-1?Q?QN48vDZMueNz/5tU0+Qbvg42AYK1RqtHlof/+4LU5lVEQHdScFFy87cwLC?=
 =?iso-8859-1?Q?m2/x/jlv5G12ia3AidFliU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?SzH/CFItk9Vov1HZWfxOi3iAvr2k44kWodG+QX3En7a+Is3LSFyOkr3/mt?=
 =?iso-8859-1?Q?T6QN/mqkVs+ESmZezZCgCQlM+xkIKCQIXJBv1YWWqcm27e5WO2p6/0RfVG?=
 =?iso-8859-1?Q?5WermDjFDzBvH8GWvpLw9whM66UUNLXeER6aDz8z8D2RB3cCuNTTog0l4z?=
 =?iso-8859-1?Q?OOXH3iUkDj5YnIzrXY1FKyUiCOFGoFm/roYwhxVzkMIH2cKImQiAK4C4IG?=
 =?iso-8859-1?Q?8/7YiSoCb5T4/S/yb51cEbc+aJhQ0zqAu+gWwD+HCrS4YKdgu+W7HQr61G?=
 =?iso-8859-1?Q?nxk7fnQ3dqklCdRWchHzo9wVrrh/3TYDLZXWNap4dtMY/ONMu3Wa48WTWQ?=
 =?iso-8859-1?Q?4PmSW7bRD78iITnJ4gJGU/1AhltJtWqS6BLhh8kT0rb3Nq2Dn7+nOSlu0o?=
 =?iso-8859-1?Q?lFPTk1OFtcKKnahyQ6n0Nl1G57rkdyV/chNiFQm2LlTkFCT4BYKoC819PP?=
 =?iso-8859-1?Q?KvHpUndXwJ9HRK4lNvDa19KdmP6p6HR0OZSivlrbiHyyIVJpctOqMmE8Ch?=
 =?iso-8859-1?Q?dpioJZbDEPVRzjoEjY/mjkIfbluKYhh7Z7Qix03WROP9lDyeORLGtofG1F?=
 =?iso-8859-1?Q?gkvzoDZ4BC/Ba7smq+aSMvHbB7Lhoyf7aVw4vPmdeqniX0Uww9c4efFkSy?=
 =?iso-8859-1?Q?D4MX3R2aNvGo06EQLLijLsFvqwy1Pz0LQOhvvwL/CLsdKxnv7Jix3dXM9p?=
 =?iso-8859-1?Q?jliQ91gv8PtaOpAcQRSD7yva6VvbFZNi6u02qtYprDCENlA8u+O2ZFtXs2?=
 =?iso-8859-1?Q?OdbclI8jMXHyK8gVWYNP/oH/V+HyuWahtiRBn7gTtMnTJFgvDhESCrFnkq?=
 =?iso-8859-1?Q?UL8kGaSbDqcGOq0EALkpX0LGygkg5po3vYG7T2tLOmPPkTJxlSqoFSUkIu?=
 =?iso-8859-1?Q?fmpetuOp75UpD7qQj/h2KdeE8z8EY5Ra+MI1vN4lilIzkyOhf1hXy60mPI?=
 =?iso-8859-1?Q?0JgEjrkZNvAl3ltrQTQthcbQ2VltiBUNT8M6GJUsxdav+Cwcb9foCNdRkO?=
 =?iso-8859-1?Q?HVs8n9brVyg0RfNOqLYyUQebUdTxoHW5R+bOdqPB1HcLiqPwWKMoJDX/Ep?=
 =?iso-8859-1?Q?DjA+shdkP38H3QL056ErCc9ObDaOIRD1wCZmoJv6IlsWmhs+usocldzRTO?=
 =?iso-8859-1?Q?urAKCPJjtmJoeF2DpHm5td2l9D3hw1/bhDYdK2VjIZVjwkimMEkv/zXzas?=
 =?iso-8859-1?Q?ggmbxh9zCiCCMFDWlf1cHvkMXeLSNDO0YhRMjoU+zTTdKYSXX5MKu1TYIz?=
 =?iso-8859-1?Q?51TZULQJoh0DJO2ybZQaIiEbMzPqeSI9++aXAfaDpItfBRS/FuxK3dwkV/?=
 =?iso-8859-1?Q?kLxtLwe58SAy81EiF/IGYp0Xt0Nc7Np4JX9jplUHt9szY/yuZ+3pnzafIr?=
 =?iso-8859-1?Q?C3bulnq8fPzy3StjCJ8tpmxg3kP6ATFrftmUZVH8LDkygfQ16eVTrE8s/B?=
 =?iso-8859-1?Q?XJoTDiV4vFJRz980LxPvFEQLdRSJ7OHvPq+A63k4lY03JyWJCqcHrzbkAJ?=
 =?iso-8859-1?Q?njUMOfta4c43JK+mdt+ZLRv3x9C9PyLy49UohQYLi0+mkFpbqKNgGRsqaj?=
 =?iso-8859-1?Q?m4iCpuRczEEWqvpgnzU3Ju99irhChPJfLiHE3RWXfbb6ls+uXazaDTVRSe?=
 =?iso-8859-1?Q?qUU1ADSYgrsUdlbZgg6Itsd0pdxS8Hn8MrsueU+mGIYqPoJkwiCoNs9Vuk?=
 =?iso-8859-1?Q?Ia3wofnsAc5vFSsIYZ/jzG0xiP6P9ve0rqrYL3lO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60d27dba-4c0d-4499-bd36-08de16c5b7a9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 08:32:38.2570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vRoNsbGrRzkcQtf32jCiT6hOtvkkhfqBx2dZGdEVQojptmPIUy/zXA8o3P3qT9HMxSIztM7dmYCvvwozcIPQvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6397
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

On Tue, Oct 28, 2025 at 12:07:53PM -0700, Khaled Almahallawy wrote:
> Expose key Type-C port data in i915_display_info to make it easier to
> understand the port configuration and active mode, especially whether
> the link is in DP-Alt or TBT-Alt, without having to scan kernel logs.
> 
> Tested in DP-Alt, TBT-Alt, SST, and MST.
> 
> Expected output:
> 
> [CONNECTOR:290:DP-2]: status: connected
> 	TC Port: E/TC#2 mode: tbt-alt pin assignment: - max lanes: 4
> 	physical dimensions: 600x340mm
> ...
> [CONNECTOR:263:DP-5]: status: connected
> 	TC Port: G/TC#4 mode: dp-alt pin assignment: C max lanes: 4
> 	physical dimensions: 610x350mm
> 
> v2: Use drm_printer (Ville)
>     Lock/Unlock around the printf (Imre)
> v3: Forward Declaration drm_printer struct (Jani)
> v4: Handle MST connector with no active encoder (Imre)
>     Add a delimiter between fields and ":" after the port name (Imre)
> v5: Init dig_port and use it in intel_encorder_is_tc and tc_info (Imre)
>     Move tc->port_name to a newline (Imre)
> v6: Use intel_tc_port_lock/Unlock (Imre)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_debugfs.c    |  8 ++++++++
>  drivers/gpu/drm/i915/display/intel_tc.c             | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_tc.h             |  3 +++
>  3 files changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 10dddec3796f..7014331108aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -47,6 +47,7 @@
>  #include "intel_psr_regs.h"
>  #include "intel_vdsc.h"
>  #include "intel_wm.h"
> +#include "intel_tc.h"
>  
>  static struct intel_display *node_to_intel_display(struct drm_info_node *node)
>  {
> @@ -246,6 +247,8 @@ static void intel_connector_info(struct seq_file *m,
>  {
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	const struct drm_display_mode *mode;
> +	struct drm_printer p = drm_seq_file_printer(m);
> +	struct intel_digital_port *dig_port = NULL;
>  
>  	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
>  		   connector->base.id, connector->name,
> @@ -268,14 +271,19 @@ static void intel_connector_info(struct seq_file *m,
>  			intel_dp_mst_info(m, intel_connector);
>  		else
>  			intel_dp_info(m, intel_connector);
> +		dig_port = dp_to_dig_port(intel_attached_dp(intel_connector));
>  		break;
>  	case DRM_MODE_CONNECTOR_HDMIA:
>  		intel_hdmi_info(m, intel_connector);
> +		dig_port = hdmi_to_dig_port(intel_attached_hdmi(intel_connector));
>  		break;
>  	default:
>  		break;
>  	}
>  
> +	if (dig_port != NULL && intel_encoder_is_tc(&dig_port->base))
> +		intel_tc_info(&p, dig_port);
> +
>  	intel_hdcp_info(m, intel_connector);
>  
>  	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index c4a5601c5107..08e94004d3a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1703,6 +1703,19 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
>  	mutex_unlock(&tc->lock);
>  }
>  
> +void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port)
> +{
> +	struct intel_tc_port *tc = to_tc_port(dig_port);
> +
> +	intel_tc_port_lock(dig_port);
> +	drm_printf(p, "\tTC Port %s: mode: %s, pin assignment: %c, max lanes: %d\n",
> +		   tc->port_name,
> +		   tc_port_mode_name(tc->mode),
> +		   pin_assignment_name(tc->pin_assignment),
> +		   tc->max_lane_count);
> +	intel_tc_port_unlock(dig_port);
> +}
> +
>  /*
>   * The type-C ports are different because even when they are connected, they may
>   * not be available/usable by the graphics driver: see the comment on
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> index fff8b96e4972..6719aea5bd58 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -8,6 +8,7 @@
>  
>  #include <linux/types.h>
>  
> +struct drm_printer;
>  struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_encoder;
> @@ -113,4 +114,6 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
>  
>  bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
>  
> +void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port);
> +
>  #endif /* __INTEL_TC_H__ */
> -- 
> 2.43.0
> 
