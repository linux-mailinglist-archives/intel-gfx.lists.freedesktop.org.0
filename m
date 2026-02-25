Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAiBJO54nmkOVgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 05:22:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 018F7191904
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 05:22:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD10E10E13B;
	Wed, 25 Feb 2026 04:22:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WB4SGCUL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA7510E13B;
 Wed, 25 Feb 2026 04:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771993323; x=1803529323;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=n5rRGectXSnvGAGD9k9gmJSprSxcfeh3givI6Nvs5DM=;
 b=WB4SGCUL2xPUwrtQccdyKQ7gg43qXRKdUZVHSOfmirgKrVXVD9iHBcoJ
 wW5+HXRx++OwLCFXgDhW4UJI+gP+cGUu8GhHE6wmOq51tldmWLqRjYa6a
 hP+yICX5YnGnTKuNoDNCsXHJIx7iolE1cvDPsbuySmk3ARSgAO/4q03fq
 f9gnSLJ5A5uDSzoehaL6lcaKCIMzGUNYw/JKsNlc8YwHgYnUx/D6oLHFy
 RRMYqsDP09XedIeYQ9NUxRtcONXsAFw18HmUCxX5KtIBH1jKyaYvb8fCm
 bQ1lUAUlwwvka+6sv4qkKdutZGLK4GypBPjWYJWO+sFsI+e3v3S5Dp608 A==;
