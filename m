Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE4171A026
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 16:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EE0A10E556;
	Thu,  1 Jun 2023 14:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F5910E556
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 14:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685630094; x=1717166094;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=KOorPGzrMPwhkwaXXzAJkTCOxnTjn/spYxQvTaVbjHY=;
 b=VdncaYAxNU1mNup7jKgu0KlRdHUKKzwPvApSGcWJVFtDm3OCJ5QR3USJ
 H9s9TTLHgN2ktLzmeKLaLpPiKNPZmOjvOdwjlKhkljS7hEIqfabmYRqQx
 GDpGvfr5H9uEQCmUbYuzMz/99obWt77sayGkD9KVkSK9z/zcpJ4JyHWLM
 DLOi/OQ6ljVUUxN2uvnJm3Xn/M6U4v5VPXsQYBOvBX6eF3Nc2Gei9ddst
 pKaNVtgge62Fmh6RnIXkxBh8EQFfqNRJhSaHKtMnwKhHuLloHXlTHsXHV
 VU+VC+PM1KOfkI8W7PdvwXvcUURxKUtNxSgXgU9euNpzjaEOGHZ4tTX2t Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="340191331"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="340191331"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 07:34:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="797170355"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="797170355"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Jun 2023 07:34:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 07:34:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 07:34:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 07:34:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWvCvalFLxywYAzs7AflsrZFa+94rOtxkzEVTQTvuTcvyUs+ffi0wP7MJIf8pIHyZaFw3aQ20Dw9FoVnfiRQCErqI/Tk3zhnwlHAnHzQ6CQbT0wViy9KsScIZ7p06UQcX2ImnQ9ZGYSj3wCW1M07WXKieJaOJUhzXl00n/L2bcD/Mcfcgxt3oiHNrf/Bf8vm850TEX47agLTpLxDbpOg46ZINokeYXjYWN/JvH1wnJ4hdVpAZ0BfFRRZ/rm5/6/ef2ePy1O+xhu2cjN7sQa451bFRvTEUdmqBp5S6JsxxdUqleOn5y2xObetWue0Ceo1krYA7CTx/vyN/ux7jjc+SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vym0Ywfoz8sB4Vv+oeYQ03IhXzRzjZMeTjbm3e7n7Yc=;
 b=FePK6yW4G9WJxTbG0/eSsGccdvY3NrJQd3y+nJlJWaH0OQoOqvkFPweuwti8aBCFMTZgfuKc2Rd/QzYcO7zZCCKiip00cvR0HiWC3HjsyPXDiSezAXuP6yCTKl7kZGFYnw4mVfls3ONQUlysHufWDc2QA9sHqnPMsx31YlnrHIZeN6GbGA8725/5oEOlOQbw7sjLyQ0F659W8fTUWVBu6mS3UK6bqpgSMBzFKIcHHuZf8KgjOsShR7ts2yh0BxZiS4AKROaTsR4seRCBV2AG0lSt9pKaVXznqEOLMpplp/q/+0scQz5kFKMQR28QfvZohzYXm0mvzckBY+bAo9hIxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH0PR11MB8142.namprd11.prod.outlook.com (2603:10b6:610:18c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.24; Thu, 1 Jun
 2023 14:34:49 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%4]) with mapi id 15.20.6455.020; Thu, 1 Jun 2023
 14:34:49 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230601121923.19775-8-vinod.govindapillai@intel.com>
References: <20230601121923.19775-1-vinod.govindapillai@intel.com>
 <20230601121923.19775-8-vinod.govindapillai@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 1 Jun 2023 11:34:43 -0300
Message-ID: <168563008315.3435.9970481039632784214@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0041.namprd05.prod.outlook.com
 (2603:10b6:a03:74::18) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH0PR11MB8142:EE_
