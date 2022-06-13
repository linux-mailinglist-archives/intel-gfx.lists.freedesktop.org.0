Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAEE5485FD
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 17:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3248210E4F4;
	Mon, 13 Jun 2022 15:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E9110E6BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655134793; x=1686670793;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vp26iwHGXwuRhdBaJ7N6uNi04SIa9GEgUR0eC2wFppg=;
 b=hn5WudeM2C9CwOP2r/rmW9dKLsLtmj0VW7klxVNCjDfXCTW2ezm+dk5G
 FfIpfpzwbCcHH8RsRagq/GjQCG9jPm4JEaD0GLdx+yUeDyYq4tqKIdKOR
 Q564uNJpFlTyoEX3a9sYChf2AsuUvR2qj/ZTpg4O4m/xFk+/ruaPjVEhO
 H/hy4JGq5ElDfmwalRB+funjewj7FXTNdldUEjm/ooABQ1msSGEZm8oQ2
 ucujASkZnoFf3WgBRetxHTKvOP5str4/srm9WMt02L+L7RHu1HYl0Aw65
 9kdBm0YcdZkHeYXY/3mbh7VgSThqBgNc8H0iU93BTYgYlbpYseBgwiHuL w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="342292678"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="342292678"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 08:39:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="617548045"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 13 Jun 2022 08:39:53 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 08:39:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 08:39:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 08:39:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 08:39:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDAbLTZlwNx6Pb4zhzasJUpyc/pyGnFqJKk1kEbRXP84BQZGouanaR3/zOn4g7WM6vsk4HY9/joD7uvTFJ5ZrVYFbVqeKwVtvtJE3Z6ECZOHuPePHHGxRwmQ1ST6xrECGDcoRDtIcnepp4dKryxkPUwr5wZQ4MVIu05blaTaYaU8mXxmCU9jOdNwF+jY0w9jVJiwRsEua1KMv5Sl9ghQ/UiKivuOv5dNp7pAQuR4guyY/vadVgk2Qr3WerBKq85305QNc3CjeHLEKAKNRDaDuZrKU97rrJYTMSl8PySXrLBgjVeOKB/xzEPuD+4gutg2Opv+a03/FN0lLMgLscU/jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X1FBrK+OCajQAIZCPljFkmOZaHgQ84UEn6JLrkHEU0U=;
 b=k/D3KMe9kxhwtI9z6ZEAAxg3RO7EfYx/ZdVyN7c/jv4UJH02x4K6ZkuOf1a9e8pLxMYDUfN2PN8i4tBlzuVlxGC/VN9uY3tEDLcvyOYDE3j4n32TNw5Fg+hY+dJXKg664HrjZXuJqNwnAElzJVH53ACTwuCB0FxfqCILv0Q41ePpnTYZgDRQDfgi/6OHDTkuj+WMwsRme8+5LCxE3bxLSbObitKvmlVEC2NzKiKvlflnfAUR/QcvOGBYXGJD3Ru2BtIhIqRC9lzJrdZtn/FW+bwmU9ZL7ACZJ+b5FWRhUau0VNiq5t1Y/1lEbhzOU+jFxdPu+ULT4Ztof8+stuebZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BL0PR11MB3252.namprd11.prod.outlook.com (2603:10b6:208:6e::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.15; Mon, 13 Jun 2022 15:39:24 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf%2]) with mapi id 15.20.5332.020; Mon, 13 Jun 2022
 15:39:24 +0000
