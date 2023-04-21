Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD636EB121
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 19:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13BF10EE8B;
	Fri, 21 Apr 2023 17:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A673610E2ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 17:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682099356; x=1713635356;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uHyN5inlusSLVaInmnECRSBtE0p9Esm3m8WBzB1iV8U=;
 b=OgpzaQ933f9W89j64zw9sUwOMpL99GDb2UebFLeMtqNzldI/0O2SlJ5J
 P6pZRhnp4z/kIw3aMc2vgOcwzhKp211Ryb0hs/OlIgDf4pzqq+A3MHwT7
 sCpK/dQ6fuquPqQKtv+SyCxsn5pyccA0cz0a+EgQr+4v3jJUFoFhUiOwo
 iAJYpZqhh3WZmyuEud+IGfHlQION0UQGVO0KQqAer2MTFSAQoZP32Mh4o
 O5MJM4HizQR0ztPt8aRQEOs7PYycU0ypS5RW1XUFWGu8Gq0/9O+NKIcUG
 Bwbkuw7mLzEfElpEmBJYjYL4sosNWB2eUWVmYmUDsTkuqCrfg10vR9+Gm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="346064134"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="346064134"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 10:49:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="685786080"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="685786080"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 21 Apr 2023 10:49:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 10:49:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 10:49:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 10:49:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 10:49:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcBVCn4WZwrhooJwxJNnQBc3LxmYbLRuwF3VqXsoenei9fAhtG2uHCVvACraszI8IgbVPBj8sCrfuFvfZHk5jSfSMKkIpTcGPLUx+0zorn2of2WuCQfSdu/zXZC7wQooAsHHLhAsqxWyAWHFoXJ3B2XGPmnSfAkjE864mdYWPhwWdYP5mxghpuf5VcAMUFfAR1zePVjovl6qeEfBcp0ngrO7T8G+M5VK/hfD5iW56cIX3yIo/KHX1QeX9xyEVxrplAo0vFAxh7WSMeL6hqWQ4/PFDxzKUHTRNfpXKaOdCFr/DUiGBDavabxGBMHqnWtm39vHqsqw/RRyrRsOtExcTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kz9DV66oGLo3bCXLCtZUgEwTdr7rPsEWP4Jwgi1qnME=;
 b=AzLVXloKoYvPMsvKlH9w+KAATZsUnqsoWrOoG0bKzFI3nyW4+YI3t30p5ZV7QpSrByMvpPqp4GkcRxPqC2S8/WMJWwVc2ryqT3KexylApz9COY6XNE8wT3Irdn4f+TqBVSlAlvqnoNqbuJ/RXquTECQooixGa6HU/wN1ev8YQakIXK7KI5hjpT/bqwWKPmZ0itu4v4EwOTUGAIkFktQKPvz7PkW9JE+unFRv8ZfgAcsNCci1cpdia5xG5+pVFB2/9dtTLMimCQPDD9yT+zUBo+r5BJLriIGfBgOwa9YamAy75bcrCw2COmuJYBfUWTxPzDTGnbbHuX5Nq6gfLOdtDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH7PR11MB5768.namprd11.prod.outlook.com (2603:10b6:510:131::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 17:49:12 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::f5ee:24ed:9a25:c59d]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::f5ee:24ed:9a25:c59d%5]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 17:49:12 +0000
