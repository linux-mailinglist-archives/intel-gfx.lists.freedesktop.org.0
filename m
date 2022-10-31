Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FF76138D1
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 15:18:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12ECA10E187;
	Mon, 31 Oct 2022 14:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EC7D10E187
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 14:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667225930; x=1698761930;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H5SIwLxxldbnoF+SOYRvZ2qH9Bce9ifMeFrzv0ug4c4=;
 b=V/5aXvqxe8AImff8msPn+z47iOsDHfVU8zOMN82iZtlsZZyo2hB1BCh1
 rKTGKajTnAjxl07bwPcVubhYMMJ/3R1EFoT2HYKYUTEaA1bf49XIArENe
 DEiCJMnSev0jFlHE6h9HSXDqp5h9HZjUYouXtgzwF648wO2HTFrfMYDE6
 qqfdfhQNMuS+sBttpkJ83xLGHyi2vdOd76hj50zxgadNCJva+7mf+iLXC
 qP+kALtQz1fbaZB4QDmsWqnIaLbC/ccSFH/OV8oMJKi2CqtFP0LZ4ifJI
 kPW2wGw0a0g+JxyBfQn4EBa257cXzOg/yGtfqxLQRoJGJBZsozX62TQeG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="292199779"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="292199779"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 07:18:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="628252182"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="628252182"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 31 Oct 2022 07:18:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 07:18:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 07:18:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 07:18:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 07:18:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AkNbM1BneU5xmTbdEsU6xltQ3BMR8A6w48nxChfLgCr5Ee1/0E7eReyI/6s3+QekFnzmRHfX3OamJFB6a6fuP9MCRwoaIkAaLE+f7qnD5CZhB0OC1WF4ITIMoqf5JDvK4r29v65MRYg77JF8N2n8aywjiBGADv9xqYTK72SSz02NMOItFSz89gU40/McGU89RW4p9l4lN0iMWxlp9rXvEBHq1AlvEbHxONs2Ti1l0jQ70EL6VwL/HEZ8Y1js9hqVUasHSKs12PNLe0W6hJXl17ArcTm8AKtzmHf2haqf2mdR/HqdS1wjsylm4Bu/lu4X76fX6/UZDcceHJOBpqT+tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yoJpuaeXOsZLR5Y9jmttrvTLZ5GseW63QEKPgRoBPzo=;
 b=kPItq3xu7hDDcyuM5FASErQ0MT+4G0nU9jDckDKJLBHz7YgonR2kj0gvzlmTIr8MZLNg4lxlHdoiB3mHT9vpJDMH3m1ztyHt3hZSson94LxvbfI19aI5yHK2x5bKjPU/GTzKl8lfSVu2M/opzTMj9bX9BJMKG3Q8h7wijAPUkGn5AOB3CjSPjwYY2odzaA0h66wbiQjTXWLcrlsOZ3SjDMXe1YjzeOKzQ/5rgKRD2zjerTGZ/w9AZ4Vn5jbT5o4GSIKR7gyXKQkiRANlt7DcsULvW275h4xnbnXaezWIJXUFJUOIiVPrBx9j5sPlLvbvCD65M6TunGimJPwZgL0mrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 MN2PR11MB4677.namprd11.prod.outlook.com (2603:10b6:208:24e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Mon, 31 Oct
 2022 14:18:47 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::5da6:7b6e:4ff5:f7]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::5da6:7b6e:4ff5:f7%6]) with mapi id 15.20.5769.019; Mon, 31 Oct 2022
 14:18:47 +0000
Message-ID: <94f4299c-d598-57b7-ec48-a1f6c6d27588@intel.com>
Date: Mon, 31 Oct 2022 16:18:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM6PR05CA0016.eurprd05.prod.outlook.com
 (2603:10a6:20b:2e::29) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1562:EE_|MN2PR11MB4677:EE_
