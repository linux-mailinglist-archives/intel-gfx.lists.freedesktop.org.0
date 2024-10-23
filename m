Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB5B9ACB20
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 15:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18E8D10E7A4;
	Wed, 23 Oct 2024 13:24:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JaTwP27P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F6910E7A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 13:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729689868; x=1761225868;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=8mr7Og8q6DkZbna7PCYO4zO8yCaqKhW6Cb8SxlTfm8Y=;
 b=JaTwP27PLsMJ1mGgkuzmUxxRONaWrDlmnfXjpjORGe3pUlPsDVyAA4zF
 q4WNomnjZgLx0MeaLAGxh0mGfwD+XuLqDCjuwzUjtC3AVWJL8JpVHXOnn
 5OLZA1uasbuiWkNAbTwsHHySR7A1aRQRn9oxgNWCK5/nXMSiKocT4BH9a
 8OBICF+DrEDa9QdVI+scLZrNiXQd6vbdj9pZiGp7+2Y4VQm+DDtKQ2F8t
 8j2HvjByBGE0xa3XTSTcEOwJgiAHDIiJ3qO0Dg4ATzVsVIEYKQcGRxmqR
 jHb9P5F6vUXsJbXUjmPNILXZWe+rw3oD0hF77RJp57zRaueIAcuT4EwT8 A==;
