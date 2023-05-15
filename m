Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358AC703066
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 16:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89BCC10E204;
	Mon, 15 May 2023 14:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B822F10E204
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 14:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684161883; x=1715697883;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=WWDkWd7XPtyFaHWwlb0rqUPe+WWpcsaP9V8VydzBWlo=;
 b=M5uNVnLmkAZc1z+aBW/Urbn8yG31ZP8eYMPq+FQ2DgsrVlNXgMSJFJaL
 HD8i36C5u0XigfuojgQrMRGYIwEfXevzqVubH+YyZ1EledLgcQbhHPAIA
 fDvpKf7wRoSa/7UA/6nm+smvRe6/nfrR042YXL0ClZBPzrwRDM/XTga5h
 zBC6R1jfEYr+84QO9CJxdvhapiMaj0jGnBH6YwxH7MtBvxCMdH7LmJP0q
 vm9dyp21kKVD5rLPA392l7HPEYR0tDsC3IznI3ussBG3gUvZhDLwvVh6N
 XHFFg06vqocN7IKDfmN9izRZXEaWmjzqSp+aBBzwbpNI+USKk7nU5cFOH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="330837558"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="330837558"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 07:44:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="1030924537"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="1030924537"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2023 07:44:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 07:44:42 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 07:44:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 07:44:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 07:44:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NkFaidGrGGi8PfQ+Jgv2zap9otmcpvkjlIrnA+dl69yUeDrPkaGfvGhZlutpcQaWYA4dmu5b24z9qaNwZU+Ue79nBzjepJ5rD5A2PH0DB2rJd5/ODcHh0uCiN/y/KwlHSmUVhUQwFOEzIapShaCQJQKrln7AtRw39h5b8Sgi3Jf0sp6rhNtzsjYkdMAQM3lYKlJbJG3JTpZDgAK+bMnMbc7JolrTXS9OOz3WK8F5UwhwaWN6QGR5J2ALNFsLJaf+bomsygFTkrLVD2aFC6wJEGqI2P8Q8pYiFSTOSp7368qNa89ZMMzlqjm4aw4S36rv9ie/dZh6Ue5FZMiiUx0p8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2x/3F+otH3rd1DPvKWjvTQlrAHYHlxBjRaKj1l8kMLw=;
 b=G+JGKQc69TQsC6BJd0obrboNUhA0QbTVx336vJJ+SY7ax6FEgadmST3gIySCfZ2nQdwoFq3DrhwgANRZHGYydw2ROYPX6mUMqisZW7kOAd1C7dvBjhLlBn9oYjvruRB8+xnm5MQPc7goDG8jhRVsQfj316DXumw4DSfOaZfZg/6B73T67aRxI8JAn2KHkCO2L+y9RrFhfipV6SgmotgzcqztFCWGEt7TkR5BpHVc2/dKo3p7xPjZ02GUwlzcNbneOz9LrV+cyGNJI3pA5jMVW3rdMFqIa7C8PeMM2/SyjkQCJnmJNDVRPbOw1jBDhi0yWJ3iZxgTb1EtC0kR4o7hmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB4793.namprd11.prod.outlook.com (2603:10b6:806:fa::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 14:44:40 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%3]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 14:44:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
