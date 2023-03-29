Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8836CD87A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 13:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BB7E10E16A;
	Wed, 29 Mar 2023 11:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF8B10E16A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 11:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680089469; x=1711625469;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ooF1KacDUJ1p/XkiOhxtjweet7z20HU7jJx+ZKrqqls=;
 b=iS5IMOfLJjG/zrmWGv5lOi4BviZBVq8tBa35PJhRlhCdSp2UiUmDI3Rd
 iNDoIAmW9qpolLPh4ZFVNYccBOIXuEfSAJfIGIYYEQj1pkOZyioqiaHHl
 UNbpb1b2fVHAHTCUdUk99pmEO5CqKEOsLd3JUnkx45Uft57L/B0F6UuO9
 ANbeXDQXYSbhD55IaR9ZGQwlXYSwsBLJV6N1yVEb/Zac03Pxh98Ao4kuj
 ezLMhcA2ioVP0jya8wkbbdjbYc5h1sQ4kvW3WcboShYEp0OwBIQlk/xml
 AyxRwnm6Q8KTfF8+ZXZDPm/PXS6GC8Uefe+PZuagx5YVoX/0LvXh9MZB5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="405792072"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="405792072"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 04:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="748765802"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="748765802"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 29 Mar 2023 04:31:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 04:31:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 04:31:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 04:31:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 04:31:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SWvamZGfgfFs+bWN0viA9GqIDlK83ssseiGgjtDfVPHeSZV8ab4gqmvkDSurLMGRV9uZ6Cl1Dq/XV7YCXPQbS9Bmip/nI2Osq0W72ihqNWyIF8zLS6642yQipKZ+v+Cc3vfm6EEM+2JbdGXzU/OPlSQFoqgHUoK85ZtGDOYhuWXgGUB1Ug5cXoraqqT8aAHILl2tEazZcqe7A3gHfHKn9omgv1OXL5kdBaJYi+EoEAMV+qLRAzynKOvfZpSFpVxf2oyjLyKwdBYxtGRJwNJU4jWJu+ax8SUSh1dK9URPaNhNYIeB+1FWXBPKoiP680b8u107ooi/eFgaVX9qF/qaaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UMH1ORzWjWN3Qoz+UYvy1BjNpcwd1hF61NQcb/T8MgA=;
 b=R6LPKkRR4VOZWol34kHj0S2G5S6Lq4tvvuV2Vw9ee3Rjva/34Nu971zRt/++Lwoc3Qt5zvzZfg9GTEKkJDSnkqkFkl0ntIFjSQuR71evknzDZoRXoEnViBhIoBxLS8dbryaQXrbXwG5ux9DdDRGD2JcUUooutMEW5NylYB9LguP6B6sAwiD4nzNbGWycbCKL2jiS3r68gJ4IN+Uhp+1AkaEfkI6DaQWW+Yz2jghejQiSH8Y/XNBQDR4c+FSbeA7Y+TJBcR79JAuf2QJ7vPVxZ/CVu6uze35SZqcTFGGOHs/+Dt+aJ1yV+QPsw5L8NhTZoyklK20iF/WqxODx6Te3MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8343.namprd11.prod.outlook.com (2603:10b6:610:180::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.28; Wed, 29 Mar
 2023 11:31:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9bb7:96e6:c81b:bcb2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9bb7:96e6:c81b:bcb2%3]) with mapi id 15.20.6222.035; Wed, 29 Mar 2023
 11:31:05 +0000
