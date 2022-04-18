Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EE7504F38
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 13:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0677010F684;
	Mon, 18 Apr 2022 11:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DDCB10F684
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 11:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650279860; x=1681815860;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AQWMuYT1mElWt+7+OWcZj8WwwOpT9K9jWmVnbJ5PXV4=;
 b=cj/XAXGhTtz1+yPtx5VLk0lsQLf7K+pAUiAaAP5bWfLXEhueQ9j5yLSC
 IeVh6Vu+xahoYuCxFSL7+18RgSJcoGzQmTOuqjef7kmrs2axoXFkiY+ti
 NFq6pC2ATLyfL81S73Bm06WL9pbfzdf79UrGSt9jyFpe1FmVcQN7HUBVB
 ZCfqcxD2s9CNwid2f0PLwsuoF3KM9pQ5bYquk104s51976hzj7fbh8kWs
 6iAqqsl5k8/MnOVwb3F751RDDJag4CT6y3f1TWzAPPSFL0qlkTaQ/3ctx
 jJprfStQ3mpXA++p64PVefRecNqOsHkaw0Nb1Ir0WkR21FklHLY9guwsV g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="262958457"
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="262958457"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 04:04:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="575532016"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 18 Apr 2022 04:04:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 04:04:18 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 18 Apr 2022 04:04:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Apr 2022 04:04:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Apr 2022 04:04:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ObRE6Hvfe15ukMTe+5JvY4EhtE03tKnbD10u3PH3MJdfhotaSlrJDJxePgn15Tqn5Yk6zUfnahuGI+UFleou9+rZd4zMl0QcweVR3iSZNVPd84Ix+QVYMmYUek7hi28As5bdvfj19/6s0KGlMS65OUm4sk8wc7vKwey1HYD7xT+3sNmQfEFH3Z4UExbop3a+gnnzBzSObkNiI4ZR/nIsCfzBlXb8S+JKVIRjLvR9znn2JtSLGusR/r0EIhKZCWVL7TszQCmOlJqepmbMhOMhJ6AejQOivGl/PlXrgNj2JfGbOPfQ0RyzXDJ7qs1KA1JNUhz2ybxpd8wIvMCiTCXe+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jQbP7Uwcp9UwlrapIGQKz+AsLg6OqsA+GfcG0pLlEDA=;
 b=gGH3kp2eN47SUnwEOw1+ctvsJNjde+CeT1o+vQde1HDiapaaL2UaoxNUBc80imCTqAbxT+9g5zWGt7GaYMLgv4TRhNPkSNAljJNKXxDEpTZMAa08LfC3VTOOYCGLTSE+0PiHxHOxwSz7K+oIVm+EKAAbKJkxNEy1PztgHbSJsPl6YAZTJ0i7VQm/zTHw0j2X3tfdHa2sgBy7OhpQxYns74ydklCeFUK8Pr/q+HED+KryJj9GInekD9TOfS5royEn5h0TWwYjwhXr3BNQiFHYzlUb0qj1Ar+0RlYfthJTGNCWugiOE6NG/phvlJLsCe7Tj3hS/FlORvCCGkdPJwD+hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com (2603:10b6:a03:2d4::5)
 by CY4PR11MB1623.namprd11.prod.outlook.com (2603:10b6:910:f::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Mon, 18 Apr
 2022 11:04:06 +0000
Received: from SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::99ce:ec02:b430:2564]) by SJ0PR11MB4894.namprd11.prod.outlook.com
 ([fe80::99ce:ec02:b430:2564%9]) with mapi id 15.20.5164.025; Mon, 18 Apr 2022
 11:04:06 +0000
Date: Mon, 18 Apr 2022 16:33:58 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Mullati Siva <siva.mullati@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <Yl1FnlacgZnjs0Ic@bvivekan-mobl.gar.corp.intel.com>
References: <20220316125627.1738613-1-siva.mullati@intel.com>
 <20220316125627.1738613-2-siva.mullati@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20220316125627.1738613-2-siva.mullati@intel.com>
