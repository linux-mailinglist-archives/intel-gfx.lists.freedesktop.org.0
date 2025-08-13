Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFCDB250E1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 19:04:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E4110E7A8;
	Wed, 13 Aug 2025 17:04:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="itHD/4EK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 333CA10E79A;
 Wed, 13 Aug 2025 17:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755104668; x=1786640668;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=dIOw2Re2oSXL0WEimBn8jVHpiKfbx+lxeZBGoei0TRA=;
 b=itHD/4EKgWSQ1xxl6Z220T/xZe7jc+LTjQI0AztFqyy8gYihv9lGHfxO
 Flvju7gHqpWTIldL73JppyGiYuR3jMBwtEpe4k2auF0vGQaFqgdXI6J8a
 IpsUYc9rRTiCu3KsMhNMcutd5/siole9EnGe8lcfcvuTMAC3pe/7jvhq5
 vBz18DkqXFgi93O36AcEtOpVJu7jNcDB1b3UmfZ9K5sbwAXLZ/+CUnoo5
 PEX3d3hhi6DpQsSGcLOOAlWPtZKGrqpcQJ5NVlW1sgsVtCLg/5gOxmeEJ
 yaMEkvyUNi8/PVOiFcCXKRlDR6pW+GQr6k0EpCJ4rkTL6Y1dYuqIZy750 g==;
