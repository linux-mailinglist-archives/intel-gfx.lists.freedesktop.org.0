Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34ED45B6FD4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 16:18:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB1610E73C;
	Tue, 13 Sep 2022 14:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C204D10E73C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 14:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663078659; x=1694614659;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wUir0AI0lCvpxo8IOB6X5Fu2xQq6J709MkbtVo11CUA=;
 b=iMbu4OrgQPUFB1tCf7zIHpLC2GTiIBe/ZD0Nho2GiNOJmln8Y7gLJ5TT
 EcL3gxrreD/rZIxWoUIfHtZbLpmYJbGYJjAtKLyq7B/PFCGP+A152VTcN
 J66y3/UiyiA0Cf0K4Gtyh4Sp5Ov7AiYsEp0SJaLjWRfQq+2a1YSy95w/G
 uZlwUDWdWnE77rI6CFfsHu/xSYiF9jRQ2paKpNkIm/ed0FeORpkpfqXDl
 VKeb5mFFjipFXNUDrdnLXBi3tqfys3akdy/uxnq4rs2wlY3MV3k86U4ii
 GR+Xvn+IQrydsMUp8JpcOCyTjiFsoyuqtWOCkM+JJyGF+QTFJ3zVcQvbW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="324392351"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="324392351"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 07:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="616472813"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 13 Sep 2022 07:17:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 07:17:32 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 07:17:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 07:17:31 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 07:17:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gdsXAXrDecEnjHFaKrBr9o3VzCJ5BAKZ0MDBjSV3bAcXMzeP9IwpjSKqusBHV3hxZzyI10stw/DfpSd1ppdOniRVInnb3EAso/Ul3RS+JB0R0pByzQdnj66vXDBevtlQ4Z/DRHt0OcEbTObz5r56FSJpjbwjvsVx7y2HAhyJC2TxC2TOe+nqjrVsbxmk+MlcEoWaD05FNdXM0pUkXeY5VZwZ/fJyOl1KD5dlO8KUy/pYtf4TejMegRDERSBPlZxiD1hffgU7XiN6Svj58J+6B+ElxGfWPfqJYXeQzglscmHVGCjjiL4d10Q8ZNdAx4o2hPpg3nX/2AvQKrbVgE/SYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6XSAuSO6D8F4rylIj44SvpNtrbPUfhkGUPZv5VKeXGU=;
 b=WEycBOzBj+1c2c+lktBMMJqFqNMZtJSbLkXCxjPwCzwzssk3cQR+JqSpKK4jDWm/LoFnF9077YEd2BNOBktgP7HsSh69XzmzARMLXtqUj3U15cpe9aqAyduZCR4VmwjD0Z0aATwyCObUh1JQe1rn5htY8Cha77MOpIhMD/lHW7jCgqrEP/XxeUOjveNxaFmzUYfmt5W7862XuzGI4bNvf3iuXUA86Odc9TcV286GoNGcef0LD4AhLOPCtxXYtDJFM+bEqq6tgmvLLXxYkNALBQlQi7eOMbStuOaxZhzNZv0zM95oFa3JekpSDwMLY05gd20LDzJltsVLGfdCYpD+EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CY5PR11MB6461.namprd11.prod.outlook.com (2603:10b6:930:33::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Tue, 13 Sep
 2022 14:17:29 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::54de:6030:7501:b7ae]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::54de:6030:7501:b7ae%6]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 14:17:29 +0000
Message-ID: <8d8be2b5-da24-27d2-c51e-6349864bdfe5@intel.com>
Date: Tue, 13 Sep 2022 17:17:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Karolina Drobnik <karolina.drobnik@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220913100328.579271-1-karolina.drobnik@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <20220913100328.579271-1-karolina.drobnik@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM5PR0602CA0003.eurprd06.prod.outlook.com
 (2603:10a6:203:a3::13) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|CY5PR11MB6461:EE_
