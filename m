Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B549E6AD378
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 01:51:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A0A10E036;
	Tue,  7 Mar 2023 00:51:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964D310E036
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 00:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678150291; x=1709686291;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZUw0x5mmOtK+HWpfqwLypGn1k0NaZu2a14OdVuJQLLM=;
 b=g13S63L/hHYcRORAtmjuojA5PYkozCuEJRVlhVM5jATGRO4m1yEh+wdV
 aNfL6Zc/JsabrhX13p9XGrsyoQIKeV4a6esOPHgo5NcCcuScz/TAFaQtW
 VOQjl6pfNvSzfrwLf8Js0gsx/H/+H6wOlGP3w1RX+kFG3g5b8UXJtImkZ
 cqwzu4AG8nV2DFxvB1Wz1iABaZggwmfwy5GEbmUnl7ZHGiAwkiVwg1kCc
 7SPD0oGTU6SYS/uRChy4PiS/+l1MPgnjUNgVxoTGHvNrURLUJaQ2XkrVY
 kCQxsjWitOpqO4KcT/2tqT3O/RNtxPEUfKkSORFRDYvX/967kbrXWky49 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="337243666"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="337243666"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 16:51:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="800203333"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="800203333"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 06 Mar 2023 16:51:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 16:51:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 16:51:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 16:51:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 16:51:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EXsXc8xU34OKiBRqnSUV12ceH2w4DaUm3tAmtHCAWvO5cOBKDy11s8YyxU3EolTdj19rY++XIJCHaMVoEJCr3HayZwF0C8PqxiYD7ktUnPiJR4AxMy1AJ6gX0fWNbK5MzHcxRXKNpQL2+d+HOc+0EC9fDhGgY78PX3g0m1OborHAbcahSo7c/PlqYsngqSsrO3gRVIPVAlFZi8hgHx8JAyCXhsq4h2Z//OYDUAOAMtfp//n/rsKqeBXQx85JZW/mVdXZkypXcM+wAJbeP/S/i/LJudAUb6R8Rp2Dvz9QD66zXk1aCus/hMqYGVxvUE99KpkpOcEG2GW7L1+dFiD0Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2bercioIxyR7cbKXP0kEA2FINZRJCoDQFmuz3IRotnQ=;
 b=f2Kxxr5o2Uv+8URFKJ2wLpiUmhZ9ScHXeiV/IFwzZyYtfr4VqwZ3Vq6bQ65bQ+AmADTzJDBeHAnPtxsLlrnf9Ld8+7ZKdjWZ4c1wovzstSloWcxSmhKl+D84NGQTUDaxEbPLlv6rp0Ncnj+z9Mmj0GnjYHvTZZ/WIfdjnmjnZK6vJH5rY50G7n3XMReUdcvgERZa1saa5oH73JO6fnvQwtTYrq+uJoOIjuUgmpt4mZbWWCWv+8I5Joech6cmEn6461MpD6grLqecu5sX4hzGqComyAZTRZph/mGqljsHz+P42jLmjqQNMo6vDEwTTnDXnY8UM/ryS/VHutXnJtOa/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DS7PR11MB7905.namprd11.prod.outlook.com (2603:10b6:8:ec::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.25; Tue, 7 Mar 2023 00:51:27 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::218f:c449:80c8:7ad9]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::218f:c449:80c8:7ad9%6]) with mapi id 15.20.6156.028; Tue, 7 Mar 2023
 00:51:27 +0000
Message-ID: <356c4195-a746-fdef-391d-9e09abb84d2e@intel.com>
Date: Mon, 6 Mar 2023 16:51:25 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, "Sripada, Radhakrishna"
 <radhakrishna.sripada@intel.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-4-radhakrishna.sripada@intel.com>
 <20230306225449.GH1543793@mdroper-desk1.amr.corp.intel.com>
 <DM4PR11MB59716229DA2E5B20947C49FF87B79@DM4PR11MB5971.namprd11.prod.outlook.com>
 <20230307002431.GL1543793@mdroper-desk1.amr.corp.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230307002431.GL1543793@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0088.namprd05.prod.outlook.com
 (2603:10b6:a03:332::33) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|DS7PR11MB7905:EE_
