Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECBD71F181
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 20:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1FF910E0C1;
	Thu,  1 Jun 2023 18:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C1610E0C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 18:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685643432; x=1717179432;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Vzkzyo1viWvA2tMHlf8lEN9Y8fdbmiXOMqR0QBleDlE=;
 b=b9rE2pnPr6brEH1jOoOvg0tEHJBX/vNoL5ZJvr8keqfGLWjIAJhHcEvf
 Hnd/3duCZt3EkPzbtYlQvoUHWT+lMqy+ar+LJNq8//Nm6uds+UH34U4Bh
 kozea1UXLTFBGuliwF8ZJWHOhQODLOS0FQc2IaM03sfNiMPMtYgarPf7Z
 7AVxFL/7Sdb5rstqqplJ/cFzdVOpRpOq+rwpEUKbeR5LESi5nzAj7dGSN
 Kegem5Mz09UVOuIRxd+kMFpVvbfjQdb/B+/v+iJhkrulnYk7eM5gVJ37k
 YCBFtm0GUXVqjcXX5lJTbm3kOLMIl3ohU+Vkno57+45ebWhPsa1hhlE1L w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="335263779"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="335263779"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 11:17:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="777327319"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="777327319"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jun 2023 11:17:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 11:17:11 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 11:17:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 11:17:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 11:17:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NALmi57oq1AX5XpSceWb5mlKOvsQ8boueCKcX52ap/Z+5dT7S2k+m49gm2q8nTS5Y/KY39Q8UKS4rHUdJYXunMFQso9Z+yuF9b5z1HhABk4rBKzoxUDw7HHr4CEXAO36ZPN0Rvj2yWJvCfCOrqaNYzW9zsYokcxy6hGlvXIRJe/L2C6ASBhHD9wZRdZSYZiPjN4+cC4W/S6GnI17+PgwZKIpy6mAzBHp+x8nHQW5RHjD//r5WOQ8Tr263XH9fSagf8b8Z560xcfggVOFb0JFSFHCwXzgqikbUH6kmCoH9Dln5zlqTJsPYmG8HXqOyCvprQ4zIvy0sjVdB7E8jPzDGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NwG1hnwbRRgmi3V/8tJs0F7HVpLuIWvJI4I8gmhgttc=;
 b=SMvgKV0kBZuVAmxNYtq99rdaxUS0j1YbuoEGGIMzj/DT7ByDFWrfwxO9pvGD0PylZ6nJBs7/O38GbWn0wG0k7l5D8/mwYBUi9DUfuHyE2PjTgx38KxXrVZAH8WTbmktG1AhuHT04JwWmDRwTcqYGVdG5JfXh3TRVZDNehRD0CTjGaTpKYsZunsA9YPV0UBYTMZ476mh9YfbLX6ZFC4gojne5XMgcIl//rmMGXXU3Dm+k9k7tnG+DsMwCnEaK+OLEH1idu/httIUZE5J4kcvuG8NAidv0OgL6h7j37TXaQTJL7Q1zDNy+8+Foqd939PGlc/HKIU+FpwQq34970xkDBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 MN0PR11MB5961.namprd11.prod.outlook.com (2603:10b6:208:370::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.24; Thu, 1 Jun 2023 18:17:08 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281%7]) with mapi id 15.20.6433.024; Thu, 1 Jun 2023
 18:17:08 +0000
Date: Thu, 1 Jun 2023 11:16:58 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZHjgmjCJz00J5Bhm@orsosgc001.jf.intel.com>
References: <20230531235634.1309525-1-umesh.nerlige.ramappa@intel.com>
 <20230531235634.1309525-4-umesh.nerlige.ramappa@intel.com>
 <87y1l3vn01.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y1l3vn01.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: MW4P220CA0010.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::15) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|MN0PR11MB5961:EE_