X-MS-Office365-Filtering-Correlation-Id: 81bd073e-deda-4737-3d2c-08db62ad5a79
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N6ZlKnvMqfWaqfndF9MadtZBj+G9uFLTtVov6aHKZQDFPDA9FCKiQEpxMN76UfE0neLLNZ78IeNZtDdhmOPzbHa8oDcYVKSca6UGMLQlqREUvygHpjlYuIe4EwV7SnZMgUEIGi6fHx/JTEbzbA1K9BYj18qALbtwmNRyfES6hHyg1bnGAcy3igNgCy4ND0eJNEY6EXSlqi4wFsJWGcRuJcbJXwglw2DVodA5FzS3h8Ku7rwa7l0WYoS936vFNgA9R4z4TjAi2SfFRXZCCDrSBwCP8nAXxR5TPw3gawAWbY3tKq3W8uI1QTU1JamG3JwTwEaeZrdOHM1FQ1rJSYS3xsxzNzZ9VnRpO12/+ggyTZazWV+KH0kPGHn7yXAN/8Yxs2VQBLrjtW2SQGQfd31lj1rf0u6zyoRxBlCzNFG/vJu2qbtrk6B9yvEr6ZtY1PlkjNtU2nHDY35Hr6S4S41UosWFCd7XlOh9mB1F3NUlXvNK0fN+QxVO94RIafyF2P73OYTu1cSNeCRIg7MB25UztlgODPSzi9vhcc5q4Q/9OGzWqmQpDt3qumoeN1sYduoG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(346002)(136003)(39860400002)(396003)(366004)(451199021)(8676002)(83380400001)(186003)(6666004)(2906002)(4326008)(66476007)(316002)(30864003)(6486002)(66946007)(478600001)(66556008)(26005)(44832011)(6506007)(6512007)(5660300002)(107886003)(9686003)(41300700001)(8936002)(38100700002)(82960400001)(33716001)(86362001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekMxK0MwbWdETkx1S2IzbzBlTWt2MkdBbit0QS92MHlyM1JEZkdxc0N3ZmtV?=
 =?utf-8?B?SUxjY05ZczZjRzQ2YjE4cGgwTXNEVjVIOXU5OEpjWjdKVzFVWFhWQzROSE42?=
 =?utf-8?B?bk03dkxZU1E0ZG5PbU5sSXNsM2NvUEg5S05sYWpQMG9oS2diY2xGWWJSSGdZ?=
 =?utf-8?B?WHNDNTB5YlpzeWIvLytDNHRqMHRpS3lxdnNYM04rUmRNT3lTcTMvVThMVkVn?=
 =?utf-8?B?RUlkK1I0V3hUbmpUTFFDY0Fqa2R1cGJWR0hsVzFMQ25ZWVk5VVpYL1dydXc1?=
 =?utf-8?B?dlhMdks3OENGWjBqYWI4QWVHUFE5RkladlQzVHgvRzkwMG1Tb2RQV292TTha?=
 =?utf-8?B?Nk10a0hUOVlsVkl5Vnh4SkJzQzVPK3dqUWNiOVNmQ2lUeTFPRlVBWU14UDFm?=
 =?utf-8?B?Wms1VnhOeU44eEF2ZXlCcm4yMTlTYXkxK3RFclg2WHFZNlFXTXBiM25VMXRX?=
 =?utf-8?B?Y3g1Vm9qTDdUYlgyNnRaZ3UyVEc2cEJMNitTMVZ6RURDcnV5Ukw5QkZwNjZI?=
 =?utf-8?B?SWIwbERBSHc5MUxoRmhWVmQ5VkNMYStzQkdHRnRwZVBiSGZIOWthUEx4Skl5?=
 =?utf-8?B?QnVraFUrZ2RjZnhhQUVnRG9Qc3UxTjlKdGl6SVVrdHJ1dVdVRHlCRVpJeFhR?=
 =?utf-8?B?Yi85V0o2N0Q4RmhBOEwwV0piRWMzeTZxQmxjMGxGaXd1YnZBT2lUeEhDOHFW?=
 =?utf-8?B?Z3VIOU9nYzJ4NjZXZmMvMGdNRWRtWDFVT0pGOWZiVTNZVWlSSnUxK3NNN2R6?=
 =?utf-8?B?Y0paajFIeGRhWVVVVnZqa2ZabGtCbStDZFRUcGhnY0NQczRzMXRGdTJaZnQ1?=
 =?utf-8?B?anU1UitFUm5wZXJGU0hWalFoYTBzY0Q4dDIxOHVhRlM2SG80WC9wSitMWlU1?=
 =?utf-8?B?RGhqaG5VUjd6WGw3cFNkYlRJTVpmQXNYaUhZMVNIamxwYXgwWEplazBmNXJt?=
 =?utf-8?B?YVIxSndXWHNsbUUvQTV1ck1rTTV4ZVdON3JDZnRiamJ2RGhtZFJYdnYzQ2Rn?=
 =?utf-8?B?VmNXUllURE9rQWpUUTRnN2g5VG41QWNWaU1rTHVFL3h3SFBZSFJMRXVxcnIx?=
 =?utf-8?B?ekZQTHBQVExScEd2cGxvcHRGUEtNdnNKN1ZKc3hVUHRMY2tGdUdTYmxvZnZH?=
 =?utf-8?B?WmJ5QjVuQkEwN1JEd2NsNFNINFBqSEV0TnRPUUlXYXdoR1AvVFhqZEZESlo3?=
 =?utf-8?B?Ym00SyttOFk2TzVOcXBtbDh5VVh5cmFQR0dkaHdJWGpvN0M5N0FYVmJjSEJQ?=
 =?utf-8?B?ZlBSNi80UEN2Q0lod0p0NThWU0poYjhoZVlQUDk4YjhEWHQrVDlmVk5GVEcz?=
 =?utf-8?B?WXVDbHo3dFFyU3ZMUk92VU5aWkpoNkcyaGlaS0JlbXJWQWFVYWw4a2UvcTFB?=
 =?utf-8?B?TXpRTEF0OEpyR0tCdWNydDN0Y0JRSXVBOU1Mc2RnSzdkcGo5OGNtV0w2YWJD?=
 =?utf-8?B?anRxVDFQSlFsQ0RyVk5vWTJucVptSERLSTIzNkk0YVRjbzUwZjdQWHoxeVVl?=
 =?utf-8?B?N0R2aGIwZmxTa0twWUE1TTd3bGtCQnpFU0VrRFBJVWl2Wm9DLzJOUWFyTWU4?=
 =?utf-8?B?T2VWUVZ0STAvSjRsSzJTci9pNFB3T2h1bnVUQkJ3RUM4K295QXdnQ0g4Z1Vt?=
 =?utf-8?B?d3ozbDM1SHNaREZiWW9pT1hFek00d3pGblViZkp6Qi9vT2EyNEFwaFd4WjNn?=
 =?utf-8?B?T3JNenBCem91YkNqOFpZb0FaWElNTG9lbnFJcmo0TXIxTnROMHdEYkM2MlFj?=
 =?utf-8?B?SHBtcnVlS0RMakUrMXUyaHpEcW5WN0U3STdXcS9RMWt1aWdBZzVMMklvaXVm?=
 =?utf-8?B?S3p1RDFTYTBuWERHeDVZcDdTQzFRN2ZGc3NhYlhTS05Jbyt0UEJNaGNmcjN5?=
 =?utf-8?B?U0tMT0tpZUNNQkRhUk1XR1hqL2oySUtYU1JlTWMwVWMzUjBPUWNxSUs4elRq?=
 =?utf-8?B?U1BPYVhnL2VYM2UycTJsL1A4ZUFSRXM4T0tlUE4wUlNDVEdLQjdWNWhBaDVn?=
 =?utf-8?B?b0hLVng1N0QveWY4VDlVeDBYWnBUaFBIdVZQYmttTWtVYTJZd2kzVVN5cDNm?=
 =?utf-8?B?bEJHN3YxMkI2RkdkeHpDcTdIdU96ZmZNL2NramtVWnJkbGFPNU1jR3B4TDQr?=
 =?utf-8?B?U2JBT1pBamQzNnVMbnV5Rno2eDJtMld4TXFPL214OXBsZWpKVUJqRDJNWlZ2?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81bd073e-deda-4737-3d2c-08db62ad5a79
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 14:34:49.5821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F6DfD8068H/qvROlxe387Gq9LSAf4lC6vQDKs+p75hxfna/JWsi6VouTiO/Fn+4ORvee8FJSpxAQrm71ybu3VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8142
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 7/7] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Vinod.