Message-ID: <b657806b-d520-3d1e-08f6-bdb38a00a967@intel.com>
Date: Fri, 21 Apr 2023 10:49:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-GB
To: Dan Carpenter <error27@gmail.com>
References: <325f97de-d94f-4e5e-b096-3533b88c8a38@kili.mountain>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <325f97de-d94f-4e5e-b096-3533b88c8a38@kili.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0042.namprd11.prod.outlook.com
 (2603:10b6:a03:80::19) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH7PR11MB5768:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a524dad-d391-49ea-83a1-08db4290b738
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ukuYnDQO4GT+VpldsPYvh37zjylMvKiMFyoQS/Zt+WaXV1vbb7stduOAsUP8Ci7iY8YiLrzFAdFrYgnAPhVpZQJAn0Hvn7z858mDman6N4DY+Pcnb2e3uXSk6f5q43ICgMubOlNJ+OMMnMOVi13Qh4A+nL0ZZ+SPM2NYYLNaTbnttui/uo9/0YxtRfYkr0VvyLqMKBZanqzxJc3l9c6JHTZ8h/6S2XiPE+KyJtKWSG27UCsNV+XdEtVVsOvtOUnx3+l/Z1OPMGKrz7/DhlN5V7xwWO4EWDL/BrTp/dnmNmhj8e3jpwqrC8lQ+pVkjhxdN9ZMuP8l5WAyP5ygp2HTlRpgks+y6a9rBfDDxc2RSMbUCCa1j8TfASakGP7E3bUGbPkkqew40UPofpFFuCBTnLN8fTc5dHpNfmjDYiIK5Ew5/CjABoXfT0QxwalMfvn5r6VefoiZCu4dPsXiwFr+5jkXc7BLIg+LDSRHOtNq8evXdDCkhYQX0D0R8S6QitL9xpB6d/4eB1fRN+LoTAKzMTmgV++ob8r6SAq6q4mr/BQbOeI5wHeL0/Ue/Hwh8zigEELgbE+Rrdd5hCuHHBYqyKfrhDH8Zes6nL0FgnHa4Dm5+1C9TTooQrvTkYrgOzwLbsRu8VV2sXXD776OUKWDGg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(376002)(366004)(396003)(39860400002)(451199021)(186003)(38100700002)(31686004)(31696002)(82960400001)(36756003)(478600001)(86362001)(6512007)(26005)(2616005)(53546011)(6486002)(6506007)(4326008)(6916009)(316002)(66476007)(66946007)(66556008)(41300700001)(66899021)(8936002)(8676002)(83380400001)(5660300002)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjRMT1VUb2lkaGpsMENTVmg1anZJY1lLN0ROU1JpNDQ1Q2lBYldML2RxTTV1?=
 =?utf-8?B?SzN3K1d3UHdvUHBENVp1SGNOSjNxbDhlczgvSG4zdk5zOGQ5M0JuaHZtQXhD?=
 =?utf-8?B?elRqNzM5NzRoYWxCQkJBTnMxak0yQjB1TFFKSXR5Q1B2TVZiZ1QwU1JPd1h1?=
 =?utf-8?B?Sy9HT3NTTjFHZnpWaUdEQThscEEzeE02bkRlVHVOcUIxNzVKMHVsdVVJcXZU?=
 =?utf-8?B?YzNmdjNSMkpseEFZcGJ2dGpNNFhsaGZ5RXVJYkZ0Y0lhaW81R1dSSzBaeFdD?=
 =?utf-8?B?ZU4wdDc5cGVyN2RYME9vSTZ2Y21BTlF4cmJGOFNveG5USDNZUHJEV3dnZ0py?=
 =?utf-8?B?bEJ1U2hNQXhZSEl0akZVcVFWb2ZDanIzVUtJMzZvM1JuQjZjUlpmaUFBUFNB?=
 =?utf-8?B?ZkxoaFhZOGptRmxaejBreDhFc1p1ZmZGTzJ2Z1ZHSU95NDBZOGxLY044emxH?=
 =?utf-8?B?bHY5SzBtNnVpVkE0R1hrQU9xWmJ5YXFVcXRmbFFQdUttZXVYQlp3K0RhQTFO?=
 =?utf-8?B?Vk9kdGF5RWdWQjh4eUxBMGh2a3VJVUJ2ZFFaZ1JyNnliMTlNN01RbEdGZlM4?=
 =?utf-8?B?Rzh0SWpiMkZxd3dlSDRLV0JEUjRrdytnTktReHZhOWJ6VTBqZnhzQWVQbVM0?=
 =?utf-8?B?eDJnTnFIemRMNTFMRXZTai9BeWFmMDNua25XTVpMYzI4YU1tbm1NdjBjNWIz?=
 =?utf-8?B?QjNrelQ5eEpKbGtwMkdtUWZ0dWN5TWhrWkxpdG9XMUxCZG9sRyt1QkkyOGVL?=
 =?utf-8?B?NDI5cHNyUzNTclhNRUhxUWFlM0hqRkRsUGZzVUhFWkVuYmJ1bkMrR3dYNW5r?=
 =?utf-8?B?cC93WnBDZTQrTFdJVlVqZ0trcGwwcWlDSTJpTDBVU1hUQXIyRWU3Qlpzc0ph?=
 =?utf-8?B?MlZ6WUNIQmlmaUxMWW85bzBMcHlXOXBtejhrLzNWYTRUcGxURTREcjBqc1hj?=
 =?utf-8?B?R1hZaG4xMXVDMDdoZUlQMlFUaXhMRTluZ2d2QitKSllnODVldEpHeDZSdWJh?=
 =?utf-8?B?RldXeTRKSFk4dmRlOUtjaW9Fd2dwa1BNT3l0djN1bjdFeHQ5T01RMzMwaGhB?=
 =?utf-8?B?NWl0SnRsRHFGSTRHaWhhU0Q1QnZCVGpDOG9acWlKaWplMXFmM2hRVURrYjNC?=
 =?utf-8?B?Kzc4dmlJL3RSME1ZNkJUSnRMU0NzZU5mdTdCWGpYeVF4UmVieFN4QThXelFU?=
 =?utf-8?B?SW9PY3FXNmpiUXBBQ1FZTDRjYm5UZ0FTTmRqMWJaYVAvWkNCUlBFOVNQL1Zv?=
 =?utf-8?B?VlQya0haMmRkNHJIamVBU2l0cVZ6TlJRQlNPSHlEeG5TOS9OdWNzTlJJdDFp?=
 =?utf-8?B?SDZ5dWREYzgzaWs5SFN4QURGMTdFNitDNjZzdlhxUEZEN2ZWNnI5QVgydUZn?=
 =?utf-8?B?SjhVR1JwaXFZY2VtVGVwMnZkRWtiQnExUkhoaWZ4UnNudTBoT3R6VWU4Mjdp?=
 =?utf-8?B?RUtZNWgwc2dRWUhGWGN4WWxwbXI5eGdSNkdXVmRwalJ5Zmp0ZGJraGpJcGRx?=
 =?utf-8?B?NkQ0WSt4UktzZW81ZnRXVFV1bTViYmsvdjJjK3JZRXRpYmRISFlKTzNlYzZj?=
 =?utf-8?B?dkZlai95ZmNmNkpZLzgxR3RRQkFjdGdKYUsvdzAwN09FUWY5Uk5XVm9lbVNL?=
 =?utf-8?B?SVJYZEg3RUJPNzBNdEtJTGZuQnZMcGU1UDdCVWs2Vm5HZVNWRzYybG5oamlT?=
 =?utf-8?B?dkhLeXBNMUJmVVJYTHNEaHN1Si9UVTlpQ2lFdkJLelBZamlpV3pmK0xrQU11?=
 =?utf-8?B?NnBPMHh3VjdCejdlUGhGSFFjTUoxNkF3alZ3Z2VhODFvWFhyOUNZRlZCNFdy?=
 =?utf-8?B?YXIvdCtQT0crM3ErY2RwTGUzeitIbzM4Y2RQZFh5aWpIMnFHbzRCbUVEdHlQ?=
 =?utf-8?B?dzJjSHZvNVNoMjQ4OER6eG5BUCtqVUNhUWMwWEVSTDNnVDRLeVpDT1lHQjlO?=
 =?utf-8?B?dEc3Vm41cFpXV1dsV0QwZzBrYjZhcEpNYlRESEFMWGhJcEtpWi9xajhjWXFj?=
 =?utf-8?B?NlpxN3FwbUtnczlSUDJFdWxaQUxrTkUvR2s3dDhWSHBXL2VUV2kwY2VZb2I2?=
 =?utf-8?B?M1A1VkR5NllYNVdSMzN2S1ozalBHL1BPbW15RE9mVTZjVmE4WGdraDhPdzBQ?=
 =?utf-8?B?SmJ1QndSaEVySnV6SDB6Q2FSYXpCYVVDZTZzNDJMcXBiYzVaN1VMTkFFQlZy?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a524dad-d391-49ea-83a1-08db4290b738
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 17:49:12.2524 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0PlzJPFLsoWK3P17YgGv6LO624TLxdzD20/4MM7Rt2BvT8NBEZLa01yW/9fkF9bjhldVw60h7I5uc8CCkTF/9nj3rM/O7764CD1CP5WEWLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5768
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [bug report] drm/i915/guc: Use GuC submission API
 version number
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

