Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861BD51F3D7
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 07:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4259588427;
	Mon,  9 May 2022 05:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7C710FFD7
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 05:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652074100; x=1683610100;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EuSqR3RKsMXWtQB2ErNoXCp6kbKy+wQrid9RHzu/+A4=;
 b=ExIJq/doLEbXtiyPxu0F2ZrBN+9vskIyEtmSkV2K4FCgEzlo/QosonsP
 2bqxOxx4cJ0zie9wR0G2l4Df0SaNXnNl0iPHAfVKUWmNTyD27FivZHE9V
 l3CsRdSTCCchsktbqxZJe9UeJDeuKh+HTOq3GWAfCM98EHC0Y89FAAMxb
 +C4AoYqsZUYG2OcnponLurwdgzawbRmalVTdD5Pj4XUX5QQ4xLLHfHKEd
 Y43wqCEP8+X2eN+0Tb3BWptAL3/XA8XHzSk7MJILof0r0qQnFfe///xlb
 cWNSS6szZjIfACEM9/4eguq0ndG5C6ZjVum7ttC2dM4xR4RjVoqon4ZfO g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="268602026"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="268602026"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2022 22:28:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="893004783"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 08 May 2022 22:28:19 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 8 May 2022 22:28:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 8 May 2022 22:28:19 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 8 May 2022 22:28:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfnHegv0DF5JJYg4o+EroSd1TAd0C8m65YKbE5mnc8lhJfmbrjPA7fI77blXEvQPcT0SCaVZvWWJGghZiLlCiuT7CjdtEFXDmrux44/xtfMc5MVmIyPecYtYviGWrJxmbAVKb9TO2wR1HcNbG9ZYM1KVLA0XpU2I3c27JcYPVMe9l2XBLk5aLLZNxEgxqt45KQkkjv4hMbz+4CMg8P0DqX/bJ2maB2hFo0h8NnnamWAf9gPBuSVqSEAyO8BWHGNiPGVtGQWWeJNB0EJnZo+JuYf3gg7CZnGZbmpE8oaoNWEV5TIDTBKg8CLOYeYb4GBWkWWtd5Hbkkcle+kswv9umA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=41SCONbaEAzq3nDOfuipCrPwqGLqUFQXgBqA7knFyY8=;
 b=K//Vz5BMJv1eC9KN8TSJoUA10E6xGPZwOEK/fMQOJNLo/SK7Vs1OrJOpO4UVJjHcYc4V/eO55p0xmp+F8CIAlbPj390dqZMQxQUPOHGkN6C3tHPckXDsrl3ZvHDKZc5PqxwPocTPJTrP4GT6nVs9ZmRaJ6Rq5P8/42pXDih8Dxu6WLBeWSKdnDUH9QEVRmvvc+90RYZqRA6RqTSFK+uVUANhzToYD7HZhAALwehWkD8djetBu7unJ/AdacXoYG0kvLtqKnHTVZohhaDi8ag8+MC9bpOyp6js3Aw1Jsr3FYt7UnAeX4f4+4ekxwkyWt9TW2KcKWhANXGtoXERAxAgZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5231.namprd11.prod.outlook.com (2603:10b6:5:38a::19)
 by MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.21; Mon, 9 May
 2022 05:28:12 +0000
