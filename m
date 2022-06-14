Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E8554B4B0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 17:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1819D1126FE;
	Tue, 14 Jun 2022 15:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21C41126FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 15:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655220643; x=1686756643;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KWdsj/tX3U74bvUq38aHefuJQCy8tE+yYNADwheMWmY=;
 b=KUtCwxtkuVqWX3AWv6t5jluZBJ2IFy8bHJb5Xy/+yLBsCPk0sLifuL3Z
 1TE2ZE9ohmc7ihjsBCk4aeo/BTEGNJDJdMw+MIrch20ufNMPDpCHOmpNv
 wXiL+08Ph3mAYLZTml3mGya6KjjMg629S/FChScsM5WhyzNYhpZVbX02u
 25ZBMN7nbgHnoceWGNHLm9487YhhS/6jNqg9iKFB2zN26fefj5k9LSTVA
 M97kaBVbuQOMkFrmpi1YEDkA0SER2IXSvE0AtHlyXIeziSUb3he1H4hsR
 iwdjF7HPgs7vUQnJ5em0K6dQHJe2z90XCa8GWalD0O8rOCF3zuFgP71Xl A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="267337494"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="267337494"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 08:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="640433967"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jun 2022 08:30:42 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 08:30:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 14 Jun 2022 08:30:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 14 Jun 2022 08:30:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=awNQuCL+uKZ3iA3qaF6uQJdL8Q7dm/0k0vjRMGIZRiSlqhDt5WoxzVeELOMcU+pwmDobkLMJ0ugnCVw5m+P4vAKiglFbZnClXF+5Qypj16tyQY9CAE3WZC+y5y881H3w8/KsqHglnTg+H62+3xeaIUhk07xJ6IzvMmEqZG1X2KgLcyxDgUMQm8foH5WXo/9UZxdIhxtAjUDWdqysuleHJPz6ayavcaVQyqXQlSw3drVMzx6RH1P4aTO2oUKMx/da4oAmZ4dfnQ2/rKWfXFSGwZt2hFrHulYxjKWFlrVrB5kl94fssbGOCT3v6uc4UqLfH46b2KWEm8BRQRLBAUskSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BvCt5l2cF0o7TSIHYLRiBESA4Jw+r/VBy0D0eGyAvKI=;
 b=Md7iB/vV2wWePsuXO/wyxHNYwghRvedG3C17Y9FhK+xstg4QsSpoBKIoCGGTMf4CEs0LpJg4X10xYG085sQBvIjIm/JgLBxIbFEeGytntSMP2HJZ9R0EO38gnZuuA3Eavrs1YFTQ9b7nVSBzRxEpI2n7nK4H04y8Yb73XE4Rit269BvgE19tj7feqeeyZ3NWU6YL/d0nHhH9dVpFKtt6XaoEFqtVl7ErJrwtJVTxF5YBWIHK8J27NgpTh4kwiTs5V+R46n+vwY7Y3eofij3scIU4rltvI6KRMtchzAKCH0yvpu8bOm4i98AoHETeO6OHiJCZVWKU/PdS2b/FCkhrDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 SA0PR11MB4607.namprd11.prod.outlook.com (2603:10b6:806:9b::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.13; Tue, 14 Jun 2022 15:30:32 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf%2]) with mapi id 15.20.5332.022; Tue, 14 Jun 2022
 15:30:32 +0000
Message-ID: <4a7f6abe-e479-a3d9-8615-e52a2863733c@intel.com>
Date: Tue, 14 Jun 2022 08:30:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
 <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
 <4d44c67a-4a38-fa53-6709-d5f206a9b0db@linux.intel.com>
 <e90f9dd1-7229-f958-d2e6-6fc4ec5a866b@intel.com>
 <954db3a4-e8c9-e157-5211-aceec87dfd9d@linux.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <954db3a4-e8c9-e157-5211-aceec87dfd9d@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR02CA0038.namprd02.prod.outlook.com
 (2603:10b6:a03:54::15) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07074283-808b-4f94-8108-08da4e1ad0c5
