Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7oz/OWr+VGpKigAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 17:04:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B5674CC14
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 17:04:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ZiFbrTBd;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9220D10EA20;
	Mon, 13 Jul 2026 15:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69BAF10E5FE;
 Mon, 13 Jul 2026 15:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783955045; x=1815491045;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qF/L7G4iEdNDDVB+/TY0EH3UArCBNmiOOs6hsqZyf+8=;
 b=ZiFbrTBd01b7zrCwnHYg5LY1QZGp6biAlogdsdDZ9TY1EWZQITWQUAZe
 hPxa7tKmRpOk0Ui7tSbQfm145UcZ1/yOQ/D+ikWQzEjHcaBW6Ao6QT7uq
 bCetFT+fRhVyL0iJ5tALHVvIZNDe+GzYMWsZyD1b6p0+yfpmyAzdn2X24
 767jH5wuhBmPyg/GHKofDZ8XtBkbB3KzNLUwP7RNaJtlcI29j7I89a8Pp
 wm+YiaHJoBBHdnqcpbq2xrL8XSOMqonQXD15WYzgkT3fVMemJSzlCoF7L
 OwyIjTKRdpZ/rsr4/PExqwLqhAMH/D0dbWBm2IhQBR0Qyux+VCXbd528g g==;
X-CSE-ConnectionGUID: HW0qx2WmQ0q/AKfVLV0H7w==
X-CSE-MsgGUID: do+zxxT3ThmYkBvqbO9/wA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="83544087"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="83544087"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 08:04:05 -0700
X-CSE-ConnectionGUID: I/cjF/fESDW2VTUQot+58Q==
X-CSE-MsgGUID: 5dvL1SP0T0aZMXYZT9GSeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="249224924"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 08:04:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 08:04:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 08:04:04 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.37) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 08:04:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZC37jP6BrbZgFVTuPjCGe4mFdxE7qAwIe3jc/Hzvrz0yuJTkLRYADHZrwq4eK6A4yFo3ReSlT41UsUXHqBW1kDYuRwS92aA6iFvVmpIh0g81/eRKUCSUDFH7DbVmasMBCnkUd0QMMa7gjmTna/C03L5TjcR2QnCd1xf/YA+f82vp3yIhW5ftJu3xfje5iU3ntIZHLznl77WaZXaZ3P/JASgJtolPsvWTz06F1vB5ixz40IPGXEhH1E+9IxxPtCnWTuwM1+vKUsXL21dgEqRmZQR30lg8vNjZ0SIOL9oqMiwQaFAVyioU9HxzYPKxdwS2w0zD0ydZCDOzGfKeaQjdfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4uC9w+ZfcFETmdG6KP2oqlrqJ5yVzh9wvmxhjgb96vY=;
 b=y7sD3b9OLml65KDiZPQOPVJ+S0qayQt0OJmVHFhs96C1j91uI8fy8jbEbOaQAFVWnLAM7aWear/3y/fFJEZwBZbbsFD7iWJwCVqD3275I5tlnAXMfDyJvDKWeHe+oQFpM93PJpmKoblcTOhLUMPl74K8vtQehbbio1N5Y4pE1gwgQA/yyiJt1JUIGfdBx/qURzsK1L7z0Er+1gLMESVPC3S0Q+0LCw3ZaKcTcZQjf7gLuLmoo4jIp//Y3vRPlC5l+8XvF08aPFiNq5BLdIRNJ71BQjErbUOV2YzVEnvuHjdMw0XDFz/n1FfrJ3Mii7LSGdInPJEEsgGddaVRd10fAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by DSWPR11MB9955.namprd11.prod.outlook.com (2603:10b6:8:369::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 15:04:01 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 15:04:01 +0000
Date: Mon, 13 Jul 2026 08:03:57 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
CC: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 <dakr@kernel.org>, <ecourtney@nvidia.com>, <simona@ffwll.ch>,
 <nat@pixelcluster.dev>, <airlied@gmail.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <amd-gfx@lists.freedesktop.org>
