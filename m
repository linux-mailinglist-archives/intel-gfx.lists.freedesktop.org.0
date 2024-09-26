Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCB5987449
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 15:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE5610EAAF;
	Thu, 26 Sep 2024 13:15:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Blg2SZ92";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6988410EB3C;
 Thu, 26 Sep 2024 13:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727356525; x=1758892525;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3oRSj3ZtDP3mHk/knw0B2UooilJt9+lxmDIWVIEDabM=;
 b=Blg2SZ92ujcfTIPUARB08Ro5kUlxE2JiRT82bPc1ezA70d48yiXdPN6V
 oD1/i2HynxjUWcoKCNXtpbUuMl65/v/4QQyOcla9h4OYQJBYbpRhLTjQF
 4RB/O0ZqLr26qEBv/Ksiee/54Pv2qB5drhY8FdMhf9Xjx5Z4tdTvXAcEh
 Mxgjpmu9gTbWsy/7VUglPrYeX2FZlfOGY0eXAbHLWKBcGYOvzbky7djvW
 FBDAN/pnNyixDcp01kW4Gu6GNvtuXCxRzZEt8htoSFQTxynK66YzpKJCh
 QzL1AK76CAVobXr8gBVbJo278gMAd1ibeR+FiIMA80LpPrIgeFi7Ux8Ie Q==;