X-CSE-ConnectionGUID: 1mkXrkRvScqM198IplBkWA==
X-CSE-MsgGUID: 4nDbJNlKTUaiQgKhjIJnMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="56621671"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="56621671"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 10:04:28 -0700
X-CSE-ConnectionGUID: JHrnm6C7RDKWv0thwEYc6g==
X-CSE-MsgGUID: el26geGmSEq8sjprHBd1og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="197379176"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 10:04:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 10:04:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 10:04:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.59)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 10:04:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bs6lnx02AcKxE74qruFhwXd56GcY86t9XTX2FHpSuUtAdQAZ/UVP9O3gZp8j3YLJT/qJnj83QU5nVLM1Jcp6zhX11EuQeoi7p5VPc5Qtkj40qacIbUorXlg55NZYKFuKIUo6SV26PkC5As/urWPDGaMD2ErxFnd0og68GqUyJvFrsFtbZ6mTkol3qBgonJN04ACFMI1hihWyCD9hdM7QUqQqjh81t0NvpNb0KSTevqIBgN6TmtrmS0NgOVIvFV68uMcMqesam9v6OjVNfM8X9bMngl0LdDyBBmovBNCjA+KXBxA7uMYVCszKekncpGW4mWW1m81LZw/QmYWYpnji2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cxVT/LxupNt2q7OYoRnmZVpslAWeaP6+MgmdGbVx7G4=;
 b=QECvzOidLMvkHQK24z2sCfoHxxHVP+1263fzwavkfO8ghmHj6Y1v132yaFRR0Va4Med3aU0MR7R1OLeP6curNKPcn+0DTsJPMQvaFcMtF/iK5J5g7XVYSBjLbRvYAINkypja00tmGXTV1JyU7WlzzmOcBGcIP6XSM4I5KMc+ZNQ+DUwpthg0W7ICYfstnE2J6cGlrb4xpB4EckqDGoixaKVAV7GOkG4CtyRRnYrHVZNWxGzk7mv6mMi1IWRnaHx+Nzjo5LqkSNrseFmnqlVc+GopvcYKKEuZWuKEsJcCV16lx44+acH1ZkOMGAxrg1aJ296nIew3kAl2MYU9g6YkUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CYYPR11MB8407.namprd11.prod.outlook.com (2603:10b6:930:c1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.14; Wed, 13 Aug
 2025 17:04:18 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Wed, 13 Aug 2025
 17:04:17 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <175509231662.1765.9232091119900927928@intel.com>
References: <20250808081931.4101388-1-chaitanya.kumar.borah@intel.com>
 <20250808081931.4101388-2-chaitanya.kumar.borah@intel.com>
 <175509231662.1765.9232091119900927928@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/wcl: Add display device info
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 13 Aug 2025 14:04:16 -0300
Message-ID: <175510465621.1765.14166722229666189074@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR2101CA0026.namprd21.prod.outlook.com
 (2603:10b6:302:1::39) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CYYPR11MB8407:EE_
X-MS-Office365-Filtering-Correlation-Id: e73e7785-cb3e-4f36-6c5e-08ddda8b705e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b1ZUTVNlcTZvQmladFBvLzExcEVmOVgyK0lyZ0tReldXTDd3ck5OTnMra2c2?=
 =?utf-8?B?MGNXNzJiN2YxaWhvUkVXSW5vSTVlVzZBZVRPK2lmYTZ2WisrUFEyc2FKNDVi?=
 =?utf-8?B?ditkclk3d2gzTlVMMkRpTXNIQ3JJbkRSY0taaU5vZ3UxYUVCNVpZZU5nUWJK?=
 =?utf-8?B?cEhpS0l0ekEwUHoxald0RG4zZlFjVGVWQ1FPQ3RIWUNvR0JNNnYxV3A4VjhY?=
 =?utf-8?B?YjZFSWxpQldQemVkbnd1VUIzWlRqNlpzRWRQYXlWM24yYWxkU2JsRy9sRytp?=
 =?utf-8?B?Y3FNZTAzdTByQnNteVhxZktZeTRoL29xS1dzbkZ6V2dvb285eVMyTXp3bnBn?=
 =?utf-8?B?b0VNTnZBK3NrRUxjWWJvcURPcmFzbTQyZVFSMlVSR01VaVplZXVUd1AyVTA0?=
 =?utf-8?B?NHptbk9GdHlrY2dQcTFIVVNsSXdGOFQwZUt6QXhYZ1Z3YTV6cTVMdVlDUXhi?=
 =?utf-8?B?VWQvamZTUG5tWFhkei9CYkhDNDBxR0t3czU0bnpveWtVcHVxcUVFcW56NjVa?=
 =?utf-8?B?Z3BlVndRTi9jK2ZaN1h4SVBxd2Z5QjJlOU9SeDM1YytlS1dxR2Z3UjkzUTlK?=
 =?utf-8?B?UG0zSUQwcTd2YXBJSHZLbUJFS1hNa25WTXUyWTYvL3MrOC9rdVc0YU8wT3hR?=
 =?utf-8?B?aFpYL0h4bVhuOU1zZ1hmbWFoN3JpNFB5OTV4bGo1ZnpZWC9EcWJiTEYzNXVC?=
 =?utf-8?B?TW4vRUFwVlFCUXloOUk3VFZjYjVWYUlNR01EWkhSZ1NBOG5qVlJHTnh0NVhR?=
 =?utf-8?B?dTBtS3dlZFhkQWVDQ1BJQTFtcnc4elc2NDltNWorcFIxSFo2UEU1Mklqa1M5?=
 =?utf-8?B?bDJlNzhsV1lvS0VRUmJyQkltSUVxRzRrUUZPbHRyZnQxZlhTUGZaMEl4emxh?=
 =?utf-8?B?dXpEa1dHRGdmdnZmOEJPK3JnLzMrSzhuQTZuSytRU3lXNzg0ODUxNFFhY2pY?=
 =?utf-8?B?SW5MZFdqcGpTSS9sVzZYM0tEdVRoWHdPOWJxZWsvWWFzZ1Q1RktVekZDWlJ3?=
 =?utf-8?B?Y1RVQnQzalZGTzk4TUZOUGhkVU90ZzJzVG1xcFZqM3ZlbHl2VVhTNldrYVM1?=
 =?utf-8?B?UFVGcFZmUDNZS09tYlVvaThMRjVZODZuOVVHMGhxOXdkOWFOZlJPUncxeEps?=
 =?utf-8?B?cWhvRXdZbjIzM0d0UHo5Vnk0cWpnV2FBclVsZGt4eEl1SmpEUC9sRk9yTkZZ?=
 =?utf-8?B?TlY5N2lzSk9UMWJYdEpWalhHL3k2SDZVTDBLN3orSWV2dlBmSkR5bCs0UlNh?=
 =?utf-8?B?eFIra3JmSklWZ014SEJZOHYxeXg2a3czWXFaWFRtM0szTTRpTHk0M1F2c0RS?=
 =?utf-8?B?Y2lVWDZRV0dkdTRrVVJ6Sm1RRWs5OTZGTzZ4VnlIVGZmOHh1TkJ3ZUtOWnp5?=
 =?utf-8?B?MFNwVDlmR3U0TzdkWUlRdXJORTZueG9QaHd1bmZmcjhjRSticVg0dlZmcnJM?=
 =?utf-8?B?ZDdxN0Q1VC9CSXJnTzNKZ0lFZ0w4U3RLMGxzUkpES01xdXlibTFLZ014WUd5?=
 =?utf-8?B?aDE0UTRvbTBQZWJGN2haU2ZHeGdnOHlrYStCRk5aNUI4a0I5RnhUdzk5M1VU?=
 =?utf-8?B?WkZaNEZXTW9kWjAxQUV2SWxJUW5aUVFUejhuYzVVWWEreGliVHBVQ0U1SjdC?=
 =?utf-8?B?VTl4dkNBRHlOcTNVcVdkUVh0MmwwMVRpYnMxNGo1TjNjSXpWMzVZSnJBUFl3?=
 =?utf-8?B?eGFmV2wxNDBkRmNkM2RlRkhGVXRHQi9CcU1PUjFSN3RaRy9VNmNySW8yUmRV?=
 =?utf-8?B?UE9QS24rd0FHaGx1S3FLRXBsM1VudXZkQkw2d1B2THJsTzNsUy9ranlSZEdZ?=
 =?utf-8?B?dm83TEc4eGU3WlBQRDA2SUdEZEY0KytpZE9RbTQ5NHV5enJ4YURJcTVuTHYv?=
 =?utf-8?B?UWoxUGdwYlRVZVB5Z2I3RUplTi94NWV3NDE3aHFXWVdNQ21tZy9MQ21BVUlw?=
 =?utf-8?Q?vv7xXW7esks=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnA0TnlUNW5RTitmeUZXWEJWa3JiTVVhUUVvYlU1ZmkvM3BOR1NUMGlRdUxE?=
 =?utf-8?B?TDZwR2JzVnZyZTU3Q0RHS0NpeEE0MjVBODRIRUN4QytYWlMvNkZLY1JoY3FF?=
 =?utf-8?B?NkIwRWtBd0VxMC9jT0tGTXhyVDVOaUcwQ3FDYkpRRkI4ZWtoMWZvb3dYeGRU?=
 =?utf-8?B?bU51N1A1NW54TUFtN1Iyc1RXeFBwT0ZBcllCM21XNHdmbDlaT0lVaExJTit1?=
 =?utf-8?B?RS8wZ2xPSFBFdjU2NFZkVUh5MGlvLzJIVkJmQW5Bc2d6bjZ6ZCt5R1VpT3I0?=
 =?utf-8?B?MEZhL3U5c1pGTXFJZWx0UmcraC9iblVEUFMvRHpCQktOejFJcHVxeVU5ZUJN?=
 =?utf-8?B?NkVRcmcvNHNCSHNPZ2FlNkFUZUp1RXExR3RvU0dMSXpYaVoybjJid29pbXpI?=
 =?utf-8?B?RC96V0w0UEE3N3dwUmUzMVZPUENPckZJWHRxcDM0N2xWeTM1eEFkeHFDUWdl?=
 =?utf-8?B?Q09KSTJ0NmM5akljcnNXMllJOWNkM1A1WXE0SVB1S29rbWlPaWp5bktZZVdq?=
 =?utf-8?B?US9PekFhSWIzWkc0WUkzZWc3SEVTdkJuWStjNGxWb1A0V081WFpPZHdnMjRU?=
 =?utf-8?B?cDBGTzEzR0U1RzVMcWNrckRrRFBaVWdHSkxJZWdhVlRZeTJaczVQdnZTR0Nz?=
 =?utf-8?B?SkZJSnk2cGl1czRBTWQ4N3FuaU1Na1NabzFybXhFbEpNWGQ3ZXF4TTJCTUdJ?=
 =?utf-8?B?cVpjSktyay9kaW1Wc3NTVDVSVVNKVGR6L0FhcXhRNzltSkRlUm16dG11c0RG?=
 =?utf-8?B?c3lDODJVdStVSVl3NDA4WWxkTnF3MDJKcjRnTDhEQ2FBeGN3dVdPRVFmUFdH?=
 =?utf-8?B?WnNMOFRNRDF5V0pnTG1hOXNEbXVPTTdJOUYwSVAwK1dzMFF3V1c4M0xGZkZw?=
 =?utf-8?B?eGwxaGNhUlV2VS9VLzdhRjRpZEZpWTFPSU9kTG9MWk5oVExiclFiTWhsdlE1?=
 =?utf-8?B?dDd1bCtBOHJ0TzA2Ly9RRzBoM2hBcC8rNi9XK1NTK041b1VhVmNjQUxpTTht?=
 =?utf-8?B?MUJiMDJuRjU5bFlPaVo2OHlJbzROU2ZlSTBHN3RUTTR4azVTbTV6cS9IcmpO?=
 =?utf-8?B?a1huc3hMM24xbWRVQWJ0dmFMT3ZYaUhKdWlMSXVud3UrOGxsN2s0Mlg4Wjk3?=
 =?utf-8?B?WjZUQ3hLQ0xqOHFFYi9XbUVyWVJSTmlwWmdDRzJnV0w4dlo4TGFjdzJlOFFo?=
 =?utf-8?B?Wk1FT0Z5NjRMU2hXN0t2RkU4WG4rSkwrVDNpcGdxVW5IOTdPWXNzdzNmcWI4?=
 =?utf-8?B?V3pWbVQzTGJYR1E1TjE4ZVl5WEtHRGdCQ1F4Y1lrdXNya09oNUl5dnR4T1Az?=
 =?utf-8?B?cVU3YmU3bGY5S3ZtNFlic3dLeW5SV0krckNaSW9ucXkrVHk0SWJOQTZwRDBa?=
 =?utf-8?B?V0w3SndkV3NBWlpZOGc0WjdyR01wRDZkQllSUHUycGt0RlhpdFIrU01yWmt6?=
 =?utf-8?B?VEhBOVY0aVlDd2pRcE05cDN6YnlLekw4cDIxd3hjNU85aUN5dDVjMi9WYTZ4?=
 =?utf-8?B?bFJvYVp5bzJ4RG45TC8rVDlQUVRXQmtuNHF2bmdXcWNwWjhOR09pNTdaQ3h1?=
 =?utf-8?B?Ym9UeW05cFNHZng5Rk1xRWFHbzFqTTRlclA1d0RTaGtqdlErQkl1NithVSsr?=
 =?utf-8?B?Qy9va0lwOGRFWnpqVzBxUU03ZWtVeVhXVnZTWllRNW91YzdEeHFXOFc2NUlr?=
 =?utf-8?B?Z2VKc0FjTW5ReXlIektranM2V09qYkFpUTM1SkhDdWI1WDU5OEl0Z3A0L3I0?=
 =?utf-8?B?emNPb0tLcjJXK0ZOa3VyOE1LV3J5K2V6NmUvenlMUFpidG95T0FjaUFTd0Jn?=
 =?utf-8?B?di9sYlJPZWJwM0t2Uk0ya29KcTFuTDd5YTc5Qm83L2Q4SmVxNk8vSjR3Y2pY?=
 =?utf-8?B?elpYOFcyc3lUaThVNFpWTU54aXlLaHlZckt0bG9RTThia3E0L0RjTDZjUHA2?=
 =?utf-8?B?Rm02di9naVJpK3p6eitvL2VIYmwyR3ZoUlJEZ2g1QmprL2ZKUnBFRVg0NzhM?=
 =?utf-8?B?SEJzc1lic1Rzd3JhU3pseEV4MzRNTDVGYittRUZrM3VDQlF4djJUeXk5aDZx?=
 =?utf-8?B?ZnI5ZVdyS01VamFYb3ZPMlE5SHhtd3k5YlY4ZTY1WnJiT3FHbWdIcTN3K0Q4?=
 =?utf-8?B?aTVHckU4TE9pRjFEN21xVzAxWFZmbUorNzk5dkNwd2gzaXRYais3ajVzS2lV?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e73e7785-cb3e-4f36-6c5e-08ddda8b705e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 17:04:17.8907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iU8/pzJWtQSSIL4Eg/JCAcd0ivbQ4Az9SSrgzYCEqx38FbQjD4qGjnrsaXEuurPwF8Kd7MGCHMNv3JATNFNuSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8407
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

Quoting Gustavo Sousa (2025-08-13 10:38:36-03:00)
>Quoting Chaitanya Kumar Borah (2025-08-08 05:19:31-03:00)
>>From: Imre Deak <imre.deak@intel.com>
>>
>>Add device info for wildcat lake. WCL has 3 pipes and 2 TC ports.
>>
>>Suggested-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>Signed-off-by: Imre Deak <imre.deak@intel.com>
>>Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>
>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>

Pushed this series to drm-intel-next. Thanks for the patches!

--
Gustavo Sousa

>>---
>> .../gpu/drm/i915/display/intel_display_device.c   | 15 ++++++++++++++-
>> 1 file changed, 14 insertions(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/driver=
s/gpu/drm/i915/display/intel_display_device.c
>>index 089cffabbad5..65f0efc35bb7 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>>@@ -1354,6 +1354,19 @@ static const struct intel_display_device_info xe2_=
lpd_display =3D {
>>         .__runtime_defaults.has_dbuf_overlap_detection =3D true,
>> };
>>=20
>>+static const struct intel_display_device_info wcl_display =3D {
>>+        XE_LPDP_FEATURES,
>>+
>>+        .__runtime_defaults.cpu_transcoder_mask =3D
>>+                BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C=
),
>>+        .__runtime_defaults.pipe_mask =3D
>>+                BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>>+        .__runtime_defaults.fbc_mask =3D
>>+                BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) | BIT(INTEL_FBC_C),
>>+        .__runtime_defaults.port_mask =3D
>>+                BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_TC1) | BIT(PORT_TC2=
),
>>+};
>>+
>> static const struct intel_display_device_info xe2_hpd_display =3D {
>>         XE_LPDP_FEATURES,
>>         .__runtime_defaults.port_mask =3D BIT(PORT_A) |
>>@@ -1480,7 +1493,7 @@ static const struct {
>>         { 14,  1, &xe2_hpd_display },
>>         { 20,  0, &xe2_lpd_display },
>>         { 30,  0, &xe2_lpd_display },
>>-        { 30,  2, &xe2_lpd_display },
>>+        { 30,  2, &wcl_display },
>> };
>>=20
>> static const struct intel_display_device_info *
>>--=20
>>2.25.1
>>
