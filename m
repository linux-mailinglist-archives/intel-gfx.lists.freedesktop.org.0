Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CeeLMeaYS2oJWQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:00:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165DA71032C
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:00:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HK2C2Mu+;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A220010E929;
	Mon,  6 Jul 2026 12:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78ADD10E917;
 Mon,  6 Jul 2026 12:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783339234; x=1814875234;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rubEeu2BbGg5gOZ1RGjIUzY+aoRF9PQM6Y76SsnWJ6g=;
 b=HK2C2Mu+3ru1UswesEGueYfEwZWqgK3j9g4EI9uPG8vZWmaBQ9laGg/f
 MZJNDFtYjAKdGIjsnrZobupjxPhSZjeOM1jHgD8kqeFw4MtQtohC0fD/R
 8FTDHvGAjbBwXBji/Mf9DVW1WQntf0OWp55/AYrOaj6fWeDE906x4jbIh
 oqTNjS9nduxKVgFS2+adtPf6/2Eyiy0c/Jb1FP/2AE/2Gru/2s1CFRRoI
 xlfoqETXD9xIi5rue/TKy9HkXc87RyVjoJo1LuaaQvO+nDA6L3Lzhohky
 pMvUgTumOE5+s8CdqEnMZcx3fJxPWg9aANjDJPi++RIO+Y1T6RniYupXh Q==;
