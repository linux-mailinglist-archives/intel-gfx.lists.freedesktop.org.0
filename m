Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E6247342B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 19:37:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E0D10E855;
	Mon, 13 Dec 2021 18:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E35A310E83D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 18:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639420638; x=1670956638;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=vvVQpJeJfTXdoV7aERzE2dXejFq0ONkRwCMEg30IV5Y=;
 b=LFlq2EXMK7kaOWwCOql9fRlQKAaCxNw+TO5eSHAUINOnjj8E9ahr2s7n
 HI1vPzR/XArDv7CkN8XhiBzf+Mqc4LC+M8bLFbxqlndq6hrwL3U2vZmaG
 qNkwRX4VTyKt4mccEjgUOnhBQq6gkdw/6uM0QzKNKTtMJ2TlE1sz9OeRI
 TY38fOJ2bWmw6zRn4f6ZaYbcEYN91gFlouC2nDilysrt4saFnVZkb7R3z
 5M5hTA7FMKNvZvn9zJQnuM1V28H6aIebmTX4DwTB0xjAjLBolTkqJjUKP
 SbNtPjg6D3iHQSq4IErNZ4ywvdt7ahW0Uud+840WSxsul/Csl4/wlqqoc g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="262930979"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; 
 d="scan'208,217";a="262930979"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 10:37:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; 
 d="scan'208,217";a="681735978"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 13 Dec 2021 10:37:17 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 10:37:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 10:37:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 10:37:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 10:37:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLtKtT3ht37YoDu73TtsyJMDLdD2EWTd7ZHfD5ALCn19IHN2ik6Vrx10OMoshanUSTebhy0EawKauv7DUK6NvVk9609BLt68E6wkol/SgXePslLpLbnEoV/HAUu2jXpUtX7vHS+RZQdeUL5OPwdRbMG6CJIbiBDgbOHt8Vy8MVTkuujhmUUhXfqI4AbK/pW6f4/UsF9cd+pPQ7iMdaallmHdWNg/R08aFlMExTGJXFxinyWqjcs6RG6JWGzasHnLZgSM2GhWj6PK7h/+JlySYt1O48ZE4qGZ/1cVDVI8Zixlq8tbfhoeGOfNjNldcaRJqsrxGlK2vGwyVgRbXdeYzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5gSA3MyALitSblhUYw8/49ZZPaWyqYNeHq81FmzzVpY=;
 b=UmFa8t+8gSpwlBOTrqRwnk9tXtsW0ZuQdxcevUrz4MSJrCE8cQkhnHSOK0575mew0EC3q3GC+D5wzUAKU9YqGmJ4t0fob+qho/8NXiG4U1XBnssIGcwmTB9mw87k7awJJVRqkoYUtblITkKgcqnbiwPYUCOPL8U/dWOw0BBwZhdLKujEvVzAI0nUTExgcExt1e4zRBPPlAKUYKyxwxf876H6KCwP298tnIDKQDmJ7FbkZneXwT2yRhIQDyViJtrOfRyiS6x1HYbcFESRnKLel6zN9NJvYQpcvtMFx5X2icqjP5LD31kVMvNHW6NyvIvMKG0IoZvkHH9QPbOXuV5ibQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5gSA3MyALitSblhUYw8/49ZZPaWyqYNeHq81FmzzVpY=;
 b=PL6m9XADzWROisn0UdWAxkZ9NyqZPjiIwdoVbsYhUq+wlKz4lgvweVBARX+lLxOuVGb67UIGRDGVA1hIGXJMBWz+7RCDGtVS6a1AeYHiExAAiGbtgDo+NkA7n+QOxrEh3LPkBFRvXcEI/OxG+ubPrBZNOjQrQAfFQoWEuOpqlSo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BYAPR11MB3720.namprd11.prod.outlook.com (2603:10b6:a03:fc::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.14; Mon, 13 Dec
 2021 18:37:14 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e%5]) with mapi id 15.20.4778.017; Mon, 13 Dec 2021
 18:37:14 +0000
Content-Type: multipart/alternative;
 boundary="------------AjD7zIanHv7vEN6J5BR0lwa0"