X-MS-Office365-Filtering-Correlation-Id: 69267e09-a0af-4788-48af-08db62cc691a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WbqlOPT3VRraquLV/QqiLiRxq9kTPsAn+WB66+MY+k5O9jAidonFhdw0F5ewMnm6Quj6OlcNl3MPVhhW/NtaHqH5inp60G8EgfC47jS0e/SDqfmvVSCQ5yj1yttHGUUgORDGgQX3S6LfEcxkB4PmhTLarib6y7imDPq/b9LSebrgzsHfS/0L09BZF3iQlkp2xGVUUPBFhLmJQYsk//4sbpgHIgVPXzMWnFpUkr0Cvjg2DEwYO70LmVz91MhIDUE/BWZkHZH/E8aQt26b2tRbYgHwYsItrhZkqVXg7k6yXrm1YWYiiS9Ojp0fTZ3/TSd8dnGC8w9GFI8owkVyll0P4I0hef1aIKkvmHRz3eJcJzmuH6W52N+jmmFvVaOEVnJuIyYo1a7FChOfS5RQxhogCV0Bnk6KSxSyunrLNH/Ttb3AbyyySV9gvdeFoVJBb1+X3neOUvi+ooc2njq8DgGpD3Bz8kD56gGzWhiy7n2lSkXFZyA0uIR+6BnLKrNbOdfA9+vVkJY0eKShXw4PtSSy0Qa06KPE6ijtfoDTLUXvRTydDPaigFJiczTgMvgBZQOZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(39860400002)(346002)(136003)(396003)(451199021)(6506007)(38100700002)(82960400001)(2906002)(66946007)(478600001)(66476007)(66556008)(4326008)(6636002)(6512007)(26005)(316002)(6666004)(186003)(6486002)(83380400001)(41300700001)(5660300002)(6862004)(8676002)(8936002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUhlc1R2SGkySmdYMzc0cmV2OEtXMndoWHhEcHhxdjNoNXArakNMY3U5cXlH?=
 =?utf-8?B?ZllaQitzcm1scVcxM1V2a1gwSW9QV0VlL2hKRk8wWTdiMXBxd3p1ajgyK0ZK?=
 =?utf-8?B?dHdpbnVDRzdBOWptK3UzM3ZJUmdZbFltVk5JVldQbkd0NHVQUUR2WWVFeUNz?=
 =?utf-8?B?VjJoY0lJOXNqVWJ6cjZOb3ovWnRHbVNzMXAwNk1BMDAwaVU3eHJUV3FvOVZS?=
 =?utf-8?B?TTZnbzNhSTRmcVhhb0tKSHlDWG42MUc2Y3kzTkpVVmZ2ckFKQkF3RVJMUUxG?=
 =?utf-8?B?K1dBT2Q5bEZydmx6cnBnZFlKMnU5QU1WUlc2QVkvUlN5YkNXeDEzaUZIZERN?=
 =?utf-8?B?YzArM081TFhpTm1tSGJrR3NBT29yZy9RbUlKMmtHdUcweTNpQm56YThXeXJD?=
 =?utf-8?B?OEhnSlRvNU8vL1J1U1VGMmxwVWhEVm1pSStnSU5kcmw2VFlsemZaelJxeDA3?=
 =?utf-8?B?QzU2Q0NNTnBjYlJ1QlE4aUtqSzZGMTJGVWJLTGgrNHIrdjJUR2VRb3NuUzRo?=
 =?utf-8?B?YXRsUjBRbmdSaVFqOVBmSU5oTW50djdlWFpaNGQ5cjhhY01iRGV5RVNJcWFB?=
 =?utf-8?B?SnNoUzBGa3FqQ0RiNWJBQXhFRkwxUUE1ZVMrNUhWNGZsL0J0d1NSQXBoeURC?=
 =?utf-8?B?V3dmenZJWHAzc3dXK0J1V1hBSU1ySW9RbmdEa05Sb3VLelFtYjYrbFZ4akxD?=
 =?utf-8?B?VTZWb29XVk41V2R1OCtoWFZFTWpHcHlaRlZ6TGIxaWtOZ3QrczNzMDBCRnVF?=
 =?utf-8?B?NlViTG0yekFvUTNWNFJqNUNnVUVDL21FU2duV09kb3paODltMFN3QTFHdGZx?=
 =?utf-8?B?Z3lobW8yWlQ1RDVOOW5xZ2VTY2dtQmU2bDVJN3E3anJLSW9Mck9FcG55UVdv?=
 =?utf-8?B?OUZJcThsRE1UdlFSbTI4RnZ2aGJzUnJ5L3FaT0dlWHFIVHpueU5iMlBGZHdU?=
 =?utf-8?B?U2dmS2Q3ZWp1QW9DRlQ4UmRFOWJXVy9BSGRKdUhZYlkxOEpRd0VNVGY2K1Vp?=
 =?utf-8?B?OHpHcDZZYlJJeWxEeDVqZUdDK1MxTG5KU3lZMlpXMlJGNUNQRDVJNXdKMjhn?=
 =?utf-8?B?ak5QZ1Y2S1UxOU43ZzZrTXhpdU4yYkJ1bW9heVlORHVDVmsyaWZvb2RFQ2g0?=
 =?utf-8?B?MjV1VDhSRUpPcFBjUTZud3hzeDdrbmdkbXlIZ3krb1dKK09SU0cxZitsNk5a?=
 =?utf-8?B?dm1EWHBJVXdiMy9aYWtYUkcrcHpDd2EzdGZkN0JMU3laekwzMXQ1LzVkeG0w?=
 =?utf-8?B?RGZ4VXY3bTJzL3ZWdG42Qjd1S2F5dGZvZ2wwYmk4SkhJTWFuUjdnNEVFbjNz?=
 =?utf-8?B?Q0g5RXdPUS9BNGIzUUd3NGpSaFNzaDFBdG5BV0Nta1NLYmYzR081M3FVZDNW?=
 =?utf-8?B?UUJGUVhxRWFhRlBnU1RxandlY1hHaUJXYmVReG42UGppUEFBSmdUUG9UdUow?=
 =?utf-8?B?L3ZQRTNXNnowNTBvck0vc0VyNkhOZHNGQm5rWVZKQy9NOHlxRWsvaVBtOTUz?=
 =?utf-8?B?V0JYU1pOb2lZbmlLMG4zc0dadGNISGhTQk1IRXRlQXBwK1pSdVYwUzZyMnk4?=
 =?utf-8?B?THFMbzRQdlA0KzcrNHNhKzBsU2FKTWlZelFvaHZnMG9MaWNGVFpDVm1UblMv?=
 =?utf-8?B?TWtOTnk3bWhIZVhqbk9GejJEeUxZeE0rUzFtSlM4a2dSSzRjNlZKTWtTRWNh?=
 =?utf-8?B?c1RlSlg2YmNZSllZWmVuNlRTWTFyYVZuNTZPV096TlZqWUErN0VsMVFURGhq?=
 =?utf-8?B?bTdnM3RudUFqVXI2UnhwTmdVZmsrVldWU1c1WDhaMEpCODBkR28vOW1WL0tR?=
 =?utf-8?B?NEp5VHpCV0RpRFZVdlhEV3FBa2F5NGxEbEVIWHU5SUQwOGxVbEp6U0JtOUFT?=
 =?utf-8?B?dC9WL1RjenpCdmtjK3o2Q3FEK2oyZisyaklLY0Y4bjlReU9XQUczMU5xeXN3?=
 =?utf-8?B?cThtQ1hjUDFOOElydW43WWxWeTJiaFpNbjJsSE5Qd2ZUMzViZmw1Z2cwM0xy?=
 =?utf-8?B?R0Jpa3pMZzVCd2ZBSlB0MWRwY05JWnFLSWtwcTluZ0tab2w1SktMZEVaM0ds?=
 =?utf-8?B?NXB3WWJ2SEpQMFpqOHEwRTh4YS8rbkNIT2VlZXJudjNYZjhGczliTzBtSVU5?=
 =?utf-8?B?RG9vK25heHYzNUR5bENNZ1R5bmtpblAydGRXTDN5T1JKcVliTlZPWitHUTl6?=
 =?utf-8?Q?B419Ir2qJx9nZL61vtaQAfo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69267e09-a0af-4788-48af-08db62cc691a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 18:17:08.1423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DMh3tBZA368eoqNb5J+QOPNd7LcrvIRn3ncjpPBnxyRIcuZr80crI4JfQ84Aa6g3u2TBN8PfaQuwKFXHvIz/AMdczLYyavQsPp/3aeQl3Ec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5961
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] i915/perf: Drop the aged_tail from
 rewind logic
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 31, 2023 at 09:13:02PM -0700, Dixit, Ashutosh wrote:
>On Wed, 31 May 2023 16:56:34 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> Instead of aged_tail use an iterator that starts from the hw_tail and
>> goes backward until the oa_buffer.tail looking for valid reports.
>
>Hmm I don't think this description is correct. All this patch is doing is
>the following:
>
>a. s/aged_tail/tail/
>b. s/tail/iter/
>
>So basically I don't think we need this patch. All we want to do here is
>change the variable name aged_tail to something else (to completely remove
>the concept of aging from the OA code) but other changes such as name
>change to iter etc. is unnecessary.
>
>So I would just keep the patch simple and change the name aged_tail to
>advertized_tail or exported_tail or read_tail, because basically
>stream->oa_buffer.tail is the tail which the writer updates (or advertizes
>or exports) for the reader.
>
>So we only should rename aged_tail here, the other changes are not needed.
>
>We could even squash this change into Patch 1 or Patch 2, since it is
>really a trivial variable rename.