X-CSE-ConnectionGUID: WmW+O/OOQKCf+YRQ7zdpMw==
X-CSE-MsgGUID: S0Tzvr3ORg+hnZi9C1ciag==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="83833138"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="83833138"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 05:00:20 -0700
X-CSE-ConnectionGUID: axO713VzQUSUPg1HcOn8MQ==
X-CSE-MsgGUID: OWdxueDXQs63IK6ta2iT0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="258598261"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 05:00:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 05:00:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 05:00:20 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 05:00:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yWoGj09zD+UPgxWaqzDuANx/N0gwYe+aNg45csWbqFcjiHZF6KPnAirOkLbKev4kUn0dcXzVzQbE9rLOKLoH5KytnfQfwRCEFablmJw38HPXHv6xfvh7AtoZXYtg/YWXQV8lvMIhF2X25GR733oDBE81np+35Cxc6LIweFL/cU1bnV9zBUzEi0MJSG6VMlzizNq03NlHPZ4yJW4Onx6921NFbd1NZbvhDmtSZ7OjClEbfbz/8XZCTgp3s516jtfjt1oeRQJX3LRhWm5UfefACYUvVM4Lz6zJqXu7P3RqwJuhrJGdFTHR/BxoRpH6fC2mrjooR2QfjC8d99qJfaWStg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pEHMRW0+kit/2pZz2gN1zpWuppRi2INs4PkJORa7cX8=;
 b=fZlePlY2E5xRpuqdu0VMo8+WH6OIMcJELgNvRJqgZ3Iljzsa/BxbPlxCWNn8WLVV0k8KE9qwZJqcte39oj1qrIKs0sIBXMC9rH2b2PSRI4fjYAuDn4vUKWla2ndWVcnK70TB70UhBU6bK8lG1KrMhF98LQIy4NkWCtLZrgdmp89LFLTgtr3c0SlEhtN5dp/FbaG+ek1Jlyj4ly+mgrZCzop6S30ozXCBRBCirtTsah64LLC4QR2xp6sHp0D3L3EHPlIeAsqVvRQZCNFqyz8qUQqZhME2+5hgEitYbAlHSIKEulG2La9TAmw/qgjmpLvkvg1+O9oRlR5l2RnOk3c/dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by IA1PR11MB6370.namprd11.prod.outlook.com (2603:10b6:208:3ae::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 12:00:17 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 12:00:17 +0000
Message-ID: <2ed5f440-3c53-4df5-8897-48ee0d8bd7d1@intel.com>
Date: Mon, 6 Jul 2026 17:30:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/11] drm/i915/vrr: Enable cmrr
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ankit.k.nautiyal@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260616144233.832276-12-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260616144233.832276-12-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0122.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::14) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|IA1PR11MB6370:EE_
X-MS-Office365-Filtering-Correlation-Id: 72068cea-656b-4557-abb8-08dedb56256a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|4143699003|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: KGxcJf1McqY0dlU2lKrAQ/r2xCr8Kmncva+48w0eXBB4USY6x4L9DPSWTlcs4SwfceiPo/CHQIMSiktW6Msn1xrmZhavoyll+YwQDaclQQU9nuTVom26XuGpTq0i9uQzrmEIhUOxcPeBDUSZ/JiHTG1g6ZaFVNMUdYD90zkyl+3G37lZQuBnA4EIAcCh+8lJ2dHlq5AmBfqjxxZVRzMyP8MjZiyWdht2Zurb0ogsSuBVQxyt9WOd45CHtGJ/gMs7GysEYiKGtcKT4HfVEI/HFtamTID39sIR6BroqVoY5EYJ7mPwEClVpelBf++nZD9mldFZVxYGneDPVwSQxHFjEQSmCDtC0dwrYm0GnAATs/4qQ5KxxpKyM28xCI/ewUub7ZRb7uvEDF79wKeCotmyPx4y/0Y29Udev0y1J0IYno88dS8vzZVhZ5fk0taT2/KPBE117zoCJzY95q/cz20+JvnWvUfvkAZLm2mIAf2TPS60ySqYR5Qo5iKpkSkd1YxqhOZugm2b4HDH4ZQQs3fYqCFmJVCfmyvgzujsCoVeV17vssdDTS7ug42TBUKjNXr3v49RrCAyNed1JGiVSzWIUAXivJxhprTE/uW/6vrop1IiEETXkV+vhho68Wvy4VITDpvZAPLt8nQY7Ds9jlOMJx0UWVptbyPjd45hxAvD2Yk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlFTSHR4cHlXVzZmT1BrT243dHBaSjdXYjhZRDBpT01VRmlqbWlYMm5rbDRm?=
 =?utf-8?B?QzJZc04rMStITEpmZ0tOVnFETTFvMGlzT3dibXBPbTBUYVh6OGQvaFNiK000?=
 =?utf-8?B?Z1pxTUJyY2tPb2xUMFJTR2JjaFZKS3ZDQldzeC94UkdKaWlKVDVQN250N0pI?=
 =?utf-8?B?TjdXbFBNZW0wbGZOVDlNbFB5WjdBcUNtVGptdHRJOWhYSUZBR0c5ZjBmOTdl?=
 =?utf-8?B?N01rZFFzQk1CUHZnU3Z2T0h0OE9mYVlmUTRncFF0VDg1UFdoQU10dmM0MFJv?=
 =?utf-8?B?UnZFVEI5TzFhWUxSVTFFcDlGTVcrVkRRbzI2MXJXd3ZoS3JyVlMzalNrYThk?=
 =?utf-8?B?T3dQZTFCSkJ0RGFPQTBWUEtZcUpHdHBJTVZlUE10N2lHS0VDYXhQOHlYRklk?=
 =?utf-8?B?djIzWTNicmQ4WGFMNTdqQ3ZkZXIrUlNJYnpVMVlFNGc2NXlpL0tVTm1Nc0g2?=
 =?utf-8?B?a3dxeFhXWU1ja3JjK3R0MFBCV2tZOERHZkJvdndyN1p6T1RaZXZQWFNhdnBh?=
 =?utf-8?B?ZjZwSGhoS00wY1l6VFo0dS8vV2p5SzJZcHZjRjlJbjBlWUZpd0kzeWVpSHRk?=
 =?utf-8?B?dEZtN0lDSUZIcDNHcmFTYWlMdG1sbEZzM0RKRWkrbzVnd1UyUmluejZma2Yy?=
 =?utf-8?B?TnZibUdFVnhVdzErd21UWHRzdjZKb1hybGl0dk53OSsza1poa1hHQ21sRURL?=
 =?utf-8?B?OVRBcVZZZTU2cmpFS1lXa2N0OGtkMlJJbGhVb2ZTa1FTV1FLS3NFUUlRRkhw?=
 =?utf-8?B?OEdnWWVkQWV0WmZhWG1XTUNkcFhVeWdqOVdxalgzUHZta0Y2M0F3ZGtnZE5O?=
 =?utf-8?B?bklsVlJvUjBubWpodmxBWGUxK0dGSnhrb0x5dGN1VWJLMDFkdGhpaHllSndi?=
 =?utf-8?B?Z2QzeFdRRWloNkFDQWkwelM3bmxGOGk5RnB2Zlp4enZFb1MzRDk2QnVkbzM0?=
 =?utf-8?B?MmYxVXRhYW95eTZvRGJkK0dCemFBaGhEU1dzb3ZwUHpleUViVjdaMjQvRGJ3?=
 =?utf-8?B?Z1J0QVovUGhId1E2MFNvclN2aklSb3hHZGM2UVpld0lSazhaOFd1R0JCcGN0?=
 =?utf-8?B?enJwOWdhZVJjMUdPcGV2cllGWUhubFVLYTFoMFZ6TlZ4N2ZaR29CYlo0L2x0?=
 =?utf-8?B?T2cxbXExL3FxS3MvSW44Y2ZyZEVoZGp2anlza1BUZS9YR2ZEVE5Xb3MxR25N?=
 =?utf-8?B?dUxVb3M5SUhIQjBralZQTWhuZnZTeHJjbTEyYmx0UUVVcU5JWTU1MmZpekFY?=
 =?utf-8?B?NUZvUnIzd1grKytlRjB2dWE4TmMzZDdNR0FNM2EzUFpGN3FrWWE5cEE0bUVR?=
 =?utf-8?B?QTloeFE4b3hRQWN5UitlY1NoRVQvNi8wYmY1L2tPS2FKRFc4S1NVdnNpNm5G?=
 =?utf-8?B?N3Bmcm9tRExWVXZOYTFWcFI2NVVBQnZvT05ydlRBcURvQWRRdkprSXZDdDZn?=
 =?utf-8?B?bWpiUVM3NzZoR25uajAxNnY4WHJlbTloa3RUS2lGZUlqTXRxQys1VzNOZjB0?=
 =?utf-8?B?RGc0U0lQanYvRS9NWjByV1NHM2hhUlgxalA0Zk5FNlZkY29RZldhMC9OSGtD?=
 =?utf-8?B?ODhlU2Nrd1pqRUZ5bkJIM0dWcEkyckRmRERSZzl1QStFQ2RvZWJ6NktkdS9z?=
 =?utf-8?B?azFCTEdDVVJpUkZFMUVLSDN6YkNoeTlBckhZaE0vODNzcy9XTGRrOHF4U0N0?=
 =?utf-8?B?ZlpKR2hSTUhva2VzeERRYk1Cc2xRODZzTEhiOUpFYXdFbElYMkl0bVRkc3U4?=
 =?utf-8?B?bzVIYnNOWlZGYTBIcUtwRUVJd1IxWWsyK3UrN2VDMUZkYmVvTnBNTURqaWxM?=
 =?utf-8?B?RjlBQUtSVHNjd2ZkV0Jnd2thQ2pxK05KeWc0dE1HUitjTmcrdzN3MTQ5R2F3?=
 =?utf-8?B?eXFEU3U3cHVZWkhnMm5ISjA2eEc0ZHgvNlhkMWVMU1dnOE8zSW91aFRXOUxv?=
 =?utf-8?B?cWFGZWFZRGMwU004YTRJcGlMWmsvU3VhM1BKWVBvdTIrVFhrdXVtdDQ4T0dY?=
 =?utf-8?B?aEVLN251N0hDTmFjblVxdzlZWnM0eWVaUUIrUEVVYlFJWXFHT0tab3B0M3lh?=
 =?utf-8?B?c2ZCd1JhVzRkSENQQ3RuR3Zjci9ZSERvSkhoQUt0RnJkb1dINUp3OTM0bWI5?=
 =?utf-8?B?STRDNmh4bzNCdUxSZEh4cm1BcFE3NWVremRmSFd0NVdrRWRTSmVGaDMraU1a?=
 =?utf-8?B?M29WWXhjZ2M1M2JpR05HQktnVjUyT1dmTEdSMUNJSVZaZGtOZXpQZEZnUlhZ?=
 =?utf-8?B?cnl5RzdVek5JSGxUV1NycGEwdmprVm9uVmE0S1ZDbTZkNnNxNjhxU0FqL3Y3?=
 =?utf-8?B?MHpkZWRWYmRuZjk0OHljUENERkRMa0RuVG5GbkdjSHBUVlJiaEtnOEZhSmt1?=
 =?utf-8?Q?zH1jFgSZXz4FO1rs=3D?=
