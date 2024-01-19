Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4CF83280F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:49:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3309B10E1C6;
	Fri, 19 Jan 2024 10:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD5810E1C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705661355; x=1737197355;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ErVkQLpBjFwCuNuPRctMIoT+VYStNdfhQgIkzkli+fc=;
 b=ZF4NU9oCnH37mbvf7jqdTfEdnPFJQkRuYKuBLMb61fKSNMwW/qGnGks7
 66qDoH8tm0weI1ZekiwX4Pun1AGivjJSRlfa381Wp7FaxJZHtrRlnUbV5
 FExV72etvcbhWAJG5WGDu/e4kt7i9Ml6nUFNcNzaYJsq+J7K1PtPm83eK
 XkXQPVuBrpvdgonPzHOfDERKVa6qxn3SkmdgpWg4N8/hpF0il8Q8gqO5a
 +/oEjcKN5jQaPoZ7fDch+mYbZYRprVGXhsh3fWXLoJzVyv3gBpwszLViB
 7SBjiJfFTpUsDzBw4bCQ3lzrdjq1e3lwN255x56DhbDPb84UjFT/1pJiy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="467093410"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
 d="scan'208,217";a="467093410"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:49:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208,217";a="19366223"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jan 2024 02:49:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Jan 2024 02:49:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Jan 2024 02:49:13 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Jan 2024 02:49:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDZzvXomOPL3dpsb5sFzhUr66zT9ngZKcxBecdwJ1VZTeHFbiWQ/dWijOyKTV/nhM7Eg9Ln4hd0A38Iamfk28NrTvYz38QniZ8PnxOIxZWXBerkgJ2dbT2PoVO21B0tbrmZR7hycYBX/nMsmXoFLHu0U3FuMsSaVwSVgHxuzY8bbYlJF91LLhi73AOOeUtdaNXnwvCRz/5El+RC0Df2v0N1X/7FLOHS+uRaW/A6K+NKF3QJyBuw3WyciVGVgSHCdsYBgHhV1fhNgN1PasIkoE2fWFV88W4dKnfrb9HchqbNhcrrJJalA6X1Wl1ReKPDzoNGVOsdaDLlc11jyIFv6Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=61UDWesQj3zNFGYVmNncUco1dTPn+mNsVeTOTbOJOpk=;
 b=Nh7K6oE1V6RLBaLnYVBrMda00RCenbgWPfKv3uTWeKgxHApW9XHZcJkYXYhKdq5O4LHMFOayAb5CQ9Gk1eRThPEmbtg4aq0CBN1BgtQeZGA9zDwasfmCsqLZf18KaxH4Qa4tMnM/M7PqdDunCpttQ8aJBheOdoqdMHu0bt10gI8eepLoU2uQf3dGxFJ7LeAEZhGpEBrigixJxW9Q5Kk4Kh3n6arUtmcRMd0jWTwZwSXDrbSqC5cdklAXrYLMwh72jaqHQEwa1ouYlBitA97HoBqBdlgNrUOqfa8eG0LzTK+98HwwfM3KQZFHQWWRnjzoTA5zFppHz4eAlyWGA0x/JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) by
 CH0PR11MB5524.namprd11.prod.outlook.com (2603:10b6:610:d7::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7202.24; Fri, 19 Jan 2024 10:49:09 +0000
Received: from DS0PR11MB6541.namprd11.prod.outlook.com
 ([fe80::b651:485:1973:7554]) by DS0PR11MB6541.namprd11.prod.outlook.com
 ([fe80::b651:485:1973:7554%3]) with mapi id 15.20.7202.024; Fri, 19 Jan 2024
 10:49:09 +0000
Content-Type: multipart/alternative;
 boundary="------------hl6Z2YRtI0tJmgKGmBNweSN5"
Message-ID: <06038704-ccc7-4425-ab88-c3c4fc7419c1@intel.com>
Date: Fri, 19 Jan 2024 11:49:05 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/16] drm/i915: Disable the "binder"
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@linux.intel.com>, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-6-ville.syrjala@linux.intel.com>
 <ux7q2bmbk47rnke6n2qo3dabdx7lxkuwcy5rrauwsyz7v2bthc@p7jgbcz6vs7d>
 <32646e92-e06b-45a4-8d25-185be9c1e4d4@intel.com> <ZamwS6sLlEdJRv59@intel.com>
 <cdbdeae2-041c-43ef-8cba-d57546b50e88@linux.intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <cdbdeae2-041c-43ef-8cba-d57546b50e88@linux.intel.com>
