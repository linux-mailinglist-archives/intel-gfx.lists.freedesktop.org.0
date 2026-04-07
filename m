Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKm1LTvm1GluygcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 13:10:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE233AD823
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 13:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62AAB10E3EE;
	Tue,  7 Apr 2026 11:10:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jzPubr5o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 520D610E3EE;
 Tue,  7 Apr 2026 11:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775560248; x=1807096248;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gNr1ArUN9x37GVGkVhuS+ZHwmulb6+69xgdx3Xn4n2g=;
 b=jzPubr5oz8YQm9mdkMwKM3ZHUVo2cQvkmCKUuKYzxgwyWE3O/xeW/Ul1
 vufPrcnYYEr0+SDe57qYZfHbSzJeYeRqdZUn41Rsj5hEU1Mjk3TtVs/aF
 7Rp/itUqjsMY4K2Q63fRPEAkAE8ebXgrHJ0OyU/FkyB0zxTV7UJqujWg0
 y1CLhzKVPJih+ISOWwxSxpxxFaqv+ho1JM0mb4Oc/c8CGR52BHQ2xxENO
 Q6IyomoVjgItCwGVoRm8ZnnF56F7q9mb1loLRhMA2Q3rW/VOStT8YA65G
 /mnb8B+XpjFie3ma3Quv9q1u08kgVxtbkgqTsAl9uyKN2hnD8FcAU6k2+ w==;