X-CSE-ConnectionGUID: gfeMGZ+mR9a3jioaHmRqmw==
X-CSE-MsgGUID: ZN0mIocESQ+bQfp1xsSWWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="33194843"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="33194843"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 06:24:28 -0700
X-CSE-ConnectionGUID: ub7ty6B7T9in5l3ATyoMuQ==
X-CSE-MsgGUID: ROTenOxoTlCWYKtg2bgRfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80612133"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 06:24:29 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 06:24:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 06:24:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 06:24:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ThB+Urv0BINLKl9MALqT3QmhHvVAheR3jYWJ8yOZn3QhTecWsdXilxpxs1KFc1aWA/5tiSkU0xPGZZHv8PcKwz3oBRj9YHP5UG28dq7jc0/DQGlg0xYFIP9clVllwll4mcPpVVMKXa/Xwk9cL3hMs0sElPLabvC3OiB38RptakxQfAxKuz8oeQnVz7zsOQqIR7/6rS9A4Cqwqp6EkScmXxCFuBQZGQao+GEibhLp/d5ValJUA/ABlp4udIsmCb3aqftQb0ngdEyPmWDtvtdY/vFKPSNSb/XVsFyxtrea7B/L9Zk131/PriQxPMQH84bOlFwQUA9F+1hvtN888D5f2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/oJDNTTgSpyvjevWkwe7Pjx/NXPlPJj4VyH4p8ouzc=;
 b=Rtq41jTMKJpnJsRBQrXRkNeC1+lcakr57i5aw9RHddBNWJgnCqeziw1MrqWmVCxv+TanjgWqDByILKug5sglWUilvGCzF4cKhzVEldH6pXHm9PTJO8r0g92YZkiXEeIc1na3a9acofc5OaP4NndVgTy2cxieYDirV2zcEPIKKlpuIqyaDvev8zbKei+mu84i6x/EwKN3qfZPV2zFs15MqbORa7OLeMPeJCX8fvE7czv1LaEEnUaZgBUckJviITfGcioUDiLv8uIGOgwNAjEwds/fMHTpm/25deTWd+bhuRoRqmH17B/bfAXEwY9ffawKPb3/o8TLE3bMj0GwKONyEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SN7PR11MB8026.namprd11.prod.outlook.com (2603:10b6:806:2dd::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Wed, 23 Oct
 2024 13:24:25 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 13:24:25 +0000
Date: Wed, 23 Oct 2024 13:24:19 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Subject: [PATCH v2] drm/i915: ensure segment offset never exceeds allowed max
Message-ID: <agetzfnm7xpwocyvnznewkmfqin3hyha2qywyvhqnk77gyuvuy@hat5jnfpljty>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0131.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SN7PR11MB8026:EE_
X-MS-Office365-Filtering-Correlation-Id: 5366c12f-6732-4b65-63c1-08dcf3660357
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bWU0dnVpZnZkb2c5aEo2TGVPOHB4OEJzZURJZklEMHp1QkZRRG1QeG5ienZ4?=
 =?utf-8?B?dzcrMzdJKy92dDdrK0ZKU1RTS2xoNnNYU3RoRFJtMXVwYTdFa0xmbjRoWERF?=
 =?utf-8?B?cUpacXRvcWNrYnU1blIvaGxyTDUrRGdWYjVFWjNMRE80RVNPVzRJRytNMFI4?=
 =?utf-8?B?K2Zjc3gxM3ppUDVYSWZ2LzlXNDl0NU9LeWkycEJ5V3ZZMlhqVDgrTUlNczJ0?=
 =?utf-8?B?eER0YzVZUWJlZUlWMDY0MFVLbUZWV2VnUXVZcmRRUllwNzR5OGRJaEo3SWt2?=
 =?utf-8?B?TG55NUt4cG9aTUxUUjFrbEVkQmxDRmxLd21zWXF5UVJCWVpVWFloUTN0RlE3?=
 =?utf-8?B?ZW00RUlWUitlUENTb0VWUW5yVG9MNCtLVGtCenlMUlQ4cUZNMXhEWWZVL1Q2?=
 =?utf-8?B?cTVlZmNnTXRsZVNzWFNEZjd6azlCWWRYN1ptSERwRkJUWmErNWRHNmx6a0l4?=
 =?utf-8?B?WmRuVzduL3VqWFVLbi9QclhZQkFKZmJGWkF5cXFzWkFNb2RRd012RjYwZVZX?=
 =?utf-8?B?cWNGMjE0d0lNYmNFc2tNNnhnSTJUb3JCdGhzdmh1ZWFjQnVoM1ZlcGNTTmNW?=
 =?utf-8?B?U0NQakQ5SXJHc21uK1FKUFhjRXZqWElLcUp1eGlLWU53SUV3YlJBbkt1aGVR?=
 =?utf-8?B?UW9MaHNEN3QxZ0QvNitTNTNHQ3FZU0txL1c3S0sxdXgzRU91SGtSOThVTGFO?=
 =?utf-8?B?QkgzYldRODh4bysxV0xxRFhMSnNuSzEvejEycy81YzZwbTVmNkl3WnBFZjh5?=
 =?utf-8?B?bFd2S3c0bmovTTlnSE1jUzRTcUlFVkp4QVFCdmREUXVpeldTZVgwZ2xhaExo?=
 =?utf-8?B?cUlWZ1VoZE9BNDduS1hTdDd2aXZqNlVJRDRtdHVST25TZjlLRWk2SFlGK1c5?=
 =?utf-8?B?TDB4WjlrUXVpTVo4MjJHNmtYczVzZUV1WDZSVUNTanZvTG5WWDRzUmRhQjdh?=
 =?utf-8?B?US9sMkpDbElHWWdqNkE0d3hleUxDRVBrUFJRZFk5ejRTclVaOUs4TitEbE9X?=
 =?utf-8?B?WjlQY01oRWtOdDVHVTF1TmRZZThIdHRDQjdLNkFTalZFQTY4VHlxWVNVN2Ew?=
 =?utf-8?B?Znhpc1ZkcFViZEdzK3FEOEErU2lnVDBtSE9UMnlGb1JVMlZyZWtRa3NsMFJq?=
 =?utf-8?B?NWtxeTJraTRWOVdHU2dlQndPNlJidVAzWVlXQ0phOFJJUEZiczRxaWN2VDU1?=
 =?utf-8?B?WStJYTdFNFRxT0llV3orTEJ5dXp4bElkaEJMM3VzSG8rUk5VVTdCUWFoekRG?=
 =?utf-8?B?WFkxa2lTYjFWYnBSUmVlODQ1eUJuZmZFbmIxMTd2bTlsNUpaWGhGbnpSMW9O?=
 =?utf-8?B?TkdjVDcyOWNuYlplalR4U2hsMWxtK0tyVitTWDl4dzk4MmUwYmhVQ1hFWFZD?=
 =?utf-8?B?Rkg4NTdZclJITmk2Wk8yczNZTmtNa0cwMjdZZnJETm1ZN0d3L3VzVFpuYk9w?=
 =?utf-8?B?WUp6am9vWWxqSnFhL0xEc0wwQTNBL3JZMU1ub2orUHZGRmUxQWloWThZb2c5?=
 =?utf-8?B?czBnaWxaRkFad3VCUHJMMmRvMFVabE1pUkhDdDVFalN0Y3pZdFJob25vWXdt?=
 =?utf-8?B?YXQwVllDdC9jMzZMWEUyaGM0QVl2UjdqU0k1SS9ZZjBXMS9sUE96NXZFOVB5?=
 =?utf-8?B?YTdnVHVPU2MxSjdXR0lCSU8xR3Nqc1JRQ3N2aVd1MWRNWVExWTJENndjM01G?=
 =?utf-8?B?UHdZeHg1bzBYSEZLdVVObE1tSTM1ZDl5Z29aUGIwejEvbUtrMEdQeFFLZkdx?=
 =?utf-8?Q?jX8KAz3XXIv7OrfHp4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzN5WGJPc0dabzNPWDIyendDcmQ1bjNkcis2NHNQc3Z6dmJxckxJVUk3SktY?=
 =?utf-8?B?Z21EQnNldFA2aFk3Zi9CckdSUUxQTm5xellsSkg0NklCbWROc25UbzJtY1R4?=
 =?utf-8?B?YXNMMWFrVlgwQ0hDdjF5aXNPREswZVNReGZJdTZVQzhESFljdW9YN21uYzVq?=
 =?utf-8?B?c0NYWFErcktHOW5VSGRQU09Tc0NqdWlPV3d4UXdHbHBFQk54WDV5QTB4SGVX?=
 =?utf-8?B?alN4dXlpbnAzNm12WHZ3Y3QrazlJWVlqdCs5Z1RBeGNSM3lZUThkZ0ZaZDIx?=
 =?utf-8?B?Z3pELy9KOTZoQzVEUXlPRGZWMFpGWWRsR0tMaEFLbU43aHZhZWg2U2NLNTlL?=
 =?utf-8?B?L1pPVzN6WGkxaHdSZWpBYTh5WGRleDlDMUtEdy9kUXgxS0JIamwzcHlsbmNh?=
 =?utf-8?B?RnJmSkR2MnR0NGZzRGV3dThFRFpIa2RpbnZjUmpSZDNrMUxSRFZ3WG8xNGh0?=
 =?utf-8?B?N2hhNVRwZjl4RTZFN2oxZDBQUVk5L245VFMzaFZVQW9BWkMzV0VZRE9DVk90?=
 =?utf-8?B?SFI5aFp4d3lUWm9ZVS90UHVhOEJEaXhYd1c5eXovQlUvNk0xSWg5b3VMTnJR?=
 =?utf-8?B?RXNZTVhoMlF5YXgyeUpFcXpCMHFSVER0K2NOVnlRN1pxTEhBVk0wWEg3VFFs?=
 =?utf-8?B?ZE1ZWTFvT0pDUWRiZExJM2hKNG9BODRUb3dLQ2VMckxrdlV6QUVjT0dDemNM?=
 =?utf-8?B?dHdZclJpaFhsV05yekpDRmJsd3FyQjB6WkducDN4QWhJQk5sUE42dmFtbzlT?=
 =?utf-8?B?NmxqTitVL3YyOFRYOU9RSHBWa0ZxNkRXZG9DOGRwbk9jeTFoWm03YTJYbllU?=
 =?utf-8?B?cTRZbmdFUlNpTjJMOHdHUlV0cnZkMXJaeHU5OTdCYkxvSEVTdk8rcEFFcnhm?=
 =?utf-8?B?b3RxL09oQkhJdHROT0M2VGRjTGN6K3hBbTVuaXRkdkZkcGhVWk5xbXQ1SGdX?=
 =?utf-8?B?T3FpSFhqNmd5bUhuT3h5bytMR21TZ2U1NVRUdGJNR2o3eVYvbGNOaTZYakRO?=
 =?utf-8?B?Q0lJWWF6ZHlwNUEzL2VqVHZDWmdwZFkxOVZIYjlBYVVqcDdOR0R2Wkw2aS8w?=
 =?utf-8?B?R3ZuMXZKMGFnMCtGUC9lcVNBaS9vcXgyRnZ2Nk52WENyRDRoMGJYVXJHQ0I5?=
 =?utf-8?B?TlgrcHhZY1BOT0VlK0dUQXJkRUd6ODlxeENzTnp0YndOcUt2V2JlWWNjMGhE?=
 =?utf-8?B?K2VMTGpDM296M29qNGpJbEFyVlU2cWFLYWJpNHRoSjgrMVoybElJeHJsbFRD?=
 =?utf-8?B?TkM1MWVYcXhpYTJqcWREcC9uNFg0TmdzL2F3bkFnK1l0NmJaRTA2UGtCZ0Nm?=
 =?utf-8?B?WmFKV3V0UXZWVXl3Mkd6QjFhV3I2SHNrY2EwRGROQ1J1VXI3YkxPNEhRK1Y1?=
 =?utf-8?B?STZWTmtGYzdLKzh6eVU4ckhvQXFCbysvanpIenE1SVk4OWNYQkpTSmFMcUM0?=
 =?utf-8?B?OE9tR2NBR2tPK29kU1pYL2M2UGswSjdhekE4ckkxRkJRVy9kaXF4aFV3WEQr?=
 =?utf-8?B?OUJvM0NsYmo3OXAvTERWN3lNTXYrN0ppNllFQ09rK01wVVpTMjYrY3l4K2po?=
 =?utf-8?B?YVNxdEhiVEFxQm5kZTZPb0hiTWtLRmtwb0RLTmFSdmJYblNLNEgzdDBTVTJF?=
 =?utf-8?B?T09LcmRCclN4ZEtFRHFEOEQxNmR5ZmJ0ajlDclo3a2duWTNDbnBvblJkWHFi?=
 =?utf-8?B?K2h5Mzd6cVFqQjBLOW96UjhSWlZUbWhHSGZFZEN1cjFTZ3NYU2lqTVh0elhk?=
 =?utf-8?B?UmdVaHNNRWw5OWRzQzl4WnV6NmM2YlZ3TjRDSHBqaG5iT1Y0ZFpaUzRvWFZ0?=
 =?utf-8?B?N1lXcGFLWWd1KzRnYURLUVhFOGc3Y1NoTHhUQUcyVmhtSkNNUmJ0U0pYR1VV?=
 =?utf-8?B?NnJnbjJPQlZ5NDZYNDRZcWo3M2hhSWFmVmdWT2FWUnBOTUxJUGxHS2tDamlF?=
 =?utf-8?B?TWlYRHdWWnVZYmFkMW1udUpucmRsb1lNQnBBb1V1ay9OcWJ0cldmVEIzWGd3?=
 =?utf-8?B?RGxxcVJwUU9hR3JIRUl0WVZvZ2pjRVpwU0JDVm5ER05qN3N5NDhWWWNuUUZ2?=
 =?utf-8?B?WXJ0WjBjeVNFVzh4NndCNVl0dG03YkdHOXhqU0lYdlVHdm9FdnEwZ1dETjIw?=
 =?utf-8?B?TEpKRzFybDRpb1M0RDBlNWV0QVFFWk84bkFzeTF0NU9BM3I4ODJCb2lSZnp0?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5366c12f-6732-4b65-63c1-08dcf3660357
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 13:24:25.1099 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0wCjq5wxrYnmxD2qPGQg3DWi0QZyfP/O8+z7oezOeOdFHZ1bZjQiS8sB80zbXgum1annB3MCRrainwyQWC45WcZmiSd/ZHAEe/2rcDKQHcQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8026
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

Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for
partial memory mapping") introduced a new offset that affects
r.sgt.curr value. This field is used in remap_sg() function, in
set_pte_at() call and changing its value causes page table entry to
also be affected (see set_ptes() description).
Example:
 1) upon entering remap_sg() r.sgt.curr could have already been changed to
  a value equal to or greater than r.sgt.max,
 2) set_pte_at() uses r.sgt.curr to map a page entry from another segment
  to the current one,
 3) r->sgt pointer is moved to the next entry returned from __sg_iter()
  only once,
 3) the memory of the mismapped page might become unavailabe (accessing
  some addresses causes -EFAULT).

This patch makes sure we never exceed the allowed segment maximum.

v2:
 - instead of moving segment offset added checking if offset + current
segment offset exceed allowed segment max offset before setting new
current offset for that segment
 - changed the patch title from "move segment iterator to match current
offset" to "ensure segment offset never exceeds allowed max"

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index f5c97a620962..ba022afc624c 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -143,13 +143,15 @@ int remap_io_sg(struct vm_area_struct *vma,
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
-	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
-		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
-		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
-		if (!r.sgt.sgp)
-			return -EINVAL;
+	if (r.sgt.curr + (offset << PAGE_SHIFT) < r.sgt.max) {
+		while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
+			offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
+			r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
+			if (!r.sgt.sgp)
+				return -EINVAL;
+		}
+		r.sgt.curr = offset << PAGE_SHIFT;
 	}
-	r.sgt.curr = offset << PAGE_SHIFT;
 
 	if (!use_dma(iobase))
 		flush_cache_range(vma, addr, size);
-- 
2.43.0