X-Exchange-RoutingPolicyChecked: BrGfTH1nnS46meO9LFlS67HHhBKzjst/5xYn1H+U28J20GfYq+4jg3KzDn0CIPWVxWfHIXTFiwH6LROaSTk4de616cArrNcKgjW6oKnjkS0rEc9ovM0AIg/gF5GxbB5eA++71IKel077Wk+Upi9YPITNI/iBkPFTwuN5DVeLJJAkU3dNBWQYtjZe47fKs95Kk3abXwfIucq2K8IPmFvxIbMO+TFfkOXreZZIUNIboXClgNzVmKZu1i36hOaN9RL7ceTy8773Ao367G9By4nbmZKvWgtK4B7U+9l0DKPkls/1Dvwu9+hDthI0T7I7n3U2fley+2Rcsx8Ii1yeOcDF8A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 72068cea-656b-4557-abb8-08dedb56256a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 12:00:17.7770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1o5OKltgmeLCYxdjuf77Z/W8UMvX2TYTMYOtrV3QhBVmX0V9TyAy/kKTGIKYTTJb650Aj7Q5u7P0fMbkTft+PocnY+1YuJG3eGxkjHd670U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6370
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 165DA71032C



On 6/16/2026 8:12 PM, Mitul Golani wrote:
> Enable CMRR during compute config and add related state
> checker for the same.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 2d5f0f17bf3c..9ef559195c68 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -285,6 +285,8 @@ intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
>   	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock, 1000) * multiplier_n;
>   	crtc_state->vrr.cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->vrr.cmrr.cmrr_n);
>   
> +	crtc_state->vrr.cmrr.enable = true;
> +
>   	return;
>   }
>   
> @@ -876,6 +878,7 @@ intel_vrr_enable_cmrr(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
>   
>   	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>   		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_m));
> @@ -885,6 +888,9 @@ intel_vrr_enable_cmrr(const struct intel_crtc_state *crtc_state)
>   		       lower_32_bits(crtc_state->vrr.cmrr.cmrr_n));
>   	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
>   		       upper_32_bits(crtc_state->vrr.cmrr.cmrr_n));
> +
> +	vrr_ctl |= VRR_CTL_CMRR_ENABLE;
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);


