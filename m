Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD72995F50
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 07:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F260910E645;
	Wed,  9 Oct 2024 05:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BecZAb7M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF84E10E644;
 Wed,  9 Oct 2024 05:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728453466; x=1759989466;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2H2l5UFvxGfanHwLPL2yWWfFhzMBAhBLg5s0gtOCjuU=;
 b=BecZAb7MhPUjTwYjSDPolXFCfsi275RcKtCE2gEMNjTNhjFXHkFqXMly
 FCiCVSqrvPxxlZlRyhkaxNVHqkclpt9OwXuQFrIWbafMDY8suHWD5Crmc
 Jz4mwhOXoZ8Q94O2TWXLAKz1GHpATpoIXlIqsgcbEhjsWOK9Thx3DKFd5
 Vllq1rVHoFgDNOkYHsLBe7YjfeoRcO03cOwjdjwxAD+nBAoCLh2IT12Z6
 yiP5JCk5swRb3NOF6nI9ty0SPXffjnTk9RHqQER9woA8fLo2lkqKrr8l7
 s2FVPY4vHd+BTAsLrHebSMKSsPoP+08Cf0knanemVshg95VHY3/dsWh6f A==;
X-CSE-ConnectionGUID: gvlkd6K0TpWMLAW9CsaX0g==
X-CSE-MsgGUID: U489L9USQNW8AU5mCU56gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="45196265"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="45196265"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 22:57:46 -0700
X-CSE-ConnectionGUID: CKaDyLpfSZ2grpy7PIP5Ow==
X-CSE-MsgGUID: ZDDLGWTNTeGSJGAgr8qcug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="81154632"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 22:57:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 22:57:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 22:57:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 22:57:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 22:57:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mHC+ZBHyV6FXnADqIvJqIEofJ9Bykb9x9ZonynHldmwA5ZWCiiz+hB90M2iLLTYgLpFACOUM40m3Fj1GUP8qi7/P/GW0ib0mG+S7X6ktYTwal9olucCc4aOToZi95nk+iQQ9zNljjlfQlM8h4tkEaPd4479HggQXr6PK+HX4KOxbEWTiY1g3T06tOowbMm6B9HMgvOs+kGNamT/CUC3s29/IGPWEePnxw9TCRf56+km3nKJ/trdk+rWOD95+rmGVuAre2rmKatMg3w3+Cj1bn3lE9ErFjKqdE9Yt/Ai9MWqVcYZxVbevTtkZOlvN2+qBfnRocZ0ONtT8hfZfipcKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+uyO0h997iCHxlYeYmdp9IA5dk+Z5Z2kjJ79VYB1Mzg=;
 b=OVMY07zDKMzx0V5Kp+h1RcwJ4+8vXxR5++0RVO/SdXHQqkEpNEGbeXcvQlr7Beqt3/LIHdIjlSye/f3Vr+Nx2dQHwFLej16WOY4+GilFpta6hZjecvgp6kCsM7WyIO4r7rw56xQYgPDlqeBHyDGLN69j+w5KZffeJuTq+xBx8I5wO1oRW19ciqCv1i3t1kjb5L7SjHQnhq4nYejkiIvd5sITqeLLx5rJZiw082OtykrybMvzGE7SapyvcTzjFmMqrOcxD94V8ZV00pWKwjA7+PcRrkXp6ho8dH1vyUaX18nB2gO5mY0GX5ytUYhQ1w9fFjlWmkUKP8UhXW9ZdMrA3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by MW3PR11MB4524.namprd11.prod.outlook.com (2603:10b6:303:2c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 05:57:42 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%3]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 05:57:42 +0000