X-CSE-ConnectionGUID: YnmgMCgHQz+qV7hvVvXgFw==
X-CSE-MsgGUID: N6mTVMSLSvyXMFUkrJtVVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26586543"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="26586543"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 06:15:24 -0700
X-CSE-ConnectionGUID: GL+AG3qzSW2U6JH4bL8PXw==
X-CSE-MsgGUID: ELSBFUTdT12fwOKSGc41SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="76234045"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 06:15:25 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 06:15:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 06:15:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 06:15:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 06:15:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GzMHtMXped8acnHiwUDKwu5eH11uayIhi1AuWuswT5ojkOCfdHWwkvZfIJ2s+7WQnrFzWY3EAKjYgzpjfW7nJ9wH9EwSq3eqEYrQF6KURd+tPNY0qubXrMUI+H41jF9y5Hf9ibVk2JLru0pBJur8o4kJmVWQUWuTohDxxobFBeADqs7+ef+Wi7WBpDZCprkyCLQ7CqQ5dwYff5Pa430ZbZiW3pDzq44NagSV4KZ9Ilnioz1hRX4NbA7ltknJrE8qVt4kBDSh5qWNQXqB2qyWQ9azXBag3f77jM/2h2xljRX3nhOtrryfOeRK5lHhI0TVTj+wBRMsIejpa75VU0G+QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zB7NCCUQNN4eBHq2zN6lSYU+TYQMHJsp7CE5aadAMkk=;
 b=GsGsIc1Rpsnhb9IPpZmGEqFNq0YTZg4A73KQe4Z1fsD/06IypLxMG47W0Kr6nDr7bKVCQXbcVg8MqAW1I28d+yBUGhaypXO5kSl6cRP5cMaP5uLiwy+nrUS1mgt50GgHPUttShZRht8cyydZbIT/ULC+wWyyMrfhCV7vKKVHWU13bAvOSXSGHz/6xbweBEmJH56GQgt4dylFSWJlZYYIe2ihKX8eUUFJjpT27ZYOkatwItpD0ZvcugcKjKMRfPBS5TxlPA3lIBKzbI70iGb/cR1BsJaQWPcEGUE1z7GqIq/HOPsIxVSpjHlVUaHT91OKOwP2Q/VOSTFlFEMfIybjcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW5PR11MB5883.namprd11.prod.outlook.com (2603:10b6:303:19f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Thu, 26 Sep
 2024 13:15:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8005.020; Thu, 26 Sep 2024
 13:15:21 +0000
Message-ID: <cb3cbd18-ada2-4f86-8bf5-3e6b95010246@intel.com>
Date: Thu, 26 Sep 2024 18:45:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/15] drm/i915/display: Refactor enable_joiner_pipes
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
 <20240926072638.3689367-9-ankit.k.nautiyal@intel.com>
 <ZvVDVboKQrQwgeyc@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZvVDVboKQrQwgeyc@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0169.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW5PR11MB5883:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ab8b39a-a273-405e-d268-08dcde2d45e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OFZCenFONUNuYTlncVN3R0IzVSt2dzJYczM2ekdLUUNLcDAzczJJTUJsODRL?=
 =?utf-8?B?VmsyVVFCaENrYzNkWmp4OFhKUEhjTzdFZlhVMGhENkJzRGNMZzBiNlJLSlli?=
 =?utf-8?B?Y2dNZlMvY1hHOTdlcm1CTU9wS1VodU13ZEtPVWhLM1lzdE5uTktrN1RTRHlp?=
 =?utf-8?B?NzhyUURvZ3lDTEZDZzFLdlNocmlvOGVzbHZWU0V0alVYZVQ5WFBOckJ3L3BH?=
 =?utf-8?B?cTZvZlF3aVN3bUgybDZHZGJWeUxEZlZVMmlTR3h4WkU2QllDTjU1cTl6WXd2?=
 =?utf-8?B?TGg3Z1JhdUI1dmIwOVJxdjdYQ05YdGRSbGNWZkRudlh2cFgrbEljbDI5ejdI?=
 =?utf-8?B?UXc1RG53QTZYc3hxcWJIeTdBY0ZxNytGdUE1czd0L3ZuV095SCs3N3V1MjI2?=
 =?utf-8?B?TlFHVmFGNFpaSGliK20zNUlnQlErRDcwQ3RpMlZ5ekVnZW5SNFpVSWpoQnZn?=
 =?utf-8?B?b09pSnk1MFFLSDBUK0IyVkNGZlBlcDlBTGhSMjAweU1ZOXBXMWF4V3dOYVlZ?=
 =?utf-8?B?ZUVybFhvaGlSZGhQbGd4ME5YdVFQaUxMbWxFcW9MQzVUd1pYcW9hOXF0VEsv?=
 =?utf-8?B?ZlBFM3hoQVo4eHZYNHlzSS9RWmYrdkdEaVJhSVB2NHNTQlAySitFb2k5eFpj?=
 =?utf-8?B?WWg5RzQ3LzAwOStHa2U0a2x0OXo1aUV2T1dtZ3REVFMxNVlkZzJLcEp3aHBk?=
 =?utf-8?B?TmRMUVZWUjNvYlJRVHQ2YXZ4ckcxSWRqcGorZnNqVVRFcHR1MG14WWhyQkVO?=
 =?utf-8?B?LzZZZWZ5S1ZwbHlERFBEY1U0Q2s0dnp0cHBNN3E2Y0pxNzROVWJzSjcrMGhl?=
 =?utf-8?B?aXdEc09GM1JVMjFGcGphdXN1YUEyOFF0a3Rwb3lXUEdSRnZvT01pbDllYlVo?=
 =?utf-8?B?Zk02WG1GZkloK1E2SSs5c2kvNzhFZTFXR2FoTjZJYklNVkFiOGQrcWs5RzJU?=
 =?utf-8?B?MnhTYldtbkpFdnNzZjlvMHgxZDFuRXREZy9TZTM3Z1FuRkdBRWMxYkR0ZVkz?=
 =?utf-8?B?K1J4elRqbmkxdWE3c1VtOVVQOUpnMXNkblNHWU4rVFB5MEV6ZEZaKzN6M29j?=
 =?utf-8?B?S0FCMmZobUErL0M3cnVsWWV6Y2dMQkUzZ0dJL09yRmJwUXhSOFUvdGc3SXR2?=
 =?utf-8?B?WURZQkpIYkZwQ2FXcmVGamFkQmNSbFR4V3kyUSt6bWR0NU1tT2ZqcmJkc3Bp?=
 =?utf-8?B?NFI3NE1LZUtqZldyOXZpOWJnb3cxdHNjNHhOZmh2NDNPSmV6Q0hDTlEwajVB?=
 =?utf-8?B?M0l1aGNvZjFZdGVrdyttTXkreU5xOW9vTXBmYkg1cTFFK1VVTk9XcEN4ZEJO?=
 =?utf-8?B?NEY5dlM1S2NjeEJiaTlPS2oyai9ncEZRdGxMNko5VmczVkNLaHRCWVhmNjZi?=
 =?utf-8?B?bjVuVFpqM0pOdzcwYTVJd3FWVkZEbzVkR0tpa2lkZ1pJY29jWVV6T2ZOU012?=
 =?utf-8?B?cFZpOWw2NSt2N2QreDIrdUp0Q1dHamlpTmlXYnBaWE5PVlpYV1MwWlZTd3JT?=
 =?utf-8?B?NWVUTkNBZFR1czY4RFVyRU95c2g0bXdnOXlTLzJzZDh5Rktaa3Q2VGNHWDBH?=
 =?utf-8?B?MXd0emRER0xTdG5TR1JZN0ZEQlFobGhJSUc0K0xYVWdCUzY1Z1pVdTdmd0Js?=
 =?utf-8?B?dUlScnV0RUNVeVMrd2JzUDE2WVpLSlFZMS85WEJvQTYxNFpoK1JMTlB1WXls?=
 =?utf-8?B?ajZrMW5oN2pldExmWndaZUtFMjh3RXVmTXIzNzZiS3pGUWpvaTE1T0hBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TERDL3JkRXpQdXc0SHVscHc2U2Q5cUF3bk1Kd2pQYVdqMHY3ZVZWMXJ0MDh2?=
 =?utf-8?B?NmdvWlNBQUtyTXJLT2RITXllTGkvK0tSdExtT0ttOHN2dmwyaTFlYjlUSXND?=
 =?utf-8?B?WkJwS1Y1MFcyR0k1SW8zeFFOR2tFRW4wTmlScDFwU3NPMTFDQ0I3UG9GYkJH?=
 =?utf-8?B?VUMxYTU4aXpTMXFqRGIxQ1A0ckN3Zk9uM2tud3J3YUdHZ3V2V25KOS8xQUFz?=
 =?utf-8?B?V2VWNEt0RjVUb0UyNGJiN1kwNXZ4d25oUi9OcUY0dm45eUFsVEFvVy9XVTFk?=
 =?utf-8?B?N1BjREZ2WFBLTEMzWElmTzlPSXpYelkvaFpzeHdnaEVsRkZFcG1RWWxHaklM?=
 =?utf-8?B?bnlxeDRGVEZ3N3h5WWdoRUtLS0V0YmI4UkVUNi9LMWdWTXNRS2g1MUtMSjNK?=
 =?utf-8?B?TVphdlBJWEE5Z3ZKQlBrczNSRjRJbUZ2OFhRQS9YdEVra3c0QnZCdW5oVmp1?=
 =?utf-8?B?UWkvcm1sNzFHc2ZwT0U0R05tcDZvRzd4TnFTZWZVRlNzdTJaUXpBRWVqdXRq?=
 =?utf-8?B?T0V2ZSsrdjd5T3hWNlpyRjg1OTg0c3lRTkVDUFhLMnFRQkNkUEJna2xqLzM0?=
 =?utf-8?B?cjBBNzBTeHJ1UE5QR0pxMGlTVGtBOVkydUQ0Z0ZLUWVaRUlFaE1GMUlOdGcv?=
 =?utf-8?B?YW1PTU56bFV6dm1wUnVlYVV2SDdwbkQrdlNHQmhlNy9UQ3pkUjYxa1VielA0?=
 =?utf-8?B?MmVRZisvZ0d6S2s2bXA3QVBaSEUzTHJ1bEFJZFBEdzFVTXR6OFo5aDAvZno4?=
 =?utf-8?B?WVRySG5QdU9hRXFZd21zMFZ1YW9heUsyekVEVm16QXVMM2VQWXlKL0ZMNmh2?=
 =?utf-8?B?cTFEdldEMFcvQ1N6VnBlTHMzZDFsTWdDOEpIZENwbmdhdFBnMENzaDYwTlpp?=
 =?utf-8?B?UE9CcTlLbHFxcFlEeWNMblRlc3FlaEMxcWhVeGNla2c0MGdkYnFQR1pUaklI?=
 =?utf-8?B?K2tuV3lITUlUY3owQXo5TDdJbDgwbnFiNkxkdUpPOElnZ3AxWWZyVFhnUDR0?=
 =?utf-8?B?cDl3ZG5nRTJuSlBLUkN3OTNTaW9GODFNVjl4aGM3bkRRVGRWTWdnMXNnMU55?=
 =?utf-8?B?VUx5K3ZoczBJVGVwMFE1Q2VlMnpuY2w5MFRkbElEOHo5YnhwZVVpdk14aVhs?=
 =?utf-8?B?QWVEb2gvT2RKOVh0dGpXc0hYK1ZRTXp5bTRsenpTYzkwZ2hqQXU4UksxREk4?=
 =?utf-8?B?R3RoaWJrR3RwSTlqMEhyWldiV0dpdU9pb3ZiWEdnU0FvS3BFSG5wam9GdzdU?=
 =?utf-8?B?cW9aTjBPOUo2WUlCbndCbE9VNjc4SCtyZUxPeXZkemgxYTgzNFptTVg5RUpP?=
 =?utf-8?B?c1B2eUtVTVNCanB5RUdUYUgwUmZBL3hMWlB1RVJBRTRLSVR5WWpnOFc2dFVi?=
 =?utf-8?B?YUtXNmZrdjVZaDRnWUZpY1EyR3lJS2FqMzJ4aGJzQWlnQ0swMk4vOXk2N1Q4?=
 =?utf-8?B?aEo5dFRRc2lyQkxDNlZQa2xwaUVFWVhRRlQyOTI5Q084Q1ArbDhRSExEdjk1?=
 =?utf-8?B?TkdjMFR2NjVMaHJranlURnRLcHphdm13OHN4ZkVzSURpdXNYWm9kUEFRaDZz?=
 =?utf-8?B?VlcrTGdIcllvSHI0cytza3J0eFNhTG9VRzJKVmtSdVBWRWtUMnhPV3g0MXhX?=
 =?utf-8?B?b3ROQlhmRFVnU1RZekt2Ym1kZ1dqTytYcWhvWlhUWEUwWlJueXZRSzFUK25j?=
 =?utf-8?B?QVNmaHdhaEN2U1pPYmUyTWU0SFhJSGNQcEh0UnFLR3NvUkZtOXBUWE1rZFpU?=
 =?utf-8?B?N0Q2aWlFZjQycDZHc0dtQ1g3bFZxajQyeDRmeVpsdnd5R0VFUEd6OEQzRHdt?=
 =?utf-8?B?REJSM0xsaW1jb0tOdFZ5Q1plcWtaSC9YMWdQV2czYlB1dWxvajBUdVFYRC9C?=
 =?utf-8?B?dFBrTHQ1Y0ZLSjVpTTYyZzV4bXcxSDVMcTNWaHRVVitTdmp1dUlIdFJDRkkr?=
 =?utf-8?B?UThFaDdQYU9LbkhVNmpNa0JDU01qdG5CWHJkUElGWFl3S1Y1cXk2TGsxaHQr?=
 =?utf-8?B?YUNJTnc2WS8zUDJKbHFsOTNhQ3VERk5nNnVhQ0VEK2JyeWN6cjJ4a05kM28w?=
 =?utf-8?B?YmdhWFA2b1RzNVpJcGUyYjd3VHBOam14dGcxMm95SThsc1lUWUJhNzlDRkdV?=
 =?utf-8?B?OVB6eEJLeTJHeDlqVkprSDVwZjBveDNsR2hYTXJzM2k0a1FkSUdVOW5GVDZx?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ab8b39a-a273-405e-d268-08dcde2d45e7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 13:15:21.0882 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P/iDHMxkG+tOii3iVIQPsNpyz64KLzjP3BcEXmjwy2KfqOIpxL/wxFcoVeZMTXPSoFR5wAr40oUWlZsnwjqMYgGIgsbIAPwn7Y7qH4/+aPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5883
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