I have some comments for this version, please see them below. With those
fixed,

Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

Quoting Vinod Govindapillai (2023-06-01 09:19:23-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>MTL introduces a new way to instruct the PUnit with
>power and bandwidth requirements of DE. Add the functionality
>to program the registers and handle waits using interrupts.
>The current wait time for timeouts is programmed for 10 msecs to
>factor in the worst case scenarios. Changes made to use REG_BIT
>for a register that we touched(GEN8_DE_MISC_IER _MMIO).
>
>Wa_14016740474 is added which applies to Xe_LPD+ display
>
>v2: checkpatch warning fixes, simplify program pmdemand part
>
>v3: update to dbufs and pipes values to pmdemand register(stan)
>    Removed the macro usage in update_pmdemand_values()
>
>v4: move the pmdemand_pre_plane_update before cdclk update
>    pmdemand_needs_update included cdclk params comparisons
>    pmdemand_state NULL check (Gustavo)
>    pmdemand.o in sorted order in the makefile (Jani)
>    update pmdemand misc irq handler loop (Gustavo)
>    active phys bitmask and programming correction (Gustavo)
>
>v5: simplify pmdemand_state structure
>    simplify methods to find active phys and max port clock
>    Timeout in case of previou pmdemand task pending (Gustavo)
>
>v6: rebasing
>    updates to max_ddiclk calculations (Gustavo)
>    updates to active_phys count method (Gustavo)
>
>v7: use two separate loop to iterate throug old and new
>    crtc states to calculate the active phys (Gustavo)
>
>v8: use uniform function names (Gustavo)
>
>v9: For phys change iterate through connectors (Imre)
>    Look for change in phys for pmdemand update (Gustavo, Imre)
>    Some more stlying changes (Imre)
>    Update pmdemand state during HW readout/sanitize (Imre)
>
>v10: Fix CI checkpatch warnings
>
>Bspec: 66451, 64636, 64602, 64603
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                 |   1 +
> drivers/gpu/drm/i915/display/intel_display.c  |  14 +
> .../gpu/drm/i915/display/intel_display_core.h |   9 +
> .../drm/i915/display/intel_display_driver.c   |   7 +
> .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
> .../drm/i915/display/intel_display_power.c    |  14 +-
> .../drm/i915/display/intel_modeset_setup.c    |  18 +
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 555 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  56 ++
> drivers/gpu/drm/i915/i915_reg.h               |  36 +-
> 10 files changed, 727 insertions(+), 6 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index 1c9ed4c52760..2cd8de174bf6 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -269,6 +269,7 @@ i915-y +=3D \
>         display/intel_pch_display.o \
>         display/intel_pch_refclk.o \
>         display/intel_plane_initial.o \
>+        display/intel_pmdemand.o \
>         display/intel_psr.o \
>         display/intel_quirks.o \
>         display/intel_sprite.o \
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index f51a55f4e9d0..5cbf5eae2414 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -99,6 +99,7 @@
> #include "intel_pcode.h"
> #include "intel_pipe_crc.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_psr.h"
> #include "intel_sdvo.h"
>@@ -6352,6 +6353,10 @@ int intel_atomic_check(struct drm_device *dev,
>                         return ret;
>         }
>=20
>+        ret =3D intel_pmdemand_atomic_check(state);
>+        if (ret)
>+                goto fail;
>+
>         ret =3D intel_atomic_check_crtcs(state);
>         if (ret)
>                 goto fail;
>@@ -6997,6 +7002,14 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>         for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>                 crtc->config =3D new_crtc_state;
>=20
>+        /*
>+         * In XE_LPD+ Pmdemand combines many parameters such as voltage i=
ndex,
>+         * plls, cdclk frequency, QGV point selection parameter etc. Volt=
age
>+         * index, cdclk/ddiclk frequencies are supposed to be configured =
before
>+         * the cdclk config is set.
>+         */
>+        intel_pmdemand_pre_plane_update(state);
>+
>         if (state->modeset) {
>                 drm_atomic_helper_update_legacy_modeset_state(dev, &state=
->base);
>=20
>@@ -7116,6 +7129,7 @@ static void intel_atomic_commit_tail(struct intel_at=
omic_state *state)
>                 intel_verify_planes(state);
>=20
>         intel_sagv_post_plane_update(state);
>+        intel_pmdemand_post_plane_update(state);
>=20
>         drm_atomic_helper_commit_hw_done(&state->base);
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/g=
pu/drm/i915/display/intel_display_core.h
>index dd8e08c8598f..8d2243c71dd8 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -345,6 +345,15 @@ struct intel_display {
>                 struct intel_global_obj obj;
>         } dbuf;
>=20
>+        struct {
>+                wait_queue_head_t waitqueue;
>+
>+                /* mutex to protect pmdemand programming sequence */
>+                struct mutex lock;
>+
>+                struct intel_global_obj obj;
>+        } pmdemand;
>+
>         struct {
>                 /*
>                  * dkl.phy_lock protects against concurrent access of the
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers=
/gpu/drm/i915/display/intel_display_driver.c
>index 60ce10fc7205..dc8de861339d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -47,6 +47,7 @@
> #include "intel_opregion.h"
> #include "intel_overlay.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_quirks.h"
> #include "intel_vga.h"
>@@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i915_p=
rivate *i915)
>         if (ret < 0)
>                 goto cleanup_vga;
>=20
>+        intel_pmdemand_init_early(i915);
>+
>         intel_power_domains_init_hw(i915, false);
>=20
>         if (!HAS_DISPLAY(i915))
>@@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i915_=
private *i915)
>         if (ret)
>                 goto cleanup_vga_client_pw_domain_dmc;
>=20
>+        ret =3D intel_pmdemand_init(i915);
>+        if (ret)
>+                goto cleanup_vga_client_pw_domain_dmc;
>+
>         init_llist_head(&i915->display.atomic_helper.free_list);
>         INIT_WORK(&i915->display.atomic_helper.free_work,
>                   intel_atomic_helper_free_state_worker);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 3b2a287d2041..0b3739310f81 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -18,6 +18,7 @@
> #include "intel_fifo_underrun.h"
> #include "intel_gmbus.h"
> #include "intel_hotplug_irq.h"
>+#include "intel_pmdemand.h"
> #include "intel_psr.h"
> #include "intel_psr_regs.h"
>=20
>@@ -827,12 +828,27 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_p=
rivate *dev_priv)
>                 return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
> }
>=20
>+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
>+{
>+        wake_up_all(&dev_priv->display.pmdemand.waitqueue);
>+}
>+
> static void
> gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
> {
>         bool found =3D false;
>=20
>-        if (iir & GEN8_DE_MISC_GSE) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+                if (iir & (XELPDP_PMDEMAND_RSP |
>+                           XELPDP_PMDEMAND_RSPTOUT_ERR)) {
>+                        if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
>+                                drm_dbg(&dev_priv->drm,
>+                                        "Error waiting for Punit PM Deman=
d Response\n");
>+
>+                        intel_pmdemand_irq_handler(dev_priv);
>+                        found =3D true;
>+                }
>+        } else if (iir & GEN8_DE_MISC_GSE) {
>                 intel_opregion_asle_intr(dev_priv);
>                 found =3D true;
>         }
>@@ -1576,7 +1592,10 @@ void gen8_de_irq_postinstall(struct drm_i915_privat=
e *dev_priv)
>         if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>                 de_port_masked |=3D BXT_DE_PORT_GMBUS;
>=20
>-        if (DISPLAY_VER(dev_priv) >=3D 11) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+                de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
>+                                  XELPDP_PMDEMAND_RSP;
>+        } else if (DISPLAY_VER(dev_priv) >=3D 11) {
>                 enum port port;
>=20
>                 if (intel_bios_is_dsi_present(dev_priv, &port))
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 9c9a809c71f1..db827cf3c9ca 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -20,6 +20,7 @@
> #include "intel_mchbar_regs.h"
> #include "intel_pch_refclk.h"
> #include "intel_pcode.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps_regs.h"
> #include "intel_snps_phy.h"
> #include "skl_watermark.h"
>@@ -1082,20 +1083,29 @@ void gen9_dbuf_slices_update(struct drm_i915_priva=
te *dev_priv,
>=20
> static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
> {
>+        u8 slices_mask;
>+
>         dev_priv->display.dbuf.enabled_slices =3D
>                 intel_enabled_dbuf_slices_mask(dev_priv);
>=20
>+        slices_mask =3D BIT(DBUF_S1) | dev_priv->display.dbuf.enabled_sli=
ces;
>+
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_pmdemand_program_dbuf(dev_priv, slices_mask);
>+
>         /*
>          * Just power up at least 1 slice, we will
>          * figure out later which slices we have and what we need.
>          */
>-        gen9_dbuf_slices_update(dev_priv, BIT(DBUF_S1) |
>-                                dev_priv->display.dbuf.enabled_slices);
>+        gen9_dbuf_slices_update(dev_priv, slices_mask);
> }
>=20
> static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
> {
>         gen9_dbuf_slices_update(dev_priv, 0);
>+
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_pmdemand_program_dbuf(dev_priv, 0);
> }
>=20
> static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
>diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/=
gpu/drm/i915/display/intel_modeset_setup.c
>index 5ff99ca7f1de..87f41040916b 100644
>--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>@@ -26,6 +26,7 @@
> #include "intel_fifo_underrun.h"
> #include "intel_modeset_setup.h"
> #include "intel_pch_display.h"
>+#include "intel_pmdemand.h"
> #include "intel_tc.h"
> #include "intel_vblank.h"
> #include "intel_wm.h"
>@@ -153,6 +154,8 @@ static void intel_crtc_disable_noatomic_complete(struc=
t intel_crtc *crtc)
>                 to_intel_dbuf_state(i915->display.dbuf.obj.state);
>         struct intel_crtc_state *crtc_state =3D
>                 to_intel_crtc_state(crtc->base.state);
>+        struct intel_pmdemand_state *pmdemand_state =3D
>+                to_intel_pmdemand_state(i915->display.dbuf.obj.state);

s/dbuf/pmdemand/?

Also, a cosmetic nitpick: maybe do this above the line with "struct
intel_crtc_state *crtc_state =3D"? Just so we have global state variables g=
rouped
together.

>         enum pipe pipe =3D crtc->pipe;
>=20
>         __drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
>@@ -174,6 +177,8 @@ static void intel_crtc_disable_noatomic_complete(struc=
t intel_crtc *crtc)
>=20
>         bw_state->data_rate[pipe] =3D 0;
>         bw_state->num_active_planes[pipe] =3D 0;
>+
>+        pmdemand_state->ddi_clocks[pipe] =3D 0;
> }
>=20
> /*
>@@ -661,6 +666,9 @@ static void intel_modeset_readout_hw_state(struct drm_=
i915_private *i915)
>                 to_intel_cdclk_state(i915->display.cdclk.obj.state);
>         struct intel_dbuf_state *dbuf_state =3D
>                 to_intel_dbuf_state(i915->display.dbuf.obj.state);
>+        struct intel_pmdemand_state *pmdemand_state =3D
>+                to_intel_pmdemand_state(i915->display.dbuf.obj.state);

s/dbuf/pmdemand/?

>+        u16 active_phys =3D 0;
>         enum pipe pipe;
>         struct intel_crtc *crtc;
>         struct intel_encoder *encoder;
>@@ -742,6 +750,8 @@ static void intel_modeset_readout_hw_state(struct drm_=
i915_private *i915)
>=20
>         drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>         for_each_intel_connector_iter(connector, &conn_iter) {
>+                enum phy phy;
>+
>                 if (connector->get_hw_state(connector)) {
>                         struct intel_crtc_state *crtc_state;
>                         struct intel_crtc *crtc;
>@@ -764,6 +774,10 @@ static void intel_modeset_readout_hw_state(struct drm=
_i915_private *i915)
>                                         drm_connector_mask(&connector->ba=
se);
>                                 crtc_state->uapi.encoder_mask |=3D
>                                         drm_encoder_mask(&encoder->base);
>+
>+                                phy =3D intel_port_to_phy(i915, encoder->=
port);
>+                                if (!intel_phy_is_tc(i915, phy))
>+                                        active_phys |=3D BIT(phy);
>                         }
>                 } else {
>                         connector->base.dpms =3D DRM_MODE_DPMS_OFF;
>@@ -776,6 +790,8 @@ static void intel_modeset_readout_hw_state(struct drm_=
i915_private *i915)
>         }
>         drm_connector_list_iter_end(&conn_iter);
>=20
>+        pmdemand_state->active_phys_mask =3D active_phys;
>+
>         for_each_intel_crtc(&i915->drm, crtc) {
>                 struct intel_bw_state *bw_state =3D
>                         to_intel_bw_state(i915->display.bw.obj.state);
>@@ -840,6 +856,8 @@ static void intel_modeset_readout_hw_state(struct drm_=
i915_private *i915)
>                 cdclk_state->min_cdclk[crtc->pipe] =3D min_cdclk;
>                 cdclk_state->min_voltage_level[crtc->pipe] =3D
>                         crtc_state->min_voltage_level;
>+                pmdemand_state->ddi_clocks[crtc->pipe] =3D
>+                        crtc_state->port_clock;
>=20
>                 intel_bw_crtc_update(bw_state, crtc_state);
>         }
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>new file mode 100644
>index 000000000000..fca99b84c835
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -0,0 +1,555 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright =C2=A9 2023 Intel Corporation
>+ */
>+
>+#include <linux/bitops.h>
>+
>+#include "i915_drv.h"
>+#include "i915_reg.h"
>+#include "intel_atomic.h"
>+#include "intel_bw.h"
>+#include "intel_cdclk.h"
>+#include "intel_de.h"
>+#include "intel_display_trace.h"
>+#include "intel_pmdemand.h"
>+#include "skl_watermark.h"
>+
>+static struct intel_global_state *
>+intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>+{
>+        struct intel_pmdemand_state *pmdemand_state;
>+
>+        pmdemand_state =3D kmemdup(obj->state, sizeof(*pmdemand_state), G=
FP_KERNEL);
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return &pmdemand_state->base;
>+}
>+
>+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
>+                                         struct intel_global_state *state=
)
>+{
>+        kfree(state);
>+}
>+
>+static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
>+        .atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
>+        .atomic_destroy_state =3D intel_pmdemand_destroy_state,
>+};
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_global_obj_state(state,
>+                                                  &i915->display.pmdemand=
.obj);
>+
>+        if (IS_ERR(pmdemand_state))
>+                return ERR_CAST(pmdemand_state);
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_old_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_new_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+int intel_pmdemand_init(struct drm_i915_private *i915)
>+{
>+        struct intel_pmdemand_state *pmdemand_state;
>+
>+        pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
>+        if (!pmdemand_state)
>+                return -ENOMEM;
>+
>+        intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
>+                                     &pmdemand_state->base,
>+                                     &intel_pmdemand_funcs);
>+
>+        if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>+                /* Wa_14016740474 */
>+                intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEO=
UT_DISABLE);
>+
>+        return 0;
>+}
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915)
>+{
>+        mutex_init(&i915->display.pmdemand.lock);
>+        init_waitqueue_head(&i915->display.pmdemand.waitqueue);
>+}
>+
>+static void
>+intel_pmdemand_update_max_ddiclk(struct intel_atomic_state *state,
>+                                 struct intel_pmdemand_state *pmdemand_st=
ate)
>+{
>+        int max_ddiclk =3D 0;
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state;
>+
>+        for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>+                pmdemand_state->ddi_clocks[crtc->pipe] =3D
>+                        new_crtc_state->port_clock;
>+
>+        for (i =3D 0; i < ARRAY_SIZE(pmdemand_state->ddi_clocks); i++)
>+                max_ddiclk =3D max(pmdemand_state->ddi_clocks[i], max_ddi=
clk);
>+
>+        pmdemand_state->params.ddiclk_max =3D DIV_ROUND_UP(max_ddiclk, 10=
00);
>+}
>+
>+static void
>+intel_pmdemand_update_phys_mask(struct drm_i915_private *i915,
>+                                struct intel_atomic_state *state,
>+                                struct drm_connector_state *conn_state,
>+                                bool for_old_state, u16 *phys_mask)
>+{
>+        struct intel_crtc *crtc =3D to_intel_crtc(conn_state->crtc);
>+        struct intel_encoder *encoder =3D to_intel_encoder(conn_state->be=
st_encoder);
>+        struct intel_crtc_state *crtc_state;
>+        enum phy phy;
>+
>+        if (!crtc || !encoder)

I believe the safest thing here is to use conn_state->crtc and
conn_state->best_encoder in the condition.

This falls in the same type of argument used for our earlier discussion
on the explicit NULL check for the pmdemand_state. In my humble opinion,
we should only use the result of container_of() for valid pointers.

That said, I see that checking for NULL *after* conversions is done in
other parts of the driver, so I think other developers might not agree
with me here. So, your call on this :-)