X-MS-Office365-Filtering-Correlation-Id: 98efc259-2e93-4346-89e0-08da9592b07a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GAAjh4hb2XfJca5WF36n6QJ9unSDd+EQKgZJBFYJmz21WnxfqzsF6nqhsO/PQGYboyPLN0HxdjBkbpeychmNilpmnA/8bIW31W/I0ZGSIYPuguv9aGDf0vZaWj9+D03gro4g6zm8/P9S2gk14mjcrPi797h52DZc0/GfS4iK5+4wy6j+p/bq84Tn7btLyIkOZK9gV1G2YvFwIyZZr6apP8xx1QEZNs0kqiIHag05l9nXMefI+edaQVY+ogoEKonzXUJYSpr9Nk5JxdcvUMtNgRyphLwishwfu6VIR/VLEDU98l7DLsuahGMtrMcmctOvPhpqbgnqPi60tqA+b29coKDEK2ya9g0XgwxtnpqeC3Y1KH6neGrRzhkLWnI5LNtwML7A/SQj2psOyO0ugDnI56cMKvgYdZL3oNRMSdEifeqA5J6ty8rXfTIFFow+H/WKjbVq9dAEIY7rrtgYXkCDzCFx1L0esTOKVx1hQKe1tf3Us6SJzIgfKO6a0RoCxGp7XJ5mzFTgruTFOKzVto3oW/kEK1oqLx/CQZc3gCMTYE6EqgGDlCgNzjXOKLuv4NJM4k1nlMuRMAUB+vXQId2I9sSUtI1N1wFuMO/kgt8i1xFMRQD8UJ8+RcBarsUTB5mb74cYr+0jZktNBKjiN0dODpQvxnT2O9sKgDG7+9LiDc15ZdLll1UI/dPPpyN2GfuU+vA5JePayRJlx1QNG7Adbak1m60EmU4y8D1/m01LkEY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(366004)(346002)(39860400002)(376002)(451199015)(5660300002)(31696002)(86362001)(4326008)(26005)(8936002)(83380400001)(316002)(36756003)(31686004)(186003)(53546011)(2906002)(6506007)(6512007)(2616005)(38100700002)(478600001)(82960400001)(6486002)(66946007)(6666004)(41300700001)(66556008)(66476007)(966005)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzJRMTJ1RXpLZGtxYkV1aEk0Y3FjMitVSS9OaU81ckxtcmVJNWEyRGx5eHdM?=
 =?utf-8?B?ZmhJRXRxdUtTMlllUXBydzg2RXhVRDhrSnZJNlRXaHdnQ2FKVng1S2lBcURX?=
 =?utf-8?B?bGNMQUxlQXBteGNoMktoNFhoMGE5Nk1QUE9paUNsa2tVRW1qUXQvSUJVbnFU?=
 =?utf-8?B?QUhJVjVKWGNGTXd2NmZPUHIzcmZLK2dqOEJlTDFYQ0xyRTFaUGtueWkvdm5B?=
 =?utf-8?B?N2lWeTMwRHFRN3BMRGc1ZE5zUC95a1F2dXBNd08wQWxQaUwvKzlRWjlyUFoz?=
 =?utf-8?B?cjc2Qlh0SHpmNlEwaDVyV0hHRTFmL1pkOEhXcmJtRFd0V3VCYzNZR2J0TW5I?=
 =?utf-8?B?d3hmSHYvbFdjTHk0NlZJMGVxVGpOeWFzTjhaRjVLTFJhM2g2QlFOVVhWQk5I?=
 =?utf-8?B?b0hiV0lBSmlUZlU0SWRNYjNnc1JMRmUyWjRjc3c1cE1kQklnT2tJT2NuUlNv?=
 =?utf-8?B?cENFRy9iYzNyaldmUlhtOVdtaURRZUdTUmVmaWZFZENnTDJYZ1o5Qk9BV09E?=
 =?utf-8?B?c2J5YnRnd040c3l5UDdodzMxdjFXNlJkSnpzTlNTelpGMkx6QmRGMEE2RkpB?=
 =?utf-8?B?SjdSajZlOUU2bXNucVB6Uk9XVXpxTDJFZXhZMXYyRUNyOE81c1hTQ1pDQ2lU?=
 =?utf-8?B?bmF3T3FYQXJ0NWhGSitqM3UyMTY0TG1ObncreXFhR1lHaFB2dk90dC9ic2hL?=
 =?utf-8?B?M2hUOEtNZzUzdVFtWDgzenp5WDhQWVMrVHJEOGVZT3hrUk4vZTluQUlPNlFk?=
 =?utf-8?B?RjlYVXZWOHNZaWtPSjlQSCtBZ0s5WEluZm9ycmdOTlJPNjJYRndmR0ZYRy91?=
 =?utf-8?B?V3o5UC93U0dwWEZIbkIwelVXd1NPMVUrVGx6Y2pzY3lZaC9lOEZJTFp5eDdF?=
 =?utf-8?B?M21NL25YTDk2dVUxWDVNdzhjWGR1WmZyOGsrRUh6aG9abkp4UU1BSDNHazNZ?=
 =?utf-8?B?WXJEU1o2YW5oQlZaUWExY2JLTWpHVWU5ZW5VYzFaZ2Zsd296cWV6T2RNcmZ6?=
 =?utf-8?B?RDNMU3RlcjhIUVN3UlovNVJSTUVYWk9VMnNUNmdKc1FtaVpaSFNyVWdaaDJr?=
 =?utf-8?B?MjVZSVF0MXJTWmErWU8zUVoyVHF2cys1MnJYeDBsYUtUMWIrUzVpaUdjQmhs?=
 =?utf-8?B?ZXZmcXhMNjRhTGtrQjFGNWx2SlBlMjZBR2FPSGdEVkFUSk5oVzFpZ3RsbllI?=
 =?utf-8?B?Q2s3K1YwK0tlaEJ0RWRiM0huWHJTdmFQb0dJZHhaK2NSVmFzOXVCcWhrRnFn?=
 =?utf-8?B?c3RrcGdhVDJWbWRzK09ma1dIT05PdjIwZWNPZFBldjg3cG92VXl5YXVpL3Br?=
 =?utf-8?B?YU9BMWVFZHErN1N5MnBtRkN4K283VFRFK2ZlaUhvVW5rOEpzVHQyOVJCZmhT?=
 =?utf-8?B?U3hRZ3hWSDB5S1ZrZmp6Q0lnb05rWG9Fc1ZjNytVcGw1UzA0bFphbUNMeUtR?=
 =?utf-8?B?QUh5MWcxMFBhblM4ZXhyMVRuM3ZtSDBxS3pmUkdOVDZhcEZaWHRyUjVVWHVS?=
 =?utf-8?B?Qk00MzlWL2pWTEpZZktUM2VSOXhEdEl6STZoY1N1anpldFhsUWZEUklOTWVK?=
 =?utf-8?B?NVQ2MUlYMytqNFQvK0xWU2duZHdpSFBJMlNKYWFRS1QxQlpMT3Voc1QvMnBZ?=
 =?utf-8?B?c1pNZDdEYW9zRzJHRnQxZVJlem1GRSswOEpPRnpCWEhSNkdhQ21NQldaQnBv?=
 =?utf-8?B?U0wvdEhoZDc4SE1xRzhlekVPTlJEVmdVUm5vQWJDdEdxZkx1dytkVUsxR0Fh?=
 =?utf-8?B?YWRWb2Fjdlc2U2JCZDdlM1Z2MUljWW9oM0IzdnZGRUZuaVd2OFk5U1BMTW0v?=
 =?utf-8?B?Y293UTByWXpiaHl4RDFMbzJ4MzdDajRuVmNGdDZIQWFtTFM3MHpQVWhRdDBx?=
 =?utf-8?B?OVFGemViTnNhcTJUNjZQUnBOcHFpQjFILzAzcU01YzRwMkhPY3ZVMndUQ09y?=
 =?utf-8?B?SHZWUEljOFJLVmMwa3huWTNPbHlIYU45VGdMSGo3bm1sRmpNcldMcXI0ZUNY?=
 =?utf-8?B?VVFLMUNXY0xjbngrK2pUd1ZWcjBtZE1QVzlWcmgralB0RG9qVGdhY21Fc1R3?=
 =?utf-8?B?eFZhQVVySUVCemE3YkFhRW8wbU1ERWF2MzlKL3VpY1g3Wk9nem5yRHp1NmVh?=
 =?utf-8?B?QXZtQ3VnNnZNNHAxc3pLTU5lUHlXTlBQRllvNng5a0FCRlB6d0dwbDdaYmtM?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98efc259-2e93-4346-89e0-08da9592b07a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 14:17:29.2120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b1+lO4oaqAETYu7JON4vzyqgcfBRv8adb5rVDtm6YTreKLEcHtpIgSZ42zmSD7yw/AlO6iGHEvWzZQ29sK5fLMjmbPkJ03DCkMXlTd6b+Rg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6461
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check for incomplete
 LRI from the context image
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Karolina,

