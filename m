Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C52DB9FEFFA
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 15:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A514D10E08A;
	Tue, 31 Dec 2024 14:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cYW135zR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A609310E089
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2024 14:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735655515; x=1767191515;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=LC9UsfHmLM0QBRkZjR/C0QBfzbpMCuVUzDNMVBdZMKw=;
 b=cYW135zRcbgTXXRK5u/+1MC6NveNFlBqiy9TCwS5WkRldTHAvbtlOf+u
 M1A4gJXgUb5YpVfDgTFX63RXftJEsnHHCOierTfNQFLc+uh/7FKTgs0Rp
 M4KoSspyJja0LRiMwp9M5GgFU9H5sAZoo6zFSy8nu5wYSO77PnzR6cB4j
 Fx1ENiZUqggWliwXefrKWVqJ631j0diPobddWdq+koIj9x83/va2QrksE
 EIMIekJX9aTSnnhUlx3R6WON6637eXyrlEJdZ5B+Auy+7o1DAMUbKfoNY
 yXPgvdH1esv3hFL7C7+SwW6/yfYsqCYtNVF0ZIj3w5f/8bZO4DLo1Vb4b g==;
X-CSE-ConnectionGUID: LOaJ380sRSSH1qEAwX1wOA==
X-CSE-MsgGUID: xZ1weTP8Rx+EcYXZb6RqDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="46612507"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208,217";a="46612507"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 06:31:54 -0800
X-CSE-ConnectionGUID: MSax7X0sRqKdSujNXKl+hg==
X-CSE-MsgGUID: oOtEVUGST5KThYTYx2DLaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; 
 d="scan'208,217";a="100825526"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 06:31:54 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 06:31:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 06:31:53 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 06:31:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pOyERLMlRrtL1Awoa0sfE5yLEc7WL8fvFVygPfJQXxPhOBwY23hyg+VDGTWboG81lPVMOsPRfxSkQwlIo0LZV97A49IjduE7hoYsp1SaFEI+0PjmlxUk4KmOR62iIBBF5xVYowUrP2BFd2666qybtu7hWjIYJJ6hoKp5xO6pBPrjzXR/X8n++5FkivydT6E4XmWNknqVgQlPd/SXsne/LbxbZ6+ngaOCdGWa50PpYcbn/1jBXVd77IgPMPBWqQzDFX1YERZQR4LfPaW2BMP1KymWz7W4xSMJ2+Xh/a/UO4zXN37j4lE/6OVWFsZ5GHL/g4nfqks+ES908STiz1ajOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1oPX7cyHjV/yJeYsRkTd9ORfvV+ubGCvu9m1RgN2M9o=;
 b=TYn67gWNClwUbbO33SRXDb+hGWTovTLU2LIHIvUNV2kzCNYfFKNGqzRvmiJXO46z2xEEOT/e/y2eNooG5HEtI6fVHFoGNqnVab9F8PIQZl4ynpsyPVKoQ7dOPxPZmydB7cnwXADiZ8xkY8PExFohSSxWpCRlZY5rxx8xEXVf7q9eMDSVxdrcqWDqUa/zjy8zArEteCbNJpH0loQpchopniQBJb/oojCtktWegcvG9aXvTzoHKWcp0S5djB+SF0VOlLux3vdh7nMqa0j7B2km8N99sSXHIOIQlE6YSGwE8XRpImb8MNd2AJwNot6ZfNVxIiRndqW42ZFj14/A08TQiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 SJ0PR11MB5119.namprd11.prod.outlook.com (2603:10b6:a03:2d6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.20; Tue, 31 Dec
 2024 14:31:27 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.8293.020; Tue, 31 Dec 2024
 14:31:27 +0000
Content-Type: multipart/alternative;
 boundary="------------k3dwqRRdaNFusJbTfChtYLfW"
Message-ID: <be79d5ff-a398-4907-94dc-309b45dd2a5b@intel.com>
Date: Tue, 31 Dec 2024 20:01:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] drm/i915: Drop 64bpp YUV formats from ICL+ SDR planes
To: <intel-gfx@lists.freedesktop.org>
References: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
 <20241218173650.19782-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20241218173650.19782-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: PN3PR01CA0144.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::11) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|SJ0PR11MB5119:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d7bf841-9e1d-4f51-a623-08dd29a7cf2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MWlsVnA5WU1wM1hzNFZEd3hyT0dvcUhBaXZpNjErTjQ1b1JVV0tLT21ZemE2?=
 =?utf-8?B?YUVTVlhhbE1ITUNHUm1RM0NhYWxXVGFyUFNtOEJrRFNhNjR6R0lQQmVvbVQr?=
 =?utf-8?B?Y1d1Z1dONC8yTzJZblRWcFJmK1NacXpSL0Jzd3RnRnhlSFI3dUxEMmU4SE8v?=
 =?utf-8?B?NHB0RWhDMlJxWWY2VjdMMG9CMkt3QzhobUoxdkVqNmlxcldKSFBaMWczMTJH?=
 =?utf-8?B?SkJ5UXcrVm8rcE1ScGFHc0dmdnd6NDNuYnRZNFU4cC91V0JOTGtNc3ZGQ3pG?=
 =?utf-8?B?TXRZRjRlalUyQ3B2SEpIMy9TMnBlNWQyUEpFMmtVdFRhdG1IWGRYL2I3cnVs?=
 =?utf-8?B?SjVRRHpIU2NnS0R1eTd1VkRvc01WbDVUYk1SMVFNdTJiRkw3d2I1d2RiOWJz?=
 =?utf-8?B?ZXpmM3o2K0RMM01KR2dNUEtDQkJqQ3VST2xObXJRdXBPYjNKcWUvcjJIZkVt?=
 =?utf-8?B?dnFWaElUSUkreFphWTh2UEs0WVJzclBuN0RqdE5JN0gzd0U1bE5TaFdDRDlv?=
 =?utf-8?B?RXRwM0ZmdGVHU3Z1ckNGZ09sa2R4MnVhNDNaMVhaOTlQSnIwUWJVYnozZkQx?=
 =?utf-8?B?NnNkUHZpbTFzZFRiTE9HS0kwWWtzY25DaEl3K3B5dUhVSG1SL2FMcm9RTHpt?=
 =?utf-8?B?ckJ1UW9nVXVDNTFwa0ZIUVlNa2c2alhWTHlhMWo5c0xqL0Jla1UwQk4ramtO?=
 =?utf-8?B?c0lXUWRIYlgxNllDWDlRT0hhRmdOZHZPV2Rud3ZBcWJHbkFrbHlEMTYraTBp?=
 =?utf-8?B?Rm91Z3h6aEYrWFFhZUpRNnJBRWs0eGxZcWprdVMvYktGQmlENFdtTzlsa0Z3?=
 =?utf-8?B?UGEvUFJWYWlkMEdFR2h4Q1JRdEV0ZVF2RnFhQVZYVEpNNWVoMkVCZG0vQWxC?=
 =?utf-8?B?T0ZVYjFOdUJpMDNsMm5GeVU2Y0NUU2x1YVEraVlsbGhSeEpVTk0rWDNEL0dX?=
 =?utf-8?B?MEoyRjNDL21JMzY4WUpQcDI4QXVxaGtDUFlxcXJ6WXExVVBhU1lnV1dXQnVr?=
 =?utf-8?B?ckxkT0ZEWGN3ZUhkSWpCU1dzQnJNeUcveFIrZkE5TDhNVGgrVDNvcHlXcmdx?=
 =?utf-8?B?Wk1WZjQyZkwyZTBnZmdadnJHbEFVMUZkTkVoZm1wZHJKbnR3NWZSKzB3TmNl?=
 =?utf-8?B?dG0vbXB1UkVrd0wzdVJJa2Rldll0YjJjbFlCNDBIQ0lEVFZ2R21INFI0ZVpu?=
 =?utf-8?B?KzY2MWJDWm54MWFlVGlrZUhWbXpkaEllZ1UvbkkwcmtxLy80Q0hha3Z1NnZp?=
 =?utf-8?B?TjB1UDAxU1VYSys2bTRtelB6djV6K1FMd2FRVklhTTd4enVqNzhucHRIZnJ6?=
 =?utf-8?B?cUgrWTJXYjBPU2hobEk0czZ6TCtpbElYeG5wbERpVUhUdHp1N2dQM0lsTHVQ?=
 =?utf-8?B?S2tibXhYdkZMbWNEY05RSFZQK05oL3pjTHUxQVNQaSt5K0p6OGNPU1VUaHZD?=
 =?utf-8?B?WHVpcjBTQkpqY24rUVNHeUlnWmhSZjBFSWtqWDQydnFzRXBKeEVPQnVSYnlQ?=
 =?utf-8?B?L1ZPakhUc2RyTFhlRTF5d3hUN1ZYQWpsZ3l2SkN1L3JCcGhscElyN0lYZVpB?=
 =?utf-8?B?OVZHUlF4TTNlK3UvWFJRcnNhMTdtZEsvbjJabUFiM0N4ekRQUVBtc1VkcTNw?=
 =?utf-8?B?SDF5eVdhejRvMTNEaUd1Y1RKTUExMHdNRGI0d3RwR3lreHhpdzBJV3o3Zlda?=
 =?utf-8?B?Z2RZeUhhRzJzVTB2MDk1UWFZcllOTGFBVGI1eFFvbHM2NDBNaWpYdlp2WjNV?=
 =?utf-8?B?WnNVV3hjTDA4a3hkeVU3dEc3Q2MyWUUrbEF0OFhjTmt3dUNaT3l5Y0NQQXVH?=
 =?utf-8?B?UG9Sc0NxTW92NitLV1hhdjRNSmk1alpSS0FkRUxBNmtZYmRsSE9kYVo1M1Nz?=
 =?utf-8?Q?drt6xYP1iw00u?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFJJeXhoZ1I2anFCRXZuYlVRMUZ5a0NNL0k3Q0RtTk1MNkF0clFNTVZRUDZI?=
 =?utf-8?B?OXVUYTgxTFFUbTNHdmNqQU5SNUxOcnpOL1YzcFdjcHlLSDJHMXJMZzZIYkg1?=
 =?utf-8?B?eWRIZUhmYUoyTnFEYkJqWTdSZ3ArRXVEQi9ReHFmYVVBV0hBSFFmRXZOT25U?=
 =?utf-8?B?N3djUmsvRGQzOGJWbmNoOUNMWVFFRUdjbFBVR0JjZU5uOEJNa29LUVFGU1JM?=
 =?utf-8?B?ZC95OFdoV1hObmVxR1NGOWhsdEtsSUtUU01hWHQyVUpRencwUDk0MU1BOVVk?=
 =?utf-8?B?L0FreHAwRnJOQTkyOGJadDM5UHpYaXYvWlFNNnl3ZVdHV0hVSkN2Q2lOZlky?=
 =?utf-8?B?VFpROGdHN1BoN0k1elRtdzZRaHBMWEJqMmpxZVZmeGN0RUJjU3UyekhGSFJp?=
 =?utf-8?B?UTAvTGFUZVI4ZjdKZ01kTVJIejBLeHJreGRSUzlPcGtGb1ZGOGhGK2F0RHM5?=
 =?utf-8?B?emgrT2RXVi9yamh6RW9mbGNSRlNOMFlSZDQyY25FS05PVVRadDVTbFdqNHpE?=
 =?utf-8?B?ZW1Wb3ZMZEN4emo5ZEJPOXhKT3FPSUJRUUxXUWJ3U0lMZC9pN1lFZ2VwTVNF?=
 =?utf-8?B?YlZmNkZvcGVHQzRLd2g5MTh4N2RsSUVzTHUvdnpBWUtpMXNvMVp1YVNhbzFi?=
 =?utf-8?B?Z29kYXRSTkdtdm54S2tKMG0wLzd3Q0ZUdWlDNjM2R2pzTzdHZFRIQklhb21x?=
 =?utf-8?B?MUk1T1c5am9QV0xwTWtkc1R3Ym5tNElVTGpnWXRUOWpwbDN3YVd6Y24zTEtK?=
 =?utf-8?B?N1F3dFg4V0loLzZqOTZQOGdPZ1RRbGhOckhZN2ZEbjMvSjFZS0NqZVR0Vmhk?=
 =?utf-8?B?UTBtQTVlNmlVVDdTdE1XdWlCUE9uZktQRUdGV1VpYTVJbmN0UGtZcVB6eHla?=
 =?utf-8?B?MHFtY3QyKzNtUzZldzFUemlza0ZySDBHSDVTZHJta00yM2MyK3hhdFBocmlo?=
 =?utf-8?B?WlhWdG93WVhHTmpXanMvQUN3T3h3R2lHTXZEQ2RvN0NWckVUazJPdXRva3lU?=
 =?utf-8?B?SDUwUXVaN21ZRmd4bmVBSHVoRktnbEZPc21RRmRlREplYVAyZ3JhL0wxZnVD?=
 =?utf-8?B?QUUrQ2FJTlhZMlYxZXRrc01kUjhDMlN3QzBHMUJzdllYcm5Eemh0TFEyWWhw?=
 =?utf-8?B?M3AzTVJaNVFyRXBWY1RHT1dDczVrWkhjN08zYURmcHczRW85WUdXMk96SVVB?=
 =?utf-8?B?TlNYTWRoUTNEaWFGbzJkMnoxWE42MlhvWjFEekIxOVp2b0lDTzlNamNZeVU4?=
 =?utf-8?B?MDdVMDd1NkoyT0pXenY3Z0dwUDBWaDlqWWpDVkFYUkMwWGNOTGI4cE85TVpn?=
 =?utf-8?B?dElTWVUvSU5zQnN6cjQvVE5tVFcrVXFYYzVrR1k0ZStuNjU4NktSOGxmOFBT?=
 =?utf-8?B?WEtCeUkrek5ZTks4TU1KTTNmaVpyZEFBdVNLbmZhaWtUbmlFY09MUFpJYnky?=
 =?utf-8?B?c0UwazZjZUhOSU5KcXNqRXZjOG1yN2daSXQ1QVphREUvV0RySjQrdVlzdmZJ?=
 =?utf-8?B?bHY2Q0gxaHBkSk1wbFJHN3owV1lhV21NM3g2M2NyYVJDY2RidTJzNWJYM1Rq?=
 =?utf-8?B?NTB3N2U2a3lvM000V3NlSHZkOFJaRVA5RkMyQkFhcnFGT2hMUGxrbURCQk02?=
 =?utf-8?B?bjhvNXNpV0NjQjhsb0JqdCtPeWh3MjRtNDJXSU9MamFsOVQ2dTB3WlgrM0l2?=
 =?utf-8?B?YU9TTTRuNTJ0Y1lIN1pIVGlPalA3WUlwcWFraWhVTlovOXVWaGpPMnhxREVl?=
 =?utf-8?B?TWlaei9QejR5VkVRc1E3NGtwRS9pLzIvZXVkSnF2Um5PQ1MrNTA0Vm5JOSt4?=
 =?utf-8?B?aVhMdlM5MXo3eC9ZZnVLUVZTMFBDWG9iaXdRT2g5elgyWjUyVVBuV3k2Tmtn?=
 =?utf-8?B?VS90MG5ja1I0YllUVFNzZDVWWXN5NDdxUE5KK2l6V0JvekRuV2RJcUEvaDRl?=
 =?utf-8?B?L21tSzlNRVFZN3YwTk5pVkE0MXdTWFNWMUN6d1N5dEdvUThPbUJUajdINVpY?=
 =?utf-8?B?aXFKM0ZwczBrU3c3ekNtKzFhUGdhYUN6cDBDL2dOWTFsQ1phSGRML0JtSTFC?=
 =?utf-8?B?aEw5VWJlQXZIWXVjdnQvYld3eWZGcHJFbUlkbG9SNHgrK2w1VXpULzVvN3NH?=
 =?utf-8?B?TVVvZW91ZHBiaHhMVTVCWlhWT28zdGFHbUp1eUQzWm53WWw3ZERzTHBXTzMw?=
 =?utf-8?Q?VvUYSAG++4ndokuoCcNO4Ws=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d7bf841-9e1d-4f51-a623-08dd29a7cf2e
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2024 14:31:27.2607 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sJ9CF8cfq2df6nuqjuI6hnvbkip5P3/TDpROpqsI/OYdCFlKAJwUnd3hzw4KtYNDZxAaSE0YjeokNMQvZwMa3NZ7U6/FQf25Yt7Q/XiEgPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5119
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