Message-ID: <1524d193-124a-4aff-ad56-c0c28906d611@intel.com>
Date: Wed, 9 Oct 2024 11:27:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/10] drm/i915/xe3lpd: Add powerdown value of eDP over
 type c
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
CC: Suraj Kandpal <suraj.kandpal@intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-11-matthew.s.atwood@intel.com>
Content-Language: en-US
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <20241008223741.82790-11-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0077.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::18) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|MW3PR11MB4524:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b5d7716-71e6-4a81-a4c7-08dce827499c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S01KcWxzMTE0cGdCTlJtQmdFNUVBRnNCM016eHk2MSt0Q1dYZlhYVGhLY0tB?=
 =?utf-8?B?SlVPTUNnN3MrKzN4SkFlb2QxalNreE1RNHhBUlFab25Ea0RkN0VDcUhLanVO?=
 =?utf-8?B?SGIxUzRsZkxUQjdDSVJYZHRSdGJOMW8vSExweTB1elhTaEx5a1BLTTZYeEZT?=
 =?utf-8?B?Tk9xYVZxZEJUYWM0aUp5SnltTW5aZGtLZjh4cXczM2UrT2dmZnVNcThrMGhw?=
 =?utf-8?B?OXlhSFpveEZGb3pON3FrYnB0OWY1V0pHVHlXS2NyWnFGTXhzZ1BPTk12TUhC?=
 =?utf-8?B?T0g5bllnbk83TWZ3VXdxWmtUMFlpaDAxeHhRaWZLcUVhaTNYMEZrVDlXU2ZJ?=
 =?utf-8?B?eXFXaVlMaHdrQ1F4bzBEWTZnTWdUSER1VzVHNTlRVy8rY2tXS0Z2eFgwMlBS?=
 =?utf-8?B?eklZUjdpdmx2Y0RUTzRGU05YUFppV2JzR2lvZWZkVkliMlRWcDNSK2EwSWdV?=
 =?utf-8?B?TG1tK0RIaHZUY1Q4ZHNoSDdMUEV4L1k2cDBoaFkxT1B3bGpHVEFwUWJTbkF1?=
 =?utf-8?B?Z3luRlhGc2xYSWx4cjdsQnBENnJtMkNOdDlaMCtQNHhIdEM1UE8yeGU0OWFQ?=
 =?utf-8?B?eFhUV0UrMFdyZFNab1JyYlJPY1I4akpPdE5xR0psMmIwUDhGaGRhUE8wOUZT?=
 =?utf-8?B?SENCUXhrUXpJSnczK3p0RmpGS1NYYndzT2xXekdVZXdpTkVzMEJndmJmTHFS?=
 =?utf-8?B?bG5XWEd5WTFvbExxalZCejNKUkxYa2c3SC83YVovanVOY0FIRnU0akZ5YkZt?=
 =?utf-8?B?cXYxUkZ0UVk2UUc0TWN6TTNZQmtVUkJueEdjNWVjYU9PMFB1ZkFLSzZ4VERI?=
 =?utf-8?B?cW5WTmdCZTdtUmJKSFdBTVJROEo5ODhOUWFxNGhHcW5qclNxTlI3TXRFVGV2?=
 =?utf-8?B?RHhOaEtQTldja1pwb1pmMzQrMmY3VEhlNHFHa2Q2bGhaYXUrU21yUUNHOVVC?=
 =?utf-8?B?RWVuM0NGN1JGU1EyMlRMUW9CMk1mOE1COExhV2IyaFY4clZwUGpqTkRwdmFS?=
 =?utf-8?B?V2dJREw3RnhIYUk0cWtvMTYyaUJYZ2ZiN09MaEltRTUrWjBuaWoxUWZCNVhu?=
 =?utf-8?B?d2RBOWZ5ckVNTDRBb0pyOExrdU9iRWZJdlBwRkx6SEZKV0tJN1pnTGR4MTBq?=
 =?utf-8?B?Ykp0NTh4ZkhqNWNIR2VUZE9lU09HZUFRNjBmSEVUTW9FZEpUalozald1NEl1?=
 =?utf-8?B?V1pTVlo0cEVPV2U4VGxmTUtFRU83MFBxeXh2NE9KNmxJK0NnNTJWak9HM1Ur?=
 =?utf-8?B?RU1pR3NSY1NHdXVVcU9xVk9kclJWTzQvK0lxS2NLYTZRdHVrVVlOaTZWSk5u?=
 =?utf-8?B?NzlHdlJ0RjM1cm5pM3BSMUhsTTgwMVpOQzM4YWIrK0wvU1hPUm4yWEVtRFIx?=
 =?utf-8?B?TDFDUkEvMTVnYWVmSXNmcy8yZEwyZmxSNWh6VVphNlhONThsMS95elZhdGJn?=
 =?utf-8?B?L21xSklBOVBsL2JVcEgzRFhiaFEvM3ZWMWd0bnVpVUxTRTI2TjE2WS9DQ1pI?=
 =?utf-8?B?VVF4Q0V0aXoxaG04cUR5eTNkaXJmZmZGdUVmTzhHeEgzZjFIRUNodXFkM0lU?=
 =?utf-8?B?cXNtb05zU2hLcGYvSXFMMkdvRmVHZjkwVHp1bmhKbVlxclAveVVMOGJwbjg4?=
 =?utf-8?B?WlA1QVhENGloQXJ5U0FjVktyY1BrMkZHU3lHei9ORHY2YUdkcGJpQTI2NDc3?=
 =?utf-8?B?Q0VXV1VIMlFodVNIUVovOUp5WHRYdGYwTlgxZXYycTlmYjVuK0dBNGNRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azlIY2JlaFFvYTU0dlUxREJhSTQ3TStYWWZUdlI4VEZPOHNxV2FDM3ZuWGxz?=
 =?utf-8?B?N2x0Nkhybk5rcHd3OHF0ZmlZMkdoOU51Zjh1YXJqL0sxOVF4cW1iaEI2anZx?=
 =?utf-8?B?b3lIa25HQjNhckRVaEM1OG9Ub2t3OWdGZW9VTGtCUGtZSG81ZFlLN09RbVVI?=
 =?utf-8?B?b2dwQ3h5S21TSVd1YUFYSytKMnBhcko1T0ZEWEVyanp0eTBKYXoxRTg4ZldQ?=
 =?utf-8?B?M0hSZ0JQV1l1b2ZMUHlnNU1CSHJxbnZScXFuWmdHbWwzbFZOazdQbHZuRjlX?=
 =?utf-8?B?WDEzV3E5c09wV1VqdVF2c2lrVTEvVTA2SURYQjdYRElNUWtIUzlwTHRLdjdt?=
 =?utf-8?B?Nk1ZTEhLNEh4V2twYzljS3o3YWIrTkVmRDlxR3ZtbVlXV0QxUGlIRmRmMko3?=
 =?utf-8?B?VGx3UUYzWGZEZjJRNW9uUThWVXpDSy9wS3hldDluSDJ2WVFuUDJwdEttd1Bq?=
 =?utf-8?B?T1BJL1JESzFMb2dIdTJwYU1Db3FqWjJTZTRGV1RSeDdiMkI5OTMyMGRCd0Z5?=
 =?utf-8?B?VkdTWm5FNlRKVEpFV1c2a3o4UW95bEVaclhVeE9sTm1hakhPMHVHQk0vTjJ2?=
 =?utf-8?B?SFl0cnpjckNhTVhhNEo1ckhGdjRMN1Jvd0p3a3ZIek5ZYkZKbVY3ZGd0am1W?=
 =?utf-8?B?aEtFelkveU9aYzBjWVN2My9hT2s5cGg1Z3I2ZHRJeUk2NFU2dmsyR2d5UHB5?=
 =?utf-8?B?QXd0N0tSQlZEL3hrRTlJT1ViOTNxeDZaZEVuTDlHNmwzY3RHMEN1OVpnejhu?=
 =?utf-8?B?aGtWdUpHdEJiVVN4c0NDUk52SGZMVVYzL29xM25pWmhzdFZkV1hsQ2VNem5W?=
 =?utf-8?B?eXQ2K0tCWFUwR25VUlVaZDJ6eDY2QmdIeWYvZVI3Z0h1Vyt1VjhtNEtVcXRE?=
 =?utf-8?B?REJJbGlmc0NRWnR0bHhUdUlhVERreWZ6WmNnT05sL1R5bXB2cGFBT2h1UmJQ?=
 =?utf-8?B?bnJmTXVtUmk5K0dEMnBjOWsvOW5BdnpRaytLNGJoYkpTSERBMmY2VnNDYlhU?=
 =?utf-8?B?Vm10WXY4SUdES2dNcHRvSnREakFoNFlUSUZYeFFSdGMvQ1cxbzJ1R3ZoMGFY?=
 =?utf-8?B?TU91VW1MM0l2VWdUM1J0N0ZYaGQraVNCVUVVSUx2ZFoyZ1QzRTFTWkN0UHVQ?=
 =?utf-8?B?RytUU2VYNVV6MnI0dkU2V3YwYXFMTVNLcFl1bXJnQjExdEhFQUFqc0t6UUFH?=
 =?utf-8?B?dmZiZktESm5TYkk4RTdTdnI3am9aaUJNOFJ1ZGQ0WnZ1SDNTZzFHSkg4ay9E?=
 =?utf-8?B?OVRyblhmVFZqYVB2bUJrMlFaUy9oVnhOQzJsanRxTzZQNkwwK1NRVXd2VDhY?=
 =?utf-8?B?dkdVNHRrNU5WaldsK2xJYmVtUGovckl1TGIvb3pjalhxc1h2NzVuaHdPTW9D?=
 =?utf-8?B?MnhjcmE2YlV0b0lEZkZDbnY3WjVqOXFaMGh4dlVLbmxKcms0ZEt4dUZXTkN3?=
 =?utf-8?B?Q0w1cC9aN1BQcElxa1AwMjBqQTlGSFVmVWNGMGIvYXNoRkZNdm1HdVI5YW9B?=
 =?utf-8?B?Z2RZSVdSay8rN2cxbGEycFkvQ0lZdU43WlZJUGxlOWlMNmRuODBtdUkvZDhu?=
 =?utf-8?B?NEdQdnk2SGl2eFFxNDVqQlp5SnZFQ2JJN3dkUk5nTXZpcERHclFRQmpaZUtr?=
 =?utf-8?B?MEZzTEIrTkRpVDRFenNTMDZJeERDNXJmbXQrdGthQkcxMnMyS05Vd0NpUEhn?=
 =?utf-8?B?TjNZMEpDSEdmdzczdDY3VTYrTEkyMk0xeWxDcUVPUEk1S0h5S1hPcThvKzdw?=
 =?utf-8?B?aDVvOFJmRTBJT0p2OFFHM1MvMXFXdDR5MVdUL0xIeVMvNFRDak9uSTJ4Vkk0?=
 =?utf-8?B?VVpFdzF0a0FLZysxWmtqSS9uR0pjRXlqNmlkZ2xhUE9TbzNYYWw5ekYyRXFn?=
 =?utf-8?B?dmJDU2lYdmg5bHBEZ0J3YTN3TjNFQjNxblJWT0l4MnFWYVpFS29pWk16Y2hK?=
 =?utf-8?B?RWdMRkQzbHB6RnJIanloTjdZM3UvZzZVSXNOYUdrUVJDYTZIbG9MdDNDeWRR?=
 =?utf-8?B?WmYyNzhEdnc2b05CYzhuL3JHT2lONXgraVh1OHdoQ0k4aWtReWozcXFRY2ts?=
 =?utf-8?B?b3IvS2ZCcElmUUM3bVpFYUhPaXpOd01MMlR6Q3NzZUJLRWtCcno1L0thUGJU?=
 =?utf-8?B?N0J6NVg1MDJWT0wvNTFvVFdGS2RZSVRYa2JCcGhIclRlcTNGUkxyQ0hPRnpr?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b5d7716-71e6-4a81-a4c7-08dce827499c
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 05:57:42.0953 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +3Rcsay2uPoGDEDv1BXxjpdayucfOPyXMt1fnHYS7na5haIGYJ7ezzPYRu+4pUkiz83iHtYqeIwUaEkYWoOVLScHkBeBdk49foGWKoZWy8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4524
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


On 10/9/2024 4:07, Matt Atwood wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Add condition for P2.PG power down value.
>
> Bspec: 74494
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 1c8c2a2b05e1..3d95ee65a9f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3144,7 +3144,8 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
>   	if (intel_encoder_is_c10phy(encoder))
>   		return CX0_P2PG_STATE_DISABLE;
>   
> -	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
> +	if ((IS_BATTLEMAGE(i915) && encoder->port == PORT_A) ||
> +	    (DISPLAY_VER(i915) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
>   		return CX0_P2PG_STATE_DISABLE;
>   
>   	return CX0_P4PG_STATE_DISABLE;

-- 
-shekhar