X-MS-Office365-Filtering-Correlation-Id: 2315a773-1eb6-4c93-5cff-08db1ea6156b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Oy79/ljh+fTcDkLOedPrGvXuVIJb15b0vyf/GautMy/6zCPuoD6Xx8Tju2HCNsg8TmYOctNI3XqJteDtFlGoDMd7iLsDIMGCP4fN3y7rwsUQza8F5JW5qfVzqpA2HWD+JsMn391H02yw6jXs+FPddODudPL1COFTeuK/gkibwYWLYAkHMYKshVO5Y33TQ87SVx7q/HcY0WAub8TAVndrXqT9AU+3IDVjV81VZaBgG8tW3EDbrAbpOO0mfXGDJ2ZaAHoSXloT0SAWZT+AYxeScqnYp7C47jrPQfOKkdq1jilizbpfLgNeE3lnUR7299GebGHTJPrruZjSvQolhHWJAw4d6B0AVvtkaqVImatKtudyn7Zt2bYDFuMVZ1qGFq2EIm5AeCG4zYRgBt1jaBymy2hVXGlXyKMtpyo+PM0uSMKMLZ1KUDgbVS3b7ZFD1TWuXK2O7foE1GqOQSSCB+8LtyCDylFG4JngRUbiAClkMo4hKNg6/oqZiIxbfbPwXHr87sheUBM0TwA64qXa6jf6DCnKKTvLRYZiWzdaY7T/GHZ6crplcmEnTcc2aMtYDrrXV++bD/Q3rBxMEGoMmUv8wmL7CPjuiMIxXDNjdpDwNzyiRj/WjvzYA23FpfKfh0nofFfw/6dNhL4GWl/vakXFogx+Luk84LHSC+RlvqWhJVX5+4Pcf1FneYaN+ElL8R3i1pglkmlPsrJvYEnyiGinkT6KUCVP1v2knMYNph6F098=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(39860400002)(376002)(366004)(346002)(451199018)(54906003)(83380400001)(6636002)(110136005)(478600001)(38100700002)(41300700001)(4326008)(316002)(66556008)(5660300002)(66476007)(66946007)(8676002)(36756003)(2616005)(6512007)(6506007)(8936002)(2906002)(53546011)(107886003)(86362001)(31696002)(186003)(26005)(31686004)(82960400001)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmorNXVRL29PVFc3KzB2Ry83REJzNGkydXlrd0NHbG9VWm1FVEVNdEFMSHlK?=
 =?utf-8?B?TWtzZnBjNkVaVzY4SG9mdHFESnJFSkhUY3F1NG1DRndDNDBZVWpYSVAvbyt3?=
 =?utf-8?B?Z0FrSDNxaFBwc0YrcC9WUjRUcGd2OC91NlFZaWhSUGs4bWowOFdSNXg3ck1G?=
 =?utf-8?B?bDI1czdzUlVYRmJpVW5FVVFESjl6TzdEc1E4eG4xZ09pNUxEMkJkS3NFK0lD?=
 =?utf-8?B?QnJ2NmNjMW9Uc3hRcXd5c3BuMzF2V3dFcnN5emJHNHJVRGdtNysra3k2Q1R2?=
 =?utf-8?B?d3dscm9zWUVRNEpMNUpadGFYWjVNMUVzSklrdnExVEdZZUJ5MWpaYXZ5Ukdx?=
 =?utf-8?B?WkpvaTk3alJYRkdyTjdqdkNiYUp2T0o2bmhKdUxUQmdhMzkwK1Q1V2xXN2Rk?=
 =?utf-8?B?cXpjZ0RvdjY4TjNJL2IzVHdDVEM5M3dTejk0b1hxN2Q0b1BkUjlPSEdaUkVO?=
 =?utf-8?B?ZUtHdmljWWxYVG5idmE1d0FZWC9XYnJwaGF4bjdZRk1ybmhVcDNjZk5CZGZp?=
 =?utf-8?B?ZWx6ZGl6bkRqaVBpb2FUVUV5NkNNeEh5OGpJcmlTSm00QStyVGw4ZEcrT1NO?=
 =?utf-8?B?WTB5WmE1WHQrcnVpZGlNTERQa25ISXZFalFnMWFsOVFVQ3JDaFJXTEk1SmRt?=
 =?utf-8?B?ZGRsME5JRTlFQjROTnRXajlYcWFINzNqaFkrMHFFbUNnTFlXazdQRHJpT1Jk?=
 =?utf-8?B?Sklja0VicC9zS1hOb0VCQnhTWlZhZEFOWGZkcEZMNzQ2Vml3NmxPc29kMm9X?=
 =?utf-8?B?aDV5K1hKNFlremxWUHJVMHp5UFY5VHg5bkJDczdtaWpCY2xrcDVURFdTbyta?=
 =?utf-8?B?Q1JFWGhWcFM5bkZJbmkyUXc5RVc2UGN5b1BVRCtibm16L1VRMjVqMkk3Y25j?=
 =?utf-8?B?aGd0dnRRV2RKVHZPTysyWkRydHNab29rOTl6dHhMbTFYTnljRi9JMGZOLzRX?=
 =?utf-8?B?SHZweG54Q1N3Nlp2em4wdHRYUWRrWVRscWtLSjhZMDNheGEyZWt0a3hBYXNO?=
 =?utf-8?B?Q21SeFJCdkNkZGxHVnRMNExNUXVMUTdQY3FhdEJObjdLbmc4bllMT2pBR2Vo?=
 =?utf-8?B?SUxpQTVKcktVRjh1M0lwdnF4K2gyMXUraVRMQVlTS3Y1cXR2Um9BWlV4ckpq?=
 =?utf-8?B?YkFGenlRTDBUMWcyZDM2UDlpc0tDYlVFdDlORUlGcmF2UjkyOWozVmxaVlVF?=
 =?utf-8?B?K1V0M0kxT1ZrNFFNbjNlWEJmSmFXa0xkdTlYYXhobWJWVFlwN2lVZUNOYm1D?=
 =?utf-8?B?VmlqTHl2a1JVblFVWGxHcVZlV2lYNm9ONzdUaTFSSEFueW5yYWF4bDhyRkg5?=
 =?utf-8?B?SC9mclpkWis2YXF0a2ZEYWxSdFJGd05RN3VuZUdmdjNFRllrVGtSL3dpQUtp?=
 =?utf-8?B?SUtpTTF4ck1saVVuMmNiSGsxdzdlZnFhTzJCY1FmdG0yd3BrOWxkZEx3ajhD?=
 =?utf-8?B?UVUwdDlIYmpiTG8vVjYvNUhxRVNGOWcvb3hQTnlpUTlGT0EwRCtEWXdSdkxF?=
 =?utf-8?B?Q3piVnZhOWNvRFVtMW9aM3JrR3A4clJhdFN2VzBaTVY1VjhpZXEwQ1RsS28z?=
 =?utf-8?B?YXJQNnhDOVd3UnFKNkNFd3RTU3NaNmo5ODNwS0hQVkRwcXlyQVZ1dUxVM0Jm?=
 =?utf-8?B?UWE5WnhkcURuTlJ4UHdiSGtiZGJWc21SN3BJZitoNUEvaVM3Qk5YRlQvbXVX?=
 =?utf-8?B?TEpjVG14VzlYZGRraVQvSnAramJkVWRRdVpycHJOVTNldnh6dk5wWmd2WEJB?=
 =?utf-8?B?WTJNMEJjM3ZSRUJuN0kwRU5rT3c3OEZkSTl1RHZsRFBod1ZKLzkxVStaeGRu?=
 =?utf-8?B?ajJEOXFqdTdjRXlNTEliS2lSbElzVWU1TGV5dE4xZFpzdDFJWE5QQy9qZ2Yx?=
 =?utf-8?B?YTdLc0U4RWRwTVZONWNrRDN5YkkwRC9mNVhKMzZJM2ZtdlVFeGdyQ0RRS3BK?=
 =?utf-8?B?cmh6d3JLbXIxM1lCVjI1YUxvOWhrS253Y0tKVElsSTZzbzMrWlhTZ09BWWIw?=
 =?utf-8?B?bnJBTWVlZ1ZuaUdkR3l4VEsrSHhKVnVTdnJheHkzV1NNT2RMQ2krRzIwUGhD?=
 =?utf-8?B?WUo2SEx2UFBLZ0FWL2NxRzlrTHY4ZWZ6ZzRTU1NiTXFkVUwzbTl3dlZOK2JO?=
 =?utf-8?B?TDVJcy9VUVd2dmxTNEZtTDhtQXdtaXRJY3VydmxITDVRZUVMamZOaktPWFA2?=
 =?utf-8?Q?+XG1i8+WmPgkvfzKZwk1l2s=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2315a773-1eb6-4c93-5cff-08db1ea6156b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 00:51:27.7850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XXb1csFk5NAFt+gjp129wCj275WM2wvJYdg0jHuOlP3HvNeXzppV5Og8bks3wMuYRD6quSAu78vH8r8KJZXxyjeX07Kg58MpNcqWkpmnlpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7905
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915/mtl: make IRQ reset and
 postinstall multi-gt aware
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/6/2023 4:24 PM, Matt Roper wrote:
> On Mon, Mar 06, 2023 at 04:14:49PM -0800, Sripada, Radhakrishna wrote:
>> +Daniele,
>>
>> Hi Matt,
>>
>>> -----Original Message-----
>>> From: Roper, Matthew D <matthew.d.roper@intel.com>
>>> Sent: Monday, March 6, 2023 2:55 PM
>>> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
>>> Cc: intel-gfx@lists.freedesktop.org; De Marchi, Lucas
>>> <lucas.demarchi@intel.com>; Zanoni, Paulo R <paulo.r.zanoni@intel.com>
>>> Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915/mtl: make IRQ reset and
>>> postinstall multi-gt aware
>>>
>>> On Wed, Mar 01, 2023 at 12:10:51PM -0800, Radhakrishna Sripada wrote:
>>>> Irq reset and post install are to be made multi-gt aware for the
>>>> interrupts to work for the media tile on Meteorlake. Iterate through
>>>> all the gts to process irq reset for each gt.
>>> I think I mentioned on the previous version, but this isn't right.  MTL
>>> does not have separate interrupt registers for each GT the way
>>> multi-tile platforms like PVC do.  The GT interrupt registers you're
>>> handling here are in the sgunit so there's only a single copy of them;
>>> iterating over them multiple times in a row doesn't accomplish anything.
>>>
>>> The media engine bits are still on the same registers as the primary GT
>>> and the GSC and media GuC are new additional bits that need to be
>>> handled.  The necessary handling for the GSC and media GuC should have
>>> already landed in a187f13d51fa ("drm/i915/guc: handle interrupts from
>>> media GuC") and c07ee636901d ("drm/i915/mtl: add GSC CS interrupt
>>> support"), but if there's another bit that was missed somewhere (or if
>>> we were doing something like looking at the wrong intel_gt's engine mask
>>> somewhere), that would need to be addressed directly rather than just
>>> looping over the same IRQ registers multiple times.
>> This patch is needed to handle media interrupts. Without this patch we observed
>> GuC not loading/communication errors on media gt.
>>
>> My understanding is that Sgunit is embedded into the SAMedia block and hence need
>> To be iterated over separately.
> No, the sgunit is not replicated.  You can confirm by just going to the
> various IRQ register pages in the bspec...there's only a single register
> offset rather than (offset) and (offset+0x380000) like there are for GT
> GSI registers.  The i915 code also only adds the GSI offset to register
> operations in the 0x0 - 0x40000 range.

