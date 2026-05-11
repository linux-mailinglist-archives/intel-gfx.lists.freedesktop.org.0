Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCbyMC8JAmqknQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 18:51:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34621512AE7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 18:51:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34D210E54C;
	Mon, 11 May 2026 16:51:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BhKETF3n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F7B310E1D7;
 Mon, 11 May 2026 16:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778518315; x=1810054315;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eRbc9hN1LBGE/3DSyI2K3YLu5uG6/4HJMjiCHjytWDo=;
 b=BhKETF3nEWj1VkitpwrJ0liahVWc6K3z1MJ7wWYUCeVEmNa+2XQhg+oV
 1WFwf0VoXa7dqEXQaL6oG6DCyDE+EJ4TdoGsdm841MEmd5Y6ytBmN+YYM
 f8cnZMQyAwa3ML7VviuviGmvOUr2CYEihM971sHL10M7qus2GKyG4RbJs
 8/hTPAsWPtTzAp5FjmVoP77xNGAz3GcIZcPqYrj5Kp10B7bdjhGTSaMIO
 HbOOAnzGBuYjWya2rtztjh9qVZQyhpByERExckwRaNf5hcKOB9jKvKaTn
 vZ1bOC3KzloekCDYxFja6bC9N4y6FuRJ3G3wCxa32J1D4473o+ugq4TyP Q==;