Message-ID: <32039884-4045-478a-e03b-09afba2b15a3@intel.com>
Date: Wed, 29 Mar 2023 17:00:55 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
 <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
 <ZCQLhkwNGRnZkD4k@intel.com> <f62f54f4-b42f-dc23-2ae9-2be450854bb1@intel.com>
 <ZCQYkQHDnPLX0Ee2@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZCQYkQHDnPLX0Ee2@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0080.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::25) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8343:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e68745a-22e5-4424-8d6d-08db30491520
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q6W1v6woGUuAYlperhflGDPHMaiVYgy1AFux9BXUroY3LFZxQTxj7SwUtV/1uKRm8Jg8+8E6D3f1NRwEcObe27bxE79/6eo8t9RwVUFZWpeqozShQJ9DNAtK3F6VSHSIpMIlJ4+B70GBaU2JOG9A1DYfByVZXdQWmPwWagAk0f3DCiz3oclFXDd7Whku9KltCbivFIur7buEReh2aAoxyYtEwN5l0CKHiv1p9ML80IEPnf2iLOlHqXhCy+YroLF3usarVMKOOOF531jjJy7oHOk3totQACHP/U5+KWXQ2cVBbXzoYA0HpW0wHi+fB3JF2yfDpGLgGEAAVnvK81Px1hbVi8Mfk/wVl8qPtsx+uJZ4zwHd6Gso66XUS/PqUwa2DLizZ/9l+nzvDPxX8SVXfpKbGRvP+vti3czrVrG41Qp5kinsErwRzWA7F9ECCWtTp66U3gcBEHO8DpP1/n7fLBd47mZZwWRfc9GNKvp5IK6m8XnpzjNRR71Rsy+VrCZWz/fYKKvd9RGYwjtlOtRA5G6b/p2Vqj7oX646xdWXGYKBSpgRvU65hTanWFGIZ8cV9xiwT1cbmXUKrwpsfrpLhFh+yOQryZDepWLdL0L/hnYDsWe5e/UlXuFvC+sr0W6JUNGKZlECd0JJZby/Rgh6Xw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199021)(316002)(31686004)(41300700001)(478600001)(66946007)(66556008)(6916009)(6486002)(4326008)(66476007)(8676002)(6512007)(55236004)(53546011)(6666004)(5660300002)(26005)(186003)(6506007)(2616005)(66574015)(2906002)(83380400001)(38100700002)(31696002)(82960400001)(86362001)(8936002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T3UrYnJoa095b2UzYkRKWnNzeldwc1pGL09kY2dHTk1NSUdWQ25jM1NsRDA1?=
 =?utf-8?B?VDVEQ1duTTJ6Z3ZFd2l5ZUFGSHdpU003dWtGaUY1MGltTExsZVp4SUtMT0Qv?=
 =?utf-8?B?YWFmSWE5Z2xDYmc4c0lSdUxVbi9DZU1HaVlJTmhxZDV2eWpSZVNLZUtlQXl6?=
 =?utf-8?B?U2xZU2lzdWVjdkNFU0ZtQVR3anNFZzk2d0l3aWh1Y3R3RDlKN1RINEdCN1pZ?=
 =?utf-8?B?R3E1blFxVHNRd3ZhTmtWYXl4YXJrM3ZTNWpxdWlIaEFGWUdTRVBLYXpGczQz?=
 =?utf-8?B?TGlrZGVJOVpRUm1hMkp5SkdrMUxiUUZwMUpIUkVMT0pmZlBTVFNBUTJHS0xz?=
 =?utf-8?B?MEFTVVMxRG5oZHErS2l0aFdFUkJ0OVlvVkpEeGFaNXRRZU9pUWtZNVJieFpz?=
 =?utf-8?B?blhNOTdoeGYzK0NSMEpjdko3NWY5TWJ1eUxpMjVCSy9GQnl3MUxTdHJCV3hS?=
 =?utf-8?B?STdDK2E4VkRZYTNYa1N4Nm80MFh3VnVjRzRiWHN5cjYyUldGL25nMVp5bGlR?=
 =?utf-8?B?Z3ZtcysyUm5qNlVmaU4vYUVLVS9OUFB3SmxrOFNLVHRnZXE3a3lCaFVIMFF2?=
 =?utf-8?B?S0VvUGZMK1I2M1d1eFJtOHZhaGtQWVJ1aWMyYXZFY3J5Q2VOOFlWbU95RTVV?=
 =?utf-8?B?NmVzeWR6UmFlRldYRE5Gc0lWcFkvYVVRdStaU2IwZm1ndE9veTNWd0E2Q0NV?=
 =?utf-8?B?cFh6NCtFQ0VhVk94eThYa0daUXF6dWRoN01ZV2tWN2pZNzE5ODBvbnNvdHBx?=
 =?utf-8?B?U0pTbU93VTBsRmNOcTQ4MVIzSzFybks3YVZCbm9Jclk1dW5ybXp6NXF3eStN?=
 =?utf-8?B?UUgzWWFCSmpjTHltbjFYaHUyMEM2cGVkd0g0cjBzUDJJZmlFR0NsZTBVZk5Y?=
 =?utf-8?B?TDNZOFFHYlI1WGFFalFjWTdJTUFIbUZ5RU9TMFU4R1ZFWFN5a0R5N1U5L0pu?=
 =?utf-8?B?VzY1QjVhaGRXTE9OcVBmM083Mjh3WnIxcVo5YUZrZzUvWUpNN0dXei9YdFhw?=
 =?utf-8?B?YS9YTnV6REV2V0x6RHA4RDdrVUxuRjFEbVlYT0ZWeldBeW40STlhbm1uWUtQ?=
 =?utf-8?B?WWF5d1JWVSs1Q2VWc2M0U2ZoOTdyY1E5eXBqYWVpY2JhODUxNGxucXh0NFM2?=
 =?utf-8?B?dTE3aEI5NWJRTFVBY3hsTU9hdkVaSzNkVStHT2NyTVRDc2RSNlRqNEpzSlh1?=
 =?utf-8?B?ZVhBK1FNL0h3S2Vjb0tGelNJRkx6dlJBaTNldTkrU3Z3TkZkK040akhVSmRp?=
 =?utf-8?B?QXg3UWRCcnBuWDFzc1NoUnV4SGZTWUtxZS9iYm1pUXplbGJOeHBnZ3JMcVBP?=
 =?utf-8?B?TENaWGNZVmFueXFxRFRmQ3dFQnpYR2VvVVdCNkg5eEJVRWZGdGZVRm9nYllr?=
 =?utf-8?B?eENGS3B6Q2tCMEtEZ0pGNEZrUDVLT1JZdlY5VUlFTW55U200anpFVXgwalZ4?=
 =?utf-8?B?NG9kSWp1S05sUlJsRFl5Zk5wUDFLV0pJeVdpeExtc1JycnRFdVVNb1RLM0h5?=
 =?utf-8?B?ZW9nVHJGS1lIeFp0K1NPd2N1cFNjV0tHck9Zb2ZSZEQ0OFNiY05sbFRqUmN5?=
 =?utf-8?B?WmN4RlFsMTdaZ083WjB1Mm1IRkM4R0ZSZ0h3Ym14OUw4VUNBbC9qbW5LMElF?=
 =?utf-8?B?UXpXZnVqbHZNaXFobE9jUEJDVkw1M2ZaYkZmNlpVdVNGZmdVZmhFV1piWmh3?=
 =?utf-8?B?SDZGTWdHdC9heXhoUDJwYTBKK2FCNE54OWZBZTBwaGVzL1JxUU9UelFsUysr?=
 =?utf-8?B?c0k0Tmk5end1WnE3a2RLeWtDQzNPZ0pjMEpHNTdwRGxadHdsU2pqS200RmN0?=
 =?utf-8?B?Q2ZrdTVncnhFejRSaHVEcUdNeS9zTVFBSld0cTR2bW40b2pPZGFEd09VUjRW?=
 =?utf-8?B?OUR5V09WTTJQT3R6b1Y1NnFOT0ZrSHlKYlFWaU1JWVJ0aUNpTWVwWERRZjM2?=
 =?utf-8?B?cjgxTGlkdkdtY1pnV3JRK01KQ3Z0RGQ3NHZobVRBYSs1OHFQWExIaitHemx5?=
 =?utf-8?B?U2FzeUFLcEVrTXlQcDhBZmE2a1Z3RVlDam1lMlU3NHpjaU8vMk53SWUvNFpZ?=
 =?utf-8?B?NnV6ekZ2NW9XcXVRZUlPWmNNbDdvK0o1dnNPNjhtTUZMcGRnbVlpc3o2NFVR?=
 =?utf-8?B?WSt5aXlONVJnWTJSdWNQL3FKaG1MRVJUVXlobFpjREZLb3plTGZLMSs3OXdv?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e68745a-22e5-4424-8d6d-08db30491520
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2023 11:31:05.0221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MRqxu6hJYaZun2JbTLZV9aeod7ZIU92wmDLlgT2TK+6iG/NTltWF4CA41EIiFG6nIHl6P7rWWLhmo6s62OnI/A+8tuNPc9PVXU94OZOxPHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8343
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


On 3/29/2023 4:23 PM, Ville Syrjälä wrote:
> On Wed, Mar 29, 2023 at 04:06:21PM +0530, Nautiyal, Ankit K wrote:
>> On 3/29/2023 3:27 PM, Ville Syrjälä wrote:
>>> On Wed, Mar 29, 2023 at 02:14:49PM +0530, Ankit Nautiyal wrote:
>>>> As per Bspec, Big Joiner BW check is:
>>>> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits /
>>>> Pixel clock
>>>>
>>>> Currently we always use max_cdclk in the check for both modevalid
>>>> and compute config steps.
>>>>
>>>> During modevalid use max_cdclk_freq for the check.
>>>> During compute config step use current cdclk for the check.
>>> Nak. cdclk is computed much later based on what is actually needed.
>>> The cdclk freq you are using here is essentially a random number.
>> Oh I didn't realise that, perhaps I was lucky when I tested this.
>>
>> So this check where CDCLK is mentioned, actually expects max_cdclk_freq?
>>
>> If it doesnt then, we might have a compressed_bpp value, that might be
>> violating the big joiner bw check.
>>
>> Should this be handled while computing cdclk?
> Yes. I suggest adding something like intel_vdsc_min_cdclk() that
> handles all of it.


I can try that out.

Will also add *Pipe BW check*: Pixel clock < PPC * CDCLK frequency * 
Number of pipes joined, which seems to be missing.

So with pipe bw_check cdclk should be >  Pixel clock / (PPC * Number of 
pipes joined)

In addition, as per bigjoiner check it should be >= compressed_bpp / 
(PPC * bigjoiner interface bits).

Regards,

Ankit

>> Regards,
>>
>> Ankit
>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
>>>>    drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
>>>>    3 files changed, 8 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 3fe651a8f5d0..d6600de1ab49 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -711,6 +711,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>>>>    u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>    				u32 link_clock, u32 lane_count,
>>>>    				u32 mode_clock, u32 mode_hdisplay,
>>>> +				unsigned int cdclk,
>>>>    				bool bigjoiner,
>>>>    				u32 pipe_bpp,
>>>>    				u32 timeslots)
>>>> @@ -757,9 +758,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>    
>>>>    	if (bigjoiner) {
>>>>    		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 12 ? 24 : 36;
>>>> -		u32 max_bpp_bigjoiner =
>>>> -			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
>>>> -			intel_dp_mode_to_fec_clock(mode_clock);
>>>> +
>>>> +		u32 max_bpp_bigjoiner = cdclk * 2 * bigjoiner_interface_bits /
>>>> +					intel_dp_mode_to_fec_clock(mode_clock);
>>>>    
>>>>    		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
>>>>    	}
>>>> @@ -1073,6 +1074,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>    							    max_lanes,
>>>>    							    target_clock,
>>>>    							    mode->hdisplay,
>>>> +							    dev_priv->display.cdclk.max_cdclk_freq,
>>>>    							    bigjoiner,
>>>>    							    pipe_bpp, 64) >> 4;
>>>>    			dsc_slice_count =
>>>> @@ -1580,6 +1582,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>>>    							    pipe_config->lane_count,
>>>>    							    adjusted_mode->crtc_clock,
>>>>    							    adjusted_mode->crtc_hdisplay,
>>>> +							    dev_priv->display.cdclk.hw.cdclk,
>>>>    							    pipe_config->bigjoiner_pipes,
>>>>    							    pipe_bpp,
>>>>    							    timeslots);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> index ef39e4f7a329..d150bfe8abf4 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> @@ -106,6 +106,7 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>>>>    u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>    				u32 link_clock, u32 lane_count,
>>>>    				u32 mode_clock, u32 mode_hdisplay,
>>>> +				unsigned int cdclk,
>>>>    				bool bigjoiner,
>>>>    				u32 pipe_bpp,
>>>>    				u32 timeslots);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> index a860cbc5dbea..266e31b78729 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>> @@ -925,6 +925,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>>>    							    max_lanes,
>>>>    							    target_clock,
>>>>    							    mode->hdisplay,
>>>> +							    dev_priv->display.cdclk.max_cdclk_freq,
>>>>    							    bigjoiner,
>>>>    							    pipe_bpp, 64) >> 4;
>>>>    			dsc_slice_count =
>>>> -- 
>>>> 2.25.1