>+                return;
>+
>+        phy =3D intel_port_to_phy(i915, encoder->port);
>+        if (intel_phy_is_tc(i915, phy))
>+                return;
>+
>+        if (for_old_state)
>+                crtc_state =3D intel_atomic_get_old_crtc_state(state, crt=
c);
>+        else
>+                crtc_state =3D intel_atomic_get_new_crtc_state(state, crt=
c);
>+
>+        if (!crtc_state->hw.active)
>+                return;
>+
>+        if (for_old_state)
>+                *phys_mask &=3D ~BIT(phy);
>+        else
>+                *phys_mask |=3D BIT(phy);
>+}
>+
>+static void
>+intel_pmdemand_update_active_non_tc_phys(struct drm_i915_private *i915,
>+                                         struct intel_atomic_state *state=
,
>+                                         struct intel_pmdemand_state *pmd=
emand_state)
>+{
>+        u16 *phys_mask =3D &pmdemand_state->active_phys_mask;
>+        struct drm_connector *connector;
>+        int i;
>+        struct drm_connector_state *old_conn_state, *new_conn_state;
>+
>+        for_each_oldnew_connector_in_state(&state->base, connector,
>+                                           old_conn_state, new_conn_state=
, i) {
>+                if (!intel_connector_needs_modeset(state, connector))
>+                        continue;
>+
>+                /* First clear the active phys in the old connector state=
 */
>+                intel_pmdemand_update_phys_mask(i915, state, old_conn_sta=
te,
>+                                                true, phys_mask);
>+
>+                /* First set the active phys in new connector state */

s/First/Then/?

>+                intel_pmdemand_update_phys_mask(i915, state, new_conn_sta=
te,
>+                                                false, phys_mask);
>+        }
>+
>+        pmdemand_state->params.active_phys =3D hweight16(*phys_mask);
>+}
>+
>+static bool intel_pmdemand_phys_needs_update(struct intel_atomic_state *s=
tate)
>+{
>+        struct drm_connector *connector;
>+        int i;
>+        struct drm_connector_state *old_conn_state, *new_conn_state;
>+
>+        for_each_oldnew_connector_in_state(&state->base, connector,
>+                                           old_conn_state, new_conn_state=
, i) {
>+                struct intel_crtc *old_crtc =3D
>+                        to_intel_crtc(old_conn_state->crtc);
>+                struct intel_crtc *new_crtc =3D
>+                        to_intel_crtc(new_conn_state->crtc);
>+                struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+
>+                /* If the connector do not need modeset, no phys change *=
/
>+                if (!intel_connector_needs_modeset(state, connector))
>+                        continue;

I believe all of the checks below are already done once we call
intel_connector_needs_modeset(). In that case, I guess this loop could
be inlined directly in intel_pmdemand_needs_update() since it becomes a
simple one.

>+
>+                /* If crtcs are different, update phys */
>+                if (old_crtc !=3D new_crtc)
>+                        return true;
>+
>+                if (!new_crtc)
>+                        continue;
>+
>+                /* If crtc state's active status changed, update the phys=
 */
>+                old_crtc_state =3D intel_atomic_get_old_crtc_state(state,
>+                                                                 new_crtc=
);
>+                new_crtc_state =3D intel_atomic_get_old_crtc_state(state,
>+                                                                 new_crtc=
);
>+                if (old_crtc_state->hw.active !=3D new_crtc_state->hw.act=
ive)
>+                        return true;
>+        }
>+
>+        return false;
>+}
>+
>+static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
>+{
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_bw_state *new_bw_state, *old_bw_state;
>+        const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state=
;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+        const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
>+
>+        new_bw_state =3D intel_atomic_get_new_bw_state(state);
>+        old_bw_state =3D intel_atomic_get_old_bw_state(state);
>+        if (new_bw_state && new_bw_state->qgv_point_peakbw !=3D
>+            old_bw_state->qgv_point_peakbw)
>+                return true;
>+
>+        new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
>+        old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>+        if (new_dbuf_state &&
>+            (new_dbuf_state->active_pipes !=3D
>+             old_dbuf_state->active_pipes ||
>+             new_dbuf_state->enabled_slices !=3D
>+             old_dbuf_state->enabled_slices))
>+                return true;
>+
>+        new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
>+        old_cdclk_state =3D intel_atomic_get_old_cdclk_state(state);
>+        if (new_cdclk_state &&
>+            (new_cdclk_state->actual.cdclk !=3D
>+             old_cdclk_state->actual.cdclk ||
>+             new_cdclk_state->actual.voltage_level !=3D
>+             old_cdclk_state->actual.voltage_level))
>+                return true;
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i)
>+                if (new_crtc_state->port_clock !=3D old_crtc_state->port_=
clock)
>+                        return true;
>+
>+        return intel_pmdemand_phys_needs_update(state);
>+}
>+
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_bw_state *new_bw_state;
>+        const struct intel_cdclk_state *new_cdclk_state;
>+        const struct intel_dbuf_state *new_dbuf_state;
>+        struct intel_pmdemand_state *new_pmdemand_state;
>+        int ret;
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return 0;
>+
>+        if (!intel_pmdemand_needs_update(state))
>+                return 0;
>+
>+        new_pmdemand_state =3D intel_atomic_get_pmdemand_state(state);
>+        if (IS_ERR(new_pmdemand_state))
>+                return PTR_ERR(new_pmdemand_state);
>+
>+        ret =3D intel_atomic_lock_global_state(&new_pmdemand_state->base)=
;
>+        if (ret)
>+                return ret;
>+
>+        new_bw_state =3D intel_atomic_get_bw_state(state);
>+        if (IS_ERR(new_bw_state))
>+                return PTR_ERR(new_bw_state);
>+
>+        /* firmware will calculate the qclck_gc_index, requirement is set=
 to 0 */