X-CSE-ConnectionGUID: SlW9R0wxTAqU0N3Zp5pvCQ==
X-CSE-MsgGUID: wolZfk13SHiclG32Ktm+Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="89997834"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="89997834"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 09:51:55 -0700
X-CSE-ConnectionGUID: O57vlElMRISx/0bB2aMAYQ==
X-CSE-MsgGUID: PVS9gLNcR02a9j6+BAX7Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="242507864"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 09:51:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 09:51:48 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 09:51:48 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 09:51:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O0aeL/2PLwRBQbNKkuHnEIcM1UBUiCoGD2t7ekiztyqpGvFk4V6PBZsRIVodbsutEK3/CNixL+GdLLsmKk51miADij0b56cymuPGH8dAoTor9rxiCmGpZ7xB97d6Fq9G21wsPTrjiZjM7hC1Cd8DlOmrnKpNoEYm0pozIpiwgBSJTkCfxc5A1JX++Y0OMr6+oT+WW74Uk3V7pbccl1K4BOBuEOzD5vp5t+iWkLV5SR14e4xNircthRss5LhCzhxP+H7K0vQYNi1U7yOGa4j4FgD2t+CQsY9kaZ+Uw88PiX7lNQJs+lrU2u4HCYMyPJpIoJ9V8UeWzPbjlg9E+7VzyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mcEETMdFBo+0cjybSKia/D8zTEkFkA3W1BxUS2KQ0es=;
 b=QNL2lOHEs9193WKzXG5FL4ajdXqr58+mmyE3Pz1kupKO9cyg2hVGg8k/szR/0G43ciROqbTcUu6qvos4yjZ8L1cBtyFv9NsiNsch+ksA+1iRfWnFdhlL62tK/rVJWadnf2diWHJTDK3kNrOLJ9ef3sefQIB/ozQmjvsFtTO6hMv/DUyk+0ah79L8JvO3r3r/mIXh+zU78np2tf/sfxDztJ6wIOvNMh8xCr51+CYolXZ36Rypiv7G/AKRELf4VxnaSKyljDUaeOeRZulIpTgs0Ho1WVj/Tpy/ZN4XCx+p6BbKySHPZzBIICy7MibRGrDO7HIt7Opp4R1lo2OFfWQNgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5232.namprd11.prod.outlook.com (2603:10b6:5:38b::14)
 by CY8PR11MB6915.namprd11.prod.outlook.com (2603:10b6:930:59::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Mon, 11 May
 2026 16:51:40 +0000
Received: from DM4PR11MB5232.namprd11.prod.outlook.com
 ([fe80::2ddf:5a8a:8a8f:c429]) by DM4PR11MB5232.namprd11.prod.outlook.com
 ([fe80::2ddf:5a8a:8a8f:c429%6]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 16:51:39 +0000
Message-ID: <6a1d98fd-21d0-4f9f-88e2-de7a230fd9bc@intel.com>
Date: Mon, 11 May 2026 09:51:39 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: drm/i915/dmc_wl: Remove macro HAS_DMC_WAKELOCK()
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260429-drop-has_dmc_wakelock-v1-1-62cb6fab1da0@intel.com>
Content-Language: en-US
From: Daniel Charles <daniel.charles@intel.com>
In-Reply-To: <20260429-drop-has_dmc_wakelock-v1-1-62cb6fab1da0@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0076.namprd03.prod.outlook.com
 (2603:10b6:303:b6::21) To DM4PR11MB5232.namprd11.prod.outlook.com
 (2603:10b6:5:38b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5232:EE_|CY8PR11MB6915:EE_
X-MS-Office365-Filtering-Correlation-Id: ab53f88f-f82f-487e-c048-08deaf7d927a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: Scx1igIzfzF7YcoLSvZjlZNT2q9USlYJI7OM91cHbtso/Q8sO1EEHYIdD6RKApj8nhpsNtOt+Qs0BGtuVb3JGdPJbKRgTF8XLB4FuQFDe2T9erh99Yqk6XmfkEtLWUqPhUBJc919K9vTgXorEgOB6nbPTzIOHlaVveFSOs4Z12qz+oPXQ8qpPsn+ci9r7LHBxdjq1R7mSY6uRJnK5SFLC0WhWPvh1VCy7YdRlDgsIoEYdlKqiogKczpjSIXx8VtXYf7NjYXPYcp7t7/sPLA53oqFCu3dr/2967Tt+JTrJQp0Za8Ze+pab6PN8Frt63JRRIHofjfU636rpZPBfn+iwFz+iYUI/ZFg11Yvv6OrLsZO9nbcCnP60dzhRUs0X9ItP0Qrm/aLshtzhwoNJRwB7THkWlUT+QmTVHfFwIYVTyXc7fcx79RFAgFOv7TwQNEICeAhaN4eQLPRRTuakTeLTEceVbq4CMloKtqPmijEmjkOYOpCBnupUO+i5uGvIA4egDVytZcMPgaWhm39Q0ZwaGZdSzAV8QAyx9wn58rWYu7N3r9Q0sNaAvm/YDsWbmXRn1sr5JnW52bP3MkLws0nqsQoikX+l0qDMt29CWI7SZWdSZLmzjlh3R2JzluMtToDx5eoBaVNfov6CO3yE+bOrZ1+JoQa0ZZVnChjrLuujLzjklzBIPQS0tz9Ddi30dQO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5232.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVdSd0xnc1FpaFROR1M3Rlo0Q0hmQnNRR0gxenFhamtJUlNBWmRvK0l0REho?=
 =?utf-8?B?NGpzNnFwbFlsUURIeDFNcDFDUVJQTkNIR1BvZkVENGJHYTFiUlZTK1lPNWxi?=
 =?utf-8?B?MGJUMEhnM3g2YXN0UTg4Mi9XcGs1aHNadlhhV3J5NTljM0JCaU5tUU8yaTcv?=
 =?utf-8?B?YTJaOUtKaWkwbVM4emg4YkF2cmszNmtYSXF6V2ZtaDVSbFlMb2pJdkxSakJp?=
 =?utf-8?B?bTdKZHVDbXAwTFdQcEFPcjI3aFIyMlNTK0VYL3hpSTJXbmFLaFQvdXZreUtv?=
 =?utf-8?B?YmxWL0cwaU44YVI3MGczNjMwcmE2ckNoWno3a2tFVzlkSG9HNzFBVllPU0hz?=
 =?utf-8?B?STlmYkZ6NU5VcjAvOG9vc3gvVmNvbEhtRTZWNUhXdzBGTkh3aTRkUEVQbjVU?=
 =?utf-8?B?NDlIOGtBc2JFK01OZVEyWFNuUmYvOG9FVUhnZVhVVVZkbTY4QjNhcDlUazNa?=
 =?utf-8?B?WEpQT0ovcDNGZlVJOGRwM08zNWFHUElFZzBUamRQSS9WbS9MYTFsaldqQy92?=
 =?utf-8?B?TDNOVlRxVDhxTUVOYWtLbGFmcXpmSW5sTzVFQWNPU25ZL1MvM1E5elJwdU5B?=
 =?utf-8?B?MnJUdXVOak00OXdac0Jkb3hmZ3Z6RmdKalYrR0VxSlMzaW1yTXdsREtJdm1p?=
 =?utf-8?B?SlRvRVVuOUdtaWhUYmpPM1FNVFpqNUNCeVRyK3BFbFdvRDBtcUVZWmJ2RlEx?=
 =?utf-8?B?WWN5MDFZb0tCM2I3Mmh5L2czUjVzTjdWUG5yVHJuS3JLdFRJV2c2d3RndHMz?=
 =?utf-8?B?TW5zZjczbWxPUEkybC84d29kdkNucUEvdWJneEcxYmtmamVxdHd0ZGFjODVG?=
 =?utf-8?B?Q1c5Y0g1MHVZb3g1QUJHemgrazZpWXhzMzUvT0syejZ6WllOQmtENGNMQ1p3?=
 =?utf-8?B?VlFDcU9IdFVhbVZoSTJPU0phMVNPRUhYWTZPT2xoWk04TmZYd1l2VDFyUlc1?=
 =?utf-8?B?K0hSUnk5MnBxNy9QZnNwS29WYzgrV28raFU1aVAxVTNUaUJoZU9tN2RIdkM0?=
 =?utf-8?B?VUdDSEhZRTRScDFtWjhuN2lyMktaS0d0bklkaVoxalprZHpSaFFPUkZlelRV?=
 =?utf-8?B?K0hiVXpudFh6OEc3empCSld6S3VKUXl6ei9ReDFlcU5MalVYWFV4ZVJ2ajZ4?=
 =?utf-8?B?YmxCcFBVV3pBY3gxbVcxZUlUZ3VYemtuYkhaTGZnN0IzcUhSRS84eDFzd3hj?=
 =?utf-8?B?UEg3bUdhV00vNkEvV0F3UktBdFY2cWhRWlBCSzBETXV3ODk2YWEwaFJUSW9E?=
 =?utf-8?B?a01kNHVsZ2VtbGNYVVE4cDl5cll5OEo5bVlIOUhYUnNXcXd1SUxrcVM2SDFh?=
 =?utf-8?B?Y1lxc2h2MCtSVnlVbmYraFk0Ukkzbnprek9rNm8rQS9IVnUySDEwWkdjbDI1?=
 =?utf-8?B?Um5tQWhaV0QzVkIxemc0Q3NPT0c3NmVMTFQ3N0dPbHBSd3pLRTlLTS8rVEtB?=
 =?utf-8?B?anRsYTBzWW14ajMvM29EZ0NJQ2JNUlMxeFpObmo1MUFFQVZpVm9nU0hSUXpJ?=
 =?utf-8?B?cnM3QVpQYzNRaXRBQUlYNXpsb2pqbXdHUnVsQ1FsODA1VlUrc3N3UkNjSEhp?=
 =?utf-8?B?bTRIdWpJLzhWY2lWUytuZGtvbzBheFhpWDBaenBnejRGOG5qaDRVMnBFUVFm?=
 =?utf-8?B?MklhQUhkaHl2QlVFK1V6SFZBMFBHMlJHc0pWTFZLQW5haCtZcFJwZnR1ZVZV?=
 =?utf-8?B?WU54dk5ZZHdWN3dDUVVxenNmakxQWnQvV05EU2JVUitGMC92cWZaQlkvRDdV?=
 =?utf-8?B?R25lcUFmUjhweTFmUGtScTNPQnAyNytLQnN0R0VYaWFlbm1UWXh3dFp3U3lG?=
 =?utf-8?B?dUg2ZVBYRFBMcmhLOERGUDdXTnlFUlhvVHhVdHhsL2ZvalIxNW90WkMzdjRa?=
 =?utf-8?B?TVQrM3I1djFSSUZaTCs0YmtWMUpBRVBkczdtZ0pkL0I2ZCttdW8wN2tNNWpm?=
 =?utf-8?B?emprU3RwTGhhSGk5bGRBc0JXWTBJODdDbnJMV0Yzbk05ckR3USsxaVd4NVdx?=
 =?utf-8?B?K2lyaHZqTFJIdlRKZHRSYzZYWnVVVWNvYlhwSm5GczFHZ1l3bVN5dGdrUHpP?=
 =?utf-8?B?YlVET1ZhREhnVVlUejVqZFJyNHF1TFdaQlpua2M1RzQ4NURKaDgwLzdRa08w?=
 =?utf-8?B?V2tsZVYxb3hRZjR3VVJ4NXhRRkhLdEtmdUdOdU1iMGtST1FsSUlZYXptaXJI?=
 =?utf-8?B?WnhmTm5EMUR6VEhnQ2luOEIzZndCMmlFSmtsenZtbHF1anQwRlRWaVBPc1Zk?=
 =?utf-8?B?cU0vbUs4cmhKVHdLQUJsYnVWUU56VE9DcUo0eGR2Q3BJNy9wR2ExcW5IejFl?=
 =?utf-8?B?TUc0dFR3MG9qUWtjcGR1NmlPbFlTMGpGOVJkTDQxVG5lMGtRWVhrYUt0RTAw?=
 =?utf-8?Q?hCFXtHbEK2OJOdjE=3D?=
X-Exchange-RoutingPolicyChecked: wY+S4eBNK7j44Ccup1VJgXYgiPUJR1kr8+vB0VqC/zxlSRVXbCtkL0gKqE/EnCjELvnqO/a5bke/XvyGZy0oa8QxrCWfM3/w1vxFv31gQ2p6EqUQfcN346BpdUMCnrSiR4K+50Mlgea1sK1ZiapWLoEi2pKNMbpb/DfMJ4to/yqTUAAHv5FFdz7/0DrEy5lq6xhRbPJbYhDUpZf7EariVPYUUpqpKtrncSlrc67Au9nDNv+8Wt1aQlBzBpHXmTCcHsVTEDeyO0vrZBROrOSOMxoeOA5zppFn5/P7PLTbjom9q7ojqzO9us919rPSOH/ImGsfPJ4nkbxrXPqeFVCN0A==
X-MS-Exchange-CrossTenant-Network-Message-Id: ab53f88f-f82f-487e-c048-08deaf7d927a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5232.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 16:51:39.8678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NYEevfK7Bp+bQ0wGQlHfvDfKMUYjPPV7nvdcwcp2Pkojy2KzpNPJRuRn4m6Gk/ZaWhFkmaKw7/+He58p7H5eTag7pq/iZabqxZ8XDwfgQIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6915
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
X-Rspamd-Queue-Id: 34621512AE7
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.charles@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 4/29/2026 7:26 AM, Gustavo Sousa wrote:
> The macro HAS_DMC_WAKELOCK() is currently only used inside
> intel_dmc_wl.c and doesn't need to be exposed to the rest of the driver.
> Furthermore, there is a distinction between the display IP having
> support for the feature and the driver actually using it, so using
> HAS_DMC_WAKELOCK() outside of intel_dmc_wl.c would potentially be wrong
> anyway.
>
> Let's drop that macro.  If other part of the driver needs to check if
> the driver is using the DMC wakelock feature, we would need actually to
> expose the function __intel_dmc_wl_supported().
>
> Since HAS_DMC_WAKELOCK() was kind of self-documenting in the sense that
> it tells us what display IPs have support for the feature and we are now
> dropping it, let's also take this opportunity to add a documentation
> note on the subject.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 -
>   drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 9 ++++++++-
>   2 files changed, 8 insertions(+), 2 deletions(-)
>
>
> ---
> base-commit: 9ee30ac229d686465b572e6404250178b28b616b
> change-id: 20260429-drop-has_dmc_wakelock-e939d11588a7
>
> Best regards,
> --
> Gustavo Sousa <gustavo.sousa@intel.com>
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 074e3ba8fb77..12e5a522a299 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -162,7 +162,6 @@ struct intel_display_platforms {
>   #define HAS_DDI(__display)		(DISPLAY_INFO(__display)->has_ddi)
>   #define HAS_DISPLAY(__display)		(DISPLAY_RUNTIME_INFO(__display)->pipe_mask != 0)
>   #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
> -#define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
>   #define HAS_DOUBLE_BUFFERED_M_N(__display)	(IS_DISPLAY_VER((__display), 9, 14) || (__display)->platform.broadwell)
>   #define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
>   #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index ddf1a1f1ebc3..7769860e17ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -39,6 +39,13 @@
>    * current implementation, we only need one wakelock, so only
>    * DMC_WAKELOCK1_CTL is used.  The other definitions are here for
>    * potential future use.
> + *
> + * This is available starting with Xe2_LPD (display version 20) as an
> + * experimental feature and on Xe3_LPD (display version 30) as the
> + * first display release with official support.  That means that we
> + * only enable the feature by default on the latter and using it on
> + * the former requires explicitly using the enable_dmc_wl module
> + * parameter.
>    */
>   
>   /*
> @@ -286,7 +293,7 @@ static void intel_dmc_wl_sanitize_param(struct intel_display *display)
>   {
>   	const char *desc;
>   
> -	if (!HAS_DMC_WAKELOCK(display)) {
> +	if (DISPLAY_VER(display) < 20) {
>   		display->params.enable_dmc_wl = ENABLE_DMC_WL_DISABLED;
>   	} else if (display->params.enable_dmc_wl < 0) {
>   		if (DISPLAY_VER(display) >= 30)

LGTM

Reviewed-by: Daniel Charles <daniel.charles@intel.com>