This patch should only enable the feature. It should not add any new 
programming, previous patches should already handle them.

Bspec states that "TRANS_CMRR_N_HI register should be written last in 
this sequence of CMRR register writes." Please confirm if it also 
includes CMRR enable bit in TRANS_VRR_CTL.

Also, this is still true from v1 :

"The target rr divider bit is always set to true in
intel_dp_compute_as_sdp(). This is wrong for non-video mode refresh rates."

Please add change log in commit messages wherever applicable.

==
Chaitanya
>   }
>   
>   static void
> @@ -892,11 +898,15 @@ intel_vrr_disable_cmrr(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 vrr_ctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
>   
>   	intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder), 0);
>   	intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder), 0);
>   	intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder), 0);
>   	intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder), 0);
> +
> +	vrr_ctl &= ~VRR_CTL_CMRR_ENABLE;
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>   }
>   
>   static void
> @@ -1138,6 +1148,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   				      TRANS_VRR_CTL(display, cpu_transcoder));
>   
>   	if (HAS_CMRR(display)) {
> +		crtc_state->vrr.cmrr.enable = trans_vrr_ctl & VRR_CTL_CMRR_ENABLE;
>   		crtc_state->vrr.cmrr.cmrr_n =
>   			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder));
>   		crtc_state->vrr.cmrr.cmrr_m =

