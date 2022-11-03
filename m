Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D28617A40
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 10:50:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A1B10E5CC;
	Thu,  3 Nov 2022 09:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0818E10E5D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 09:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667469007; x=1699005007;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dJefGsv422v3vqZe3AdlMYYI0Pox1GS4B6mMRuYGyFw=;
 b=Nd6IPUaSTXT22K+ynXfH/HyntTGOKpkxTTNy/Ep6BIp/jWBruFVmN4Mi
 f6G3aO10Oc0OkNh3IOkY/Bl1iwEOryCnnWoCmmvEkTwrmWLxGL9C8KtRK
 TITsYknf3EzCETdR5Wz7n8CyWDaQemaFx2lWH2Euc7L+rKrn9KmD8+mnf
 ARk4PMf980CVQzlcRXdUGaMl2d29NOv9XuwuvhCzrrWlSu+/lApi14Qb9
 HpQHBZcWiMPqHBvTpZsypnDEb9n5La6temDOLwqBs/0EWoxnf0YivEEKA
 lxF+rqP3LugreovCieYxCVIZZrRt0QrrleYGJHC6vuBtUVvjknztgXCDV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="309633331"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="309633331"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 02:50:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="612582562"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="612582562"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2022 02:50:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 02:50:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 02:50:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 02:49:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d1TUqmv8Xtn/7dLvKy94DgxAsEBdtmO2Ld0KnxCbGRQOXzWFex+F51z20YWTEkn7n1XlTVEga67BtoHNYuUQzuowD2g++XdJd+6zEIs/x3ZwH0lR4/VCF2N1TshvsaDaIo+9vvPYNUsjti5LfkT25Jcb+7+ZEQAAJH6VuVVSB33krxbFm11Q5mXmAqmGfjPJuu8zypCjyH4y6uNHjMqqLyJ5vkgV6OR1rfn9RMRx7WH4XyGPMfx0m51YOagzDs3xHwcZw0mcNDaB2LGy9H2Y+9nA1x8Lsrlr3CSk7hF7sTaDusedxq/cfF9H5/RxIAs74iABvFF+J9nzGMhcY8rGLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SkN7OK7adM2p4bLZn3kC6BjOpub3kEQtiaFSA0dd7qg=;
 b=jM46erVOnYqlqiK6GZCMxgxOMlpdyRfAV1MkJhYcJF0P/rYoWtR9kVIacTM4D6xzB+J5ZQhEbjvg1FtJC77+qHZi1Ff9M6ntbFxVa2fLob9D3fRr092YIDjj5e7GAElnEw+RvEaLQYzLRl9n1jn4lFOPYQs6hkXjbgDvE4skrQWUdZctqPAScYNsJ9tRB1viTfGAPVqNLdnE23QM7O0PT85U25Ibuo45o0RR9jUZDxLyM+rQBx8e451smuejRUblkotAwBP0jyab0JQyW4wFuTb/cQdOPKtZbKPb67GxwpN58tPb6OXDI8VxYhNtOQskWL2P/5NtWAJ6QS3NM0UybA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by BL1PR11MB5350.namprd11.prod.outlook.com (2603:10b6:208:31c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Thu, 3 Nov
 2022 09:49:43 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::be9d:e93e:4ec:166b]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::be9d:e93e:4ec:166b%7]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 09:49:43 +0000
Message-ID: <470dcbb3-b76a-be5f-24c7-fde3c89060fb@intel.com>
Date: Thu, 3 Nov 2022 11:48:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20221102145402.617336-1-gwan-gyeong.mun@intel.com>
 <20221102145402.617336-2-gwan-gyeong.mun@intel.com>
In-Reply-To: <20221102145402.617336-2-gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM5PR0402CA0022.eurprd04.prod.outlook.com
 (2603:10a6:203:90::32) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|BL1PR11MB5350:EE_