The whole point was just readability. head/tail point to what the user 
consumes. hw_tail points to the actual hw register value and iter is 
just loop iterator.

Since the intent of the series is to just get rid of aging/aged logic, I 
can just s/aged_tail/read_tail/ and squash it with 1 since it belongs 
more to 1 than 2, although, I still like the my current patch (maybe 
with additional description in the commit message to clarify that the 
patch is just renames for readability).

Will post next rev with the simple rename and squash.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
>
>
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 17 ++++++++---------
>>  1 file changed, 8 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index beb1269422ca..39f5ab1911c8 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -543,7 +543,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>  {
>>	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
>>	int report_size = stream->oa_buffer.format->size;
>> -	u32 head, tail, aged_tail;
>> +	u32 head, tail, iter;
>>	unsigned long flags;
>>	bool pollin;
>>	u32 hw_tail;
>> @@ -567,15 +567,14 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>	/* Subtract partial amount off the tail */
>>	hw_tail = OA_TAKEN(hw_tail, partial_report_size);
>>
>> -
>>	/* NB: The head we observe here might effectively be a little
>>	 * out of date. If a read() is in progress, the head could be
>>	 * anywhere between this head and stream->oa_buffer.tail.
>>	 */
>>	head = stream->oa_buffer.head - gtt_offset;
>> -	aged_tail = stream->oa_buffer.tail - gtt_offset;
>> +	tail = stream->oa_buffer.tail - gtt_offset;
>>
>> -	tail = hw_tail;
>> +	iter = hw_tail;
>>
>>		/* Walk the stream backward until we find a report with report
>>		 * id and timestmap not at 0. Since the circular buffer pointers
>> @@ -588,23 +587,23 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>>	 * memory in the order they were written to.
>>	 * If not : (╯°□°）╯︵ ┻━┻
>>	 */
>> -	while (OA_TAKEN(tail, aged_tail) >= report_size) {
>> -		void *report = stream->oa_buffer.vaddr + tail;
>> +	while (OA_TAKEN(iter, tail) >= report_size) {
>> +		void *report = stream->oa_buffer.vaddr + iter;
>>
>>		if (oa_report_id(stream, report) ||
>>		    oa_timestamp(stream, report))
>>			break;
>>
>> -		tail = (tail - report_size) & (OA_BUFFER_SIZE - 1);
>> +		iter = (iter - report_size) & (OA_BUFFER_SIZE - 1);
>>	}
>>
>> -	if (OA_TAKEN(hw_tail, tail) > report_size &&
>> +	if (OA_TAKEN(hw_tail, iter) > report_size &&
>>	    __ratelimit(&stream->perf->tail_pointer_race))
>>		drm_notice(&stream->uncore->i915->drm,
>>			   "unlanded report(s) head=0x%x tail=0x%x hw_tail=0x%x\n",
>>		 head, tail, hw_tail);
>>
>> -	stream->oa_buffer.tail = gtt_offset + tail;
>> +	stream->oa_buffer.tail = gtt_offset + iter;
>>
>>	pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
>>			  stream->oa_buffer.head - gtt_offset) >= report_size;
>> --
>> 2.36.1
>>