X-MS-TrafficTypeDiagnostic: SA0PR11MB4607:EE_
X-Microsoft-Antispam-PRVS: <SA0PR11MB46075F364D259C59CADA8C7FF4AA9@SA0PR11MB4607.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9JNMyN0UUgHfJlyjisaB4hvzxM8guZd9AHn2uQbonAOnLCk5zQSZIW4x6xmi+mU7dO8oI7sZeR1Hh4wyKJkTadH/6XMoOHKT0xJWbmgwwnA9PC3bNgs5n4fg890FAElIdvpkUeiwsjBHOEU89G+R0rDdh14fCJnJgOoenJBS42CVK6Pptk8SmxAVdqbHhhLiSV6KrvlxKi2yXk/JvBY8IvO4YWKuTh69Y+tjPvD+C8L2S/bqTh0VV3/N5fhegiZu1YW/LWvoZBtWkWeJexPmO/21Xwh79onCmXMGzAIRGBDmN5G3pSZexLoeqJPpJyrimI6UXOWaaWWl1X1asm9QPO6EYzE7oohgZH8ehQCDvDqOT/PyrOlarVwxBMzpHdpDvxIraWpSzDZowQ2FxBYQHOYXPojMjxAk6ks0chqefxNmSDpeLYzjW9Sb1ghH4FqUlMjpEvkJfg5kvx6+CVPhIcnVvoRX46CmiO5oyC2ET2fkgYUCZnmztJ0sGw/Q2npX//g02pHRmkNigQWPw4ILqehn6OEs7Vd8GUN85FhTZ1oRjwhtaqKdVeLPUjXD53yRTKd9ugyRmwjAHgYSEl1Q2HLNxvzmQQJY+wbZwtPXKW7+p1XyvzeXcE5xLqec00eS54aZJffh5UQ8cbQYoO5HIeO1VqwUJfDzkL2+swPOTBfXIPp6AiQZRpeeg91A3iCFVvKhfpfmJTrZi+i16jVSpvuCceu4mumKPIMYIJ+GL7S6vT7ZDa82O1xra98e3A2WkfiYcUYDrmSRWHgYdD1uKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(83380400001)(2616005)(31686004)(186003)(38100700002)(36756003)(2906002)(8676002)(5660300002)(66556008)(66476007)(8936002)(66946007)(6512007)(6506007)(26005)(4326008)(54906003)(53546011)(6486002)(31696002)(6666004)(316002)(86362001)(508600001)(82960400001)(60764002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkNoS1NMS0h6aHJRekxwY1FMYXdtVktkWkVhajdYMFo4L3RaaHhjSm1YdCtO?=
 =?utf-8?B?ZEp1N0x2eUp4TzFWdWdTanp4WldzM0E0UHZDSE9vL0x5Q1FDb2dZempEN3Fz?=
 =?utf-8?B?RXVxZFdMSGJneDhRaVJ0TE1Gc0x1NlpBWGtnM0xyNEN3bmM1VmpCa1AzNUdF?=
 =?utf-8?B?cEpSWjBSWmpQelpOSFVvM3FvWWc4RWZrYjQ0NU1RRFAzUWRpNjFBekNNQTJn?=
 =?utf-8?B?NXlEbm9LKzZEdHhON3RYT1prUjRjd3ZrMk9OVElvOUJNZThScDBJZG50NFor?=
 =?utf-8?B?eGdVNkxnMEJ5b2tWRUR4emZoZlFXd21EaUNtZUIvb3E1c3dhai9id1BUQ0FF?=
 =?utf-8?B?OHcyWkxkRHBLS0g1WnBHbGhJMllTZHRMVlB2Q0VvaXNqdXozRWI0dkpSSzNU?=
 =?utf-8?B?T2lkNmEzcnFEaE9TNEFoVkpNTkttd2pqd2xPNmlCL2ZNbXUzK2ZTZFltZnBE?=
 =?utf-8?B?ZHN6UkgwL1VQWVpveUFnNDRjQnRXZnJkNmo4MUU4WWdKTzRvdGRxblc2bHpK?=
 =?utf-8?B?czArdHZmOU14TmwyRzdCQ1JyMG82SFhDeVlrSng1NGVxWTVJd1VWeUo5cjJX?=
 =?utf-8?B?VGhNRU9oUysrL0FoZnNESnhKazM1OE56anY2T0NWTWovUTBoUTI0b3VPL3Jp?=
 =?utf-8?B?SU1pR1BwNzhJaXo3MTZJT0hNVTcvVGI4NU1BN09GNmJHSUdudGd1K3Z3UVFo?=
 =?utf-8?B?VFpBQlo3VUdGZnhZdDREbG1kaDE1eTFqQWJoTDVIbW1icGVGQlNTK2ZqUlUv?=
 =?utf-8?B?Nzc3cStUak93RURYMnljNmZMWWNmZVVQNXJnaFJDUnAveGhoRStRamZlWmVh?=
 =?utf-8?B?SEl2eCt5WjdvdzZhZ0psQ2tNWGUwT0FBdk5uVmYyVkF5TC9DMytkMGZaOWhr?=
 =?utf-8?B?NktZVFlpL0Y2NlZDNzZuUzBKVldvTlBUVzk5U0txMXQxQWszaTgxMHZneENV?=
 =?utf-8?B?R1YzejM4cTB4eGFSV1ZHandvcjlQSkVpY0lJcTIrbzJjUFNtc2Qrc1VKbmgw?=
 =?utf-8?B?cm9TQU90RTlOSHQyVWo4b01XMW1IcWJtWlcydEcvVEFSRGpnU2RVcXlOcTdI?=
 =?utf-8?B?b0tZb29zSVBCZUZqditoTXlMR3NTa0FwZmFaU21sYnFRckhma205KytzR0dw?=
 =?utf-8?B?dTlGL0orV2FQb0p6bktHZjRxcGwyb1drQmtzbVZ2TVBraXV5T2o5SDhFcjZa?=
 =?utf-8?B?eHdCbGY2aHlSa1ZnSW1IK0dKQnhYYTBZWElvL1kzaGpHMDZ2Y21Ic21qSWNk?=
 =?utf-8?B?L0VOZnkzcDI0KzJoSnBpU0hMd2E1N3MzdlZlQUZqVk9MS0pVS2hGZWxkNEhC?=
 =?utf-8?B?ckpROVdVaFRYUDlJYU9NWUR5Q3A0UktlT0t5ak05dG9YV0d1OG4rN2lqVjdM?=
 =?utf-8?B?RlhBd0EzRHVScU1uSmlNOVpnZjBMb2FuS3V6RWV3SENvakxvK1lFRU1ETDBX?=
 =?utf-8?B?Y1IxbnlyVU9CTi9KMW9rU3ZtK1VySXpUVEhzckJGQmV3RVB5cGVkcXV0UWlq?=
 =?utf-8?B?aWlQMU1lNnJZNDNRTEdqSWRKWHpYL2tyQ0Iwbk1aM2ZmemVHQ2sxeDJvNUtq?=
 =?utf-8?B?Zml1L1NSUEdSUFppU2UwMnBvWGFmbkVUT2hmbWtIMDg3TUdRVEVzakVWTldo?=
 =?utf-8?B?a1B6WDN4RmFYcGthYXo3OUt1ejFSSVlyalRNS09xa2dkNzlOQ3BNM2V0WHJw?=
 =?utf-8?B?ZzZtTWJTai9YaWlmeWxjQUNIZDN6UXlLc3lzMGFyUGx6UTZMMDVjNGhLWWQ2?=
 =?utf-8?B?RmtFc2FXZjlJbFBJYjZSSTdmTUthdXFka0Z3TjY2eERPcWVNOTRPdDd2Z2Fu?=
 =?utf-8?B?TC91MjVKZU9KLzJ2Y2piVDAvY0xQMEM0Z1ZxSi9Tc3dJR0RwakpGRlpaajJQ?=
 =?utf-8?B?OEhhRlpMVThmUW50SnFUQ205UmZJTTQvWDFXSmdNREx2bWZ6K3B1RlphY3Az?=
 =?utf-8?B?NkRDb2txUHZPOWhFeHpkY1hqMlhSQTJEQ3lTaWY4djRsY29wY3F1YlovcGlN?=
 =?utf-8?B?bkMyM0dkLzN2VFJoRVZJSDVPbmxzdUw0ZGt2dmNkS3ZWamZqeVNHK1Y3WmZo?=
 =?utf-8?B?L2h5dm5KMVRpNWNYa2hybEwzaER3VXVUNUd5NEg5a0JOZElsODcyekthaU5G?=
 =?utf-8?B?NHkwZXZ5RXN2Nk1MU3I5ZGJBTENFNGwwRFlYMldhblQ4Z1ZwU05GdFNXaGp4?=
 =?utf-8?B?THh5MlZjRzhNMHVzb2FGbFZXVXFXRkcwZWs3YTlLMEx6U1FhNFM0a0tLLzVp?=
 =?utf-8?B?Y2NhMmhxdzZIREN5YUFuVDY1YXZRd1BoSDZxMnV5eDFqSU9uZFZUdUhVOG1s?=
 =?utf-8?B?WTZibHZhcDd2VFhpSFFiWktJZHN5bXQwSXhIZFVLR1hNdU44T09qUU9pZ0Vz?=
 =?utf-8?Q?VywAHVzQ0goFVWUm4auhX3gjQbq8Gr1J2Fbho?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07074283-808b-4f94-8108-08da4e1ad0c5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2022 15:30:31.6150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vsXrASHZRwEa0D7BhYmbAxVA/49SqMYI57be/fCwLRc/n547Fw56A0b8jT0dkYyzbQYuka7TpiI19SC1R918XyALqyPJRCCSz/4yj7ImD/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4607
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 6/14/2022 12:44 AM, Tvrtko Ursulin wrote:
>
> On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
>> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>>
>>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>>
>>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP 
>>>>>>>>>> command. The load
>>>>>>>>>> operation itself is relatively simple (just send a message to 
>>>>>>>>>> the GSC
>>>>>>>>>> with the physical address of the HuC in LMEM), but there are 
>>>>>>>>>> timing
>>>>>>>>>> changes that requires special attention. In particular, to 
>>>>>>>>>> send a PXP
>>>>>>>>>> command we need to first export the GSC driver and then wait 
>>>>>>>>>> for the
>>>>>>>>>> mei-gsc and mei-pxp modules to start, which means that HuC 
>>>>>>>>>> load will
>>>>>>>>>> complete after i915 load is complete. This means that there 
>>>>>>>>>> is a small
>>>>>>>>>> window of time after i915 is registered and before HuC is loaded
>>>>>>>>>> during which userspace could submit and/or checking the HuC 
>>>>>>>>>> load status,
>>>>>>>>>> although this is quite unlikely to happen (HuC is usually 
>>>>>>>>>> loaded before
>>>>>>>>>> kernel init/resume completes).
>>>>>>>>>> We've consulted with the media team in regards to how to 
>>>>>>>>>> handle this and
>>>>>>>>>> they've asked us to do the following:
>>>>>>>>>>
>>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load is 
>>>>>>>>>> still in
>>>>>>>>>> progress. The media driver uses the IOCTL as a way to check 
>>>>>>>>>> if HuC is
>>>>>>>>>> enabled and then includes a secondary check in the batches to 
>>>>>>>>>> get the
>>>>>>>>>> actual status, so doing it this way allows userspace to keep 
>>>>>>>>>> working
>>>>>>>>>> without changes.
>>>>>>>>>>
>>>>>>>>>> 2) Stall all userspace VCS submission until HuC is loaded. 
>>>>>>>>>> Stalls are
>>>>>>>>>> expected to be very rare (if any), due to the fact that HuC 
>>>>>>>>>> is usually
>>>>>>>>>> loaded before kernel init/resume is completed.
>>>>>>>>>
>>>>>>>>> Motivation to add these complications into i915 are not clear 
>>>>>>>>> to me here. I mean there is no HuC on DG2 _yet_ is the premise 
>>>>>>>>> of the series, right? So no backwards compatibility concerns. 
>>>>>>>>> In this case why jump through the hoops and not let userspace 
>>>>>>>>> handle all of this by just leaving the getparam return the 
>>>>>>>>> true status?
>>>>>>>>
>>>>>>>> The main areas impacted by the fact that we can't guarantee 
>>>>>>>> that HuC load is complete when i915 starts accepting 
>>>>>>>> submissions are boot and suspend/resume, with the latter being 
>>>>>>>> the main problem; GT reset is not a concern because HuC now 
>>>>>>>> survives it. A suspend/resume can be transparent to userspace 
>>>>>>>> and therefore the HuC status can temporarily flip from loaded 
>>>>>>>> to not without userspace knowledge, especially if we start 
>>>>>>>> going into deeper suspend states and start causing HuC resets 
>>>>>>>> when we go into runtime suspend. Note that this is different 
>>>>>>>> from what happens during GT reset for older platforms, because 
>>>>>>>> in that scenario we guarantee that HuC reload is complete 
>>>>>>>> before we restart the submission back-end, so userspace doesn't 
>>>>>>>> notice that the HuC status change. We had an internal 
>>>>>>>> discussion about this problem with both media and i915 archs 
>>>>>>>> and the conclusion was that the best option is for i915 to 
>>>>>>>> stall media submission while HuC (re-)load is in progress.
>>>>>>>
>>>>>>> Resume is potentialy a good reason - I did not pick up on that 
>>>>>>> from the cover letter. I read the statement about the unlikely 
>>>>>>> and small window where HuC is not loaded during kernel 
>>>>>>> init/resume and I guess did not pick up on the resume part.
>>>>>>>
>>>>>>> Waiting for GSC to load HuC from i915 resume is not an option?
>>>>>>
>>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume can't 
>>>>>> start until i915 resume completes.
>>>>>
>>>>> I'll dig into this in the next few days since I want to understand 
>>>>> how exactly it works. Or someone can help explain.
>>>>>
>>>>> If in the end conclusion will be that i915 resume indeed cannot 
>>>>> wait for GSC, then I think auto-blocking of queued up contexts on 
>>>>> media engines indeed sounds unavoidable. Otherwise, as you 
>>>>> explained, user experience post resume wouldn't be good.
>>>>
>>>> Even if we could implement a wait, I'm not sure we should. GSC 
>>>> resume and HuC reload takes ~300ms in most cases, I don't think we 
>>>> want to block within the i915 resume path for that long.
>>>
>>> Yeah maybe not. But entertaining the idea that it is technically 
>>> possible to block - we could perhaps add uapi for userspace to mark 
>>> contexts which want HuC access. Then track if there are any such 
>>> contexts with outstanding submissions and only wait in resume if 
>>> there are. If that would end up significantly less code on the i915 
>>> side to maintain is an open.
>>>
>>> What would be the end result from users point of view in case where 
>>> it suspended during video playback? The proposed solution from this 
>>> series sees the video stuck after resume. Maybe compositor blocks as 
>>> well since I am not sure how well they handle one window not 
>>> providing new data. Probably depends on the compositor.
>>>
>>> And then with a simpler solution definitely the whole resume would 
>>> be delayed by 300ms.
>>>
>>> With my ChromeOS hat the stalled media engines does sound like a 
>>> better solution. But with the maintainer hat I'd like all options 
>>> evaluated since there is attractiveness if a good enough solution 
>>> can be achieved with significantly less kernel code.
>>>
>>> You say 300ms is typical time for HuC load. How long it is on other 
>>> platforms? If much faster then why is it so slow here?
>>
>> The GSC itself has to come out of suspend before it can perform the 
>> load, which takes a few tens of ms I believe. AFAIU the GSC is also 
>> slower in processing the HuC load and auth compared to the legacy 
>> path. The GSC FW team gave a 250ms limit for the time the GSC FW 
>> needs from start of the resume flow to HuC load complete, so I bumped 
>> that to ~300ms to account for all other SW interactions, plus a bit 
>> of buffer. Note that a bit of the SW overhead is caused by the fact 
>> that we have 2 mei modules in play here: mei-gsc, which manages the 
>> GSC device itself (including resume), and mei-pxp, which owns the pxp 
>> messaging, including HuC load.
>
> And how long on other platforms (not DG2) do you know? Presumably 
> there the wait is on the i915 resume path?