>+        new_pmdemand_state->params.qclk_gv_index =3D 0;
>+        new_pmdemand_state->params.qclk_gv_bw =3D
>+                min_t(u16, new_bw_state->qgv_point_peakbw, 0xffff);
>+
>+        new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
>+        if (IS_ERR(new_dbuf_state))
>+                return PTR_ERR(new_dbuf_state);
>+
>+        new_pmdemand_state->params.active_pipes =3D
>+                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>+        new_pmdemand_state->params.active_dbufs =3D
>+                min_t(u8,
>+                      hweight8(BIT(DBUF_S1) | new_dbuf_state->enabled_sli=
ces),
>+                      3);
>+
>+        new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>+        if (IS_ERR(new_cdclk_state))
>+                return PTR_ERR(new_cdclk_state);
>+
>+        new_pmdemand_state->params.voltage_index =3D
>+                new_cdclk_state->actual.voltage_level;
>+        new_pmdemand_state->params.cdclk_freq_mhz =3D
>+                DIV_ROUND_UP(new_cdclk_state->actual.cdclk, 1000);
>+
>+        intel_pmdemand_update_max_ddiclk(state, new_pmdemand_state);
>+
>+        intel_pmdemand_update_active_non_tc_phys(i915, state, new_pmdeman=
d_state);
>+
>+        /*
>+         * Setting scalers to max as it can not be calculated during flip=
s and
>+         * fastsets without taking global states locks.
>+         */
>+        new_pmdemand_state->params.scalers =3D 7;
>+
>+        ret =3D intel_atomic_serialize_global_state(&new_pmdemand_state->=
base);
>+        if (ret)
>+                return ret;
>+
>+        return 0;
>+}
>+
>+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private=
 *i915)
