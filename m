Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C95616933
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 17:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5794A10E505;
	Wed,  2 Nov 2022 16:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 207D710E505
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 16:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667406917; x=1698942917;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=aqOKlaBXbmxdyAGV/N2A1MQd2lNEXLEixl7cMbbyw74=;
 b=UWbjXMkhHIv0ZzMcsQ17ttsegpkquIBwVhR7ZXDJBkGjDawDBuni6UHG
 54e4zCzz/rkdLsXkjOsRyI4bt929d0Gc+ZN6B0BcNw3hxcWooDu3j2Ht+
 kAjygTjhcIcCwCKUL/CtNsaMIMs0OmRZjXPwyOzEYTkWxHi6Xk2LgPaNK
 j8vaCnq+y7ZPlkmqj5QOe53p0YE1crEsWy/hi06ksxhepcb4iJ0wVPh9x
 /ZgkaODyUNMILvMXyK1I+qDf6VYK5rDdePUxfINc9TCseY32ogNSL/5yS
 KkeTSGUy0w9NqplIaANTZ9voIgw3Aqg7gH0Wp8pIdaYuYejBAwUzwMnzZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="289847766"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="289847766"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 09:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="665620801"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="665620801"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 02 Nov 2022 09:35:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 09:35:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 09:35:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 09:35:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JGlfzMiuTdrBvAslPonoIWHw+SXBaffanLHYK1N5IFV5teP9U6HJ9yrYmX3mrlhg9jlDd6cGtv/KtNyMPqffwyrern80QhvG4tyUOXMiusriEtGjwZ8/MImxUWZQ83lXRYFL0oFD50/JOfZYlZaWV5pIxXwEVJFQwAblSdHDnlzKSZ0UbM6LE1NxcicKioSOyFN13XqgxR8jEyaf3rj4gWzpgycVwg+8kJqUgoLdDuZL1iez6KlZ6VPkDnxIrBD5dJNogM26FVMJ7CtR+JvCWAS6CalsrxBArdfHyvU+IrgcGIl2N94Avwojs1ih5cqROHuj7sg6y12AmQN9uTwUcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CgEP2dY+e8vRqTAqrF++uqIEqAjOc1+enmgqcWB+qL0=;
 b=ZXMP0MklcmA9F9ckzeqGYqrJLyv3MbwE2UxIxovldG5VTm3XPgkjcWqFpDsPj0FTsNvSqDKRn2AmjLS39hl00nHfEG9Pephr8D0hLo1/cvXUDV48f/uaubNgNNHnW0j0Pmkclvr/mzKQdMdfLwS8rifaHyx7q39Y2zLD59mEJPYg8X1Z9l85HFJu44pdpfMRL68nNVGefCChjok+yoEfRrEYA1dClExA6Pul6lXUdAY/tXzEYPHVH0uueTQlSQDvtZojUoiwmCoAipeW1X+cHj7x9DsSWs0N6lsK+ilgvqC0VXTHwKyB7cwuymjuybWAndatpEc74UsjH3OVExT9OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13)
 by CH0PR11MB5426.namprd11.prod.outlook.com (2603:10b6:610:d1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Wed, 2 Nov
 2022 16:35:14 +0000
Received: from PH8PR11MB6952.namprd11.prod.outlook.com
 ([fe80::e55e:c08c:4749:1c68]) by PH8PR11MB6952.namprd11.prod.outlook.com
 ([fe80::e55e:c08c:4749:1c68%3]) with mapi id 15.20.5791.022; Wed, 2 Nov 2022
 16:35:13 +0000
Date: Wed, 2 Nov 2022 09:35:05 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Message-ID: <Y2KcOWjetSLFw0qT@nvishwa1-DESK>
References: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
 <7b832c2b-5a01-3027-c610-f89ae2f48737@linux.intel.com>
 <033cbf36-cfec-d5e4-ea2b-ee59595f3b89@intel.com>
 <160a4d6d-76e1-3dd0-16ba-5e3134409680@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <160a4d6d-76e1-3dd0-16ba-5e3134409680@linux.intel.com>
X-ClientProxiedBy: BYAPR02CA0035.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::48) To PH8PR11MB6952.namprd11.prod.outlook.com
 (2603:10b6:510:224::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6952:EE_|CH0PR11MB5426:EE_
X-MS-Office365-Filtering-Correlation-Id: 11683484-21a3-4ab2-fce1-08dabcf03785
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JGR2TninBlxfF+kLYQBXF4NMrlGw9vksUewTtCrqP4WmRUQlyB0oVuB3McHUx25hch+66iVhXwqbuyWrgOzoWl48rO6tTtiw75NrYjaD7aIuXlbr+6XITAqYzYBIoUrKu0k8XmfyIT2uUMb8GrtXRuAVu6OVRyIgGaeJFVrUGfC4Tjueo2pHkJ6rOwIcLB0TAkY5XMpGfHDK8t9pSK0YJHT6wbOSiKH1VdJXEXh24vCmhiMnzLv2AXFGcwwEsu3nFZbwGlUWCPOs5bmB/GMfNWeS1YtchHB4MzAgceMyPCAkQOY2KwqqD2KWf9slcMw4xw6iHgFS78cwJCeBO1KudMG77zxIYbRofQtqvP0KvTxAnjpiwL6R9PKU7dBaA+i7WRDJ7o8b28vkZplVKDHQucApU4jHhxQai+2ZnwV5P1SbsWGJyCad6H+NxYEYpC9LdBHbr9Yb6JkeYjJ/qk1g7SkGwaWxawdEU5X5suxKn0kRR8sc4Sjq9JxBGTc1WERLJ0o1TZU7gvXfMCuIMrXAQHAYNEgqQdqwMdL/4nINqQ5+0wCgMOxRgzNASE9ZPHtJ7WcO84PzMdUFKKA0U8FSjl2+uOMzrge1lHUO5uAXVNOydwUj0T7zoIs7nVqcct0cHG1JlCNDqB+rcSNV+mecx5mKiM6eV2IALv+hVVEX24gUkncqH28HhODAWN9yV4Q/3cXvx9mMO1I+wMqz1wNQ+R73GB3n8BBjT8F6mX9N+jPICFIWrwKwSrx9BZFWssO/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6952.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199015)(8676002)(66476007)(66556008)(66946007)(4326008)(316002)(6916009)(41300700001)(38100700002)(2906002)(82960400001)(8936002)(44832011)(6506007)(6666004)(5660300002)(186003)(26005)(6512007)(6486002)(83380400001)(478600001)(9686003)(86362001)(33716001)(14143004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?RO4c/xjFcMElcrY9hTJZPEiV8SwEZvaA5DQ7975fJxrQd8VOcQZjjCb20A?=
 =?iso-8859-1?Q?/5Za+AivSREhiyu4dt328hEHa8KyLlVglVJsFB6uJaJ8Jsa+pUFPaVBtZi?=
 =?iso-8859-1?Q?Qh+ZZKrtPGclXrg4OQPwjRcxjz35y6kosC88iFtnv9j6gg6AaAqlwht/kW?=
 =?iso-8859-1?Q?OsNDW1TBQQmMgO3D+SK2LrIhyU20eUc8EfQziE+E8jwXppLhbCdEytvVLm?=
 =?iso-8859-1?Q?bxwQCpNPVe2I5wf8LC87fQRKvxtvGfdWsKIjuxpDJ4lEeL4HW2/hr1R3k0?=
 =?iso-8859-1?Q?9Dh0RaIGPEIFOMDoAB+J3LllYxAq0xkw+bhzfIK56c1KrkyT4u5r7b5bMH?=
 =?iso-8859-1?Q?gDWpmFSdSwjCFeT2F9sAZIk/F3+71RHyHDalzg/yVIkP+EBdGBPpkQuTEz?=
 =?iso-8859-1?Q?oOEZMfgAO9N1vC/Tz5xAQcmN7dyXyELA3mCkPreku4P6oHNFQIwRJgiDk3?=
 =?iso-8859-1?Q?7vDLFwcEzbc/SF7FFcowS0L/o58OChp7d0Px3d56MLRVCKzQVaV1BV1+Bz?=
 =?iso-8859-1?Q?p8Fzn2tyLZE/PhBu7TfW7eVZBJOOdX6JL3CA1FySNM+8JvD3s8cQotrqZc?=
 =?iso-8859-1?Q?/j2JGU15GMieRrq26Q07r5jgu3bdjD4CT/bPp74bfEIYSNzyTL0PaQz0y4?=
 =?iso-8859-1?Q?TuuGfWKtXx1O7YojdnERZETBotPz75WRH17UlYKgo0FRAidVktDtL51+rf?=
 =?iso-8859-1?Q?m5rI4xKudyc0yjl2t1b//DzEgq0Dl3GiSBbwmQKmqY6TMsy7lGrPAfll1l?=
 =?iso-8859-1?Q?Z9cf+wggclEqIGfTfq+buGej2s0SI2FL1n3W7BD9fxqjpw51zK5AZTYQ9f?=
 =?iso-8859-1?Q?AadAosjln7NTVhFuSM4+/YB76GZUy2UbFx8s1+eRU6TkxAIFMKEbMeLgsb?=
 =?iso-8859-1?Q?t7sRiJtZJwI7ed8mpbSrzOAIhTaWMIV8ekhtjwMVBngvFvOtr6KrhzHDUX?=
 =?iso-8859-1?Q?GIU/3QAhmQE2sI9nGs1/neW9To3YSlf7x114BmXgbeEM5tIe0h74X2uVdg?=
 =?iso-8859-1?Q?urkXMgeHuqFgFvh6qILASm5XVycMZkgaHNlEeBWuKlsKHeQKvREnJ/x92K?=
 =?iso-8859-1?Q?3Nv+n56HSQVeIwu+KVDMwQEJ8Q75K1PZpMlY5qfAgbTq1PRiBcuZqlMJF5?=
 =?iso-8859-1?Q?MPu06Gje3MFw2JpymAdtXj/WfGaHdpjxujhnOgV8nXfFAt+OUHWqJ2+l/X?=
 =?iso-8859-1?Q?O7Lu7T6u5zdT3qUSbbsXGnexdDhs5XjF1qNiFmgO64hErvR1T6Q8XP/oHK?=
 =?iso-8859-1?Q?Bq+x4FlyfYdpBW07ByXGfmeCmfrmlPrLbZQfgv4bYWS8RLydoQyFX4ipyv?=
 =?iso-8859-1?Q?aj550oZA1SlPyRkCirPTO45phxC5FagTyliPjWnb9J2yOprk1scfoWLowC?=
 =?iso-8859-1?Q?aZVP4uLTXVjDtNddbApeT+eOCX8f/fFuQlpz7Xo4i7NUHi17njeTYVvYEu?=
 =?iso-8859-1?Q?fINsyIK53eYs9793nioWCUlTfc/ttJ/4kOAcwK7nGW8V05z5LogEb7ytAK?=
 =?iso-8859-1?Q?T02lpDzw25eVocDVS0QKB4n1jyjTyMzydPgFgrj8ocAtsrdKvQLmE/R9nC?=
 =?iso-8859-1?Q?idN93rZdZ2O37GuTl8RhajCDYJBZ3Ok15ZFpvNDGzjPdE3ypo2/gSzf7JR?=
 =?iso-8859-1?Q?TW+uXkdBAyPxHyzd/ByvgcXq7ZVVhl00MhESwdMpML25Uh/5wHqS99IdDv?=
 =?iso-8859-1?Q?32hCjJMBUQXD6z3SvmY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11683484-21a3-4ab2-fce1-08dabcf03785
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6952.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 16:35:13.7140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C2oF0jAODjyZnF7UJDtTmViDg2nPoPHBtEj3bbJOgcIoiwILhslB8nviprvk2yR5xdjgOeeXmdu5ySEK5sjcKoXWGGar0wjzHTCx3oC38guafhuRBvhvOKoMWRmefad/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not set cache_dirty for DGFX
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 02, 2022 at 05:09:27PM +0100, Das, Nirmoy wrote:
>
>On 11/2/2022 11:36 AM, Matthew Auld wrote:
>>On 02/11/2022 07:39, Das, Nirmoy wrote:
>>>
>>>On 11/2/2022 6:14 AM, Niranjana Vishwanathapura wrote:
>>>>Currently on DG1, which do not have LLC, we hit the below
>>>>warning while rebinding an userptr invalidated object.
>>>>
>>>>WARNING: CPU: 4 PID: 13008 at 
>>>>drivers/gpu/drm/i915/gem/i915_gem_pages.c:34 
>>>>__i915_gem_object_set_pages+0x296/0x2d0 [i915]
>>>>...
>>>>RIP: 0010:__i915_gem_object_set_pages+0x296/0x2d0 [i915]
>>>>...
>>>>Call Trace:
>>>>  <TASK>
>>>>  i915_gem_userptr_get_pages+0x175/0x1a0 [i915]
>>>>  ____i915_gem_object_get_pages+0x32/0xb0 [i915]
>>>>  i915_gem_object_userptr_submit_init+0x286/0x470 [i915]
>>>>  eb_lookup_vmas+0x2ff/0xcf0 [i915]
>>>>  ? __intel_wakeref_get_first+0x55/0xb0 [i915]
>>>>  i915_gem_do_execbuffer+0x785/0x21d0 [i915]
>>>>  i915_gem_execbuffer2_ioctl+0xe7/0x3d0 [i915]
>>>>
>>>>We shouldn't be setting the obj->cache_dirty for DGFX,
>>>>fix it.
>>>
>>>With Fixes: |d70af57944 |("drm/i915/shmem: ensure flush during 
>>>swap-in on non-LLC")
>>>

Ok, will add.

>>>Acked-by: Nirmoy Das <nirmoy.das@intel.com>
>>
>>Any idea why this escaped our testing in CI? Perhaps something to 
>>improve.
>
>
>I ran some userptr related igt tests none hit 
>__i915_gem_object_release_shmem . So I think we are missing
>
>coverage here or I/CI isn't running such test.
>
>Niranjana, what test did you ran to hit this case WARN ?
>

I hit this issue with modified gem_userptr_blits@vma-merge where
I added additional execbuf call after userptr invalidation as below
to test rebind happens properly after an userptr invalidation.

         igt_spin_end(spin);
+       igt_spin_reset(spin);
+
+       gem_execbuf_wr(i915, &spin->execbuf);
+       igt_spin_end(spin);
+
         gem_close(i915, handle);

         munmap(addr, sz);

Note that vma-merge subtest fails due to some other issue, but still
is good enough to reproduce this issue and test the fix.

Niranjana

>
>Regards,
>
>Nirmoy
>
>
>>
>>Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>>
>>>
>>>>Suggested-by: Matthew Auld<matthew.auld@intel.com>
>>>>Reported-by: Niranjana 
>>>>Vishwanathapura<niranjana.vishwanathapura@intel.com>
>>>>Signed-off-by: Niranjana 
>>>>Vishwanathapura<niranjana.vishwanathapura@intel.com>
>>>>---
>>>>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 4 ++--
>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c 
>>>>b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>>>index 11125c32dd35..2f7804492cd5 100644
>>>>--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>>>+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>>>@@ -369,14 +369,14 @@ __i915_gem_object_release_shmem(struct 
>>>>drm_i915_gem_object *obj,
>>>>        __start_cpu_write(obj);
>>>>      /*
>>>>-     * On non-LLC platforms, force the flush-on-acquire if this 
>>>>is ever
>>>>+     * On non-LLC igfx platforms, force the flush-on-acquire if 
>>>>this is ever
>>>>       * swapped-in. Our async flush path is not trust worthy 
>>>>enough yet(and
>>>>       * happens in the wrong order), and with some tricks it's 
>>>>conceivable
>>>>       * for userspace to change the cache-level to 
>>>>I915_CACHE_NONE after the
>>>>       * pages are swapped-in, and since execbuf binds the 
>>>>object before doing
>>>>       * the async flush, we have a race window.
>>>>       */
>>>>-    if (!HAS_LLC(i915))
>>>>+    if (!HAS_LLC(i915) && !IS_DGFX(i915))
>>>>          obj->cache_dirty = true;
>>>>  }