Received: from DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::5027:4735:1a5b:a083]) by DM4PR11MB5231.namprd11.prod.outlook.com
 ([fe80::5027:4735:1a5b:a083%4]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 05:28:12 +0000
Message-ID: <605ea1ed-f4ae-edac-0566-a57ca6d59841@intel.com>
Date: Mon, 9 May 2022 10:58:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
From: Siva Mullati <siva.mullati@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220316125627.1738613-1-siva.mullati@intel.com>
 <20220316125627.1738613-2-siva.mullati@intel.com>
 <Yl1FnlacgZnjs0Ic@bvivekan-mobl.gar.corp.intel.com>
 <ce2f7bd9-b064-41b7-12be-be214b976cd6@intel.com>
In-Reply-To: <ce2f7bd9-b064-41b7-12be-be214b976cd6@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::15) To DM4PR11MB5231.namprd11.prod.outlook.com
 (2603:10b6:5:38a::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 322c3bdc-af3c-49f6-b924-08da317cb58b
X-MS-TrafficTypeDiagnostic: MW5PR11MB5931:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MW5PR11MB59315E69A23A32C506E18F2A88C69@MW5PR11MB5931.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 98GF/+ftMz01BlYf3mYIQlDgk1DBAI2LVZaBGXD0AYzhnSCnCcniObRzOQqqrDnkgzj0xpXv98FiZJFOl8QW0tEkd/05VuEDAmHvRu+iyhWXsQdR9i0jnoI9DulyQkqKHHerTVfaYllLAN9Wdz5d7CSPERFPYxcdLmBfFQ+Y08P84l1kqtiToDXj7A2acMXCFlSE34quPBVdBiMyJuir9ygkBwkefziTP0ITCKUTNos6Cj8X50w0gm0IUPqibO+/eNq0rODJ1lBtFwIsHrz78ZPLWrona3D4/n4Ygan2thiTaMzNyss13HFjodWeHgVQM4PAaaQXz9slwr7XxO7tzY/7Z/QtjQUkSh0gzWgyKKldp5jUOSeJtgRvXnedCi2ASN2a3tJIG0oTPS04dkxcuA6oXli/bJpAGTqGDlofAxDpemkWDE+7ZhgLGAF+wfznvivghGFS1IZN5QZc6fnEjU1B5oIw/Y8Y8mLThCvYzfD3GcrkkhksQ9UjwGJVYjXIhw0EDfSDBtJnSDxb36QnausCyGbfyszZkqWnNW3O9vQRGxEdq6GclJ96xpTxKHAMXdSDS7j6GWh2pdtFvwwVoExqu1RUUBB3t8SGwOe1Wutf41umBjKDXztM1i/BDow9G8FYa6J4nFP++T/yPGDZv6fAb197R5AS9asUHoi5bgVxuPqQv6FQc1RRqI+Z7Lqu6/cgTGjlYMz4yZkH5RuG1EknvVx9xUxLjDZYyEWRRZg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5231.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(508600001)(2616005)(83380400001)(31686004)(6506007)(53546011)(8936002)(6512007)(44832011)(316002)(5660300002)(107886003)(6486002)(82960400001)(6666004)(186003)(2906002)(4326008)(66946007)(66476007)(86362001)(31696002)(66556008)(38100700002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0dVd0dNNTNOM1NRbGpCS2ZYdWVlSUlaMUxORTdGZ3FYR1RjVTFMTUROUzJ5?=
 =?utf-8?B?VGRYRkNpYTk2eGtuOWVCWEhHS0xQaTZpRURkVkQ0U2RJK09qZXUwNHZudlow?=
 =?utf-8?B?WjlVYzNPNDJWTmpmaEJZVjI4eGJQakowdXk4eHA3OGw0VE1pb0RMcHUvREg2?=
 =?utf-8?B?WllRSXlSS3RUa21rZnFJZy9IMGp1ZnJMQlZPV3J2dDZwUFVyWERhaDdueWUw?=
 =?utf-8?B?bGxsZmZXVWF2bmd4RWRRbFJIMERqcmZYUXphZ1VOdWVDZDh5STlTUjdObVFl?=
 =?utf-8?B?R0ZwcFhXdVlWT2w3MFZwZE5xamdRVXk2eVNuWWZwZHZCUVdDbERzZ09IUUNx?=
 =?utf-8?B?V3BVaktOdCtWdDhEVUJwTThGTWRweldFRUo5THhSRzJFTUJiREMvOGxjeXNZ?=
 =?utf-8?B?Y3pOMVFrVjVxckhTeXdzQ2NGNWs0TFh0eTVnSkZsRHlSSXB6eDE2VGpkSUp2?=
 =?utf-8?B?OW5HS1FjV3EyaTVIUE8zazdNSHRxWVBZbTFVcGZxWUk5cXlHL2xsQmg5T3JZ?=
 =?utf-8?B?MUxLSC9sa0g1dndwZGxaZWdIL3JSUVQwU0pPcW9Dai9qMEdoaC9TdjlGVHdp?=
 =?utf-8?B?c3Vvb1lab21DbmlqUHVOUEo0VlltRTI5eWg2U2JLcEZJeHRiRTFObDJWNWNn?=
 =?utf-8?B?V3E4bGtDNU85bmxaREpkcjByREVtWTY2RzZsVDZ5aS9lQTZ3Y05jSHJwbWY2?=
 =?utf-8?B?ZGdKVFF2Rm5kT0NJZi80a0psdVdHVXgxdExsWWRjekFkVGRNc1NRZlJEVW03?=
 =?utf-8?B?VHFLbkg1TVlkT1VzeEVaYSt6VG5wa3N3MWNhc3kzNmFGbmhzS1hFc0Eyb3l6?=
 =?utf-8?B?OHNoczFKOWtscEZkNWw5bHh1aWI1WVJOZmtyQ0dRaUdBZXZhdnM3Nll1bE5W?=
 =?utf-8?B?MTgvaE8wQjNrOExSWDREeHlHZms1VGsvTUVZUzg5ZUlSSnBkb0xSR3plVFl3?=
 =?utf-8?B?SkZTZk0xRDVpUHR0cllBTzcwQ0NoelJFakQzZFdSR3FSbEhCYVVRMTlRMTZm?=
 =?utf-8?B?MERvckd0eDZucm9qcGlRdGtKMlo0VDRXT1NtWitISWFiSlNLR1VMVGlCTllX?=
 =?utf-8?B?UEM3RE51Q0J1RmpMWDJ1TTRCUGxEOHV1UEZqaGJhck1MUFB0eG9nZlJnM3B2?=
 =?utf-8?B?TnM0RGphdzBJTjdNanZSLzV2R29od2xUdCtKaWFQUlpHaXNZU0pzK2JnTlhr?=
 =?utf-8?B?NmdGSkRrT1dxVWtudDZaRmtjZXc1em5nY01xZ0hlMlhmWmhWNzBUU28yTUdp?=
 =?utf-8?B?T2NNb2JIQjdzRzUweWM3NnhiZjdBUTVBQllpbTJLa3RQemQvVjBQZy93TlJq?=
 =?utf-8?B?amZrSnMrTGt4NFRmWUhjMUJmOGZFWjNUdEd4UDYwL28zTmJrTUR6aDBUUiti?=
 =?utf-8?B?T3pWb002T0N4K2RPYTh0cEpvdHVRalY4aFg4UXdEa3dKZzA0Qmd0V1FmVjMr?=
 =?utf-8?B?Q0h0WVVBMGRMaVE4SDZrWTB1R3VmVXI4dW0yWW5hWkxxekpXdTlFTmp6TEhJ?=
 =?utf-8?B?dFREdXBLeXI2QjE0MGhhU3Vaby9weDB0ajNQRDg0aFZGdG0wdlRqSjcySE4y?=
 =?utf-8?B?Vk9GVmI1ZUJCTzB1TDdROXFmb2pFRDdoWGF3bnR3YjRSK0JuT3FoOXlFMVhL?=
 =?utf-8?B?SW9JanFoTnVGVHFQUE04N1JwL2piMzNlUHJnUGVZaFR4ekVUWEhDS0t0a2dq?=
 =?utf-8?B?S2FSRWlLdGZFV3pUZWc3K2x0UnhaWG9DZ09wZnlka2lvQVNYRTZYenF5Q1F0?=
 =?utf-8?B?cXNlSUNSUng4Z2NGTUJVeVhQNURwUDUzUWRlaWduZXZzbXE5QW9wRDhpcEND?=
 =?utf-8?B?RUpUQXA1RGN0eWZmcVdGV0J0eXdzUDRZWGNSSGtKUnR5L0NSQ2Vib29UNHQ5?=
 =?utf-8?B?MVFJbE5kczF2Vkp3cDBudmE1d3hHUkR3dys0K00rNTNYZXlGOWxWSkE0RHpq?=
 =?utf-8?B?OU9uK0M3OUNhSC95d0hGcllQcG1PSTBBWjc2MUtpNWFueDA5UGxTMmo0NnlY?=
 =?utf-8?B?dzRrM3VqaWxiYVhnRkRkSkg1U3pOT2wyeEcyQmdubExnU2RpNFJRZTlTU2RH?=
 =?utf-8?B?RW9FYkhEMTZkT1pIdm1MOVltMmJpbm9PQzFzdUtDdDYvMTZnTFROcHNHaVVl?=
 =?utf-8?B?RlpXVDNVc3BVUkhXM0Rjc3NqM3JlM2JwZkNrOS84SU1aS0RNOEZSemJsOXFn?=
 =?utf-8?B?TjNiU21pUTdBOUhJVVR5Z204UVlUWXlFTkpCQlE4UG1FZnBubjFYbVZmT3My?=
 =?utf-8?B?Zy9JSWVON1ZTSHAreFZTZEd6M0xlQzRPbmJwbDBDUjgrNTR3bFRSdnFJbWUx?=
 =?utf-8?B?YW9ueXRQRFc2SUdubGxNV242UkhMaFpLZlg0eDJjbTEzQWFVeGFMejdkSCs2?=
 =?utf-8?Q?S3gSytm03vHbuC6VwgI9ag6AWESV5CrnHY4LZYpf4UaIt?=
X-MS-Exchange-AntiSpam-MessageData-1: HYp2UboTztBNq/arzzrlzfnUJH9ndrY/zAI=
X-MS-Exchange-CrossTenant-Network-Message-Id: 322c3bdc-af3c-49f6-b924-08da317cb58b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5231.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2022 05:28:12.3029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OH++Rm1zWrqrXMEziwBCt+1wwvvB9Vv5UJx2zOedOABhl6+CD65ulIwYbfwQXgHh71r29V30Y+SoPb8ZhXkXbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Convert slpc to iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 19/04/22 13:47, Siva Mullati wrote:
> On 18/04/22 16:33, Balasubramani Vivekanandan wrote:
>> On 16.03.2022 18:26, Mullati Siva wrote:
>>> From: Siva Mullati <siva.mullati@intel.com>
>>>
>>> Convert slpc shared data to use iosys_map rather than
>>> plain pointer and save it in the intel_guc_slpc struct.
>>> This will help with in read and update slpc shared data
>>> after the slpc init by abstracting the IO vs system memory.
>>>
>>> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 79 +++++++++++--------
>>>  .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  5 +-
>>>  2 files changed, 47 insertions(+), 37 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>>> index 9f032c65a488..3a9ec6b03ceb 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
>>> @@ -14,6 +14,13 @@
>>>  #include "gt/intel_gt_regs.h"
>>>  #include "gt/intel_rps.h"
>>>  
>>> +#define slpc_blob_read(slpc_, field_) \
>>> +		       iosys_map_rd_field(&(slpc_)->slpc_map, 0, \
>>> +		       struct slpc_shared_data, field_)
>>> +#define slpc_blob_write(slpc_, field_, val_) \
>>> +			iosys_map_wr_field(&(slpc_)->slpc_map, 0, \
>>> +			struct slpc_shared_data, field_, val_)
>>> +
>>>  static inline struct intel_guc *slpc_to_guc(struct intel_guc_slpc *slpc)
>>>  {
>>>  	return container_of(slpc, struct intel_guc, slpc);
>>> @@ -52,50 +59,50 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc)
>>>  	slpc->selected = __guc_slpc_selected(guc);
>>>  }
>>>  
>>> -static void slpc_mem_set_param(struct slpc_shared_data *data,
>>> +static void slpc_mem_set_param(struct intel_guc_slpc *slpc,
>>>  			       u32 id, u32 value)
>>>  {
>>> +	u32 bits = slpc_blob_read(slpc, override_params.bits[id >> 5]);
>>> +
>>>  	GEM_BUG_ON(id >= SLPC_MAX_OVERRIDE_PARAMETERS);
>>>  	/*
>>>  	 * When the flag bit is set, corresponding value will be read
>>>  	 * and applied by SLPC.
>>>  	 */
>>> -	data->override_params.bits[id >> 5] |= (1 << (id % 32));
>>> -	data->override_params.values[id] = value;
>>> +	bits |= (1 << (id % 32));
>>> +	slpc_blob_write(slpc, override_params.bits[id >> 5], bits);
>>> +	slpc_blob_write(slpc, override_params.values[id], value);
>>>  }
>>>  
>>> -static void slpc_mem_set_enabled(struct slpc_shared_data *data,
>>> +static void slpc_mem_set_enabled(struct intel_guc_slpc *slpc,
>>>  				 u8 enable_id, u8 disable_id)
>>>  {
>>>  	/*
>>>  	 * Enabling a param involves setting the enable_id
>>>  	 * to 1 and disable_id to 0.
>>>  	 */
>>> -	slpc_mem_set_param(data, enable_id, 1);
>>> -	slpc_mem_set_param(data, disable_id, 0);
>>> +	slpc_mem_set_param(slpc, enable_id, 1);
>>> +	slpc_mem_set_param(slpc, disable_id, 0);
>>>  }
>>>  
>>> -static void slpc_mem_set_disabled(struct slpc_shared_data *data,
>>> +static void slpc_mem_set_disabled(struct intel_guc_slpc *slpc,
>>>  				  u8 enable_id, u8 disable_id)
>>>  {
>>>  	/*
>>>  	 * Disabling a param involves setting the enable_id
>>>  	 * to 0 and disable_id to 1.
>>>  	 */
>>> -	slpc_mem_set_param(data, disable_id, 1);
>>> -	slpc_mem_set_param(data, enable_id, 0);
>>> +	slpc_mem_set_param(slpc, disable_id, 1);
>>> +	slpc_mem_set_param(slpc, enable_id, 0);
>>>  }
>>>  
>>>  static u32 slpc_get_state(struct intel_guc_slpc *slpc)
>>>  {
>>> -	struct slpc_shared_data *data;
>>> -
>>>  	GEM_BUG_ON(!slpc->vma);
>>>  
>>> -	drm_clflush_virt_range(slpc->vaddr, sizeof(u32));
>>> -	data = slpc->vaddr;
>>> +	drm_clflush_virt_range(slpc->slpc_map.vaddr, sizeof(u32));
>> clflush will not be required if the slpc_map contains io memory address.
>> So the drm_clflush_virt_range can be added under a check for system
>> memory
> Agreed!
>>>  
>>> -	return data->header.global_state;
>>> +	return slpc_blob_read(slpc, header.global_state);
>>>  }
>>>  
>>>  static int guc_action_slpc_set_param(struct intel_guc *guc, u8 id, u32 value)
>>> @@ -156,7 +163,7 @@ static int slpc_query_task_state(struct intel_guc_slpc *slpc)
>>>  		drm_err(&i915->drm, "Failed to query task state (%pe)\n",
>>>  			ERR_PTR(ret));
>>>  
>>> -	drm_clflush_virt_range(slpc->vaddr, SLPC_PAGE_SIZE_BYTES);
>>> +	drm_clflush_virt_range(slpc->slpc_map.vaddr, SLPC_PAGE_SIZE_BYTES);
>> Also here we need clfush only for system memory address.
>>>  
>>>  	return ret;
>>>  }
>>> @@ -243,10 +250,11 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>>>  	struct drm_i915_private *i915 = slpc_to_i915(slpc);
>>>  	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
>>>  	int err;
>>> +	void *vaddr;
>>>  
>>>  	GEM_BUG_ON(slpc->vma);
>>>  
>>> -	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
>>> +	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&vaddr);
>>>  	if (unlikely(err)) {
>>>  		drm_err(&i915->drm,
>>>  			"Failed to allocate SLPC struct (err=%pe)\n",
>>> @@ -254,6 +262,12 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>>>  		return err;
>>>  	}
>>>  
>>> +	if (i915_gem_object_is_lmem(slpc->vma->obj))
>>> +		iosys_map_set_vaddr_iomem(&slpc->slpc_map,
>>> +					  (void __iomem *)vaddr);
>>> +	else
>>> +		iosys_map_set_vaddr(&slpc->slpc_map, vaddr);
>>> +
>>>  	slpc->max_freq_softlimit = 0;
>>>  	slpc->min_freq_softlimit = 0;
>>>  
>>> @@ -335,40 +349,37 @@ static int slpc_reset(struct intel_guc_slpc *slpc)
>>>  
>>>  static u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
>>>  {
>>> -	struct slpc_shared_data *data = slpc->vaddr;
>>> -
>>>  	GEM_BUG_ON(!slpc->vma);
>>>  
>>>  	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
>>> -				  data->task_state_data.freq) *
>>> +				  slpc_blob_read(slpc, task_state_data.freq)) *
>>>  				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
>>>  }
>>>  
>>>  static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
>>>  {
>>> -	struct slpc_shared_data *data = slpc->vaddr;
>>> -
>>>  	GEM_BUG_ON(!slpc->vma);
>>>  
>>>  	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
>>> -				  data->task_state_data.freq) *
>>> +				  slpc_blob_read(slpc, task_state_data.freq)) *
>>>  				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
>>>  }
>>>  
>>> -static void slpc_shared_data_reset(struct slpc_shared_data *data)
>>> +static void slpc_shared_data_reset(struct intel_guc_slpc *slpc)
>>>  {
>>> -	memset(data, 0, sizeof(struct slpc_shared_data));
>>> -
>>> -	data->header.size = sizeof(struct slpc_shared_data);
>>> +	iosys_map_memset(&slpc->slpc_map,
>>> +			 0, 0, sizeof(struct slpc_shared_data));
>>> +	slpc_blob_write(slpc,
>>> +			header.size, sizeof(struct slpc_shared_data));
>>>  
>>>  	/* Enable only GTPERF task, disable others */
>>> -	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
>>> +	slpc_mem_set_enabled(slpc, SLPC_PARAM_TASK_ENABLE_GTPERF,
>>>  			     SLPC_PARAM_TASK_DISABLE_GTPERF);
>>>  
>>> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
>>> +	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_BALANCER,
>>>  			      SLPC_PARAM_TASK_DISABLE_BALANCER);
>>>  
>>> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
>>> +	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_DCC,
>>>  			      SLPC_PARAM_TASK_DISABLE_DCC);
>> After converting to iosys_map instance, each
>> slpc_mem_set_enabled/disabled calls slpc_mem_set_param twice and each
>> slpc_mem_set_param calls slpc_blob_read/write 3 times resulting in 18
>> calls to memcpy.
>> Therefore it is efficient to consolidate all updates by reading the
>> complete override_params field, update necessary members and finally
>> overwrite the entire override_params.
>>
>> Regards,
>> Bala
From what we discussed, I am leaving this comment and remain
this change as is, since the suggested change would require entire
struct slpc_override_param copying which is about 264 words size.
>>>  }
>>>  
>>> @@ -617,7 +628,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
>>>  
>>>  	GEM_BUG_ON(!slpc->vma);
>>>  
>>> -	slpc_shared_data_reset(slpc->vaddr);
>>> +	slpc_shared_data_reset(slpc);
>>>  
>>>  	ret = slpc_reset(slpc);
>>>  	if (unlikely(ret < 0)) {
>>> @@ -705,8 +716,6 @@ void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc)
>>>  int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p)
>>>  {
>>>  	struct drm_i915_private *i915 = slpc_to_i915(slpc);
>>> -	struct slpc_shared_data *data = slpc->vaddr;
>>> -	struct slpc_task_state_data *slpc_tasks;
>>>  	intel_wakeref_t wakeref;
>>>  	int ret = 0;
>>>  
>>> @@ -716,11 +725,10 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
>>>  		ret = slpc_query_task_state(slpc);
>>>  
>>>  		if (!ret) {
>>> -			slpc_tasks = &data->task_state_data;
>>> -
>>>  			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
>>>  			drm_printf(p, "\tGTPERF task active: %s\n",
>>> -				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
>>> +				   str_yes_no(slpc_blob_read(slpc, task_state_data.status) &
>>> +				   SLPC_GTPERF_TASK_ENABLED));
>>>  			drm_printf(p, "\tMax freq: %u MHz\n",
>>>  				   slpc_decode_max_freq(slpc));
>>>  			drm_printf(p, "\tMin freq: %u MHz\n",
>>> @@ -739,4 +747,5 @@ void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
>>>  		return;
>>>  
>>>  	i915_vma_unpin_and_release(&slpc->vma, I915_VMA_RELEASE_MAP);
>>> +	iosys_map_clear(&slpc->slpc_map);
>>>  }
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
>>> index bf5b9a563c09..96f524f25b52 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
>>> @@ -7,15 +7,16 @@
>>>  #define _INTEL_GUC_SLPC_TYPES_H_
>>>  
>>>  #include <linux/atomic.h>
>>> -#include <linux/workqueue.h>
>>> +#include <linux/iosys-map.h>
>>>  #include <linux/mutex.h>
>>>  #include <linux/types.h>
>>> +#include <linux/workqueue.h>
>>>  
>>>  #define SLPC_RESET_TIMEOUT_MS 5
>>>  
>>>  struct intel_guc_slpc {
>>>  	struct i915_vma *vma;
>>> -	struct slpc_shared_data *vaddr;
>>> +	struct iosys_map slpc_map;
>>>  	bool supported;
>>>  	bool selected;
>>>  
>>> -- 
>>> 2.33.0
>>>