>+{
>+        return !(intel_de_wait_for_clear(i915,
>+                                         XELPDP_INITIATE_PMDEMAND_REQUEST=
(1),
>+                                         XELPDP_PMDEMAND_REQ_ENABLE, 10) =
||
>+                 intel_de_wait_for_clear(i915,
>+                                         GEN12_DCPR_STATUS_1,
>+                                         XELPDP_PMDEMAND_INFLIGHT_STATUS,=
 10));
>+}
>+
>+static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
>+{
>+        return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
 &
>+                 XELPDP_PMDEMAND_REQ_ENABLE);
>+}
>+
>+static void intel_pmdemand_wait(struct drm_i915_private *i915)
>+{
>+        const unsigned int timeout_ms =3D 10;
>+
>+        if (!wait_event_timeout(i915->display.pmdemand.waitqueue,
>+                                intel_pmdemand_req_complete(i915),
>+                                msecs_to_jiffies_timeout(timeout_ms)))
>+                drm_err(&i915->drm,
>+                        "timed out waiting for Punit PM Demand Response\n=
");
>+}
>+
>+/* Required to be programmed during Display Init Sequences. */
>+void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices)
>+{
>+        u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                     XELPDP_PMDEMAND_DBUFS_MASK, XELPDP_PMDEMAND_DBUFS(db=
ufs));
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                     XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static void
>+intel_pmdemand_update_params(const struct intel_pmdemand_state *new,
>+                             const struct intel_pmdemand_state *old,
>+                             u32 *reg1, u32 *reg2)
>+{
>+        u32 plls, tmp;
>+
>+        /*
>+         * The pmdemand parameter updates happens in two steps. Pre plane=
 and
>+         * post plane updates. During the pre plane, as DE might still be
>+         * handling with some old operations, to avoid unwanted performan=
ce
>+         * issues, program the pmdemand parameters with higher of old and=
 new
>+         * values. And then after once settled, use the new parameter val=
ues
>+         * as part of the post plane update.
>+         */
>+
>+        /* Set 1*/
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
>+        tmp =3D old ? max(old->params.qclk_gv_bw, new->params.qclk_gv_bw)=
 :
>+                    new->params.qclk_gv_bw;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
>+        tmp =3D old ? max(old->params.voltage_index, new->params.voltage_=
index) :
>+                    new->params.voltage_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
>+        tmp =3D old ? max(old->params.qclk_gv_index, new->params.qclk_gv_=
index) :
>+                    new->params.qclk_gv_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PIPES_MASK;
>+        tmp =3D old ? max(old->params.active_pipes, new->params.active_pi=
pes) :
>+                    new->params.active_pipes;
>+        *reg1 |=3D XELPDP_PMDEMAND_PIPES(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_DBUFS_MASK;
>+        tmp =3D old ? max(old->params.active_dbufs, new->params.active_db=
ufs) :
>+                    new->params.active_dbufs;
>+        *reg1 |=3D XELPDP_PMDEMAND_DBUFS(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PHYS_MASK;
>+        plls =3D old ? max(old->params.active_phys, new->params.active_ph=
ys) :
>+                     new->params.active_phys;
>+        plls =3D min_t(u32, plls, 7);
>+        *reg1 |=3D XELPDP_PMDEMAND_PHYS(plls);
>+
>+        /* Set 2*/
>+        *reg2 &=3D ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.cdclk_freq_mhz,
>+                        new->params.cdclk_freq_mhz) :
>+                    new->params.cdclk_freq_mhz;
>+        *reg2 |=3D XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.ddiclk_max, new->params.ddiclk_max)=
 :
>+                    new->params.ddiclk_max;
>+        *reg2 |=3D XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_SCALERS_MASK;
>+        tmp =3D old ? max(old->params.scalers, new->params.scalers) :
>+                    new->params.scalers;
>+        *reg2 |=3D XELPDP_PMDEMAND_SCALERS(tmp);
>+
>+        /*
>+         * Active_PLLs starts with 1 because of CDCLK PLL.
>+         * TODO: Missing to account genlock filter when it gets used.
>+         */
>+        plls =3D min_t(u32, plls + 1, 7);
>+        *reg2 &=3D ~XELPDP_PMDEMAND_PLLS_MASK;
>+        *reg2 |=3D XELPDP_PMDEMAND_PLLS(plls);
>+}
>+
>+static void
>+intel_pmdemand_program_params(struct drm_i915_private *i915,
>+                              const struct intel_pmdemand_state *new,
>+                              const struct intel_pmdemand_state *old)
>+{
>+        bool changed =3D false;
>+        u32 reg1, mod_reg1;
>+        u32 reg2, mod_reg2;
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;
>+
>+        reg1 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0))=
;
>+        mod_reg1 =3D reg1;
>+
>+        reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>+        mod_reg2 =3D reg2;
>+
>+        intel_pmdemand_update_params(new, old, &mod_reg1, &mod_reg2);
>+
>+        if (reg1 !=3D mod_reg1) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                               mod_reg1);
>+                changed =3D true;
>+        }
>+
>+        if (reg2 !=3D mod_reg2) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
>+                               mod_reg2);
>+                changed =3D true;
>+        }
>+
>+        /* Initiate pm demand request only if register values are changed=
 */