X-ClientProxiedBy: PN3PR01CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::19) To SJ0PR11MB4894.namprd11.prod.outlook.com
 (2603:10b6:a03:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0dbc8fd6-e6fc-4650-e8c1-08da212b278b
X-MS-TrafficTypeDiagnostic: CY4PR11MB1623:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CY4PR11MB1623A1C2F9CDB9A93C9CCC169FF39@CY4PR11MB1623.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 74Xrn/YnsojnoZWx5/ndE8cK4r2RDZtzfbW5Nfu5TJKeSanYVwdLDPHG30JzQFampc64JvpQqV3+65O3784UMznl5j0/YER7risBps5PHlQdHiNwUJOcCYqjIGvfflSZYVmKkacdlq2qMTAoXcgL+00CaJ0eFrs2MuspvroWsGfKtymPK1MO+QOqj2uTpnPtLAoG4jYz1dGflmk29dQY7Uu4qGcY0+oZL1Rr3DeWiiJn+DrhJOzVuGf28yhFZ5m6jzA7stFNRT/As0nTf+0NFfxUsZ2zwvcSFZ3Ydp6QtlQA+1jndDMEHCdOI1yQPRQpWl4ic+4VSDiDPEJuDcWwaYs7QrKnJtKJhXOz9vE8U0Juv0jPR+GhrJ+7vALrNqmTqDsnd/3nWZKQrAa66ZXrFjw9jfU5LjfmfRoj/frxPUig9I+IFA4f9DAOX6QpkfMR1CBpk2OMC+gM6mp7xImFk7rPpKFHMBVz1/igch/r3lDJ15vSq36kgKKcr4nNt8Jw3l8z/ZqN+Pxae5QACG/KNv2vZqdZS8q63L14kEd04v4NnC+FCV9KS+3iD+27jMHQl+nmbXWCBh6R9TkLJuvghj/7ql7nNn9Ny6BB7d50aemk8vDuwpRQlG7lAGw97mp+2ZKBDGVU9frH/6xq6t43Pg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(6486002)(508600001)(66476007)(8936002)(6506007)(26005)(186003)(107886003)(6512007)(83380400001)(6666004)(8676002)(4326008)(66556008)(66946007)(86362001)(5660300002)(38100700002)(2906002)(316002)(82960400001)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUtocnd0VERKSktQTHE2UjBGc3lVcWxDVENBb00yZkp6bFZkSlo2bzR5aTRJ?=
 =?utf-8?B?Z2RBdDhIWkdseGhvZE1UY1lWenpLVjVQaXROOVUwUVk0dCtPMmdBL0pMNnBX?=
 =?utf-8?B?dnJsTDhnOEpoMkN0eTU1TG9JdXJUdGY5NUxmdWVYMVlPYmNzd0Z5V0tkY0hZ?=
 =?utf-8?B?djQ0ZHhaMmJuUGtHR28zVE9Vbm10YWdDNjdCOXN4ZElJdUtzTGhCbkpua3J0?=
 =?utf-8?B?TkVER1NNNnBTTnRMeExuZTlTUHMxVGEyQVJ4Q0NBeHNOWi9JS1Vob3p1cVR5?=
 =?utf-8?B?SXNHc1ZTTXJBd3h6WlMvUDltdmlqTjRGaDkzN0ZIVHB3bmFhdzlVVDkxL0NW?=
 =?utf-8?B?cTEyZW42NlllWmc5YWNYbEpxSjFOUzhNdUowbEYzWUVQQlRodUQvcVZnSGhY?=
 =?utf-8?B?eTFiY0pvZHVGSnRjbjhDS0NNSHhaTHZpT3pNWE9PRVpMU2FOUmQ4bGwrL3ov?=
 =?utf-8?B?NHdaZy9wcTJTRTkvU1VyU053UGg5STNBTEg4QWRjZk9WM3FvWGo1N0dqcVJl?=
 =?utf-8?B?b2EyZ1F4NnFzVGkvdENOOWFHRFdXRDRpTXpLTWVwNlFaRjlXRk9nbDhtekRK?=
 =?utf-8?B?cURDZHMvT2Z5QW42QVlpTTluYk1TR0ZsQlBoSUg1T0t1MVdsVjNZRFdzUXZ5?=
 =?utf-8?B?OFdKcDhTaSs4MjFnV0g5VjJNRjd0Yjh5Q1p4RzZ1dC9PTDlPby85UElSc2ND?=
 =?utf-8?B?M2FLVkpDbWxBcys1eHUyaWt0QXlhQmRhTjg4cHc2WGNsTjBvZ2JnaTZrZnJv?=
 =?utf-8?B?WnpWcUFrL092dGs5UnRpT1M0TGVXcUJRV2dTNFgrY0dwL3krY1g1VHErZTZw?=
 =?utf-8?B?OTBmTVNEUWkzanFJN0F0OU9ld0NMVVFmSjNMQmJ5OU1sWHNxcWl1eHEwN1BZ?=
 =?utf-8?B?UkdPZlFFOWx0Mi9YbDFKeVFieWg1NFBHVzVON0NoblNjU3JTZFZXZTZ2b2tV?=
 =?utf-8?B?Sklmb083MEQ5Tm1UOVhKejd0Q3dsSTgvRzVNZzA4ZEZrbjgvNzNPRGI5YnFW?=
 =?utf-8?B?TlVYZGhMRmxFVGdIV2x4THlidys4THNRZ2krRkVkbVJyZEo3K2lyblJCVkR3?=
 =?utf-8?B?bTZOT3JneWxMUkZBVkxRZHVKNDZEc3RIU2RGcWVMVmJLY2djNU1id2hIV05B?=
 =?utf-8?B?SHZhSDE1NVVJc3VKTGxGRXc3Zit3bS91S01yTUNuQmNWYlZHdldQOUU0bmJ1?=
 =?utf-8?B?SFl6VlVRNlljMTd0Zm5xRzlsdnRuZ3ROajJqaGpxMXY4dkNRZnliMHEwZGNp?=
 =?utf-8?B?cWQ5U25Fc3FkSjNlbWhIcitPeGNRNlJrb2NsMGFDRG1JNDJxSVpiOUI1WkJ1?=
 =?utf-8?B?eGhQTGpqNTUwaGlCVFV5akEzUzE1QmwxWEhYOC9FVnNTWFh3U3h5dFdlS0d1?=
 =?utf-8?B?a2hPdWxMUSt0UHJ5dTluYVpTekRibUlaRjQ5UGxVdk04azJ6Q1I2T3lvb1Vs?=
 =?utf-8?B?L3grWndqZjgyakZPSWMyT1hlU2RGZ08ybUthbDhGQlJEbEYwcjByNERkaVBT?=
 =?utf-8?B?RWdCeStoK2txM3czYjV1bHBVcDFOdXdXOHZDMlNCY2pWSFl6dDN0TUJkOEdV?=
 =?utf-8?B?NDBGbExIT2pac2ZmOElERDBBVE1jaXhZMW5FSXFCYjN3WEFEb3N5OUhjT3JZ?=
 =?utf-8?B?dk5hc1hUdmRoSXpqWkdRaXRhS0lCNmVUUWs0S003NkxOUmIrSHNIU1hqdHVZ?=
 =?utf-8?B?ZXYvekZGTWlTdlJ4U1JaQkJyS0UrdmE1UXlwMGZ4OFd0RWdHZ3o5bzEyQTVz?=
 =?utf-8?B?NGNlcVdwOEdFdEVrRjRzRFVkbXpzdVpGUWhEU0E2NW1VbXJyZ0FxZlRjTlBT?=
 =?utf-8?B?SmQzd3huOVBUanpzakdyc0JFVzhONDhBWGRUN3c3OFBZT1NOOURBVXhjVFlT?=
 =?utf-8?B?dGlsS29ad29TMFpJY052Tk15TkdWT0paaFRmSmt1ODEyd3ZUNFRpSVJ5anMw?=
 =?utf-8?B?bnVteVVIREJoY0lYVnJZL3U0ZlFMUHFXbk5aNWhBanlnb0c4SVhNWnkwZC9M?=
 =?utf-8?B?cENFVzRTT1Rodmt2aVUzYml1ZHptSWNqTk55eVV1VzJmRnRHTzYwdHdoZXdo?=
 =?utf-8?B?VlZPWllCVFRVMlFXY1FmSDZhYkVQb29yTkFWaGhsS3BlY1FLNmFld1p6UTlU?=
 =?utf-8?B?eEU4NEZOdXRORys0cElYeUFJK2oxUEZTRDEvUGtpaEd1d2ROVFVzODdpZ3Js?=
 =?utf-8?B?ZmhOK2RiYkQ4SjRyMzdGUGd4RkpBVmZWL3UyWVQ1SnVwbEltZjZzc1kvL0Y2?=
 =?utf-8?B?TVRrVVpTQys0ZWd2MjVVSXJiYVVwc0kwZUNNVVI5WlEvVXlocjV3bEwzRVhq?=
 =?utf-8?B?Q3RBd1oyQ09kUThoeW01dVR4cXJIc0pZS28zbVdGd2p2VFF2QW1SdGJPN1lS?=
 =?utf-8?Q?7rY1wxbz83tsJ6bqVhQi1iQqAalqD2kJ62xz6b9PV9bEf?=
X-MS-Exchange-AntiSpam-MessageData-1: iEA1F1MJIlkgQQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dbc8fd6-e6fc-4650-e8c1-08da212b278b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2022 11:04:06.0887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E1VuiHEiTK+SunY5sRMlQhswZt14v+mDcEI8omHwPUVThPnY96guuXxlPKjL3kyNT32Gl79ijsybnzIhhgisLZFLZ0kWVR+Fl9aH5vabLQcajFprJ+dwluhGeH1o1B2y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1623
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

On 16.03.2022 18:26, Mullati Siva wrote:
> From: Siva Mullati <siva.mullati@intel.com>
> 
> Convert slpc shared data to use iosys_map rather than
> plain pointer and save it in the intel_guc_slpc struct.
> This will help with in read and update slpc shared data
> after the slpc init by abstracting the IO vs system memory.
> 
> Signed-off-by: Siva Mullati <siva.mullati@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 79 +++++++++++--------
>  .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  5 +-
>  2 files changed, 47 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 9f032c65a488..3a9ec6b03ceb 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -14,6 +14,13 @@
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_rps.h"
>  
> +#define slpc_blob_read(slpc_, field_) \
> +		       iosys_map_rd_field(&(slpc_)->slpc_map, 0, \
> +		       struct slpc_shared_data, field_)
> +#define slpc_blob_write(slpc_, field_, val_) \
> +			iosys_map_wr_field(&(slpc_)->slpc_map, 0, \
> +			struct slpc_shared_data, field_, val_)
> +
>  static inline struct intel_guc *slpc_to_guc(struct intel_guc_slpc *slpc)
>  {
>  	return container_of(slpc, struct intel_guc, slpc);
> @@ -52,50 +59,50 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc)
>  	slpc->selected = __guc_slpc_selected(guc);
>  }
>  
> -static void slpc_mem_set_param(struct slpc_shared_data *data,
> +static void slpc_mem_set_param(struct intel_guc_slpc *slpc,
>  			       u32 id, u32 value)
>  {
> +	u32 bits = slpc_blob_read(slpc, override_params.bits[id >> 5]);
> +
>  	GEM_BUG_ON(id >= SLPC_MAX_OVERRIDE_PARAMETERS);
>  	/*
>  	 * When the flag bit is set, corresponding value will be read
>  	 * and applied by SLPC.
>  	 */
> -	data->override_params.bits[id >> 5] |= (1 << (id % 32));
> -	data->override_params.values[id] = value;
> +	bits |= (1 << (id % 32));
> +	slpc_blob_write(slpc, override_params.bits[id >> 5], bits);
> +	slpc_blob_write(slpc, override_params.values[id], value);
>  }
>  
> -static void slpc_mem_set_enabled(struct slpc_shared_data *data,
> +static void slpc_mem_set_enabled(struct intel_guc_slpc *slpc,
>  				 u8 enable_id, u8 disable_id)
>  {
>  	/*
>  	 * Enabling a param involves setting the enable_id
>  	 * to 1 and disable_id to 0.
>  	 */
> -	slpc_mem_set_param(data, enable_id, 1);
> -	slpc_mem_set_param(data, disable_id, 0);
> +	slpc_mem_set_param(slpc, enable_id, 1);
> +	slpc_mem_set_param(slpc, disable_id, 0);
>  }
>  
> -static void slpc_mem_set_disabled(struct slpc_shared_data *data,
> +static void slpc_mem_set_disabled(struct intel_guc_slpc *slpc,
>  				  u8 enable_id, u8 disable_id)
>  {
>  	/*
>  	 * Disabling a param involves setting the enable_id
>  	 * to 0 and disable_id to 1.
>  	 */
> -	slpc_mem_set_param(data, disable_id, 1);
> -	slpc_mem_set_param(data, enable_id, 0);
> +	slpc_mem_set_param(slpc, disable_id, 1);
> +	slpc_mem_set_param(slpc, enable_id, 0);
>  }
>  
>  static u32 slpc_get_state(struct intel_guc_slpc *slpc)
>  {
> -	struct slpc_shared_data *data;
> -
>  	GEM_BUG_ON(!slpc->vma);
>  
> -	drm_clflush_virt_range(slpc->vaddr, sizeof(u32));
> -	data = slpc->vaddr;
> +	drm_clflush_virt_range(slpc->slpc_map.vaddr, sizeof(u32));
clflush will not be required if the slpc_map contains io memory address.
So the drm_clflush_virt_range can be added under a check for system
memory
>  
> -	return data->header.global_state;
> +	return slpc_blob_read(slpc, header.global_state);
>  }
>  
>  static int guc_action_slpc_set_param(struct intel_guc *guc, u8 id, u32 value)
> @@ -156,7 +163,7 @@ static int slpc_query_task_state(struct intel_guc_slpc *slpc)
>  		drm_err(&i915->drm, "Failed to query task state (%pe)\n",
>  			ERR_PTR(ret));
>  
> -	drm_clflush_virt_range(slpc->vaddr, SLPC_PAGE_SIZE_BYTES);
> +	drm_clflush_virt_range(slpc->slpc_map.vaddr, SLPC_PAGE_SIZE_BYTES);
Also here we need clfush only for system memory address.
>  
>  	return ret;
>  }
> @@ -243,10 +250,11 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>  	struct drm_i915_private *i915 = slpc_to_i915(slpc);
>  	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
>  	int err;
> +	void *vaddr;
>  
>  	GEM_BUG_ON(slpc->vma);
>  
> -	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
> +	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&vaddr);
>  	if (unlikely(err)) {
>  		drm_err(&i915->drm,
>  			"Failed to allocate SLPC struct (err=%pe)\n",
> @@ -254,6 +262,12 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>  		return err;
>  	}
>  
> +	if (i915_gem_object_is_lmem(slpc->vma->obj))
> +		iosys_map_set_vaddr_iomem(&slpc->slpc_map,
> +					  (void __iomem *)vaddr);
> +	else
> +		iosys_map_set_vaddr(&slpc->slpc_map, vaddr);
> +
>  	slpc->max_freq_softlimit = 0;
>  	slpc->min_freq_softlimit = 0;
>  
> @@ -335,40 +349,37 @@ static int slpc_reset(struct intel_guc_slpc *slpc)
>  
>  static u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
>  {
> -	struct slpc_shared_data *data = slpc->vaddr;
> -
>  	GEM_BUG_ON(!slpc->vma);
>  
>  	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
> -				  data->task_state_data.freq) *
> +				  slpc_blob_read(slpc, task_state_data.freq)) *
>  				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
>  }
>  
>  static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
>  {
> -	struct slpc_shared_data *data = slpc->vaddr;
> -
>  	GEM_BUG_ON(!slpc->vma);
>  
>  	return	DIV_ROUND_CLOSEST(REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
> -				  data->task_state_data.freq) *
> +				  slpc_blob_read(slpc, task_state_data.freq)) *
>  				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
>  }
>  
> -static void slpc_shared_data_reset(struct slpc_shared_data *data)
> +static void slpc_shared_data_reset(struct intel_guc_slpc *slpc)
>  {
> -	memset(data, 0, sizeof(struct slpc_shared_data));
> -
> -	data->header.size = sizeof(struct slpc_shared_data);
> +	iosys_map_memset(&slpc->slpc_map,
> +			 0, 0, sizeof(struct slpc_shared_data));
> +	slpc_blob_write(slpc,
> +			header.size, sizeof(struct slpc_shared_data));
>  
>  	/* Enable only GTPERF task, disable others */
> -	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
> +	slpc_mem_set_enabled(slpc, SLPC_PARAM_TASK_ENABLE_GTPERF,
>  			     SLPC_PARAM_TASK_DISABLE_GTPERF);
>  
> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
> +	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_BALANCER,
>  			      SLPC_PARAM_TASK_DISABLE_BALANCER);
>  
> -	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
> +	slpc_mem_set_disabled(slpc, SLPC_PARAM_TASK_ENABLE_DCC,
>  			      SLPC_PARAM_TASK_DISABLE_DCC);
After converting to iosys_map instance, each
slpc_mem_set_enabled/disabled calls slpc_mem_set_param twice and each
slpc_mem_set_param calls slpc_blob_read/write 3 times resulting in 18
calls to memcpy.
Therefore it is efficient to consolidate all updates by reading the
complete override_params field, update necessary members and finally
overwrite the entire override_params.