On 9/26/2024 4:49 PM, Ville Syrjälä wrote:
> On Thu, Sep 26, 2024 at 12:56:31PM +0530, Ankit Nautiyal wrote:
>> Pass the current pipe into enabled_joiner_pipes(), and let it figure out
>> the proper bitmasks for us. Since the enabled_joiner_pipes now gets the
>> primary and secondary pipe wrt a given pipe, the helpers
>> to get primary pipe and secondary pipes are no longer required.
>>
>> v2:
>> -Simplify helper get_joiner_primary_pipes. (Ville)
>> -Nuke get_joiner_secondary_pipes. (Ville)
>> -Add more drm_WARNs final primary/secondary pipes. (Ville)
>> v3:
>> -Drop ultrajoiner stuff and add it in subsequent patches. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 89 ++++++++++----------
>>   1 file changed, 44 insertions(+), 45 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 2d6260c3bca5..ea259b142786 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3663,7 +3663,15 @@ static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
>>   	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
>>   }
>>   
>> +static u8 get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes)
>> +{
>> +	primary_pipes &= GENMASK(pipe, 0);
>> +
>> +	return primary_pipes ? BIT(fls(primary_pipes) - 1) : 0;
>> +}
>> +
>>   static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>> +				 enum pipe pipe,
>>   				 u8 *primary_pipes, u8 *secondary_pipes)
>>   {
>>   	struct intel_display *display = to_intel_display(&dev_priv->drm);
>> @@ -3703,45 +3711,38 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>>   		 expected_uncompressed_joiner_secondary_pipes(primary_uncompressed_joiner_pipes),
>>   		 secondary_uncompressed_joiner_pipes);
>>   
>> -	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
>> -
>> -	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
>> -
>> -	/* Joiner pipes should always be consecutive primary and secondary */
>> -	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
>> -		 "Joiner misconfigured (primary pipes %#x, secondary pipes %#x)\n",
>> -		 *primary_pipes, *secondary_pipes);
>> -}
>> -
>> -static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
>> -{
>> -	if ((secondary_pipes & BIT(pipe)) == 0)
>> -		return pipe;
>> -
>> -	/* ignore everything above our pipe */
>> -	primary_pipes &= ~GENMASK(7, pipe);
>> -
>> -	/* highest remaining bit should be our primary pipe */
>> -	return fls(primary_pipes) - 1;
>> -}
>> -
>> -static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
>> -{
>> -	enum pipe primary_pipe, next_primary_pipe;
>> -
>> -	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
>> -
>> -	if ((primary_pipes & BIT(primary_pipe)) == 0)
>> -		return 0;
>> -
>> -	/* ignore our primary pipe and everything below it */
>> -	primary_pipes &= ~GENMASK(primary_pipe, 0);
>> -	/* make sure a high bit is set for the ffs() */
>> -	primary_pipes |= BIT(7);
>> -	/* lowest remaining bit should be the next primary pipe */
>> -	next_primary_pipe = ffs(primary_pipes) - 1;
>> -
>> -	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
>> +	*primary_pipes = 0;
>> +	*secondary_pipes = 0;
>> +
>> +	if (uncompressed_joiner_pipes & BIT(pipe)) {
>> +		*primary_pipes = get_joiner_primary_pipe(pipe, primary_uncompressed_joiner_pipes);
>> +		*secondary_pipes = secondary_uncompressed_joiner_pipes &
>> +				   expected_uncompressed_joiner_secondary_pipes(*primary_pipes);
>> +
>> +		drm_WARN(display->drm,
>> +			 expected_uncompressed_joiner_secondary_pipes(*primary_pipes) !=
>> +			 *secondary_pipes,
>> +			 "Wrong uncompressed joiner secondary pipes for primary_pipes %#x (expected %#x, current %#x)\n",
>> +			 *primary_pipes,
>> +			 expected_uncompressed_joiner_secondary_pipes(*primary_pipes),
>> +			 *secondary_pipes);
>> +		return;
>> +	}
>> +
>> +	if (bigjoiner_pipes & BIT(pipe)) {
>> +		*primary_pipes = get_joiner_primary_pipe(pipe, primary_bigjoiner_pipes);
>> +		*secondary_pipes = secondary_bigjoiner_pipes &
>> +				   expected_bigjoiner_secondary_pipes(*primary_pipes);
>> +
>> +		drm_WARN(display->drm,
>> +			 expected_bigjoiner_secondary_pipes(*primary_pipes) !=
>> +			 *secondary_pipes,
>> +			 "Wrong bigjoiner secondary pipes for primary_pipes %#x (expected %#x, current %#x)\n",
>> +			 *primary_pipes,
>> +			 expected_bigjoiner_secondary_pipes(*primary_pipes),
>> +			 *secondary_pipes);
>> +		return;
>> +	}
>>   }
>>   
>>   static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
>> @@ -3813,10 +3814,10 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>>   		enabled_transcoders |= BIT(cpu_transcoder);
>>   
>>   	/* joiner secondary -> consider the primary pipe's transcoder as well */
>> -	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
>> +	enabled_joiner_pipes(dev_priv, crtc->pipe, &primary_pipes, &secondary_pipes);
>>   	if (secondary_pipes & BIT(crtc->pipe)) {
>>   		cpu_transcoder = (enum transcoder)
>> -			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
>> +			ffs(get_joiner_primary_pipe(crtc->pipe, primary_pipes)) - 1;
> The get_joiner_primary_pipe() shouldn't be needed here since
> enabled_joiner_pipes() guarantees that only one bit is set.


I agree. Additionally, I was considering changing the input variable 
name from `primary_pipes` to `primary_pipe` in enabled_joiner_pipes for 
clarity. Does that make sense?

Regards,

Ankit

>
> With that
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>>   		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>>   			enabled_transcoders |= BIT(cpu_transcoder);
>>   	}
>> @@ -3950,14 +3951,12 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
>>   	u8 primary_pipes, secondary_pipes;
>>   	enum pipe pipe = crtc->pipe;
>>   
>> -	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
>> +	enabled_joiner_pipes(i915, pipe, &primary_pipes, &secondary_pipes);
>>   
>>   	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
>>   		return;
>>   
>> -	crtc_state->joiner_pipes =
>> -		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
>> -		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
>> +	crtc_state->joiner_pipes = primary_pipes | secondary_pipes;
>>   }
>>   
>>   static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>> -- 
>> 2.45.2
