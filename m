Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB64D6C731D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 23:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D9710E4B7;
	Thu, 23 Mar 2023 22:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A70410E4B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 22:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679610624; x=1711146624;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HCTyfUBGtulY5qdeVrsoV31RaWtpui9/69KH2txzmsU=;
 b=nTXifdFw8Yzkx6faqxAtdKtqGuL7U4aWPI4Rfpy5Hm5RkSld7ft9dd8c
 qQw8p6FF0UxCxSAtjl2uUZQtip4YnRAnFxgetcTqpvT5y2HraXt6jlBb/
 pmB5fiKCbmdtjrR8ioE+LsZSQu/Nzv9nyvvsDtNevFqk5RUU8EZklWYxL
 DoQtkYBFJEbklr8eVTwFTOts+OF0ADHyBhF+FbyYf2djfETxsArERLLnp
 +Vj12zZu1VT/akNVBJS3bWaFAFdXj9svxhyq9Wek4DiGj4IB6telTdszJ
 3IhPnbhslyTlBo4z142AWc9+eXyqV4P7k85t2SS+Okw4Wuwp8OZOGyVjh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="341198783"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="341198783"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:30:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="659816065"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="659816065"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 23 Mar 2023 15:30:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 23 Mar 2023 15:30:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 23 Mar 2023 15:30:23 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 23 Mar 2023 15:30:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aevnkh6i1Wcw0jbkgb1WNJyj/twZU/L6QXAPuiy35F2jF3TFg8yv4jHdMmufjIRl75CjD3dgPAaLgugvsVjcuCU4pwFx6M1R2K8yT9LNkssZxZbhAGNDyi6bAxfBv1MGcuP5bwiUu01U3PeLjblgylC2Hlwj7czJzbzwcYV/K91fQLE9kKk9BadrofwNNW0L/0xH0ndSjctLcRLSj7wHmVBOktgjihD8oPvBybjLn2knrGaJGfVmhWFoLT0lYrmIm2qNa/dShquaO9+sEj2tequllVsV0z7u1AGb7Gv1+lXwCLMMKd1Yu71IMzn9DYxgdsUnyKVPPzwn2d14kmMqvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iTVNnMkQMbY7/fAsLBkq5RyWk4FNfpXQQEp0VDJs4wY=;
 b=LkCV0+ELHnSFeJUAczzZw42CiQrhTEoQgXSWuqbHKbbTS4RZXFaNY0nPTTNfy4MkTSziu0PjYHwbtKKYJ1Yh3oabHPRuEvBTLQii0VotL0xXmftYVOJ9wQX6FlE8zAD/Nj8ZxqklKfT+n3Iw/TE46XDHSM7MfopkfGO9V0n3i1icFKqEbnm0pWcspTZRahpO0aEPJH4/fRPJrAhJu9zXhCiumi4QXlIcsrv5WJYJLu5jX+OtmHAYEL1ZTCocQ2kz39kLHTQ8UyifUrCRANwrGxuV6CceRq2psuQ9r0gXetT47tHw398Pv/2TB+BhS4l1g1qQymj7/+IHGcBTbuKICw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MW4PR11MB7104.namprd11.prod.outlook.com (2603:10b6:303:22b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Thu, 23 Mar
 2023 22:30:21 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::5399:6c34:d8f5:9fab]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::5399:6c34:d8f5:9fab%6]) with mapi id 15.20.6178.038; Thu, 23 Mar 2023
 22:30:21 +0000
Message-ID: <ce6360f2-07d9-a2bc-d1fc-141981af05ea@intel.com>
Date: Thu, 23 Mar 2023 15:30:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20230316220632.3312218-1-John.C.Harrison@Intel.com>
 <167953924945.6628.8427877386808361140@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <167953924945.6628.8427877386808361140@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0032.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::7) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|MW4PR11MB7104:EE_