Regards,
Bala
>  }
>  
> @@ -617,7 +628,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
>  
>  	GEM_BUG_ON(!slpc->vma);
>  
> -	slpc_shared_data_reset(slpc->vaddr);
> +	slpc_shared_data_reset(slpc);
>  
>  	ret = slpc_reset(slpc);
>  	if (unlikely(ret < 0)) {
> @@ -705,8 +716,6 @@ void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc)
>  int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p)
>  {
>  	struct drm_i915_private *i915 = slpc_to_i915(slpc);
> -	struct slpc_shared_data *data = slpc->vaddr;
> -	struct slpc_task_state_data *slpc_tasks;
>  	intel_wakeref_t wakeref;
>  	int ret = 0;
>  
> @@ -716,11 +725,10 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
>  		ret = slpc_query_task_state(slpc);
>  
>  		if (!ret) {
> -			slpc_tasks = &data->task_state_data;
> -
>  			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
>  			drm_printf(p, "\tGTPERF task active: %s\n",
> -				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
> +				   str_yes_no(slpc_blob_read(slpc, task_state_data.status) &
> +				   SLPC_GTPERF_TASK_ENABLED));
>  			drm_printf(p, "\tMax freq: %u MHz\n",
>  				   slpc_decode_max_freq(slpc));
>  			drm_printf(p, "\tMin freq: %u MHz\n",
> @@ -739,4 +747,5 @@ void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
>  		return;
>  
>  	i915_vma_unpin_and_release(&slpc->vma, I915_VMA_RELEASE_MAP);
> +	iosys_map_clear(&slpc->slpc_map);
>  }
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
> index bf5b9a563c09..96f524f25b52 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
> @@ -7,15 +7,16 @@
>  #define _INTEL_GUC_SLPC_TYPES_H_
>  
>  #include <linux/atomic.h>
> -#include <linux/workqueue.h>
> +#include <linux/iosys-map.h>
>  #include <linux/mutex.h>
>  #include <linux/types.h>
> +#include <linux/workqueue.h>
>  
>  #define SLPC_RESET_TIMEOUT_MS 5
>  
>  struct intel_guc_slpc {
>  	struct i915_vma *vma;
> -	struct slpc_shared_data *vaddr;
> +	struct iosys_map slpc_map;
>  	bool supported;
>  	bool selected;
>  
> -- 
> 2.33.0
> 