>+        if (!changed)
>+                goto unlock;
>+
>+        drm_dbg_kms(&i915->drm,
>+                    "initate pmdemand request values: (0x%x 0x%x)\n",
>+                    mod_reg1, mod_reg2);
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                     XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static bool
>+intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
>+                             const struct intel_pmdemand_state *old)
>+{
>+        return memcmp(&new->params, &old->params, sizeof(new->params)) !=
=3D 0;
>+}
>+
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdemand_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdemand_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdemand_state ||
>+            !intel_pmdemand_state_changed(new_pmdemand_state,
>+                                          old_pmdemand_state))
>+                return;
>+
>+        WARN_ON(!new_pmdemand_state->base.changed);
>+
>+        intel_pmdemand_program_params(i915, new_pmdemand_state,
>+                                      old_pmdemand_state);
>+}
>+
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdemand_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdemand_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdemand_state ||
>+            !intel_pmdemand_state_changed(new_pmdemand_state,
>+                                          old_pmdemand_state))
>+                return;
>+
>+        WARN_ON(!new_pmdemand_state->base.changed);
>+
>+        intel_pmdemand_program_params(i915, new_pmdemand_state, NULL);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>new file mode 100644
>index 000000000000..c1c9b93934bb
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -0,0 +1,56 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright =C2=A9 2023 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_PMDEMAND_H__
>+#define __INTEL_PMDEMAND_H__
>+
>+#include "intel_display_limits.h"
>+#include "intel_global_state.h"
>+
>+struct drm_i915_private;
>+struct intel_atomic_state;
>+struct intel_crtc_state;
>+struct intel_plane_state;
>+
>+struct pmdemand_params {
>+        u16 qclk_gv_bw;
>+        u8 voltage_index;
>+        u8 qclk_gv_index;
>+        u8 active_pipes;
>+        u8 active_dbufs;
>+        /* Total number of non type C active phys from active_phys_mask *=
/
>+        u8 active_phys;
>+        u16 cdclk_freq_mhz;
>+        /* max from ddi_clocks[] */
>+        u16 ddiclk_max;
>+        u8 scalers;
>+};
>+
>+struct intel_pmdemand_state {
>+        struct intel_global_state base;
>+
>+        /* Maintain a persistent list of port clocks across all crtcs */
>+        int ddi_clocks[I915_MAX_PIPES];
>+
>+        /* Maintain a persistent list of non type C phys mask */
>+        u16 active_phys_mask;
>+
>+        /* Parameters to be configured in the pmdemand registers */
>+        struct pmdemand_params params;
>+};
>+
>+#define to_intel_pmdemand_state(x) container_of((x), \
>+                                                struct intel_pmdemand_sta=
te, \
>+                                                base)
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915);
>+int intel_pmdemand_init(struct drm_i915_private *i915);
>+void intel_pmdemand_program_dbuf(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices);
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
>+
>+#endif /* __INTEL_PMDEMAND_H__ */
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 0523418129c5..6d34d9f59b1c 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4418,8 +4418,10 @@
> #define GEN8_DE_MISC_IMR _MMIO(0x44464)
> #define GEN8_DE_MISC_IIR _MMIO(0x44468)
> #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>-#define  GEN8_DE_MISC_GSE                (1 << 27)
>-#define  GEN8_DE_EDP_PSR                (1 << 19)
>+#define  XELPDP_PMDEMAND_RSPTOUT_ERR        REG_BIT(27)
>+#define  GEN8_DE_MISC_GSE                REG_BIT(27)
>+#define  GEN8_DE_EDP_PSR                REG_BIT(19)
>+#define  XELPDP_PMDEMAND_RSP                REG_BIT(3)
>=20
> #define GEN8_PCU_ISR _MMIO(0x444e0)
> #define GEN8_PCU_IMR _MMIO(0x444e4)
>@@ -4504,6 +4506,33 @@
> #define  XELPDP_DP_ALT_HPD_LONG_DETECT                REG_BIT(1)
> #define  XELPDP_DP_ALT_HPD_SHORT_DETECT                REG_BIT(0)
>=20
>+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)                _MMIO(0x45=
230 + 4 * (dword))
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
>+#define  XELPDP_PMDEMAND_PIPES(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_PIPES_MASK, x)
>+#define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
>+#define  XELPDP_PMDEMAND_DBUFS(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_DBUFS_MASK, x)
>+#define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PHYS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PHYS_MASK, x)
>+
>+#define  XELPDP_PMDEMAND_REQ_ENABLE                        REG_BIT(31)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK                REG_GENMASK(30, 2=
0)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK                REG_GENMASK(18, =
8)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)                        REG_FIELD_=
PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_SCALERS_MASK                        REG_GENMASK(=
6, 4)
>+#define  XELPDP_PMDEMAND_SCALERS(x)                        REG_FIELD_PREP=
(XELPDP_PMDEMAND_SCALERS_MASK, x)
>+#define  XELPDP_PMDEMAND_PLLS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PLLS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PLLS_MASK, x)
>+
>+#define GEN12_DCPR_STATUS_1                                _MMIO(0x46440)
>+#define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>+
> #define ILK_DISPLAY_CHICKEN2        _MMIO(0x42004)
> /* Required on all Ironlake and Sandybridge according to the B-Spec. */
> #define   ILK_ELPIN_409_SELECT        REG_BIT(25)
>@@ -4663,6 +4692,9 @@
> #define   DCPR_SEND_RESP_IMM                        REG_BIT(25)
> #define   DCPR_CLEAR_MEMSTAT_DIS                REG_BIT(24)
>=20
>+#define XELPD_CHICKEN_DCPR_3                        _MMIO(0x46438)
>+#define   DMD_RSP_TIMEOUT_DISABLE                REG_BIT(19)
>+
> #define SKL_DFSM                        _MMIO(0x51000)
> #define   SKL_DFSM_DISPLAY_PM_DISABLE        (1 << 27)
> #define   SKL_DFSM_DISPLAY_HDCP_DISABLE        (1 << 25)
>--=20
>2.34.1
>
