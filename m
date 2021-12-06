Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0174F46A5AD
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 20:29:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E97106E96B;
	Mon,  6 Dec 2021 19:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD7C96E43B
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Dec 2021 19:29:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="237199000"
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="237199000"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 11:29:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="502252318"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 06 Dec 2021 11:29:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 6 Dec 2021 11:29:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 6 Dec 2021 11:29:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 6 Dec 2021 11:29:18 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 6 Dec 2021 11:29:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Shn0DzUisRq5n/1jBRxkBIIJTdhK8+wf3ekDo+ko40ioTGpFYmetPvnxDPsLY8wZSGm5yPc3P1D57+Q2FtulI8bQ8XUYxzJ9zkL674gXlVcjorBeVlD1RgfsCFzE9j2N5qSNvpTwjog9RRWNLw+fkD9hHvDh82xkzV3sPoyFmKPA3ZyEBd/UUTd8OKuxqkmIiG/H6M1lR3TjFhcr3HTR9z4XYEwucmWcJ/+j2j4aQBRuV+yxMgYlSL0+NYBv/xT2xfS9pqtdqwWze5ysyqKA9xkzK2YeJY90k6GXJotwwEe3F9V8mrslhwbDo57MiFggBMgniONmy1OfQQdOw3Eq/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Mgo/C2gJC+nYM4G3aBHT02ivvM1k+v2Kj5kvsMPEnE=;
 b=kuQWHFH1VcGF4+EhEewRndaW5iIIpQQvJly1Sq2Bz6PWIUTtzg30/dSwX4+prQwa/6aPH9FJPqcV4HqWHCbpMwxtrR80mZxeHkMrifh7JD5eRw75/eDgdG5Jf38K3/hFtC9zc2alHNZlicKUNXGJm2eYnEtNI/EhcooMFu8f4FoLgpPw+nXyhmkf9E5lYhHCRli3Za0/ogdp+9rXNqmrZoLuo2w9bElGGzc/V7tqioh6jSC+pNV81q8VLavKLvCIuiZATRn54JIEjV3SQLO45wTearzIPGA+BaBYvW6OdMWqebrxhmFyKpX7Fxa/xxDCw3APEiGJLVAbDlDiEZkBXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Mgo/C2gJC+nYM4G3aBHT02ivvM1k+v2Kj5kvsMPEnE=;
 b=VuiZwzHyvjd+ZoJ/dDX+DVBv6VUtQTA1AQ5RFCDpLHU3RmevWdCNSobBq+K/h4aMsLE9VXJJHowbM4XiOBd9M2TKF/Erxr6qpMhHECizR5sP3ZAEnVjp8Btqbr8Co1A6F31dV21xxB0AP9/oDHVO41WCOk6+DWOOvwAzaIRc6yE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5676.namprd11.prod.outlook.com (2603:10b6:510:ea::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.14; Mon, 6 Dec
 2021 19:29:17 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::d8b9:b1c1:dd29:82e7]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::d8b9:b1c1:dd29:82e7%8]) with mapi id 15.20.4755.021; Mon, 6 Dec 2021
 19:29:17 +0000
Message-ID: <128ead1a-546f-80cd-b442-e43a40684b6c@intel.com>
Date: Mon, 6 Dec 2021 11:29:14 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.2
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>, Michal Wajdeczko
 <michal.wajdeczko@intel.com>