--------------k3dwqRRdaNFusJbTfChtYLfW
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit




On 12/18/2024 11:06 PM, Ville Syrjala wrote:
> From: Ville Syrjälä<ville.syrjala@linux.intel.com>
>
> I'm seeing underruns with these 64bpp YUV formats on TGL.
>
> The weird details:
> - only happens on pipe B/C/D SDR planes, pipe A SDR planes
>    seem fine, as do all HDR planes
> - somehow CDCLK related, higher CDCLK allows for bigger plane
>    with these formats without underruns. With 300MHz CDCLK I
>    can only go up to 1200 pixels wide or so, with 650MHz even
>    a 3840 pixel wide plane was OK
> - ICL and ADL so far appear unaffected
>
> So not really sure what's the deal with this, but bspec does
> state "64-bit formats supported only on the HDR planes" so
> let's just drop these formats from the SDR planes. We already
> disallow 64bpp RGB formats.
>
> Cc:stable@vger.kernel.org
> Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ----
>   1 file changed, 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index ff9764cac1e7..80e558042d97 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -106,8 +106,6 @@ static const u32 icl_sdr_y_plane_formats[] = {
>   	DRM_FORMAT_Y216,
>   	DRM_FORMAT_XYUV8888,
>   	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
>   };

If we are seeing underrun on TGL platform only then better would be if 
we define separate variable similar to
icl_sdr_y_plane_formats since this variable is used for other platforms 
 >= 11

