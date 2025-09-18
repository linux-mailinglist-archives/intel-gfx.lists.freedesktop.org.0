Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A598BB86585
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 20:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A7910E8DA;
	Thu, 18 Sep 2025 18:00:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kd5HS6DE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F041A10E8DA;
 Thu, 18 Sep 2025 18:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758218437; x=1789754437;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RAtCTJ4BAD8LGnobWTcp7n74//Jhj69Dw7Dxc3G0PuU=;
 b=Kd5HS6DE8Q4tCx8PsGKOpKyfTywPfAmcT1Q//l9AN175zfBdQdsd1oTu
 mDp/SvsBCDsZYYNk4vrC6Zc21TNrG95d4hnxN1t9kpKxlPXryvPG2ppWe
 PV2aWSjDjGLN1V7YLjUBLGeRhE58F9V8Kb6R7rf64MhRt2yvVc5c6A/cf
 CorMswlCyNOYzl6NZFZZ3k4Lbcue6a7Cv/wz5IEdZqz6em2eO4g2h0o9V
 uKK4ZGMFbK3pdvtvSbJbBuqzUHt84oAsPzN2XpUGCpL0MHNoLxQEKU25z
 ZINCK1z/IhOLOU69qkUXD/7GLNmmwwfWpP7c5us5GYB1cbscEfhySV+WD A==;