Subject: Re: Refcounting dma_resv and using that for drm_exec support in TTM
Message-ID: <alT+XZynTQLMHDua@gsse-cloud1.jf.intel.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <b1eb8f038e0cb094b9df35cdea400b7fd7cd2d54.camel@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b1eb8f038e0cb094b9df35cdea400b7fd7cd2d54.camel@linux.intel.com>
X-ClientProxiedBy: MW4P220CA0003.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::8) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|DSWPR11MB9955:EE_
X-MS-Office365-Filtering-Correlation-Id: c781e019-2318-4e42-d7d0-08dee0eff8ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|7416014|366016|1800799024|22082099003|18002099003|4143699003|56012099006|11063799006|5023799004;
X-Microsoft-Antispam-Message-Info: 66T3CyldoXEhw3A7k34Rp2uGqtFVtg0VpsuKUlHohw4vPmABzPlK2Rvd9ZK2y7x15mf/esHLPi7FLc2uyvcPtDqlGRFzFMBdNAmE5/IXtzNz+SsYfw86hndMlt9rfehRU5hXnX5Mn3MxXd4OWEszL05aE6/eDp0XHd+A7+BcNuE4L+vsxlYfMqEnprsKnbbBaAUjhz7BJmV9N/4u50abgvQam9JF1B1RkM36Obz8YEWmxo8bTLuJa6ikVTvJgAoNiuq9Esz7NMzNT+eJgFbpitYwu9kZEbnsOglumpp8HPxmyt+qk3vQmUU4SxCcIa3X2zVEhYN4FvM+f+Q/q+a6e0kBu4+9rZlJwKTALfcjsD0BYIsVGb1Bw3KIA+Jh7w3PJQ/Y3HQ7T+yRu3DwNLr6oANAJ4K1LqFYZ8X8huSU6CW8M98CjhxVzRnpMA53tXgPsfOXxNgruJCRyBbaN1OT/4TmLMWVZyEhsH04q/LpkgQwUba/VZ5MK1m44x3PMjgeJcEk2eEBm2TY7G+EG3frONqSBI/UVcr45Dof2ORBLen2/RKaU7Txgb9/+XbhuHrffu0ef4pboVNrANae1vEheU7/ZG1RvMrVebq7HCGRKAfAJ7nH7csUEl4Z8Dpyx7KdsFn/R3HBSMs+CSN1TIoWUrreA3smbftgfhS772tdZl8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(7416014)(366016)(1800799024)(22082099003)(18002099003)(4143699003)(56012099006)(11063799006)(5023799004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEZ5MUtGUHo0cjJHQjkxS3hwWmxuYTNqUE5jMTQ5MFc5azErOWNnWEZWaklr?=
 =?utf-8?B?a0ZSeUQ0Y2krK29qVE8zeGdYSlROZlRKTDN6SnJSOXdYdkFiMk5ZYWNjNUZI?=
 =?utf-8?B?d2Nvc1BxYXUzL3ZjWThvaW1jYkxYblUvZTl2SkZ2K040cWM4bXJlOVBZa0JX?=
 =?utf-8?B?U3h1T3dsZXFUeitlM0REakFZc09mTnVKR2hnZllrZ0FjbzBFM0o3UGxtekU5?=
 =?utf-8?B?Z0dLcjI5dnNKbXRBcWxtR2J4M1FiNTc1VDhpYmQ1ZXZtZHlaWFFpVFRuOGVz?=
 =?utf-8?B?bXdacVFsOTRnZnFOK3NLMFNjdnJJQXZlb0docnk3aElBK3dOMjhmWlgyZTNR?=
 =?utf-8?B?RC9ocFJXSHlaYWhVR3BZOUpUMW5waVNUWjkzVWlRSnhyZW11cWI5enVpZ0Ja?=
 =?utf-8?B?aFh2T0txL0xYQXBvQThIUXdiVGFZeU9pd2M0UXVLWWsxVlpEa2UxeUc1a3FH?=
 =?utf-8?B?aUF0dmIzeTFmdGVPQXlUZ2ZMcm5MbW1KU1BuMGN3U2owSm1UaVQ1UGRBWlIw?=
 =?utf-8?B?Z0IrdW9KN1RRbW1xOUFNMmdkRG92akhiSU5MbVA3UVFGMVlNNmp6S0R3OUl6?=
 =?utf-8?B?dWlyRGNFRzd6VVEzZ0FlUUtudm5SaDZWMlNXaWRITDBKNk9tbXBNYXFYa2Rx?=
 =?utf-8?B?Q3FYekNMT1NaTXltaFlNdGw5KyszYVNZMlB2MXBXU0d3R3FqMVUzR3FqK1hD?=
 =?utf-8?B?eWRaL2VlNm9GbjNkRTlLajFzQmw1Q01HSDcwWm5yNDNHcEUyQmI3YW9Mbk1n?=
 =?utf-8?B?aWV3Vncwait4cnpIKzJOQnZSdkRhOW5kbTBGVDBkOXZRclVyLzVxdGFnOXM2?=
 =?utf-8?B?WGY3WWxyd051U1l1VXVyUUZNTUlGelVsTkV4MDVWUGhwaVh5dE1aVFpUNS8w?=
 =?utf-8?B?VVdPanVVSWlEaURaTWphOFcwR3pORW9ldHAvZTNuQ0ZmaTUyS2IxUVdEOU1Q?=
 =?utf-8?B?cm9iZW5QVGJDNTYxbFgvVEFrSHN6djRFcjd0RTFjL1Rjdnh1bm14cWNtNy90?=
 =?utf-8?B?RUtNNU5XUFB0WTJzbTIrK0w0b1NSWGhraTl4Zi9rWCtVRlkwVlBON2twSFZ3?=
 =?utf-8?B?UUxrMlRzSy9MOG55SFhuaUxYWXBWMjM5YU1KRUFpUDVYbjhvZ2FacWhlbnRa?=
 =?utf-8?B?Q1Z5MkpxYTlWancvOFZGQU9scXF1UTBNSVFiY3Fua1p4L2RRQnZPdC80Skox?=
 =?utf-8?B?cFB6WjZlS3h5QTYwUUJkSUkwUHJDSGdESE92VlhDbGoxOERRQXdMZUVJSDNq?=
 =?utf-8?B?cDc0YUtxU2pFeEk3bGRHWHJRcyt1T2xLR0M2Ri8raURsMndiaHFoWGp3cm1D?=
 =?utf-8?B?aWJKdEs4R2hnZmhQNmR6ZGN2SFY1RWNST0ptV3FaWHhCeG1xS3R0VUljcXRY?=
 =?utf-8?B?dXdDVSs2M3JHeW56UzQ2R3d5dU5NTGdod3hHZ0RqSm8xeGNERUNVblVGWjU5?=
 =?utf-8?B?TllkWXlFM0FEN21xUXBNbWtzSFQxcnZZeWZzNjJyd0R2OG42c3BpWDlONE5M?=
 =?utf-8?B?cHlVV2FsWCtJVk9jU2hRaWJ3TmVQVTY3M1k3VGdMWFBoaitwVlh2TVlTUnVp?=
 =?utf-8?B?bUsrUjBXWmpBZzFndktNL0Mxa2dDdEVOT0VVWTlsKzZiU282cE9JUWVGVjFW?=
 =?utf-8?B?Skdjbk9HM3BmUEZuMFIxQUUwTjhoS2VDNzBHbGZKZnd5YktzSG9ubUZtU01I?=
 =?utf-8?B?elhMckhEc1RLVUk0OWJlSmZrQTlyejQ5cWVMUG51RHRBbXhON0hoMmovWkRM?=
 =?utf-8?B?Y01sQUtTVEEwa0xZN282YU9SU25OSkpOa1Zxa3VBTjU2cE5IdjZTTFB1dUww?=
 =?utf-8?B?YkExVUUySXRyY2l5Qm52WFdienF6NlpKWTBFUlMyN01FYmQ3V3hMWDVlY0hU?=
 =?utf-8?B?RzcwMzNhQ09vU0RXQlF0SVZMTUFVeDM2U1FOR3lGVDBCRFRrWitOcktVQVls?=
 =?utf-8?B?Y2xUSENpYTg5Ni92eUx6azJPSitLZnEzeHlSMFdhcTFVNURJRnFGcXN1aEJW?=
 =?utf-8?B?eUFwUTRnZEJHY0RCS2oyZ3RzbW1RRjNCTGtZM0pOR09uTjZURzE5ZlF6bCtV?=
 =?utf-8?B?dXYvY2N3MWZiT2NTZDVvaUJZR0FXamg1UkNjaENMQk45ajNjY2NKRkFEUlFE?=
 =?utf-8?B?UVY1b1dWY2ZBUXlPYzk2cHpFZzcvK09xRTdKMmpEZU0wVmxwVHpzNFJIbmt5?=
 =?utf-8?B?WGVlU1JNKzUrSkFXWUFyTUlkbEpKMUFDd21CS1hiMkw4RlFiVGpDWGh1bFBp?=
 =?utf-8?B?TVJFcnBqR0w4cENSakl6K3RIWDJ4bjRMUzJRMGpVYmdBaXcwUTcyUmxCL0Zy?=
 =?utf-8?B?NU1aV0I1KzhaTzJYaUlHc2FTRnE3TTQ3WjhKSCt1MnFXSmN0M2J5UT09?=
X-Exchange-RoutingPolicyChecked: s0FqEW+I+1nMPtqpfG6u1wpAcbeRltbGIelgLxVcTs0Nx+z0RWZBLAn90oVeTsWTU3eTMt//MSYGVreE6WZsCPbMoQXlCLpok559o0a5R0RE4PuHMyuw3BLZB34JDribER7TAfBK6DPGpwM5VtPBldBHkiJ4yWLEDHdY0Ck9BREJ9KLal3p0/vu8kGFNyZD58lff77qwtlFV42wMwvdvIb/82UeL9tjKzlR/YOVJY3d1HoXWJcSwzS2W8gpZPTT/qwzWl3Gjac8PzXl8lbiDmuRXgxHGyynp8tII56X8ADe0BDk46YgA4TyLbHg82TuLAtCdkShkGCVg/fnUSYb5Bw==
X-MS-Exchange-CrossTenant-Network-Message-Id: c781e019-2318-4e42-d7d0-08dee0eff8ad
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 15:04:00.8747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /PWDWekB0yDIDkgyG4bOTCu7HM3MVE7FjOxT4dneEyzTS7wD+EWUB0JNzQBlg+5xEzVnd5pKI5+dzEBL/1ztqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9955
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,nvidia.com,ffwll.ch,pixelcluster.dev,lists.freedesktop.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:dkim,gsse-cloud1.jf.intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 75B5674CC14

On Mon, Jul 13, 2026 at 01:32:48PM +0200, Thomas Hellström wrote:
> Hi, Christian,
> 
> On Fri, 2026-07-10 at 20:52 +0200, Christian König wrote:
> > Hi everybody,
> > 
> > The idea of ref-counting dma_resv or ww_mutex came up multiple times
> > from
> > different people, but so far at least I have abandoned that as to
> > complicated to implement considering how widely used that object is.
> > 
> > Thanks to AI I gave the task to refcount dma_resv to Claude Sonet 4
> > just
> > to check how horrible it would look like.
> > 
> > Well turns out that this is actually a cleanup we should most likely
> > aim
> > for and I'm really wondering why we haven't done it like this in the
> > first place.
> > 
> > Not only resolves it a bunch of issues with dma_resv instances shared
> > by
> > multiple GEM objects (we just recently had a bunch of patches for
> > that on
> > the mailing list), but also allows TTM to implement it's delayed
> > delete
> > handling without any zombie resurrection or similar hacks.
> > 
> > The patch set is totally work in progress and only survives a smoke
> > test
> > with amdgpu, but I still wanted to check if the idea is valuable and
> > should be looked in further.
> > 
> > Please comment and/or tear apart :)
> 
> Before starting to look at this, in the spirit of trying to aligning on
> a "final" solution for ww transactions used in TTM, could we agree on
> how we are supposed to pass the importer's ww transaction context to
> the exporter's dma_map_attachment() operation to handle exporter
> evictions while mapping, because that decides what abstaction we should
> use for WW transations within TTM.
> 
> drm_exec_init()
> xe_bo_validate() // IMporter
> dma_buf_map()    // importer;
> map_attachment() // callback in exporter
> xe_bo_validate() // exporter tries to move exportert bo to VRAM but
> runs out of memory.
> ttm_bo_evict()   // exporter's evict needs importer's drm_exec
> 
> As mentioned a couple of times before, we can't pass a drm_exec to the
> exporter because that would make dma-buf depend on drm.
> 
> So with this series it would be sufficient to move drm_exec to the dma-
> buf layer and rename it, but I still think we should have a plan.

+1 to Thomas's thinking here — drm_exec should be moved to the dma-buf
layer.

I think that would involve dropping the GEM references from the base
layer and instead operating on dma-resv objects. Of course, if we want a
drm_exec layer that operates on GEM objects, it could be built on top of
the base dma-buf mechanism.

Matt

> 
> Thanks,
> Thomas
> 
> 
> 
> 
> > 
> > Cheers,
> > Christian.
