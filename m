Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E87817FABC4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 21:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E1E010E0AA;
	Mon, 27 Nov 2023 20:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD54510E0AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 20:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701117776; x=1732653776;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=aTXTPL5zKIO8VV/TpglHIqIRJmrNE02wZOIKMx7e4h0=;
 b=Ow7szdCMLodMsBST273cYsX5SyCQHkshcVdnhodgrzQ7VyPAtPGeLlgN
 /DtFTrtJ2R4pOhQu4yEnFxxoQoqaZwHRMNFQ+bItzmhGuCwN1Tld6rcM9
 igj35TbLXY6uymY1dZftP8sLSam3SpXbVBOI0kKEr57zfrvnqGYsRnosH
 49MI70hB5pcTNTSEJdEHO/bs++ouYmceq4AxUJMrnRJdYV/Oxo176d9BK
 Zq8lURF9OlfaVp05yWBvKsDnuRJPpXwBPZvaBWtY76naHPX3EtD3k7UMq
 a28cbNcF16oRjsZh2eVilF5w2Ih2uSIEBdD+NEn+0SyXmDT8UgKW5KAeu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="383170896"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; d="scan'208";a="383170896"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 12:42:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; 
   d="scan'208";a="9719908"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 12:42:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 12:42:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 12:42:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 12:42:55 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 12:42:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mlwL7g5GZkC9ZmBMQZLM46H6kIzGG4nHWE4T4bDYIpT53mg7w+GOuuGT0Vdpw1jFcuq3HbGo5pRLDUFr6y3l5Ls+qY/arMR/RWZ8uM3/w7b0U3/fw5snCtWVyfcbiV+rZjB34fLGHIx6VKoiJznfiUlqnwaTJbJvBmde25K7KQ3dcuHBFOMj6JAQ9LsQQNi6g3qHpW2Zgx3dWimWrwjJhZgwciVQyZFCGG/lqD3HhymyjRozWdfWUgOn1YNzk4JQiNWy1+1tBUYnjAM3DbvoHh2pXscr7+jkOa5AROA93OlvLq6/FdokSk0hLMbJvHVpRJz+WxvAClX6AgNzjKBmfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2ua0oJ65QkZVPX7VdGzvOtGv9tIklFxHCHh63hxSHmA=;
 b=TIAIqdVxzS1rjLlvPYiUJXry711jyYSPirm1O/bVgm603AFiBoOgUjBWG1JSy3jy7PjEn8amt5oq2+o/DfJybjsnYLuJXUcOWTK2BV8hE+tPKz3F+Q5nhUP6UkTAaQSdIjzV9ND2IC+XDAnenv2Y7DsMEDz326h/DmT4jDJSOZXCAWaj4d9lWBBk7UIsWsUN3yvOJRigfz3/lgSIhYnkfk0WGxvSgFBP1E4eYG/i4qhextGpDOfHLyEvT66JA6RoDjYnb57k34bD71zGE7/58uHDhl5M2jpfoRT0OUUX+NjwJd8AP1NH/8xgWMIjdKFk0SA1XpT3Sch+R44j9ZiIOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB6694.namprd11.prod.outlook.com (2603:10b6:a03:44d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Mon, 27 Nov
 2023 20:42:53 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 20:42:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231127190043.4099109-2-matthew.d.roper@intel.com>
References: <20231127190043.4099109-2-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 27 Nov 2023 17:42:49 -0300
Message-ID: <170111776913.56286.4019735813093623125@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0187.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::12) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB6694:EE_
X-MS-Office365-Filtering-Correlation-Id: 15ec87ca-1fbc-45d5-2733-08dbef896d94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cYTnkhyLU2sJVj50RVAAf3Uu1nCaE8Uq15Cm7GTCvtB0JSIuusbTtJuA40BGBKFkwMMDVu191GW+iZo/h4+8Db2x/J7bJIq0k2dlyi8DOF3AT56X2gcZemB9rytIb748Dbe8hK2ZxJFez0e7/Q1Zn5+vOHFaC+H9wXNIisDrkKaUnYjft3zrEIEsNvIcAXHge7j8y9RxVnSn9PcTNGn0V1CIF60HRvKaPgAJcVyVYgOSCgHsjlkhSuvAxpYmKIVRFuZyHIcDHIoLYY65nzuwVCqNk5UVwPLQAUR6E9iH4G3KFk0DsvzF/VUIfPlB78i4fv1FITt7jhfc6LRqJ91C/PN1Zyl9/uSF1QE3Fox0r3tV3G4R/epdwD95unwNMbiO40k+Tr9b24Pbr2qlTSE9CJ3353eHAOUEinV9dMQdQfxYIAm9rwJCiqmGQqPtqMjazWhRn9kr5KMArYKAKJXLZzTQ9LdfFLL7HivzoMAfnmXH27bh/L3yk4jGJwWJ6ZI5cP7i71ZgLMsAjmN7FjX3Tb1HXjc2ofIY4lzfXQDJ381RS1mlPAk2euUx7vOT3pYb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(366004)(346002)(396003)(136003)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(6666004)(8676002)(4326008)(8936002)(6512007)(9686003)(6506007)(66556008)(66946007)(66476007)(316002)(6486002)(478600001)(33716001)(38100700002)(41300700001)(4001150100001)(86362001)(107886003)(26005)(44832011)(2906002)(83380400001)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFRDZzAyK3RTOXlhYUVyS2xpck0zeU52QlFNT1Z4T01odlp5dHRwcTBKZGZ5?=
 =?utf-8?B?ejBnMzRxQkNVL2ZWM3NJMGZwVExyWkJpOFR5Q1RreWd2YVY2bTN5c2VBYlZa?=
 =?utf-8?B?dlJVcVVjdGppT3ozeWxOWnlSMW9yVVJRQzJFbXp6bTBFbmRqMU84dTY5dldV?=
 =?utf-8?B?ekRoTlM2STRlY2Vka3QyREk0MS9nelF4aGpVSCtScFhxWE9lUWhCL1lxanRt?=
 =?utf-8?B?a054blNXajhCeUdYNHhQY2oxK3NJUDRvc1NER2dPUGpCOERMMmR5OFRsZENi?=
 =?utf-8?B?Tmd5WkdDbXlKeFNKeUNwQ3lHODd5WEp0SlJkRVhYVUs5bkNVVGVOSEJONUZO?=
 =?utf-8?B?V2pVbTlvbjk0QWNnQkxvNzdyeGQydGtvb29SUmt2YVZnOTNsRFRva05nZSt0?=
 =?utf-8?B?Um1ST2xnRGIrVS8wN1hRZmh4NWhsV0NBa1FYcnJiY3pnWmREd1UvVzNoZnNi?=
 =?utf-8?B?UWsycUJyMWlSeTdZeEw4djFFRHJCUXp3L3VQODYzdlozNy9XQUp4bzNIaE5Q?=
 =?utf-8?B?aVhJWTZ1LzJMQzdHRmxCTUp3UnBZbTZZWkUvRm1UK0hqRWtVQXFoT25NdG9S?=
 =?utf-8?B?SUIzTUowTnhuZHVSUXZ2VVBlbmZEbXlUWGFXeExrU2ZHK0ZiR2Q2NXVJTlJa?=
 =?utf-8?B?RHI1OFRma2dzODBveXdWdGgxSW9RN2RsL1d5VENlamw2bm55b045NkJJdHNK?=
 =?utf-8?B?NWExYTlYQURKRjRNbWlGazNtTVlPNjBGRWM4NGQ5clZoZXBFV1hNRDlTdnps?=
 =?utf-8?B?ZzVabjFTUEhwUUhIUm1wTmpVV3VGTWRERHllM3BlMnVDMUxvVURTbWNaelo4?=
 =?utf-8?B?QzIwaUUzdnFtaEhUclVJSDNGRFhaY0xlNEo3TytPMTVQVGxxbU1mV0E5S2c5?=
 =?utf-8?B?c0dHMU5NQTQxMTRZUFBXVWFUNjBtSU9MWjFKSnRlc2hjenJ6TXRoeTVGUUNX?=
 =?utf-8?B?NlgxRVRuMW12OHgvS3k1WkUrK1BjNWpodjhJVURwc1ptM2ZSd1U1K2FmTHZw?=
 =?utf-8?B?WmNGWUtCRnAzN2ZqMTlOcmFnaU9la1ltUTZsSUxQd1d5bHVQYTNydFdMMTJ3?=
 =?utf-8?B?Q1RobkNMK3EwekJGdWJjdlJ3eE5JbHRMZjZ3MkZaMWNmVGdiaW0rcVlMZXJ6?=
 =?utf-8?B?R01MYTdEeW9sYnY0RmlsTlJSdEtuY2M5RFpHNEZxMGYxNlNHcWxQYXcrRlZY?=
 =?utf-8?B?NnZtSjh3SlJvRS94dTN2dUQrWHR3UldZdkdyYUtsdVVVcnIxaDZjclBCSmE3?=
 =?utf-8?B?eHdSY3NtYnpmdHE1TGtOTUJKbWRDNDM5RmVlV2dRZ1krOGtMS1lVUW42U0R6?=
 =?utf-8?B?RW1KZXdKUS9uazRPenhZckVlNkFVeVI3QWNoVitiUlRNaENvb1hzL2FHdG5G?=
 =?utf-8?B?K1RtdVZyS250S3E4dXhERlVJajJUTzdORG1xVkwwUVoxQzhaNkZXU2U3cVFG?=
 =?utf-8?B?RFVZeWk1MVIxVHZ1UTlpL3EraWJKbXhDdEYrL1ZJTmVkVDdwejZSTHRIUTVG?=
 =?utf-8?B?M1JOZ0o4Ky9kWWtpMDQ2QUtrb2dLcEFuWUYraWZaTTB6NzdwQ3l2MUpTK0NR?=
 =?utf-8?B?em1XNlRjRlVMd1d2KzlrZlpYc2pCN2daV1laT1FBcGxmb2FoUFpYd01Rcjdp?=
 =?utf-8?B?ZWVEL1dPQUNlbHk3WWNhcERETU91bXV4SHNYdTVHNjJsbStQUFN0M0V5Y2pT?=
 =?utf-8?B?Y3dsa2dhNTREN240c3cwYlhMNUdaMEFhaUFXQjl1RnJxazB5eEVDTnNhZ0JV?=
 =?utf-8?B?cW9DNVF1WlZPcGF4MkFPcmQ4MWt4Qnk2TzdLMmFiSFhIWFNGbTd0b3VWUGtr?=
 =?utf-8?B?VGtjNWYzS05jQlFmT1V4LzVuSnN3dC81ZkVJZXo3U1BuaTQrQWYxUG8yVEIw?=
 =?utf-8?B?bXFBblNaWE9oQ0x1bGhZQ1gyRFhNQk5JTExEM0pLU2grRkU1VmEyenJ5cCsx?=
 =?utf-8?B?OVpCaFdhWUppTnhmT0hWNTRZNHZDRFRJRVZNVkJnSmxyZDFacW1YOSs2OFpr?=
 =?utf-8?B?SWw2YnJiT2FKVGZEK0lLVVVmelJTVFZmQm11c3VlRFNMVTRxcUtJL3M5NjVC?=
 =?utf-8?B?eE1pMUQrUmtRaUhhdEd2QlZOSjYzNTB1TjhiY2U5Q2xObDh1V3dTVjBGWHQ1?=
 =?utf-8?B?VkIxYStOTUtmYVhhbnFvRTJpZ3JuSkR5QmlUR2M2bUlnelpFb1N2TktYYXNz?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ec87ca-1fbc-45d5-2733-08dbef896d94
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 20:42:53.1808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4cRhA3Z94VcK3Jj4702n1mzOC6zH3BKDZrjQw0PWEXrYrnF6dvDJdOq8TxhyK8Y3Oj37lBDV2Z9Lk3xRAQuuXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6694
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Drop Wa_22014600077
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-11-27 16:00:44-03:00)
>This workaround has been dropped from all DG2 variants in the latest
>workaround database update.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 --------
> 1 file changed, 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 9bc0654efdc0..4cbf9e512645 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -2357,14 +2357,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, =
struct i915_wa_list *wal)
>                            0, true);
>         }
>=20
>-        if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
>-                /* Wa_22014600077:dg2 */
>-                wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
>-                           _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLU=
SH),
>-                           0 /* Wa_14012342262 write-only reg, so skip ve=
rification */,
>-                           true);
>-        }
>-
>         if (IS_DG2(i915) || IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) =
||
>             IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>                 /*
>--=20
>2.41.0
>