X-MS-Office365-Filtering-Correlation-Id: 50fc0e16-b760-4245-0eec-08dabd80bbc9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N84SiSO3v3MiH2g4XmjEpSpKX82E2Iy3eU8OGm+NUoSzzUv5ym074G47xshv0p/rWdCjpE0NR1Zy7qt6wXs/MSC5qCrIhYv2IKXPEcskzzMsIRADaZUVB/rJwmj1K6JJV55UKOecy9grZowlypOg0bN6QCKCqDOUggji3lHyHv2I636wGyrpqLtLcMSXDtEhM/gJYaMpSzSLV57jc5I+9xz6nzzrje7oU0p54CzXlpgADSUMb2N5I1QKhMbKYa5qV6JgTB+MRS7Jro9nYI++WGThuP1wXKZo/JmpFOcz5kEyrqK52HCC5338DU7ccmC3D7upAL661lAIfPfnIwE/gWLgteTealR9jcWH3RJAeI7sDnIgAHjW9OQY42xF+75LCc5FIakU10XdIcyK02nhapaRMKLDKJTd2PRcBiXVbfXVNmI4ks6n9k+9itC6iQZ3pNa/8v8/ygJK9+DOAgwUDd+IzFgCEx9cHzzG3uhEF+NX1A0UG//e5Ptz0sIA332lnGNgivvJhbnLprQrpHiRlisawY4KF7zTvFj0X5ayIZ4Mk+lo6MUUBz3z4uffB9SMJpDwVtM7zv9muLEzD1IcsLwXebXXyy0Qwdemq6sblGysB8zxdYQP7frYNs8oFn1xLDlUFArIaPxgq4gEGY11V+UdM2FhTg3q2+ElUfb/G72L4DcU/fA3Qh1wVYTgF9+hZSKbiFDMyjzB5+pqEFKrVYGJeYuKWdpZSOFkE+qxsbMX1qo63BXLjKqI+8QdGLZx4CHForYz32h5PNjMcsQUQ9NmeZGe+N0tEHcWUVOMEUovWjNBXu3dC/weXaIcdfBza2nN2HuzmpeN8zfq7GBc53DAzNxKO4kNdkywTDWEPYY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(376002)(396003)(346002)(366004)(451199015)(4326008)(5660300002)(2906002)(83380400001)(8676002)(66476007)(6916009)(66556008)(41300700001)(30864003)(8936002)(316002)(31686004)(66946007)(966005)(6512007)(6666004)(53546011)(36756003)(478600001)(82960400001)(6506007)(26005)(6486002)(2616005)(86362001)(186003)(31696002)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHp5VVBnb3VhdUlGbkdUMENlV1l2UGlscFZaVG8ra3AwNVY4dmZhK3BYRFJK?=
 =?utf-8?B?SVRSVVJkajZBREd0T1RpU1BWNE0vaDZ3anM4NjhRU29VR0l2anpoK2gyM25q?=
 =?utf-8?B?bGtNaW9iWlZOTXlRNUgyRUlheFljU3VUd1NZbUp4aWNLL1ZwaklCR1BDNVZh?=
 =?utf-8?B?enRiS3J0ekNuOHU4TGNncCtwZWFCdDhsT2F6UFBWa0M3L3VwUk5LWXZsdkNC?=
 =?utf-8?B?SjhDWnA5c21HSm9iZ3M5ZUhaaGNKaEllY0NwSXlhNyt0QWhiU1hZTEx2WXVs?=
 =?utf-8?B?Nk5CRDZvcmRuN1pPZ05XcTZyZ01pUFRHR2xYUnVVbXVJL2ozS3BjWWpXdFZ5?=
 =?utf-8?B?Y21zbVJPOGw0Q3dTYXJVRGd2N2R5M2t1cVBJOGFzbU9OL09EbHhDbXBlaW5L?=
 =?utf-8?B?ZHN5dnpkcmp0VXB3eGEzMkNvUW0wYW9zendhakVWTHIyN3FaU2JmR1FnWDE5?=
 =?utf-8?B?ZHJaVktKNERadUswb2l6c2lLbVVSUVRyZkJ2L3o3ZkMvU01iRWZPOEJ4VG5H?=
 =?utf-8?B?dlRWckFIRXovY2VMQytYQ0dmb1BKM3FiZmxmWHFuVlpLL1dESHRuWDl0Y2sx?=
 =?utf-8?B?SElXdFRsaEhTZGNlOVQyWXg0UnlIbEFJcDh5QmJpWFBKOTBaeUFIbjNiS2Jj?=
 =?utf-8?B?SG50QlFNYnAwUUQ2VVNWNmU2MDBmODBXMmZKbmx5NUNDWU1RR281L255dWVs?=
 =?utf-8?B?OWp3d0hMYnMzd2kwWnJQbXVvbmwvVUYvbTJibEFLT0l1WkRuQkdLaEFYVjdm?=
 =?utf-8?B?SVBkWFRVZ3JQMTdsM2kxMm5FVlViRmNqRGVKZlBBMzd4WS9mTkQzODJibnE5?=
 =?utf-8?B?d1ZhVkc0UWZaMmdlYmhaemVZYnVHTUlhejlCbFVtWUplcEdRUzByVXVhdm9w?=
 =?utf-8?B?dERjQTZqSkR1YU9VR25xb1FrQ0xZZlFqZHFoWXh0NklVUDlob3JvczVieFY4?=
 =?utf-8?B?VzRnKzVyRE5GN3dRWmg4UzhKKzl3Tk0vVjZoeXl4RzE2VDBTVWg0VHNyeXJS?=
 =?utf-8?B?T1lxcHo3RHFVYVJhR0JiRG5KdjR3UGNQd3lwUjN6aGd1WEdYc2RnUjE2eHdP?=
 =?utf-8?B?clVqS1p6b3RhK0NRbG9qOTBtZzRxODd3UHlianRUbVpPOE95c0tINnBEVzUw?=
 =?utf-8?B?TStXQzYyRFN1VXdLVFk3ZkpXalFHZ3gzbDF2MDVDeVBTbmlKMitwMDE5cU5j?=
 =?utf-8?B?RWFLZVNSUVBzaktCV2toR2czckR3ZURlVzBTZitTK2FTT29BMmp0YjFtYTFY?=
 =?utf-8?B?Y2dwaStsSWpKWkxqUFN4WTFFZGFVd0cyQUVDSk5uNlp1Y01xdVVacWVDVlU0?=
 =?utf-8?B?aGpVQVAyNXFlM2s0bnJZbEVnb0JWUUxiV0FSR3RuakhySllLRVlEV1hnMGtU?=
 =?utf-8?B?Z2pCTTNkSTJtYjM3WUYyRU5ZNW1lSm9ZNjduOEN5akhEZ1ZwU3VCdjYzSld6?=
 =?utf-8?B?RHJQekorRitmM2NaWURvK0xTVmxreGRGQjY5SHhjQVVzUVoxSE9ZOWhkdW1W?=
 =?utf-8?B?Nm5qdU5tZ3h4UW1nTkRzbUQwY0NmSW1hT1hmWU1wa2NoekVTUWJ2RWI5Smp4?=
 =?utf-8?B?anp2YkR1RXJVcFR0RGF3cDdqRlFsNE5NQ0oxYU9jT2tDcXdqdVhJZzBaYWdL?=
 =?utf-8?B?ZjlwelFkcFdSYkpVaVR3dE5XOVpQOUU5K0U3dTNEUXR4N2FFYUpsYnBjeGZl?=
 =?utf-8?B?cDlabi9uaFExYk5ZanZHUm5MVnlleHQ2ZURBOUpSSXJIalVTNW1ObnBBWGRG?=
 =?utf-8?B?K0FZOURpOS9rSWxOcTlobENScHdqOXh4WEg3bDFTYlllak0rNjVNZU1Ja0py?=
 =?utf-8?B?M21rZTBaNUJ2SXk3Mzl3TGczQWZFZU5WcGtqNDhUcy9IeENEWXdnL0lxckpP?=
 =?utf-8?B?UWJxd2tndjZWQzZ3bEoxUWlkUS9EbStYb2ZVNnhrNHdRQWNUdUxXdmpoTDNt?=
 =?utf-8?B?OWwvaElPdDE0Y2t1TDFKSVZHdWgyM1ZQZFhBU05ZMG5GUWFSbW81enNXbC9M?=
 =?utf-8?B?QXF1YzJMK3o1SExvOE1KNXB0OUdoRU1RSDhjRkRQRUxiSzB4bFp1SXNqdEMw?=
 =?utf-8?B?ZC9rczRwVFRyL2hSdDFjSWQ0SWNHVEZsNUMyd0hBWlRMUUhsN1RWMllJUWxH?=
 =?utf-8?B?bERqYWx1MFRpa1ZLaFRWNVBLaVpORXJHc1JaOXFEdzVFUmZaQ1drdi82L0Ey?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50fc0e16-b760-4245-0eec-08dabd80bbc9
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 09:49:43.3138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lyPCtfm7lvPRGqmbKIkC7duAhEWEaHgn66/PBBVflexTY934HcEeNxT42mFsX6YsvuPh+9DiBo7HGTR4mXcwkr31YZHOOI6x6AZ6lcp0tNs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5350
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v14 1/7] overflow: Introduce
 overflows_type() and castable_to_type()
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
Cc: thomas.hellstrom@linux.intel.com, jani.nikula@intel.com,
 chris@chris-wilson.co.uk, matthew.auld@intel.com, andrzej.hajda@intel.com,
 mchehab@kernel.org, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch has merged to linux-next.