>   
>   static const u32 icl_sdr_uv_plane_formats[] = {
> @@ -134,8 +132,6 @@ static const u32 icl_sdr_uv_plane_formats[] = {
>   	DRM_FORMAT_Y216,
>   	DRM_FORMAT_XYUV8888,
>   	DRM_FORMAT_XVYU2101010,
> -	DRM_FORMAT_XVYU12_16161616,
> -	DRM_FORMAT_XVYU16161616,
>   };

same as above define separate variable

Regards
Ravi Kumar V

>   
>   static const u32 icl_hdr_plane_formats[] = {

--------------k3dwqRRdaNFusJbTfChtYLfW
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/18/2024 11:06 PM, Ville Syrjala
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20241218173650.19782-2-ville.syrjala@linux.intel.com">
      <pre wrap="" class="moz-quote-pre">From: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>

I'm seeing underruns with these 64bpp YUV formats on TGL.

The weird details:
- only happens on pipe B/C/D SDR planes, pipe A SDR planes
  seem fine, as do all HDR planes
- somehow CDCLK related, higher CDCLK allows for bigger plane
  with these formats without underruns. With 300MHz CDCLK I
  can only go up to 1200 pixels wide or so, with 650MHz even
  a 3840 pixel wide plane was OK
- ICL and ADL so far appear unaffected

So not really sure what's the deal with this, but bspec does
state &quot;64-bit formats supported only on the HDR planes&quot; so
let's just drop these formats from the SDR planes. We already
disallow 64bpp RGB formats.

Cc: <a class="moz-txt-link-abbreviated" href="mailto:stable@vger.kernel.org">stable@vger.kernel.org</a>
Signed-off-by: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ff9764cac1e7..80e558042d97 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -106,8 +106,6 @@ static const u32 icl_sdr_y_plane_formats[] = {
 	DRM_FORMAT_Y216,
 	DRM_FORMAT_XYUV8888,
 	DRM_FORMAT_XVYU2101010,
-	DRM_FORMAT_XVYU12_16161616,
-	DRM_FORMAT_XVYU16161616,
 };</pre>
    </blockquote>
    <br>
    If we are seeing underrun on TGL platform only then better would be
    if we define separate variable similar to <br>
    <span style="white-space: pre-wrap">icl_sdr_y_plane_formats</span>
    since this variable is used for other platforms &gt;= 11<br>
    <br>
    <blockquote type="cite" cite="mid:20241218173650.19782-2-ville.syrjala@linux.intel.com">
      <pre wrap="" class="moz-quote-pre">
 
 static const u32 icl_sdr_uv_plane_formats[] = {
@@ -134,8 +132,6 @@ static const u32 icl_sdr_uv_plane_formats[] = {
 	DRM_FORMAT_Y216,
 	DRM_FORMAT_XYUV8888,
 	DRM_FORMAT_XVYU2101010,
-	DRM_FORMAT_XVYU12_16161616,
-	DRM_FORMAT_XVYU16161616,
 };
</pre>
    </blockquote>
    <br>
    same as above define separate variable<br>
    <br>
    Regards<br>
    Ravi Kumar V<br>
    <br>
    <blockquote type="cite" cite="mid:20241218173650.19782-2-ville.syrjala@linux.intel.com">
      <pre wrap="" class="moz-quote-pre"> 
 static const u32 icl_hdr_plane_formats[] = {
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------k3dwqRRdaNFusJbTfChtYLfW--
