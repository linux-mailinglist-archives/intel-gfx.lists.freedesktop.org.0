Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C527C456A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 01:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F48A10E3F9;
	Tue, 10 Oct 2023 23:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EBE410E3F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 23:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696980334; x=1728516334;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7SdenyuGS0b8DrZffPK28SyBaAbLRZ6B4g8tAQfvIIs=;
 b=g21H3yILWN1dtUtPySf6wpMXVZmjJPUS4Vqlf+KgMOmiguljfMvywEwX
 IbOalcJZvz3jXbWBD20mMtFnQWhXhYOX551kQAhAat0hmEXs0kNABxNLx
 nW5tz0qK1iIMLyPjw7rhYiBRWK9ZY76PxaUQXDSGg7EkjAJEUd5CbRQby
 l99xHI4VdDu7Jst4CKb8VJ0kQOCi4ejITBwmES4IMzA+KizlSRR4DX0pO
 CqI/VorblngVDiURyd8Ib870vSq2Q8ZgSKPaKZ9EnRpD0le/cVVTQy3AD
 AajROn2hXhpl+Dq6PxW1Run8SkF+hc4qyFIvDjDUBFsPttB2dDD5ziSeo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="3123251"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="3123251"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 16:25:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757317697"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="757317697"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 16:25:33 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 16:25:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 16:25:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 16:25:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Il7B9bUWbjTyAQ4CTFmoURpnWKlso2qoA4DMXexEWt8Qlv00eT7OTXF6jyGE5zWnfCHfhSJWngmwdJ6WgNGqYmwM+M9q6q3Wgt+B4uMmE0yCA9TH32oLYRKO7Ba16KgSYkOZWoZYeO/r/TTM9MR+WP1rSpCuiwZjYibMXz2N4hAkXzMuXgHCSuhjYlZgDrffxR7EvISYj5OawDxQYgWRbba5a0J1StF0B8d98QeHIZmYUrTIsPA/Pe7inwUWNu1mXcAsjx//Sn5DGKSs40zwemI82PYppCeH9wJz07PS73qMIbdPeyrw6C9gxaFkTskpntcEcARJyt23T6VMQ0EvJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q+E7mG3nYlRkJn4zd5i5es3OkdwaCnqNZXMp+tha4Bw=;
 b=UtJWZMChDHe+3c/rWDVNJY6p547n2fUQCehZumadbfKMYRXu9TYg2qE4gnOtOA/dvTq74dCP8lrgOXKeIj1ZQlzalHZyMdpA4PJFdECSTNy9LadxzGlcpcIJ/K1+XXr1bdqt7P3CVzIs5sFBB9Qse4iaQeplI5nOYcfchFHkfSadaOHHalT1QEe23sXXN//m+bqthoOOI/3f6sC4E+S3pBllEL5QX5rEgmjGBH0f2GJO0IrHBTb9KPHdyYQySEvv52HDijzTgWTnGl1jaO9a45yd6FuUXjJgBs5DeKx58RVVoMCIu/N2F1OE2X05CSL4193XXtlqH1e47EuX65x3oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH8PR11MB6707.namprd11.prod.outlook.com (2603:10b6:510:1c6::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 23:25:30 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 23:25:30 +0000
Message-ID: <b3b4ce98-5e10-4f63-ae5c-66d722c71313@intel.com>
Date: Tue, 10 Oct 2023 16:25:25 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
 <20231010150244.2021420-4-jonathan.cavitt@intel.com>
 <04d0b046-0c72-4df7-b027-385ea825eae3@intel.com>
 <CH0PR11MB54441DB1D43DCBE7ACC1F338E5CDA@CH0PR11MB5444.namprd11.prod.outlook.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <CH0PR11MB54441DB1D43DCBE7ACC1F338E5CDA@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0053.namprd03.prod.outlook.com
 (2603:10b6:303:8e::28) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH8PR11MB6707:EE_