References: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 15 May 2023 11:44:34 -0300
Message-ID: <168416187402.13184.12797174790557715354@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR07CA0009.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::22) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB4793:EE_
X-MS-Office365-Filtering-Correlation-Id: c6c07921-411c-463a-9e8c-08db5552e991
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qhD/0DF7k+hW2A+lOgeOJoWLo71F/VrM4AW9KyIiH7DKKap2VTTgKnIOR2Sc1jhDYQ9V2YrBh4NdO8G7uzlJSWOghNr0LTmTeZu5UQdZ4CmyotQ3LvqwKUqahyvTryl156HWtUHwh5wHtdedQciD+PibGr/08icgmv+nHAVgXCVjoikw3gDzRdWwXgKzfZ6DJ+KgInYpFdbLLa3qHTi5ysaJipNSAfX7I6AkAVkQwzIQh3osZG3eKKhO9283Dz0bYheZm1nQdoI9SDbGCPLNpWMvxg13EjdPASacQofbXanRJWXo92QtXNatspoYaIXHBuiXqiq/5afeWW4Seuz6Pphpw9vty9abN+LcLgeCJcaEW3N3QOrw9VqKmbi6u6prSOCfbjxPh33mZk9f68NrZ94NMWvqtwN1Jo9e5P1yqCfXrXE3o89dz7dzlrFAFuVRvXxdmP61DXxsTgRWZ9FKJIVquiGA/ShBtnLHqxKjvxtl6FIegjjDfdd1GfrHxytD9CUsETJX1O1iN9KqPpryz66ZzQl6m9slbQylUhezcBcJynVk4TxPWtUDLhvVIsgs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(346002)(396003)(366004)(376002)(39860400002)(451199021)(86362001)(54906003)(316002)(66946007)(66476007)(4326008)(66556008)(478600001)(6486002)(33716001)(5660300002)(8676002)(8936002)(6666004)(2906002)(44832011)(38100700002)(82960400001)(41300700001)(6512007)(186003)(107886003)(26005)(6506007)(9686003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTNmZ3E4VHM2QWcwbjRzL0w5WTJPQUJvYURtdktpMmJSNW9zZFcrVkxMbUVk?=
 =?utf-8?B?Q3FEcHNwbTdPR0Q5dFZ2b0hxc0VuTzNtTE1pbXVzcWhhNEtTSXFhNDc0RHMw?=
 =?utf-8?B?VEpUcDk5MTgvTHlGMVZTb1Y4Y1MxT1Zud1VBZjhRL3EvVjVLUVRjSTB4NFlW?=
 =?utf-8?B?cjhmUk1neUdZTGpTRzM5RlY1SE45OHZra2I5U1YzNjhnMitneEZyRklMSjA1?=
 =?utf-8?B?bzQ1cnNjMnFGRmQrMnNLU29meVcweCtvTVhldk1ack91RGZEcjFDWUZFUHlO?=
 =?utf-8?B?bTBxcm1ybkh2K3hyTTJOYTRVeTV3T1cza3lGWXNLUCtjeUV0YVU3NkxRM01Y?=
 =?utf-8?B?ZTRBUW1jTkpRVnluZzFDbng1RVJuaEV5Zk5TdnEzakJMeGFBdGh3ejJKUmRs?=
 =?utf-8?B?bnpFRzcxT0Zjejh3VnBSTDl6NXd5cVExZ0Fnc1dNNFRjZzhLK21MNTFVS282?=
 =?utf-8?B?MUovVXk4WjJtZ0M3VHBPaXhkVWI3bzM0aWkvRks5VGlJcnNwZXpERFU0dGdT?=
 =?utf-8?B?Q2xtRklKMlRZUHIyT2U2bVlYa3EzRWc1THo2T0tHZmJ1Zk8ySmlBbUtnc3Vj?=
 =?utf-8?B?MlRscjJSK1EzTStqUzhDMFlYbzdIQnNvQ2EzemlMb3pKQkphUXJOUFlzWk9L?=
 =?utf-8?B?bTFJelVCYThveWJCcXAzSFVJRXh2ZE5FMnlNMlZlelI5Q0dCd0VFWW9Jem1i?=
 =?utf-8?B?WExKZWNhMys5Q1FmR0ZIMEhMeWFVUjdFT3RabG9qTHJLaFNtZmQzRjVqa3h1?=
 =?utf-8?B?alNTUG5qZC9qQmlKNnIyNUxFaElNb2gzK3ZqVkE0NVExOWcyK3FRbGNEL2Rh?=
 =?utf-8?B?KzBDeDBTNnVHdEJlOWdwcUc2VG1VK0ZabnFkUEJLUFp6enpZS0RRa0FzZXIr?=
 =?utf-8?B?cjNhb002NThhNDdIN3VKUmpaYmd5WDRUMmprbGdMMmNqL3ZNODlFRG4xNVVy?=
 =?utf-8?B?N3NvMXhnZnhFMUl2cTZWbThZSDVKcVBHbkEvWjRScGhJQ2xaejNpZ1ZyL2xn?=
 =?utf-8?B?aGFtOUg3SmJUN294RWt4bW95UzJxSkJLZHpkTjRjdzg4dmhuN2tFY0FuQit6?=
 =?utf-8?B?eVliWjhUSEZvUklUbG5HYUUvUHlnSExZZEhQMUNmTGlnaXJxMFI4TEllenZo?=
 =?utf-8?B?djZ4YmdyOW9paFRNZ0JUemZYTktzcWNYU1FaTjdjdUxKait4bjhraGFwYjIr?=
 =?utf-8?B?SzZFYWRFUlVCb2lUSWhGTE5tQmJqd1hvNC9wMjBvc2NyUWJhdWVuaTFTS2o5?=
 =?utf-8?B?eG4vc1dhS0U1U21xaHk3eWkyNW9sZEVja0FCMjlEU1ZaUnZUTG9tREN2SE9z?=
 =?utf-8?B?VW9kbjNXeUowYnZiU1NBNEtjK0ZLTFMrTFNNTkp0T2w0RTlPN1ZMVFZkOG8y?=
 =?utf-8?B?eVd4Nk9qVExxNzArU2hUTlhXVGpjbGZIYk1CMWt1VzNKQU5aMFljcjZ6Z0w0?=
 =?utf-8?B?YnNmaDdWVWRUSFdUeVN4cEU0Z3oydnBVaGlDbkl2djBjYndYOHEwSG5xbTRE?=
 =?utf-8?B?ektOVDJpTGdrNmxaMi9Mb2Rab3ZWWGFQMnJLTWhESXZxVWhoVkRFV25Lb2F5?=
 =?utf-8?B?ODFrRjIvaisvVWZLeVhQekJkeGtrdVU5d2hjQWd2WGVLdzdqWEV1eUllNW84?=
 =?utf-8?B?SDlCOExnNmRvdEpyV1ZHVW9uYkc2R1ZIL2N5UnB3V05aaW8yMm5DMWdlNUdj?=
 =?utf-8?B?cVVJMGlmdjZ0Rzl2NDAyUHBQb0poWElhNVdqUXRRL1FZSGtGSkNvdEZvaUVv?=
 =?utf-8?B?bVdpWWxMamZ5aUkyN05TMWtFZHRJQVp5MFJjdjNaRXJ1WnVxc0g1VGNzTU1t?=
 =?utf-8?B?OHJ4RHplT05XcXhoUHA1eFF2UnhwbmJKZ1hQUEkyYStRcHZuMHl2Y1AyNVBn?=
 =?utf-8?B?ZnRWWW16UncxNTFoc2EyaFVQcDd2Nnc4Y0pjOUpMVThvcmplS01PVGhEb0Vv?=
 =?utf-8?B?eVNFd0VHQzNTL0NqaUdwaVgrTjBicU8rU0tBWHUzU0UxN1k3b2dSMFVLKzRy?=
 =?utf-8?B?MU9TdCt5aVJTamNDNHNqY2hrL210c2pzRjYrdUpoa2lxOFo1UjE5ODYvY204?=
 =?utf-8?B?bDB4cllKbllhQ0daOTZoVWxDRU9jaVp0S3Y2ZDgyQUVMb3dBMWxqUCt4Q0Uy?=
 =?utf-8?B?MUtGdlc5Rm0wbm85UjZxQ3JQckFvYmRENVAxdE1sZnlMa3REdEp5VjR0MkNy?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6c07921-411c-463a-9e8c-08db5552e991
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 14:44:40.0455 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H5cuWP6W3xibOL33308mJxLPNosRKmI34a6lAuHlrWKvL9F8e3WZYSE5bH1FFj1WJ5swHtXJT6loDF52ldTqJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111
 to MTL A-step
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Radhakrishna Sripada (2023-05-12 23:14:37)
>The dg2 workaround which is used for performance tuning
>is needed for Meteorlake A-step.
>
>v2: Limit the WA for A-step

I think what Matt meant in the review for v1 was that this commit should
be rather about the tuning setting rather than the workaround itself. As
such, maybe we should change the commit message so that it focus on the
recommended tuning setting, i.e., instead of "Extend Wa_16014892111 to
MTL A-step" as subject, we should write something like "Apply
recommended tuning setting for ..." and give details.

That said, since we are focusing on the tuning settings here, I guess
this could be squashed with the second patch and we could add a note
about DRAW_WATERMARK needing Wa_16014892111 for A steps of MTL.

--
Gustavo Sousa

>
>Bspec: 68331
>Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
> 1 file changed, 3 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt=
/intel_lrc.c
>index 81a96c52a92b..9c1007c44298 100644
>--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>@@ -1370,7 +1370,9 @@ gen12_emit_indirect_ctx_rcs(const struct intel_conte=
xt *ce, u32 *cs)
>                                               cs, GEN12_GFX_CCS_AUX_NV);
>=20
>         /* Wa_16014892111 */
>-        if (IS_DG2(ce->engine->i915))
>+        if (IS_DG2(ce->engine->i915) ||
>+            IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) |=
|
>+            IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0))
>                 cs =3D dg2_emit_draw_watermark_setting(cs);
>=20
>         return cs;
>--=20
>2.34.1
>