X-CSE-ConnectionGUID: dWPxHc5BSUi2efbQ1MW+fg==
X-CSE-MsgGUID: 5j5IsS+2SzKnriZpyoPXzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="78005491"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="78005491"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 11:00:36 -0700
X-CSE-ConnectionGUID: u7eKY6dOQUeZGyeKlwv19g==
X-CSE-MsgGUID: rRFxR9ALQeOWymdnI8OfXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="206397457"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 11:00:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 11:00:34 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 11:00:34 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.61) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 11:00:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=myR5rY7KlbQMRm8yt4Coh4C0e480gir6qGKv1hr8nmQLjMXMj1BnP3xn/PthLaaovpNvcKfvbX9VbYvNetwlp/ciwNlut7ADIGPLkrTByV0WTMQRUh0BTPbpoqZzJu5iV83ACxYSv1dazn3sW29uFgww3kFIwnYgC7uMIR/phzCnydQ/JwJUTv/Iz1xBQzwSaD7syCSoeVMe17wqbV70aUh9Cx7yyOEdVw+otiSYIKtedGSqHhEVoygstYPXKZnPvBXRe4jM9tUJ1onLcLxQLwIFuBQPV/rELRjjeChMin9iVmjs9mJCiMBYarShRkbZfmNp5Qw5/Mun36m06knqpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YeR2gmBgqySVkuPKRbxhAygLXzMrtmin2pdjG6fuGzs=;
 b=N7V8h25vaODuJpL+2LTY6cz/DLaGPbB4H/B/hBO5zv22CT4jacjQJi4+binz7Q1oJ23qE2JYMnPQ7D56ex2/2aIj2O32Gk8+mw8j74VSMkI+gjU2Zn/vWIIILGDisYdxJEqNVALxuBwNZVuM+fDjrOj5piKLD253uh9cDDStCZCPL45iFO4bKRp5Va7zyuDwUBS8t4yhsfClfuyN6Iqf9X2PD2ioiG4H6NuZRtylFvKGMsLUiXpVFl24cOD6nl78Hgp1uI5A+JydxKX24XHbxOL3ikQs4SJ3As+dvIvir87QF3YDu9m+tv1n8t1AD3rqCgxE7eAHPLxiVB+mNl9SUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPF1C4B3BAB7.namprd11.prod.outlook.com (2603:10b6:f:fc02::f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 18:00:32 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Thu, 18 Sep 2025
 18:00:32 +0000
Message-ID: <a9566f45-e04d-4d2a-9348-db856ce5e729@intel.com>
Date: Thu, 18 Sep 2025 23:30:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/vrr: Store guardband in crtc state even for
 icl/tgl
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250917203446.14374-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0033.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPF1C4B3BAB7:EE_
X-MS-Office365-Filtering-Correlation-Id: b3116af2-ea66-4a26-852e-08ddf6dd42c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VWtyL09Idy9tbWV3QVR6dS9YbmFMamtkOXVBV0ZBTCsvdWk3SHArSlVBWm1y?=
 =?utf-8?B?TTNjYkNFY29Kdll6VjZjS2lLWW96cHFyTklBcFFuZ1ROdUVoQTg0WDhwaXNk?=
 =?utf-8?B?RGVycWFzc3Q4NHU2YWFhTDdXUXF4RUhWS2N1YkpEcUVrMW9vcVR4SlhHTU9E?=
 =?utf-8?B?bEhCNkVSaDRmK2p4MENzMk5ub3kyQVRuS2pNUk95cW1EblZKS0lmMHRxa2dQ?=
 =?utf-8?B?ZkRodnRRakdHcFRad0UwS2tkMG44K2F6NEN4V0hDQ3F4SmJpZXVEVVZJbnpT?=
 =?utf-8?B?SlBNdThPV01QNEk3L2hVOHpNQUxYcm96Zzg0NERxY2Nmc29BMFRIbk9GRzFt?=
 =?utf-8?B?YnF1UG1VNkhYZnpWK2hWaGp3NDREV09PQkhYZEZoek5tcGlxRDVHUVo5Zm5R?=
 =?utf-8?B?TlBZeFdtaDRENDhGZVEwTlJmR2RDY29HeThMUkFCbkdNMm51YUF4N2VONXYz?=
 =?utf-8?B?NzczN3FycDZkS0RVK0N4WDkyVjlWblB1TUtnblRUbm50Y2dYYk1GOVo0M0ZM?=
 =?utf-8?B?YVo4UlRrci9ZMEpjR3NPUWxyZG91ZzZpbjZWUHlmYmM2ZUJRU3d3M3VwbHIw?=
 =?utf-8?B?WFV6UXp1eGZBdzBXeWdpQXJrSGFxN3oyYkxJd2tFZTZ2aENqVHh6anpKV3BV?=
 =?utf-8?B?bVRTdVMvTzBUVUM5RjhyZFRzc2N1TDRySHEyU0N2YlVJS2ExeG9nb0JBTzNk?=
 =?utf-8?B?VmhPVUx0d1hERlNkODhaNCtUYUJXRFFndkpFcXlmSkw3Mm5RMVdTOFI5U3ps?=
 =?utf-8?B?MDEwVFdLVStneGh1UllNU25sa2w2MklLR0ZHUE5KNUhMRFlxZ0xMdVNGOUFh?=
 =?utf-8?B?UDVoZWtvY2dEdkkvNmNaMEkzbU9uWmF6ZVZHUi93Ky9Lakx4RnBtODN5TFpU?=
 =?utf-8?B?RFpNeVVUd3VwRU5FQzlsc2JpMWl0ajlKUHhQU2dNMDBBQUlaRmdDYXJsOGE0?=
 =?utf-8?B?OURkU0JOSXJJWXdLbU5Xa0VqVmF2eEZ6bmFwT3BzazdkTTJxcVJ2akxqZUcr?=
 =?utf-8?B?S2IyaGFkdDBNTkZGcWRYSEt6VUFDQ0FmVWxuRFJKd1g3bE0xREFweXVNaWpY?=
 =?utf-8?B?eGMyVHoxRnkyUFVBeVlmZGcrV0Y5b1c5bkRwWEVmSlNYVXZ6QXZ5RElBMGVq?=
 =?utf-8?B?dXFKeWl5cWU4RkN5L29oMmVvRWptZHhHMmNDS0ZadjM4VXR0WWpRbTRwVWdp?=
 =?utf-8?B?UHRoT2VsYy96NnRJZXR3bkoxdlQ3Tk4yanVrUnBlNWIwbDRKK1hSQ2gyYmE5?=
 =?utf-8?B?Qi83Z0lwVEdROTA0SGZwVC9XNnIzOHhpNjluRC9lNDdiYk50YlcxbVIxN0pK?=
 =?utf-8?B?dGdiZ0VycXNUZXpyc3ZCQmo1UmNEckF2eHJxTzlCV3hiQ21mSnZSVzBDM3Vl?=
 =?utf-8?B?UnJpYjFUczNuRWFGdFhVWjcwaU5KbVpoVWpPNE5wVkVqaUNTL2lZNU5vNzJp?=
 =?utf-8?B?STgwdE5ydE5uRmNuZzlFSnBONmpKOGRoNFNuKythWDMyN0xtQ1QycDVyM0Qv?=
 =?utf-8?B?b3pBdmpZQ2pVZmUxcGxaNFoxenZINkZwKzVWLzR6SXk1SmJhM1UxUU1IZzkv?=
 =?utf-8?B?aFpyajVmdmppZ1FzbzZUU2dSZmJWNmc3TzlOOGFYbGFTSXZ0TmxBZWJWNkpo?=
 =?utf-8?B?c0FoUHhPLzN2Nm0yV2U4K2I0SWFGUjJvUXBJa0g1a2dtODcwU0VQQkY4ak5n?=
 =?utf-8?B?dkg1d1JrU3pJc3ljbkJHUEZTbE94dU5iMVhCMDFka1Exazd1ODNJekNjYzBO?=
 =?utf-8?B?TnhKODlyaUFqeEhsbnZUVjhsamJEckJIb3lMSkphZlpTZG5aY3drakhiK2xH?=
 =?utf-8?B?N0dMRVdLNlh6NHhIbGMvUTRRTzFrNWhFOUswVXpWdGZJdjNaWEg5OUpScjMv?=
 =?utf-8?B?ZDNOMVZFaGx6MVp5WklwYUkvRytqOGtZaUxxZjR4dzlybmk3LzRkN05QTUdC?=
 =?utf-8?Q?E/mIfw/M3qs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VStJN2NzcURjWGZZRFVPdHNxclJRd0oxdWU0WFEvRnUyYTNLb2poMDg4T3R6?=
 =?utf-8?B?NjNKejJ6c2cxd0wyMHpwditNOXNCYUYyZ0lJemtiQkU1LzNnVXNuaVFxaTdy?=
 =?utf-8?B?NURZZm1VS2VudTNUbi9KQWNHT1lYRWlKa3JRckh0aTRSRGdlZCtjQml3Mmpk?=
 =?utf-8?B?dnZuRWYyaWdvaFJ1azh5V0thcStTMlFhNk9xMnpLbmNsa0Vyd2FLU1BrTml1?=
 =?utf-8?B?eHI4VEc2cGN0TmpqTXRCN1JDTkpTcHdoZlA2OFlUU0o2WmRuV1BoVUorRHp3?=
 =?utf-8?B?WUFaU0JpTGZQRTNsMGx0dzBpYk9Fb0x6QU1tczByM1AyNUMvb1phS3pFYkVv?=
 =?utf-8?B?UXQ1V3Z6aHJ4Z2xKUGZBZitPY0pybUtCMTc5RTdPb3pwUWtuWS9MclJYUXQ3?=
 =?utf-8?B?dzNObjJrMjUrZGRwK0pqNnlLS09vWWlQb1cvb1FMZjFtbzY0dk04aElPNkN0?=
 =?utf-8?B?RGZKbnRVZnB1aUpRV05ja0p2ZG0vcFpSeHJNT0J6cnY0ZHNQL0R5R0dYRzNt?=
 =?utf-8?B?cWs5Ym9UWWZ5eWIyNzQzTS9CeTRXMStJejJ0VHdaOGtmTk1PK29wMGVwc3Ji?=
 =?utf-8?B?WWY1L21Pb1ZsVzVSeEErYWJVVnQ2dXMxdmhyTTZWTkVNaWFJMW1qUjZCZm1v?=
 =?utf-8?B?alBUSGJtVWlTUlZSTVFnZFZ1NXVVNmdOS29sWk9XMHdDT3c3WVB3U1dzVStI?=
 =?utf-8?B?NFNQVlYvZlJzS3BJMHJGZXpLVXMyQWVXU3Q2ZXBweDZ5TWgrTXRHdjJuVU1G?=
 =?utf-8?B?YUpScFM3dTRud2UwdFJ0MDhuTUVlemoySlkzSkhUb3JEdmtRSDFyd3pCUERp?=
 =?utf-8?B?VEZsODV3TkRwNGU4SmJtZW1HdUJRNGRQRUJaamVJbFIyRTJ1Tk9ZYjBvTW1x?=
 =?utf-8?B?OGxsZ2ZEWTVJNTdlc1oreFQyV1NlejcrVm1JREtERmozVWFKVTBmYmxIczE4?=
 =?utf-8?B?ZlV3T2xTYUtMUWRHM2pWeVpRSitieU9OQlRtcmFxV0VRZTQraTVpSjlEdkhX?=
 =?utf-8?B?VVJQUmo0b2hOanEwOXlBS05RTVdNei92YjFLZjI2Qko3UkIybFlzYVJvU3N2?=
 =?utf-8?B?SmNxejRzZnlIYk5Ib0J5aWo4VVRPZ1dVMG1jZUdVWDhNYllMSCtpV2IxVDVq?=
 =?utf-8?B?ckNRZFErVmhkR1dHcWE4TzhVQ1dGQ1dVZWdzbFY1NFJLWUx5UTl0T2RiaHpu?=
 =?utf-8?B?NFZFaHVnQkZsT1NjcHFmUjJuRTZlNDBFamJiQkg3Vm1DUUFEUVkxcXJjNStG?=
 =?utf-8?B?cDdBZkZSUllHNXVZWC8vYTM5d3NOekNvUUJCNU1Hekk2L01nWFc3TFdjSEFo?=
 =?utf-8?B?c2ZtcWF6b2xmb3J4MXJBMElneGtNU09BL3Evc0FkcU1xUDZISjlpb0JoSVBt?=
 =?utf-8?B?cEEyUzBwWkIycy8yVG8zSk5CbGRaaFpkSEVTcjMrZ2V2TGF2Mm1wWnY3bFRk?=
 =?utf-8?B?enBjVlY5WlhzMmNaeXZpazlFVzFGTjF6V2ZSVXFzVjZySTZzNmtsUjJRNjZt?=
 =?utf-8?B?c2hDYTVwNnRSUHFnWEF4aWRucGlSeDFIeFBCZ3pyMWxzTGV6SStzZ0ttRGgz?=
 =?utf-8?B?d28wVlV6VkdmcjBmaC9uVjZzVWpzdDlxanpRZE55UFBFOWZDQVovbjR1WGtz?=
 =?utf-8?B?cUNUeE9ManBpRnNFbXo5bU1UQ1hJTkw1YnV2RUVCRXVnVVRlL08xZGRNbGg4?=
 =?utf-8?B?R0tIVDRwR0kzU0ZqS050Wm9SOTZUTFVVS0kvcGhnUlByT3RCWnpvNUlpRzl0?=
 =?utf-8?B?aDlxVWU1TTh5b3B3R3BoN0EvMlJWZmZ4Vk81Um55KzNjd21rdUVDbVhHMk9Z?=
 =?utf-8?B?MDJkcEo2VXVBVzEyNDU2WjVVMmFZUE5rZlNmTHR3ZXVtSXIzVTI2MkFlUnh5?=
 =?utf-8?B?R2JtUHQ3aHZwVkJubjFaS1ZZcjc3cVFPT2d1NXd5NkZKVDgvckh1WVpjcWt3?=
 =?utf-8?B?QzRoejZBdTU4SFJJSkJlUGhhc05wSWIybzRhSDZjZlJiQkFUUmJ3d1A0Ymg3?=
 =?utf-8?B?d3M1N05RRUVhMjYyNHhRaENlTXVQR1lVdWpUUDVseGdtWmNNZ3pWTDZkN0Nk?=
 =?utf-8?B?OU9wY294RzJENXVqeTRkaEw3T0lpOC84dzRLcjg2Lzd2STBLdWdnRHI4YUNM?=
 =?utf-8?B?QmRMc1Qzd3ZXMUNJTEZvWm55OGMxRzk3U1lRbHRJSjN0UEV6OUxnM3dzUjQy?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3116af2-ea66-4a26-852e-08ddf6dd42c2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 18:00:32.7902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /mD3toxHHZIEj05AZg6x7ysoVvuXMFe6kKEB98VX2jJSkVn2lAuf8fRITtfkXl2wpnG7fvSe5qpo6LyfSbSMfH8bqfiyrOuiluVCS7J6OsU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF1C4B3BAB7
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


On 9/18/2025 2:04 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> While ICL/TGL VRR hardware doesn't have a register for the guardband
> value, our lives will be simpler if we pretend that it does. Start
> by computing the guardband the same as on ADL+ and storing it in
> the state, and only then we convert it into the corresponding
> pipeline_full value that the hardware can consume. During readout we
> do the opposite.
>
> I was debating whether to completely remove pipeline_full from the
> crtc state, but decided to keep it for now. Mainly because we check
> it in vrr_params_changed() and simply checking the guardband instead
> isn't 100% equivalent; Theoretically, framestart_delay may have
> changed in the opposite direction to pipeline_full, keeping the
> derived guardband value unchaged. One solution would be to also check
> framestart_delay, but that feels a bit leaky abstraction wise.
>
> Also note that we don't currently handle the maximum limit of 255
> scanlines for the pipeline_full in a very nice way. The actual
> position of the delayed vblank will move because of that clamping,
> and so some of our code may get confused. But fixing this shall
> wait a for now.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 36 +++++++++++---------
>   2 files changed, 21 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c7d85fd38890..f4124c79bc83 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3891,6 +3891,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>   	intel_joiner_get_config(pipe_config);
>   	intel_dsc_get_config(pipe_config);
>   
> +	/* intel_vrr_get_config() depends on .framestart_delay */
>   	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
>   		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5fee85b0bc99..9cdcc2558ead 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -151,13 +151,7 @@ static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *c
>    */
>   static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_display *display = to_intel_display(crtc_state);
> -
> -	if (DISPLAY_VER(display) >= 13)
> -		return crtc_state->vrr.guardband;
> -	else
> -		return intel_vrr_pipeline_full_to_guardband(crtc_state,
> -							    crtc_state->vrr.pipeline_full);
> +	return crtc_state->vrr.guardband;
>   }
>   
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> @@ -431,18 +425,22 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -	int guardband;
>   
>   	if (!intel_vrr_possible(crtc_state))
>   		return;
>   
> -	guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
> +	crtc_state->vrr.guardband =
> +		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
> +
> +	if (DISPLAY_VER(display) < 13) {
> +		/* FIXME handle the limit in a proper way */
> +		crtc_state->vrr.guardband =
> +			min(crtc_state->vrr.guardband,
> +			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
>   
> -	if (DISPLAY_VER(display) >= 13) {
> -		crtc_state->vrr.guardband = guardband;
> -	} else {
>   		crtc_state->vrr.pipeline_full =
> -			min(255, intel_vrr_guardband_to_pipeline_full(crtc_state, guardband));
> +			intel_vrr_guardband_to_pipeline_full(crtc_state,
> +							     crtc_state->vrr.guardband);
>   
>   		/*
>   		 * vmin/vmax/flipline also need to be adjusted by
> @@ -734,14 +732,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   					     TRANS_CMRR_M_HI(display, cpu_transcoder));
>   	}
>   
> -	if (DISPLAY_VER(display) >= 13)
> +	if (DISPLAY_VER(display) >= 13) {
>   		crtc_state->vrr.guardband =
>   			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
> -	else
> -		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
> +	} else {
> +		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE) {
>   			crtc_state->vrr.pipeline_full =
>   				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
>   
> +			crtc_state->vrr.guardband =
> +				intel_vrr_pipeline_full_to_guardband(crtc_state,
> +								     crtc_state->vrr.pipeline_full);
> +		}
> +	}
> +
>   	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
>   		crtc_state->vrr.flipline = intel_de_read(display,
>   							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
