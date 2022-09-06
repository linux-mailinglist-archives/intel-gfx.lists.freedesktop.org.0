Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 214F55AF5D1
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 22:28:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5ED10EA8A;
	Tue,  6 Sep 2022 20:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF93010EA8A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 20:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662496101; x=1694032101;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=V+Olq1DxXbr0fi2whEs23RuCKbY3B3QYxE8udm+XcO4=;
 b=UjmLLH1wbofVm/h+a1t5o8Vrbv/iyRXg59eBAFfMVpELZgMyKSpuWtPy
 Dj7BVollxrYrjlaWpHzADgDJr4kNucwmoUaDxdHRUkPBF2sKZzCX1NzS0
 S/QIsmXhGlGrV0UL5EJr/hEHcirO4iUSX1Gx0eGDYdDagEgemo0UQpuK/
 vNWvEewC6W3ddGbZOHbl/cFpWWQOmfIgwGoLRn/EuFGbIG2iCBpZpfp4m
 +3pDeVmVAnnyx/V90BOhEye7D2eVUV5DR7Q5wIudypZK7Qi0tsMnDpzom
 rZXdCEEVahYlvsBjRknJNrmtezxBVWyVcnUOxkvOlFdh09RKKu4Xuz9+N w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="322878181"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="322878181"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 13:28:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="616830504"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 06 Sep 2022 13:28:21 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 13:28:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 13:28:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 13:28:20 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 13:28:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YltvEb2R9cWgCyhoBoL0hhsrF9m4o0z2KihlSLSoFztqhPFfqPa48PQtBDKO55ma7PT32hAteT8ykWwMN6BCtlhNVpgMSlkG4z5kttUf1mjrcUqvIg8Wc4fgRm70qc566LVwWfjhX8nHKwxLTZE+UysxsVqxzONNZRZYoVxD9w29V/IvU2Jf5xQSpwm8pScGwGBr3KZIpR5Mzb78SFa4d9R0Xg+A8K7VTZn4c1rwj8nb2PZqoQyFV9xZQb0EczdKL3LHAq9/ppoH6qOqZ9oxqXb7RX6WLhhUvJz7DEgvLyYtvbBOo0fontnE5RJ3MkV+ZiZ73f/EQsPS4hn1DwJb5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bqag8Chl/Tl8cWDIrB4ZufaF8xpauWZ3ged3WxBmL68=;
 b=YX99f9ekp364odz4+uZawbBfav6XrDvgBd6Lz1YujkqtUbnU5FHTHQXhmuPiPeYL0HT31FF5yQSYBeXF9eZpizsavP4wW6W/YQ3W+7httC3tC/ZwmtSNYhCGqSWgml2lq3q3oX6slhPKQGb1KaRjMhrgpYr5eamL8fUFiK5Pi+B/yBApA/EAB+FevPX8fkteGA3BKCI4mUWp9tjjKXq9s++ozxVUGe0ymU4KOgpgJmG/pXMegSlWqzu7I+8SewE/U8KUAsqCcRES2o1bbbRHynpuU0QwRQLgeURhyKWu80CwJpwtQELsFZh3SVCSl5FV8R2JeB4Q77pd6nEKRsZQ5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB4596.namprd11.prod.outlook.com (2603:10b6:5:2a6::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.10; Tue, 6 Sep 2022 20:28:16 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 20:28:16 +0000
Date: Tue, 6 Sep 2022 13:28:14 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <YxetXr0U+4kNADPr@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-11-umesh.nerlige.ramappa@intel.com>
 <5cce8605-5e1a-2f05-2cf2-004da3d4a64e@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <5cce8605-5e1a-2f05-2cf2-004da3d4a64e@intel.com>
X-ClientProxiedBy: BYAPR02CA0068.namprd02.prod.outlook.com
 (2603:10b6:a03:54::45) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9e75715b-3c3b-45da-337c-08da9046547a
X-MS-TrafficTypeDiagnostic: DM6PR11MB4596:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Ga1zMscZGUNZefT7iTVYTGQJMwkg7MYWOaRkQxXloqRora3xusy125Fea0XFNWNApdrwutKd/yy60+eki8Z2Ie6/JICM2GV45wkKQI/2rGyuqkLXVg91xiKIU0IuHHC9Ci1v4ztFghL0Tag/j15y9897HEtwDvMGtOdkbLEhQrOf7wpZ1hV8VNN3DR991aqu9MHkmNASPPVAdNQI1991+9PIwrgukKdHMOUnZtuxnHMCHtWJGLVxtMz75vRwIf2Lj022fi3yO2FNajmxZin+U9m+d3g98wI+ciGyGqlZkjHuE5SdA4phmsi9yoXQq3DeNdMNRacaHwcuBTE9Ehkx9u+7z3ZRCoFuDUOYDRkfBV6uvJQDntvARr88FE0ev6JjFGyHOCWXBM3ksd8E/rKqOJqemmiBVk48vMacf8WXcUOpFdyq00ctrqClve5IpuW6CsTwcR4z6EJY0XLSW14bTPhKIUVxC0c/FDt7Q+bVW1Inkdai/L2Av5N0P7cM0J3REPmS8Q8EPBxxUQbZBnr0K+hXcCPXI2Kgpw1g96K8dF/badr67eTSBn6Um31SZWTKX19l5rtfSyw17QzvAQdFFgKyFpM9LqDch2zzxeP056EkwA3X/HPlMtAzI9rEdW/7W7EjSZJ+TzdxjC/RZmWvsDenDw8780mc/fzY+S3fd6Zad12zi9N3ERaNlcU4oXyZcgEC0gvurV6SC+IdUdQAM2tUG0gqupEi2pIHEgaRd2AUJ3WgIa0287hJfHWe+T3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(346002)(39860400002)(376002)(136003)(396003)(366004)(4326008)(86362001)(316002)(6636002)(9686003)(38100700002)(2906002)(82960400001)(33716001)(8936002)(6862004)(5660300002)(66946007)(66476007)(66556008)(83380400001)(8676002)(6512007)(41300700001)(186003)(107886003)(6506007)(6486002)(26005)(478600001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QkFlTE9QMmY4S3RaTzhKVFF0NTk4MyszREJ5eTVDc0F4WGM3UUI3NHAyZDd3?=
 =?utf-8?B?clp5S0cyYkFpNWtnU3FMV0dTU2s2MC84RC9HWmlGVHRnOFZqeHd2K3pnUGht?=
 =?utf-8?B?TzV5RUxJWnNhVzYrZU1tUzdJall2Z1FGUnhLdjdnR2JzTEx0QWJ2Y0ptYUlm?=
 =?utf-8?B?TTBraFE4N01BZkFGdmowV3poeXJKUHFXZzBTOU9IM2g1MTEzWFllbFR2azVR?=
 =?utf-8?B?VTVyWTdqeTNqT3NGRmd4a1lTSlh3U1lWNGpBaEtwMHpOYk9Za2xkTXllYndp?=
 =?utf-8?B?WXlOaG41NzE3eXhKdWxBNERSU1FrNXFLaE1Hemw4Vlh3NFdwcnVaNUQrNklR?=
 =?utf-8?B?UEJsdGFCMkZYTmdlend0ZnkrSndYMUFQUnFMaHZoQW5WMXZUdS80dTFwazFN?=
 =?utf-8?B?TmtHaUtMMDZua3A0ZGpHY3czRUtQOTFJTE41cFFzOTQ2aStFeEYxYlJrYzB1?=
 =?utf-8?B?V1NJcjdJckV5cFZVQXAycnhmNjM5Z2FtZ09sbTNJTGZ3eFJ0VUtWblErMUdv?=
 =?utf-8?B?UThISjk2a2tHMVo5VENmSVc2OVNiVjMyaFRLRnNvd3hoNklnRGhyUk9pY2Z3?=
 =?utf-8?B?V2FFRkI5YXdqUVVZc0hyZ3BsajZTc0N1dFVIVXcvc093YmZJWUh1QVV4TDIv?=
 =?utf-8?B?WXhPa3ppblJlallTV21FOTZOYURURDgvQkUxVnAySDI2Yi8yT1pVbjAyTTZN?=
 =?utf-8?B?YzBVUTBQS1kyaS90TlBXeFhRWnZ1NmFPT2VyQ3J6SGdyYkx3U29nYWE1Zjc1?=
 =?utf-8?B?ME56TTJiQm9xYW0rVjdVbllRTWRNSDByV1IrSzRxV2Z6d2VYcWVycTNjblph?=
 =?utf-8?B?VjhWek45RFBCdW14dVJFZ213c3hzMWJrR2hLT2FHM2ZZR1hxOFVYcDR6QzQz?=
 =?utf-8?B?NjROc2o4YU1Obk9RbVFRS3ZZbWZIaDh6YlBJQ0RaN05Ba3VJdktiQlNxOFhZ?=
 =?utf-8?B?VFFNQXpRM2ZEcC9paUNMZmhOS1pHUXFqRkFSVHorek1yOXRPVGt2alhGbkJW?=
 =?utf-8?B?cmxsb2s1RmI4WWdDS0ljMFZPeVVYcDQrbE5jNDFkR1FtVEVWMlROTHNpM3FF?=
 =?utf-8?B?VGlTcFdkMXFmOUVzclpUS2wxTnJ1K1JqeDlvbTVDY2JrL2Y3NU82WnR5VGJr?=
 =?utf-8?B?YnhDaUpvSkQrR09JeUtFeXNGSjhMOGZJRUtlTUIwK3hGRVdOMjhjb3QwQ0Jl?=
 =?utf-8?B?NXJzTTdEQ09seWV2MktObjFnL0dBSlZPbGFGM3dWUWpMSDIxTCt1eE5yUGRs?=
 =?utf-8?B?TmpRMTFlb0ZvRENGZEFHUDRhSWk5cGcrdFlCam83U3ZMcm5kb25vYnpGc2hR?=
 =?utf-8?B?cE1INkZ3N21ndFFWdTJGdlVscitNdXBOQStYYnJNbDRmYThxdnFGVFNVSXU4?=
 =?utf-8?B?VTg2aDVFdDk4WXhDM0ppSzBnUE1TTEtYMTl2c2FqbC9BQXJheUVnS2NsTTBw?=
 =?utf-8?B?Vm9vZzZCMXRLWWRUcHdmNFd0V015K2dJVGtEMDlPcW1hcDV2dmZoUGVNaVBL?=
 =?utf-8?B?MFNnNVBnVEkwckJ6V0I5bU5GZ3g3UExkM0FYWkY2TXFUUWV3SVZzZXN4NjQy?=
 =?utf-8?B?QkFLSDFRbCt0cHhjRzl2TGFkTkdUZDQyUmNEdFVUVWw2c3ZYZUZDQWZLV1FC?=
 =?utf-8?B?eWZrSDFBSys4QnEvYWszNWZMbjNONmpsbVlQd3BDSUVzZHVnbGdWQnk2OTg4?=
 =?utf-8?B?bkVsekxnZlRKQXNoaVFxM2RZQ1pHWEwrU0tJNUJFMkFtWWpaVWRKUU56M2kv?=
 =?utf-8?B?UUNIc2lROEg3MXc3dlBhMGpBL3Rxd0hSNDI2SFhLQ0ZMLytha3lMbTdRaUhP?=
 =?utf-8?B?UUV5bHhhK1ByYytqaVV3UFpXVjN6a3RHMmp5dnM0eE1Hb2ZiNUo3OVdFbUpl?=
 =?utf-8?B?U3Zsa0NOZ1dtbFNSWXZJTnorZ1dFWG1QV2ZXT0piN0FVdi9GRFY4MFFqcThH?=
 =?utf-8?B?S3lmUEFIaVdHbCtxcDdHcW5zRnc4WHJ3eFdCMWFhV1p2NGxtOE9ZbjBidjFw?=
 =?utf-8?B?WlIzYlJ3V1BXZEU0VXFGYnp2NFZtUi9lWVZEeVpXV2dNenhEMDFUZk5lYjFk?=
 =?utf-8?B?V1hWT0YzczVueTJBN2ZiNThHYTlFNE1JT0I0U0xKTERtTklqMk4zQkpGZ0pX?=
 =?utf-8?B?VWdGWFlRVjIwK1JQc1c5dk9WT1hsMUhLUWI1QWVJYlBoM2FFMjVhNERVTnZD?=
 =?utf-8?Q?pgcUuK0P+TLBjTof8tB3LNs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e75715b-3c3b-45da-337c-08da9046547a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 20:28:16.6845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z1YB3x2ne+ecRT5fvGgu9R9vAGb4Kh/DuhA6HP3snmVTYeDYvB6//NUqKHE64PBgLwLDetx2ebWTTY4fu5YYRZ/4HKIj4u5g+ILQutzIEUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4596
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/19] drm/i915/perf: Use gt-specific ggtt
 for OA and noa-wait buffers
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 06, 2022 at 10:56:13PM +0300, Lionel Landwerlin wrote:
>On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
>>User passes uabi engine class and instance to the perf OA interface. Use
>>gt corresponding to the engine to pin the buffers to the right ggtt.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
>I didn't know there was a GGTT per engine.
>
>Do I understand this correct?

No, GGTT is still per-gt. We just derive the gt from engine class 
instance passed (as in engine->gt).

>
>
>Thanks,
>
>-Lionel
>
>
>>---
>>  drivers/gpu/drm/i915/i915_perf.c | 21 +++++++++++++++++++--
>>  1 file changed, 19 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>index 87b92d2946f4..f7621b45966c 100644
>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>@@ -1765,6 +1765,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
>>  static int alloc_oa_buffer(struct i915_perf_stream *stream)
>>  {
>>  	struct drm_i915_private *i915 = stream->perf->i915;
>>+	struct intel_gt *gt = stream->engine->gt;
>>  	struct drm_i915_gem_object *bo;
>>  	struct i915_vma *vma;
>>  	int ret;
>>@@ -1784,11 +1785,22 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
>>  	i915_gem_object_set_cache_coherency(bo, I915_CACHE_LLC);
>>  	/* PreHSW required 512K alignment, HSW requires 16M */
>>-	vma = i915_gem_object_ggtt_pin(bo, NULL, 0, SZ_16M, 0);
>>+	vma = i915_vma_instance(bo, &gt->ggtt->vm, NULL);
>>  	if (IS_ERR(vma)) {
>>  		ret = PTR_ERR(vma);
>>  		goto err_unref;
>>  	}
>>+
>>+	/*
>>+	 * PreHSW required 512K alignment.
>>+	 * HSW and onwards, align to requested size of OA buffer.
>>+	 */
>>+	ret = i915_vma_pin(vma, 0, SZ_16M, PIN_GLOBAL | PIN_HIGH);
>>+	if (ret) {
>>+		drm_err(&gt->i915->drm, "Failed to pin OA buffer %d\n", ret);
>>+		goto err_unref;
>>+	}
>>+
>>  	stream->oa_buffer.vma = vma;
>>  	stream->oa_buffer.vaddr =
>>@@ -1838,6 +1850,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
>>  static int alloc_noa_wait(struct i915_perf_stream *stream)
>>  {
>>  	struct drm_i915_private *i915 = stream->perf->i915;
>>+	struct intel_gt *gt = stream->engine->gt;
>>  	struct drm_i915_gem_object *bo;
>>  	struct i915_vma *vma;
>>  	const u64 delay_ticks = 0xffffffffffffffff -
>>@@ -1878,12 +1891,16 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>>  	 * multiple OA config BOs will have a jump to this address and it
>>  	 * needs to be fixed during the lifetime of the i915/perf stream.
>>  	 */
>>-	vma = i915_gem_object_ggtt_pin_ww(bo, &ww, NULL, 0, 0, PIN_HIGH);
>>+	vma = i915_vma_instance(bo, &gt->ggtt->vm, NULL);
>>  	if (IS_ERR(vma)) {
>>  		ret = PTR_ERR(vma);
>>  		goto out_ww;
>>  	}
>>+	ret = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_GLOBAL | PIN_HIGH);
>>+	if (ret)
>>+		goto out_ww;
>>+
>>  	batch = cs = i915_gem_object_pin_map(bo, I915_MAP_WB);
>>  	if (IS_ERR(batch)) {
>>  		ret = PTR_ERR(batch);
>
>