Message-ID: <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
Date: Mon, 13 Jun 2022 08:39:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0212.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::7) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2afec3c9-87d8-4af2-f9af-08da4d52e459
X-MS-TrafficTypeDiagnostic: BL0PR11MB3252:EE_
X-Microsoft-Antispam-PRVS: <BL0PR11MB3252EDA8C97C1231B162C1ABF4AB9@BL0PR11MB3252.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HrDjx7DCTvjNTaeiz4ENsHXxc6aDQKu81ub6BExjZ7MdbEFg6ojlXNh6VIzotY8SVSQGXauTdk0amKY1enjTmS5KeapjJZvTj2psXL65sV/Bow+alF9eBtpkHFQhjDzHpzLxyNpU3fZs1caYUCDPywWi/BYKsomUhXEp4r1QrwmWYvIJXyChYfBWWe/WGj6KCUnQiF5PVXN6MQyCK5CcBEBLQKS19MvGEA8/VK6IJQJJi1ihhNt3qRahjRz5tKP5xmmFNh3Nn9d6T1xugBy1y5rf/IYjPWhBQ1y4OcseSGGKibreCN2p6XBX1OtU6lbpkzffTfrxamnARAzLGdhZMc0RmAVIYz4ioQrU96JFN1m2NDli4P9W/zP2RUB+1GqtJxYj3Mgk/AaV0HBE0CEkEFl17jRA+kQ6ENqjh3yD9fZlkCDDuGZoz+Hw5dTLHsmJbVg+Q2vnwmR2aEzj27m3TovCj3oG8qfhBoB/wYRbhcZ/DisxrvEvCRtO4PpfipSxk3EMWgx32C3or4KnzDC+aUBjI3zfSnz0QfTrV+QoqAe9ijVC0cCjq9qGcIli3VMe4PUltmW9RzaK53WCq8/SiZg3S2dqezR5y8eDlLpEJxgGObMSmGbBnGYhSLucDpPXManyrw3rJot3+NppAZF45rVYOL5PfmF0F879VrGfoX+tecXixsigtUCdQ6NMX3yC4PDTAKIxsnXpJqCE23+jO/WucAhYYcBM9LlBOhDpVMBWQwiucB9o38010Uhim3TAF+HPGPqAlxYFgCK3s/GMNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(5660300002)(508600001)(6512007)(26005)(8936002)(36756003)(8676002)(966005)(66556008)(83380400001)(66476007)(186003)(6486002)(4326008)(2616005)(66946007)(6506007)(31686004)(6666004)(86362001)(2906002)(31696002)(316002)(53546011)(82960400001)(38100700002)(54906003)(60764002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUIzbWtyQXdEVSs4VnBYSE16VENXTk9mM2RLbCtVR05TeE5SQmJrMWQybldI?=
 =?utf-8?B?NXhOc3o1MGNKWUJOekZUQWIwUWxGTTliaEx2bUJwbUdRRkV6bm1pWU9VRC91?=
 =?utf-8?B?MWxOZFFCWHR2TWh5YjhZU28rYVJqVGxmQVFteHlOMCtxdVhBUndHb01RNms1?=
 =?utf-8?B?L2dVMHUwWXRHUE5SZG4rNzdic09OQUF5OVYrTXZiZTR2MjRubWFBejFPWjFN?=
 =?utf-8?B?NkN5K1l4TzBNNEtFUnR6Y3Y1ZC9xK0JSSmxsRFpjN2J5SmhQT1c5SDFQSEli?=
 =?utf-8?B?TTduc01nOWlaRG9uZ3A0cDRGb0pBdm1PaVZ5SlZBS054ZlQ5Y3ZBUHF6QlR6?=
 =?utf-8?B?TWVCTm9SNW9OU0ZScGJ6Z1cyR1o0TE1tOWFjSDFEY0NvM2ZkblVqNGhQVDdI?=
 =?utf-8?B?OHdGK1M4Zmh0NjVnd1BCV21DaXc1YTdMelRJMUxxTk1xNmxIdW80QnNyTkY0?=
 =?utf-8?B?RlJWdnhPSU5KUVNxbjNFeWNTTWNoSjhZUDVYZ1pSakNISXBjYUl4RytGbHlv?=
 =?utf-8?B?bkVQdVc0S2lwZU45eXVGd2NaYVpOYnl6bDZCSjRNU25xTTlLdE5kREw2MWRI?=
 =?utf-8?B?YkFmOGw3SG1iSWxzanZlS2pPODJNWFBzYnhKdE8wK096eFMvQkNaQ2svMjZz?=
 =?utf-8?B?TnB3c2xUeTBnM0tWWEFuc2FqL2VMV0p3N0NMK05Dc0pRaUpyM2RwVFNraE9W?=
 =?utf-8?B?bXhRNkhEbmo0ZEhmNHg3OFlWZ1RuR3Npb1RVSFZQUjFrNFI4ZHZyNmtuWmE4?=
 =?utf-8?B?dlBzSG9OS3VyQnlRV3JxamF0bnNCMHdRTzVGTXdQekpnMkk0bXpSMy85T2NP?=
 =?utf-8?B?Q0VyNER6Sk00U1MwWVJ2TWFUT3N6UmlLZHZvU2NkVFlOUjhSSmJwdUl0bkdj?=
 =?utf-8?B?L1ZzQXZJcmFVdDdOK2FzcisyNjRzMURWNWF1cWpHMDZNdW9OWGVoMUpzSGVi?=
 =?utf-8?B?eVJSbUgyamN3cTE0cTBSR3dkbUJ6dnAzcHFCVGxBNkxaRkJ5aHlEd3cwbmNv?=
 =?utf-8?B?MTZLYU1LMzJjOGF0eTVMbVRPTWEyVDlFRGIxcW5wTmt2NEgwQ1NBRldNLzlo?=
 =?utf-8?B?dURITFdxRHBxSWFEQkFXVHpVajVyVEFqSVRaVWFweUhGY2hTYVRYaVl4aDRk?=
 =?utf-8?B?d3V2UG9aNzd1VWxDamxTeXozZi9rRmQ4Q0FLc3d0REtnaG5PSTV3b0llTUNh?=
 =?utf-8?B?U1VVQjdKY21mNm5iQkF4SGRGTGFxSkUxYlVhQ09MenRzSUF0THUxbUVCOExh?=
 =?utf-8?B?QnpqbkFlRzRrM005UGN2SjZpYTF6c0VSS09HeVdvQkUxUll2UjJYQWJwbWps?=
 =?utf-8?B?dFpWaDNjV0VLbjEyMnhtZWlyMFd2TDg4RjIvWndDSmRzYUFsTVZYNElYdUlY?=
 =?utf-8?B?M2pmOWpheHFzMXVWalpYZGlXaWxDZ2NIRWxHbG5xSTZnR0wwSE5QZEhIUHJO?=
 =?utf-8?B?ZlZIYWFjZ0xkRFo0dXY1WHBMWkU0T0p0eFlRMHB1ME8zRUt5Yy9mcjhKM29t?=
 =?utf-8?B?SHU5ZlVvM0NXQnYvckIxaXJ4cWVSTXZxS0NQcmY4d0lmM1pnNVZUWTYzMnJ6?=
 =?utf-8?B?bDJoVXM1bkNZdENrcTdudHRtSzNMRll4aC9OOVlLUW1SRW5FL2RmWk1taDd6?=
 =?utf-8?B?QmFWeHZYY0h6UEVvRERhTGIybnpDSzJCTm1GWTJVTDJqdjVKamsvZkRtcFA3?=
 =?utf-8?B?RGk1WFYvMm9oWDMxTGhrUElHYS9ucFpuYlQzem5FK1dTRmh4VGM4Ym9DenJa?=
 =?utf-8?B?VGt4NmllTjdkZ3JKTEc5VHJYOUQzcFFuV0ltZ1U1VkhiTU1uUzRxT2QxbEd5?=
 =?utf-8?B?WlBpeldlYkdFRDJtZUtyS0ZBVkJiblZMT1o2cUFxSitoQ1gybFVZOXNJZjNo?=
 =?utf-8?B?SFdQTFFvcFZXOFVFNUIxNTlRWm12amh1V2NNeHZ5N3VHQ21OcEM0THFOYjVw?=
 =?utf-8?B?RVNadURRanprc3lHcHd5eU5mSCtLUlN4Z1hxUXM4bzNRekdxUFBRbTdoSTBm?=
 =?utf-8?B?bFVoOEVPNW03UUlxaVBDYjBvTkVvNmFBNnNBRFNUZXMvbGlONHJwb0ZDc3lZ?=
 =?utf-8?B?NThTcFBCNHE0Wjh4TWpCUHY5UmRyaXh1ODltblhJZ1VKS2tOSFIzUkNwWE5h?=
 =?utf-8?B?eXpEYlB0ZkhOMXNHeUNTeHhkU21OQTNkVER3RkZpZWZhZ2d3b0E0M2M4UkUz?=
 =?utf-8?B?bWJ3eDQ3dXlwVUU2UkEwZm90UWRoSXpzU2ovRWo3MGxhQ0tBSUZTWnNUajlK?=
 =?utf-8?B?OUwxa20vUU5RQjdCMDF6bHhkbEZYRE1OSDZaYkNGNE00WTJsdEwyVUNuUmNS?=
 =?utf-8?B?a1pvNW5nb0U1MWQ0SG1sN0xsOFAva1NPa1B2cktFeDZIV0dBODI4bFpFVTh4?=
 =?utf-8?Q?T3wN1tpO4rXH56ZGBazcFdDu+0eb8za2GT6Iq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2afec3c9-87d8-4af2-f9af-08da4d52e459
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 15:39:24.1511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /QU9g9CMBFHVUiB4IyjyoSr12Gy5gaUdcLyAbRFfQAa9AvFrzuOGT8sc8rgJfnX3ePr9op+wnrd+YatDgrUGkwNe6yI9Wac1WSXaF0c3Z1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3252
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



On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>
> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>> On DG2, HuC loading is performed by the GSC, via a PXP command. The load
>> operation itself is relatively simple (just send a message to the GSC
>> with the physical address of the HuC in LMEM), but there are timing
>> changes that requires special attention. In particular, to send a PXP
>> command we need to first export the GSC driver and then wait for the
>> mei-gsc and mei-pxp modules to start, which means that HuC load will
>> complete after i915 load is complete. This means that there is a small
>> window of time after i915 is registered and before HuC is loaded
>> during which userspace could submit and/or checking the HuC load status,
>> although this is quite unlikely to happen (HuC is usually loaded before
>> kernel init/resume completes).
>> We've consulted with the media team in regards to how to handle this and
>> they've asked us to do the following:
>>
>> 1) Report HuC as loaded in the getparam IOCTL even if load is still in
>> progress. The media driver uses the IOCTL as a way to check if HuC is
>> enabled and then includes a secondary check in the batches to get the
>> actual status, so doing it this way allows userspace to keep working
>> without changes.
>>
>> 2) Stall all userspace VCS submission until HuC is loaded. Stalls are
>> expected to be very rare (if any), due to the fact that HuC is usually
>> loaded before kernel init/resume is completed.
>
> Motivation to add these complications into i915 are not clear to me 
> here. I mean there is no HuC on DG2 _yet_ is the premise of the 
> series, right? So no backwards compatibility concerns. In this case 
> why jump through the hoops and not let userspace handle all of this by 
> just leaving the getparam return the true status?

