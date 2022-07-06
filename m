Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFE05690A6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 19:26:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8392211214F;
	Wed,  6 Jul 2022 17:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B85D112122
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 17:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657128390; x=1688664390;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LGIBr16BrR86atEeGpzf3iZMlc5PPRCpwE08SpHmvg4=;
 b=Pz3ChsNY0MMCc+6cQu9PR2le3BsP8uBk2ftGq9thnXVKgSZ1aWHj8516
 SXsaIODSe5kJF3bvFDB0HUYUVkZ6mHfn0sY2P5pcTyiV+Y9IymubrYAPt
 jef+phEvQC4um3CTC2KcEX+/+1RyHb+ZEPL63b5RQmghz/7EwkbOzsyrk
 1wlPpqEgT5h96v9G/cCcl13SzqXmQrUVeeW4rp9tsDoZdNulztjSZbPYQ
 k3Bd/lGaR8WGQfhBdd3I/ZqUk3G1a8LXcYMj1gg2NWbg8cTWFAC6CrYKD
 o9mnJ/LL/Ng7/S5dFDRNZ+pAP3rzOs/KuV9Op7qcbwy6pIwqLsgV6wLKz g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="264236394"
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="264236394"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 10:26:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,250,1650956400"; d="scan'208";a="920260727"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 06 Jul 2022 10:26:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 10:26:28 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 10:26:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Jul 2022 10:26:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Jul 2022 10:26:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nQldtoPQ2EPEpT3BR+QSRH9yWhHmddoUHMy5gV3X78RUg0YNLawrHz1rM5wl1fxwHETlemcpFo07H0m/Odm0AsNfCZcCXg99ARQeto1wdv1tZ1BpYT9gSxzm3mn9hLv3/dFa78SrV1tDDHiOa1qjzM3xYl9GO5KAOMCwvBXuXXKDhc1SLw4KN79aEVi7W437T0j3jqZpk8nxl1j5V+HI+HBVA/IJq6z18kt3VsWpsMXHAgjnUwAoL/u4SIQzPiceEW/1rx1vJSBKIkSBbs1Jln/wPZdyUdqSL0kt2cKFhWXGTwrs3HAIzmsQj+VWJ/NFqpSDUzb31ixcWpWS5HCZBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iyRhltpcRl3ZEtVhutB4+hzd67P0VcPEE89lhviVtwk=;
 b=WXKhXO2aYyJjbho0+A6r+41GypKoE8fI/YXVKmdbSlE8KVgywRg9xjawN7MqD1PxL5OUx73W8LL1d/+oErhEpAkW189QQ+yKSq/cVDG1DrXlrg5rLKjcgWHspxljnavulfrhVCQpQVDbgGcEXXSicVfiVa3pAUzGU33mZD84KFsADesMU7RQgy94apKg/L3O+uX3PIg35Auiph6a1uEauvn7L0agLbvDMPZsuC2UUBa9ZLt6zftLnjm9az3GeTlGiLHv2kWKCGF8jEhQx3jRcuPWooR+5bbZEvNIXcPQzoQS1eA+b8qRKV+LYS0Mu5QKUYhfm6BMZqWKMrjSbht3/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17)
 by BN9PR11MB5292.namprd11.prod.outlook.com (2603:10b6:408:119::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Wed, 6 Jul
 2022 17:26:26 +0000
Received: from DM6PR11MB4514.namprd11.prod.outlook.com
 ([fe80::427:3e51:a2cb:fb00]) by DM6PR11MB4514.namprd11.prod.outlook.com
 ([fe80::427:3e51:a2cb:fb00%6]) with mapi id 15.20.5417.016; Wed, 6 Jul 2022
 17:26:26 +0000
Message-ID: <a1560fac-71ac-7d97-1c1f-afe330b27a11@intel.com>
Date: Wed, 6 Jul 2022 10:26:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Zhang, Carl"
 <carl.zhang@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
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
 <4a7f6abe-e479-a3d9-8615-e52a2863733c@intel.com>
 <c565a81a-d86c-a5fd-c97e-27bd1459da6e@intel.com>
 <05a33039-ed2e-3364-6036-197955abacfc@linux.intel.com>
 <913becb5-7ffe-ca7b-7acd-71c2ee3ade23@intel.com>
 <PH0PR11MB557934FC60F660B9ABB96CA987AC9@PH0PR11MB5579.namprd11.prod.outlook.com>
 <a120b625-4042-f616-b314-aed2013f324b@intel.com>
From: "Ye, Tony" <tony.ye@intel.com>
In-Reply-To: <a120b625-4042-f616-b314-aed2013f324b@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0292.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::27) To DM6PR11MB4514.namprd11.prod.outlook.com
 (2603:10b6:5:2a3::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 62692c01-537b-432d-194b-08da5f74a7ae
X-MS-TrafficTypeDiagnostic: BN9PR11MB5292:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3n2bzuk46vlu6+HRQD2CTXnpqWY1X7B5n62eYrNs1j45P3mbHzG65CpnKOreJQRfi15es1csQdNbNrkaSdnFgpTP8xdS9fJaniiRaLy1hFJ1lpmceMVx6UneG9iRIfV2G2lf9LXKjBczFtgW+23alc5WQpVRMrm8jdlh2nsqfItXAQqyWgF6kuxDpGckjxZVXJfzIrXxMCI5YakGwL/F6EqiKgetP7rCzXNugcyybysz5/lndHaxS0pW0yKQLkOIWaztZGvo+RkmKvHplfpXlmivMEGOrRIKRSkfY3dvMtdkZGy/E5R2v+78xAXWjkrwMsLX9juKlKIaO5tVvVribiPXmtTCYBPObpgLHl9/Pgsx/uXgqZcKC2saKmWlbdMePxYGDRb14szteXoVZ6pvAN7UyjtzA9wAjyb1zfrU3LjI/cuM29pE17MYSCfe8AKUItSYAnEaQTEkP7b/qrJDlh80rZsij+Wsi7nX2poVptWzVryoD1REbBdtpp9mZGZQM9zisOF855Hiw1apqGFcF8wqSzVpm+C9weN+vdnaPOjRyht9sS6ymD14Sybk+AVRDDKL2QoHrv1v85ijE+1dY6m7g9kSSpbcLFOqHJ5OQziyxzsJv60H0BdC4b8Cy4Yi0Ji3iHlDm56D5tyrV6fX5+wBzZhO6eD1p15v4SoP1FeuvTOWgw3tmVWAEfEEhtFm2Um7ff94IjXByKW/BOUeCgFMbjFvtCeP8gx7iyafq8vzYvQXRBow31tbq51OcgCiLpCXKP1EY5N5UudRI3BBG3QDqgW/AYmref2wgF/hrhH8O7mRfxmo3SpwAb9p80D2wdmLyNTnp+KbcMkvTDW4ud4Dzj/DJ3pE8aMCD6qAcIuMBCdVfHTAoR13Zw9/9q4t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4514.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(136003)(376002)(366004)(39860400002)(83380400001)(26005)(8676002)(4326008)(186003)(66946007)(66556008)(66476007)(478600001)(86362001)(31696002)(6486002)(30864003)(5660300002)(8936002)(82960400001)(38100700002)(41300700001)(2906002)(2616005)(6666004)(53546011)(54906003)(6506007)(110136005)(316002)(6512007)(31686004)(36756003)(60764002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M240elArN1ZKNTZRT05ZczIzSlRJRFhBMndVcEkrRHA5b1h5ZEpOTGhrZ2lY?=
 =?utf-8?B?TkFvVFNKbGZYMGs5cjZ6dU5zUURPWFpwMmF4UXFMTE9rdElPalNmUDFxbmlL?=
 =?utf-8?B?cFRUMGIvTS8rc2l4NXRGdGlUdHZUa013M3NLakhVZWRvb1hjQVdxRzFoUHVK?=
 =?utf-8?B?ekZrVmlBYXNsaGtGb0ZaZVFOV2xiUU81UEdMUFYvV0VKUk5qR2N4eWlJSnRv?=
 =?utf-8?B?M09QYm80SXhFeU9wUVVSWGlhM21UL1IwRXl0SDRHaGJzRVJvRDl1OVFSQ2xR?=
 =?utf-8?B?YWRkQWlNRk5VZUxmK0dmS0s2ZDQ5S0Q4dVlOL0R0dTFNc0t2Qk1OeUFYOUwv?=
 =?utf-8?B?cHhLOFdCejlJSUFWMGtLWkxjQmlUL3FjcHVqa3BOdVFUdzVSU0M4UCt2dkUr?=
 =?utf-8?B?c0tmYXprazRvYkk5eEp4clpYR1ZlSm1VcFIrMStCQ3lOOE9TL3hoaVMyQndJ?=
 =?utf-8?B?ZG1YTW1TcWVhSWhab0YrZmpka1hoVzVqTkF6WllzSnFpRndIVFZwN1l6SkVS?=
 =?utf-8?B?TmxjUTVZTGNpb3Z2eUlZVGFQR0hXZlVXcUVGS1JpTkpJMTJNR1c1cm16dE8v?=
 =?utf-8?B?UG56OVA3MXlPYjJOMHFsYlBqcDZwK1lQdURTSTMreTRiWis4WllZelNIRXds?=
 =?utf-8?B?Y0xqV216cGovMmdYZ0wzZWpYbWs3T1J2eFpxTzlkeWRrb0N5SS80ZlRLV1RC?=
 =?utf-8?B?UVFhaU1zbVY3WW9vOVR2US82SmRaT1lzUWl0QXE0S09HSXdUK3RLUmMwNGxQ?=
 =?utf-8?B?WUJnNzZVeUh6VmVWVDIwenpwMjAvSGVmeDk4R2gzb3AxYkl5cDdoS1lLOEho?=
 =?utf-8?B?T3c2WXlXdGw1MFd6MjRXbElFbmR3cHlFM0xIYkRVMmw0VEFwaXpqVnVvclZo?=
 =?utf-8?B?RlpZNFZlVE5TVUh5N0Z5dyt6enZKS3VhaWRNV1VVekdYY2lsYUVwVHZNbVc2?=
 =?utf-8?B?YjVlVDdOYjdhcTBtaTVES3RwRlNyRTgyVVJhdTh1cmkwYVdTeGNCQ2pqSmxi?=
 =?utf-8?B?L2o1L1cxN3QwckRyRzJSTTY4U2hacmhKbnZjRXRLTHFTaW5XUUlibTUwajRk?=
 =?utf-8?B?SS92eHVtZ3RHekRCbEpVU2hQWTlRM3JKbjQrT2N0WnFvQ3VhajA0d3hCMVZp?=
 =?utf-8?B?cEFqK25JM24zWGUrS0Q5RnpwaFNNT1RWNXoyZFg0M1pzUDJXWnhjRGJmSGVl?=
 =?utf-8?B?ZWJpa2xjbmVZQVdqRkZKVDlCR3F4czV1OUJQekx5U1VJVXI0cHppSGYzaFF6?=
 =?utf-8?B?MFVtREpzOHd4alAwODBQNk1RTmlmS1ZpSlAwN0sxb2hwK2pMbW9XOFhDVFRZ?=
 =?utf-8?B?SmpWWWNqMEVkVTFxUXB4YXlYVC9xNitDcGhRR2NyRHRjNTJhSkFiS2F5VHM0?=
 =?utf-8?B?WjIyUUNQdzlRMUtyMndOQm5HRWdWWlhkTG9RejRQTy9XWlp5N2NPcFpaYmxG?=
 =?utf-8?B?VEJVNFZsWnQ0TCt4UHN6akltU2RQYVVkQTNMelo2bFA1aXo5T1dsVytmY2wv?=
 =?utf-8?B?MlpIUUhhdGpzc0kxOHJzTkFmSzVSbjE1YzhqRzJjcjhYek5Oc1B2cFU3ampF?=
 =?utf-8?B?RGo4a1VEaFZIbTNlU0FhQ0grUE1BVzVrVDk1OVpXMDlvQ1MwK0pCMHB1QVpU?=
 =?utf-8?B?TjBTb01CbEI0dXZQVXJHMnp4TnhrcW9TemlOaVN2cmZsYmdERGJQbzJVaHhP?=
 =?utf-8?B?VU8zRnc4L1djeks4UzVmczlwMk9HclhSb1Z0M0hzTkpvSnJRV1h2UkJDRVRT?=
 =?utf-8?B?Sm0xaVhEQXkySXFRV0FEZkhtOXA2Y0F6a1hEMXFDWHlDcmE3anpVY0xGSS9R?=
 =?utf-8?B?YWpnSUU1c2VYR3RLVzY3SUFhMjVMc1QvOGRsQlRuUVZ1Mk1oNVVlZ2JsZzVT?=
 =?utf-8?B?T0RpVGU1dFQwZjRRbVpEdS95bmZEbGdBd3U3MGNJcUNHVncrNGdHV3l2aUxm?=
 =?utf-8?B?bVdUTGlleUhnamYzdERKQjdRd2ppR3c0TXByeWFlVkVMakZuYk9nck8rRmUr?=
 =?utf-8?B?RGtwbkF6WWVtVXk4ZlRMdGJnTUpkamFLaVFubitzQTBrcnZlRGxHRXVMbkx5?=
 =?utf-8?B?VlRLdHVORnQxNlJxUDdEM3JqeU5pSlN4cW04eE11aXo2MnBtaTd2T1U2cUdp?=
 =?utf-8?Q?1Hc2mLqeev7zF1nBiO18jNFgx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62692c01-537b-432d-194b-08da5f74a7ae
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4514.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2022 17:26:26.2427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z8b1A5bFmqP0BVXX3NY8Y2zjwndplm/qb03L56m9Mli0GmpyJEALNw8leVKCXG/87qZSR0ndKtU65o7O4w2yYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5292
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
Cc: "Usyskin, Alexander" <alexander.usyskin@intel.com>, "Teres Alexis, Alan
 Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/5/2022 4:30 PM, Ceraolo Spurio, Daniele wrote:
>
>
> On 6/15/2022 7:28 PM, Zhang, Carl wrote:
>>> On From: Ye, Tony <tony.ye@intel.com>
>>> Sent: Thursday, June 16, 2022 12:15 AM
>>>
>>>
>>> On 6/15/2022 3:13 AM, Tvrtko Ursulin wrote:
>>>> On 15/06/2022 00:15, Ye, Tony wrote:
>>>>> On 6/14/2022 8:30 AM, Ceraolo Spurio, Daniele wrote:
>>>>>> On 6/14/2022 12:44 AM, Tvrtko Ursulin wrote:
>>>>>>> On 13/06/2022 19:13, Ceraolo Spurio, Daniele wrote:
>>>>>>>> On 6/13/2022 10:39 AM, Tvrtko Ursulin wrote:
>>>>>>>>> On 13/06/2022 18:06, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>> On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>>>>>>>>>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>>>>>>>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>>>>>>>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP
>>>>>>>>>>>>>>>> command. The load operation itself is relatively simple
>>>>>>>>>>>>>>>> (just send a message to the GSC with the physical address
>>>>>>>>>>>>>>>> of the HuC in LMEM), but there are timing changes that
>>>>>>>>>>>>>>>> requires special attention. In particular, to send a PXP
>>>>>>>>>>>>>>>> command we need to first export the GSC driver and then
>>>>>>>>>>>>>>>> wait for the mei-gsc and mei-pxp modules to start, which
>>>>>>>>>>>>>>>> means that HuC load will complete after i915 load is
>>>>>>>>>>>>>>>> complete. This means that there is a small window of time
>>>>>>>>>>>>>>>> after i915 is registered and before HuC is loaded during
>>>>>>>>>>>>>>>> which userspace could submit and/or checking the HuC load
>>>>>>>>>>>>>>>> status, although this is quite unlikely to happen (HuC is
>>>>>>>>>>>>>>>> usually loaded before kernel init/resume completes).
>>>>>>>>>>>>>>>> We've consulted with the media team in regards to how to
>>>>>>>>>>>>>>>> handle this and they've asked us to do the following:
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load
>>>>>>>>>>>>>>>> is still in progress. The media driver uses the IOCTL as a
>>>>>>>>>>>>>>>> way to check if HuC is enabled and then includes a
>>>>>>>>>>>>>>>> secondary check in the batches to get the actual status,
>>>>>>>>>>>>>>>> so doing it this way allows userspace to keep working
>>>>>>>>>>>>>>>> without changes.
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>> 2) Stall all userspace VCS submission until HuC is loaded.
>>>>>>>>>>>>>>>> Stalls are
>>>>>>>>>>>>>>>> expected to be very rare (if any), due to the fact that
>>>>>>>>>>>>>>>> HuC is usually loaded before kernel init/resume is
>>>>>>>>>>>>>>>> completed.
>>>>>>>>>>>>>>> Motivation to add these complications into i915 are not
>>>>>>>>>>>>>>> clear to me here. I mean there is no HuC on DG2 _yet_ is
>>>>>>>>>>>>>>> the premise of the series, right? So no backwards
>>>>>>>>>>>>>>> compatibility concerns. In this case why jump through the
>>>>>>>>>>>>>>> hoops and not let userspace handle all of this by just
>>>>>>>>>>>>>>> leaving the getparam return the true status?
>>>>>>>>>>>>>> The main areas impacted by the fact that we can't guarantee
>>>>>>>>>>>>>> that HuC load is complete when i915 starts accepting
>>>>>>>>>>>>>> submissions are boot and suspend/resume, with the latter
>>>>>>>>>>>>>> being the main problem; GT reset is not a concern because
>>>>>>>>>>>>>> HuC now survives it. A suspend/resume can be transparent to
>>>>>>>>>>>>>> userspace and therefore the HuC status can temporarily flip
>>>>>>>>>>>>>> from loaded to not without userspace knowledge, especially
>>>>>>>>>>>>>> if we start going into deeper suspend states and start
>>>>>>>>>>>>>> causing HuC resets when we go into runtime suspend. Note
>>>>>>>>>>>>>> that this is different from what happens during GT reset for
>>>>>>>>>>>>>> older platforms, because in that scenario we guarantee that
>>>>>>>>>>>>>> HuC reload is complete before we restart the submission
>>>>>>>>>>>>>> back-end, so userspace doesn't notice that the HuC status
>>>>>>>>>>>>>> change. We had an internal discussion about this problem
>>>>>>>>>>>>>> with both media and i915 archs and the conclusion was that
>>>>>>>>>>>>>> the best option is for i915 to stall media submission while
>>>>>>>>>>>>>> HuC (re-)load is in progress.
>>>>>>>>>>>>> Resume is potentialy a good reason - I did not pick up on
>>>>>>>>>>>>> that from the cover letter. I read the statement about the
>>>>>>>>>>>>> unlikely and small window where HuC is not loaded during
>>>>>>>>>>>>> kernel init/resume and I guess did not pick up on the resume
>>>>>>>>>>>>> part.
>>>>>>>>>>>>>
>>>>>>>>>>>>> Waiting for GSC to load HuC from i915 resume is not an 
>>>>>>>>>>>>> option?
>>>>>>>>>>>> GSC is an aux device exported by i915, so AFAIU GSC resume
>>>>>>>>>>>> can't start until i915 resume completes.
>>>>>>>>>>> I'll dig into this in the next few days since I want to
>>>>>>>>>>> understand how exactly it works. Or someone can help explain.
>>>>>>>>>>>
>>>>>>>>>>> If in the end conclusion will be that i915 resume indeed cannot
>>>>>>>>>>> wait for GSC, then I think auto-blocking of queued up contexts
>>>>>>>>>>> on media engines indeed sounds unavoidable. Otherwise, as you
>>>>>>>>>>> explained, user experience post resume wouldn't be good.
>>>>>>>>>> Even if we could implement a wait, I'm not sure we should. GSC
>>>>>>>>>> resume and HuC reload takes ~300ms in most cases, I don't think
>>>>>>>>>> we want to block within the i915 resume path for that long.
>>>>>>>>> Yeah maybe not. But entertaining the idea that it is technically
>>>>>>>>> possible to block - we could perhaps add uapi for userspace to
>>>>>>>>> mark contexts which want HuC access. Then track if there are any
>>>>>>>>> such contexts with outstanding submissions and only wait in
>>>>>>>>> resume if there are. If that would end up significantly less code
>>>>>>>>> on the i915 side to maintain is an open.
>>>>>>>>>
>>>>>>>>> What would be the end result from users point of view in case
>>>>>>>>> where it suspended during video playback? The proposed solution
>>>>>>>>> from this series sees the video stuck after resume. Maybe
>>>>>>>>> compositor blocks as well since I am not sure how well they
>>>>>>>>> handle one window not providing new data. Probably depends on
>>> the
>>>>>>>>> compositor.
>>>>>>>>>
>>>>>>>>> And then with a simpler solution definitely the whole resume
>>>>>>>>> would be delayed by 300ms.
>>>>>>>>>
>>>>>>>>> With my ChromeOS hat the stalled media engines does sound like a
>>>>>>>>> better solution. But with the maintainer hat I'd like all options
>>>>>>>>> evaluated since there is attractiveness if a good enough solution
>>>>>>>>> can be achieved with significantly less kernel code.
>>>>>>>>>
>>>>>>>>> You say 300ms is typical time for HuC load. How long it is on
>>>>>>>>> other platforms? If much faster then why is it so slow here?
>>>>>>>> The GSC itself has to come out of suspend before it can perform
>>>>>>>> the load, which takes a few tens of ms I believe. AFAIU the GSC is
>>>>>>>> also slower in processing the HuC load and auth compared to the
>>>>>>>> legacy path. The GSC FW team gave a 250ms limit for the time the
>>>>>>>> GSC FW needs from start of the resume flow to HuC load complete,
>>>>>>>> so I bumped that to ~300ms to account for all other SW
>>>>>>>> interactions, plus a bit of buffer. Note that a bit of the SW
>>>>>>>> overhead is caused by the fact that we have 2 mei modules in play
>>>>>>>> here: mei-gsc, which manages the GSC device itself (including
>>>>>>>> resume), and mei-pxp, which owns the pxp messaging, including HuC
>>>>>>>> load.
>>>>>>> And how long on other platforms (not DG2) do you know? Presumably
>>>>>>> there the wait is on the i915 resume path?
>>>>>> I don't have "official" expected load times at hand, but looking at
>>>>>> the BAT boot logs for this series for DG1 I see it takes ~10 ms to
>>>>>> load both GuC and HuC:
>>>>>>
>>>>>> <7>[    8.157838] i915 0000:03:00.0: [drm:intel_huc_init [i915]] GSC
>>>>>> loads huc=no <6>[    8.158632] i915 0000:03:00.0: [drm] GuC firmware
>>>>>> i915/dg1_guc_70.1.1.bin version 70.1 <6>[ 8.158634] i915
>>>>>> 0000:03:00.0: [drm] HuC firmware i915/dg1_huc_7.9.3.bin version 7.9
>>>>>> <7>[    8.164255] i915 0000:03:00.0: [drm:guc_enable_communication
>>>>>> [i915]] GuC communication enabled <6>[ 8.166111] i915
>>>>>> 0000:03:00.0: [drm] HuC authenticated
>>>>>>
>>>>>> Note that we increase the GT frequency all the way to the max before
>>>>>> starting the FW load, which speeds things up.
>>>>>>
>>>>>>>>>>> However, do we really need to lie in the getparam? How about
>>>>>>>>>>> extend or add a new one to separate the loading vs loaded
>>>>>>>>>>> states? Since userspace does not support DG2 HuC yet this
>>>>>>>>>>> should be doable.
>>>>>>>>>> I don't really have a preference here. The media team asked us
>>>>>>>>>> to do it this way because they wouldn't have a use for the
>>>>>>>>>> different "in progress" and "done" states. If they're ok with
>>>>>>>>>> having separate flags that's fine by me.
>>>>>>>>>> Tony, any feedback here?
>>>>>>>>> We don't even have any docs in i915_drm.h in terms of what it
>>> means:
>>>>>>>>> #define I915_PARAM_HUC_STATUS         42
>>>>>>>>>
>>>>>>>>> Seems to be a boolean. Status false vs true? Could you add some
>>>>>>>>> docs?
>>>>>>>> There is documentation above intel_huc_check_status(), which is
>>>>>>>> also updated in this series. I can move that to i915_drm.h.
>>>>>>> That would be great, thanks.
>>>>>>>
>>>>>>> And with so rich return codes already documented and exposed via
>>>>>>> uapi - would we really need to add anything new for DG2 apart for
>>>>>>> userspace to know that if zero is returned (not a negative error
>>>>>>> value) it should retry? I mean is there another negative error
>>>>>>> missing which would prevent zero transitioning to one?
>>>>>> I think if the auth fails we currently return 0, because the uc
>>>>>> state in that case would be "TRANSFERRED", i.e. DMA complete but not
>>>>>> fully enabled. I don't have anything against changing the FW state
>>>>>> to "ERROR" in this scenario and leave the 0 to mean "not done yet",
>>>>>> but I'd prefer the media team to comment on their needs for this
>>>>>> IOCTL before committing to anything.
>>>>>
>>>>> Currently media doesn't differentiate "delayed loading is in
>>>>> progress" with "HuC is authenticated and running". If the HuC
>>>>> authentication eventually fails, the user needs to check the debugfs
>>>>> to know the reason. IMHO, it's not a big problem as this is what we
>>>>> do even when the IOCTL returns non-zero values. + Carl to comment.
>>>> (Side note - debugfs can be assumed to not exist so it is not
>>>> interesting to users.)
>>>>
>>>> There isn't currently a "delayed loading is in progress" state, that's
>>>> the discussion in this thread, if and how to add it.
>>>>
>>>> Getparam it currently documents these states:
>>>>
>>>>   -ENODEV if HuC is not present on this platform,
>>>>   -EOPNOTSUPP if HuC firmware is disabled,
>>>>   -ENOPKG if HuC firmware was not installed,
>>>>   -ENOEXEC if HuC firmware is invalid or mismatched,
>>>>   0 if HuC firmware is not running,
>>>>   1 if HuC firmware is authenticated and running.
>>>>
>>>> This patch proposed to change this to:
>>>>
>>>>   1 if HuC firmware is authenticated and running or if delayed load is
>>>> in progress,
>>>>   0 if HuC firmware is not running and delayed load is not in progress
>>>>
>>>> Alternative idea is for DG2 (well in general) to add some more fine
>>>> grained states, so that i915 does not have to use 1 for both running
>>>> and loading. This may be adding a new error code for auth fails as
>>>> Daniele mentioned. Then UMD can know that if 0 is returned and
>>>> platform is DG2 it needs to query it again since it will transition to
>>>> either 1 or error eventually. This would mean the non error states
>>>> would be:
>>>>
>>>>   0 not running (aka loading)
>>>>   1 running (and authenticated)
>>>>
>>>> @Daniele - one more thing - can you make sure in the series (if you
>>>> haven't already) that if HuC status was in any error before suspend
>>>> reload is not re-tried on resume? My thinking is that the error is
>>>> likely to persist and we don't want to impose long delay on every
>>>> resume afterwards. Makes sense to you?
>>>>
>>>> @Tony - one more question for the UMD. Or two.
>>>>
>>>> How prevalent is usage of HuC on DG2 depending on what codecs need it?
>>>> Do you know in advance, before creating a GEM context, that HuC
>>>> commands will be sent to the engine or this changes at runtime?
>>> HuC is needed for all codecs while HW bit rate control (CBR, VBR) is 
>>> in use.
>>> It's also used by content protection. And UMD doesn't know if it 
>>> will be used
>>> later at context creation time.
>>>
>> from UMD perspective, We don’t care much on the normal initialization 
>> process
>> because, I could not image that a system is boot up, and user select 
>> a crypted content
>> to playback, and huc is still not ready.
>> of course, We are  also ok to query the huc status twice, and wait if 
>> the status is "0 not running"
>> to avoid potential issue.
>>
>> I suppose the main possible issue will happen in the 
>> hibernation/awake process, it is transparent to UMD.
>> UMD will not call ioctrl  to query huc status in this process, and 
>> will continue to send command buffer to KMD.
>
> I think there is an agreement that it is ok to return 0 to mark the 
> load still in progress and 1 for load & auth complete. However, double 
> checking the code it turns out that we currently return 0 on load 
> failure, even if that's not particularly clear from the comment. I can 
> easily change that to be an error code, but not sure if that's 
> considered an API breakage considering it's not a well documented 
> behavior. I believe that on pre-DG2 userspace considers 1 as ok and 
> everything else as failure, so changing the ioctl to return an error 
> code on failure and 0 for load pending (with the latter being a 
> DG2-esclusive code for now) should be safe, but I'd like confirmation 
> that I'm not breaking API before sending the relevant code.

The UMD code is like this:

     struct drm_i915_getparam gp;
     int32_t value;
     gp.param = I915_PARAM_HUC_STATUS;
     gp.value = &value;
     ret = ioctl(fd, DRM_IOCTL_I915_GETPARAM, &gp);
     if (ret != 0)
         hasHuC = 0
     else
         if (value == 0)
             hasHuC = 0;
         else
             hasHuC = 1;

Currently the behavior of i915 is:

     if there is an error, ioctl returns -1, and set errno as 
ENODEV/EOPNOTSUPP/ENOPKG/ENOEXEC;

     otherwise, set *(gp.value) as 0 if HuC is not running, or 1 if HuC 
is authenticated.

Hi Daniele, which value are you going to change - the "ret" or the "value"?


Thanks,

Tony

>
> Thanks,
> Daniele
>
>>
>>> Thanks,
>>>
>>> Tony
>>>
>>>> Regards,
>>>>
>>>> Tvrtko
>