I don't have "official" expected load times at hand, but looking at the 
BAT boot logs for this series for DG1 I see it takes ~10 ms to load both 
GuC and HuC:

<7>[    8.157838] i915 0000:03:00.0: [drm:intel_huc_init [i915]] GSC 
loads huc=no
<6>[    8.158632] i915 0000:03:00.0: [drm] GuC firmware 
i915/dg1_guc_70.1.1.bin version 70.1
<6>[    8.158634] i915 0000:03:00.0: [drm] HuC firmware 
i915/dg1_huc_7.9.3.bin version 7.9
<7>[    8.164255] i915 0000:03:00.0: [drm:guc_enable_communication 
[i915]] GuC communication enabled
<6>[    8.166111] i915 0000:03:00.0: [drm] HuC authenticated

Note that we increase the GT frequency all the way to the max before 
starting the FW load, which speeds things up.

>
>>>>> However, do we really need to lie in the getparam? How about 
>>>>> extend or add a new one to separate the loading vs loaded states? 
>>>>> Since userspace does not support DG2 HuC yet this should be doable.
>>>>
>>>> I don't really have a preference here. The media team asked us to 
>>>> do it this way because they wouldn't have a use for the different 
>>>> "in progress" and "done" states. If they're ok with having separate 
>>>> flags that's fine by me.
>>>> Tony, any feedback here?
>>>
>>> We don't even have any docs in i915_drm.h in terms of what it means:
>>>
>>> #define I915_PARAM_HUC_STATUS         42
>>>
>>> Seems to be a boolean. Status false vs true? Could you add some docs?
>>
>> There is documentation above intel_huc_check_status(), which is also 
>> updated in this series. I can move that to i915_drm.h.
>
> That would be great, thanks.
>
> And with so rich return codes already documented and exposed via uapi 
> - would we really need to add anything new for DG2 apart for userspace 
> to know that if zero is returned (not a negative error value) it 
> should retry? I mean is there another negative error missing which 
> would prevent zero transitioning to one?

I think if the auth fails we currently return 0, because the uc state in 
that case would be "TRANSFERRED", i.e. DMA complete but not fully 
enabled. I don't have anything against changing the FW state to "ERROR" 
in this scenario and leave the 0 to mean "not done yet", but I'd prefer 
the media team to comment on their needs for this IOCTL before 
committing to anything.

Daniele

>
> Regards,
>
> Tvrtko
>
>>
>> Daniele
>>
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>>
>>>> Thanks,
>>>> Daniele
>>>>
>>>>>
>>>>>>> Will there be runtime suspend happening on the GSC device behind 
>>>>>>> i915's back, or i915 and GSC will always be able to transition 
>>>>>>> the states in tandem?
>>>>>>
>>>>>> They're always in sync. The GSC is part of the same HW PCI device 
>>>>>> as the rest of the GPU, so they change HW state together.
>>>>>
>>>>> Okay thanks, I wasn't sure if it is the same or separate device.
>>>>>
>>>>> Regards,
>>>>>
>>>>> Tvrtko
>>>>
>>

