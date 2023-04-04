Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A856D6D57E4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 07:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708D810E05E;
	Tue,  4 Apr 2023 05:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A934310E05E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 05:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680585214; x=1712121214;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QZsgotm2fg6CwcEWuG5XHYmvBbObBj9QSHYHBIssiFY=;
 b=cDI16MV7Fms6HkWNmZ6pz3GK1eDDY0s2A/mgktYgW/UdXLKyaf7tQsJL
 KZQj68qkWw1XlH/Ba1wwGFOeFgRRhCByGp4eJwpXjNZ6HESk2I1k/IXRd
 5mzIhFin4yVJ6G2w/xJv6OQH/fCLYpoIx2LB6uVLenIQguFBfzywDyp3k
 Q+oXVA4ABjcbaNYMS1uHEAHu1HeGKM/GrYQwNlvV9pjwoHlD6VU+lHOJc
 +70/TLPPH1jqk5BlAjJ7X3x5Dz/NDjEcBvJRhcF1QPpNwoCqFnmoQ/eMZ
 HsF4vFYZ2iXnkRcbSc+35pMwSf07iLjsTG8vUoevgsaPB1r4nfG4lBBo+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="404850910"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; d="scan'208";a="404850910"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 22:13:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="716518823"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; d="scan'208";a="716518823"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 03 Apr 2023 22:13:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 22:13:32 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 22:13:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 22:13:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 22:13:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fOxL6olG2v7vDHqJekp85idV9ssuLBHeMH+z2w6PEEVA3YiFOfpH6pwC1n6bDw+5VvE3iraexCtC6O1AtN5Dg5qNZruAyiiSmLtl0VlLEmgcMhYHiFaXKsPmqM/WaQXZSVUF3D8B5ex6TZHi4vhd2tuVXOJyQfy6XjqnEcNHDZfCTe7sHj8cdC3P/8aRSNrKHLXW/UJDLlB4JMoZK/ou776RZb8+9ehz2f3IZ3bpIHDA0Cgfah8tD6mbYYy8v192UbONfja6QDq+VuwHfBmMC0qmnCenEeV4vifIRtzKo7Vg2RT0WuRtMZF51T2bb+i6M9WXTls2r3jENQsuFz1PIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eZD8NyTJi7nsbVSvhXPco+RvzparDyBDAFB4qt4KIRE=;
 b=nSYOqz4SyXbs/Po0lXkmfrXeTX4Z4OL5+I4YNcNoJ/yphh2Bw5VTss/mU/eyv5N31JeJDCuisVsNFMyiPwyre1u3YFdyNqRJcagp/kD3KnTBglMXnKM2HV4ueztAQC1phHby885KY+3nVV31PYQCd8Ss/ifrQd+JeCJqDhH5U6NkNSo/Ndy8OfZs2MQEzKusB881/7u+OBfvPnreuiK7ih/kKJNv6fv0XPsmX6Ow14gMwzp43m2KfMiWdf8RhOM8L1QSUxYEiGb0l/bfkX7PIWiziz6K1v2OuvfO9DhPuah62or2PbDY2/w14sDPSnWd4UziALspzRFofFKVW1sFLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6187.namprd11.prod.outlook.com (2603:10b6:930:25::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.30; Tue, 4 Apr
 2023 05:13:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.034; Tue, 4 Apr 2023
 05:13:30 +0000
Message-ID: <129982ac-7afa-e9ae-6212-06d76fef4dff@intel.com>
Date: Tue, 4 Apr 2023 10:43:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
To: Manasi Navare <navaremanasi@google.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
 <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
 <ZCQLhkwNGRnZkD4k@intel.com> <f62f54f4-b42f-dc23-2ae9-2be450854bb1@intel.com>
 <ZCQYkQHDnPLX0Ee2@intel.com> <32039884-4045-478a-e03b-09afba2b15a3@intel.com>
 <ZCQiijNDxTqT98bw@intel.com> <fbf095f7-a222-8763-5624-7440b645c5e7@intel.com>
 <CAMNLLoTFyGOP2Oj2BtW4PXXcE1EFC05qNUEjqwhfS+SZaKjYeQ@mail.gmail.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <CAMNLLoTFyGOP2Oj2BtW4PXXcE1EFC05qNUEjqwhfS+SZaKjYeQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0019.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6187:EE_
X-MS-Office365-Filtering-Correlation-Id: 48496195-30dc-4019-841f-08db34cb53dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H7mKNpjLKZdFjs7KlM61gUcY7Yd18wQiobGF+delesx2JdKGjWFwntpUwcd2PVF/rwraXy+eEcMOCTZtUN78a+BOFf8zyVD6Bkp/nBBIEA0GqDY770IneDK8F0nysccW+H5PcEbrkX5MBC+l+8zwNsgvcOWaMAwMdbBZIoDp/3xRdgr867EMiDFP0ZZTuPyIctt4LunieQQ+MpXVXZWY5zZ/EkHGiomZ69C6LdqLPvZLN0MXr7FZ1khgR6lDF/5LQfnWQAJI58n8U8tcDlj1dpf6aJf1TpcADDAAf5Ndti2ScAq36mt/fJ0yKyGEjx1poCDyxRrpzcbd/izWHEEhYj6RzAm1PYbUqdoAOQd7rmBeGyOKoeSkJ5xCFta7e61+7cNnNBfhyWNLRC5EawiRCIzzTr4NTQnw6RyW1WugkIj0sgtojPqLRQrQmgekQHs8JP+ii1wj/VQmLwsFewbMJ01YlN3Rlf9gIxm+mquymg33TKFr3aIuZMk5W8e3FG9oKaMbuidtCToYWWdR9TOf5zZCQuV1XOrWxib2674bPuR1l19z2A3QUfqeGn8ZqMHhr3lexvPkL5TS1P6OGjPmGhxuF2vQPUZVeVqotZADrk/UI3n+iOaFhw+uPtkFzCncZWGOOl2VguPMZjvPveXonw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(346002)(136003)(396003)(451199021)(6506007)(6512007)(186003)(53546011)(66574015)(83380400001)(26005)(2616005)(8936002)(8676002)(5660300002)(66556008)(4326008)(6916009)(41300700001)(6486002)(66946007)(478600001)(2906002)(6666004)(36756003)(316002)(66476007)(82960400001)(31696002)(86362001)(38100700002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0ljYThJblZBRThFOHkzSFVCcjN1SjI5UTQ4RHNhb1FRbVVrZkJSaE5xUnh1?=
 =?utf-8?B?bDBMRXpkRjF3cmhQVUNaTmIzR0g5NE03NGYzS2FwR0EzZ0VZSVo0WGZmbHlH?=
 =?utf-8?B?Yi94WkM1RDhIdkJxYmYyTzVmY0M5Wk9ERm1JazNoU2JieTJZSVpBcVB0S1p6?=
 =?utf-8?B?Q2ZoQjJjMDVhMVcyM0VJelo2RG5YSlVTajVNdUxWcDNwSWpPRTAxcERjRFZ2?=
 =?utf-8?B?enBHeUxWYloxeURhQUJMeUMrYlAvRjMwRFZZSnBvTjZxWStqN2M4VWQzanRF?=
 =?utf-8?B?d3o4dWFnN2daSjZ4RVhjWFFkKzR4empKZHMvTWZkejdITjhCWkc0Tm1leVpp?=
 =?utf-8?B?bU94NU1LTGVaYzBOQWE1UVJqWGR1S0ZtbksybWxhY1E2N2ZTekhlb0ttUVRJ?=
 =?utf-8?B?c29jcUU5ak9QaGUxYTFPV1MrMW9HT2xnUDY4eEViWnRZdVFINU1hNFFYUUtG?=
 =?utf-8?B?OXBSdXRySnkzSEw2eDdEZ2o3YU1oZ2tGUjRWYllUVkhMVVhubkt0MzZtc1p4?=
 =?utf-8?B?dmNpUm9kRThzNExYajd2YjBjN2NTWEcwVjk1L3ErUE9jQ3ZiQXlXWVFWMEtp?=
 =?utf-8?B?OTkrRFFEYTZ1TEk0bmNCdThFZ3dZTERGdFN6Z1lpQXE4NVYxSktmUHNuVkpX?=
 =?utf-8?B?QjNHRW4yRGpkV2J3dGp1cm1wamRWSTVXNFE2dXJxVlNjNHRSK09Bd1Y5WEVv?=
 =?utf-8?B?aVpnTDNSaCtKSDdMNk1tVWJEVnNiMy9yRzVVM2k0TkRrRFN3ZHQvZGpCVVJJ?=
 =?utf-8?B?RGxKNW5pNzY0U1NwVkYvbElFTHloTC9oTVBYL2RqOG1lVEdObmI5b2c0eElY?=
 =?utf-8?B?L3F5cGcyOEtpR3lTRHE0ZC9EcjlIcW0xNE1BSXRpSFVCTCtwM0dmaXBaZkg0?=
 =?utf-8?B?dHpsZWowM3VhQWZXQzVkbmRVM1YraUdXRWxrYlllck00cExIN3pmbCtjbkVn?=
 =?utf-8?B?dUV3aURjVEJpN2E2My9wNUI3eGV6OFdrOWxJSk9QSHp0Q3ZNbVlzNytTc0x5?=
 =?utf-8?B?T0RkRy9Ia3VFS2c1b2lXV0xSeWlUMzZNai8yNW8za2FvdlEzRWViUlU3R0w1?=
 =?utf-8?B?V05rWXpnWTM2S0UvbUF6eFd3SFNCUXY0UkYyczJWdUlQbWZTMXQwWEI3U0dh?=
 =?utf-8?B?elNra2lySk5LekthbGREUENGNVd0ZmhVUjVQWVhMOTJURW8zekZsdGdRbFpC?=
 =?utf-8?B?cVVST2xBSmQ3SVBPMUFXcnpvQlZ6cS9XS211SkNYbktkdkF4ZzJvZ21RcGow?=
 =?utf-8?B?WDNlSGdONnAwRmFleVErZVhyK3djd1dZK0xjV3RSZVVkL1hsM1pOZlFaVEF0?=
 =?utf-8?B?bXQxVWZFS0p5MUo3TURhSWhuNFYzMW1vUWhUTTRKdVlnRzZ4bmkxdWlFNXdt?=
 =?utf-8?B?M3B1U3Z4K2NhUjJDWWdTOHorN0NGNTB6S3FFMmcvM24xdHhkTDFWZmxUYzMy?=
 =?utf-8?B?NUdpUjhkd1J3cHVhS2tkd2pHUk5LZUlpNU1jb0hqdDVBNHcvSTdsUWNPNlhm?=
 =?utf-8?B?ZkM4Yk1PLzZxNnE5b20zOU5Hdnlma29sUy9vYXFUeEFVaEplL3grbG5nZEJ3?=
 =?utf-8?B?Wkp2aGZERnRpbEJtTGJHUXhpS1l3WUVidzRFZWt4a2QveWtVUk5MREs1azlw?=
 =?utf-8?B?L3M3ODBMWWp0dGdNUnFOL201YzY2cWp1Q0NUODlDdGFSQ29hSTZSM1pBb3N0?=
 =?utf-8?B?cTB2VC9lUzVNWnFoa0hJQ2ZUZnNGY3gvTWlvb00wU1NSSzE3WHlGUVE5QXFX?=
 =?utf-8?B?Q0gyTVRrRmowL1VKWUhqT0Q3UWtWdFl5b3BDQ2RvdllMYlVhRkRHcXlCSmNH?=
 =?utf-8?B?U2ZxaDNjUSsxaUNNQkVwSFJFTTFhQ2V1a3h5T0xlRTc1TnYwUlZBWkhPQXFq?=
 =?utf-8?B?VEY4djREUlNubi9ISmhTR2JCRUtYUldzUmhQTlhIcHZDZHBYalNuak55V0ZZ?=
 =?utf-8?B?RVJZdC9NTzdRd2p1akYxZHNjWDNhenJJQ0dVU2MzRjJici9rSTFDS3c0WHRL?=
 =?utf-8?B?WmJZOXovbjJ5WHhoazVFbjBKdW9EcnFQWjkrd2RwR1E2RXM3bUNKVDErU0NH?=
 =?utf-8?B?RUNJdm5yMnBTRVBtczVyTmlPN1lPMk9kWGdleXp4Q3U2ZGVyNjdnaEdlWnF5?=
 =?utf-8?B?alJmdGpkTmduWndadkxqY0w2L25xOXJSZnZWTE0xZlJiWUpZdGozTU1sZXo2?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48496195-30dc-4019-841f-08db34cb53dd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 05:13:29.8295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0pMbqRfcUkYnSdElwTuwH1xeQgyjP01LElLs0mMfPMlJuQRLFOpak/uRt9vYxIErZhL5pt/xmu6e65t++KYKibqjgFz16fPqhIlsy3yeXN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6187
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use current cdclk for DSC
 Bigjoiner BW check
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/4/2023 3:03 AM, Manasi Navare wrote:
> On Thu, Mar 30, 2023 at 4:11 AM Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com> wrote:
>>
>> On 3/29/2023 5:05 PM, Ville Syrjälä wrote:
>>> On Wed, Mar 29, 2023 at 05:00:55PM +0530, Nautiyal, Ankit K wrote:
>>>> On 3/29/2023 4:23 PM, Ville Syrjälä wrote:
>>>>> On Wed, Mar 29, 2023 at 04:06:21PM +0530, Nautiyal, Ankit K wrote:
>>>>>> On 3/29/2023 3:27 PM, Ville Syrjälä wrote:
>>>>>>> On Wed, Mar 29, 2023 at 02:14:49PM +0530, Ankit Nautiyal wrote:
>>>>>>>> As per Bspec, Big Joiner BW check is:
>>>>>>>> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits /
>>>>>>>> Pixel clock
>>>>>>>>
>>>>>>>> Currently we always use max_cdclk in the check for both modevalid
>>>>>>>> and compute config steps.
>>>>>>>>
>>>>>>>> During modevalid use max_cdclk_freq for the check.
>>>>>>>> During compute config step use current cdclk for the check.
>>>>>>> Nak. cdclk is computed much later based on what is actually needed.
>>>>>>> The cdclk freq you are using here is essentially a random number.
>>>>>> Oh I didn't realise that, perhaps I was lucky when I tested this.
>>>>>>
>>>>>> So this check where CDCLK is mentioned, actually expects max_cdclk_freq?
>>>>>>
>>>>>> If it doesnt then, we might have a compressed_bpp value, that might be
>>>>>> violating the big joiner bw check.
>>>>>>
>>>>>> Should this be handled while computing cdclk?
>>>>> Yes. I suggest adding something like intel_vdsc_min_cdclk() that
>>>>> handles all of it.
>>>> I can try that out.
>>>>
>>>> Will also add *Pipe BW check*: Pixel clock < PPC * CDCLK frequency *
>>>> Number of pipes joined, which seems to be missing.
>>> That is already accounted for in the pixel rate.
>> Indeed, will club this check and the other bigjoiner_bw check in
>> intel_vdsc_min_cdclk, if the approach mentioned in the other mail is
>> acceptable.
>>
>> Regards,
>>
>> Ankit
> Hi Ankit,
>
> Yes I think it makes sense to add the vdsc_min_cdclk check while
> computing the min cdclk.
> This will hopefully let us exercise all allowed compressed bpps all
> the way to 27, which have caused failures earlier
> possibly due to the cdcclk being reduced beyond the pipe bw required
> with the max compressed bpp that we use.
> So best would be to check against vdsc_mind_cdclk required if dsc is
> enabled for that configuration, if not then skip
> the check
>
> Regards
> Manasi


Right, I will send a new patch with intel_vdsc_min_cdclk as discussed.

Will be good to have further discussion on that.

Thanks & Regards,

Ankit

>>>> So with pipe bw_check cdclk should be >  Pixel clock / (PPC * Number of
>>>> pipes joined)
>>>>
>>>> In addition, as per bigjoiner check it should be >= compressed_bpp /
>>>> (PPC * bigjoiner interface bits).
>>>>
>>>> Regards,
>>>>
>>>> Ankit
>>>>
>>>>>> Regards,
>>>>>>
>>>>>> Ankit
>>>>>>
>>>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>>>> ---
>>>>>>>>      drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
>>>>>>>>      drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>>>>>>>>      drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
>>>>>>>>      3 files changed, 8 insertions(+), 3 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>>> index 3fe651a8f5d0..d6600de1ab49 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>>>> @@ -711,6 +711,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>>>>>>>>      u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>>>>>                                   u32 link_clock, u32 lane_count,
>>>>>>>>                                   u32 mode_clock, u32 mode_hdisplay,
>>>>>>>> +                                unsigned int cdclk,
>>>>>>>>                                   bool bigjoiner,
>>>>>>>>                                   u32 pipe_bpp,
>>>>>>>>                                   u32 timeslots)
>>>>>>>> @@ -757,9 +758,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>>>>>
>>>>>>>>           if (bigjoiner) {
>>>>>>>>                   int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 12 ? 24 : 36;
>>>>>>>> -                u32 max_bpp_bigjoiner =
>>>>>>>> -                        i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
>>>>>>>> -                        intel_dp_mode_to_fec_clock(mode_clock);
>>>>>>>> +
>>>>>>>> +                u32 max_bpp_bigjoiner = cdclk * 2 * bigjoiner_interface_bits /
>>>>>>>> +                                        intel_dp_mode_to_fec_clock(mode_clock);
>>>>>>>>
>>>>>>>>                   bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
>>>>>>>>           }
>>>>>>>> @@ -1073,6 +1074,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>>>>>                                                               max_lanes,
>>>>>>>>                                                               target_clock,
>>>>>>>>                                                               mode->hdisplay,
>>>>>>>> +                                                            dev_priv->display.cdclk.max_cdclk_freq,
>>>>>>>>                                                               bigjoiner,
>>>>>>>>                                                               pipe_bpp, 64) >> 4;
>>>>>>>>                           dsc_slice_count =
>>>>>>>> @@ -1580,6 +1582,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>>>>>>>                                                               pipe_config->lane_count,
>>>>>>>>                                                               adjusted_mode->crtc_clock,
>>>>>>>>                                                               adjusted_mode->crtc_hdisplay,
>>>>>>>> +                                                            dev_priv->display.cdclk.hw.cdclk,
>>>>>>>>                                                               pipe_config->bigjoiner_pipes,
>>>>>>>>                                                               pipe_bpp,
>>>>>>>>                                                               timeslots);
>>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>>>> index ef39e4f7a329..d150bfe8abf4 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>>>> @@ -106,6 +106,7 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>>>>>>>>      u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>>>>>                                   u32 link_clock, u32 lane_count,
>>>>>>>>                                   u32 mode_clock, u32 mode_hdisplay,
>>>>>>>> +                                unsigned int cdclk,
>>>>>>>>                                   bool bigjoiner,
>>>>>>>>                                   u32 pipe_bpp,
>>>>>>>>                                   u32 timeslots);
>>>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>>>>>> index a860cbc5dbea..266e31b78729 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>>>>>> @@ -925,6 +925,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>>>>>>>                                                               max_lanes,
>>>>>>>>                                                               target_clock,
>>>>>>>>                                                               mode->hdisplay,
>>>>>>>> +                                                            dev_priv->display.cdclk.max_cdclk_freq,
>>>>>>>>                                                               bigjoiner,
>>>>>>>>                                                               pipe_bpp, 64) >> 4;
>>>>>>>>                           dsc_slice_count =
>>>>>>>> --
>>>>>>>> 2.25.1