On 3/24/2023 02:12, Dan Carpenter wrote:
> Hello John Harrison,
>
> The patch 9bbba0667f37: "drm/i915/guc: Use GuC submission API version
> number" from Nov 29, 2022, leads to the following Smatch static
> checker warning:
>
> 	drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:821 intel_uc_fw_fetch()
> 	warn: passing zero to 'ERR_PTR'
Doh! Yes. That is a bug. It's an error path that should never be hit - 
it means a firmware file has been released with a version number that 
breaks the spec or is simply corrupted data. So it's a low risk bug but 
it should still be fixed. I'll post a patch...

Thanks,
John.

>
> drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>      709 int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>      710 {
>      711         struct intel_gt *gt = __uc_fw_to_gt(uc_fw);
>      712         struct drm_i915_private *i915 = gt->i915;
>      713         struct intel_uc_fw_file file_ideal;
>      714         struct drm_i915_gem_object *obj;
>      715         const struct firmware *fw = NULL;
>      716         bool old_ver = false;
>      717         int err;
>      718
>      719         GEM_BUG_ON(!gt->wopcm.size);
>      720         GEM_BUG_ON(!intel_uc_fw_is_enabled(uc_fw));
>      721
>      722         err = i915_inject_probe_error(i915, -ENXIO);
>      723         if (err)
>      724                 goto fail;
>      725
>      726         __force_fw_fetch_failures(uc_fw, -EINVAL);
>      727         __force_fw_fetch_failures(uc_fw, -ESTALE);
>      728
>      729         err = try_firmware_load(uc_fw, &fw);
>      730         memcpy(&file_ideal, &uc_fw->file_wanted, sizeof(file_ideal));
>      731
>      732         /* Any error is terminal if overriding. Don't bother searching for older versions */
>      733         if (err && intel_uc_fw_is_overridden(uc_fw))
>      734                 goto fail;
>      735
>      736         while (err == -ENOENT) {
>      737                 old_ver = true;
>      738
>      739                 __uc_fw_auto_select(i915, uc_fw);
>      740                 if (!uc_fw->file_selected.path) {
>      741                         /*
>      742                          * No more options! But set the path back to something
>      743                          * valid just in case it gets dereferenced.
>      744                          */
>      745                         uc_fw->file_selected.path = file_ideal.path;
>      746
>      747                         /* Also, preserve the version that was really wanted */
>      748                         memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
>      749                         break;
>      750                 }
>      751
>      752                 err = try_firmware_load(uc_fw, &fw);
>      753         }
>      754
>      755         if (err)
>      756                 goto fail;
>      757
>      758         err = check_fw_header(gt, fw, uc_fw);
>      759         if (err)
>      760                 goto fail;
>      761
>      762         if (uc_fw->type == INTEL_UC_FW_TYPE_GUC && !guc_check_version_range(uc_fw))
>      763                 goto fail;
>                          ^^^^^^^^^
> Should "err" be set on this path?
>
>
>      764
>      765         if (uc_fw->file_wanted.ver.major && uc_fw->file_selected.ver.major) {
>      766                 /* Check the file's major version was as it claimed */
>      767                 if (uc_fw->file_selected.ver.major != uc_fw->file_wanted.ver.major) {
>      768                         gt_notice(gt, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
>      769                                   intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>      770                                   uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor,
>      771                                   uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor);
>      772                         if (!intel_uc_fw_is_overridden(uc_fw)) {
>      773                                 err = -ENOEXEC;
>      774                                 goto fail;
>      775                         }
>      776                 } else {
>      777                         if (uc_fw->file_selected.ver.minor < uc_fw->file_wanted.ver.minor)
>      778                                 old_ver = true;
>      779                 }
>      780         }
>      781
>      782         if (old_ver && uc_fw->file_selected.ver.major) {
>      783                 /* Preserve the version that was really wanted */
>      784                 memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
>      785
>      786                 gt_notice(gt, "%s firmware %s (%d.%d) is recommended, but only %s (%d.%d) was found\n",
>      787                           intel_uc_fw_type_repr(uc_fw->type),
>      788                           uc_fw->file_wanted.path,
>      789                           uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor,
>      790                           uc_fw->file_selected.path,
>      791                           uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor);
>      792                 gt_info(gt, "Consider updating your linux-firmware pkg or downloading from %s\n",
>      793                         INTEL_UC_FIRMWARE_URL);
>      794         }
>      795
>      796         if (HAS_LMEM(i915)) {
>      797                 obj = i915_gem_object_create_lmem_from_data(i915, fw->data, fw->size);
>      798                 if (!IS_ERR(obj))
>      799                         obj->flags |= I915_BO_ALLOC_PM_EARLY;
>      800         } else {
>      801                 obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
>      802         }
>      803
>      804         if (IS_ERR(obj)) {
>      805                 err = PTR_ERR(obj);
>      806                 goto fail;
>      807         }
>      808
>      809         uc_fw->obj = obj;
>      810         uc_fw->size = fw->size;
>      811         intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_AVAILABLE);
>      812
>      813         release_firmware(fw);
>      814         return 0;
>      815
>      816 fail:
>      817         intel_uc_fw_change_status(uc_fw, err == -ENOENT ?
>      818                                   INTEL_UC_FIRMWARE_MISSING :
>      819                                   INTEL_UC_FIRMWARE_ERROR);
>      820
> --> 821         gt_probe_error(gt, "%s firmware %s: fetch failed %pe\n",
>      822                        intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path, ERR_PTR(err));
>      823         gt_info(gt, "%s firmware(s) can be downloaded from %s\n",
>      824                 intel_uc_fw_type_repr(uc_fw->type), INTEL_UC_FIRMWARE_URL);
>      825
>      826         release_firmware(fw);                /* OK even if fw is NULL */
>      827         return err;
>      828 }
>
> regards,
> dan carpenter

