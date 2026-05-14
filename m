Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIHYBdOdBWr4YwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 12:02:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA45C54013F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 12:02:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D20C10E3A1;
	Thu, 14 May 2026 10:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F8TZR0Xv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3651610E0B0;
 Thu, 14 May 2026 10:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778752972; x=1810288972;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qsg577djGxkAmU++x14F9vzJ3j3OxoekxfQn6viRiQc=;
 b=F8TZR0XvlYuEWeqxAGt4laVaC0hCVUeQA5Ll7n4WTZ7apsJ4Vmck3PRK
 5CdGayp684vDtyi7hhm7zsT1Mbcx8aOL4Lu286eWf/HHMrmGFoxkWEv8p
 Gmy5ENwZYwmsKYDZbSY20Z0fSiDzfOiPYfLvJA4zwriemaM86bWZwjK0o
 yO/y8WrBN44nWARJNk09PRQPGlv6puc0XGbT0qoK8Qpr81AAyIz0i7D4k
 axFwhN1Z8duggw31MsZweR5oyke1B0gKK1v8wulxyPf7z9FwvdpDrxq5l
 d0+MZbiF60pD4eXgKaB+88l8xGFOq7XFPAtszn+Em+CRlZ3F06WNwkIgP A==;
X-CSE-ConnectionGUID: AUkHm4H6R0mxv4Ia935S9Q==
X-CSE-MsgGUID: m7Ju4ifUTk2fw37NHz++cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79551535"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="79551535"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 03:02:38 -0700
X-CSE-ConnectionGUID: kT3ECMRFQ5qiDzKDU6ISaw==
X-CSE-MsgGUID: 6/Zffj7wQ0yN6rPX2jzEmg==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 03:02:37 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 03:02:36 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 03:02:36 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.20) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 03:02:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i2O/+IRkjGR81KaWgCboOdZvXfldSJ2BRjufq3SOToCu82GN+Kj+PTVPFSrMEsJ7OUtdWs3qjARjZQ2U8f/v41/z5+xZZvwHLS+6se6OQeHMxHIQXESYuvuIu6NndWUYbIGRUSoj0AtnpvStwF8t1VkXFUNzTTgaHDj4+K9egB1kWjcl7WMimelZmxzw2eSdIZ2d107TcGI18XkfHTjz0UDNd+aL20wWAmbCXX+unYjESESD6HRaYLvn+ctZ3IhCEZlGvZxq4lD8fy6frQSqZNlsLWlh8XoTBURBuMzDMUSYxLdtnAJCAtlcyvWzDFZCU1XjqrpW+ghM0v0IsTTDyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ntOFWCekjR96Hszssa5naLPF8O2XGkZ6Ye61qte4dUM=;
 b=f8g8d0gHluqkfo1rHTD9Gncl9OMp6B+1byt1M1dCFjNQuDxzgEEKkF9U+ULbzNyyqk1ubkTxouhMLQMmw4a9rq98cgSsGwNN80F6e3kQQMEUoGmxiP3Xc1ZVYjfDBKiEkc2/6G0gc2C+3KTX0IQe+cey9QaOqXDoa8Qs+MJmu8AFf230Z6xfTxeMXc8xIF220nle9tcncefwJ2hLd1XQEoVbEErX6yF51GKTAH5kZ4t68/1/VpYClfyGMm02H1p3Tg26vuArlvuvcot5vKYlyevFrxO0gtsGuMDcZIZbrhS1gAGjkIOjS0p6hLhLJFoYnpZkKM61a3XBfqpljlJRBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7137.namprd11.prod.outlook.com (2603:10b6:806:2a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 14 May
 2026 10:02:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 10:02:31 +0000
Message-ID: <bae2cf63-f479-48f5-8465-fb75f654da8b@intel.com>
Date: Thu, 14 May 2026 15:32:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/dp: Add max bpp delta computation constants
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <20260423143035.2267634-1-nemesa.garg@intel.com>
 <20260423143035.2267634-3-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260423143035.2267634-3-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0049.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7137:EE_
X-MS-Office365-Filtering-Correlation-Id: cd991b12-769f-4df4-ee48-08deb19fe994
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|11063799003|4143699003|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: vVKBWMdcgStxsj1cIBK8kRy/C4pCKqtJi8O9NJSKRDR8Dv6uYNI4meXUGgZUF9x17+VzszNptF7Tf2f9muCfB1A270H1d5S2DXhmc7aiZuUyJJexiYoAf1a8kkoNe14/H13gHrP3gZWQx+HTFAcBsUxGwzzJkPGnDmgm0ffrKpfmiHKR/uJ0Qt8vpc8EbFHoZ0mf7MMmY4efCLBNKrpgRFgAgdiIqdcprz3w6LJ6BfH44cvKM+1TAb6TCDDhtG0BStaXF0SZpW5TaXMuS0FW7/1RgqDXj3QlxRCA5W9RwVAoEBvd0KT/sOzSoaLvU4ZM8PxGt9dERLzJl2R+xben4qjea6ZfatI63bCZgWaQZ5TzftMNo2PqCiqHfAqBwQimplpgKA0ERcDWii8/ErJ8vQb9wxsb6r+1VdoM3xLODMlT0W1dIeBBvttWcX2HOBXgLUNhFhkKQaGgKMHMwfYXWw60KnSVwTiyrYahNpcQOUaA1/dxaDtt83v+eV6Un05Z4CA9B2JbVwozrxyu8tGIcxL4X4RkzSAEdvqbOJ7VvwpgFdCvIy0b9DXCbNY1GFxcPwGV9Ucn7jUKnRflVc333hB52rVnAbJVace82P3amGtNgjySVRaoVpH75S5YaL8BJmVCItXvmi/Sc+JhreUbBEXGkhisygr2SO4JoRGiSMxAPsp1iQcC0c+e+aOHNtSE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(11063799003)(4143699003)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tjk1YzZPRFV0TEttU0JUMWVSSWZLNEU4cU5NZ3U3VHlvemRxMGlXdW9MMDNP?=
 =?utf-8?B?TzJKL3I0bWFFTjI0R3FGNzJEa1VTWUoyQzZvUmJlelBPZFgrNnNHM2pDRE9M?=
 =?utf-8?B?cnJCQWhuTlVOdGo5Tmk1Ym5lVlpOQk9oVEVieVd0eXJ5WWxNV3l6WU94cWtl?=
 =?utf-8?B?cW9rT01wNTYzR1JMMGtFeHhvRUU4NW9tVVh3SkRWUEVrSVRKYmNzbGNQM1o1?=
 =?utf-8?B?L2Q2bmwvbzZVTHg3SDVyVzB1M1o0dDZHcFduQXJ5ZEI5c0tOWForZkVFSjBD?=
 =?utf-8?B?TU1TWm13QmVwam40SmFJSFY3dmg1NTJidzY2enVSbUNVTm53YVVIUnR4anF0?=
 =?utf-8?B?WnFlQ1BRUjdsR2FzOWI1WVppOXBpbzJTcStKSmI1cjRBbGp3UzVmUHNtbU54?=
 =?utf-8?B?dnJac0hSaEx5K0lUQ2g0dGJYRkwzUGIxajdoNWJzS3NSWmg3UDVNdHRURVF2?=
 =?utf-8?B?RUVwTWZ5aXF1R2ZaUjRUVktHMHJkODR2UEc5RW1rWVBxUHZUaktYTWhwcTVH?=
 =?utf-8?B?TDVpRTFJWXo2eWdrOUVFajR5RW53ZWh6blFDa3RNbWtUUVRLTWMzTTJEaEZ0?=
 =?utf-8?B?RGJSY1MyT3BMaWZSeVd1QWh1VU9FUng0TURRaytzdFFIUk1SNGJRUXZJWDVx?=
 =?utf-8?B?M3QzK1pMNkFGdmZud1NUVTFXSVRvM3VodVpJTkFtQjd3a2Z1czZiZDlvOVlu?=
 =?utf-8?B?M244bXFNWkRxdzB5RXZsUjZzODY4R0tVSjVZZXE0MzFPSXFGT05tRW5tMGJL?=
 =?utf-8?B?MzAyZHpYSnJrM2tmdmN3MllhdkpZbGlOTmd5OU5xbUNCTGhrQTc3OXZEL0dq?=
 =?utf-8?B?SThWMU5SbmhuVUp1QmVVY0VIL2RyM0pOWW1QdzJlVGhzRWo4K2FodUd2amEx?=
 =?utf-8?B?MUxjWWdJTnRjSnN4dWJxazV4VW5xN3ViRzFlTEMvcTc2NkVvMlVNK3dHejQx?=
 =?utf-8?B?Yk80azIzWFZTMzJJTVcrM2taM3RCNERhQkpjQmRsNUk0OWs0ZjgvWkNXOEVk?=
 =?utf-8?B?WURnZW1KSmRKL1EwTlU0alc1ZFRmUW1UVHBCY25IWEh0THhRV0NsdzN0cTBI?=
 =?utf-8?B?bEFqbU9VWFNUZWdPL2hhQjBmSnpxUUdzYS9adnc3TFVDaDdwbCtmdjJWR0lt?=
 =?utf-8?B?aExYRS9GYkE0bkZzOVV3ZXNkWjJwQVZWdlRpZUc5REJNT3p1T0JrUDQwUkdR?=
 =?utf-8?B?UjZGaThMRkxxY3M2bis2OCtaY1l4SDlwYjlpd1FTMUdPSVJLZHcrMVc1eEhK?=
 =?utf-8?B?ck9JL285cXNTdnR5aWhxUjh2NFQ4R3ZFbURFb01pK0xmZVVYYWtuTE5yVDNz?=
 =?utf-8?B?Sm1FUk44SGUwTTF6b2tyaGdML3Jub1lNSXRJV3VoN0ZzMkZsZ3NCdjRMWGVN?=
 =?utf-8?B?SkJtODYvcnoyWGh0R2p6djBBcGY4MkphSUw2cmxwWVhId2I5WWs1Z1VIR05K?=
 =?utf-8?B?Zi93NjVmdXlYQjFPNnU3Y25TNFlFMDl1WEgraGpMUzdUUEJLcS92L1hjV0ll?=
 =?utf-8?B?cGJlUkFUNTV2ckcwRVpSZlV5SVZVbE03RGRKcE91V3hiNGdsektoRVBURFNH?=
 =?utf-8?B?cFNYS09ISmxCME5qajlSOFVGbDh5MElwcEJPalNwUDZtQXdqWkdZMjZyZlNG?=
 =?utf-8?B?eXN2Uy9BY0hzUHNYeTF0VjE4bTZCd3Q5YXZMTUk1Y1hQUGZkMEdGMTY1Wml6?=
 =?utf-8?B?K2tySVYrSWRwL3NNNDRRWnlQUnpjTC9SYTRrT3VpNVlQZ3FQMmRNYU9pZ2pt?=
 =?utf-8?B?eHZseDNYaktFbVZPaC8xSDV1WGMzMkdnZ0lFUTFCR2pMaGFoT3RleEpsWTQw?=
 =?utf-8?B?NDczZ0IwSi90S2RnaU1lVTg0ZStIY0xlZnJXL0ZseERualdobHpzU3dPekJG?=
 =?utf-8?B?amxpaEVpMGFFZ2VPL1FjdHZDSzFYbmd6Z0YvVWgzQWlPTTdpS3hMY1Rmdlpl?=
 =?utf-8?B?cStGRWI3a25FV3FZTUYyN1U1bGhRQUhZck1FdjBKOXhrenVmMEo5TEFHcVAy?=
 =?utf-8?B?WVBUZ2F2Z3dtOE1FeWEydEVMUmI3QTR3ZnJiMWxlOHBzWGFoRDk2RVNhYmRO?=
 =?utf-8?B?SmR4VGVGNlBTYTRiSHl2ZlhpZnRzeFY2c1JEQmkzZmVrQzNWUFdjQStSd2R3?=
 =?utf-8?B?WG40ZFVERmZ3WGR2YkZaWVNTNnBzbGo3YXJLZnFQT3NpVVJKamRqNVpUZnFP?=
 =?utf-8?B?a2hyTTdKYTl4RUpOWlA3UkNVSWU2ODZ5bVNMWjZocHJWMUhJUW1LVWFlOXMy?=
 =?utf-8?B?MkR4UGJhRWRLSE02VkpySmxWcThxUG9IanJRS0dma2lPSVdReXV5aDJBRjJn?=
 =?utf-8?B?QzhuY1RaWFl2VjZyR3lsTkJDQmhkc3hOcXp5RDJ4ampsVWw3N29ramFTbUsy?=
 =?utf-8?Q?POZIiDMsnrNlS4XM=3D?=
X-Exchange-RoutingPolicyChecked: daLmrumD1ZbrLkuxyg99nVsyfdfHgc5JcF3Luc5l3zaKu2eF/ZO6xtWyMzMIByXuco7WdOFxjzAf0omU08rZOxSAPZYUvrbVjIsJEN/l/03q0QewDU7NOQ+Io0MgI2bYiHWjochHnH9WYYjktJfi1xQjy07CwDf80U4QB8i9ZXsp+1yMz9h+xMVCn+hLVnHmyyca8FDu2YGgqkyiMZboHw7lCefatNSmjxUWnqvAlhM+5FPftxEn0nYFC7x19oe+A3Q+Jzmd8skdw4/7TPZj82Xnx0A6BxBs834nXI2ISFDw91XwpTVHdaHgJJKnxX7in3uOxMmsyDthRVFUG+0ftA==
X-MS-Exchange-CrossTenant-Network-Message-Id: cd991b12-769f-4df4-ee48-08deb19fe994
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 10:02:31.8138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1NGzOAviezv+gdkNSjI1D3AZGPJCPL0qWn3Xy7eCgjMMfSTjKi/PCOExLOQpHeRIiorPa7Q9I9Vy8i9lk62tonRtYdSL5YkScO9KGXPsh1Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7137
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
X-Rspamd-Queue-Id: BA45C54013F
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
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
X-Rspamd-Action: no action


On 4/23/2026 8:00 PM, Nemesa Garg wrote:
> These constants are used when decoding dsc max delta

This seems to be missing some part. It is not clear that which constants 
are we talking about.


> values from the sink dpcd. Also add version_1 as suffix
> to MAX_DELTA_BPP.
>
> v2: Move constants under 0x6E register. [Ankit]
>      Add mask for Native 422 also. [Ankit]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   include/drm/display/drm_dp.h | 23 ++++++++++++++---------
>   1 file changed, 14 insertions(+), 9 deletions(-)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 520490ac6778..c29b391453cd 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -354,17 +354,22 @@
>   # define DP_DSC_20_PER_DP_DSC_SINK          (1 << 1)
>   # define DP_DSC_24_PER_DP_DSC_SINK          (1 << 2)
>   
> -#define DP_DSC_MAX_BPP_DELTA		    0x06E
> +#define DP_DSC_MAX_BPP_DELTA_VERSION_1		0x06E
>   # define DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK 0x1f
>   # define DP_DSC_RGB_YCbCr420_MAX_BPP_DELTA_MASK 0xe0
> -
> -#define DP_DSC_BITS_PER_PIXEL_INC           0x06F
> -# define DP_DSC_BITS_PER_PIXEL_1_16         0x0
> -# define DP_DSC_BITS_PER_PIXEL_1_8          0x1
> -# define DP_DSC_BITS_PER_PIXEL_1_4          0x2
> -# define DP_DSC_BITS_PER_PIXEL_1_2          0x3
> -# define DP_DSC_BITS_PER_PIXEL_1_1          0x4
> -# define DP_DSC_BITS_PER_PIXEL_MASK         0x7
> +# define DP_DSC_BPP_DELTA_444			16
> +# define DP_DSC_BPP_DELTA_420			12
> +# define DP_DSC_BPP_DELTA_SHIFT_420		5
> +
> +#define DP_DSC_BITS_PER_PIXEL_INC		0x06F
> +# define DP_DSC_BITS_PER_PIXEL_1_16		0x0
> +# define DP_DSC_BITS_PER_PIXEL_1_8		0x1
> +# define DP_DSC_BITS_PER_PIXEL_1_4		0x2
> +# define DP_DSC_BITS_PER_PIXEL_1_2		0x3
> +# define DP_DSC_BITS_PER_PIXEL_1_1		0x4
> +# define DP_DSC_BITS_PER_PIXEL_MASK		0x7
> +# define DP_DSC_NATIVE4222_MAX_BPP_DELTA_MASK	0x78

This should be: _NATIVE_YCbCr422_ to match with existing code, and in 
line with the comments on the previous patch.


Regards,

Ankit

> +# define DP_DSC_BPP_DELTA_NATIVE_422		16
>   
>   #define DP_PSR_SUPPORT                      0x070   /* XXX 1.2? */
>   # define DP_PSR_IS_SUPPORTED                1
