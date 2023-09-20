Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2F77A83AC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 15:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6F410E4B4;
	Wed, 20 Sep 2023 13:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA47C10E4B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 13:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695217363; x=1726753363;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=pJWTSM3leAmryilQeXIgFTYQS2RNVQ7NDuFbOOVJ7Vs=;
 b=AnAaTcz0hDc12gJb0PsYZxvvRDJrpM0a2hm2qsDtlXitITUo1CkZPqnT
 D8NBaD+cAvwZk8tsfnNChWV+A7OB7835t27glQw8BV8iLPpt8KPfzscLW
 agAOxVfnNE9cYo5uvQacoW6xC99ZPGfE2bbF7UMHhXD9nzY8x9yy3qhB7
 P2wUSMrTWSX6+s0fFLysN4/v9YgsVYPJ4VoNrPi9j91lPK3dmctnukDJ6
 lJrMeqMRntGoe5R7dPt4iXIYXvL8lXQye26Y4Ikk2YAyYVtlD1x/7qSBV
 nrEZwq7GMm3f2bAnKpJ8ZFmzLh3ulkbG5hVUQTA+bZ3fS5KedUI82P57A w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="379107451"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="379107451"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 06:42:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="723291472"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="723291472"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 06:42:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 06:42:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 06:42:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 06:42:41 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 06:42:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rr1d32BIzup/o9TZ4XuXyp0Db7xGc4jVXn71RV6hphrNgMUw99HTgQyvqlAH2F/W8Cyn1NIZYLEmnc3PlcYasmOhTzNpV1k3vykHnzywtiw3PRsJSKfEaph0Shl2WTlbx18Jigu1gwyky9FxRYFpXKV/U4jMerms+N89bd1im8s6PxWLX9K155Z8qqjX0wsmF0FhsWh2Wl6pJpimWcgylxJbaIGiLQYMzxM0Kp00IXdbXedPM7OF6qIRtZObFawHL9Jb5Gd1GCqA42FVZznSUpFUBaqdNVk/6cOabZsHl9kUoZZuUWL4Bh2XFfOWJNi0DUZhRO2Oh35vimeUAbHALg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CkKdRu0n/MTidzWIzDHTCTIlFew9Fq1I1Hk3aeTCIKA=;
 b=lXeqo8tWyQSFckExeUfaXNL7ePx9rLOWKQK3P+vkixh/FDJwY+KCRHPiJYWGp7XG9BHRpJR78GNMRH7pczM2uJHY5DSl2drhkigJPIL6qThis/EaIXAnBWMSEzA/113oLJJJ6h2vo34BiJeJq2dZfmJBJOt3bxri/2tgVixAA5vZgwbhAOBXvoGA/pbO/NAs9QnxuQ9Jx2u1fNtM+XbnJqtvtRnijOJL/+P33kzWAsoyPtq5nPAvgHWjgoxYkZqnpHVt82jJCQ6Itiq2f0LvYtTX7XLeeGLyRsyGt3H3XtVJF6GSmIr6UB9oBxMfVHgVuZBXatSFGhxUsEbjJgkm/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB5098.namprd11.prod.outlook.com (2603:10b6:806:11c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Wed, 20 Sep
 2023 13:42:38 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 13:42:38 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230920040547.181861-1-shekhar.chauhan@intel.com>
References: <20230920040547.181861-1-shekhar.chauhan@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 20 Sep 2023 10:42:32 -0300
Message-ID: <169521735264.7665.2007556118324567553@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0096.namprd05.prod.outlook.com
 (2603:10b6:a03:334::11) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB5098:EE_
X-MS-Office365-Filtering-Correlation-Id: 62d93927-25c5-49d9-15e9-08dbb9df73a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AY8SVQ8w/B+lkmBkyG/sArxmHAVYn8pU+AX+UWfTfs6NRbLeQlu5Gj/8yV76a3IA8lhvnEHn0cdwmkxdy3sas3O0qj7JUkXCAtrdcDefQ0ZdzQuqn8ZnYSYVVLXkpXKU7BMrhF6GMQMkmP2lYYdkep09JtHQ0E15vB5fEw4OOIR+amQ+B+NSL8PmfuC25xnFwh1EYOld636KqLDyqkwuuv84E7JLtaL8nnsIQdTpKT2bkPBMzf3gD7lmVjwNq7QwuQ1eIc2xUJIu41PiAAo03a8yq/Gh1+0QzeI4rRajcI/GXHJjMe+4VNQyz3kpaJjlkSsFv24uOguMtz+NnZ0X8DP4YLMcKBph0cqQ0v+EE1o3fgmsKgrM8MfUk7/T81JU7mf//WRKQEXLS8PAmt0mF14qtwmKiRzhumqHNahjHlUDILFgaMo8J9YJcT0LfA0UPhBVwgHlzLqqK9amaJDAczA1e0VV+F9NuCcms2Sytn2Mab1whyWhUTuYwXwwuNynDMD9ZpAe+tIG8qkORv/+MzTSPHZ7e//kMvds1rkjH7PMBvhThH7LeBNvaGNSnxQ1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(396003)(366004)(39860400002)(136003)(346002)(1800799009)(451199024)(186009)(2906002)(5660300002)(44832011)(26005)(41300700001)(66556008)(66476007)(316002)(66946007)(478600001)(8936002)(8676002)(6666004)(6486002)(6506007)(9686003)(6512007)(33716001)(38100700002)(86362001)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1ZHY2NHeXkxUXI5QUNSVGxSQityeHlGaUNPc0xmdVZxNXJuc3RVR09tZytv?=
 =?utf-8?B?c3VhOXhPTVlNWXdlakJGTGsyY3pwRFFnem9sZTJ3WmN4d0J2WU1QL1VTd2pS?=
 =?utf-8?B?TnlvczRvNjlTMHdHalo0UkgzNzlSYnVzRjRmYkFnb0RmRVY4clZyVkNhRElj?=
 =?utf-8?B?UEhJYVlrMVVieUFEL2tBT0Qwd010dlVtSTlIWldZUjE5czdKS0I1NHdNQ241?=
 =?utf-8?B?ZVF6dmxPdXJ0REN2T3BDMkMycWRkcDJnU3pUczgyTGViNThvNHF5Z0ZLSTVE?=
 =?utf-8?B?RjdlVmpSQ0hVMTBtRzJBOWRLYnZUUXNQT2lKVlVsTkR3VlY5b2RVdWc0ekFn?=
 =?utf-8?B?SGVrKzNjdy9JSFppR3huKzFFZlNvclVPdDk1U0s1aUQ0RGYxYzJWNHE5MDEv?=
 =?utf-8?B?WFhoRHNzTDJqOEo0ZEZFR1hZQnFBNjBINXk4ZjJkMnRJOG5tRnJzQkhjNE9k?=
 =?utf-8?B?bjFhbUhIQUlEYUN3VTQrb2ZOMm9FdmFqWjJyWmprVnVGbTU2alc5bnlCN1ZE?=
 =?utf-8?B?MUhZNGVzZ0pFSU56ZDJ2ZzNpQ1cvcUFJbm1iZlk1cnlDOGdkVTd2Q0x6ZnNt?=
 =?utf-8?B?RmZldjVoWFQ2YUZPYXR2VTNPYkRkRWV4ZHhlU3VKZlpacUxBS240NFlKVjdv?=
 =?utf-8?B?RVFhazV4cGhqUWpWWk5uVzRDNUJ5azBRcDlxam54WngvbGtTT0h0Vm9NT0t6?=
 =?utf-8?B?UU1NN0RJL1lGc3IxVkFXUWdPSVpUNHl5bTR3MldhTVNpaUMwZkZUMnpDaUx1?=
 =?utf-8?B?b1ZKdU14V1A0REkvVnRTS3hoejFWNGR1SGNBbVJGTVoxQkFnZ0tjQU11a3ZD?=
 =?utf-8?B?cG9US0lPWUhOVHVlWHgzNUNUTEZDTHB4VzVlYVI1MXIxbXVnZXdEd1VHZkQv?=
 =?utf-8?B?VFo1UlhDWnJ3Uk1qKzJVbGtFbDBXby9rbHIvUGcvOWFuSWJsd0RwcXpJUU9Y?=
 =?utf-8?B?TWJoQWpWMWlGVGtLZzFRN1d5c1EvUFZtRkFCUnhXSnlIUjJLSDVzeSt0Q0Mw?=
 =?utf-8?B?ZjVGRmVKZFR2R2wyMUdVbUZNSGozU1F4Z0JwR3hUdEFRUU56Z3hiV1dDTWdo?=
 =?utf-8?B?OUFCSDFBeGtTdEE2SWl4Tm9wTDlxNnZaMkZ2N2NEOVBSTEVQZHh6Q0x1WEJN?=
 =?utf-8?B?MjRBYVVJdGZkRy85aFZ4cHNVbWhNMTZud1pJNDNHZ2dCU2RRYUFpc1RkaGoz?=
 =?utf-8?B?QmR0bkwvdzM1dmQ4Z3VHOGRoVTdqdldVcmFRTGxERDZCZ1VNRWlLVGR6OTk2?=
 =?utf-8?B?WW04UlE5aWw3TWZXUm16MTUwS3dzVVU2cVdZREhvd3N4NEdrN3RWbkkxL3p2?=
 =?utf-8?B?T0o1T05yRUl5ejBPeTMyYy83aWovTGNsbWJ3aEpVeTRtUVJQNHk3VW5DNVps?=
 =?utf-8?B?NkplYWZqb2FTZm9MdkZFcTVKdHBQSHBFWnpoVkIzd2NBY3VQNU9VM1lmbkw1?=
 =?utf-8?B?eXlOV29JVFgxYzR4V0xjVGF6Yi9OMmVWdndrTG45ak5sa2I4VW5kd1ZWenQv?=
 =?utf-8?B?Z1ZIeHJDcWlUUmVTVzRQSGdRRElHYm01R1YxOVNFZjczVTR6cEwxcnRBcUh2?=
 =?utf-8?B?YlExVnQ5ZzMzcVZOTlVBQk1STG9EUDE5dFd0cXlxTkticEl5N3VsbDlhaFJj?=
 =?utf-8?B?aEM1MFdFSWZjek11bGlKbWF4SkI3ZVBULy83N1A3cXY3NmZJeG1TVGVOMmF6?=
 =?utf-8?B?SC9lT3FWOXYzNzR3eE9oV0RoZFF3ak9nc3YrZTJMZzZ5L0JyRTVTYnltQ2tr?=
 =?utf-8?B?N1MyTkFQZThvQkhXQXI4Y3Yyd1ViUjhVZ2VrQWEzU0JtdjRFeFZFek1NK2FJ?=
 =?utf-8?B?UTJvY05DdUhSNTJqWTI3U0RDZ2VacWF4OEpjRi9hMnBRZ0M4ZXc2UmsyU3Yx?=
 =?utf-8?B?bElCSFA3T3liQ1EvMHFQUVpYcGplc0s4OWQzTTREeURjRjcrWmFDdkhOQUZL?=
 =?utf-8?B?cHRVQVRha3UwYXBrMk9PWmhTeEI2NnltZi92TkdHeDdPbDdjQkt6OVJYLzhy?=
 =?utf-8?B?TlBMb1NjTlVrVnVrdWl5Uy9qYmFKMFRxUU5wVitIK1I3d1NkMnp2LzhKQUlY?=
 =?utf-8?B?N0pVcUVXbUxKSmNsRm9TbFdYODRYUCt0b3pVYlEyZTg4Ym1yMW5OR1k3cWZj?=
 =?utf-8?B?azlSVzduRFBna29iYUkvZTJRVGV3S1AzLzd4cVc2VXRWTTlLNEl3TmkvSHJs?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62d93927-25c5-49d9-15e9-08dbb9df73a1
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 13:42:37.3593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JcH+XoMQCnKnn8ulHug1vNpQGCdCIMSABHTyl9qpIQLDcRImRWMk4Lf888fAO9IzlkrbqvhNDn1tt3YyeVaZOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5098
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
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

Quoting Shekhar Chauhan (2023-09-20 01:05:47-03:00)
>Drop UGM per set fragment threshold to 3
>
>BSpec: 54833
>Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> 2 files changed, 4 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i91=
5/gt/intel_gt_regs.h
>index a00ff51c681d..f8ab99affa15 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>@@ -1227,6 +1227,7 @@
> #define EU_PERF_CNTL3                                PERF_REG(0xe758)
>=20
> #define LSC_CHICKEN_BIT_0                        MCR_REG(0xe7c8)
>+#define   UGM_FRAGMENT_THRESHOLD_TO_3                REG_BIT(58)

You probably want to define this as:

  #define   UGM_FRAGMENT_THRESHOLD_TO_3                REG_BIT(58 - 32)

, and after the definition of LSC_CHICKEN_BIT_0_UDW.

See more below...

> #define   DISABLE_D8_D16_COASLESCE                REG_BIT(30)
> #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT        REG_BIT(15)
> #define LSC_CHICKEN_BIT_0_UDW                        MCR_REG(0xe7c8 + 4)
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 660d4f358eab..3f3977014ee7 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -2914,6 +2914,9 @@ general_render_compute_wa_init(struct intel_engine_c=
s *engine, struct i915_wa_li
>                  * Wa_22015475538:dg2
>                  */
>                 wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XS=
IMD8);
>+
>+                /* Wa_18028616096:dg2 */
>+                wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, UGM_FRAGMENT_THRE=
SHOLD_TO_3);

...and here, use LSC_CHICKEN_BIT_0_UDW as target.

--
Gustavo Sousa

>         }
>=20
>         if (IS_DG2_G11(i915)) {
>--=20
>2.34.1
>