Message-ID: <fa21e88b-ada7-113a-d695-e3006ff89d47@intel.com>
Date: Mon, 13 Dec 2021 10:37:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20211211065859.2248188-1-John.C.Harrison@Intel.com>
 <163927699996.3479.10737103184183161810@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <163927699996.3479.10737103184183161810@emeril.freedesktop.org>
X-ClientProxiedBy: MWHPR19CA0093.namprd19.prod.outlook.com
 (2603:10b6:320:1f::31) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8c4dba61-01ee-4319-b7f1-08d9be6794d5
X-MS-TrafficTypeDiagnostic: BYAPR11MB3720:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB3720C112926BD60C2DEC840CBD749@BYAPR11MB3720.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ti2PlDWBDckDouPGrLMWr/qJ5TV5OXbwhLcatjaio4E79f2+4wDfnkiKRT8rsjh6SjuI8sui1X0ExizV48SAq9idDd64dKK3C6hx/AjbvT9kEG2SiBOm5mttOvsRbhZ/gXO3OJEs1DI+Zt6mjssYWdmPq2X3NSYFjR8mgMDQ9VUx3Svl3H28j3qAnJmZQ/bYCYRVwTd/KhGL3LPikhdFXS70C6oqouYZSd2wr2kLQiMYx6lit+w7+4JfIos00+ZzTxC9FNZqFC65vICb02pwa7hy8irFcu8PWd10zVNZKp2GKs+ueUfQqx3tfwmkcu49iQwiG1xWRtpQpl/P4SzotVPdFJb5Vmf4hPX52FNoLlCeefuJ4UbmnQqUq5AI7IfP5+wyNOeRT8pJbf3zVOClMZMm7MXXGjDlJkq25XQnTcq9OgsFm0jJ/msZ/bZAj2MvPUHtwER9X5ux+C4egediprdls93uwp3RgZCNKYWbF4RLaLth5pilclsZSXPZ+I8hCx4hSejRXmf9TChUwBV7P9J260iRtO5GWGQFt0cj7TvDcNMmo+8A9c/wAJzgAF3igiZ0K+kKdXOjvVH1HdmsfleZ2ItQRIVt3UwIVkbPnsT0s5WLnPOOyfMivl+oQkNHWpIUF6UJSkmGj0ReDKjSyl2zNmRfjoMzrKJ6qRXDXnTRSm3/UQCtU6ywXy5jVRy7lHE/EBsQMxnPPaPjXrTxNluifbVWIDiLVi3PsXmppimrYnLoRRTsZs/9BBF46IwzMNKzrygfVm+15167ykdZiFmiOoj8aB17/S8LS8kMmCVHGp6yvWoOnwGtAdOq59x9tMrQ2lxRf/qNWCven3swiZfzU29aAAfGeWHNH62Bz5Dt3Bt7y8hyHUImwy0OQEy9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2616005)(966005)(186003)(5660300002)(166002)(83380400001)(26005)(66476007)(21615005)(36756003)(6916009)(31696002)(31686004)(66946007)(53546011)(508600001)(38100700002)(6486002)(6506007)(86362001)(316002)(6512007)(2906002)(30864003)(6666004)(82960400001)(40265005)(66556008)(8936002)(33964004)(13750500001)(43740500002)(45980500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEEwaUgreDRnNWF4c1FUcWFOYUJ4SGxoSXRJQ09pRjcwV0U5TFpSUXR6ZDRC?=
 =?utf-8?B?TGtyWjdpOElwN0hRdWQwcTJqeDQ3ZHIxdnNUakZmcnZhbWZSSE1rRE12cGpS?=
 =?utf-8?B?UEY0L2VoZkQ4MnVnbEU3MVBsajYvN054RjJIeWhxRGt4bXZhWU1QQ2M5YWNj?=
 =?utf-8?B?aXBjRlgzR3JSWlh0UUU4TlBZWXpRZUdkTkYzME85eHVCRktxVnNuVkNNcUYy?=
 =?utf-8?B?QWRVVVNkclhOdE9yVXdMemIzcGVkeGs0MG53Vi8wa3VWOVlKZkhpYUZDR3R3?=
 =?utf-8?B?K2xLRHVxZC9OemN3TytZbTJ1QzM1M1pGOXA1Z3M2NkRqSjZuV1UydWgrTzk4?=
 =?utf-8?B?TmdCdE1uTXp0RHR1V0kxWTF6bjRWTEkwMXBXcVpOajRialVkc1ZaZHljYzV1?=
 =?utf-8?B?QjdSZmtEQVhYVS9TcEJpdld3K3l6ODZTOC93UUtvTVpSd2NHb3hpMlBnYXdl?=
 =?utf-8?B?Zy9wZHFQcWs1N3hGV1VvYkx6SzhBNFM4ZzlvMU10VkdSWVdIb3dIcDdiQUJ6?=
 =?utf-8?B?d0k1ektuOE9nTmJSeEVWc0g0OFdiQmhGbnBJSlVJZ0JpUXJuSk81cWp1NndG?=
 =?utf-8?B?OWNxR3BLcWd4bGhxdVRxcjIxK2pTbjM1R2V5TWFMYURzZ1FFelNLTkdaTWU5?=
 =?utf-8?B?cVpZbkZSTWtBYzVIeEtVMjQ2OUxpcUZxZ2V5RXEvNnp3QzRRVVRqRTBEazNw?=
 =?utf-8?B?TmlveDA0MDQyRzJ6RkF4ekJyY2E3dnNpc29rMVl0OVJUS3A1STMvYlJwSG43?=
 =?utf-8?B?bW1IWnJQT29pU2lsWVphOC9pMGJMNFJhY2hqQVZBMk9QaXY2ckJLTG43SXY3?=
 =?utf-8?B?SWdHQitPUGs3WXZpbDVNaXR2eGgrZ2pPYzU1OEFTZFZTWWFZa0VqOW9kTnZa?=
 =?utf-8?B?eStoejNmSzZVRzRiR2hSblRxaG1Na1lGUWFhaG1IZGdrcUk3Rlh0ZTV4VXEv?=
 =?utf-8?B?SENCbjFqdjhaQXN4WWI2bDdoQnZ6U3ZnOEsrZG13SXRQVGx4OXZjcTh1bmFa?=
 =?utf-8?B?Y3cwUDMrSHRZZUYwM09SRWZqNTFyL0Y4Y2c0WklLNmtVVHhDY1pERHZ0NjBr?=
 =?utf-8?B?SDd1WmpsVml3Uk1uaU84eHhpUzkweFpmSW9zRkhXdlFEeUsxc0hxQVlYVEdC?=
 =?utf-8?B?VmlIbEMzdnVybTNtcGpyOXp1K2lhVGdDbFkwU09GN1c0dzQzV3E5TGNpME1i?=
 =?utf-8?B?MFRpekhPQkZFVFByVm0xN2MzRlpLWmIrZCtGMGE4NXNnTWw0Z2krUmNwT1pT?=
 =?utf-8?B?dGFnM3JjNjRtMEEzRTVteFdLVXoxSm5KOC9WaHJnTXhnZUlvb1NoWnZkUk9U?=
 =?utf-8?B?OWh4aVIxM2IvTUJPc0pFNEhGcnEvUzFDTXJyV1dJV2MrZHRXU05CckxXSzVa?=
 =?utf-8?B?NmVET2VON2V4MlE2QUhTOFJhMy9XNFRaeENxRTlqRU1teFl1SlpYMlpPejZ5?=
 =?utf-8?B?S3dOY3YvbjdFZ1FLczZiSXIvRzFpMHZhQjFYQnRRUDJYQ0ZGR2xINThzKzRT?=
 =?utf-8?B?bXNhektqTXdralNOYzZyU0ljMUVZY0VTb1J1Qjdjc2RDL0hYK2pBQmlWTUZ5?=
 =?utf-8?B?bWhlNXFHWFNsVHBEa29COEs5cGlFcFVNdmRJcnd1eWQyS0VQQ0U0MGgrNjAz?=
 =?utf-8?B?N3Q2Zkt1L0d2SmwrdTRGVS91aFJjaVBET1BBYXplQTBuOVJTcC9naUM5QWhK?=
 =?utf-8?B?SG9iNVY5RUt3WnFVWGg4UFpybjNLb1M1eTR5d2xicWZQQ1lvN3EwT0hHK0V6?=
 =?utf-8?B?Y1NTYTdrbkVOcE50MFArcmdGQUZaSVVyTnpNT1lsTUMxZzl4TUM0Y1F6QkdT?=
 =?utf-8?B?N2MzcXJQQW1uSmRPUmphUkcxeWprQ1FIZlJpNDJiWlNtR2RLbmZ0cURJT0la?=
 =?utf-8?B?c3JJTmxKbE9lYlhVNE9zeTZXNEQ1aU82eDNsQnVJSnpWT1k2S051NmhHOXBS?=
 =?utf-8?B?czV5ak9RWHp3QVhjektucTF3KzJLdDNLczY0dE5FcFRzTE0vSllCYkFOckx3?=
 =?utf-8?B?RFhVV2ZSRjdmVWF6dTg0OGg0NW1CNTdESCs4N0RtbEl4ZFZ6ek9UTTg2Tnpk?=
 =?utf-8?B?dWt6MFAxOHJpVmhVK1U2TmpQdHhRUFVmUkZLU09MSmo4eWNtU3Z2ZTZXMHRz?=
 =?utf-8?B?aUN6L21Rek1XemZPcXJLa0RDSGdwWlNkNExwaWtTNExiTzZOMHFVZ0dlclJP?=
 =?utf-8?B?MDhmVXVoSXg3UzBjbzNrcHhZa3BFTFpqSERxazBvZXdReU42dnhMVnNHREVH?=
 =?utf-8?Q?9zBzKr7kUrkRvXtXhpb9cSU3c0V+Qiv8i4okqhP7+k=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c4dba61-01ee-4319-b7f1-08d9be6794d5
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2021 18:37:14.0078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QBOoTKsdEjK5ruaukSr2c0p4LOkhss8k6XOHYivw2OKmLx8rUMhnQxHWx7dLcLvVmIbylX3CtMtXR7dI4lJWbtmQHCK6QIV8utRIGKW45m8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3720
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_fixes/tweaks_to_GuC_support?=
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

--------------AjD7zIanHv7vEN6J5BR0lwa0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/11/2021 18:43, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	More fixes/tweaks to GuC support
> *URL:* 	https://patchwork.freedesktop.org/series/97898/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/index.html
>
>
>   CI Bug Log - changes from CI_DRM_10989_full -> Patchwork_21832_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21832_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21832_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (10 -> 10)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_21832_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_exec_whisper@basic-fds-priority-all:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb5/igt@gem_exec_whisper@basic-fds-priority-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb3/igt@gem_exec_whisper@basic-fds-priority-all.html>
>
Warning is unrelated - it was a USB C display warning:
<3> [800.917616] i915 0000:00:02.0: [drm] *ERROR* AUX USBC3/DDI TC3/PHY 
TC3: did not complete or timeout within 10ms (status 0xad400bff)

John.


>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_21832_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_create@create-massive:
>
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl7/igt@gem_create@create-massive.html>
>         ([i915#3002])
>  *
>
>     igt@gem_eio@in-flight-10ms:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl1/igt@gem_eio@in-flight-10ms.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl4/igt@gem_eio@in-flight-10ms.html>
>         ([i915#3063])
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb2/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb7/igt@gem_eio@unwedge-stress.html>
>         ([i915#3063] / [i915#3648])
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>      o
>
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842]) +2 similar issues
>
>      o
>
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842]) +1 similar issue
>
>  *
>
>     igt@gem_exec_whisper@basic-queues-priority:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb5/igt@gem_exec_whisper@basic-queues-priority.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html>
>         ([i915#1895])
>  *
>
>     igt@gem_lmem_swapping@parallel-random:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@gem_lmem_swapping@parallel-random.html>
>         ([fdo#109271] / [i915#4613])
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@gem_lmem_swapping@parallel-random-verify.html>
>         ([fdo#109271] / [i915#4613])
>  *
>
>     igt@gem_lmem_swapping@random-engines:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@gem_lmem_swapping@random-engines.html>
>         ([fdo#109271] / [i915#4613])
>  *
>
>     igt@gem_workarounds@suspend-resume-fd:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html>
>         ([i915#180]) +4 similar issues
>  *
>
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         ([fdo#109271] / [i915#1937])
>  *
>
>     igt@i915_pm_rpm@drm-resources-equal:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb5/igt@i915_pm_rpm@drm-resources-equal.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb3/igt@i915_pm_rpm@drm-resources-equal.html>
>         ([i915#579])
>  *
>
>     igt@i915_selftest@live@gem_contexts:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb5/igt@i915_selftest@live@gem_contexts.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb3/igt@i915_selftest@live@gem_contexts.html>
>         ([i915#2867]) +14 similar issues
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>  *
>
>     igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>         ([i915#118])
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         ([fdo#109271]) +131 similar issues
>  *
>
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +2 similar issues
>  *
>
>     igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +9 similar issues
>  *
>
>     igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +2 similar issues
>  *
>
>     igt@kms_chamelium@hdmi-edid-change-during-suspend:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html>
>         ([fdo#109271] / [fdo#111827]) +3 similar issues
>  *
>
>     igt@kms_chamelium@hdmi-edid-read:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_chamelium@hdmi-edid-read.html>
>         ([fdo#109284] / [fdo#111827])
>  *
>
>     igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html>
>         ([fdo#109271] / [fdo#111827]) +6 similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-b-degamma:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_color_chamelium@pipe-b-degamma.html>
>         ([fdo#109271] / [fdo#111827]) +8 similar issues
>  *
>
>     igt@kms_content_protection@atomic-dpms:
>
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_content_protection@atomic-dpms.html>
>         ([i915#1319])
>  *
>
>     igt@kms_content_protection@uevent:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_content_protection@uevent.html>
>         ([i915#2105])
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html>
>         ([fdo#109278]) +4 similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html>
>         ([fdo#109271]) +54 similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-suspend:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>         ([i915#300])
>  *
>
>     igt@kms_cursor_crc@pipe-c-cursor-suspend:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         ([i915#180]) +2 similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html>
>         ([fdo#109271]) +62 similar issues
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#1982])
>
>      o
>
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#636])
>
>  *
>
>     igt@kms_flip@2x-flip-vs-suspend:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_flip@2x-flip-vs-suspend.html>
>         ([fdo#109274])
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         ([i915#79])
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html>
>         ([i915#2122]) +1 similar issue
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>         ([i915#3699])
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html>
>         ([fdo#109280])
>  *
>
>     igt@kms_hdr@static-toggle-suspend:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_hdr@static-toggle-suspend.html>
>         ([i915#1187])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>         ([fdo#108145] / [i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265]) +2 similar issues
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html>
>         ([fdo#109271] / [i915#658]) +1 similar issue
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html>
>         ([fdo#109271] / [i915#658]) +3 similar issues
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html>
>         ([fdo#109271] / [i915#658]) +1 similar issue
>  *
>
>     igt@kms_setmode@basic:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk7/igt@kms_setmode@basic.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk2/igt@kms_setmode@basic.html>
>         ([i915#31])
>  *
>
>     igt@kms_writeback@writeback-check-output:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_writeback@writeback-check-output.html>
>         ([fdo#109271] / [i915#2437])
>  *
>
>     igt@nouveau_crc@pipe-b-source-outp-complete:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@nouveau_crc@pipe-b-source-outp-complete.html>
>         ([i915#2530])
>  *
>
>     igt@prime_nv_api@i915_nv_double_import:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@prime_nv_api@i915_nv_double_import.html>
>         ([fdo#109291])
>  *
>
>     igt@sysfs_clients@create:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@sysfs_clients@create.html>
>         ([fdo#109271] / [i915#2994])
>  *
>
>     igt@sysfs_clients@recycle:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@sysfs_clients@recycle.html>
>         ([i915#2994])
>  *
>
>     igt@sysfs_clients@sema-25:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@sysfs_clients@sema-25.html>
>         ([fdo#109271] / [i915#2994])
>  *
>
>     igt@sysfs_clients@split-50:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@sysfs_clients@split-50.html>
>         ([fdo#109271] / [i915#2994])
>
>
>         Possible fixes
>
>  *
>
>     igt@fbdev@unaligned-write:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@fbdev@unaligned-write.html>
>         ([i915#2582]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@fbdev@unaligned-write.html>
>  *
>
>     igt@gem_eio@in-flight-suspend:
>
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl6/igt@gem_eio@in-flight-suspend.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@gem_eio@in-flight-suspend.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb1/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb8/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-pace@rcs0:
>
>      o
>
>         shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html>
>
>      o
>
>         shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk7/igt@gem_exec_fair@basic-pace@rcs0.html>
>
>  *
>
>     igt@gem_exec_fair@basic-pace@vcs1:
>
>       o shard-kbl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html>
>         ([fdo#109271]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html>
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html>
>  *
>
>     igt@gem_exec_whisper@basic-contexts-all:
>
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html>
>         ([i915#118]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html>
>         +1 similar issue
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         ([i915#2190]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb5/igt@gem_huc_copy@huc-copy.html>
>  *
>
>     igt@i915_pm_dc@dc6-dpms:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>         ([i915#454]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html>
>  *
>
>     igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html>
>         ([i915#1397]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html>
>         +1 similar issue
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o {shard-rkl}: (DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-6/igt@i915_selftest@live@gt_pm.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@i915_selftest@live@gt_pm.html>)
>         ([i915#4399]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-2/igt@i915_selftest@live@gt_pm.html>
>  *
>
>     igt@kms_color@pipe-a-ctm-0-5:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-5.html>
>         ([i915#1149] / [i915#1849] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html>
>         +2 similar issues
>  *
>
>     igt@kms_color@pipe-b-ctm-negative:
>
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_color@pipe-b-ctm-negative.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_color@pipe-b-ctm-negative.html>)
>         ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_color@pipe-b-ctm-negative.html>
>  *
>
>     igt@kms_color@pipe-c-ctm-0-25:
>
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl4/igt@kms_color@pipe-c-ctm-0-25.html>
>         ([i915#1982]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html>
>  *
>
>     igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html>
>         ([i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-4/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html>
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html>
>         ([fdo#112022] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html>
>         +3 similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
>
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html>)
>         ([fdo#112022]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html>
>         +1 similar issue
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-suspend:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>         ([fdo#112022]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>  *
>
>     igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html>
>         ([i915#1849] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html>
>         +2 similar issues
>  *
>
>     igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>
>       o {shard-rkl}: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html>)
>         ([fdo#111825]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html>
>         ([fdo#111825]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>         ([i915#2346]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>  *
>
>     igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html>
>         ([fdo#111825] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html>
>  *
>
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html>
>         ([fdo#111314]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html>
>         +1 similar issue
>  *
>
>     igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
>
>       o {shard-rkl}: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html>)
>         ([i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html>
>         +1 similar issue
>  *
>
>     igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled:
>
>       o {shard-rkl}: (SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html>)
>         ([fdo#111314] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html>
>         +1 similar issue
>  *
>
>     igt@kms_flip@flip-vs-suspend@a-dp1:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         +3 similar issues
>  *
>
>     igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html>
>         ([i915#3701]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html>
>         ([i915#1849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html>
>         +15 similar issues
>  *
>
>     igt@kms_hdr@bpc-switch-dpms:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#1188]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html>
>  *
>
>     igt@kms_invalid_mode@bad-hsync-end:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_invalid_mode@bad-hsync-end.html>
>         ([i915#4278]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard->
>

--------------AjD7zIanHv7vEN6J5BR0lwa0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 12/11/2021 18:43, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:163927699996.3479.10737103184183161810@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>More fixes/tweaks to GuC support</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/97898/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/97898/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_10989_full -&gt;
        Patchwork_21832_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_21832_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_21832_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (10 -&gt; 10)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_21832_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_exec_whisper@basic-fds-priority-all:
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb5/igt@gem_exec_whisper@basic-fds-priority-all.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb3/igt@gem_exec_whisper@basic-fds-priority-all.html" moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Warning is unrelated - it was a USB C display warning:<br>
    &lt;3&gt; [800.917616] i915 0000:00:02.0: [drm] *ERROR* AUX
    USBC3/DDI TC3/PHY TC3: did not complete or timeout within 10ms
    (status 0xad400bff)<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type="cite" cite="mid:163927699996.3479.10737103184183161810@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_21832_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_create@create-massive:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl7/igt@gem_create@create-massive.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#3002])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-10ms:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl1/igt@gem_eio@in-flight-10ms.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl4/igt@gem_eio@in-flight-10ms.html" moz-do-not-send="true">TIMEOUT</a> ([i915#3063])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb2/igt@gem_eio@unwedge-stress.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb7/igt@gem_eio@unwedge-stress.html" moz-do-not-send="true">TIMEOUT</a> ([i915#3063] /
              [i915#3648])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>
              <p>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2842]) +2
                similar issues</p>
            </li>
            <li>
              <p>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2842]) +1
                similar issue</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-queues-priority:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb5/igt@gem_exec_whisper@basic-queues-priority.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#1895])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@gem_lmem_swapping@parallel-random.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#4613])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-verify:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@gem_lmem_swapping@parallel-random-verify.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#4613])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@random-engines:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@gem_lmem_swapping@random-engines.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#4613])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_workarounds@suspend-resume-fd:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180]) +4
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#1937])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@drm-resources-equal:</p>
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb5/igt@i915_pm_rpm@drm-resources-equal.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb3/igt@i915_pm_rpm@drm-resources-equal.html" moz-do-not-send="true">SKIP</a> ([i915#579])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gem_contexts:</p>
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb5/igt@i915_selftest@live@gem_contexts.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb3/igt@i915_selftest@live@gem_contexts.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#2867]) +14
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#3777]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#118])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html" moz-do-not-send="true">SKIP</a> ([fdo#109271]) +131
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#3886]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#3886]) +9 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#3886]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-edid-read:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_chamelium@hdmi-edid-read.html" moz-do-not-send="true">SKIP</a> ([fdo#109284] /
              [fdo#111827])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-b-degamma:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_color_chamelium@pipe-b-degamma.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic-dpms:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_content_protection@atomic-dpms.html" moz-do-not-send="true">TIMEOUT</a> ([i915#1319])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@uevent:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_content_protection@uevent.html" moz-do-not-send="true">FAIL</a> ([i915#2105])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html" moz-do-not-send="true">SKIP</a> ([fdo#109278]) +4
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html" moz-do-not-send="true">SKIP</a> ([fdo#109271]) +54
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#300])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180]) +2
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html" moz-do-not-send="true">SKIP</a> ([fdo#109271]) +62
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@fbc-suspend:</p>
          <ul>
            <li>
              <p>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#180] /
                [i915#1982])</p>
            </li>
            <li>
              <p>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#180] /
                [i915#636])</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-suspend:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_flip@2x-flip-vs-suspend.html" moz-do-not-send="true">SKIP</a> ([fdo#109274])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html" moz-do-not-send="true">FAIL</a> ([i915#79])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html" moz-do-not-send="true">FAIL</a> ([i915#2122]) +1 similar
              issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html" moz-do-not-send="true">INCOMPLETE</a> ([i915#3699])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html" moz-do-not-send="true">SKIP</a> ([fdo#109280])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@static-toggle-suspend:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@kms_hdr@static-toggle-suspend.html" moz-do-not-send="true">SKIP</a> ([i915#1187])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html" moz-do-not-send="true">FAIL</a> ([fdo#108145] /
              [i915#265])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html" moz-do-not-send="true">FAIL</a> ([fdo#108145] /
              [i915#265]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html" moz-do-not-send="true">FAIL</a> ([i915#265])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html" moz-do-not-send="true">FAIL</a> ([fdo#108145] /
              [i915#265]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html" moz-do-not-send="true">FAIL</a> ([i915#265])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#658]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#658]) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#658]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk7/igt@kms_setmode@basic.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk2/igt@kms_setmode@basic.html" moz-do-not-send="true">FAIL</a> ([i915#31])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-check-output:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@kms_writeback@writeback-check-output.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#2437])</li>
          </ul>
        </li>
        <li>
          <p>igt@nouveau_crc@pipe-b-source-outp-complete:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@nouveau_crc@pipe-b-source-outp-complete.html" moz-do-not-send="true">SKIP</a> ([i915#2530])</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_api@i915_nv_double_import:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@prime_nv_api@i915_nv_double_import.html" moz-do-not-send="true">SKIP</a> ([fdo#109291])</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@create:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl1/igt@sysfs_clients@create.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#2994])</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@recycle:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb6/igt@sysfs_clients@recycle.html" moz-do-not-send="true">SKIP</a> ([i915#2994])</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@sema-25:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl1/igt@sysfs_clients@sema-25.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#2994])</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@split-50:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@sysfs_clients@split-50.html" moz-do-not-send="true">SKIP</a> ([fdo#109271] /
              [i915#2994])</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@fbdev@unaligned-write:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@fbdev@unaligned-write.html" moz-do-not-send="true">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@fbdev@unaligned-write.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-suspend:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl6/igt@gem_eio@in-flight-suspend.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180]) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl2/igt@gem_eio@in-flight-suspend.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb1/igt@gem_exec_fair@basic-none-solo@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb8/igt@gem_exec_fair@basic-none-solo@rcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@rcs0:</p>
          <ul>
            <li>
              <p>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk7/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vcs1:</p>
          <ul>
            <li>shard-kbl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html" moz-do-not-send="true">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send="true">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-contexts-all:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#118]) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-tglb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-tglb7/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-tglb5/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-dpms:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html" moz-do-not-send="true">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html" moz-do-not-send="true">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>{shard-rkl}: (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-6/igt@i915_selftest@live@gt_pm.html" moz-do-not-send="true">DMESG-FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@i915_selftest@live@gt_pm.html" moz-do-not-send="true">PASS</a>) ([i915#4399]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-2/igt@i915_selftest@live@gt_pm.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@pipe-a-ctm-0-5:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_color@pipe-a-ctm-0-5.html" moz-do-not-send="true">SKIP</a> ([i915#1149] /
              [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html" moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@pipe-b-ctm-negative:</p>
          <ul>
            <li>{shard-rkl}: (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_color@pipe-b-ctm-negative.html" moz-do-not-send="true">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_color@pipe-b-ctm-negative.html" moz-do-not-send="true">SKIP</a>) ([i915#1149] /
              [i915#1849] / [i915#4070] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_color@pipe-b-ctm-negative.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@pipe-c-ctm-0-25:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl4/igt@kms_color@pipe-c-ctm-0-25.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#1982])
              -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html" moz-do-not-send="true">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-4/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html" moz-do-not-send="true">SKIP</a> ([fdo#112022] /
              [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html" moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
          <ul>
            <li>{shard-rkl}: (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html" moz-do-not-send="true">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html" moz-do-not-send="true">PASS</a>) ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html" moz-do-not-send="true">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html" moz-do-not-send="true">SKIP</a> ([i915#1849] /
              [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html" moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
          <ul>
            <li>{shard-rkl}: (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html" moz-do-not-send="true">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html" moz-do-not-send="true">SKIP</a>) ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">FAIL</a> ([i915#2346] /
              [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html" moz-do-not-send="true">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html" moz-do-not-send="true">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html" moz-do-not-send="true">SKIP</a> ([fdo#111825] /
              [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html" moz-do-not-send="true">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-xtiled.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:</p>
          <ul>
            <li>{shard-rkl}: (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html" moz-do-not-send="true">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html" moz-do-not-send="true">SKIP</a>) ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled:</p>
          <ul>
            <li>{shard-rkl}: (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html" moz-do-not-send="true">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html" moz-do-not-send="true">SKIP</a>) ([fdo#111314] /
              [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-xtiled.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html" moz-do-not-send="true">DMESG-WARN</a> ([i915#180]) -&gt;
              <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html" moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html" moz-do-not-send="true">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
          <ul>
            <li>shard-iclb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html" moz-do-not-send="true">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html" moz-do-not-send="true">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html" moz-do-not-send="true">PASS</a> +15 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-dpms:</p>
          <ul>
            <li>shard-skl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html" moz-do-not-send="true">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_invalid_mode@bad-hsync-end:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10989/shard-rkl-1/igt@kms_invalid_mode@bad-hsync-end.html" moz-do-not-send="true">SKIP</a> ([i915#4278]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21832/shard-" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
  </body>
</html>
--------------AjD7zIanHv7vEN6J5BR0lwa0--
