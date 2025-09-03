Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFEDB41938
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 10:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CA410E125;
	Wed,  3 Sep 2025 08:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lMKdn/1h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31DF310E063;
 Wed,  3 Sep 2025 08:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756889627; x=1788425627;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=npuZ/fphP2FLAY7ojbJcQFBbGkeIFuuADWIWBzTEX2k=;
 b=lMKdn/1hymbV8gbVKJWgZ1ljDs391eQEwvLJBBgGaEyU0ptwOnQ+sCSd
 6kg8Ctp4LX5A9iSAvFyvguJqIdOcgju2KJvgougc7TbaQD+oiaxyZA3Kg
 pA61dbenfzX4buBrwvPJTbwzvXaMyswD9cLom3jqLo5zzqdzQS26/vw5+
 n6QilRsn7o4nheDKM04fGJ44DmQakeZpoJwMuMjb/g34Jg8WdOMO2yW1c
 rBAwhECRykPtZMyhFF7MRSw/5thVNa2aWQ5LD4ayikaQVTwfh9qlWcMSl
 R8Ga1KtUKdPcwRHlwJxbfCUVdAMauRrjHzQYa89Xq1OErBTUbadBJfZFL w==;
X-CSE-ConnectionGUID: tgZc9U81TpyDk7XYFKhF9A==
X-CSE-MsgGUID: DcovD1GpSEyTHGZlPTqpbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59145206"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59145206"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 01:53:47 -0700
X-CSE-ConnectionGUID: sGy+p2DgS3yzntSsH4XCtA==
X-CSE-MsgGUID: uS51RKS9RE+Yvg1Wcv9hdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,233,1751266800"; d="scan'208";a="176809635"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 01:53:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 01:53:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 01:53:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 01:53:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VeAwScPv9udOJI/pf0k1H42kgv+Y8niiJCQ1hND953pJcYTIjzEdAnSdDqfWDMvBm1GC+sAzF9i0tN7Qoi3kzRnE7X+48AejtQyUJ0aiflOhiXvadaGUEbMQ9oB70zXZ+oCRRhWMYxjxq8GUTc71MQMpHTIEU3R0UFmtaZZvbcMvYd0Hsa2qh87Hdfj4skXuG+kt4koEuAhuuyZaJtJO1YgxF6qKCy14qj/lQNqg6S6qfwHflf0fuOjlJ9lOCoUuyVgnIAcsDGqkdL3qaNPAnMxTvbcOx2b/0OMKOVqFoYCW8Ss8vMJ5OGnj2vxvQ4wZjDu4op2PpltDezCBD+PdHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=npuZ/fphP2FLAY7ojbJcQFBbGkeIFuuADWIWBzTEX2k=;
 b=qEOj0a6IT3Dy6z9GL3bjci/mFg9ch0bf2GV1AbEwDMG7eC/XXs7palmXayT8ctIhjDBdcINnn4pX/HYsHGPt3GAPURbMKjPHR2dz67N608YUw6et8VG1TYWVF6gTE3ro6Aej9Qzp2vRuAuWPdK8R6po+V98RtZ54tASDQr3MlnXIAJpMRmPLnghGpZyTljKW8sLE79TangtTUT0s2oKdYNeCVP1/5SNzqaU9odvhKBpaatBskFNeOvME8TljWrBzhqlWJfB6QzRaDt6Rb5hqVJR1an85sZ43UPt3tqKHPdMurU9aaY6SwSxLTxzgCr5Ut35/d2d5O6OYsir2dzpcaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB6759.namprd11.prod.outlook.com (2603:10b6:806:25e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 08:53:43 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Wed, 3 Sep 2025
 08:53:43 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dp: convert open-coded timeout to
 poll_timeout_us()
Thread-Topic: [PATCH] drm/i915/dp: convert open-coded timeout to
 poll_timeout_us()
Thread-Index: AQHcGNjBX7dMVqc41EeB3IV+QLmIzrSBLs0A
Date: Wed, 3 Sep 2025 08:53:43 +0000
Message-ID: <6506684cf2e6906f144233e8a9b92e151fc7fecd.camel@intel.com>
References: <20250829113311.1930618-1-jani.nikula@intel.com>
In-Reply-To: <20250829113311.1930618-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB6759:EE_
x-ms-office365-filtering-correlation-id: 8a14713f-de2f-437d-3974-08ddeac762c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZGxOZXB6U0hSTU9ZUnFWRWgvOGRtZUdLOWJScWYwUXJEc0JuUzk0MytXSVFu?=
 =?utf-8?B?R2pMc2V2NUozaUJocVBYSTZickRwYzg0bGFtUCt2T0k3TjFDbTJnb3A2K3Br?=
 =?utf-8?B?OFdENWlNVnVqWE4rdVJnZnRWekVVQVVtYW0vQ2RiNmZYL0tiTE0zSjA2dVBK?=
 =?utf-8?B?SDkvbjI3VjQvSE9TK0c2bmlqOTVxa1RjZnEzK1JYMlg0NjhSdzl0UDJMVzRl?=
 =?utf-8?B?dEh4UHZJQTM0RXl2MGpXY1UrWWFtek5QYm9lVUV6VmxSekpZSnZqZzRybmJy?=
 =?utf-8?B?bWdoQjV6YXVWVVlNRnFTeHpxU0hYbS92VURodkcxOFh4VUlPNmpFd0ZZNEta?=
 =?utf-8?B?dklKYUcrcVMyWVFKSk9RZGY2Y2hlT0d4akppTU4zUkRTaDFHWVl5TkpXQytK?=
 =?utf-8?B?bERwaFQ3d2tWQzE0RW1VSlhiM1ROcFRaeXcvcG8vbkh3QmVRTWYvL0VXSGc2?=
 =?utf-8?B?REhwNnFWNG9LaUhpNWhzbEdjN2V3azJlVUZwZ1pTRWM0NDU1eG1XS25Kb09L?=
 =?utf-8?B?V0RNZTUvWEtGWTZyektkMHlDVklxRHM0WGx6bWRWaUZXeCtPbTNDUFRLWXNT?=
 =?utf-8?B?NzREdk1ZUTFOelhJcCtCQ1hJVzM2SStUb0d5azZORlViRU9Qb2RlMUpMN1FM?=
 =?utf-8?B?bVBvamtNNFc4djN4ZCtPM2NKSG14WkxzUFF5dVg0c1JNN04vYjZnRmxySTJV?=
 =?utf-8?B?UmNoNjhjbTZ6OVhSRFU3VmwwMXZrdVlVcWJON0FXN2JiR2VvWEdrcDNrWlBQ?=
 =?utf-8?B?Vi9BbWQ3T0VXME5zM01HQUErSmpiOEJxc29lR2RpK3AvNEtRYXNIb0o3RWFi?=
 =?utf-8?B?WWo4UXJ2Q0MrQnR2RVlkSzVPS2p2aGFuaTBjYXhXbnNMTWpxK09vK0NOYUdu?=
 =?utf-8?B?NE9rRmN4VENHcFNVTjJUTDUrSEYvUzR0VlRNWkNmSTBPWnIvTFhLUWdDQU53?=
 =?utf-8?B?Y0Z0a1oydjQrSUZKNit1TUN2NWlPdnQ0M2JibHVwTW5udCs5Ly8vM0dBY2gr?=
 =?utf-8?B?b2JZZFQ0d2hrZDVzTzZYQmpBb1RRUHo2MXJxdEQwcGgyMHl1bExxWkp1VFFL?=
 =?utf-8?B?SytaOVNjcEVNUXg5WkdpSUJPYU9pbVBmZzB3NCtFc0xmSktsU1B2cGJFV1J6?=
 =?utf-8?B?dG1LVFlsV25kQ3pGR2ZNYStTeTNFT2dKYzh6VGdMSi9QYmcxMXZpVnJRVDFR?=
 =?utf-8?B?RmRBVDU4NGJpVHBJVG1iS1ZJeUVnZjRUWGdXN0RMMnFwdjZRUWRUOW8wTzJz?=
 =?utf-8?B?UGFoOTBkeUpkYVc5NXZ6bE93ZlYzSFJGNU9ZSk1MdnZMS29lL01naXliOW15?=
 =?utf-8?B?dlF1RE5mZldZRi8xSk1WQXVwR1EyZzlmR0pWcWlvY3pZRlRBN0V0TnVJMXFF?=
 =?utf-8?B?NUFEK3FlMnFxcTVOc0JWMWZQdGc3VVRDMXFxRTJQbmpoZUQ5K1pSV3YvSzhG?=
 =?utf-8?B?dllwTXFKRFc2ckF4ejB4TDlaMUNFSDhqMk40dW5EcGt4VHZyQ05TTXYxdkE3?=
 =?utf-8?B?UWkvWCtTelAxN0FrY256SWdOaWE0VXh6blFvR3hmaURFQ3BTOEcvcU1rOG1n?=
 =?utf-8?B?MDdLK1ROUzlxdVpHcXVlMUpqaXVwUmc2UVZ0WjIvaW9DTzNFd1d0a3A3TzJo?=
 =?utf-8?B?ZTBScmtpeTFKei9jSkl4NU9JZXZIclFGeEhLdUZSVXh3eXNDQUdpRlM5aUhw?=
 =?utf-8?B?K1hnUHBZdGhGNjNFcjUxWFR0ZDZnMnlmVG5PcEZobTFHd0FYYk1mU0pRZTJn?=
 =?utf-8?B?N1liQ3lOVGZLMzZTbDZSY1dPR1c1T3dKNFdDRWJEMzZwVEhnVThpQkFuS0VB?=
 =?utf-8?B?QnJtNFViZnR1TzRWcjN6TXUvbTJKWXZ3VnMxQityVlFFY3VaOFZpT3ZZMGIv?=
 =?utf-8?B?TDdFYUkvVUNKazR4aGFhTTNab1p5b09hNVFGd200c0tvd1BoTjQ0Q3ZkdVJE?=
 =?utf-8?B?cFFxUEZGYzFkSHQ5cTdLMzZYT3JvdGt4NFh4UEMrU3g1bk00MllGVTBncm9y?=
 =?utf-8?Q?PkW8v/2DWJZkdOPLosVWxO9+eNQcKI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cU1TVnRKY2cvaGZ5d0pIZks5WFo2eXhxcTFWQTFYNjV6aFExSDZwZFRjT0pE?=
 =?utf-8?B?NjdudE5EY3BJQnNGNmhtYmxWd21Qd2tpRHVoMmVVcm80MVVQNU5qdWdUYVVW?=
 =?utf-8?B?QVh2L0oyb0hVZittY3JPWTFXKzlYVDhlMkdGWk1XTGxxYlMvMDY0YjQ3VlhI?=
 =?utf-8?B?bkpYUU1RQTFxNDQ2bGJsTXlUb3RUeXpzbkE3Y1pIeW5GTk1OcWdDSUMwZW1s?=
 =?utf-8?B?NSt6M3R6RHo4emdra2NFT2djS0JWcTJlTnVadm9NRHFEUFF0ckphOXJyMmkv?=
 =?utf-8?B?eDkwRG1YRmQ0ckFRb2FYMWphMnlyOW9SYTBMdEFOUkFMODlKSUZGUjlnNUY4?=
 =?utf-8?B?YjExd00yN0F6S09aVUUxSWZtQkw5T1FJL1N3dmwwSEtOcFZ2TEJLMzFmc01B?=
 =?utf-8?B?RUpTcFRSb1R2cXgxUmd4eHJyQ2c1bmZSK2htMDhMTVFocUtuYm8zaVhPZ3ZO?=
 =?utf-8?B?SGoxMTJ2dE9wd0hWTWhZeXRoY0dxck04emhudHNBaEg2cG1ZMHJUYU5rWTFy?=
 =?utf-8?B?cnhRUTJwTWNKV0JzLy83Uzg3RG5DWTgwVG9lMGE4K1IyVjdGOWoyd1Y3M2l5?=
 =?utf-8?B?OG9EZURvRk9HWU1Da2dOaVk1YVZuRmRTK1NEVjlEQnRNMnNkZzZPc0VKK3Fu?=
 =?utf-8?B?TVVGbUY1Ung4YkJyZFVPWW5QTXJHSTlMMmpMZHRkd2hja0UrbHcxN3dZWTJX?=
 =?utf-8?B?NWJXY0p4Uyt1bWdMTzdIcUErSEFyaGl3V0NneWJnWVdEZE8xWWZXZys1VkNX?=
 =?utf-8?B?NUE0QWFZaWlsd3Y0cHdtZktXdWFZWjNqZEpZelBuUnROMHdkdFlBeHR5bys5?=
 =?utf-8?B?OFljUk53ZElHcDJTNTdDdS9CWjdVeTN2NnhtaG5udkQ2NnZwUVhRaWxCUHdr?=
 =?utf-8?B?QzREbDNnKzNmcnYyNXJsdUZWeUtCU1A4dGNFMk5lK2pWYy9aSTFIQ2Yvdm1o?=
 =?utf-8?B?Z0R2NXZCT0ZnUXJ2TFJzMGJUVVJHQktmN1dwc05PU2lBUGxaMllDQyszTU9D?=
 =?utf-8?B?c3VscDUyd2FwdTJJYXUzUXJsRUM1RHNucndZYlh4bTFPR3pQZnVaRmw2TlpN?=
 =?utf-8?B?Tm5RMHY4UEo0WkgvOEJSMmtLTnlTMUx6eHNqU3JvY1F1Um8wRmlFVlZhb2tn?=
 =?utf-8?B?cjNzT3ptb3VCZVFiQ2lMaHRRSHJEaS9CUUJVbzNESWFiWS8vQWRaUi90ZENm?=
 =?utf-8?B?Wk9FQzlBOVlsM0pWTnlENkNQNUlzSlU0N0RzOVhLNWwrd1c0ckRUZXBmQ2Z3?=
 =?utf-8?B?WW1XSnlYR25Kc01acUFhNUE3dWQ5UHp1bTNib1A4anpOQ1FDd1djelpmSDRh?=
 =?utf-8?B?ak5IaUk2bUJ1eUc2VmR6d3ZsMWlGaEYwclBDOTVCdWpIVmt4eSt2ODZLeThN?=
 =?utf-8?B?Zk9XM3dpL1h4RHpyTThGanZJcHNQSHp2cjBPdmttMkxGOTkwbEdlNmNMRGlS?=
 =?utf-8?B?cTRDb28wT3M5TkFQWEVWdmdTM1ZDcmNyYkpQZldhOW1HbmE2UDk5NXRTb0RT?=
 =?utf-8?B?alZrY2NMd3lsY2Y1NWkrZmsyZVJ1RjlwRVh3YWpSMWNxbk11UE9EUE43MXho?=
 =?utf-8?B?c1BJY1lIYlNHM09oTGNNUFlaUUFTc0RacVV1alczbUUzdkxsM0ZjWG9rYkZN?=
 =?utf-8?B?MWJWWGNXYzJ6ZUhRZHExOTN4ZFQyZjhNcDBPY2ZIalhSNWl5ckhjRHJIU21R?=
 =?utf-8?B?ZlFjNDhSdjE2Zks0VmIyYXdBcW0vd1hSTmxnYVJ4VUwxLzJCbDZsUHFGdjhB?=
 =?utf-8?B?NmQrcjZsZFdzdE1GTXBjc2loM1YxMXdGaUJrQ0YwRGp3L2tuSlk0TXN3MFQw?=
 =?utf-8?B?c2lXV3dLMklUdHZLU0RDRHhJSXQrWjA2VGtmM3QzZDVwc3hFc2tDOW0vS1h1?=
 =?utf-8?B?VmJPNWtONCt3eUUyVWpqYXlicEdIakttblo0bEl3cVVkRjFZVk93cDFZUlVG?=
 =?utf-8?B?Q1BVam5wTVcxa21pZEdXajZpRU0xQm1zS1NIaHFnOEs4TlNGRU90ZDZOMkdH?=
 =?utf-8?B?REQvUWhpZ1dMV0xGM0htbzF6bDdnTXh5MjMxNjdpQ0RiSlhoektBeUhTTGxT?=
 =?utf-8?B?eHJoRWFTdFpobGdUdm1FWWJ5bzM4ZEd3WDVkSnUvWk1Sdnc2U2dMSHR0emtu?=
 =?utf-8?B?WHkvZ3JQUE56NEJ4Q3V0a0RGbkxxQ0wzNzRvU1JwL2lLK0ZyN05FcjZwRzBs?=
 =?utf-8?B?ZTVZa1loU0ROekt6eWR4SlRvYmhNemZLMUJIcS9ZZTAzdkhlYlNaQmcvUXlp?=
 =?utf-8?B?dURoTU1LWXBMYjU0Wkt5RWMwaFFBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <245A6D20773A17408C49A486DF7A822A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a14713f-de2f-437d-3974-08ddeac762c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 08:53:43.2714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0vREWcPLnnmxgHlLL+ZngRQouqxX4q5A2YkBABORTmWdLNHavkGw/X31ZJSltQpBqsSv4o3CYv151sKXA8uzgRAyhcCbbYEvh6pqcSAFNAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6759
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

T24gRnJpLCAyMDI1LTA4LTI5IGF0IDE0OjMzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VXNlIHBvbGxfdGltZW91dF91cygpIGluc3RlYWQgb2Ygb3Blbi1jb2RpbmcgdGhlIHRpbWVvdXQg
bG9vcC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgfCAxMiArKysrLS0tLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiBpbmRleCBiZWQ3Y2JhMWNhNjguLjk1OGU0ODg1OWJlYiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjcsNiArMjcsNyBA
QA0KPiDCoA0KPiDCoCNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4NCj4gwqAjaW5jbHVkZSA8bGlu
dXgvaTJjLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+DQo+IMKgI2luY2x1ZGUgPGxp
bnV4L2xvZzIuaD4NCj4gwqAjaW5jbHVkZSA8bGludXgvbWF0aC5oPg0KPiDCoCNpbmNsdWRlIDxs
aW51eC9ub3RpZmllci5oPg0KPiBAQCAtNTY2MiwxNCArNTY2Myw5IEBAIGJvb2wNCj4gaW50ZWxf
ZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZF9sb2NrZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIpDQo+IMKgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiDCoA0KPiDCoAl3aXRoX2ludGVs
X2Rpc3BsYXlfcG93ZXIoZGlzcGxheSwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwNCj4gd2Fr
ZXJlZikgew0KPiAtCQl1bnNpZ25lZCBsb25nIHdhaXRfZXhwaXJlcyA9IGppZmZpZXMgKw0KPiBt
c2Vjc190b19qaWZmaWVzX3RpbWVvdXQoNCk7DQo+IC0NCj4gLQkJZG8gew0KPiAtCQkJaXNfY29u
bmVjdGVkID0gZGlnX3BvcnQtPmNvbm5lY3RlZChlbmNvZGVyKTsNCj4gLQkJCWlmIChpc19jb25u
ZWN0ZWQgfHwgaXNfZ2xpdGNoX2ZyZWUpDQo+IC0JCQkJYnJlYWs7DQo+IC0JCQl1c2xlZXBfcmFu
Z2UoMTAsIDMwKTsNCj4gLQkJfSB3aGlsZSAodGltZV9iZWZvcmUoamlmZmllcywgd2FpdF9leHBp
cmVzKSk7DQo+ICsJCXBvbGxfdGltZW91dF91cyhpc19jb25uZWN0ZWQgPSBkaWdfcG9ydC0NCj4g
PmNvbm5lY3RlZChlbmNvZGVyKSwNCj4gKwkJCQlpc19jb25uZWN0ZWQgfHwgaXNfZ2xpdGNoX2Zy
ZWUsDQo+ICsJCQkJMzAsIDQwMDAsIGZhbHNlKTsNCj4gwqAJfQ0KPiDCoA0KPiDCoAlyZXR1cm4g
aXNfY29ubmVjdGVkOw0KDQo=
