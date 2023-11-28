Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 102F47FBA86
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 13:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585A410E052;
	Tue, 28 Nov 2023 12:53:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DF810E052
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 12:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701175990; x=1732711990;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=OSJVUkEyyXOMb2fr4S+w6ekw83D2j2y9RAnqoaJRYgs=;
 b=f+GISzl2ZwUoc41pfIGB/TWwARFMsGmhWoxgrRXUUqchKjrNtGfbpqUV
 H9YJLVuFY39K4zXrdTIU9K6SAFRqCbWtwDlpRz+T784TtW9UWx8OWvWo7
 e60EACT084FTUSd6H5sfAFeZfIKis5On7t0IUrl8Q1nsh1nKxsVijzYPL
 ajQwDXIf518WqnkixeYj9GSFD1r7VLCaxHIDuHwOedfhT68OfuSlIDXmv
 XWgwWjwTSAGQAXgUM379RAj74fwppI1IKaD05+PPi4cvaM2LHXcOOIJua
 Kg6o+54Vgu7pkUHyhOHmxRzLKvYMc09BiEiJ4A3p/cE4Ch/j/Y4ZM2Des Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="383301992"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="383301992"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:53:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="941913503"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="941913503"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2023 04:53:09 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 04:53:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 28 Nov 2023 04:53:08 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 28 Nov 2023 04:53:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QCaOi+TxwLipLA1dk1ktW7qdntKHCeoE/1qrNcp79W3ZOiDH0HGrZ9FZ5NJMJ4D2la8y8A736VUPwwq3/lvvYGd21m+ps220c1ZwOvXuPz8hkMbOgj0S9qizg8pSxEiy+TnffCmcxhvVywEFJ1soxKY6pXfS5Tg8oZa4PyaxpbhbuctVikXZdWiKBQJTCPveZRP6Wqa2YGnya/afX+iZH7IKB+jqpqJ6lZZu1HOfjb4HEqFeoUFsGN5wZiETvdbz04bhcK8Rx/7l63gERiFREX94DoSHvhBpMKi4zjd8BGdTL3zFXvUe+SRW/fuMtpm6lzIHg5WDuCbIB30ihsd3QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i7vWGiaCuYpWcZmAfO6ld+CBdBlJV6JRkACm1WAgdCA=;
 b=iPpva7KTt1C4OXp0ijKqwbsf60cYjfV7a/r1UKjUrpoYtC9pkPmA636u3GYh/mLI5NdPKqwBbyIpuWDxKJlnfCCSiEYp36x7X/jf24U8QC6CN9smvyUVQEs9F7GfoD9M8fzc5zF0AYT7PcBrnZUWkhWu9oR341nFsdd27b9NHwl3knEnANMX2SVFxIljmnbDtlSXxmEc9J/BpPpstOlJywXm1QmYlCKpLN+nQyjemv1IGe5BEjWga7K4iFSvjpuDTn6e7jKDS7VquPZBy6VRYWxxySLZUAllxTOQGsfmlpfR5uyWaV+HFJCiibnufMy9JH4KQTNfhnF1xEVBabM5wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by IA1PR11MB7367.namprd11.prod.outlook.com (2603:10b6:208:421::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Tue, 28 Nov
 2023 12:53:05 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 12:53:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128083754.20096-2-stanislav.lisovskiy@intel.com>
References: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
 <20231128083754.20096-2-stanislav.lisovskiy@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 28 Nov 2023 09:53:01 -0300
Message-ID: <170117598118.1445.18427859934348892743@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR07CA0108.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::49) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|IA1PR11MB7367:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b9631d8-c3d8-4657-4b38-08dbf010f67a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GulsH7hpQiUSOgMxpb12xm2hyJkwE88sLXzy1NmosiPoe22aZgaHD2+RAfSEuPBUgsPEQWUeljtvlqOdwRxbAYoUEgazAARjCMgo5Vg2VFD5IbccxWeBfbSIeolPJiQdW3+7B/sWS1G5Uj+obC4IiILUsJ8p6+R7GiwXi1HI0uhOE/W+HQ0Qf2gnE774ldi4JT2xraIzjhdIl60CObOCP2bG1MSzqOY4r5FfH8zd57l7Rq4mhL57H63D0gekHVbOxytxSRHU9b3S5nhaf9dMY2c0JbUIRMTK1Rwf4Vks538flZ6ribJJjy1FPBXr1XyE+Fq2JXg6t3o74JhXNn5xdA2ztcwOHQvwtfXx7vqGOjHfaiRIhENKLcNHh9Dv9T1rwaqAo/hKCy5BcDGBALudCS3h5ERHI3VeMnQ8JC3oAdOkMZptrlpCLiQUDKzMlHR+xbCYfy0Ip8CFGL9w0hGvz479+SobbEX3fj9OtSVT/x+b/o7vvo/jmRjoyj0F4is9XWlQmvFrNA7Rz3rB4WpNRJzqSI0dernSegdKXCbX+YvQv0KagBzCO1A6uLcxUZ+U
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(366004)(39860400002)(136003)(396003)(346002)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(38100700002)(41300700001)(4001150100001)(33716001)(83380400001)(5660300002)(82960400001)(26005)(86362001)(2906002)(44832011)(66476007)(9686003)(6512007)(6506007)(8936002)(8676002)(6666004)(478600001)(6486002)(66946007)(66556008)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RURVVFQ2ajBvWEZJV3JvRjV0aDZmcDlRQU16U3RvTk5hNWpKQllnd0pVRVBL?=
 =?utf-8?B?aVBjQ3VVeWw1bmtSZytTN3V6a1ZJU2Nrd0pTVVE4NjFJK3QwS3JIbXdJWUtw?=
 =?utf-8?B?eHRCKytXNTZRZXF2QmJIc1ozelRLMFBNd2NpYmM3Vkd5WTZvZGZUbnUrb2x1?=
 =?utf-8?B?YkVMVGp3YWQvY2dNUU8ydWd4WnE4MG4rRGEvSXhtYVNtVWZITmVYUFhRbjZ0?=
 =?utf-8?B?V0cxL2N3eXZCT1grN2gvdERRNEVYVUZaZWZyT2lkakpURG9HdUVvOHdNTWhl?=
 =?utf-8?B?UTFZVTJMOFF4YkNYVkpUM3E2dWNYaVRaZE9wYlBOaXlGc2tmbDJubDJibXhY?=
 =?utf-8?B?WlpwT1dKUllRcGt2c2tLSmcyZnA5dXZGdENEVzN2cS9iVENHWHdPOGRnck5C?=
 =?utf-8?B?VFNXZUMwQkUxakNkZlBjRUtBT1RGWXhUMVQ2c2gyTlBuZVIrWmFDTmdvSFoz?=
 =?utf-8?B?ZUZMWllUVWlaQ0xyT0FrU3FiZDlySzdyRzBFMW1YcEQ5NGNHM3hzcnVZd2RC?=
 =?utf-8?B?citacUVKSXlnNUJUSXVhc0pldHEza2Z4bE44NFdiZTJHTVJ4MHhrSE1xTHBn?=
 =?utf-8?B?alVicG4za3dvUXV1Um9uSzdsYVVIMmFtRFFKZmlnR3cxT25MNHRQS3FQWEhs?=
 =?utf-8?B?R3JTUkZuOHZjZnhtM1ZNTmFpSWpzZkRlZyt1RFVqcUttcjVyT1ZyVUozOVRV?=
 =?utf-8?B?Q3J4dGJoa3g0ZDBtbjI4aUt6Znpmc28yMTVhK0NRbU5sK0VNWDRnUllxbGNC?=
 =?utf-8?B?NGJ4czArcWpJblV3bExGRld5OEVoSTBMRTF0ais2WFRTMnNWUW9KSEF5RG11?=
 =?utf-8?B?dkFVUjFsS3BzalhtT0lYQk9weFdSTHk1MXBkUGhYQU1TODhYNHZEYTdOTzhw?=
 =?utf-8?B?UXRyc1JDQlYwYkZVem84ZGtiMDl3L1I5clNyRFF0TGpOdDcweUJSRFpvSTZO?=
 =?utf-8?B?eGdDWmNIWTVyU25LWXE5WUp3Nlp3dnhmN3VlcVM2NjVENXJwaUlpeXBrTC84?=
 =?utf-8?B?UGllUDN3NzZVMHQ2eUJtMjluSHNyTERSa00vdnJUejU1eTkwSlA2MTBteEky?=
 =?utf-8?B?akhkK1FNU3JWNy9TZ21GZHZUN1dKWSt2SW81MkU4MmVuaHppYVY5R3NYdDVY?=
 =?utf-8?B?OWhKRk4ySTZMQUp1SU96Ky8xc0V4Y0F2Z3BVNjhRczlwTk5ySVI3UnNGWTVM?=
 =?utf-8?B?aVp5R2dYb2pHczVrQXVzdWFxNy9sYm82NldqSFdmSDNFcml1dVJhcDVRTlBh?=
 =?utf-8?B?VU8rZTZET3VFUFVrZG5zWjZrVVhacjY1Rnd0T1hSVkgzKzBQVURLanhzOHM1?=
 =?utf-8?B?RG9tcU1tSXE0TGFUeFpjczh4d2FkeEp2SWwyMnB4bXRteFNiaUtCemU0dHZ4?=
 =?utf-8?B?WmYwUVNZSldKR29qVXBpZ1dYR1FGbEQyYU0yblVxU0VFSG41aWExdFVBWHJI?=
 =?utf-8?B?d1YvV3pWa0JibDZyTVpHc1AyQ0pYblZIWFJBTXYvd2tBMHpsM2gwWXhVTXFq?=
 =?utf-8?B?dEQwR1RRRUllcUQ1bEhMQUJMQkMrSG91eDZDM2VtdElGNzVHeExiVTNFOXk0?=
 =?utf-8?B?OHdvU0hxTnFRdkYvVVJMQnB3ZlpFRFFpN0tZdWtBUWxXSVpNMGU0UE5mMmZQ?=
 =?utf-8?B?RVFObGZTK3BLaEg4Z29TNVdmSndFcXByQVRCV0hhREoxMXlaV3hlTEV4TW5L?=
 =?utf-8?B?NW55NEIyd1JhNkFQa0FLYWdGdkFILzFrZlJSK2pQd1lXOGVTRkN6bmRtSEtj?=
 =?utf-8?B?ajhSOFgxaThlUFpYdXp5TStFRHZVSGFWNWNKQlpJc2VUMnI4cWdGRHRFbVJn?=
 =?utf-8?B?M0pUR2N1ajFrd3Y2ZUNhckRISnNqdWQzSWE4RkFYMDhMek5TOGZPV2NpSlRE?=
 =?utf-8?B?TXNySGJBeW9JM3dzZ2JZNEZEdjJyTG5iTEdxMlhxdUZnL25XdDBETmlyVEdK?=
 =?utf-8?B?QXpzNzVMSmcrd0pQdTRSTi85cCtJSkkxdVdIUXNMMGhuNS9yWndVbjJlQWh2?=
 =?utf-8?B?RUFyUDRpUVBEa0hqZ2hheDBQbXA3bkJhSDFYWVJ2dDAvQndXRElMM2Q1M3hB?=
 =?utf-8?B?ZjdHQ2dIbzRwMW9IVWNXWCtZUE5IdXJ3VXVvd2RaWGtJTDk0YXBWcm85SUhB?=
 =?utf-8?B?ZEJEM2Q3TXZBc0VqN2s0eENwU2hGb2s0Y2dqUUVZR29XSkVqeFdCNFBlZVFM?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b9631d8-c3d8-4657-4b38-08dbf010f67a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2023 12:53:05.0382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +0ByWCFd23JTKG7TJ4kBoL0i7aI5ODVQYfWITVQxs0Cyn9Ze2uU+5DuFzLyj9ZwcaCkHWO/SpT7Qn3Ia2TxyjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7367
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Add meaningful traces for QGV
 point info error handling
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