X-ClientProxiedBy: FR0P281CA0044.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::7) To DS0PR11MB6541.namprd11.prod.outlook.com
 (2603:10b6:8:d3::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6541:EE_|CH0PR11MB5524:EE_
X-MS-Office365-Filtering-Correlation-Id: d5542194-e62d-47b0-a3eb-08dc18dc43d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vFHTehmZ4nrk+nhW2/LmaMp8AYNWWLHkp21DDniJ1dzpivk0fYPhKGkQOamsedJ5cBKvWYsQ0HY8DbwTn0rOaLOdU2uj/b3OTWebtkfYkJ59g9qq5R4O5ajGHwlLrhiFjmPuz08ZhyJvgkYr8i1vjEBFPLQ6uQ8Cf9VPLIPEVQF5mrUvxgO4EwcHm5EqFkccCkNscXZYbexVJ0m1BVC1qhsZwm+T8OHUzxVs3zZFO0bax7xRMeHLedIEqpoPYRfac3RdklK4elL+ocbSbDhynCBvlU8QlafNyJRAa5vl8Vr8HWRiLJvZaVq5s3o1++J1COYP3jO5D4j5yw0kKvKyYywsqFOUe7zBdbmbZNYOtX/cOp/l+Kw8+DCAIE8LX3Z0kM3IMS4Rak9cbMWdSvMoHlYMoaRp61bwqTgb2pZm5h9X3fTPqNlSCaFH9KdxcePtWkMFBVHkdyvCUGzlNTDZWjMddrYzFDX0BcmKZ0nANwnkMUuZgO4TndlM8N080jAJraeCTKT88Ri2TZDaiOHCwPgf7QPHdS6Lcfeu3hvSDDtt42Bb7xeVqcyQsrw01rJuYBZaguQmlwIo2RGWHbJb8r2Utv0G7vdUYfxw1rueyq1vhFhFBfKbxahCHiqnCm+O2XNC8THh1cWthXQ7pa1Fcg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6541.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(136003)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(26005)(478600001)(66574015)(6486002)(53546011)(33964004)(31686004)(6512007)(6506007)(2616005)(82960400001)(6666004)(316002)(86362001)(66476007)(66946007)(66556008)(83380400001)(110136005)(5660300002)(41300700001)(38100700002)(4326008)(8936002)(8676002)(31696002)(44832011)(2906002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDB5NGdOaVEzSGlXQ2d4Y25kRDg0d0RKYWJrcGY5aGZsYlU3OHhlMy9GcTMx?=
 =?utf-8?B?RG9ZRDdwdktoSXRybGJHTVlRanRzeXRWMFd2WEJkVC85bmU0NHVWT294TWdG?=
 =?utf-8?B?OGR1b3N5WWYrSWFWSkR4aVdUMGdCcVRXcmNlaW1DaTdMVmlGaVdpS095bCtx?=
 =?utf-8?B?aURSdXZxVDd5Umw2NjMyQnBGN3BKSG1aY2szbEcwMEE1blVtdmpMV1pFWjJF?=
 =?utf-8?B?REFHOHJKUTQxWXpDVHd1ZjJaUXhRbVZ3bG9iamRmaElrZjQ5ZFR0MmJ4TGhn?=
 =?utf-8?B?OUYxRkdtVGFVeG5nNWNXd2FWY2VUT0k1SVZMQVZxcGNLMlhyOXU2bnZ1Zjgz?=
 =?utf-8?B?WVlOeTdoMnAvY0hlREVSUmE0UkpXV25aV3RhYVdvTC9jSmUyMHVKZmszOWZK?=
 =?utf-8?B?WjExMlZNMW04VVlybzlCZ2VjR1FjNzE5TUNwRnJUWXhuNHhqako4NDVESisw?=
 =?utf-8?B?bHdreDZBQVNYcnVwUkxvK01sZk01UkovSUhUN0o3MHh1a1FjdStzRURwTnNY?=
 =?utf-8?B?M0I0MzIvMjBPK08vRlg2ZTMrWDZxY0xIemo3M2J3aldUVFdBS3krOUtWelBm?=
 =?utf-8?B?VVlLUlpBbmpTMUNrMjdaUWs4VHhibTZPWEdqS29yaHMvR2VmcWZDeGFhLzRT?=
 =?utf-8?B?MmluTTRjeWVPaGpyRWdIeFBqTXk5dms5ZmxITEhmd3o4SVJtODB3OGtCQWpk?=
 =?utf-8?B?eWgzVUFmNDdFY0loUDRuWFFqZWY3RWNBWWhsWmlCYjJYZEg3T1QyVFZiaDRp?=
 =?utf-8?B?cC9hb2JQbnV3aStZTTdmRURRTjI5UEtLbjcxaVI1TFdpdjRXK2dCRDVSVWlG?=
 =?utf-8?B?M3lZNHQrUFY1aEQ2VDZoMmZrbUlQWmhIYksxQ2R0bGRGNTZ4NUQrcy85a3NM?=
 =?utf-8?B?WGZmZUc1TkgwTzRqc0xMeDVhOWV6VVpXUkZoa0QydHdCQXQrM1dORVhzSTZq?=
 =?utf-8?B?dDFZQTNiVHJUbWJWMWRCMVFhNXNRS1VtNThYWUdQWTBhcHdwT1VmcjgwaDlH?=
 =?utf-8?B?SHE1N1lVREFENjFXOG40a05rWmc2ZDZmdFRRS2NBeC9yLzFmQytsaHZDRGhB?=
 =?utf-8?B?SlZDSkpsdDZBdzZLQUJNa3c4YUNTaFYzczVOYk11eGlmNlVSa1ZiWU5ZOUdw?=
 =?utf-8?B?amdMNEkxZlBIM01WeGRMS3JjV0JRYVczZGc0V0NZckgxSkV6bXNXUzZZQXZ6?=
 =?utf-8?B?TStBdmR5T01xKzcxbllNT0FLUEtxaXZYQ0NiYW81ekpuRVdHSldkQWNPcHlV?=
 =?utf-8?B?TEJQZWlPeXNCQzVWT0tSU05EODJpZzY2ZlZ2bjlPTGJ0Z0FtOVRhMXJTYmxh?=
 =?utf-8?B?ZEZYaCt4T0RUYmc1RTM1eTN6ZmpJQ0hkS0lJOURkaUxiYXpBNzJpYjI5UTZM?=
 =?utf-8?B?dGIxRjBiZ3NiVWU1QlZJQThsV2JXb3NmT1k1Sld1dmRVZUpVR2kyb0kyNURp?=
 =?utf-8?B?UVF0b0c4WmlEdlVrK2tRb1ZFM3dQcG5MUXBEUUw5cWxDcXRuSU0rMDM3czRa?=
 =?utf-8?B?ZFExN1JIN0t6ZmZxNEVCR0RMei9DalVmS0Y5Z3BnK3lpZ1pUUDZPek01UE81?=
 =?utf-8?B?RTZjQ0lzM2luV2tUbHRWcWF0VzRZMnNhQXhybGZBSDk5KzFvRXJMZ3c5YnBN?=
 =?utf-8?B?UE5nVWtxVlJDQ2VDekxWVytXZDI1Tlp6cHVEUXBHaDFXWi9pVGxMRHpGRzVE?=
 =?utf-8?B?ZHFRZzVpakVWV0pYc0tnWGZkT2dndmUrbmpZS2kvdzl1SGU1WDQrRjB3VEFU?=
 =?utf-8?B?MkVmMGxsM3c2R3BzNDNJNUFEOVRrWmNsMVNHcENNTmt1WkpkZXdNWGRINlVZ?=
 =?utf-8?B?eTJoR0hMODlMVk1HTUtQY0J0NGJZaE81dG43VlJTbldRdVcwQ0ZJTjN3dHln?=
 =?utf-8?B?ejZwZzQ0dlRNQXhOOE9aZzk1bmpKRkFncUhmU3V0Qm04UG5LZStaZXNwVUlV?=
 =?utf-8?B?bDFMd1BHdXRuTzE5QytsT0tOUjl2WmUxSm9BK0NpK2lnOFhRTm1VaTRFZXBK?=
 =?utf-8?B?aDhWNVowdkM4VVRyc3BOZlU0VzZjbmlmMG9KOHdwVUNwVEtvdjZBQzlpOThl?=
 =?utf-8?B?RUpsaEd3NDVVSXpQVGtrYVR5SHBFMzVkeWFLQm9paVNONHNSbU9JZ2tNYnlr?=
 =?utf-8?Q?fwDBsC8f5stt43OEzTIlkGj1z?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5542194-e62d-47b0-a3eb-08dc18dc43d8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6541.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2024 10:49:09.1805 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AwL/I0cWDxLC2kltS/nN9LW/r4Rz+5pXzvzxpa2wYcnzNElAawW1mtUXGGgoB9eomIhdGEvhP0wLf8yU3TqmxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5524
X-OriginatorOrg: intel.com
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------hl6Z2YRtI0tJmgKGmBNweSN5
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 1/19/2024 11:47 AM, Nirmoy Das wrote:
>
>
> On 1/19/2024 12:12 AM, Ville Syrjälä wrote:
>> On Wed, Jan 17, 2024 at 06:46:24PM +0100, Nirmoy Das wrote:
>>> On 1/17/2024 3:13 PM, Michał Winiarski wrote:
>>>> On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
>>>>> From: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>>>>
>>>>> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
>>>>> GTTMMADR) there should be no more risk of system hangs? So the
>>>>> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
>>>>> necessary, disable it.
>>>>>
>>>>> My main worry with the MI_UPDATE_GTT are:
>>>>> - only used on this one platform so very limited testing coverage
>>>>> - async so more opprtunities to screw things up
>>>>> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
>>>>>     to finish?
>>>>> - requires working command submission, so even getting a working
>>>>>     display now depends on a lot more extra components working correctly
>>>>>
>>>>> TODO: MI_UPDATE_GTT might be interesting as an optimization
>>>>> though, so perhaps someone should look into always using it
>>>>> (assuming the GPU is alive and well)?
>>>>>
>>>>> v2: Keep using MI_UPDATE_GTT on VM guests
>>>>>
>>>>> Cc: Paz Zcharya<pazz@chromium.org>
>>>>> Cc: Nirmoy Das<nirmoy.das@intel.com>
>>>>> Signed-off-by: Ville Syrjälä<ville.syrjala@linux.intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
>>>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
>>>>> index 86f73fe558ca..e83dabc56a14 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
>>>>> @@ -24,7 +24,8 @@
>>>>>    bool i915_ggtt_require_binder(struct drm_i915_private *i915)
>>>>>    {
>>>>>    	/* Wa_13010847436 & Wa_14019519902 */
>>>>> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
>>>>> +	return i915_run_as_guest() &&
>>>>> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
>>>> Note that i915_run_as_guest() is not the most reliable way to decide
>>>> whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
>>>> hypervisor to "opt-in" and set the X86_FEATURE_HYPERVISOR.
>>>> If it's not set - the driver will go into GSMBASE, which is not mapped
>>>> inside the guest.
>>>> Does the system firmware advertise whether GSMBASE is "open" or "closed"
>>>> to CPU access in any way?
>>> Had a chat with David from IVE team, David suggested to read 0x138914 to
>>> determine that.  "GOP needs to qualify the WA by reading GFX MMIO offset
>>> 0x138914 and verify the value there is 0x1." -> as per the HSD-22018444074
>> OK, so we can confirm the firmware is on board. I suppose no real harm
>> in doing so even though it would clearly be a rather weird if someone
>> would ship some ancient firmware that doesn't handle this.
>>
>> But that still won't help with the guest side handling because that
>> register will read the same in the guest.
>
>
> We are back to the same question :/ How about
> if (boot_cpu_has(X86_FEATURE_HYPERVISOR) && !i915_run_as_guest()
>
hmm, never mind that was stupid.


> disable binder
>
> Regards,
>
> Nirmoy
>
--------------hl6Z2YRtI0tJmgKGmBNweSN5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 1/19/2024 11:47 AM, Nirmoy Das
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:cdbdeae2-041c-43ef-8cba-d57546b50e88@linux.intel.com">
      
      <p><br>
      </p>
      <div class="moz-cite-prefix">On 1/19/2024 12:12 AM, Ville Syrjälä
        wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:ZamwS6sLlEdJRv59@intel.com">
        <pre class="moz-quote-pre" wrap="">On Wed, Jan 17, 2024 at 06:46:24PM +0100, Nirmoy Das wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">On 1/17/2024 3:13 PM, Michał Winiarski wrote:
</pre>
          <blockquote type="cite">
            <pre class="moz-quote-pre" wrap="">On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
</pre>
            <blockquote type="cite">
              <pre class="moz-quote-pre" wrap="">From: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com" moz-do-not-send="true">&lt;ville.syrjala@linux.intel.com&gt;</a>

Now that the GGTT PTE updates go straight to GSMBASE (bypassing
GTTMMADR) there should be no more risk of system hangs? So the
&quot;binder&quot; (ie. update the PTEs via MI_UPDATE_GTT) is no longer
necessary, disable it.

My main worry with the MI_UPDATE_GTT are:
- only used on this one platform so very limited testing coverage
- async so more opprtunities to screw things up
- what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
   to finish?
- requires working command submission, so even getting a working
   display now depends on a lot more extra components working correctly

TODO: MI_UPDATE_GTT might be interesting as an optimization
though, so perhaps someone should look into always using it
(assuming the GPU is alive and well)?

v2: Keep using MI_UPDATE_GTT on VM guests

Cc: Paz Zcharya <a class="moz-txt-link-rfc2396E" href="mailto:pazz@chromium.org" moz-do-not-send="true">&lt;pazz@chromium.org&gt;</a>
Cc: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@intel.com" moz-do-not-send="true">&lt;nirmoy.das@intel.com&gt;</a>
Signed-off-by: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com" moz-do-not-send="true">&lt;ville.syrjala@linux.intel.com&gt;</a>
---
  drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
  1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 86f73fe558ca..e83dabc56a14 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -24,7 +24,8 @@
  bool i915_ggtt_require_binder(struct drm_i915_private *i915)
  {
  	/* Wa_13010847436 &amp; Wa_14019519902 */
-	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
+	return i915_run_as_guest() &amp;&amp;
+		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
</pre>
            </blockquote>
            <pre class="moz-quote-pre" wrap="">Note that i915_run_as_guest() is not the most reliable way to decide
whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
hypervisor to &quot;opt-in&quot; and set the X86_FEATURE_HYPERVISOR.
If it's not set - the driver will go into GSMBASE, which is not mapped
inside the guest.
Does the system firmware advertise whether GSMBASE is &quot;open&quot; or &quot;closed&quot;
to CPU access in any way?
</pre>
          </blockquote>
          <pre class="moz-quote-pre" wrap="">Had a chat with David from IVE team, David suggested to read 0x138914 to 
determine that.&nbsp; &quot;GOP needs to qualify the WA by reading GFX MMIO offset 
0x138914 and verify the value there is 0x1.&quot; -&gt; as per the HSD-22018444074
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">OK, so we can confirm the firmware is on board. I suppose no real harm
in doing so even though it would clearly be a rather weird if someone
would ship some ancient firmware that doesn't handle this.

But that still won't help with the guest side handling because that
register will read the same in the guest.</pre>
      </blockquote>
      <p><br>
      </p>
      <p>We are back to the same question :/ How about<br>
        if (boot_cpu_has(X86_FEATURE_HYPERVISOR) &amp;&amp; !<span style="white-space: pre-wrap">i915_run_as_guest()</span></p>
    </blockquote>
    <p>hmm, never mind that was stupid.</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:cdbdeae2-041c-43ef-8cba-d57546b50e88@linux.intel.com">
      <p><span style="white-space: pre-wrap">	disable binder</span></p>
      <p><span style="white-space: pre-wrap">
</span></p>
      <p><span style="white-space: pre-wrap">Regards,</span></p>
      <p><span style="white-space: pre-wrap">Nirmoy
</span></p>
      <p><span style="white-space: pre-wrap">	
</span></p>
      <blockquote type="cite" cite="mid:ZamwS6sLlEdJRv59@intel.com"> </blockquote>
    </blockquote>
  </body>
</html>

--------------hl6Z2YRtI0tJmgKGmBNweSN5--