The main areas impacted by the fact that we can't guarantee that HuC 
load is complete when i915 starts accepting submissions are boot and 
suspend/resume, with the latter being the main problem; GT reset is not 
a concern because HuC now survives it. A suspend/resume can be 
transparent to userspace and therefore the HuC status can temporarily 
flip from loaded to not without userspace knowledge, especially if we 
start going into deeper suspend states and start causing HuC resets when 
we go into runtime suspend. Note that this is different from what 
happens during GT reset for older platforms, because in that scenario we 
guarantee that HuC reload is complete before we restart the submission 
back-end, so userspace doesn't notice that the HuC status change. We had 
an internal discussion about this problem with both media and i915 archs 
and the conclusion was that the best option is for i915 to stall media 
submission while HuC (re-)load is in progress.

Implementation-wise, this turned out a bit more complicated than 
expected due to the required tracking of the mei-gsc status to enforce 
the timeouts. When I discussed this with the mei team they suggested 
using the notifier for that, which is what I went with. Another option I 
considered was to start a timer when the first media submission comes in 
while HuC load is in progress and stall for the maximum expected HuC 
load time; this would be more error prone, hence why I preferred the 
notifier option, but would be simpler. I'm open to other options here if 
you have any better ideas.

Thanks,
Daniele

>
> Regards,
>
> Tvrtko
>
>> Timeouts are in place to ensure all submissions are unlocked in case
>> something goes wrong. Since we need to monitor the status of the mei
>> driver to know what's happening and when to time out, a notifier has
>> been added so we get a callback when the status of the mei driver
>> changes.
>>
>> Note that this series depends on the GSC support for DG2 [1], which has
>> been included squashed in a single patch.
>>
>> [1]: https://patchwork.freedesktop.org/series/102339/
>>
>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> Cc: Tony Ye <tony.ye@intel.com>
>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>>
>> Daniele Ceraolo Spurio (8):
>>    HAX: mei: GSC support for XeHP SDV and DG2 platform
>>    drm/i915/pxp: load the pxp module when we have a gsc-loaded huc
>>    drm/i915/dg2: setup HuC loading via GSC
>>    drm/i915/huc: track delayed HuC load with a fence
>>    drm/i915/huc: stall media submission until HuC is loaded
>>    drm/i915/huc: report HuC as loaded even if load still in progress
>>    drm/i915/huc: define gsc-compatible HuC fw for DG2
>>    HAX: drm/i915: force INTEL_MEI_GSC and INTEL_MEI_PXP on for CI
>>
>> Tomas Winkler (4):
>>    mei: add support to GSC extended header
>>    mei: bus: enable sending gsc commands
>>    mei: pxp: support matching with a gfx discrete card
>>    drm/i915/pxp: add huc authentication and loading command
>>
>> Vitaly Lubart (3):
>>    mei: bus: extend bus API to support command streamer API
>>    mei: pxp: add command streamer API to the PXP driver
>>    drm/i915/pxp: implement function for sending tee stream command
>>
>>   drivers/gpu/drm/i915/Kconfig.debug            |   2 +
>>   drivers/gpu/drm/i915/Makefile                 |  11 +-
>>   drivers/gpu/drm/i915/gt/intel_gsc.c           | 141 +++++++++-
>>   drivers/gpu/drm/i915/gt/intel_gsc.h           |   3 +
>>   drivers/gpu/drm/i915/gt/uc/intel_huc.c        | 244 ++++++++++++++++--
>>   drivers/gpu/drm/i915/gt/uc/intel_huc.h        |  27 ++
>>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  34 +++
>>   drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h     |   1 +
>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  64 +++--
>>   drivers/gpu/drm/i915/i915_request.c           |  24 ++
>>   drivers/gpu/drm/i915/pxp/intel_pxp.c          |  32 ++-
>>   drivers/gpu/drm/i915/pxp/intel_pxp.h          |  32 ---
>>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      |  69 +++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.h      |  15 ++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_irq.h      |   8 +
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |   8 +-
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.h  |  11 +-
>>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 138 +++++++++-
>>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |   5 +
>>   .../drm/i915/pxp/intel_pxp_tee_interface.h    |  21 ++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |   6 +
>>   drivers/misc/mei/bus-fixup.c                  | 105 +++++---
>>   drivers/misc/mei/bus.c                        | 145 ++++++++++-
>>   drivers/misc/mei/client.c                     |  69 +++--
>>   drivers/misc/mei/debugfs.c                    |  17 ++
>>   drivers/misc/mei/gsc-me.c                     |  77 +++++-
>>   drivers/misc/mei/hbm.c                        |  25 +-
>>   drivers/misc/mei/hw-me-regs.h                 |   7 +
>>   drivers/misc/mei/hw-me.c                      | 123 +++++++--
>>   drivers/misc/mei/hw-me.h                      |  14 +-
>>   drivers/misc/mei/hw-txe.c                     |   2 +-
>>   drivers/misc/mei/hw.h                         |  62 +++++
>>   drivers/misc/mei/init.c                       |  21 +-
>>   drivers/misc/mei/interrupt.c                  |  47 +++-
>>   drivers/misc/mei/main.c                       |   2 +-
>>   drivers/misc/mei/mei_dev.h                    |  33 +++
>>   drivers/misc/mei/mkhi.h                       |  57 ++++
>>   drivers/misc/mei/pci-me.c                     |   2 +-
>>   drivers/misc/mei/pxp/mei_pxp.c                |  40 ++-
>>   include/drm/i915_pxp_tee_interface.h          |   5 +
>>   include/linux/mei_aux.h                       |   2 +
>>   include/linux/mei_cl_bus.h                    |   6 +
>>   42 files changed, 1537 insertions(+), 220 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_huc.h
>>   create mode 100644 drivers/misc/mei/mkhi.h
>>