On 11/2/22 4:53 PM, Gwan-gyeong Mun wrote:
> From: Kees Cook <keescook@chromium.org>
> 
> Implement a robust overflows_type() macro to test if a variable or
> constant value would overflow another variable or type. This can be
> used as a constant expression for static_assert() (which requires a
> constant expression[1][2]) when used on constant values. This must be
> constructed manually, since __builtin_add_overflow() does not produce
> a constant expression[3].
> 
> Additionally adds castable_to_type(), similar to __same_type(), but for
> checking if a constant value would overflow if cast to a given type.
> 
> Add unit tests for overflows_type(), __same_type(), and castable_to_type()
> to the existing KUnit "overflow" test:
> 
> [16:03:33] ================== overflow (21 subtests) ==================
> ...
> [16:03:33] [PASSED] overflows_type_test
> [16:03:33] [PASSED] same_type_test
> [16:03:33] [PASSED] castable_to_type_test
> [16:03:33] ==================== [PASSED] overflow =====================
> [16:03:33] ============================================================
> [16:03:33] Testing complete. Ran 21 tests: passed: 21
> [16:03:33] Elapsed time: 24.022s total, 0.002s configuring, 22.598s building, 0.767s running
> 
> [1] https://en.cppreference.com/w/c/language/_Static_assert
> [2] C11 standard (ISO/IEC 9899:2011): 6.7.10 Static assertions
> [3] https://gcc.gnu.org/onlinedocs/gcc/Integer-Overflow-Builtins.html
>      6.56 Built-in Functions to Perform Arithmetic with Overflow Checking
>      Built-in Function: bool __builtin_add_overflow (type1 a, type2 b,
> 
> Cc: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Tom Rix <trix@redhat.com>
> Cc: Daniel Latypov <dlatypov@google.com>
> Cc: Vitor Massaru Iha <vitor@massaru.org>
> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: linux-hardening@vger.kernel.org
> Cc: llvm@lists.linux.dev
> Co-developed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> Link: https://lore.kernel.org/r/20221024201125.1416422-1-gwan-gyeong.mun@intel.com
> ---
>   drivers/gpu/drm/i915/i915_user_extensions.c |   2 +-
>   drivers/gpu/drm/i915/i915_utils.h           |   4 -
>   include/linux/compiler.h                    |   1 +
>   include/linux/overflow.h                    |  48 +++
>   lib/Makefile                                |   1 +
>   lib/overflow_kunit.c                        | 381 ++++++++++++++++++++
>   6 files changed, 432 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_user_extensions.c b/drivers/gpu/drm/i915/i915_user_extensions.c
> index c822d0aafd2d..e3f808372c47 100644
> --- a/drivers/gpu/drm/i915/i915_user_extensions.c
> +++ b/drivers/gpu/drm/i915/i915_user_extensions.c
> @@ -51,7 +51,7 @@ int i915_user_extensions(struct i915_user_extension __user *ext,
>   			return err;
>   
>   		if (get_user(next, &ext->next_extension) ||
> -		    overflows_type(next, ext))
> +		    overflows_type(next, uintptr_t))
>   			return -EFAULT;
>   
>   		ext = u64_to_user_ptr(next);
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 6c14d13364bf..67a66d4d5c70 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -111,10 +111,6 @@ bool i915_error_injected(void);
>   #define range_overflows_end_t(type, start, size, max) \
>   	range_overflows_end((type)(start), (type)(size), (type)(max))
>   
> -/* Note we don't consider signbits :| */
> -#define overflows_type(x, T) \
> -	(sizeof(x) > sizeof(T) && (x) >> BITS_PER_TYPE(T))
> -
>   #define ptr_mask_bits(ptr, n) ({					\
>   	unsigned long __v = (unsigned long)(ptr);			\
>   	(typeof(ptr))(__v & -BIT(n));					\
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 973a1bfd7ef5..947a60b801db 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -236,6 +236,7 @@ static inline void *offset_to_ptr(const int *off)
>    * bool and also pointer types.
>    */
>   #define is_signed_type(type) (((type)(-1)) < (__force type)1)
> +#define is_unsigned_type(type) (!is_signed_type(type))
>   
>   /*
>    * This is needed in functions which generate the stack canary, see
> diff --git a/include/linux/overflow.h b/include/linux/overflow.h
> index 1d3be1a2204c..16ae8d912390 100644
> --- a/include/linux/overflow.h
> +++ b/include/linux/overflow.h
> @@ -128,6 +128,54 @@ static inline bool __must_check __must_check_overflow(bool overflow)
>   	(*_d >> _to_shift) != _a);					\
>   }))
>   
> +#define __overflows_type_constexpr(x, T) (			\
> +	is_unsigned_type(typeof(x)) ?				\
> +		(x) > type_max(typeof(T)) ? 1 : 0		\
> +	: is_unsigned_type(typeof(T)) ?				\
> +		(x) < 0 || (x) > type_max(typeof(T)) ? 1 : 0	\
> +		: (x) < type_min(typeof(T)) ||			\
> +		  (x) > type_max(typeof(T)) ? 1 : 0)
> +
> +#define __overflows_type(x, T)		({	\
> +	typeof(T) v = 0;			\
> +	check_add_overflow((x), v, &v);		\
> +})
> +
> +/**
> + * overflows_type - helper for checking the overflows between value, variables,
> + *		    or data type
> + *
> + * @n: source constant value or variable to be checked
> + * @T: destination variable or data type proposed to store @x
> + *
> + * Compares the @x expression for whether or not it can safely fit in
> + * the storage of the type in @T. @x and @T can have different types.
> + * If @x is a constant expression, this will also resolve to a constant
> + * expression.
> + *
> + * Returns: true if overflow can occur, false otherwise.
> + */
> +#define overflows_type(n, T)					\
> +	__builtin_choose_expr(__is_constexpr(n),		\
> +			      __overflows_type_constexpr(n, T),	\
> +			      __overflows_type(n, T))
> +
> +/**
> + * castable_to_type - like __same_type(), but also allows for casted literals
> + *
> + * @n: variable or constant value
> + * @T: variable or data type
> + *
> + * Unlike the __same_type() macro, this allows a constant value as the
> + * first argument. If this value would not overflow into an assignment
> + * of the second argument's type, it returns true. Otherwise, this falls
> + * back to __same_type().
> + */
> +#define castable_to_type(n, T)						\
> +	__builtin_choose_expr(__is_constexpr(n),			\
> +			      !__overflows_type_constexpr(n, T),	\
> +			      __same_type(n, T))
> +
>   /**
>    * size_mul() - Calculate size_t multiplication with saturation at SIZE_MAX
>    * @factor1: first factor
> diff --git a/lib/Makefile b/lib/Makefile
> index 161d6a724ff7..452802d30718 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -376,6 +376,7 @@ obj-$(CONFIG_CMDLINE_KUNIT_TEST) += cmdline_kunit.o
>   obj-$(CONFIG_SLUB_KUNIT_TEST) += slub_kunit.o
>   obj-$(CONFIG_MEMCPY_KUNIT_TEST) += memcpy_kunit.o
>   obj-$(CONFIG_IS_SIGNED_TYPE_KUNIT_TEST) += is_signed_type_kunit.o
> +CFLAGS_overflow_kunit.o = $(call cc-disable-warning, tautological-constant-out-of-range-compare)
>   obj-$(CONFIG_OVERFLOW_KUNIT_TEST) += overflow_kunit.o
>   CFLAGS_stackinit_kunit.o += $(call cc-disable-warning, switch-unreachable)
>   obj-$(CONFIG_STACKINIT_KUNIT_TEST) += stackinit_kunit.o
> diff --git a/lib/overflow_kunit.c b/lib/overflow_kunit.c
> index b8556a2e7bb1..dcd3ba102db6 100644
> --- a/lib/overflow_kunit.c
> +++ b/lib/overflow_kunit.c
> @@ -736,6 +736,384 @@ static void overflow_size_helpers_test(struct kunit *test)
>   #undef check_one_size_helper
>   }
>   
> +static void overflows_type_test(struct kunit *test)
> +{
> +	int count = 0;
> +	unsigned int var;
> +
> +#define __TEST_OVERFLOWS_TYPE(func, arg1, arg2, of)	do {		\
> +	bool __of = func(arg1, arg2);					\
> +	KUNIT_EXPECT_EQ_MSG(test, __of, of,				\
> +		"expected " #func "(" #arg1 ", " #arg2 " to%s overflow\n",\
> +		of ? "" : " not");					\
> +	count++;							\
> +} while (0)
> +
> +/* Args are: first type, second type, value, overflow expected */
> +#define TEST_OVERFLOWS_TYPE(__t1, __t2, v, of) do {			\
> +	__t1 t1 = (v);							\
> +	__t2 t2;							\
> +	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, t2, of);		\
> +	__TEST_OVERFLOWS_TYPE(__overflows_type, t1, __t2, of);		\
> +	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, t2, of);	\
> +	__TEST_OVERFLOWS_TYPE(__overflows_type_constexpr, t1, __t2, of);\
> +} while (0)
> +
> +	TEST_OVERFLOWS_TYPE(u8, u8, U8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u8, u16, U8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u8, s8, U8_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u8, s8, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u8, s8, (u8)S8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u8, s16, U8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s8, u8, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s8, u8, -1, true);
> +	TEST_OVERFLOWS_TYPE(s8, u8, S8_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s8, u16, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s8, u16, -1, true);
> +	TEST_OVERFLOWS_TYPE(s8, u16, S8_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s8, u32, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s8, u32, -1, true);
> +	TEST_OVERFLOWS_TYPE(s8, u32, S8_MIN, true);
> +#if BITS_PER_LONG == 64
> +	TEST_OVERFLOWS_TYPE(s8, u64, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s8, u64, -1, true);
> +	TEST_OVERFLOWS_TYPE(s8, u64, S8_MIN, true);
> +#endif
> +	TEST_OVERFLOWS_TYPE(s8, s8, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s8, s8, S8_MIN, false);
> +	TEST_OVERFLOWS_TYPE(s8, s16, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s8, s16, S8_MIN, false);
> +	TEST_OVERFLOWS_TYPE(u16, u8, U8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u16, u8, (u16)U8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u16, u8, U16_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u16, s8, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u16, s8, (u16)S8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u16, s8, U16_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u16, s16, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u16, s16, (u16)S16_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u16, s16, U16_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u16, u32, U16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u16, s32, U16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s16, u8, U8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s16, u8, (s16)U8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s16, u8, -1, true);
> +	TEST_OVERFLOWS_TYPE(s16, u8, S16_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s16, u16, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s16, u16, -1, true);
> +	TEST_OVERFLOWS_TYPE(s16, u16, S16_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s16, u32, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s16, u32, -1, true);
> +	TEST_OVERFLOWS_TYPE(s16, u32, S16_MIN, true);
> +#if BITS_PER_LONG == 64
> +	TEST_OVERFLOWS_TYPE(s16, u64, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s16, u64, -1, true);
> +	TEST_OVERFLOWS_TYPE(s16, u64, S16_MIN, true);
> +#endif
> +	TEST_OVERFLOWS_TYPE(s16, s8, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s16, s8, S8_MIN, false);
> +	TEST_OVERFLOWS_TYPE(s16, s8, (s16)S8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s16, s8, (s16)S8_MIN - 1, true);
> +	TEST_OVERFLOWS_TYPE(s16, s8, S16_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s16, s8, S16_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s16, s16, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s16, s16, S16_MIN, false);
> +	TEST_OVERFLOWS_TYPE(s16, s32, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s16, s32, S16_MIN, false);
> +	TEST_OVERFLOWS_TYPE(u32, u8, U8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u32, u8, (u32)U8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u32, u8, U32_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u32, s8, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u32, s8, (u32)S8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u32, s8, U32_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u32, u16, U16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u32, u16, U16_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u32, u16, U32_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u32, s16, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u32, s16, (u32)S16_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u32, s16, U32_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u32, u32, U32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u32, s32, S32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u32, s32, U32_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u32, s32, (u32)S32_MAX + 1, true);
> +#if BITS_PER_LONG == 64
> +	TEST_OVERFLOWS_TYPE(u32, u64, U32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u32, s64, U32_MAX, false);
> +#endif
> +	TEST_OVERFLOWS_TYPE(s32, u8, U8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s32, u8, (s32)U8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s32, u16, S32_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s32, u8, -1, true);
> +	TEST_OVERFLOWS_TYPE(s32, u8, S32_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s32, u16, U16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s32, u16, (s32)U16_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s32, u16, S32_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s32, u16, -1, true);
> +	TEST_OVERFLOWS_TYPE(s32, u16, S32_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s32, u32, S32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s32, u32, -1, true);
> +	TEST_OVERFLOWS_TYPE(s32, u32, S32_MIN, true);
> +#if BITS_PER_LONG == 64
> +	TEST_OVERFLOWS_TYPE(s32, u64, S32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s32, u64, -1, true);
> +	TEST_OVERFLOWS_TYPE(s32, u64, S32_MIN, true);
> +#endif
> +	TEST_OVERFLOWS_TYPE(s32, s8, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s32, s8, S8_MIN, false);
> +	TEST_OVERFLOWS_TYPE(s32, s8, (s32)S8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s32, s8, (s32)S8_MIN - 1, true);
> +	TEST_OVERFLOWS_TYPE(s32, s8, S32_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s32, s8, S32_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s32, s16, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s32, s16, S16_MIN, false);
> +	TEST_OVERFLOWS_TYPE(s32, s16, (s32)S16_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s32, s16, (s32)S16_MIN - 1, true);
> +	TEST_OVERFLOWS_TYPE(s32, s16, S32_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s32, s16, S32_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s32, s32, S32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s32, s32, S32_MIN, false);
> +#if BITS_PER_LONG == 64
> +	TEST_OVERFLOWS_TYPE(s32, s64, S32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s32, s64, S32_MIN, false);
> +	TEST_OVERFLOWS_TYPE(u64, u8, U64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u64, u8, U8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u64, u8, (u64)U8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u64, u16, U64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u64, u16, U16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u64, u16, (u64)U16_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u64, u32, U64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u64, u32, U32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u64, u32, (u64)U32_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u64, u64, U64_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u64, s8, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u64, s8, (u64)S8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u64, s8, U64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u64, s16, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u64, s16, (u64)S16_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u64, s16, U64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u64, s32, S32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u64, s32, (u64)S32_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(u64, s32, U64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u64, s64, S64_MAX, false);
> +	TEST_OVERFLOWS_TYPE(u64, s64, U64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(u64, s64, (u64)S64_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, u8, S64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s64, u8, S64_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s64, u8, -1, true);
> +	TEST_OVERFLOWS_TYPE(s64, u8, U8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s64, u8, (s64)U8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, u16, S64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s64, u16, S64_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s64, u16, -1, true);
> +	TEST_OVERFLOWS_TYPE(s64, u16, U16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s64, u16, (s64)U16_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, u32, S64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s64, u32, S64_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s64, u32, -1, true);
> +	TEST_OVERFLOWS_TYPE(s64, u32, U32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s64, u32, (s64)U32_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, u64, S64_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s64, u64, S64_MIN, true);
> +	TEST_OVERFLOWS_TYPE(s64, u64, -1, true);
> +	TEST_OVERFLOWS_TYPE(s64, s8, S8_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s64, s8, S8_MIN, false);
> +	TEST_OVERFLOWS_TYPE(s64, s8, (s64)S8_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, s8, (s64)S8_MIN - 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, s8, S64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s64, s16, S16_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s64, s16, S16_MIN, false);
> +	TEST_OVERFLOWS_TYPE(s64, s16, (s64)S16_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, s16, (s64)S16_MIN - 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, s16, S64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s64, s32, S32_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s64, s32, S32_MIN, false);
> +	TEST_OVERFLOWS_TYPE(s64, s32, (s64)S32_MAX + 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, s32, (s64)S32_MIN - 1, true);
> +	TEST_OVERFLOWS_TYPE(s64, s32, S64_MAX, true);
> +	TEST_OVERFLOWS_TYPE(s64, s64, S64_MAX, false);
> +	TEST_OVERFLOWS_TYPE(s64, s64, S64_MIN, false);
> +#endif
> +
> +	/* Check for macro side-effects. */
> +	var = INT_MAX - 1;
> +	__TEST_OVERFLOWS_TYPE(__overflows_type, var++, int, false);
> +	__TEST_OVERFLOWS_TYPE(__overflows_type, var++, int, false);
> +	__TEST_OVERFLOWS_TYPE(__overflows_type, var++, int, true);
> +	var = INT_MAX - 1;
> +	__TEST_OVERFLOWS_TYPE(overflows_type, var++, int, false);
> +	__TEST_OVERFLOWS_TYPE(overflows_type, var++, int, false);
> +	__TEST_OVERFLOWS_TYPE(overflows_type, var++, int, true);
> +
> +	kunit_info(test, "%d overflows_type() tests finished\n", count);
> +#undef TEST_OVERFLOWS_TYPE
> +#undef __TEST_OVERFLOWS_TYPE
> +}
> +
> +static void same_type_test(struct kunit *test)
> +{
> +	int count = 0;
> +	int var;
> +
> +#define TEST_SAME_TYPE(t1, t2, same)			do {	\
> +	typeof(t1) __t1h = type_max(t1);			\
> +	typeof(t1) __t1l = type_min(t1);			\
> +	typeof(t2) __t2h = type_max(t2);			\
> +	typeof(t2) __t2l = type_min(t2);			\
> +	KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1h));	\
> +	KUNIT_EXPECT_EQ(test, true, __same_type(t1, __t1l));	\
> +	KUNIT_EXPECT_EQ(test, true, __same_type(__t1h, t1));	\
> +	KUNIT_EXPECT_EQ(test, true, __same_type(__t1l, t1));	\
> +	KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2h));	\
> +	KUNIT_EXPECT_EQ(test, true, __same_type(t2, __t2l));	\
> +	KUNIT_EXPECT_EQ(test, true, __same_type(__t2h, t2));	\
> +	KUNIT_EXPECT_EQ(test, true, __same_type(__t2l, t2));	\
> +	KUNIT_EXPECT_EQ(test, same, __same_type(t1, t2));	\
> +	KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1h));	\
> +	KUNIT_EXPECT_EQ(test, same, __same_type(t2, __t1l));	\
> +	KUNIT_EXPECT_EQ(test, same, __same_type(__t1h, t2));	\
> +	KUNIT_EXPECT_EQ(test, same, __same_type(__t1l, t2));	\
> +	KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2h));	\
> +	KUNIT_EXPECT_EQ(test, same, __same_type(t1, __t2l));	\
> +	KUNIT_EXPECT_EQ(test, same, __same_type(__t2h, t1));	\
> +	KUNIT_EXPECT_EQ(test, same, __same_type(__t2l, t1));	\
> +} while (0)
> +
> +#if BITS_PER_LONG == 64
> +# define TEST_SAME_TYPE64(base, t, m)	TEST_SAME_TYPE(base, t, m)
> +#else
> +# define TEST_SAME_TYPE64(base, t, m)	do { } while (0)
> +#endif
> +
> +#define TEST_TYPE_SETS(base, mu8, mu16, mu32, ms8, ms16, ms32, mu64, ms64) \
> +do {									\
> +	TEST_SAME_TYPE(base,  u8,  mu8);				\
> +	TEST_SAME_TYPE(base, u16, mu16);				\
> +	TEST_SAME_TYPE(base, u32, mu32);				\
> +	TEST_SAME_TYPE(base,  s8,  ms8);				\
> +	TEST_SAME_TYPE(base, s16, ms16);				\
> +	TEST_SAME_TYPE(base, s32, ms32);				\
> +	TEST_SAME_TYPE64(base, u64, mu64);				\
> +	TEST_SAME_TYPE64(base, s64, ms64);				\
> +} while (0)
> +
> +	TEST_TYPE_SETS(u8,   true, false, false, false, false, false, false, false);
> +	TEST_TYPE_SETS(u16, false,  true, false, false, false, false, false, false);
> +	TEST_TYPE_SETS(u32, false, false,  true, false, false, false, false, false);
> +	TEST_TYPE_SETS(s8,  false, false, false,  true, false, false, false, false);
> +	TEST_TYPE_SETS(s16, false, false, false, false,  true, false, false, false);
> +	TEST_TYPE_SETS(s32, false, false, false, false, false,  true, false, false);
> +#if BITS_PER_LONG == 64
> +	TEST_TYPE_SETS(u64, false, false, false, false, false, false,  true, false);
> +	TEST_TYPE_SETS(s64, false, false, false, false, false, false, false,  true);
> +#endif
> +
> +	/* Check for macro side-effects. */
> +	var = 4;
> +	KUNIT_EXPECT_EQ(test, var, 4);
> +	KUNIT_EXPECT_TRUE(test, __same_type(var++, int));
> +	KUNIT_EXPECT_EQ(test, var, 4);
> +	KUNIT_EXPECT_TRUE(test, __same_type(int, var++));
> +	KUNIT_EXPECT_EQ(test, var, 4);
> +	KUNIT_EXPECT_TRUE(test, __same_type(var++, var++));
> +	KUNIT_EXPECT_EQ(test, var, 4);
> +
> +	kunit_info(test, "%d __same_type() tests finished\n", count);
> +
> +#undef TEST_TYPE_SETS
> +#undef TEST_SAME_TYPE64
> +#undef TEST_SAME_TYPE
> +}
> +
> +static void castable_to_type_test(struct kunit *test)
> +{
> +	int count = 0;
> +
> +#define TEST_CASTABLE_TO_TYPE(arg1, arg2, pass)	do {	\
> +	bool __pass = castable_to_type(arg1, arg2);		\
> +	KUNIT_EXPECT_EQ_MSG(test, __pass, pass,			\
> +		"expected castable_to_type(" #arg1 ", " #arg2 ") to%s pass\n",\
> +		pass ? "" : " not");				\
> +	count++;						\
> +} while (0)
> +
> +	TEST_CASTABLE_TO_TYPE(16, u8, true);
> +	TEST_CASTABLE_TO_TYPE(16, u16, true);
> +	TEST_CASTABLE_TO_TYPE(16, u32, true);
> +	TEST_CASTABLE_TO_TYPE(16, s8, true);
> +	TEST_CASTABLE_TO_TYPE(16, s16, true);
> +	TEST_CASTABLE_TO_TYPE(16, s32, true);
> +	TEST_CASTABLE_TO_TYPE(-16, s8, true);
> +	TEST_CASTABLE_TO_TYPE(-16, s16, true);
> +	TEST_CASTABLE_TO_TYPE(-16, s32, true);
> +#if BITS_PER_LONG == 64
> +	TEST_CASTABLE_TO_TYPE(16, u64, true);
> +	TEST_CASTABLE_TO_TYPE(-16, s64, true);
> +#endif
> +
> +#define TEST_CASTABLE_TO_TYPE_VAR(width)	do {				\
> +	u ## width u ## width ## var = 0;					\
> +	s ## width s ## width ## var = 0;					\
> +										\
> +	/* Constant expressions that fit types. */				\
> +	TEST_CASTABLE_TO_TYPE(type_max(u ## width), u ## width, true);		\
> +	TEST_CASTABLE_TO_TYPE(type_min(u ## width), u ## width, true);		\
> +	TEST_CASTABLE_TO_TYPE(type_max(u ## width), u ## width ## var, true);	\
> +	TEST_CASTABLE_TO_TYPE(type_min(u ## width), u ## width ## var, true);	\
> +	TEST_CASTABLE_TO_TYPE(type_max(s ## width), s ## width, true);		\
> +	TEST_CASTABLE_TO_TYPE(type_min(s ## width), s ## width, true);		\
> +	TEST_CASTABLE_TO_TYPE(type_max(s ## width), s ## width ## var, true);	\
> +	TEST_CASTABLE_TO_TYPE(type_min(u ## width), s ## width ## var, true);	\
> +	/* Constant expressions that do not fit types. */			\
> +	TEST_CASTABLE_TO_TYPE(type_max(u ## width), s ## width, false);		\
> +	TEST_CASTABLE_TO_TYPE(type_max(u ## width), s ## width ## var, false);	\
> +	TEST_CASTABLE_TO_TYPE(type_min(s ## width), u ## width, false);		\
> +	TEST_CASTABLE_TO_TYPE(type_min(s ## width), u ## width ## var, false);	\
> +	/* Non-constant expression with mismatched type. */			\
> +	TEST_CASTABLE_TO_TYPE(s ## width ## var, u ## width, false);		\
> +	TEST_CASTABLE_TO_TYPE(u ## width ## var, s ## width, false);		\
> +} while (0)
> +
> +#define TEST_CASTABLE_TO_TYPE_RANGE(width)	do {				\
> +	unsigned long big = U ## width ## _MAX;					\
> +	signed long small = S ## width ## _MIN;					\
> +	u ## width u ## width ## var = 0;					\
> +	s ## width s ## width ## var = 0;					\
> +										\
> +	/* Constant expression in range. */					\
> +	TEST_CASTABLE_TO_TYPE(U ## width ## _MAX, u ## width, true);		\
> +	TEST_CASTABLE_TO_TYPE(U ## width ## _MAX, u ## width ## var, true);	\
> +	TEST_CASTABLE_TO_TYPE(S ## width ## _MIN, s ## width, true);		\
> +	TEST_CASTABLE_TO_TYPE(S ## width ## _MIN, s ## width ## var, true);	\
> +	/* Constant expression out of range. */					\
> +	TEST_CASTABLE_TO_TYPE((unsigned long)U ## width ## _MAX + 1, u ## width, false); \
> +	TEST_CASTABLE_TO_TYPE((unsigned long)U ## width ## _MAX + 1, u ## width ## var, false); \
> +	TEST_CASTABLE_TO_TYPE((signed long)S ## width ## _MIN - 1, s ## width, false); \
> +	TEST_CASTABLE_TO_TYPE((signed long)S ## width ## _MIN - 1, s ## width ## var, false); \
> +	/* Non-constant expression with mismatched type. */			\
> +	TEST_CASTABLE_TO_TYPE(big, u ## width, false);				\
> +	TEST_CASTABLE_TO_TYPE(big, u ## width ## var, false);			\
> +	TEST_CASTABLE_TO_TYPE(small, s ## width, false);			\
> +	TEST_CASTABLE_TO_TYPE(small, s ## width ## var, false);			\
> +} while (0)
> +
> +	TEST_CASTABLE_TO_TYPE_VAR(8);
> +	TEST_CASTABLE_TO_TYPE_VAR(16);
> +	TEST_CASTABLE_TO_TYPE_VAR(32);
> +#if BITS_PER_LONG == 64
> +	TEST_CASTABLE_TO_TYPE_VAR(64);
> +#endif
> +
> +	TEST_CASTABLE_TO_TYPE_RANGE(8);
> +	TEST_CASTABLE_TO_TYPE_RANGE(16);
> +#if BITS_PER_LONG == 64
> +	TEST_CASTABLE_TO_TYPE_RANGE(32);
> +#endif
> +	kunit_info(test, "%d castable_to_type() tests finished\n", count);
> +
> +#undef TEST_CASTABLE_TO_TYPE_RANGE
> +#undef TEST_CASTABLE_TO_TYPE_VAR
> +#undef TEST_CASTABLE_TO_TYPE
> +}
> +
>   static struct kunit_case overflow_test_cases[] = {
>   	KUNIT_CASE(u8_u8__u8_overflow_test),
>   	KUNIT_CASE(s8_s8__s8_overflow_test),
> @@ -755,6 +1133,9 @@ static struct kunit_case overflow_test_cases[] = {
>   	KUNIT_CASE(shift_nonsense_test),
>   	KUNIT_CASE(overflow_allocation_test),
>   	KUNIT_CASE(overflow_size_helpers_test),
> +	KUNIT_CASE(overflows_type_test),
> +	KUNIT_CASE(same_type_test),
> +	KUNIT_CASE(castable_to_type_test),
>   	{}
>   };
>   