X-MS-Office365-Filtering-Correlation-Id: bbe7be0e-2646-42d4-8c6b-08dbc9e8319a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4BvG4GxafJ2cKCmEO52tvM2LKyY46PmeYIuMzWLsVWnFBy6hBBAjbLkgegwMGUycK4V+H9VPZl6eGnBTki+RSsSe58qo16dsOFYqg0lzNFQzbgZIv72jwuAYhCe/+IA7nK8FFaan1rh5rqYIGQpjbgR9ED4pga/0FQH4hINh/cN+j8ey3YXEYcGPl/o+R/os9WWHbnlVuU8yettN9lqlvw5NJ9axwrBf7HpRnjkPeYWByu+zy8U1lKnKQnn1RZrghnmRZETkdLM7Oa59YQcui4htWy46AKxWfBu5hrBvqaxaph6lvEtBr1F9Tw/ubE9zreVc9uOreei4BTSjgNHJ+9Vbugwi4wTPJhbAyfBQdvvOiedbvPVrk1xKf5AiFB4eSIbHEtOU2Y11WPCKukRNgjXRCeX3R0IAu7Yjr6sF8Jkj3J0FzNW6FnCT3HB78bVJ04Zd38TSsim/AC21Rs5n3tSywpH7lsM8TDtgOW7LSRuTilwHQhEiDuXf56CDjW0Rd057hGtdv7SXKSpDucKYDW+YCC/EVwOWINspgl8t+rlPx/uOmMVxi+0qMBbrAy7s9ah9Y716I6UiqlZnPXgZMVXzQs4c7/kDUs7OIsvchAWvRhP4H3NaAuKhVWZpRT6lirTHoKi5UFnLhhgovQHhkg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(39860400002)(376002)(136003)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(82960400001)(2906002)(8676002)(8936002)(5660300002)(4326008)(86362001)(36756003)(31696002)(478600001)(31686004)(6486002)(83380400001)(26005)(53546011)(6512007)(6666004)(6506007)(2616005)(316002)(54906003)(66476007)(41300700001)(38100700002)(66556008)(110136005)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUE1djlIZVE4TU16a2tuUTYzaTlacFhCSFhSZ0JWUHd6Z0ZaVlZqR0FsQzJK?=
 =?utf-8?B?Z0VUb2RXVFVPM05zWkl0M3ZVbkdETEZnRHVtTC9Yb1FYWDZET0EvNkxOUUhG?=
 =?utf-8?B?bkV0QWJIMk1aQXR1SlhZbWhSQUlaU2p6OXZXQ3BIWndQRzV6YUo4OUdYMVIy?=
 =?utf-8?B?RkdCYmNrWDFBaUpKYUdKNDkrRjkwUS8zOEpUVlV5Qk9KM3o1SjhRdXNGSXpZ?=
 =?utf-8?B?SFBXZnQ2eVFDSnYvOGJHblRtclFZS0prcFFwZ0JqRXlIczVXN3phSmJIK3h0?=
 =?utf-8?B?TWdCdXdLV0dOZytlc2ZET0xSOGl5anQ0cExkSWdpVGZOMUZoWk9ER3lkNDJY?=
 =?utf-8?B?bXNybWJ4c0x6ekpkb1pWYzVRbisvQVdnR2NmTE55aHo0aDBGWlgvbnlsb0w4?=
 =?utf-8?B?MlBPdUJ4U3pKTDVzdm50K241M2t0QnZ4MG9Vd2RxWFlyemk2WnZ6VXlLVytQ?=
 =?utf-8?B?dEI4NDJiWGhlV2xVbG9scitDL24zUFV1MHR4ZFR3QkhtNW9IQjUvVTVuUWpp?=
 =?utf-8?B?a0dlMkF0UU1BdjZvU0k2bTlpcGxPVEgvcTY2Zzc2YlpBNGJrYTRsOUh1a0Vw?=
 =?utf-8?B?YnpKMXJ2WWFiOGZRbERXd1RoTjV0UTdxZExObWNZV3hSVVdkUmFrcmUwMk9r?=
 =?utf-8?B?aUhFN1B3Q3RKMHRmRHVLVHI0S2FaMDJNY1JxVTM3N2tyMmZERWxwQVVybGM1?=
 =?utf-8?B?d1VlOThHM1pCdTYvT0dlTkhNbFY4SHg0WWpockJTMzMxdUJRWmpaajBsNFRS?=
 =?utf-8?B?MENaSXByci93b0lLZSsyek1yUGVDbHpuai9kalZ0VmVLb3R2eElrd092ZGJy?=
 =?utf-8?B?YVFRM0FoSkhYdlJFNXZ6cU9BZTcveUNtM1BFTjNYbTZCd2EwVmhzQ09wOGU4?=
 =?utf-8?B?M2tSOG90YUdSc2pDdnFpTnAxeE1rVU5jTHdtT3JOQkRaaDgyelBBMzRlWDU5?=
 =?utf-8?B?ZWMreWpQeUo0SWl3Nld2aHFtbDVZalR2bFpnQ0hnc0FQUjRQd1R6SUlxTFR5?=
 =?utf-8?B?dHFIZmFUZi8xc0c0N1AvOUdJS0VPeHN5NmExN01vMDNYdWRGanBrSVVLN3V5?=
 =?utf-8?B?VVZLN2tZVWR0NDZGbFRDRlE1c1lRUlhoeWQrYU9jdnlkOVJqZHI2WnJ0RVJG?=
 =?utf-8?B?VDBQeks0VHltZitnOTBldzJzUDRMeE5MRnE4ZHRZNEZUNXlDMzZzbkJwL3ow?=
 =?utf-8?B?MENwK1Y5Q0hBMWt0RzZ3Tk1mY0M4dldaSmlRZjNjOFRoKzIrWmpoVXV5ZVZC?=
 =?utf-8?B?cUlxNmFBNW9vYnA1aTBELytJRFZDNXlVMkZ5TUlqK043RUNha25udUhkTjhP?=
 =?utf-8?B?MmM4M3JGRHVZK0lJU3N0bVpSaDd3TCtiSWQ4aFdodU85U1hWQlVPQ3VqVmpi?=
 =?utf-8?B?RDN5bjVBOEhCSytiZmpJZjhSWGdwMExMYWJCTWN0RzhjUTdhbk5ETjFzSGdF?=
 =?utf-8?B?Q1V0VG0wYWZtM1FkU0JGR0prVWVrYkhwV0c1a2ErUWJ6TEFPRCtzUUJxNWxw?=
 =?utf-8?B?cTFCdnRTdTFPa0ZOSWEzcWdsRXhacDJlZzE1SGlBYVpZSVFhSjJlaGY3RmJH?=
 =?utf-8?B?aFVLbVRDUmRSR0Y4OFNjOUppd05sOVgxOHh1Y3NSbnZ0OGNPWUhnc1VPNGpn?=
 =?utf-8?B?WWZsdldLUEF3OU9sdUhIQzBoMS9zUC8rR0QrTlFyeENvRnRocEZ5bEw2Z1Za?=
 =?utf-8?B?eGF2MzYwV0xqN3JHeUo4M1ErdGRpZzFzM0RIQ3ZPUUR5TXpGMWd1VGs0Sk9C?=
 =?utf-8?B?dGlpN3JjRTJXdGFGOUNxTnprcCs2Z1hqZlRJM0RVUGpJd1FnTDZZMHNvTTVn?=
 =?utf-8?B?Wk5sakp4UkZUQ0ZyaU5INC8ySnQzQ2E1NjdLMzllWFNTb1JoZDV1VEloKytu?=
 =?utf-8?B?UXNMbktnQ3pMT052dHQ5ZUMyTUplbVg4blJTQWJ2b2Y2aTlGNThUa21RSG5t?=
 =?utf-8?B?WDRPeURvS1pxSkNwZFVPWFlzUUNjcTF4NU5MTWszYVk4NEF5SXNpaDNQSVlw?=
 =?utf-8?B?bGkyZldwNFRqVkxZKyszRjZzWnBhbFhtVERhY3NWSWUwWkM0MjcrMm1WeGMv?=
 =?utf-8?B?eS9LTjdOSzFUOTB1cE95TU12OVY0OENaWDV1b0NVa3daZ2twNHkxTnlSbHZJ?=
 =?utf-8?B?RVRFTW1qRi8rMEZQSHNhd2V6ZWg5RmkvN3NxMUw2WlZxODBscmdzb0RybVVP?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbe7be0e-2646-42d4-8c6b-08dbc9e8319a
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 23:25:30.7375 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eWaQDY4IVY7If/aYp48n+lyeVEpTiYcZ2b1snKcrKX73Ag1qQ6gHYn10GLTgqROXtR5v5TtFPD4uZI0CiNZgFjM6h/7dAqpARKr01OX6BZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6707
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 3/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/10/2023 15:30, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Harrison, John C <john.c.harrison@intel.com>
> Sent: Tuesday, October 10, 2023 2:51 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; chris.p.wilson@linux.intel.com; Iddamsetty, Aravind <aravind.iddamsetty@intel.com>; Yang, Fei <fei.yang@intel.com>; Shyti, Andi <andi.shyti@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>; Krzysztofik, Janusz <janusz.krzysztofik@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; tvrtko.ursulin@linux.intel.com; jani.nikula@linux.intel.com
> Subject: Re: [PATCH v10 3/7] drm/i915: Define and use GuC and CTB TLB invalidation routines
>> On 10/10/2023 08:02, Jonathan Cavitt wrote:
>>> ...
>>>
>>> +static void fini_tlb_lookup(struct intel_guc *guc)
>>> +{
>>> +	struct intel_guc_tlb_wait *wait;
>>> +
>>> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
>>> +		return;
>>> +
>>> +	wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
>>> +	kfree(wait);
>> There was originally a error being printed if wait->busy was still set,
>> i.e. someone was still waiting on the object that is about to be
>> destroyed. There were review comments about that being broken in an
>> intermediate patch set. I don't recall seeing any explanation as to why
>> the error message should be completely removed.
>
> The GEM_BUG_ON was downgraded to a debug message in an intermediate step
> at the request of one of the reviewers (this was a version 8 change, IIRC).
> We concluded that if the execution of the system was not impacted by the debug
> path, we shouldn't bother with the debug message at all.  So we removed it.
> I think it was Fei or Andi that suggested it?
> -Jonathan Cavitt
I recall it was me that said it should be an error message rather than a 
BUG_ON. And my point is that I don't see how this is a 'debug path'. If 
a waiter is still waiting on the wait object that is about to be freed 
then that is a potential dangling pointer dereference. That totally has 
the possibility to impact execution of the system.

John.