This patch had previously been sent to the mailing list by Ram, then an 
update to the commit message and an ack from Thomas. therefore I think 
that should be included.
https://patchwork.freedesktop.org/series/101353/
https://patchwork.freedesktop.org/patch/484356/?series=101353&rev=6

And since this patch fixes the following issues, and there is a related 
test case, could you gently add these to the commit message as well?

Testcase: igt@i915_selftest@live@gt_lrc
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6580
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6670

others looks good to me.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/13/22 1:03 PM, Karolina Drobnik wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> In order to keep the context image parser simple, we assume that all
> commands follow a similar format. A few, especially not MI commands on
> the render engines, have fixed lengths not encoded in a length field.
> This caused us to incorrectly skip over 3D state commands, and start
> interpreting context data as instructions. Eventually, as Daniele
> discovered, this would lead us to find addition LRI as part of the data
> and mistakenly add invalid LRI commands to the context probes.
> 
> Stop parsing after we see the first !MI command, as we know we will have
> seen all the context registers by that point. (Mostly true for all gen so far,
> though the render context does have LRI after the first page that we
> have been ignoring so far. It would be useful to extract those as well
> so that we have the full list of user accesisble registers.)
> 
> Similarly, emit a warning if we do try to emit an invalid zero-length
> LRI.
> 
> Reported-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_lrc.c | 61 +++++++++++++++++++++++---
>   1 file changed, 54 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 1109088fe8f6..954a1c5c10ef 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -27,6 +27,9 @@
>   #define NUM_GPR 16
>   #define NUM_GPR_DW (NUM_GPR * 2) /* each GPR is 2 dwords */
>   
> +#define LRI_HEADER MI_INSTR(0x22, 0)
> +#define LRI_LENGTH_MASK GENMASK(7, 0)
> +
>   static struct i915_vma *create_scratch(struct intel_gt *gt)
>   {
>   	return __vm_create_scratch_for_read_pinned(&gt->ggtt->vm, PAGE_SIZE);
> @@ -202,7 +205,7 @@ static int live_lrc_layout(void *arg)
>   				continue;
>   			}
>   
> -			if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
> +			if ((lri & GENMASK(31, 23)) != LRI_HEADER) {
>   				pr_err("%s: Expected LRI command at dword %d, found %08x\n",
>   				       engine->name, dw, lri);
>   				err = -EINVAL;
> @@ -987,18 +990,40 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
>   	hw = defaults;
>   	hw += LRC_STATE_OFFSET / sizeof(*hw);
>   	do {
> -		u32 len = hw[dw] & 0x7f;
> +		u32 len = hw[dw] & LRI_LENGTH_MASK;
> +
> +		/*
> +		 * Keep it simple, skip parsing complex commands
> +		 *
> +		 * At present, there are no more MI_LOAD_REGISTER_IMM
> +		 * commands after the first 3D state command. Rather
> +		 * than include a table (see i915_cmd_parser.c) of all
> +		 * the possible commands and their instruction lengths
> +		 * (or mask for variable length instructions), assume
> +		 * we have gathered the complete list of registers and
> +		 * bail out.
> +		 */
> +		if ((hw[dw] >> INSTR_CLIENT_SHIFT) != INSTR_MI_CLIENT)
> +			break;
>   
>   		if (hw[dw] == 0) {
>   			dw++;
>   			continue;
>   		}
>   
> -		if ((hw[dw] & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
> +		if ((hw[dw] & GENMASK(31, 23)) != LRI_HEADER) {
> +			/* Assume all other MI commands match LRI length mask */
>   			dw += len + 2;
>   			continue;
>   		}
>   
> +		if (!len) {
> +			pr_err("%s: invalid LRI found in context image\n",
> +			       ce->engine->name);
> +			igt_hexdump(defaults, PAGE_SIZE);
> +			break;
> +		}
> +
>   		dw++;
>   		len = (len + 1) / 2;
>   		while (len--) {
> @@ -1150,18 +1175,29 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
>   	hw = defaults;
>   	hw += LRC_STATE_OFFSET / sizeof(*hw);
>   	do {
> -		u32 len = hw[dw] & 0x7f;
> +		u32 len = hw[dw] & LRI_LENGTH_MASK;
> +
> +		/* For simplicity, break parsing at the first complex command */
> +		if ((hw[dw] >> INSTR_CLIENT_SHIFT) != INSTR_MI_CLIENT)
> +			break;
>   
>   		if (hw[dw] == 0) {
>   			dw++;
>   			continue;
>   		}
>   
> -		if ((hw[dw] & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
> +		if ((hw[dw] & GENMASK(31, 23)) != LRI_HEADER) {
>   			dw += len + 2;
>   			continue;
>   		}
>   
> +		if (!len) {
> +			pr_err("%s: invalid LRI found in context image\n",
> +			       ce->engine->name);
> +			igt_hexdump(defaults, PAGE_SIZE);
> +			break;
> +		}
> +
>   		dw++;
>   		len = (len + 1) / 2;
>   		*cs++ = MI_LOAD_REGISTER_IMM(len);
> @@ -1292,18 +1328,29 @@ static int compare_isolation(struct intel_engine_cs *engine,
>   	hw = defaults;
>   	hw += LRC_STATE_OFFSET / sizeof(*hw);
>   	do {
> -		u32 len = hw[dw] & 0x7f;
> +		u32 len = hw[dw] & LRI_LENGTH_MASK;
> +
> +		/* For simplicity, break parsing at the first complex command */
> +		if ((hw[dw] >> INSTR_CLIENT_SHIFT) != INSTR_MI_CLIENT)
> +			break;
>   
>   		if (hw[dw] == 0) {
>   			dw++;
>   			continue;
>   		}
>   
> -		if ((hw[dw] & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
> +		if ((hw[dw] & GENMASK(31, 23)) != LRI_HEADER) {
>   			dw += len + 2;
>   			continue;
>   		}
>   
> +		if (!len) {
> +			pr_err("%s: invalid LRI found in context image\n",
> +			       engine->name);
> +			igt_hexdump(defaults, PAGE_SIZE);
> +			break;
> +		}
> +
>   		dw++;
>   		len = (len + 1) / 2;
>   		while (len--) {