X-CSE-ConnectionGUID: dchFcqz8QJy0fEEbQoiVwQ==
X-CSE-MsgGUID: 5+NYf103TpupyMW7ixbDiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="86812352"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="86812352"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 04:10:48 -0700
X-CSE-ConnectionGUID: QgXVduBJSTGrtKsvUMyPTw==
X-CSE-MsgGUID: tb9dT4s8R4yxpNDCQomCug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="225385434"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 04:10:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 04:10:47 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 04:10:47 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.2) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 04:10:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aAWkK59GLgJBceifC+PCIh0WFR4sT0wGYxYVNkYcr9xtzrqcusK9TfCCCdYFsGATVSOExpDznGbJfOaO2El0kBaMRiVud+IUn3BVUNW3sn7I8klzZlPXxwzENVmGyg7O09FVYDdMKu8t4EZLGSQbAdpQLhSnmIy0PO5PU0VYZFlaLsmCcAGusBGQVWS5UAjw2iU7lyAWbsV8KaksK1sglWKsHPTXghpHMpmbzCwszwzsgoL9tJb0Jnd4Q2RsHQfymBcJjXtWSWGWQF5ndJRiOzGvS4Qyw7gzbzkXqIrXZ3E5oKarkHp1T7bowy7QZdItiSE1cSCk9WJPpXy7ixN/Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bhu+IR9V+k2yf3UK4u1ywF9jyB1BF+7haYnUfrcEkLs=;
 b=Lh78+C+kJTTbyDfV8IDjB5KMJsPbGuZnLRDMH5O6QEVMchjFAW54FQqHUeW1BYjizj21O2ozV0xXM3psdRaNnxQNOZ/FFKZcYe+L+Qei4BSmyjObSZ+aXP9gpSpPK4s7bvSBzLINja9UmlVhYY7RpQ4cvIowbSt7s68jgg2MwupHqT+EmlKRL7WObLc9d5LCRB0XhitUHRk+DpCz+Zy5mqt6VnKJHykSE432l/HM0CMOsRtfeDonlDIdN1ciAlY6D7qFcsdbldkCBr8JX40jycWktigjcFp/EC+hOiizBcoQ+p5u3m+okUFs9pXWHDYbBDtFQalAS1bAVhnvjA8r/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV2PR11MB6072.namprd11.prod.outlook.com (2603:10b6:408:176::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Tue, 7 Apr
 2026 11:10:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 11:10:44 +0000
Message-ID: <8830eb0d-a161-44d6-805d-5f14e33ff031@intel.com>
Date: Tue, 7 Apr 2026 16:40:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/backlight: Fix VESA backlight possible check
 condition
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20260401034332.1321585-1-suraj.kandpal@intel.com>
 <20260407030710.1440046-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260407030710.1440046-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0001.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV2PR11MB6072:EE_
X-MS-Office365-Filtering-Correlation-Id: 83327da8-9b37-41ed-fb42-08de94965004
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 25fV8Z28AI9nKoD4+33ErWdiw2MB3VJjFkqKH2i2BnMSt4xzXdgZoLmxey771vR82KerqGhZ4a6uOuhzVZkjBgrQK6iuoBvnpcHxDfOzzdfvzydSMEI120T83j3zgDjOOBu+BuvCFYWdZS6b2rf8Efe7NG+2EyXkOg5WHzmX5K52dASWeoof6LBuoMQ3jxrsNJbjgGFN4xRtsIFZvaj+JE3n4kUiTJuuwvGeT2l4w0nVKCe4ko1lkr6hte0Dx3V4XmTeTdWYeDPhiW7tg/n9OLPl0/M6XEhSRHaYb2vOG8lQymeCYDOfDsXzWdD+TDJ0nKWnv4t6CQYSCGjDuqW2gZj+Nib8kX64Eq0XT9VkmQl6vPjrhJxxtGhYZ764xVMUqsuvM5Yo5yPl2RtpL+i0Nl0lLlkSOoqtxZaazRHoZL3UkO5NoYLqh28LHDPWNrqfaIW7FlCbwRzCbdD1u2TX7MuUFxrNfkUn2//hiGODpAB9R6sv7lkzugFBwhZnfo4yMJqLOwVN5d90szFnkoGRGUe6jAjpHW3Jobvux8R+7pGpt4k4X41CBN0oBCEapbDWtR0Bj/yhUjd/aRxIsX7KsIwif49CADqms8zQspPoVaWR0mtKBYv40og5q1iV7rqi/fIIxsmSppJzOLud8qYNOoHsKl8TAR3gjfjSoZBeyxk4fKugfXxVp67MPx7o71b0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dEs4aXJtdEdCUStuTzdOKzlabzBtRmY2NGZTVTVhRGtpckVkSHBsdmJCTGQv?=
 =?utf-8?B?dENKSWlGNDB1UmdZbXgwbHlTd09teWo5N3dZVXFJWldqWi94M3dJMS9iWG9x?=
 =?utf-8?B?UXpzVktxaWE1RjZmTTRaMGFEcGNHVmdLYXJ6QTFTUVNmbnpYVis1aDlEcE1Y?=
 =?utf-8?B?TzlKUUIwb1FDSExXS25ETHhOQUxwK1lLZCs1ajJjZUFHM2M5QmlvN3BTVXdQ?=
 =?utf-8?B?Z1lldnpMRWhIUDBzMFpEQ1FGb2dvYzE3TTRnaWxtdmx0Y1EyR2NtZSt1ZjB3?=
 =?utf-8?B?NWZ5UFNySGZnTzFnczZnTWU5ckhyNVoyRkNwYlhpUEdmTG93QVE4VDhwQUpQ?=
 =?utf-8?B?bUt4d0tLNlFCQW5FKytyU1E1RkQ3V0lKcDE1VWpQUkdOVFpwU1NCci9HbWR0?=
 =?utf-8?B?Q0RtVFZpWXpzTk9NaHRJekZsMUlDREgyU1hKYnpZc015MFNJYk5WdWl5MzZi?=
 =?utf-8?B?alZjYmJCZW11ZFJMZ05iOE1JZ0kvR1cyWi9RQ1pMQjc0Vlh6R1hiMUdTancx?=
 =?utf-8?B?d0dKd3BPbUFDMFNnM3lMUk4zdGVsL2pXS21TSUZKNXpyK3ZnZXo1TlEyVEJJ?=
 =?utf-8?B?UlVMS2FBNFZBSWNGSUtnNE9XNlpVU2hEZVFwODJCT09EK21meDNaNmVLRVFC?=
 =?utf-8?B?cXlyRnB5K0wwSzFuVldvTHl0cHFDK3hHSjJrZzRyejVkNXVIUUtGVjZkN1Mx?=
 =?utf-8?B?S3dMZ2IxNU5jd1hmTmxZU2JqR0llN1VCdlpyVDVhcEpWc2tVOFlEMmJjL09q?=
 =?utf-8?B?NEZGNlN2aFFwajN4V3NVSkk1MTlXc3YxRFFlRjhkTTRDRHhmMndvSVI4TXdH?=
 =?utf-8?B?S0xITnkvMlBHT0grZjRCQkFac0w5cWEvaks2cml1UGFlTVdBOXhEMko3OHFj?=
 =?utf-8?B?QUNtSTduTjVyQjFxYXNubFNYM2FlR2hmTEwzakNKTytVVHAzck8zQWZNTHlu?=
 =?utf-8?B?c3NyVFJLYk5FNVB5dnBIZ1RSRzU2akg2K01VY2tITkUwcUdDOFhlRUpzcVpq?=
 =?utf-8?B?ZlN4TWZ3OUhhdE1TM0J6QndYTW8yK0Z4cnQySjdUSXNhWFNJbTNVY0FONlVS?=
 =?utf-8?B?Zk5LemlnR2xXNmZOVjBRQksvVnd1cUkyaTBvSUh0ZTdMV2lMUHZNTkx5M2VC?=
 =?utf-8?B?aGFlV2s2YThRd2dQdEhzSnl0K0llRERvRkFkVlN3ZFpPdkFHMWtDUVNxSGZF?=
 =?utf-8?B?QVh2WnlEN1JvLzBhUFYyTUU0aGV2Q3RxeG4yTUFVS2ZlNVNlcmtGSXRGTDlM?=
 =?utf-8?B?VXYvS0RUK1VYZW9vcmhNTUozOFR2RnppWGN4cllxNVZGSkJiOTB3ZlpXaUpF?=
 =?utf-8?B?ZmJZOEkxRVJXdGlhdTJVZDlrcDdqZjIxY1NRY2NSeE5teVk5d1VxRkR6aTdW?=
 =?utf-8?B?UHZtVmtsY0plbHRrZlRIQ2J2MDVBRm1DRHZhSnBqRllWVk81OEIwOWE4TEg5?=
 =?utf-8?B?QWVncGRUZWplMEFkQk5PRENIQmpqNnFYeFVJWGNNWGVPd2t6R1hjZzlOV25Z?=
 =?utf-8?B?OWFBOE9Vb1QwWEV6enVnQmtlQmthM2h3NG9wUW5paUZqamRJc29OOVBYWFlH?=
 =?utf-8?B?UWZYdFduTTd6YXBJTnBudmo3RUFnNHc2T0IxNm5SSkp1Rk1VYnlSeVJvQWtz?=
 =?utf-8?B?bHlJS3pvUzRudkI4M04yS0ozdjFWMzlNYnNNd1l1QUkzd29xM09kbUQyQUVn?=
 =?utf-8?B?eWxVUlF6QkY1aWg3V0d2dkRBbVhPWU51NC9TbEpFbFRnL3lBNmRhTkZ0ZlI3?=
 =?utf-8?B?SVhPRkhlSXhSeHFGNVJHemJYQi9KK0JPY0Y1YU4wTHVZZzMvUjFpOVQrZWM0?=
 =?utf-8?B?VXlaN0tRY1k4RmZBK3JaemNGblkrQlhrc3M2RkRHMVJMUmRkbGpQdkR6akFT?=
 =?utf-8?B?MVN2OVUzbDY5OUg3UEoybWRhc1A2bGlKbGlZWE1NNjhESXBnSldKamVGWEFu?=
 =?utf-8?B?M2dLWUM2V0dIUENzMWJlY3RUcEtpMlJxU2tteGZacVNOV3FTTWxZQ3ArMEps?=
 =?utf-8?B?a0lSM01QRlRSLzN3TzZkV1dnUG02ODkxNDlWYnpXcFJWSmVlVzBhOW52Nk9u?=
 =?utf-8?B?NGFHOVZzTjc3SnVKSFBjVDdiZHBBdmlERFhaUHRvVU55TW1HMnUyYmdxOGtL?=
 =?utf-8?B?QjRFK2F5eS8vcllUT2VQWlpuaDN1RVlOK3Vqd01udFo4RVFDK0VrZnpmT1Ay?=
 =?utf-8?B?bjJqK1RWUXBUazI5M2JmOW5rRTdOU1FrWkUzczlYdmQ1cWphNUpJempyZWhE?=
 =?utf-8?B?aTREL1IyM1N0N3JKeFBkVWd1QndaV2dVQ0M0dDdJOWdGdlV0YWVsNWlDNkdr?=
 =?utf-8?B?akNxb2kveDM4M1psR2tHSy9oZUR4dnR5RlBOeFYwMkFmMkVVdTdLZ1hSZFUx?=
 =?utf-8?Q?6Ibmv4wUgDQ4Mzks=3D?=
X-Exchange-RoutingPolicyChecked: dkj9028+q9aCi4UwoPewv/x3lKisQKjzia/X2lI00RAiX3tQPjIiL6vv2x74LqlxoimMEkkLl5AQrXo7a5jBPNl5gbuY3UOnptN/LDWOxDpjQX2+DoWTIklssdhXZtjIMZZRQMN6F8ngahx1haNJYwKx9g41Y3fB796I3pZRskBrOvyLFo+9H3eWFWlXQ0E3clepIyyWHm7g4STRKc0G/vuJ88nofQAVlpcFJLWnwnbQtoBbY+WpsHlnGP5YCOVJ+GX5aAqXefcaes8jRtb9XIMce4CE5xyu4XmLtmhhpQUk/lSwL7loxBIv9gq6Wb/3Rce2rY5jsVsI8VqmmIjRTg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 83327da8-9b37-41ed-fb42-08de94965004
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 11:10:44.5732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IS2+De32Q9C5VNUuiHFF+tE6eIQ1XOg7Bfjjvh8+ZilE3uN4Kot0lXHfoiYbK2ewCo64qBF/BOj6cMfPKHvZ4E+ZR1UnXCP8+BNZR5mhWeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6072
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1FE233AD823
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/7/2026 8:37 AM, Suraj Kandpal wrote:
> VESA backlight enable is possible when
> BACKLIGHT_AUX_ENABLE_CAPABLE is true via AUX command or when
> BACKLIGHT_PIN_ENABLE_CAPABLE is true via eDP connector pin.
> Similarly, backlight brightness adjustment can be
> done via AUX-based control or PWM pin-based control.
> It means there can be three configurations:
> 1) Full AUX-based: Enable and adjustment both via AUX. We currently
>     support this (apart from the AUX luminance-based backlight control).
> 2) Hybrid: Enable via the BL_ENABLE pin, adjustment via either AUX or
>     PWM.
> 3) Fully PWM pin-based: Enable via the BL_ENABLE pin, adjustment via
>     PWM.
> Since that only 1 is supported as of now we need to make
> sure we do not try to manipulate backlight when
> BACKLIGHT_AUX_ENABLE_CAPABLE is not set.
> Also fix return value when condition is not fulfilled.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15907
> Fixes: 0fb03890d182 ("drm/i915/backlight: Check if VESA backlight is possible")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Tested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index d0c76632a946..a8d56ebf06a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -615,8 +615,13 @@ check_if_vesa_backlight_possible(struct intel_dp *intel_dp)
>   	int ret;
>   	u8 bit_min, bit_max;
>   
> -	if (!(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
> -		return true;
> +	/*
> +	 * Since we only support Fully AUX Based VESA Backlight interface make sure
> +	 * backlight enable is possible via AUX along with backlight adjustment
> +	 */
> +	if (!(intel_dp->edp_dpcd[1] & DP_EDP_BACKLIGHT_AUX_ENABLE_CAP &&
> +	      intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP))
> +		return false;
>   
>   	ret = drm_dp_dpcd_read_byte(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &bit_min);
>   	if (ret < 0)