References: <20211203183339.3276250-1-John.C.Harrison@Intel.com>
 <163857043316.5407.10739772615643638072@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <163857043316.5407.10739772615643638072@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CO2PR04CA0152.namprd04.prod.outlook.com (2603:10b6:104::30)
 To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 CO2PR04CA0152.namprd04.prod.outlook.com (2603:10b6:104::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.16 via Frontend Transport; Mon, 6 Dec 2021 19:29:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b74a33a2-7568-4a7b-dd21-08d9b8eeb16a
X-MS-TrafficTypeDiagnostic: PH0PR11MB5676:EE_
X-Microsoft-Antispam-PRVS: <PH0PR11MB567652B36FDA36B3CD34D4A4BD6D9@PH0PR11MB5676.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4xF90fMUxZyVnMn2poR69+yxN5KP4c8IaU0Ae98MSNNA8gpo2XEMUtO6IdEutWMNRYTJhSNt2BmB4dqUIEDQnM/TxdRxKvTG+vFDRXppRPWMkTeO+ofAghQFIdbCIaeEXPqlSTWfjH/pFEgLF+6vDTWxRPSQRGgV8viBAfbI1uWZz6/M5sQ2JADlOrngWjYrtyaMIG6tj5vCVlYkzltm4AxtI+n0tmnNIokpSNwDwCE1JLVqQ9FamEfO99f6sx0Di/yoi/mkWn9H+5vfag5hibD31B0NzOiRpuAthlb/fC3A/plnkfd6m/FG4VZo9ECtv5YDGO+1iYRevxD+E3JqeZx3Mt/7Gf4IPlHkPqo3c8SP3gxeg+s2jbJ/lWCyK7ejGFPOn+yP2/Tfy5Pz66oTDbyXYVBOPqHr43Y6NR7DhOfc8SM8Ko1Fp+rlhKdm/5Claj9sse92C89+v8NnZ5O7GIDG9KZYYy9Tir25HAnu2wRu+AxYIxfSK2MB5N+c8ZcyO0JmTDFlMjg1Rre8B92e0/ewYrunAtvZozvAPNaov+ynLh5mUNMdnMoTC8y29Twmd2Cjt6h6KFKchH3w3q5nyV/dPJ1ckL0BoTyHrnQRZbjq2xBpzj69mwobrnjO58/YF+aWEZAdLDwXhR6IKk3yzquLa3MLCTwjDhD4Z6rQFB/4st+2xWL45yknuw83hEmGzfLye3GAsXJSelDq9EAg7cRI/gn1/AGvtiZ0EQScFUQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(37006003)(16576012)(6862004)(8936002)(6486002)(15650500001)(2906002)(82960400001)(316002)(31696002)(966005)(508600001)(186003)(66946007)(66556008)(36756003)(6636002)(4744005)(2616005)(66476007)(38100700002)(956004)(5660300002)(53546011)(31686004)(26005)(83380400001)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWtsbnRORzVpVHh6RWxmdDhieGswbjliUlF0cDdZR2dRV0d2T2hJbURuMTBX?=
 =?utf-8?B?aVVPVGZ5MXJ6dVUzNG1sZit2RmhlbEZOaXdNNCtmYjMrekQyTlJYSmtyTlU0?=
 =?utf-8?B?NU44cmErdlR2QjhCU0RvZVBLbVpUdHl4WnppekxaNmFUNlVIcUlMUTE0bHNT?=
 =?utf-8?B?Z1JKQWg5UjNDMTVsYS9URUpEbmZzSHY5MytqMCt4Mk0zeXJPYzJWdjJuYWFt?=
 =?utf-8?B?ZVhqRHlrM09xRVBVdHpnc1ZzY1pXcjVBUFJiYzV0SXErNXEvWGtDMWFNZUNt?=
 =?utf-8?B?ZzR5eHMyMW1KVTJSeUVmL2hlM28zTHQ5aVFEWUxqSUpsNnNaU2ZxN1AyQ28x?=
 =?utf-8?B?UEhrbnhqb0QvK1RwbmN0a1REUytrczdkMTZwb1l3c0todWY4eG1Ma1ZDRjcy?=
 =?utf-8?B?ZUVIeWRScmIzZVM3QWYyb0taMmdsd3BqZEZvZlhocm40aEJ5TFhGR3RObjZk?=
 =?utf-8?B?NUtQVDJiMEhLREpXOEtBUEVBUGdZQ1dHTHhuSlNkR2V3NXJzOFRoYUtqZmNp?=
 =?utf-8?B?amZFSmNiWXBqSmNsMlZkb1F6ZGt4UGhhcngvbFpFeTUvTWQwblFFYVp5Qlkz?=
 =?utf-8?B?dzZMNWdRWjVPWXg5Z3Mxb2tlRzA1c2w3dUhoVWZ1ZFJhVzdUUmxZajlBOXVD?=
 =?utf-8?B?NXpOSGpUdkpCOWVzTUsxSE9CUU50VmhXOWtTQTNOcGNjeitNN2h0amwwREdC?=
 =?utf-8?B?REJQOE1LM0RTTzVXUDBGbm9XV3d4QTBRc3NycWRZOG00OVV4Y2ZLcVlUVzR6?=
 =?utf-8?B?NFJWMk5KSHp1a0RuMlV1VVdGdU4yWXZ2VWpkcENtREg0UmtZbU9ab2hFcWpC?=
 =?utf-8?B?dnJuTWVCakxEKzZlb045VTNHMnE1QWRpbVhmV3VVdFYrZ1cwQ3J5QXJtSTMw?=
 =?utf-8?B?bUJ3dGllR211WXArYmJjNnhlUU9LL01aNzQvQnY1ejQwTml1UFF6enlib2VY?=
 =?utf-8?B?S0VKUnVoWlR3Q280TDNZZ1VqOWVuNWZPU2tEdjlWOUpBcDZGSk9lZ0ZUaURX?=
 =?utf-8?B?Y0pCUWp6QlF3SlBTTWEvZ09zV3Jsem1pMnRQUkEzdXpid2VPbHovMWUvMVcy?=
 =?utf-8?B?NWNvaEZrQlpydEFPYW9ScXBBdnBubE4wSFJ0Um1wdmd5bE5OYkVSNWwvanVw?=
 =?utf-8?B?akFQN25YT3AzSlJuSTJWL0tuVnJVNWNuNHdBZFRlQjlZZmRCbzlUam9XV3BN?=
 =?utf-8?B?Y1NMWHo4YU5relpsWWdjR2Z3N0IvQkNjVGhNbmNtdGxHT1FxMlBsS2dJMEw0?=
 =?utf-8?B?UTJWcm1sZVFXKzNTQTFpTXExemQxd0UxenhUMGdGV29nWkU3VG92TURlRTA2?=
 =?utf-8?B?bmpnNGN4WlA5aTRpUmpjZkgvaWdBYlJ5czNSNFVBd2x4OFRUMUFScXVLUlY1?=
 =?utf-8?B?TWJhWTY5M1BlVjNwUWc2RVFRbmV4WnJtb0xMeWloT2RQRWVTY0REUTNqUnQv?=
 =?utf-8?B?aHBnZTBGc2xUVG1TUStJQVJ5Rm5JRXV6b0tVSmRsaWJxTnFBZ3NZQU5nUTZH?=
 =?utf-8?B?NkNXd3dDdEQ1cUlzME9McTZqbjdoNG9CNTJma3lnTTNvWHlMZTdGNkY4MkxF?=
 =?utf-8?B?SDlVeUxRcjJVamtBc3pqWGVtSXkwdWRUSGwzdWM2QnVZSWgza2tNRysvV0s5?=
 =?utf-8?B?VWJHSTluN3NyRFRFU05iakhRa1hlN1pBZTVSRVZNa3JWMGVKcmpkNDRZWU02?=
 =?utf-8?B?dml3c3E0UHpyTHpmbFZWSkIvclkzS3ZVdlFnZ01pcTRTL2l3L1VDWUMvK0FJ?=
 =?utf-8?B?ckZkUEtSb2JzaUYxUG9MOVZ0SnN0dG9GMjdxYlVFTGhERjRnUkU4eXZaV2FE?=
 =?utf-8?B?ZlE2Q2dQK0xRODF2Z20wQ2cvMW5nbnVreXlKemtraFBmVkp1bitrbmFxakt6?=
 =?utf-8?B?K21sdkljMDBVZVNVaG5ReGxobk43K2gvSTI1dHJUN3RoZlN5ZjlWakI5em5r?=
 =?utf-8?B?b1ZhclpwbVpHZlI2cncyNnZiWXhaSTJ0OVlJWXo5UHlaS21ydjFZakJJMEZ4?=
 =?utf-8?B?YUduY3k1eXVtbWpZNjZOUGlrK2xxSytzUHJLUTM3WjdJOHRYRzh4QXBZUHRS?=
 =?utf-8?B?UFZTbCt1NUFEOE41VSsrR0pqR1RnMzZucnNLMjN1NWhvb3FkKzdaUGlSS216?=
 =?utf-8?B?QnIwQXJNM3lBSnhRdHlJb0tjYVd2azduK0VmWG16eFAwSVBlWFFOOHFWNWZU?=
 =?utf-8?B?U0RPb0ljSE0rRzJGemxNc2ZNZkRnOXlkVDFESTFKeEg4OTY4Z0ZWQllpd0xv?=
 =?utf-8?B?ZmxRTGdtbS92TXlXOTJIY0dkTk9BPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b74a33a2-7568-4a7b-dd21-08d9b8eeb16a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2021 19:29:16.9934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LIBk3Vk++QNw3+OGNHr+OtB0e5uXX3xxtHB6yxCKOMHH0d+7+eD9OMcwAVTXcuR2vfgbxbg3ygLgBWzyj/2oWit8RMJSBFkHiyMLJhOPSQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5676
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIFVw?=
 =?utf-8?q?date_to_GuC_version_69=2E0=2E0?=
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

Michal, do you know what this is complaining about?

John.

On 12/3/2021 14:27, Patchwork wrote:
> == Series Details ==
>
> Series: Update to GuC version 69.0.0
> URL   : https://patchwork.freedesktop.org/series/97564/
> State : warning
>
> == Summary ==
>
> $ make htmldocs 2>&1 > /dev/null | grep i915
> /home/cidrm/kernel/Documentation/gpu/i915:542: ./drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h:44: WARNING: Inline target start-string without end-string.
> /home/cidrm/kernel/Documentation/gpu/i915:542: ./drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h:48: WARNING: Inline target start-string without end-string.
> /home/cidrm/kernel/Documentation/gpu/i915:542: ./drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h:52: WARNING: Inline target start-string without end-string.
>
>