Quoting Stanislav Lisovskiy (2023-11-28 05:37:52-03:00)
>For debug purposes we need those - error path won't flood the log,
>however there has been already numerous cases, when due to lack
>of debugs, we couldn't immediately tell what was the problem on
>customer machine, which slowed down the investigation, requiring
>to get access to target device and adding those traces manually.
>
>Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
> drivers/gpu/drm/i915/soc/intel_dram.c   | 2 ++
> 2 files changed, 5 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i91=
5/display/intel_bw.c
>index bef96db62c80..583cd2ebdf89 100644
>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>@@ -289,8 +289,10 @@ static int icl_get_qgv_points(struct drm_i915_private=
 *dev_priv,
>                 struct intel_qgv_point *sp =3D &qi->points[i];
>=20
>                 ret =3D intel_read_qgv_point_info(dev_priv, sp, i);
>-                if (ret)
>+                if (ret) {
>+                        drm_dbg_kms(&dev_priv->drm, "Could not read QGV %=
d info\n", i);
>                         return ret;
>+                }
>=20
>                 drm_dbg_kms(&dev_priv->drm,
>                             "QGV %d: DCLK=3D%d tRP=3D%d tRDPRE=3D%d tRAS=
=3D%d tRCD=3D%d tRC=3D%d\n",
>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/=
soc/intel_dram.c
>index 15492b69f698..37d61dff50a8 100644
>--- a/drivers/gpu/drm/i915/soc/intel_dram.c
>+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>@@ -647,6 +647,8 @@ static int xelpdp_get_dram_info(struct drm_i915_privat=
e *i915)
>=20
>         dram_info->num_channels =3D REG_FIELD_GET(MTL_N_OF_POPULATED_CH_M=
ASK, val);
>         dram_info->num_qgv_points =3D REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_=
POINTS_MASK, val);
>+        drm_dbg_kms(&i915->drm, "Num qgv points from MTL_N_OF_ENABLED_QGV=
_POINTS_MASK reg: %d\n",
>+                    dram_info->num_qgv_points);

Maybe use a more general message (not specific to MTL) and do this in
intel_dram_detect() instead?

--
Gustavo Sousa

>         /* PSF GV points not supported in D14+ */
>=20
>         return 0;
>--=20
>2.37.3
>