X-MS-Office365-Filtering-Correlation-Id: c4de797d-794b-4d31-e486-08dabb4ad304
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pf88F0JiCKaBbeJwvICelrDDCw1VJNIS+Vi0Pmog5DPclFE1iMD/aSj4JzLeyDrZERkeZCwz5xfob2XgZRgO41V9FnLnGdtInRjh9YtO+uB1I81fToWWWcxO3tKdW313JqW3+cUyVf/20xnHvHM7WEMpga9H+eRLu/tlB22VWur0+qxChsGKUPobeTrZlwErqP2J3Jb3Rq//At9RVlNtsqrh7KVV+mDCSFWwjAiP27oGjUxzAPlq5IYEc7lxpCiyExQ9K3DQ17OgnFV9aro3CZiBcYZSk0jXuHBbl45tuTR4x5KF2fWRcjFH/9743VxaIhRp+whBTFU61AwMMTn8p3LGG/wyu+VkdAK7lE+/VyZN2w+rE0+MCrVh+nr0UitJ/shWGXdN72GtYmPbIJWpasY5Ho9KnOSvVHaj5kd1lFQZOhg35w8rpiyPxWkDjERBMxLxYhFVZvT5FlJvpUDTTRyTES/CaKIIgEdvdSa2SwpVEjozyC/ZLc9dhJ96vHHop0TjXgXHMQz3Uw9Jrw/9LlRCT5CprQuvAYQuUnfo11P+J6IS6W/lXFSQCL0lgiIt8zs+fAfDv6sY7HiurVRj4o63HlBBzRT5r/g9PBb4ph17fcJOTLLNjuyQ/odrZ3d31gJJ/cX5PQbu+R9mspISdT1mqBvCxGf2cGKMSF7iyFevnNPTfDEw7OytzxBI0OcoSVNrqy+JJFOMWNr7f+pTYI8z4T2nzORsK6ruiqItA8U6+gN5qsGOJPg8XW2MUxSfh4YIFmmOV7b8DDYcxmrP6fHAe1iUoa9CPKuQgFB8Pak=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(39860400002)(346002)(396003)(451199015)(31686004)(83380400001)(4744005)(6666004)(6486002)(2906002)(36756003)(86362001)(31696002)(38100700002)(82960400001)(53546011)(6512007)(26005)(2616005)(186003)(316002)(66946007)(66556008)(8936002)(8676002)(478600001)(6506007)(5660300002)(41300700001)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVBKTTVsaEpMSXVDSDZnWkpycjBXRHoxbU00RTR0WThBczVoZy9MWWhwL3ps?=
 =?utf-8?B?bnJxNHpvM0xtbjJBK0o4YzVrYWN5UUFVMGxtRThZSWRMZkZuNExSS2pheGlE?=
 =?utf-8?B?dXVTNmZNK2c3bFRaQnhJTkxIMjB4L0dFak1uajQycWJOSjgxeHpXU0RjWmJz?=
 =?utf-8?B?dGxNSm56bXp0ODBYSWJ6bkxjbW5MTGQ0VGNzaCtZZHRaQlVTbzZiNjlQUEd0?=
 =?utf-8?B?dUxZTTh0WGlxVFVnU2dSTlZ6cjV4NUx6NTJOU2dTZFhLSEhheUFURWpSenJV?=
 =?utf-8?B?Z0lWeGZ6b0t1VzNhM1VweGoyYXdvb2FGVG5INHM1bHVXKzBrWG5MRFZnbTRr?=
 =?utf-8?B?ZVA4ODI0ay9veVJvOWhBaFgxTDZWU1dTUDlOTEtOUzQ5aEkyQTV0SVR2RVpN?=
 =?utf-8?B?YW9ROElzcnJoOG01c0Vkblk5OXhLWFpEb3ZmOWR4ZHNXYVl6SHd6QW1MWmtV?=
 =?utf-8?B?VnpwVDYxbm1jMXIwcVJRNzlvNkIwTEorU01KcFRNZHdxN0xRRE03WGZiOFBm?=
 =?utf-8?B?UFBmd0FSRExxcm94d1BtYytPckQ0akhObjhWQjFTdklRemx4TjNZMFBadkN1?=
 =?utf-8?B?RDAvRXBBcDQ1V0NYOVVDd1V5Ukwyd2FoS3g2N0s4OFVwbUtTSlovOS9PeWNa?=
 =?utf-8?B?dE81WE9xS1V5MlpoeDNvNDhpbTVQVUUrQkxDKy9mUmljNC9XVjA2N3JEV05x?=
 =?utf-8?B?Z3V3USs4aUlMV2lCVnAzelhvQlZyV2pXNkVKVStoZVlLUWgzVUd3dm50YzFH?=
 =?utf-8?B?cy82RTY2WTJDNktZOEFmQ01ybTVoeUswTFY4Z256UmR2bW9pczhrS2dHcWF5?=
 =?utf-8?B?L2ZVZUJHTnFsZVZjMGFVdUt4dFh3OURrcDkybW9RT0l6T0ZNVFRTVW5DUmNl?=
 =?utf-8?B?aXRLdHlWalNrSGxHSzg1a3YvMnNYNG1aamFiQ0ZlalZmNDI3djRxMzJSYmxn?=
 =?utf-8?B?ZmRKTGZYaEJQZWVlYy80OXAzZzZzVmhtc05yc1Z2MmFhQkRxS1JqVFFIanRZ?=
 =?utf-8?B?VDJjV2MwS2ZFU2dPR0pzQTZGaXpZeXlQTWhDeVUzQlNBVEsvSUJOY2F3WnMy?=
 =?utf-8?B?aXRpZk12UVFtUGhqeEFOMWdmcUJZY0pFYTUyM01ZNzJQOTh1c1poaktOeEt3?=
 =?utf-8?B?QTNlMjE2b01KVUI3Nld0UjJpeTZaTm9kTDQyeUFXelJYcTI4V3BQUDB0anB6?=
 =?utf-8?B?alBIMkhXLzBwenNuc0F5OVB0M2x4ZGhNYjA1aEc0NE1mUXZ2NFdieGE1akZt?=
 =?utf-8?B?L0FYVFJXdTVkSVZMaytNNHpMQWtRVmxZeUdUMmlsTFZQa1pGc2FXdmI3TUpJ?=
 =?utf-8?B?QVYxL1Via1RQTVVTb2luVEd4WlI0N1NweFhYUGJaVUNiN3MvL1ZpSVFHSnBj?=
 =?utf-8?B?bC80bS9aMWlVVjgvRjFUSUJyZ0tFeGw2SzBYYlJpVFpXc3doVDZBUlE2WWlO?=
 =?utf-8?B?UzY5eDY2RExFM0hubTVKNVNTVFZqUUFReDIxSUlJTVArSHQ5ZUVFRjlTMWsz?=
 =?utf-8?B?UnNyZjRZdUdvSk00ZFY2QUFNU0lvUnN0TnBZZ3BlaGVFZTBhSkJuQWZpaU9j?=
 =?utf-8?B?bk1WLzZtaDNPbWdGS2tDcFBRZHY5UnNKT2pET0Q4b01TM3c0VXpuSVcrMDZD?=
 =?utf-8?B?ZTE3WGk1djVCemZwSU9teFNrYTBGcnVtUTVWa0wvd3hDdmZwNGpOVGkwVVJR?=
 =?utf-8?B?VTh1cTVBYXVVNGFzNGZ3cjRiN0NmYnVyVGlramx5Rk1Sc0tlbmVvQ3ArdXBp?=
 =?utf-8?B?TVI4WkpoQjV4VFNnN1B4Rm4zMEcvN2hITHJqbHlBSndPdlE0elMwYUdlQW53?=
 =?utf-8?B?WkhPZUR6cDF0eE1EZXg3blpaZTBSSzVRRUFNZlZCVmhWRlovMU9GV3BhQkk4?=
 =?utf-8?B?NWp0MlZ4dVJJd2pML3QrbktveTBURmxwc1FxS3lpUjlKaVk5MTR1NURjM0hS?=
 =?utf-8?B?VHpMM0JhZUhuSTU0U3kvdlF4RHFReVhFUzRDN3NvUXJreDUyZTRXL21IN2RC?=
 =?utf-8?B?aytaN1R3bFY2OG43a3ZWVjFDcFRReDFpQlZibUhhUUc0dDVtYmRhemljYXZ4?=
 =?utf-8?B?N1A5M2R2WG5zN28rRmE5aUxnYzhIWmFoSnVhUlFtL0M2RmVHbkFuMUJWalY2?=
 =?utf-8?B?clRvODdLVHNsaWJCZnMydlI2cEJPOVBDUkxGYnp2aFlCMVoyUUppRUQrUEFR?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4de797d-794b-4d31-e486-08dabb4ad304
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 14:18:47.1133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3IDeNLHJnN2lTwXFkcjae5u4P125uHy1SqDVG1tMMNhhIX8cRF1u0qh/e3oIamnDwNJ7p/4gufLU1m2vfsruJDysi2lVuAPJQrYdkUiqMcE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4677
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915: Fix up and test
 RING_TIMESTAMP on gen4-6
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

On 31/10/2022 15:56, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Correct the ring timestamp frequency for gen4/5, and run the
> relevant selftests for gen4-6.
>
> I've posted at least most of this before, but stuff changed
> in the meantinme so it needed a rebase.
>
> Ville Syrjälä (6):
>    drm/i915: Fix cs timestamp frequency for ctg/elk/ilk
>    drm/i915: Stop claiming cs timestamp frquency on gen2/3
>    drm/i915: Fix cs timestamp frequency for cl/bw
>    drm/i915/selftests: Run MI_BB perf selftests on SNB
>    drm/i915/selftests: Test RING_TIMESTAMP on gen4/5
>    drm/i915/selftests: Run the perf MI_BB tests on gen4/5
>
>   .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 38 ++++++++++++++++---
>   drivers/gpu/drm/i915/gt/selftest_engine_cs.c  | 22 +++++++++--
>   drivers/gpu/drm/i915/gt/selftest_gt_pm.c      | 36 ++++++++----------
>   3 files changed, 67 insertions(+), 29 deletions(-)
>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