X-CSE-ConnectionGUID: 7zfz+IeoQOaAL47aHLXrZA==
X-CSE-MsgGUID: UXkGpsfBSwmXTN21M7A/Xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="73068912"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="73068912"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 20:22:03 -0800
X-CSE-ConnectionGUID: G+uo5JUOStGhYPCQ+fBeKw==
X-CSE-MsgGUID: VDBxZHpaQlSoi3J9MV6SVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="219545357"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 20:22:02 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 20:22:01 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 20:22:01 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.47)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 20:22:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KH/gSrrU86pA8qLKaP9epN9j9soQl4cRLWrHyGlMhJ50q5KyCgPiimlVh2uMY1IR9JUKQPe5x2xCLufrFv9kkWv3JNln0QE+nvkhDBPwY182N+C2xdUw7qStv8d7uGIYzGprU/RgEFg5JoJ05t9Fg1jBVphRFBOSK1L7Xi10/0GzWjV1fMcPabIskXJNmFZqSfrBtbbfIN7rsazcwcHqO2sJeq3t0mBE2h32d1+D56yTqkRKAXp/05hGNMZMHzTce4AxAu9/TXx4GoF338YB627x8MUAH1IwinQZTug9BBaJQ1XsLki3CdE+/Jn+Fklg0mh4C8LzNEDfZzEv0aus+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B7j+oT7zVylF29njT1aZVQAtJnwnjMTUc9WFD4282Io=;
 b=MS4bOR9q2wojq74WsF9T5upH1vpNaGoUu3ZPSNV3aTjEMX0M41ibFygRFOIBf0trp3ULzZB0Un7Z6B1McRn0qNqSsBKdJXzPDJt1HNXVNid1SSqGAJ1RkZLZnM3iYjJeuG4pipcl7aGNa/GB3J1d2Ux2TRWpZ/sNX7ruqnFWwMqa0SbsusFteu0f51wXEo5NqT8UpAcsYDO9rErXfXuZbXDA2GrUlKLoYxAd87PkKIgYFT60ymcFMGr+rDvH1SKAksHA3fw6iu2yBy9HJ57IzlIUw8UAE6fWajdD/HiaA8pMtYOGIPeL3GHWfMTaT8ZtiLyYHLkIxWyg2fiP1KySbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7055.namprd11.prod.outlook.com (2603:10b6:303:22b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 04:21:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 04:21:59 +0000
Message-ID: <af2b2ba4-05b9-4cb6-a01e-25c2132152fe@intel.com>
Date: Wed, 25 Feb 2026 09:51:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/psr: Add DSC_SU_PARAMETER_SET_0 registers
 for PSR configuration
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
 <20260219130743.1232188-3-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260219130743.1232188-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0148.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7055:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ef60aea-3a84-439a-a8db-08de74256ad6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MmV5M0VxdUdpNjlwZVgvSFBhemZSOHJuL0h4TDhESDdpTWN5aWtXOE5naFA1?=
 =?utf-8?B?cWh0Myt3MitabHdSK3FHdVg3c3hrTnRVVEJCZ3JhVGZLcHlVTUduYlZaTExk?=
 =?utf-8?B?N3ZVZ2RKNzVpbWNWbzZHQ0p6bjlka0ZpdW9tc0ZNa1lTNVI4STYxdU5DczVx?=
 =?utf-8?B?QkR0dGhzTS9QQkdJT3VCYzZkck5HcVhYZ2JyV2dQZVZiY2xieXVOV0wvc3N0?=
 =?utf-8?B?OEFGcnk4dnRtUTIzQ0lqYkZTMWl3cUh4QnJ6S3l0aUlhOTR0L0JLUDQ5bWp3?=
 =?utf-8?B?bzN2YlR3UUNjMzdYMFRYY3RObTZOc1VrNEpacVZoRUlSbU9LbEFPUTBzSXg3?=
 =?utf-8?B?cEFKQnYwUFJ4bVcvR3MvSnA4OHJaZG5NUWZtN1JTVGhXZ0x6ZEFUeXpscS9T?=
 =?utf-8?B?SWhEc21RdDFGc0M3MlFVcDZlTjNja1JNYysrVEY0Vi96RnpMcU04MUk2SDZi?=
 =?utf-8?B?T1FZdlg0T3V6eVRTYjkvZ1RhaW40clJ6QmtJRHdvU01QUVNIaUFQbWJrVmtM?=
 =?utf-8?B?Y2YwRVVpaVFzcndxTWlkTGVTK1FNdUVVWGtpdnZKV3R3alVqN3hWblVRV1Rt?=
 =?utf-8?B?SUtrM3NtN25raFRQekZZTk1xU291eTlIQWZhbiswY0RmVGN6Y3dLei9OaDFL?=
 =?utf-8?B?Q3JzWmZ6VmpSQ052TXQ5NnlSZmFBZmNWQUZ6OENVK1ZPeVFnMlhuU1RQV3Bw?=
 =?utf-8?B?VVpBazA0eTRKODdtWXpSbjEvZ3lZNjhBZ0pieGp6ZGFoKzNyYWdEaUcxc3BS?=
 =?utf-8?B?TEE3d2FqWWFJTm5nOGFZZEhoNEFDM1I2ak1QS3kvSGlHTmk0ZFIrVVhNMWdS?=
 =?utf-8?B?M2duV3RNODB4aWw2YlJZUTdyR05pOXBFOVFiQXZHaHR5SHM2R1JnSFdOcEJo?=
 =?utf-8?B?VTJST0QvTkpVMmcvZWJNK2JOUUZ4YzRZY2R5U3BIK2o4UEdSYzVidEdUb2V3?=
 =?utf-8?B?bkdEVnRJa05QanIyUy9sOUlHRXZGRkIybDd6b292a3VYUk41ei9vZWErM2I0?=
 =?utf-8?B?NXhGWjRmMnQ1Wm0xOUhiMWVYenN2aDFPSEhPS1QvajYxT2lzd0thcUE2VTRm?=
 =?utf-8?B?ZXJPeFEydElYWnN5SHZxYmw2VG10NDBjbGxhRldhWHdLdHhHc2pUMWtldjhG?=
 =?utf-8?B?emR0dldrZkpEN3NQbjFWN0JSMEVjYlBrdDd1MjVTdnNQN0Fla1dqZCs4TytZ?=
 =?utf-8?B?TlZmb1NuanRZS1hXdXJReDd6V2svU242Tm04cHVpNW5UNGs3MC8zeUsxdTdN?=
 =?utf-8?B?NUNFQ2tFTkhmYUt4WW9NUUxoRjgwSUNWQmVtMjdUOTBZYUFtL2hRTzVrM3ZH?=
 =?utf-8?B?eGtZRmFSNFRxS0Y5QURHMjMxcDkzOHpHS0krNkJwbWY4QUp1eUhnb1RPYnps?=
 =?utf-8?B?NEZoQ0tNSE45c1VYN3k3b0hXNFhwYXhOcFFWelRkbmdudldweHE1RVJ1MzBC?=
 =?utf-8?B?ZE9DbmVVMFdFdTR3S2d3eTBIejR6VnVYWkVpUGdabm8rc0YzSUUrYWlhajZQ?=
 =?utf-8?B?VngyMU0zSm9TSjU3WUkyL2VXNzBvTDQ3K3FKZVdNK0I3QUQ4MkZBanF3Qm9E?=
 =?utf-8?B?cjVDREQ5dlB6MDI5MkVIS0tPcWJSN29DYkNGaGFUa3lrMCtlRjFMa2c3elNi?=
 =?utf-8?B?dS8vUTJJaGZaZk1rWUNmUzZpSFFwMnlGVkRSckg3Y29wSlNSNUQ3L25sdnkv?=
 =?utf-8?B?SER6bjBzZzlpOTdBY0QrU2pxaVRUWWxIZ0puZm55cHBKWHZaNTdoYzVhUkdJ?=
 =?utf-8?B?aHNkWkNrK1VRd2Qwcm1KdEsyblUwL0NBRU9OczNpL1N0ZmhvMFRSMXRJeEJi?=
 =?utf-8?B?ZGNqMkNCcUp2a0JiTUtMaWRPL1ljbzFvWWRzcS9qUG13eXk2STEwQ3gvTkhx?=
 =?utf-8?B?TERHRmpGbGxxQXhMc2hqdUY0VjFsRUQ3cHk3ZGxOVm40MTJKQ0JhblRBZS9H?=
 =?utf-8?B?WEY4Yis0cTl0aThJb3BsNUpObUx6RHBZZmt5UWR6MUdIWXNmdWtmbWNudEVE?=
 =?utf-8?B?S2pNWVg0dXhDY3JJRlFoc0pvQWZTWnh0cCtMQi9LSlJBUHQwTE8zTnlPSXJT?=
 =?utf-8?B?bEQ1Q0c4SURLb0J0cEx1Z2dIK29kU3RBVllsSGdFVVQ0TDNqNGR1RFg0d0pm?=
 =?utf-8?Q?BlQo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REU1Y0dGeTR6UlkrTzU1S0NNV1MzTjFONitBQURVbXZqaEJCNHUveFdQbVh4?=
 =?utf-8?B?K3B4bDVWSWtvVlY4am82MGEydXp0bjA3NkYvY1dwd3psOFZ4ZHU1VVJUd1hK?=
 =?utf-8?B?TkxsaUYrSmNIeU9xOThCWXh6bUMzRWRPMm1TeWs5M2F6eGlhTU1HR2R4MzZs?=
 =?utf-8?B?SVJnSjUvQU50SXRCcm90UDNCSmlSaTRsZS9Ma0ZjU0ZaRG1KeERwcnhVNTlz?=
 =?utf-8?B?VVREaHdVTzJtbjNJTVdnbjlPSWtEelBRZFNaY2k1a1Z1M2JpVndXVVVRR0FH?=
 =?utf-8?B?b082dTFoakFRb2hQaWJqOUtzd2crODdzSjY2VXgyazhUZDdmT0QrZytwWkdZ?=
 =?utf-8?B?aEt2MTRiMk1UL0d5TUVnWTJ2VzUwQUpSeG5CTDJaUy9Od3A3MDBxb0dvekpZ?=
 =?utf-8?B?dGpUZlhPcFA3TTN2VUdxUFY2bFU0SVRKeUM5cGo1aUVrZVlrcEpLRndRc2Q4?=
 =?utf-8?B?WFh0QnZ5ejk4Y0M5UnBSdGs5RHJIMjR1dmFMR1o2MUlWdGNsVXQ2T29iUVpx?=
 =?utf-8?B?R1R2OVE3YUJVS0RZL21BOG5DVjE4a09JR0doZ245VDAzR3hkUnlENVJSQm1i?=
 =?utf-8?B?ckdwZXhJNEN6cTlPWnV1cXZEendZOE9kaG9sK2c5b2RJTW5zNUorK0dZdjc0?=
 =?utf-8?B?NUR1emRoZDVVamJFQVgzckZDRHdWUlJQMEhFOHNwSS9KRWxRWEx0aXAxT1Rx?=
 =?utf-8?B?MGpidjNxVHdUakNYV2U5Y09IV1JzN053U2JTcVB1VEhUMXc5KzlUUldTODFZ?=
 =?utf-8?B?SitRNmt4T0JteVpRS0Myajl2TFUvcDZIa1NEWFVaUnk3VWtXWmxiQnZ3QWRP?=
 =?utf-8?B?dXAxYlVDLzhwUVFmOUxxMGJGalNZZG5qN1dyOUZyZkFVWXg1Z3pWLzJUVTU2?=
 =?utf-8?B?Q3luejgvRGp0T0IvUjltZHBQYktsdjZJYkI2RjMrUUV0RkRZUzRrcDZ3V2do?=
 =?utf-8?B?QVp2MHBUazU4SVZTdmYrUzY3L043UXZhV3RBaHBHTDRNazYzN2dPSWFCRERk?=
 =?utf-8?B?UkZUK3NwMDcvNTlaem43MDBQakxkM3YreldIbEJEZEVURzlySG9HVjdobHdJ?=
 =?utf-8?B?WlB2VXd0WWdTZktNS1lzNDcyQ0c0enJnc2pxNEVUN3FHV0NZYWJVSUlBVG5l?=
 =?utf-8?B?RFI2SFc1aUNCSEorMEhZZ3RxVFk1S21DdkhSbDBDbHBxL1BLWEZ4OWVuc2Fz?=
 =?utf-8?B?bkNkVzN5cVVheFlYekZSU1hRVHZKWUtCVkdGSlNWL0U0QkFNY1pMNTV4VzBO?=
 =?utf-8?B?Y3dVcU14enBMT3VPeGQyZlVQWVdaVjRZS1Q4b1J2c2wyaFQyTUhETGtBRmlW?=
 =?utf-8?B?NFJKSStjUmZFSkhEU3hsL095UVhWSTErR0svWVFjYmNQb2ozSGNmSStDWGhO?=
 =?utf-8?B?eTI4OVJicTBoN0Rpamh6cDZYOUVQQ3VWRHpXWjhKcHlLR0lyS1JVSXEwK3JO?=
 =?utf-8?B?VjdONE01dGhRRUd4UGtzdmh5N1dUV1pHWk9BejRrc2VpRE5oeEx5eHZkYkdo?=
 =?utf-8?B?MlZKSFVpZW93RGZLRUw0S2RmM1YrR25oY1B5QjhhdGRDMEQvOURteWFaR2R2?=
 =?utf-8?B?QXd3Z0ppNmNwT1BDN0M4RFBqdzNLV2FCakc0SmhTV085N0ZVZXJKMnRXdlNy?=
 =?utf-8?B?VkJmak1EWmNwL3ViQTVyMGZqSEZINVZudnM5UFR3ZWhrK2RLNkRJMEVnTk5I?=
 =?utf-8?B?VG96T1laUVNZbmNrN25iQ281V1NQbkJTWDYrcEdtR2tOQnNUZlV4bkY2dkZT?=
 =?utf-8?B?dHdjQy9WVE84N1Y5NU10cFcwdkpHM3l1TFN3Z1JQMnJiVWd5Uk9uL0tPZlRi?=
 =?utf-8?B?TGNFVEo5c1Voc0x6dks5cGVRVDJDMTVVMHBVZkhtRC8vRDNZRUxpd211c1Ft?=
 =?utf-8?B?NTIxWnZIb2U0MHZFdG9qK3hkaG1ieFhyUGgwT3owa3A4RWlZVW8ySTBqcnhs?=
 =?utf-8?B?b2lxYVpyeXhlNU1LdWxRUzZRcks1R2JOakJWcElVT1JuVkQvNVp3US8wNHM2?=
 =?utf-8?B?OW4xWkF5Mk9MY1lrMjQ4bVlkUDAvQmFMVmJaam8yWlMycWlXTUhIWFMvck5E?=
 =?utf-8?B?d2dnUkFQYVV0dUZuR0grZUEzbGtOdDdNTEdlV21PdUpZejdCdERQWUYwYlhv?=
 =?utf-8?B?b2hkRHFVRWM4Y0lIVUhXSDlRSGYrWnFTcmdLNTZ4UTVvUVpxZmpUOUdNYWFQ?=
 =?utf-8?B?WmNoazVyL2JGQllLblUxeDc2QlJ5NlFGUmptdU5XWWIzK09tTCtKZGdqeUVm?=
 =?utf-8?B?dGZHZkp2SUxrZW1nYkp6cm1ZSUNOZ2M0L1dxb1E2dGRxWXJyRlFSZzNyc0Qx?=
 =?utf-8?B?N2NQSjQ5MFBUWHF3VS9FSXpsY3QxZVVqUTA2RWdRV2w1YjR4V2I5VnhWV2Z1?=
 =?utf-8?Q?w8wjFemJLnDhbooM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ef60aea-3a84-439a-a8db-08de74256ad6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 04:21:59.1371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2mZDzL3yFH2dsgE6WdZdEZACRlJfw2uXVcwzVfvfjM5B9BGlWU6e7YIdluQgv9V6UGgnkdMvHhK15fP2la4n+lzGtvlcAqkfNiZPL1xjFQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7055
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 018F7191904
X-Rspamd-Action: no action


On 2/19/2026 6:37 PM, Jouni Högander wrote:
> Add DSC_SU_PARAMETER_SET_0_DSC0 and DSC_SU_PARAMETER_SET_0_DSC1 register
> definitions for Selective Update Early Transport configuration.
>
> Bspec: 71709
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr_regs.h | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 8afbf5a38335..3d1523dece8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -266,6 +266,18 @@
>   #define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
>   #define PIPE_SRCSZ_ERLY_TPT(pipe)	_MMIO_PIPE((pipe), _PIPE_SRCSZ_ERLY_TPT_A, _PIPE_SRCSZ_ERLY_TPT_B)
>   
> +#define _DSC_SU_PARAMETER_SET_0_DSC0_A		0x78064


I understand these are needed for PSR SU region, but these seem to 
belong to DSC registers file with other DSC registers.


Regards,

Ankit

> +#define _DSC_SU_PARAMETER_SET_0_DSC0_B		0x78264
> +#define DSC_SU_PARAMETER_SET_0_DSC0(pipe)	_MMIO_PIPE((pipe), _DSC_SU_PARAMETER_SET_0_DSC0_A, _DSC_SU_PARAMETER_SET_0_DSC0_B)
> +#define   DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME_MASK	REG_GENMASK(31, 20)
> +#define   DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME(rows)	REG_FIELD_PREP(DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME_MASK, (rows))
> +#define   DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
> +#define   DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT(h)		REG_FIELD_PREP(DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT_MASK, (h))
> +
> +#define _DSC_SU_PARAMETER_SET_0_DSC1_A		0x78164
> +#define _DSC_SU_PARAMETER_SET_0_DSC1_B		0x78364
> +#define DSC_SU_PARAMETER_SET_0_DSC1(pipe)	_MMIO_PIPE((pipe), _DSC_SU_PARAMETER_SET_0_DSC1_A, _DSC_SU_PARAMETER_SET_0_DSC1_B)
> +
>   #define _PR_ALPM_CTL_A	0x60948
>   #define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _PR_ALPM_CTL_A)
>   #define  PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU	BIT(6)
