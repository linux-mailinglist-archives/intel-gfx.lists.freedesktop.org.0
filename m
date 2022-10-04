Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE76E5F3B0D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 03:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A46810E3C0;
	Tue,  4 Oct 2022 01:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B92C10E3C0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 01:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664848314; x=1696384314;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OjRyokeNaqvzlMO3V/uTb89AUfnke5i+EAhipcpknFo=;
 b=lGbWZrnLcrc34m9sKM13b/Roayir5iVhKJ2rjyCuw5MYRpSCIaNcJPUj
 FI+ktKM7443hT1F++gsDIlz4bJzzqskzJPVnKb35bcG/oW/umEmzN03ba
 vuq5zs4YkM8W8iWLiuNtveE8TOcVOJi3P9yJZUercnkzM6m4Z+xX/i+3v
 UaXtAYaNsa5a3eEiO/yc7jLmxCHUPnyuYqMjJSN/KPpgrFPxtlCeyHBMP
 cxF+uKvlAFaRuRE0EvfddflKzbE2ZLTn63rNzYTMDX0vVdw2O7mtb0a0Y
 ghIhSrpxSbaZVJO+cdyMtSpBKOBqgtJv+4xfp87tztr/3etnD4bgGLZYB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="364705448"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="364705448"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 18:51:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="712845512"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="712845512"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Oct 2022 18:51:53 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 18:51:53 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 18:51:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 18:51:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 18:51:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mr/8eX6ddQm4Yk8uuGntEK2MQ0WpbUVFB+WUg1exBcutPAhINHsN1erme6WKK6l3rZTgHohYg18tQ/WeP6Kzp0SCDj/5+u6tTf+MYVcolTvAhXdZV/VLIdt1yBYuqBj7dTmt1bQN45fTpH9Ear3IBpWU4RdIDEBki48IbhGapBi3UdM0OjALUJUCS99cgL/axM8EwO3LnmerA7IUtxfMZA0B/ki7jXHoNugL7cMa1kS9aA8q7NNn3BepNqid5FmtmpHSy7GiqeDw6ZYUrpnM4XRz27SRwU61VGlhgAlkkFC0o6u4WXqn/fGMe8mIWmyuvpMYNetcIcyZTCy9WEvwcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OjRyokeNaqvzlMO3V/uTb89AUfnke5i+EAhipcpknFo=;
 b=GUykFoEf9fU1+Ygvy+eAFeDjf3el+GuvoXRI0suQaGFEPGyQ0SsiDtNc+8oVPskFhLAULS5lK+Ck3q+2CeyZBo1pvWCvuV8tQ1IQTFiS4UDAtLVeR9iHX2zRe4rhznFzHRksPHbvBsWfHRQWH6kTDsjiMccd7kenwEVpYA3NRTgMTRXH3TWO0qeGxftyce56VaAGZyOei87SSksqB9A016y8Txc20eyUt925yIbU1OtHisHETMK1OKRnvIjLOJUcGz+CsdOaUT9wZgVXh/XaxEcARft4JGfAbKR+ikAV2REKALnvxXI5FrGGmlLde08H1i5KCbqey+lq/NQtlu1Hwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Tue, 4 Oct
 2022 01:51:45 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 01:51:45 +0000
Message-ID: <669a599a-a5d1-4357-c27c-f3e17bc1b4f5@intel.com>
Date: Mon, 3 Oct 2022 18:51:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
 <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
 <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
 <0dad721a-2308-588c-8b7d-8ac98d17f3dc@intel.com>
 <2cb443945f86c2bbcfef78ca19cc4a85fdae3666.camel@intel.com>
 <9703bd69-3b42-3e64-04e1-5b8fc6e9f367@intel.com>
 <27c162aadb79123fff5458dc1695c6026ea0c796.camel@intel.com>
 <03452d47-a16e-fde3-3d6f-e7d98c6d2b2e@intel.com>
 <e76198c741918fbdcc9a4d6b504c4929007e2a78.camel@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <e76198c741918fbdcc9a4d6b504c4929007e2a78.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::23) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|MW3PR11MB4699:EE_