I agree with Matt that this is how the HW works. The issue here is that 
the gen11_gt_irq_* functions only program the interrupts for GuC and 
engines on the given GT, so when calling them for the root GT they will 
only program the interrupts for RCS, BCS, CCS and the root GuC. We could 
modify the functions to program all registers from the root GT, but IMO 
that doesn't work very well with how other parts of the driver implement 
the MTL multi-gt flow.

Daniele


>
> Matt
>
>> Daniele,
>> Can you confirm if that is accurate.
>>
>> Thanks,
>> RK
>>>
>>> Matt
>>>
>>>> Based on original version by Paulo and Tvrtko
>>>>
>>>> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/i915_irq.c | 30 ++++++++++++++++++------------
>>>>   1 file changed, 18 insertions(+), 12 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>>>> index 417c981e4968..9377f59c1ac2 100644
>>>> --- a/drivers/gpu/drm/i915/i915_irq.c
>>>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>>>> @@ -2759,16 +2759,19 @@ static void gen11_irq_reset(struct
>>> drm_i915_private *dev_priv)
>>>>   static void dg1_irq_reset(struct drm_i915_private *dev_priv)
>>>>   {
>>>> -	struct intel_gt *gt = to_gt(dev_priv);
>>>> -	struct intel_uncore *uncore = gt->uncore;
>>>> +	struct intel_gt *gt;
>>>> +	unsigned int i;
>>>>
>>>>   	dg1_master_intr_disable(dev_priv->uncore.regs);
>>>>
>>>> -	gen11_gt_irq_reset(gt);
>>>> -	gen11_display_irq_reset(dev_priv);
>>>> +	for_each_gt(gt, dev_priv, i) {
>>>> +		gen11_gt_irq_reset(gt);
>>>>
>>>> -	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
>>>> -	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
>>>> +		GEN3_IRQ_RESET(gt->uncore, GEN11_GU_MISC_);
>>>> +		GEN3_IRQ_RESET(gt->uncore, GEN8_PCU_);
>>>> +	}
>>>> +
>>>> +	gen11_display_irq_reset(dev_priv);
>>>>   }
>>>>
>>>>   void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>>>> @@ -3422,13 +3425,16 @@ static void gen11_irq_postinstall(struct
>>> drm_i915_private *dev_priv)
>>>>   static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
>>>>   {
>>>> -	struct intel_gt *gt = to_gt(dev_priv);
>>>> -	struct intel_uncore *uncore = gt->uncore;
>>>>   	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
>>>> +	struct intel_gt *gt;
>>>> +	unsigned int i;
>>>>
>>>> -	gen11_gt_irq_postinstall(gt);
>>>> +	for_each_gt(gt, dev_priv, i) {
>>>> +		gen11_gt_irq_postinstall(gt);
>>>>
>>>> -	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked,
>>> gu_misc_masked);
>>>> +		GEN3_IRQ_INIT(gt->uncore, GEN11_GU_MISC_,
>>> ~gu_misc_masked,
>>>> +			      gu_misc_masked);
>>>> +	}
>>>>
>>>>   	if (HAS_DISPLAY(dev_priv)) {
>>>>   		icp_irq_postinstall(dev_priv);
>>>> @@ -3437,8 +3443,8 @@ static void dg1_irq_postinstall(struct
>>> drm_i915_private *dev_priv)
>>>>   				   GEN11_DISPLAY_IRQ_ENABLE);
>>>>   	}
>>>>
>>>> -	dg1_master_intr_enable(uncore->regs);
>>>> -	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
>>>> +	dg1_master_intr_enable(to_gt(dev_priv)->uncore->regs);
>>>> +	intel_uncore_posting_read(to_gt(dev_priv)->uncore,
>>> DG1_MSTR_TILE_INTR);
>>>>   }
>>>>
>>>>   static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
>>>> --
>>>> 2.34.1
>>>>
>>> --
>>> Matt Roper
>>> Graphics Software Engineer
>>> Linux GPU Platform Enablement
>>> Intel Corporation

