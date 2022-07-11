Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF3557058E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 16:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB08611B48F;
	Mon, 11 Jul 2022 14:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EE311B48F
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 14:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657549688; x=1689085688;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=m2jzSUiUghYLV/X2GnNFOLUs32a72nDXQdO5hJdrzpc=;
 b=WoWVSasW7gBohoXcuP2iz8v3L+WvH5q9ssJGOxfdcvMVZvC2lj6PtHdV
 ufQJkCpsaNBg9pPtjWEGL9Tr0XybiCrhb0h8cl+dA+Rii5DfxCcZ2v9Cs
 NZ2VgiKxZrAhbVJVnCs15VpUdWEpnPxel7QzyCK0EEgF8uPlpS+NiVQr9
 uBlOmVrGLNdTnm8b6I+XIvhOA2EoO3rJbmn0DoArBXF/9vucCVnp4p5r6
 yvoteKinOu1YVyepWUrq+gBY2KDUVJdPHusAeROs4f4sRUc5x439aQgdm
 Sjet/kyK0qB07hhOAiZfZIe8WiOQ7QmbKuwbBfLdep5UvY9srGiRRuiA9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="265082981"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="265082981"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 07:28:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="721614552"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 11 Jul 2022 07:28:06 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 07:28:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 07:28:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 07:28:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=msg+VJl/gagq6IEUeYv4qWnFARBAjEgm7BhpaYgGMm+s23slHDHlYnuPSdyqpU2RAKxj1/3la15NHbyiPvdm+++7cwwEe1Cf8nSHoaTdJYkuR6Mv1a3r6p6kBadLzEnjGpFO3onoP5MPF9n0il/4060qL2FAoZ33FvuKJUvxacNmu1/yDOHJwJGR9bcfpRUiaMIA1scmPoFtEDGzAoxkSybc/HYiHoY7NiO1VPTOxDh43daINUeCJ0cnTXMgdMPqQSL/aJiu4+HCHaW51sNM2g7OuMA2499clOHpSTUr+xch8I3263x06jNpAN4eoIpvO2Z5DbhlbBj5KcdDiCkLew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B5mCLILltrESB0t6tZRsL04nFxVnurl4gFwAeFzyloc=;
 b=nLjUcUu6ySGQttCQdQjPXfF23HCqXPmPQ2tYy/ihDEu2rXnjV29YdOOoYmpxtwuGl0YjhUwRzSYHRiReuWKCiwIbfB9kmkSRw/1i2UQ4hUrQHf/JYNpEiHUi7Psidvb+Bmp2yuUTEbQQv/ayW2i0KUD0kDJmbXR3Dn/ToaM7Bnl/HfRrC0bRWfGaSRL2ZXwddpFIR93PADfnRUBNPSMCDXsKu/02uqN8fkWJ0pp3cwL8i0M4ccJLBLPLw3KL+gmhVwf4OxMKyKkCmv37OI7MHAw9Gw6eeGR0839RvYrCjq3aQh9v4y9TC7xTu9vcu22N4lB9hUSMfWUaK3fUTbZH2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BYAPR11MB3304.namprd11.prod.outlook.com (2603:10b6:a03:7a::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Mon, 11 Jul
 2022 14:28:01 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.025; Mon, 11 Jul 2022
 14:28:01 +0000
Date: Mon, 11 Jul 2022 10:27:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Message-ID: <YswzbUQADqw9vC92@intel.com>
References: <20220708000335.2869311-1-radhakrishna.sripada@intel.com>
 <165729832820.4507.2832897093149622918@emeril.freedesktop.org>
 <YsiUsaUqmygxjz+T@mdroper-desk1.amr.corp.intel.com>
 <DM4PR11MB621304F445E3804ACE1BD5B9EC879@DM4PR11MB6213.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB621304F445E3804ACE1BD5B9EC879@DM4PR11MB6213.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR03CA0255.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b5925d79-5a1b-4465-f755-08da63498f2a
X-MS-TrafficTypeDiagnostic: BYAPR11MB3304:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lmi568MFMQuL1yLfO3eXvw6LiwdOhyf0aSLJm4kvi+KwRowcgExLkfUWgMl3FHO+hxSA1swmSci02eyfVm26/wPDbi2Fz8m1ixabAV4Ju/4n5n+KV758laPdlD+lZyuGgODOy7vRtmfq9tfy0/FD21FRQuxEIurFcQmvLWLhIVkrjtQ5cxazqugCx5XjwTCDIxnd4sBh8+vZnCTkKd2chMN0EzcryURCWogqAzpaPT5eYS/D8Hh303V0La5W/hdYs+Vo6MeY4YfCIjHnwCqVCXsnLQuygVwxHGzpPyQoW+JKycRlKi922DF8ich6CBWPnqybCP3DmD3Ctg47AEhpu6Kx071HTkKHCljXTzOY8DnG2c/S/RwK593a0uW3csRCZR8y68Bh7rRyd2z0YHdDJct+ZANtTV/nTie/AUlXA9ppS842QW0J5Bo8RO3pW/T+Jh88Jx3QJSzfkxHrTAAp7RXKUANCDiYwCttI0DNA0bO67kudkwWE8cO7bSCC2XwGgiVw+ysv2VvPZfwapuBzZO1AQ2Ki+CMAU1oIje+DJ/gerqyI3zqeBIlCD0RILbVAE1oj4BnrS88GTsNeSWK1m2XKx5zKhr3n1Aye/LBzrt6LvqrIuqLRDg+fGnvKPMt53xTIa3lpd3KQK3c24I1gyeaWo5YUpZ0QlIN9+aYOY8+p64x2jHvK7oTf2Yfhf94ZOaSpPHpU3Rj28bPsTgQxBkQh2pRZkuVDTE54LTW8Ja7dIOuMrLzChijQdkQazD6wHSD4dLtuWQF2Ym+QIQcRiK8RiL9SMwqVGqlR1lC6Tc33KD4hBZHaF4/qRQctzis7kUWc62h+Fea0OaVNogJR2VyQm6iEmAtuzTUP1/56zN0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(136003)(396003)(376002)(346002)(8936002)(6862004)(6512007)(478600001)(5660300002)(966005)(26005)(86362001)(186003)(2616005)(2906002)(30864003)(6666004)(41300700001)(53546011)(44832011)(6486002)(66476007)(66556008)(83380400001)(4326008)(6506007)(66946007)(82960400001)(38100700002)(316002)(6636002)(54906003)(37006003)(36756003)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWlDQTJPZEpCRXppY2hmaDF2UFJ6dWhHWDcza1BoNTA3UWJLK1Q3Q3Rxanpr?=
 =?utf-8?B?ZjBDZDRXQUdGTjNXYWVDQnNoVXdUY2U5S3JlbXFRWGQxOEhZVDFEeWkrQVlv?=
 =?utf-8?B?a0c3ZUVSa3hJSVJHQ3JUVFd4WVU2NExWY0dBeEdpSkExdWgvelZMYTlGK2Q3?=
 =?utf-8?B?YXBGRGYvWkhvMWFIQyt1WGIva0FyMUdPWWZ0TmNHU1BSQ2ZReFlnWVF6Q1lD?=
 =?utf-8?B?SFRCMXh4Qk1rd1lLZFY3NHA0Qy9JSzMzMW5sZDQ1djRHUEZGN0FlU3ZjWER6?=
 =?utf-8?B?WHZQSEx6YlM2UzlZbk15L0NpSUlYUjVYWDZCY3VzVWRhN0tyNjkrdHZoQlZs?=
 =?utf-8?B?NjlSRGt1OHZ3UEhiM1U2NXByUEpMTmJPckI2djFIUWJDdkQwSXpLY0JsT1Nl?=
 =?utf-8?B?c0twMGlkT2RtSG9HVGR0ZWJYY3JKL3l4ZTZDUHRtU083Snc0cHFtcVBOYUpq?=
 =?utf-8?B?U3VLQmpHQjBqKzZ0b0p4bjNSRlFldUJwME9ROHBIbGdlYk1WYmZtRnMrVDFs?=
 =?utf-8?B?MlBRR21wK1FRQjNDSThzQk5wVDFPMlFOb1FGWU1leTA0OURPN21ZalV6N1hk?=
 =?utf-8?B?N1N4NlZZWDRpNUszRUFaMFNCZ29GcVJTWmdrYnBRWnhlclM0VXkvV1JuY0pI?=
 =?utf-8?B?YWJta25USWIvZEFIeFJibDBVRXl3V2dUc0hwUnR4b0JsS1krTDRaTHdhMUZl?=
 =?utf-8?B?OU9mTWJwTXhzdE9TSU92YUdYbmVXaTErVWxEU21GdytKVEx6WWV5eEM5Vjho?=
 =?utf-8?B?ZDFReEt1UjI2cmppQVRwZFRsWGZxb1FYUUlRd3ZkUk9FVGs4cUk5UDI4Vmcv?=
 =?utf-8?B?d1poK0lzWk04WlZEVEVtVlVKZE85MzFnMllvU2oxNHA2MVNJTnpOb0F1UmdN?=
 =?utf-8?B?bXFPUWhObTAvS3BYR3NFUkRLdlFvTklZclp3QURRQ09WU3o3OEMyTVV6cE1q?=
 =?utf-8?B?MlFnUFl4UUt6UnlZaldpWk80bVpNcXpEWTkxSnhwRjdWTExhNkhPbWJ1eEF6?=
 =?utf-8?B?T1BYdTYwdkpSd3lmNEM5SUJMcGM2ZkI5NmlmU282Q3VxNU5wd1lZeE56WHJS?=
 =?utf-8?B?amM5elo4aE1LYUNORFNLa0duSllGKzYxTDFuanJtYVMvYklLQksyQlBraURS?=
 =?utf-8?B?NXFnMW8rSU5xUVBvQXF3WkNsR1dtcGVrYU9xTk9aN01Oa0VhUG9RdTBmZWtC?=
 =?utf-8?B?N0VQTnIybEQwSWpzNW9seEZhOHlOMUJMRGRSbnh2WGxDNGVIbWI0TXgrcjBF?=
 =?utf-8?B?QkRRcVh2SGVyYVRwZXl4dnQxVzN3djRPSmZtZmdUK0o1c3RCSGZKUEttS2cr?=
 =?utf-8?B?R0pvelRIOHhHSnhTUEE0Zm5Md2paUUZ2VXJHaS9yZk9kL2J3RTlWbFBtMHQr?=
 =?utf-8?B?TGZBMkQrM0pBRks2UVRnQW5td3oyZzVXWGFzMnN5QW1HaUE5RFV3ZmxPODFC?=
 =?utf-8?B?cFQ0RUI1K2ZrZU95OHdXdGFDYXZBeHZ4TWZNZm1YRG9ZbVp6aElqN1B5ZnV3?=
 =?utf-8?B?Nlo4Q0JTdm43K3ZxbHRselFNbllPRCtmdllER20zcm9hRG5INHlyMEI1eTho?=
 =?utf-8?B?SkhyZ0tlNnpSOGFEYUM5VWh3UmtDR2RhbzdXaXBwSjA1Ymx6WkppQzgrREha?=
 =?utf-8?B?TzdKTmFMS1E1ZUo3emdzRmNVTDFwV3kvYmZmdzFiTUVLYjhXeEtscU1XaWR5?=
 =?utf-8?B?a0RMNkNTU21RVHptc2FXcHh2M3MvV25VcDZTcWtkL3BFRWhPWkx6VncyNTdx?=
 =?utf-8?B?ZjkrdWJBK21BU0l3dytnNWxEUjZmcG93OWNWRHkzdjBpa1pzY2cvZ05QcUJt?=
 =?utf-8?B?V1VuTVF5S2R3bnNKUDlNS2N1M1lnZzRqV290ZzAvUEFlcFlOcVZvTlNvM2RR?=
 =?utf-8?B?bFNBaUFSL29MOHVSeVlwcUhPZnpwR2dBV1dxaUZrQUczMDNSak41d3VHcXY3?=
 =?utf-8?B?cGlWM3ZvaHc5MFFWeC9FT0VubUE0OUE5R0JONUt4aHBuS1ErT21oUUpudVJG?=
 =?utf-8?B?YWFtU2FnS0RLU2tsU254Q2UrU0xZdjhSekhMaE9ONHc5dE1ScHJMbTNmMFNs?=
 =?utf-8?B?QnNlZGllTFdqWkFwQlNlOEU4T0ZvdktlVjNUdTh1SWx2Wk41T3ZSRnlLd2xy?=
 =?utf-8?B?d0JST1FiOWQ5NVNnK25XRmMxbUgzenFsc0JVZVJYcVNMQUVLWnlHZFdIQUFY?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5925d79-5a1b-4465-f755-08da63498f2a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 14:28:01.6128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nHsbBW7zJJmK5tXGm4wnj9BZRoMDEaE+PJzpFfE8VpRL+1XlCWbH8g3qq2zYa8rE35w6t6DmmGy09/Paa/2ZAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3304
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGk5?=
 =?utf-8?q?15=3A_Introduce_Meteorlake?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 11, 2022 at 07:09:20AM +0000, Vudum, Lakshminarayana wrote:
> Issue is related to https://gitlab.freedesktop.org/drm/intel/-/issues/6169
> Few tests - incomplete - pstore logs, Kernel panic - not syncing: Software Watchdog Timer expired, RIP: 0010:cpuidle_enter_state

For a moment I though you were suggesting that this series caused this instability.
So I reviewed the series again to see that it is impossible...
Then I noticed the giving link above is actually instability issue from 1 month ago.

So we are good with this Series to stay in this branch and propagate to 5.20.

Thanks,
Rodrigo.

> 
> Thanks,
> Lakshmi.
> 
> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com> 
> Sent: Friday, July 8, 2022 1:34 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: Re: [Intel-gfx] ✗ Fi.CI.IGT: failure for i915: Introduce Meteorlake
> 
> On Fri, Jul 08, 2022 at 04:38:48PM +0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: i915: Introduce Meteorlake
> > URL   : https://patchwork.freedesktop.org/series/106075/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_11859_full -> Patchwork_106075v1_full
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_106075v1_full absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_106075v1_full, please notify your bug team to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   
> > 
> > Participating hosts (13 -> 13)
> > ------------------------------
> > 
> >   No changes in participating hosts
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_106075v1_full:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@gem_exec_schedule@wide@vcs1:
> >     - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl4/igt@gem_exec_schedule@wide@vcs1.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl1/igt@gem_exec_schedule@wide@vcs1.html
> 
> Test actually finished executing, but then there were some NVME errors,
> followed by
> 
> <2>[  334.527621] softdog: Initiating panic
> <0>[  334.529807] Kernel panic - not syncing: Software Watchdog Timer expired
> 
> This looks like general system instability, likely not related to
> graphics at all.
> 
> 
> Series applied to drm-intel-gt-next (as suggested by Rodrigo, since this
> will allow the IS_METEORLAKE definitions to be cross-pollinated across
> both drm-intel branches most easily).
> 
> Thanks for the patches.
> 
> 
> Matt
> 
> > 
> >   
> > #### Suppressed ####
> > 
> >   The following results come from untrusted machines, tests, or statuses.
> >   They do not affect the overall result.
> > 
> >   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
> >     - {shard-rkl}:        NOTRUN -> [WARN][3]
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> > 
> >   * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
> >     - {shard-dg1}:        [PASS][4] -> [FAIL][5] +4 similar issues
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-dg1-12/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-dg1-15/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
> > 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_106075v1_full that come from known issues:
> > 
> > ### CI changes ###
> > 
> > #### Possible fixes ####
> > 
> >   * boot:
> >     - shard-skl:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [FAIL][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30]) ([i915#5032]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl10/boot.html
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl10/boot.html
> >    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl10/boot.html
> >    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl1/boot.html
> >    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl1/boot.html
> >    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl3/boot.html
> >    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl3/boot.html
> >    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl3/boot.html
> >    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl4/boot.html
> >    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl4/boot.html
> >    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl4/boot.html
> >    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl5/boot.html
> >    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl5/boot.html
> >    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl5/boot.html
> >    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl6/boot.html
> >    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl6/boot.html
> >    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl6/boot.html
> >    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl6/boot.html
> >    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl7/boot.html
> >    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl7/boot.html
> >    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl7/boot.html
> >    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl7/boot.html
> >    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl9/boot.html
> >    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl9/boot.html
> >    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl9/boot.html
> >    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl9/boot.html
> >    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl9/boot.html
> >    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl9/boot.html
> >    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl7/boot.html
> >    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl7/boot.html
> >    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl7/boot.html
> >    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl7/boot.html
> >    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/boot.html
> >    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/boot.html
> >    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/boot.html
> >    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl5/boot.html
> >    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl4/boot.html
> >    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl4/boot.html
> >    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl4/boot.html
> >    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl3/boot.html
> >    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl1/boot.html
> >    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl1/boot.html
> >    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl1/boot.html
> >    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl1/boot.html
> >    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl10/boot.html
> >    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl10/boot.html
> >    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl10/boot.html
> > 
> >   
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_ccs@ctrl-surf-copy:
> >     - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3555] / [i915#5325])
> >    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@gem_ccs@ctrl-surf-copy.html
> > 
> >   * igt@gem_ctx_persistence@hang:
> >     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +150 similar issues
> >    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl10/igt@gem_ctx_persistence@hang.html
> > 
> >   * igt@gem_ctx_sseu@engines:
> >     - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#280])
> >    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@gem_ctx_sseu@engines.html
> > 
> >   * igt@gem_exec_balancer@parallel-bb-first:
> >     - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#4525]) +2 similar issues
> >    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
> >    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html
> > 
> >   * igt@gem_exec_balancer@parallel-ordering:
> >     - shard-kbl:          NOTRUN -> [FAIL][58] ([i915#6117])
> >    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl1/igt@gem_exec_balancer@parallel-ordering.html
> > 
> >   * igt@gem_exec_fair@basic-deadline:
> >     - shard-kbl:          NOTRUN -> [FAIL][59] ([i915#6141])
> >    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
> > 
> >   * igt@gem_exec_fair@basic-none-solo@rcs0:
> >     - shard-apl:          [PASS][60] -> [FAIL][61] ([i915#2842]) +1 similar issue
> >    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
> >    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-none@vcs1:
> >     - shard-iclb:         NOTRUN -> [FAIL][62] ([i915#2842])
> >    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
> > 
> >   * igt@gem_exec_fair@basic-pace-share@rcs0:
> >     - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#2842])
> >    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
> >    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@vecs0:
> >     - shard-kbl:          [PASS][65] -> [FAIL][66] ([i915#2842]) +2 similar issues
> >    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
> >    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
> > 
> >   * igt@gem_exec_fair@basic-throttle@rcs0:
> >     - shard-iclb:         [PASS][67] -> [FAIL][68] ([i915#2849])
> >    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> >    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> > 
> >   * igt@gem_exec_params@rsvd2-dirt:
> >     - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#109283])
> >    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@gem_exec_params@rsvd2-dirt.html
> > 
> >   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
> >     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613]) +1 similar issue
> >    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> > 
> >   * igt@gem_lmem_swapping@parallel-random-engines:
> >     - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613]) +2 similar issues
> >    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl7/igt@gem_lmem_swapping@parallel-random-engines.html
> > 
> >   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
> >     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613])
> >    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> > 
> >   * igt@gem_lmem_swapping@random:
> >     - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#4613])
> >    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@gem_lmem_swapping@random.html
> > 
> >   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
> >     - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#4270])
> >    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> > 
> >   * igt@gen9_exec_parse@batch-without-end:
> >     - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#2527] / [i915#2856])
> >    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@gen9_exec_parse@batch-without-end.html
> > 
> >   * igt@i915_module_load@reload-with-fault-injection:
> >     - shard-skl:          [PASS][76] -> [DMESG-WARN][77] ([i915#1982]) +1 similar issue
> >    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
> >    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html
> > 
> >   * igt@i915_pm_dc@dc6-dpms:
> >     - shard-skl:          NOTRUN -> [FAIL][78] ([i915#454])
> >    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@i915_pm_dc@dc6-dpms.html
> > 
> >   * igt@i915_pm_lpsp@screens-disabled:
> >     - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#1902])
> >    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@i915_pm_lpsp@screens-disabled.html
> > 
> >   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> >     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#5286])
> >    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> > 
> >   * igt@kms_big_fb@linear-64bpp-rotate-90:
> >     - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#111614])
> >    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_big_fb@linear-64bpp-rotate-90.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> >     - shard-skl:          NOTRUN -> [FAIL][82] ([i915#3743])
> >    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> > 
> >   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:
> >     - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3689] / [i915#6095])
> >    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html
> > 
> >   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> >     - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +5 similar issues
> >    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> >     - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886]) +4 similar issues
> >    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> >     - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#3689] / [i915#3886]) +2 similar issues
> >    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_mc_ccs:
> >     - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271]) +46 similar issues
> >    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk5/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_mc_ccs.html
> > 
> >   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> >     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886])
> >    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> > 
> >   * igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs_cc:
> >     - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#6095])
> >    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_rc_ccs_cc.html
> > 
> >   * igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_mc_ccs:
> >     - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3689]) +1 similar issue
> >    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_mc_ccs.html
> > 
> >   * igt@kms_chamelium@dp-crc-fast:
> >     - shard-glk:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +3 similar issues
> >    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk5/igt@kms_chamelium@dp-crc-fast.html
> > 
> >   * igt@kms_chamelium@hdmi-crc-multiple:
> >     - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#109284] / [fdo#111827]) +2 similar issues
> >    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_chamelium@hdmi-crc-multiple.html
> > 
> >   * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
> >     - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +8 similar issues
> >    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html
> > 
> >   * igt@kms_color_chamelium@pipe-b-ctm-negative:
> >     - shard-snb:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827])
> >    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-snb4/igt@kms_color_chamelium@pipe-b-ctm-negative.html
> > 
> >   * igt@kms_color_chamelium@pipe-c-ctm-0-75:
> >     - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +11 similar issues
> >    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl1/igt@kms_color_chamelium@pipe-c-ctm-0-75.html
> > 
> >   * igt@kms_color_chamelium@pipe-d-ctm-max:
> >     - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +7 similar issues
> >    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl7/igt@kms_color_chamelium@pipe-d-ctm-max.html
> > 
> >   * igt@kms_content_protection@atomic:
> >     - shard-apl:          NOTRUN -> [TIMEOUT][97] ([i915#1319])
> >    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl4/igt@kms_content_protection@atomic.html
> > 
> >   * igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:
> >     - shard-iclb:         [PASS][98] -> [FAIL][99] ([fdo#103375])
> >    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-iclb1/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html
> >    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb5/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html
> > 
> >   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-4tiled:
> >     - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#5287])
> >    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-4tiled.html
> > 
> >   * igt@kms_flip@2x-flip-vs-fences:
> >     - shard-tglb:         NOTRUN -> [SKIP][101] ([fdo#109274] / [fdo#111825] / [i915#3637]) +1 similar issue
> >    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_flip@2x-flip-vs-fences.html
> > 
> >   * igt@kms_flip@flip-vs-suspend@a-dp1:
> >     - shard-kbl:          [PASS][102] -> [DMESG-WARN][103] ([i915#180]) +4 similar issues
> >    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
> >    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
> > 
> >   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
> >     - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#2122])
> >    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> >    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
> >     - shard-iclb:         NOTRUN -> [SKIP][106] ([i915#2672]) +5 similar issues
> >    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> > 
> >   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
> >     - shard-tglb:         NOTRUN -> [SKIP][107] ([i915#2672]) +1 similar issue
> >    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
> >     - shard-kbl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +112 similar issues
> >    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
> > 
> >   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:
> >     - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#109280] / [fdo#111825]) +7 similar issues
> >    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html
> > 
> >   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
> >     - shard-apl:          [PASS][110] -> [DMESG-WARN][111] ([i915#180]) +1 similar issue
> >    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> >    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
> >     - shard-kbl:          NOTRUN -> [FAIL][112] ([fdo#108145] / [i915#265]) +3 similar issues
> >    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
> >     - shard-glk:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265])
> >    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk5/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> >     - shard-skl:          NOTRUN -> [FAIL][114] ([fdo#108145] / [i915#265]) +1 similar issue
> >    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-d-alpha-transparent-fb:
> >     - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271]) +103 similar issues
> >    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl4/igt@kms_plane_alpha_blend@pipe-d-alpha-transparent-fb.html
> > 
> >   * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
> >     - shard-glk:          [PASS][116] -> [FAIL][117] ([i915#1888])
> >    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
> >    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk2/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
> > 
> >   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-vga-1:
> >     - shard-snb:          NOTRUN -> [SKIP][118] ([fdo#109271]) +22 similar issues
> >    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-snb4/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-vga-1.html
> > 
> >   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
> >     - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658]) +1 similar issue
> >    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> > 
> >   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
> >     - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658]) +1 similar issue
> >    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> > 
> >   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
> >     - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#2920])
> >    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> > 
> >   * igt@kms_psr2_su@page_flip-nv12:
> >     - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658]) +1 similar issue
> >    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk5/igt@kms_psr2_su@page_flip-nv12.html
> >     - shard-kbl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#658]) +2 similar issues
> >    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl1/igt@kms_psr2_su@page_flip-nv12.html
> > 
> >   * igt@kms_psr2_su@page_flip-xrgb8888:
> >     - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#1911])
> >    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_psr2_su@page_flip-xrgb8888.html
> > 
> >   * igt@kms_psr@psr2_sprite_plane_move:
> >     - shard-iclb:         [PASS][125] -> [SKIP][126] ([fdo#109441])
> >    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> >    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
> > 
> >   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> >     - shard-iclb:         [PASS][127] -> [SKIP][128] ([i915#5519])
> >    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> >    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> > 
> >   * igt@kms_writeback@writeback-check-output:
> >     - shard-skl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2437])
> >    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@kms_writeback@writeback-check-output.html
> > 
> >   * igt@kms_writeback@writeback-fb-id:
> >     - shard-glk:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2437])
> >    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk5/igt@kms_writeback@writeback-fb-id.html
> > 
> >   * igt@nouveau_crc@pipe-b-source-rg:
> >     - shard-tglb:         NOTRUN -> [SKIP][131] ([i915#2530])
> >    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@nouveau_crc@pipe-b-source-rg.html
> > 
> >   * igt@perf@polling-parameterized:
> >     - shard-skl:          [PASS][132] -> [FAIL][133] ([i915#5639])
> >    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl10/igt@perf@polling-parameterized.html
> >    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl7/igt@perf@polling-parameterized.html
> > 
> >   * igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
> >     - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#109291]) +1 similar issue
> >    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html
> > 
> >   * igt@sw_sync@sync_merge:
> >     - shard-tglb:         NOTRUN -> [FAIL][135] ([i915#6140])
> >    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@sw_sync@sync_merge.html
> > 
> >   * igt@sysfs_clients@create:
> >     - shard-glk:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2994])
> >    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk5/igt@sysfs_clients@create.html
> > 
> >   * igt@sysfs_clients@fair-1:
> >     - shard-skl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2994]) +2 similar issues
> >    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl10/igt@sysfs_clients@fair-1.html
> > 
> >   * igt@sysfs_clients@pidname:
> >     - shard-kbl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#2994])
> >    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl7/igt@sysfs_clients@pidname.html
> > 
> >   * igt@sysfs_clients@recycle-many:
> >     - shard-tglb:         NOTRUN -> [SKIP][139] ([i915#2994])
> >    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@sysfs_clients@recycle-many.html
> > 
> >   * igt@sysfs_clients@sema-10:
> >     - shard-apl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#2994])
> >    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl4/igt@sysfs_clients@sema-10.html
> > 
> >   
> > #### Possible fixes ####
> > 
> >   * igt@gem_ctx_persistence@hostile:
> >     - {shard-rkl}:        [FAIL][141] ([i915#2410]) -> [PASS][142]
> >    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-1/igt@gem_ctx_persistence@hostile.html
> >    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-5/igt@gem_ctx_persistence@hostile.html
> > 
> >   * igt@gem_ctx_persistence@legacy-engines-hang@vebox:
> >     - {shard-dg1}:        [FAIL][143] ([i915#4883]) -> [PASS][144] +2 similar issues
> >    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-dg1-13/igt@gem_ctx_persistence@legacy-engines-hang@vebox.html
> >    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-dg1-12/igt@gem_ctx_persistence@legacy-engines-hang@vebox.html
> > 
> >   * igt@gem_exec_fair@basic-none-share@rcs0:
> >     - shard-tglb:         [FAIL][145] ([i915#2842]) -> [PASS][146]
> >    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
> >    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@rcs0:
> >     - shard-glk:          [FAIL][147] ([i915#2842]) -> [PASS][148]
> >    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html
> >    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html
> > 
> >   * igt@gem_exec_fair@basic-pace@vecs0:
> >     - {shard-rkl}:        [FAIL][149] ([i915#2842]) -> [PASS][150]
> >    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html
> >    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
> > 
> >   * igt@gem_exec_reloc@basic-wc-cpu:
> >     - {shard-rkl}:        [SKIP][151] ([i915#3281]) -> [PASS][152] +6 similar issues
> >    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-1/igt@gem_exec_reloc@basic-wc-cpu.html
> >    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html
> > 
> >   * igt@gem_exec_suspend@basic-s3@smem:
> >     - shard-skl:          [INCOMPLETE][153] ([i915#4939]) -> [PASS][154]
> >    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl6/igt@gem_exec_suspend@basic-s3@smem.html
> >    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@gem_exec_suspend@basic-s3@smem.html
> >     - shard-apl:          [DMESG-WARN][155] ([i915#180]) -> [PASS][156] +3 similar issues
> >    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-apl8/igt@gem_exec_suspend@basic-s3@smem.html
> >    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html
> > 
> >   * igt@gem_partial_pwrite_pread@writes-after-reads:
> >     - {shard-rkl}:        [SKIP][157] ([i915#3282]) -> [PASS][158] +6 similar issues
> >    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
> >    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html
> > 
> >   * igt@gen9_exec_parse@allowed-single:
> >     - shard-kbl:          [DMESG-WARN][159] ([i915#5566] / [i915#716]) -> [PASS][160]
> >    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl6/igt@gen9_exec_parse@allowed-single.html
> >    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl6/igt@gen9_exec_parse@allowed-single.html
> > 
> >   * igt@gen9_exec_parse@valid-registers:
> >     - {shard-rkl}:        [SKIP][161] ([i915#2527]) -> [PASS][162] +2 similar issues
> >    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html
> >    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
> > 
> >   * igt@i915_pm_backlight@basic-brightness:
> >     - {shard-rkl}:        [SKIP][163] ([i915#3012]) -> [PASS][164] +1 similar issue
> >    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-1/igt@i915_pm_backlight@basic-brightness.html
> >    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html
> > 
> >   * igt@i915_pm_rpm@modeset-lpsp:
> >     - {shard-rkl}:        [SKIP][165] ([i915#1397]) -> [PASS][166]
> >    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp.html
> >    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html
> > 
> >   * igt@i915_selftest@live@hangcheck:
> >     - shard-snb:          [INCOMPLETE][167] ([i915#3921]) -> [PASS][168]
> >    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-snb2/igt@i915_selftest@live@hangcheck.html
> >    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-snb4/igt@i915_selftest@live@hangcheck.html
> > 
> >   * igt@i915_selftest@live@perf:
> >     - shard-skl:          [INCOMPLETE][169] -> [PASS][170]
> >    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl10/igt@i915_selftest@live@perf.html
> >    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl9/igt@i915_selftest@live@perf.html
> > 
> >   * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
> >     - shard-skl:          [FAIL][171] ([i915#2521]) -> [PASS][172]
> >    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
> >    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
> > 
> >   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> >     - {shard-rkl}:        [SKIP][173] ([i915#1845] / [i915#4098]) -> [PASS][174] +23 similar issues
> >    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> >    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> > 
> >   * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
> >     - {shard-rkl}:        [SKIP][175] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][176] +4 similar issues
> >    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
> >    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
> >     - shard-glk:          [FAIL][177] ([i915#79]) -> [PASS][178]
> >    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> >    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> > 
> >   * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
> >     - shard-skl:          [FAIL][179] ([i915#79]) -> [PASS][180]
> >    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> >    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> > 
> >   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
> >     - shard-skl:          [FAIL][181] ([i915#2122]) -> [PASS][182] +1 similar issue
> >    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> >    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> > 
> >   * igt@kms_invalid_mode@bad-vsync-start:
> >     - {shard-rkl}:        [SKIP][183] ([i915#4278]) -> [PASS][184]
> >    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-2/igt@kms_invalid_mode@bad-vsync-start.html
> >    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html
> > 
> >   * igt@kms_plane@plane-position-hole@pipe-b-planes:
> >     - {shard-rkl}:        [SKIP][185] ([i915#1849] / [i915#3558]) -> [PASS][186] +1 similar issue
> >    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-2/igt@kms_plane@plane-position-hole@pipe-b-planes.html
> >    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
> >     - {shard-rkl}:        [SKIP][187] ([i915#1849] / [i915#4098]) -> [PASS][188] +26 similar issues
> >    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-5/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> >    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> > 
> >   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
> >     - {shard-rkl}:        [SKIP][189] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][190] +2 similar issues
> >    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> >    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> > 
> >   * igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1:
> >     - shard-glk:          [FAIL][191] ([i915#1888]) -> [PASS][192]
> >    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-glk8/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html
> >    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-glk2/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html
> > 
> >   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
> >     - shard-iclb:         [SKIP][193] ([i915#5235]) -> [PASS][194] +2 similar issues
> >    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> >    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> > 
> >   * igt@kms_properties@plane-properties-atomic:
> >     - {shard-rkl}:        [SKIP][195] ([i915#1849]) -> [PASS][196] +1 similar issue
> >    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html
> >    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html
> > 
> >   * igt@kms_psr@psr2_primary_blt:
> >     - shard-iclb:         [SKIP][197] ([fdo#109441]) -> [PASS][198]
> >    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-iclb8/igt@kms_psr@psr2_primary_blt.html
> >    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
> > 
> >   * igt@kms_psr@sprite_plane_onoff:
> >     - {shard-rkl}:        [SKIP][199] ([i915#1072]) -> [PASS][200] +3 similar issues
> >    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-1/igt@kms_psr@sprite_plane_onoff.html
> >    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html
> > 
> >   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> >     - shard-tglb:         [SKIP][201] ([i915#5519]) -> [PASS][202]
> >    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> >    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> > 
> >   * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
> >     - {shard-rkl}:        [SKIP][203] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][204] +1 similar issue
> >    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-2/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
> >    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
> > 
> >   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
> >     - shard-kbl:          [DMESG-WARN][205] ([i915#180]) -> [PASS][206] +2 similar issues
> >    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> >    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> > 
> >   * igt@perf@gen12-mi-rpc:
> >     - {shard-rkl}:        [SKIP][207] ([fdo#109289]) -> [PASS][208]
> >    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-rkl-5/igt@perf@gen12-mi-rpc.html
> >    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-rkl-1/igt@perf@gen12-mi-rpc.html
> > 
> >   
> > #### Warnings ####
> > 
> >   * igt@drm_mm@all@insert_range:
> >     - shard-skl:          [INCOMPLETE][209] -> [INCOMPLETE][210] ([i915#6254])
> >    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl1/igt@drm_mm@all@insert_range.html
> >    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl6/igt@drm_mm@all@insert_range.html
> > 
> >   * igt@gem_exec_balancer@parallel-ordering:
> >     - shard-iclb:         [SKIP][211] ([i915#4525]) -> [FAIL][212] ([i915#6117])
> >    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
> >    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
> > 
> >   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
> >     - shard-tglb:         [INCOMPLETE][213] -> [SKIP][214] ([i915#3689] / [i915#3886])
> >    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-tglb8/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> >    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-tglb5/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> > 
> >   * igt@kms_chamelium@dp-audio-edid:
> >     - shard-skl:          [SKIP][215] ([fdo#109271] / [fdo#111827]) -> [SKIP][216] ([fdo#109271] / [fdo#111827] / [i915#1888])
> >    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl4/igt@kms_chamelium@dp-audio-edid.html
> >    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl10/igt@kms_chamelium@dp-audio-edid.html
> > 
> >   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
> >     - shard-skl:          [SKIP][217] ([fdo#109271] / [i915#1888]) -> [SKIP][218] ([fdo#109271])
> >    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> >    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> > 
> >   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
> >     - shard-iclb:         [SKIP][219] ([i915#2920]) -> [SKIP][220] ([i915#658])
> >    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> >    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> > 
> >   * igt@runner@aborted:
> >     - shard-apl:          ([FAIL][221], [FAIL][222], [FAIL][223], [FAIL][224], [FAIL][225], [FAIL][226]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][227], [FAIL][228], [FAIL][229], [FAIL][230], [FAIL][231]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
> >    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-apl8/igt@runner@aborted.html
> >    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-apl1/igt@runner@aborted.html
> >    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-apl8/igt@runner@aborted.html
> >    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-apl8/igt@runner@aborted.html
> >    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-apl2/igt@runner@aborted.html
> >    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-apl4/igt@runner@aborted.html
> >    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl6/igt@runner@aborted.html
> >    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl8/igt@runner@aborted.html
> >    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl6/igt@runner@aborted.html
> >    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl7/igt@runner@aborted.html
> >    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-apl2/igt@runner@aborted.html
> >     - shard-kbl:          ([FAIL][232], [FAIL][233], [FAIL][234], [FAIL][235], [FAIL][236], [FAIL][237], [FAIL][238]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716]) -> ([FAIL][239], [FAIL][240], [FAIL][241], [FAIL][242], [FAIL][243], [FAIL][244]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
> >    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl6/igt@runner@aborted.html
> >    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl6/igt@runner@aborted.html
> >    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl6/igt@runner@aborted.html
> >    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl6/igt@runner@aborted.html
> >    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl6/igt@runner@aborted.html
> >    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl6/igt@runner@aborted.html
> >    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11859/shard-kbl4/igt@runner@aborted.html
> >    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl1/igt@runner@aborted.html
> >    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl1/igt@runner@aborted.html
> >    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl6/igt@runner@aborted.html
> >    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl6/igt@runner@aborted.html
> >    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl6/igt@runner@aborted.html
> >    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/shard-kbl6/igt@runner@aborted.html
> > 
> >   
> >   {name}: This element is suppressed. This means it is ignored when computing
> >           the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> >   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
> >   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
> >   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
> >   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
> >   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
> >   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
> >   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
> >   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
> >   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
> >   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
> >   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
> >   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
> >   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
> >   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
> >   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
> >   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
> >   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
> >   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
> >   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
> >   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
> >   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
> >   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
> >   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
> >   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
> >   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
> >   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
> >   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
> >   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
> >   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
> >   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
> >   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
> >   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
> >   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
> >   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
> >   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
> >   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
> >   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
> >   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
> >   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
> >   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
> >   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
> >   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
> >   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
> >   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
> >   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
> >   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
> >   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
> >   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
> >   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
> >   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
> >   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
> >   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
> >   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
> >   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
> >   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
> >   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
> >   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
> >   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
> >   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
> >   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
> >   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
> >   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
> >   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
> >   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
> >   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
> >   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
> >   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
> >   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
> >   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
> >   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
> >   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
> >   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
> >   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
> >   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
> >   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
> >   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
> >   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
> >   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
> >   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
> >   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
> >   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
> >   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
> >   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
> >   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
> >   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
> >   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
> >   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
> >   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
> >   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
> >   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
> >   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
> >   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
> >   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
> >   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
> >   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
> >   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
> >   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
> >   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
> >   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
> >   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
> >   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
> >   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
> >   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
> >   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
> >   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
> >   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
> >   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
> >   [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
> >   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
> >   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
> >   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
> >   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
> >   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
> >   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
> >   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
> >   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
> >   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
> >   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
> >   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
> >   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
> >   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
> >   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
> >   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
> >   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
> >   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
> >   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
> >   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
> >   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
> >   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
> >   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
> >   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
> >   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
> >   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
> >   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
> >   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
> >   [i915#5353]: https://gitlab.freedesktop.org/drm/intel/issues/5353
> >   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
> >   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
> >   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
> >   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
> >   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
> >   [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
> >   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
> >   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
> >   [i915#6032]: https://gitlab.freedesktop.org/drm/intel/issues/6032
> >   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
> >   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
> >   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
> >   [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
> >   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
> >   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
> >   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
> >   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
> >   [i915#6254]: https://gitlab.freedesktop.org/drm/intel/issues/6254
> >   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
> >   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
> >   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
> >   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> >   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_11859 -> Patchwork_106075v1
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_11859: 2b539ebe2de2621feacd8cde862b1bd99d9612f3 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_6561: 4b673211d1645eaafa9da32eece4c274d8cd6c41 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> >   Patchwork_106075v1: 2b539ebe2de2621feacd8cde862b1bd99d9612f3 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106075v1/index.html
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