X-MS-Office365-Filtering-Correlation-Id: c2898dd0-ad28-42af-67db-08daa5aafe45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pUtRuVxCSyWOUJqK8u6S5aXmEpJqWPUFK04HIXf37Y2uV+x3eFF9xBRJBqLMw/xz5FknxslcSGyJzpvvNctgzXN/6/kWRGiEXbr5RjFaMnFN6Y0A8F00PYLE7Vrh1aBxZrVyHJaZGMrv9XRza7hmR3AAT6/o9GbUhw9PPZ1z1bjA097fEcw7CiCF0ouO/7GKGrBRSSJBapDkZHmfcIMQo1Nw06BakpoP5uVijI3Z1QRfMh6hKPZ923AZSZQ9xcS+L8DVc91Bhn6XamVFEBXHOgYt1Qd+yY2WKEwbtelwqL68+T+YaGh+7F98iSsuews8DRZMH6Y0QcnvCMXhapfMmIQafBYMLy4MzGVsRAvkq3rbfjPD/Fahp2yvNDh2TylO3EJZxmmBu+beVNQjjtzTCRQ4q9sFLQ6dMm7aSJm3lmfwMvaHSTa4PprapjTiVNgTrCj0biCpqvEbpqz12sV/XANFh3AJ9J6XLbdcp163F9OO+pu3Vmiryy75NAtDP5C/nQ/sN18Do+NmUYvnujcwZkeAomYGjkwIxxBW5wW8Z6J0YGIvKp5lMlgnELv3XC9s/1Rin9U7bEGA6GEWQhHxD1g2d+IvEAfHWJJSy0db9gA5p9UaPVNINKM53G8ORvmetPQbJYkHvrE57757PQickrIrzg2bnzpewMHiALNmBYpAKz0qtRehoI9S1oHoFEOYBoFKT0hNihIPn1HH3WLndPUVC0prXf9JF7ddRVHUcYXfvgki1NE1dn4WIw5FoFbi2jdHkGPBljHaUVaUpGMfV+yCv0jtDJCskLzgakMuyHw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(376002)(39860400002)(136003)(451199015)(110136005)(86362001)(6486002)(31696002)(478600001)(8936002)(36756003)(4744005)(41300700001)(5660300002)(316002)(66476007)(66946007)(66556008)(8676002)(6506007)(186003)(38100700002)(6512007)(82960400001)(2616005)(53546011)(26005)(31686004)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHI1bjVKTHNMN1Zmb2tMRVFWSUROY2dvb0pLQkIyVFRtbytFUTUrY05FUUxn?=
 =?utf-8?B?aUNDbFhhOUZ3dDBFbkZpRHQySDNFV2M1aWowcUR1d3lKTktuQjNTN2xJRi9U?=
 =?utf-8?B?U0h4TWVIdkowbHk2bFhvY0FaNXFpVHRYNlZvSGwwTFhHYnVUZ010VXgxZjdP?=
 =?utf-8?B?eFl6ajA5R2R2VTE4ZXd5YTljSGZIRTF0Y3pERE40S3U0U3N3LzFYZkJoeUFF?=
 =?utf-8?B?eTEzbTF0YzFET0E1eWFjNFZBS29FZmw3QWw1cEVtWU9RZGF5Uy9BbTJrUHAy?=
 =?utf-8?B?b1JydjJYTThsZ3pFY2N0U1Z2Tm9QU1RLQWt1ZURFM3N6a0hDeXpUM2RKMnlT?=
 =?utf-8?B?c1VwVUhGZHY4MUE0YnV5bFp3ckkwSVNrTXZnTEFoaFlvQUNueDd2dWQyamNZ?=
 =?utf-8?B?eVRLQmdiSmJlcWg2Nk0zL3FLSjJ6SVBiUjh1S0F4b2taMkZsOTBqc3ExeURG?=
 =?utf-8?B?S2x0MzV5UWY3VVRWVklQc2xKMHBwNjYwczJLbG5JMUg4LzJvQ3E4a2E2Vm5J?=
 =?utf-8?B?ZXE1THRBYTJGRzJ1T3dPVkpmTHRrelFmVEc4QTVSbjdWRkJXUS8vS2hhclVU?=
 =?utf-8?B?Y1ZKQStCRzZRUmwzMmttcU1yZk1IUWlLWjdvYXJZT0FabEY1U3g3YVQrb242?=
 =?utf-8?B?VUZsY252MWpnNVQzUXA1c08rWm1jQnpmdTNzNVpFMi9sUmlZb2FoS2F5Y2Vn?=
 =?utf-8?B?aHlPaDhwK1pvU2NKYUVvbDFFb2dYT3NCQWxHbVRsVXlZcFlYd1FKZURjL08r?=
 =?utf-8?B?cDZHZklDSlBsc3B2VDhuUGc1bVExdmp3WDRrN1FPYmxrVUZBVmErZkIyZUFa?=
 =?utf-8?B?dHcvS2ZScHRVQnA1RTRPWThTcUVDSXVwMlRscUxlNlNVeEtWeldjK1NPRXJ1?=
 =?utf-8?B?ai93Nm5TMWl5cW1vSXNDbElyMlVKcHhuTzlSaUNrRVV5eVpXcVRFUmttTzUr?=
 =?utf-8?B?VGdyVGtUMHV5UHZTREF5Q0I4ZjR6VGZleWMvQ201enczMThZYjBBN0p6dWhj?=
 =?utf-8?B?TUlBNjVtcTJXT0Vnekttazk5dW9zUldHeWduOG13cE1KOFFUc3JQajhBanZm?=
 =?utf-8?B?bStJYUxhY1V6S0FRVUxPTWVqcFZyTEFRRHUzZGVCQVJiaXBPOGtEc25CU1pN?=
 =?utf-8?B?M2x3bEd0eWt1cnYxblppenFYQlJHRExYMldIMzMwak8rc3hOZXpkVk5HVWVX?=
 =?utf-8?B?WFhYNkV5Qzg4UG02MlFsVDdORnoxWWdnTktwSTFGNkxwMGRxSlRSWXgvWDBu?=
 =?utf-8?B?cldRd0lPNTVLUmlGaHN5eW9Lakc0cittaVd6b1REZkl4UlNsZnlvWmhWL2lF?=
 =?utf-8?B?RXdkYjZGVTlPNjRiUllhSW9idXRkUG1SdDZUazBmN2xOeHlSMUhxNmoxYWN6?=
 =?utf-8?B?dkthV0FCblF1SExhY3RDVlFJUmliMXBybURMQnpGTmpERk5WQnRFQ3VqMG41?=
 =?utf-8?B?MUE1aVFOdVV1WVR0MnczT1VkYnBQbXZnL29KNGM2VTJuSklZcHk4NmMrWnUv?=
 =?utf-8?B?R0pheEtMVTJiTlk5RmNpTENHaXZQbVc0Y1RYK1pEVnh3dEszckhYZm41R0tP?=
 =?utf-8?B?SXhkaGtYcmFsR3Y3WExNVTA4OGpqYSt0ZmFpaUhaVEpDZVVlMkdkaUVjSUZW?=
 =?utf-8?B?UWJ5WldvVTgxZmxsbEFmOWFQcnh4YytUNCtCLzduZGNXTmdKWTRZZHNKUm5L?=
 =?utf-8?B?OGJjUTlyK3I4SEh4cHgxQXl0bVpQTzhvVGlla1FiNEVIekYzMWc0QWJ5Yklj?=
 =?utf-8?B?VlZJMmNRNTZDZlBRbDgyUjlVdmZXb0VuVU5YckQ2alhpRWVjUlVub2VlR1VK?=
 =?utf-8?B?ajNYdXJtY2tXcEt5L1Q0clY4SzY4NWFCNXdRQTdhNVBXNFpSTkt4bmsxbWJW?=
 =?utf-8?B?QzdsSEtuMWhMK1RxVFViWW03L0JpN3owOFRPMm5Vc2t6YnZiYmZiSU1tTWdD?=
 =?utf-8?B?M3ZsMkVieXJ6cVpzS3JLeGd5RlRjZkxRL0QraUJDNCtYNGIzQnIyN2txQTRS?=
 =?utf-8?B?WjZJM2RONXVYSVh2bDBXWHhMU0ZQNWZxT014NkdKbHMxL0NxNjZ0WVhLUVUr?=
 =?utf-8?B?NnRyZWtvRERqRkpHUjV5MVQ0eFBnWWVTVXRxV2pNcEFVYndFbWo0d3VYUWkz?=
 =?utf-8?B?NHNRN3NwVGJmUEUvcHY5cTJ5eHlTMHdRVjNSVW1SaWJlaWl6SENsQWVwVmZO?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2898dd0-ad28-42af-67db-08daa5aafe45
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 01:51:45.6893 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7C04wiqFKFpTBhEcC33Wp5zTqFHlS/d68hY08xYEZbiz8SNXhASQEvrPis4CrSM8WLoW81z7o5pnzPEowyi1ThyHIoT2+mayvnK7cyZbIx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

On 10/3/2022 17:46, Teres Alexis, Alan Previn wrote:
> So as per the last response and the offline conversation we had we agreed that:
>
> 1. we shall stick with drm_warn( ... maybe too small...) if the allocation didn't meet min_size.
> 2. I'll model for PVC (since its better to look at the spec as opposed to trying to hunt for a free machine with the
> most engines and DSS (for those steering registers that are counted multiple times).
> 3. If #2 yields us with substantial headroom (i.e. a model's PVC would be less than 700K min_size), then lets drop to
> 1MB allocation.
>
> ...alan
Sounds good to me.

John.

>
>
> On Mon, 2022-10-03 at 16:51 -0700, Harrison, John C wrote:
>> On 10/3/2022 14:10, Teres Alexis, Alan Previn wrote:
>>> On Mon, 2022-10-03 at 12:47 -0700, Harrison, John C wrote:
>>>> On 10/3/2022 11:28, Teres Alexis, Alan Previn wrote:
>>>>> On Fri, 2022-09-30 at 15:35 -0700, Harrison, John C wrote:
>>>>>> On 9/30/2022 14:08, Teres Alexis, Alan Previn wrote:
>>>>>>