X-MS-Office365-Filtering-Correlation-Id: c9cb4865-ff3d-43cd-20e4-08db2bee300e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /+fO2B3AJ+T8fZj1kKQi7qUUFS/Kcwwx21xrH508sJO0Byc+ATmoO+pVHRQIXUHeaUHdCZ3DoWbrF+a/bS6h1HwJEzthqm4pgNWqh+K379BU37cb/KHXBqFzLj7WYvSMAn3iB3sR7MflKrveCYGlZ1TkmM6u3knmrWOE9pv9tGVb6B7SY4z6CT3ZUbkwZTSMdqV+SOCiqZClPnjES8wMHT34qTCqavuk///sBw/ko/IUmRotr86LNl+X1k4D2HI3FX2aPTr7PaN0pWqt7gtWKD2kMSI+uP3UeFjLZvizvxNzQFrMJSeKh/pNLDCTNh8N+ZGZOpteEiDbi9TlIXMTOxGNhSk2830gzhIjdsWi/YRwCoryQ3oZJzkxachFxdchrhOgmdi/NMLioJ1d/iQrhFae3EPapTmvFmOUrb7coCx8fZflAxx0Abi/fbOp/Pg87yE29MNmNGczu4SXrzyWgHf4IhDe4Xa+xRbOFoo4oCNgKWtQRpnhkAIu7Ydng6ylpX+7V9XcRInZlx9tO3rbkl9wZBclWBaZABV37kddCmB1ue9CZ515NsvTIymAV7HQ9O8EHkMfPd8oAA3hF8n0UNj69/Gxr/5Hocgb6ndPoWZ2Clq3d0oU5qxnHSDuDlsVsgjVLycmV90ktMFMa7O5DwKg0+ySeJPQUX+Zo/IOkjfHlZdOPbZYSqjYyNWKF3Qf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199018)(478600001)(66556008)(6916009)(66476007)(66946007)(316002)(5660300002)(41300700001)(82960400001)(8936002)(26005)(53546011)(6512007)(6506007)(2616005)(186003)(6486002)(83380400001)(966005)(31696002)(86362001)(36756003)(38100700002)(2906002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTV2QmFwYmRJQkw5cGVEV3NhVHc5Y2pMT3g1Q2EvbE13d3c2dHJoZ3lteEQx?=
 =?utf-8?B?SVMwa0JIaVN0UGRpS3ZYZ2x1OEhaOWZmdEZ4R2UxYkFTMHFFVnpDWi9nTExz?=
 =?utf-8?B?SkZRMGdkQm1EWEE5R2JzSkNQbFNKMTJIdnpGS3ZjQ3A3S0tpeTUzL0pNUjJo?=
 =?utf-8?B?bXkzWE81ZnVQVUZqd204MGtYSHpyUG5qaWw0M3JLYnBULytQa0pYSzBmR2cw?=
 =?utf-8?B?L0xOSVc2YVhLNldma0NjZFo1Z3BZR2g5TFljWkFvdFdWbkFnbFpaTVQ5bkpj?=
 =?utf-8?B?ZzFEUTJzS2FzblgzN0VYUnRPcE1ybHIrd3IvQjRyQWk2dVlESDF6Ky9XUzh3?=
 =?utf-8?B?dDNkaGxUMlU4VjllY3F6Q2w5TW9aelVadDhPYVBwRXFQVlVWM1BRdXBhWTgy?=
 =?utf-8?B?Nk5NUGM4V096NWZVYnRNVS8zb25Pc2FGRmMwNUtOU3NMbUZpWnBiSFB2MWNN?=
 =?utf-8?B?Q211Y0ZsRkszSDkvNnF5ODVRUlNmZm1HRDJJREwwWmxqOUZnODhZanREUjVu?=
 =?utf-8?B?ZWxsVGdxVzYwK0dFYk5tY3ErdWloZlFkdGZLS1JEM2dtVEFmZ0Y5RHJFSE5J?=
 =?utf-8?B?dzBGVFVPWitHdDZvSWEwNFVDdWhSaGVCK3lVRTQwMUd6S1pzcm5xMEw5SVpZ?=
 =?utf-8?B?NkYrTTBXQmRqSStXeW1USDVZK014UG4zRExzVGN4MWNkSkFsMTlkdWY3M0NP?=
 =?utf-8?B?dVlQd2JxQ0p2WGRlZE93eUFrVmx3SDRFL1FzWGFnT0RqUzhXYk9xUVBkTFJG?=
 =?utf-8?B?RjRjeUhqR1Rub2VObzFDR1g2cFRnVnFEVzF1RUFQRVVvZFdkTG1HQlZIVmVn?=
 =?utf-8?B?d3RsaU9nSWdqVGJyVmZ0OFZZaDFvTmJNM0VXc1lTVUlDZTlLejNkQWFLVWJn?=
 =?utf-8?B?Y3JJU0ZNMUtYRlBNV0ZURVpSZ3E5bEN3eGNDUllsdUl3Z2o2QzdGN2NLK2Fl?=
 =?utf-8?B?Qmh1ckdES3BLbzhPOFFmd3RDYWYveHVrdE52cGhiYTR4Q0RhQTJzdUlHQitV?=
 =?utf-8?B?Zk0xTjVNUFFzTDRxeU1uTU42SDdBeHpvMHRZWjRLaE1ZcHpRZ1VTdzJhOHlK?=
 =?utf-8?B?TkpBSnlzaWdIbDMwMXFwaHF6RExITndWYWhXdDJvNVdiOGhOTVlJU0FvMFZY?=
 =?utf-8?B?OVBrWlp1dlpPUW82QW1neWRvZWpadzNxLzdQRWV4Q2tCelNDaVNpdlJkbDV6?=
 =?utf-8?B?ZCtqeG80RFdjY2szcGo5OE1xU2VWeG0rWlR4SktlTXpXQ0tISHVMVzhvTm1R?=
 =?utf-8?B?Y2ZaQXhZanFMSjY0OFYxRzZBbzAvTzNqTHNPUW9lNlRvek9aejEyK0RSMkNF?=
 =?utf-8?B?dnpydDZaQXFOZER6cDJ3ZW5SN3VEWXdYNERQbXJLU25QdGlZK3ZHQWd2L3dY?=
 =?utf-8?B?MHM0eGEzaGJGME5qYVVpaVI4Sk9mZkZocEpCTTliVnJpa2hQTlJnSUhmVDRS?=
 =?utf-8?B?K1lJanpyWjVpcVpIWmZZRngwZWd1R1hYZ1lFOWVCODJDcFkxNHV4T2p0QXBa?=
 =?utf-8?B?YldRVXhTTVN0M0J2ZWJMdWdhdnl2VlBsb3hNcWYvaFJzNDhOZHpNR2N5WnNx?=
 =?utf-8?B?SkpDRUtPTmEyL1BWQXZ0alkrOFNTTVhtaXRUZkVTeWpKMFN6OWpRRlMzL2JT?=
 =?utf-8?B?cWM1Vll2cWpFRGpNbVNyUmhNN3RZYlFKTGpwRlJ2MmZKc29pSjAzYkV0T3Jp?=
 =?utf-8?B?YWlPZjFEMGVod1J0RzFpcktIWm5CTFVORkhrS1pkZTFEV1d1bVlpMXd4OUk5?=
 =?utf-8?B?VDcvcHJWYTA1TkRnTmRaaGdBejRLQndhQ25oZjJ3MDMrLzZiMVpUK3JLTDZN?=
 =?utf-8?B?YjExblo2TVFPTlBRSkp1SEdySmpnUnVyV0RLbElFQlpZajdENi82MkgyUGJS?=
 =?utf-8?B?ODVwaEFCd2VpNHB1VXZ6SVJlZmFPMy9wRC8wbXpoM1lCRkZNc25GN204cnMx?=
 =?utf-8?B?b0swck95a1pSamEvVHdGdHZDN2FCTmlqdHY4QUtLS3NtZE9ublBmWlYxSlg0?=
 =?utf-8?B?QmRjdkpVYnpWc3dvWVpKcCs0SlpPVHQrL1hKOFJKeWJWTzZ2cGVMb1ZqRVlZ?=
 =?utf-8?B?K3NuWEtqdC9zU2FxaWxqWDdzV2IvekJtVkpSUFZ5dFBjU1RnZE5qcFJ1cW5k?=
 =?utf-8?B?Z2RLY1V6Q1hJWlJ1V3Jlc2xIY0VrZDFnNVUwZ2tBZHZUM2c0UkorYjNDaW1q?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9cb4865-ff3d-43cd-20e4-08db2bee300e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2023 22:30:21.3218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YwiwhZepPemyPCvDmyiJpF20jFJv6ZoFYwoElCNrDBmxgzX7GpaYl27Xan9Sa0tFwrTi1lU7+1UksEYMT/pyhMD8RJSLU8cycFu3bC1a6n8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7104
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Improvements_to_GuC_load_failure_handling_=28rev3=29?=
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

On 3/22/2023 19:40, Patchwork wrote:
> == Series Details ==
>
> Series: Improvements to GuC load failure handling (rev3)
> URL   : https://patchwork.freedesktop.org/series/114168/
> State : warning
>
> == Summary ==
>
> Error: dim checkpatch failed
> b4df7f16c846 drm/i915/guc: Improve GuC load error reporting
> 2be0fcf3087c drm/i915/guc: Allow for very slow GuC loading
> -:21: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' instead
> #21:
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7931
>
> -:22: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' instead
> #22:
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8060
>
> -:23: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' instead
> #23:
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8083
>
> -:24: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' instead
> #24:
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8136
>
> -:25: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' instead
These issues appear to be the tool getting confused about bug references 
versus patchwork links. Other patches in the tree use the references tag 
for bug links.

John.

> #25:
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8137
>
> total: 0 errors, 5 warnings, 0 checks, 85 lines checked
>
>

