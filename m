Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D4D41D482
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 09:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C93A76E32F;
	Thu, 30 Sep 2021 07:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2064.outbound.protection.outlook.com [40.107.94.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8976E32F;
 Thu, 30 Sep 2021 07:28:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iycGdvnsPj7u0SxQEohSYg86tKSauY5Y1WeUeswaCniFKf7Asu/i3w+7bZVDKISqvk8JtowhJnxC9CP4ccZTg9bhmeISiCuvo1D2NGSiaapZ8BdlfsPnJdla9pAY6J/zptX09PbPyVUzgulsBb7YFkjN1lghD7Dz0UapqynZNhTMiV/L5OOkmcnp+bEEbJdc+juZ9Lab7sE7dVOasUwrQFKIzqy330pCMmgyAJqcHC2UceRUa7mnZYuZVjYiWlOLtnuUA2edEwUIO8A7+Ho1IFZ7DOhvD/sxbQks9m4yG0sHBIgsKQ94WYUUM9dBysl2Rk+HGe3xPFM96neu10RJbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=z1Ug5xfrElFAYLrooq7kYIz2JOj1Dowxmrlwi1dQvHA=;
 b=ndeIH4kkynxByAwA/EHBsVp5kbwMtb0O+ImPcio7m4JlzWqvyU504oZWxuWJ3n9PI1vSK0Trz4s5jKWGc42TZ1IAUjFh2bjcNVPD8GxIB1ZwVzf6DFw9KlIcb5kjLazBQo7Q/ontTadIFR/XPrBCtwzZOoFiHwzLWKWahee7P3iZ8UemE/lYA1RTkUwY3sCcTEvI7aQ/H8qa5TkbBAaC64NJ1WzHVV3XTjkpe3YdT7LT0/2U/5pYHVJttCJEEkSASixCHOh9kqmvXf//xEff9MBpI0O7SG/VtMConTG68gjPAhu4mxL92VvUYauyNFAKUCEfCm5jkRhR0g74xzv/tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z1Ug5xfrElFAYLrooq7kYIz2JOj1Dowxmrlwi1dQvHA=;
 b=QPbB2sT8mAdIbcPMvysiXP1YpsBa/Rn9MPsubhLzwQ1b5vMyhgKEKa6OuvKu0pgmMbMcG0SAEWpbX4ihlB+W/x8r2Sy0a4Uri0/SzLnY+a7FkUIaw0PivKbVnii4Dv2E4tsc1e8gSRp2Gz3cUpSW1hQI1b+bZDkYHoNo/2MnVMc=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=amd.com;
Received: from CY4PR1201MB0181.namprd12.prod.outlook.com
 (2603:10b6:910:1f::11) by CY4PR12MB1127.namprd12.prod.outlook.com
 (2603:10b6:903:44::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.14; Thu, 30 Sep
 2021 07:28:29 +0000
Received: from CY4PR1201MB0181.namprd12.prod.outlook.com
 ([fe80::f109:9a58:2e94:2e84]) by CY4PR1201MB0181.namprd12.prod.outlook.com
 ([fe80::f109:9a58:2e94:2e84%11]) with mapi id 15.20.4566.015; Thu, 30 Sep
 2021 07:28:28 +0000
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
References: <20210929132629.353541-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Message-ID: <f6b4b843-55f8-62cb-ef1d-8e8935c6ad71@amd.com>
Date: Thu, 30 Sep 2021 09:28:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <20210929132629.353541-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: AM9P192CA0012.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::17) To CY4PR1201MB0181.namprd12.prod.outlook.com
 (2603:10b6:910:1f::11)
MIME-Version: 1.0
Received: from [192.168.178.21] (91.14.161.181) by
 AM9P192CA0012.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:21d::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.15 via Frontend Transport; Thu, 30 Sep 2021 07:28:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5ca7621e-d71b-4303-6d29-08d983e3e536
X-MS-TrafficTypeDiagnostic: CY4PR12MB1127:
X-Microsoft-Antispam-PRVS: <CY4PR12MB1127FDC6CEF3AA2B33B4A4B283AA9@CY4PR12MB1127.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k+pHPL65T+ayAQ02U6UANPA76jJjKQQFdtyHRHFECRhkrHORsowPrSlXDfsVQPm4s86o6F3yhskO4tUScwfhhD+AqN2NdSk4H51NXki2aLZxPEaDrH8x9h+nw1IYDFzz/fsKADVQjFSylfuxH1moNg/7z//ylJYmTRmKhMJXS+HyOYiFawQhBXXd45ZXneVQ1ZtFVrfrqGVV6PkBHgvumUNkDHUDOezKryvX4lQjDdMEWNo8ZUFfcakixx7mDXku05loTH8gnfub9C+OGl2TUCI8h1eFCUFs7Nnm3OfCDkOo+kd9E+eONtvmo11OV9jlb6Wa8Kt/c2cL8KIMD0Na8BDRuCkMu19DW+pztkiFA8OtB//3KDGN3bv0gBGH4xjrtG2hWpFxvCjp2qVhA8y15/PBV/lPdu+FH7vDBGNSkv52+D6oLsz5xJFuik/lqocad/l+eBj500KjrM6qeVTf8iS/bYiG8MaqdwFMXU/W0kzPiEALYJXh3TrzGsyfCTSMcSo1jn6LtUtXIil/LZ8hJbUh0PwLGS+ZxpjJ5S3deEmI2kIpvlKoSdL5ACzAE1CIGa06uFOFvo8jk1CSRPE/I5vhyUJUjd7ZJj7TMZfrLFVMqISipiM4lpFm8HxvGgYkjEeHfBWhACHHbE0dBcdILbY5bpuHszkiRNHF1C1vAa2TOwvmeFS0lKcviRGUe/7IuPSijfz67BXiW6nxsBE7NFNPrgLh1ozmiiM0eHZzYNQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1201MB0181.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(316002)(508600001)(186003)(6486002)(16576012)(26005)(30864003)(6666004)(2906002)(4326008)(31686004)(66556008)(66476007)(66946007)(8676002)(38100700002)(5660300002)(83380400001)(8936002)(31696002)(86362001)(2616005)(956004)(36756003)(66574015)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2hYN0RFd3FDR0kwYXAzdFV4TVFGQjcxckVaZ0RQazdlRmFxMUk2dHMvWmc5?=
 =?utf-8?B?MTVQeXhvTXBBRXo0YWFZZ0RVWlQvbUtHSEZ0TnIzSGtRaVpUTFlRRHpJUkRn?=
 =?utf-8?B?WVhQU3FHbXZId01DdDlrZ3dEYkNreVRoVnFmVWlNN0QvNEdKNkRMZEl6cUgr?=
 =?utf-8?B?czRXL2gxZmdKZnhYMEpBQnFUaFk3NTRGVDFFeDRCaXJvMzVkSVRNWWt2cFdM?=
 =?utf-8?B?R2cvd282RjdBaFFoT05YM04xMXZ3V3J2RzV3UHd0YS96TDBWTzUvVEwzSmto?=
 =?utf-8?B?QUlrQkxmditQVGoxcXJxTDZEWFQrTFl5aXkvSGlSRnduVWNiL0N3S1hVajd0?=
 =?utf-8?B?aytNWFp0aE9yQWJJQTA3dm5mZ0ozU1JveUJlM0V1QVdYS0NFRldPOXdOdnJo?=
 =?utf-8?B?T1hWbUxYaTY5V3p2VVhrVkt6a1lHQThwNUhlOU5heXlDbDVmMStWcmo0U3RQ?=
 =?utf-8?B?QlpiYlppNGsybmdrcHhwc0xQSFVFbmFVMml2dkp0eXUyWUtHRXd3ek1yRENY?=
 =?utf-8?B?SG83QjYxUXNCN0VRakpaVVkzSHB3MDZlSDlRQ1BESmY5QUdFeVYyT0hOQm1m?=
 =?utf-8?B?YXA1VTFZdUlkNC9Ib0ZmMlU1YVBYTlJmYzJEN0M4QTlkeEdnMDQ2VFZiQThr?=
 =?utf-8?B?RUFiUFhidDNtamcvMWtqSzdEVjNDbThlYndVSmNvSEZtcDQxa3g2TlE2UUtm?=
 =?utf-8?B?MDZneEZ5ZlF1eEFkTjFXM2pINCthL1B0UElCVnVRTWJmamdqR01UYnpReG1Z?=
 =?utf-8?B?aGdlTkNybExKN2FxVW9LRG9ENlN2VmozOU1KanpzYW4yZndIaDNnRjVGNWRH?=
 =?utf-8?B?aXdVcEJrMlRsWUl6SW14dWl5c3EzU0QrRnlPakRJMmMwa0dmdTVjRWNyNVVs?=
 =?utf-8?B?Q0RnWkdvWHltSDRuaXFIbWZHQlFSajJnSGFrVjB0STM5Nk9qOVliejZKYUJx?=
 =?utf-8?B?bk5objh0OGdjTTc2OE5FWWhSK05KUjZEL3FsVmVTOW5acHZDaUlXQmd2M3Jx?=
 =?utf-8?B?TGZVN0NoMmdzV0c3V2lkb29VbVJDdEhYc1R5bTZPbzBPLzJwbnlqb0lvL21Z?=
 =?utf-8?B?d1RGYkdoTlpVWGZqWEl5S3JVR1g0SGFDTXU0cnhMZDNxZUxTQnNBVFg5OGxX?=
 =?utf-8?B?UFhUSGl5aWpZY3l6Sk03N010K3FuL2pnL1FhSVZTMnJUNmgrUFVCNTRiaFk5?=
 =?utf-8?B?bXhhVkMxejNld1J0TnEwdDhxRzRIN0s2K0pJdU9tOU9PYk9TMTFCV1hPUWxo?=
 =?utf-8?B?NGsrOXIvODMrcHAydWlieGMwejhjR1EvRWMxVkZLRHVNUnlIZmVyQkVacUJI?=
 =?utf-8?B?MldZOElwN3ZUdURoWXpPbmtTZUk2QjJuUUZ3eDdqcnZSL0RhRHlrUjNLRU9F?=
 =?utf-8?B?eW9YYWdpSlFwb1VOaWJkL3VEQVB1Uk5VQ3QvMGxKVTJPTnpMQzVFdjdINXdC?=
 =?utf-8?B?UUNDR0dYVXkzem8xbTFjOWY0N0lPcjliVXU4cVNvVXdML2gzWjIzQjBjakF1?=
 =?utf-8?B?YnBzY2VIcS8wMU1UUkZ1aXB4M1dGYmtmV1dOc2l4NnRwSkFVSXc0OG9yUXlQ?=
 =?utf-8?B?d2RXYjhmMVc3YlA1Zk1PbXkrNHhmRVU0M2orY0JIYk5ncElRSGYrMkFiOE9j?=
 =?utf-8?B?Y1U0d3Q0VUlNaTdNeklwUDJZK0pjUU1SRFV1R3lJTXBKMFpwSmNaaVJYaFVU?=
 =?utf-8?B?SkI3SHdrT1RiemVZengyYUpGcUl3QU1nS3Y0NmJRbWlYK0NiMVdRMUFWME4v?=
 =?utf-8?Q?qbKY97IVP5VSB80EryIJPGiG3I93uRwUR1AXps/?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ca7621e-d71b-4303-6d29-08d983e3e536
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1201MB0181.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2021 07:28:28.6505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vZopADBaRXfTsRvnf6QjaJnyEdUYLEHMagwRZSxVrmp4nBjY5u/WwHsrFkdl0y51
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1127
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/
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

I pushed those to drm-misc-next and fixed the i915 merge fallout in drm-tip.

Maybe take another look at the resolution in drm-tip if you have time.

Christian.

Am 29.09.21 um 15:26 schrieb Matthew Auld:
> It covers more than just ttm_bo_type_sg usage, like with say dma-buf,
> since one other user is userptr in amdgpu, and in the future we might
> have some more. Hence EXTERNAL is likely a more suitable name.
>
> v2(Christian):
>    - Rename these to TTM_TT_FLAGS_*
>    - Fix up all the holes in the flag values
>
> Suggested-by: Christian König <christian.koenig@amd.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Christian König <christian.koenig@amd.com>
> Acked-by: Christian König <christian.koenig@amd.com>
> ---
>   drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c | 10 +++++-----
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c |  6 +++---
>   drivers/gpu/drm/nouveau/nouveau_bo.c    |  4 ++--
>   drivers/gpu/drm/radeon/radeon_ttm.c     |  8 ++++----
>   drivers/gpu/drm/ttm/ttm_bo.c            |  4 ++--
>   drivers/gpu/drm/ttm/ttm_bo_util.c       |  4 ++--
>   drivers/gpu/drm/ttm/ttm_bo_vm.c         |  2 +-
>   drivers/gpu/drm/ttm/ttm_pool.c          |  2 +-
>   drivers/gpu/drm/ttm/ttm_tt.c            | 24 ++++++++++++------------
>   include/drm/ttm/ttm_device.h            |  2 +-
>   include/drm/ttm/ttm_tt.h                | 18 +++++++++---------
>   11 files changed, 42 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> index 60b12bb55244..e8d70b6e6737 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> @@ -894,7 +894,7 @@ static int amdgpu_ttm_backend_bind(struct ttm_device *bdev,
>   			DRM_ERROR("failed to pin userptr\n");
>   			return r;
>   		}
> -	} else if (ttm->page_flags & TTM_PAGE_FLAG_SG) {
> +	} else if (ttm->page_flags & TTM_TT_FLAG_EXTERNAL) {
>   		if (!ttm->sg) {
>   			struct dma_buf_attachment *attach;
>   			struct sg_table *sgt;
> @@ -1130,7 +1130,7 @@ static int amdgpu_ttm_tt_populate(struct ttm_device *bdev,
>   		return 0;
>   	}
>   
> -	if (ttm->page_flags & TTM_PAGE_FLAG_SG)
> +	if (ttm->page_flags & TTM_TT_FLAG_EXTERNAL)
>   		return 0;
>   
>   	ret = ttm_pool_alloc(&adev->mman.bdev.pool, ttm, ctx);
> @@ -1165,7 +1165,7 @@ static void amdgpu_ttm_tt_unpopulate(struct ttm_device *bdev,
>   		return;
>   	}
>   
> -	if (ttm->page_flags & TTM_PAGE_FLAG_SG)
> +	if (ttm->page_flags & TTM_TT_FLAG_EXTERNAL)
>   		return;
>   
>   	for (i = 0; i < ttm->num_pages; ++i)
> @@ -1198,8 +1198,8 @@ int amdgpu_ttm_tt_set_userptr(struct ttm_buffer_object *bo,
>   			return -ENOMEM;
>   	}
>   
> -	/* Set TTM_PAGE_FLAG_SG before populate but after create. */
> -	bo->ttm->page_flags |= TTM_PAGE_FLAG_SG;
> +	/* Set TTM_TT_FLAG_EXTERNAL before populate but after create. */
> +	bo->ttm->page_flags |= TTM_TT_FLAG_EXTERNAL;
>   
>   	gtt = (void *)bo->ttm;
>   	gtt->userptr = addr;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index f0a61a9474fc..8beef57ba52b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -182,7 +182,7 @@ static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
>   
>   	if (obj->flags & I915_BO_ALLOC_CPU_CLEAR &&
>   	    man->use_tt)
> -		page_flags |= TTM_PAGE_FLAG_ZERO_ALLOC;
> +		page_flags |= TTM_TT_FLAG_ZERO_ALLOC;
>   
>   	ret = ttm_tt_init(&i915_tt->ttm, bo, page_flags,
>   			  i915_ttm_select_tt_caching(obj));
> @@ -451,7 +451,7 @@ static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
>   		if (bo->type == ttm_bo_type_kernel)
>   			return -EINVAL;
>   
> -		if (ttm && !(ttm->page_flags & TTM_PAGE_FLAG_ZERO_ALLOC))
> +		if (ttm && !(ttm->page_flags & TTM_TT_FLAG_ZERO_ALLOC))
>   			return 0;
>   
>   		intel_engine_pm_get(i915->gt.migrate.context->engine);
> @@ -525,7 +525,7 @@ static int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
>   
>   	/* Populate ttm with pages if needed. Typically system memory. */
>   	if (bo->ttm && (dst_man->use_tt ||
> -			(bo->ttm->page_flags & TTM_PAGE_FLAG_SWAPPED))) {
> +			(bo->ttm->page_flags & TTM_TT_FLAG_SWAPPED))) {
>   		ret = ttm_tt_populate(bo->bdev, bo->ttm, ctx);
>   		if (ret)
>   			return ret;
> diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouveau/nouveau_bo.c
> index 33dca2565cca..b2c7e0802ac3 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_bo.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
> @@ -1249,7 +1249,7 @@ nouveau_ttm_tt_populate(struct ttm_device *bdev,
>   	struct ttm_tt *ttm_dma = (void *)ttm;
>   	struct nouveau_drm *drm;
>   	struct device *dev;
> -	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
> +	bool slave = !!(ttm->page_flags & TTM_TT_FLAG_EXTERNAL);
>   
>   	if (ttm_tt_is_populated(ttm))
>   		return 0;
> @@ -1272,7 +1272,7 @@ nouveau_ttm_tt_unpopulate(struct ttm_device *bdev,
>   {
>   	struct nouveau_drm *drm;
>   	struct device *dev;
> -	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
> +	bool slave = !!(ttm->page_flags & TTM_TT_FLAG_EXTERNAL);
>   
>   	if (slave)
>   		return;
> diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon/radeon_ttm.c
> index 7793249bc549..11b21d605584 100644
> --- a/drivers/gpu/drm/radeon/radeon_ttm.c
> +++ b/drivers/gpu/drm/radeon/radeon_ttm.c
> @@ -545,14 +545,14 @@ static int radeon_ttm_tt_populate(struct ttm_device *bdev,
>   {
>   	struct radeon_device *rdev = radeon_get_rdev(bdev);
>   	struct radeon_ttm_tt *gtt = radeon_ttm_tt_to_gtt(rdev, ttm);
> -	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
> +	bool slave = !!(ttm->page_flags & TTM_TT_FLAG_EXTERNAL);
>   
>   	if (gtt && gtt->userptr) {
>   		ttm->sg = kzalloc(sizeof(struct sg_table), GFP_KERNEL);
>   		if (!ttm->sg)
>   			return -ENOMEM;
>   
> -		ttm->page_flags |= TTM_PAGE_FLAG_SG;
> +		ttm->page_flags |= TTM_TT_FLAG_EXTERNAL;
>   		return 0;
>   	}
>   
> @@ -569,13 +569,13 @@ static void radeon_ttm_tt_unpopulate(struct ttm_device *bdev, struct ttm_tt *ttm
>   {
>   	struct radeon_device *rdev = radeon_get_rdev(bdev);
>   	struct radeon_ttm_tt *gtt = radeon_ttm_tt_to_gtt(rdev, ttm);
> -	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
> +	bool slave = !!(ttm->page_flags & TTM_TT_FLAG_EXTERNAL);
>   
>   	radeon_ttm_tt_unbind(bdev, ttm);
>   
>   	if (gtt && gtt->userptr) {
>   		kfree(ttm->sg);
> -		ttm->page_flags &= ~TTM_PAGE_FLAG_SG;
> +		ttm->page_flags &= ~TTM_TT_FLAG_EXTERNAL;
>   		return;
>   	}
>   
> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
> index 3b22c0013dbf..d62b2013c367 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> @@ -1115,8 +1115,8 @@ int ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
>   		return -EBUSY;
>   
>   	if (!bo->ttm || !ttm_tt_is_populated(bo->ttm) ||
> -	    bo->ttm->page_flags & TTM_PAGE_FLAG_SG ||
> -	    bo->ttm->page_flags & TTM_PAGE_FLAG_SWAPPED ||
> +	    bo->ttm->page_flags & TTM_TT_FLAG_EXTERNAL ||
> +	    bo->ttm->page_flags & TTM_TT_FLAG_SWAPPED ||
>   	    !ttm_bo_get_unless_zero(bo)) {
>   		if (locked)
>   			dma_resv_unlock(bo->base.resv);
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
> index 1c5ffe2935af..82af095f6b81 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> @@ -103,7 +103,7 @@ void ttm_move_memcpy(struct ttm_buffer_object *bo,
>   
>   	/* Don't move nonexistent data. Clear destination instead. */
>   	if (src_ops->maps_tt && (!ttm || !ttm_tt_is_populated(ttm))) {
> -		if (ttm && !(ttm->page_flags & TTM_PAGE_FLAG_ZERO_ALLOC))
> +		if (ttm && !(ttm->page_flags & TTM_TT_FLAG_ZERO_ALLOC))
>   			return;
>   
>   		for (i = 0; i < num_pages; ++i) {
> @@ -150,7 +150,7 @@ int ttm_bo_move_memcpy(struct ttm_buffer_object *bo,
>   	struct ttm_kmap_iter *dst_iter, *src_iter;
>   	int ret = 0;
>   
> -	if (ttm && ((ttm->page_flags & TTM_PAGE_FLAG_SWAPPED) ||
> +	if (ttm && ((ttm->page_flags & TTM_TT_FLAG_SWAPPED) ||
>   		    dst_man->use_tt)) {
>   		ret = ttm_tt_populate(bdev, ttm, ctx);
>   		if (ret)
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_vm.c b/drivers/gpu/drm/ttm/ttm_bo_vm.c
> index 9a2119fe4bdd..950f4f132802 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_vm.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_vm.c
> @@ -162,7 +162,7 @@ vm_fault_t ttm_bo_vm_reserve(struct ttm_buffer_object *bo,
>   	 * Refuse to fault imported pages. This should be handled
>   	 * (if at all) by redirecting mmap to the exporter.
>   	 */
> -	if (bo->ttm && (bo->ttm->page_flags & TTM_PAGE_FLAG_SG)) {
> +	if (bo->ttm && (bo->ttm->page_flags & TTM_TT_FLAG_EXTERNAL)) {
>   		dma_resv_unlock(bo->base.resv);
>   		return VM_FAULT_SIGBUS;
>   	}
> diff --git a/drivers/gpu/drm/ttm/ttm_pool.c b/drivers/gpu/drm/ttm/ttm_pool.c
> index c961a788b519..1bba0a0ed3f9 100644
> --- a/drivers/gpu/drm/ttm/ttm_pool.c
> +++ b/drivers/gpu/drm/ttm/ttm_pool.c
> @@ -371,7 +371,7 @@ int ttm_pool_alloc(struct ttm_pool *pool, struct ttm_tt *tt,
>   	WARN_ON(!num_pages || ttm_tt_is_populated(tt));
>   	WARN_ON(dma_addr && !pool->dev);
>   
> -	if (tt->page_flags & TTM_PAGE_FLAG_ZERO_ALLOC)
> +	if (tt->page_flags & TTM_TT_FLAG_ZERO_ALLOC)
>   		gfp_flags |= __GFP_ZERO;
>   
>   	if (ctx->gfp_retry_mayfail)
> diff --git a/drivers/gpu/drm/ttm/ttm_tt.c b/drivers/gpu/drm/ttm/ttm_tt.c
> index 980ecb079b2c..86f31fde6e35 100644
> --- a/drivers/gpu/drm/ttm/ttm_tt.c
> +++ b/drivers/gpu/drm/ttm/ttm_tt.c
> @@ -68,12 +68,12 @@ int ttm_tt_create(struct ttm_buffer_object *bo, bool zero_alloc)
>   	switch (bo->type) {
>   	case ttm_bo_type_device:
>   		if (zero_alloc)
> -			page_flags |= TTM_PAGE_FLAG_ZERO_ALLOC;
> +			page_flags |= TTM_TT_FLAG_ZERO_ALLOC;
>   		break;
>   	case ttm_bo_type_kernel:
>   		break;
>   	case ttm_bo_type_sg:
> -		page_flags |= TTM_PAGE_FLAG_SG;
> +		page_flags |= TTM_TT_FLAG_EXTERNAL;
>   		break;
>   	default:
>   		pr_err("Illegal buffer object type\n");
> @@ -156,7 +156,7 @@ EXPORT_SYMBOL(ttm_tt_init);
>   
>   void ttm_tt_fini(struct ttm_tt *ttm)
>   {
> -	WARN_ON(ttm->page_flags & TTM_PAGE_FLAG_PRIV_POPULATED);
> +	WARN_ON(ttm->page_flags & TTM_TT_FLAG_PRIV_POPULATED);
>   
>   	if (ttm->swap_storage)
>   		fput(ttm->swap_storage);
> @@ -178,7 +178,7 @@ int ttm_sg_tt_init(struct ttm_tt *ttm, struct ttm_buffer_object *bo,
>   
>   	ttm_tt_init_fields(ttm, bo, page_flags, caching);
>   
> -	if (page_flags & TTM_PAGE_FLAG_SG)
> +	if (page_flags & TTM_TT_FLAG_EXTERNAL)
>   		ret = ttm_sg_tt_alloc_page_directory(ttm);
>   	else
>   		ret = ttm_dma_tt_alloc_page_directory(ttm);
> @@ -224,7 +224,7 @@ int ttm_tt_swapin(struct ttm_tt *ttm)
>   
>   	fput(swap_storage);
>   	ttm->swap_storage = NULL;
> -	ttm->page_flags &= ~TTM_PAGE_FLAG_SWAPPED;
> +	ttm->page_flags &= ~TTM_TT_FLAG_SWAPPED;
>   
>   	return 0;
>   
> @@ -279,7 +279,7 @@ int ttm_tt_swapout(struct ttm_device *bdev, struct ttm_tt *ttm,
>   
>   	ttm_tt_unpopulate(bdev, ttm);
>   	ttm->swap_storage = swap_storage;
> -	ttm->page_flags |= TTM_PAGE_FLAG_SWAPPED;
> +	ttm->page_flags |= TTM_TT_FLAG_SWAPPED;
>   
>   	return ttm->num_pages;
>   
> @@ -300,7 +300,7 @@ int ttm_tt_populate(struct ttm_device *bdev,
>   	if (ttm_tt_is_populated(ttm))
>   		return 0;
>   
> -	if (!(ttm->page_flags & TTM_PAGE_FLAG_SG)) {
> +	if (!(ttm->page_flags & TTM_TT_FLAG_EXTERNAL)) {
>   		atomic_long_add(ttm->num_pages, &ttm_pages_allocated);
>   		if (bdev->pool.use_dma32)
>   			atomic_long_add(ttm->num_pages,
> @@ -325,8 +325,8 @@ int ttm_tt_populate(struct ttm_device *bdev,
>   	if (ret)
>   		goto error;
>   
> -	ttm->page_flags |= TTM_PAGE_FLAG_PRIV_POPULATED;
> -	if (unlikely(ttm->page_flags & TTM_PAGE_FLAG_SWAPPED)) {
> +	ttm->page_flags |= TTM_TT_FLAG_PRIV_POPULATED;
> +	if (unlikely(ttm->page_flags & TTM_TT_FLAG_SWAPPED)) {
>   		ret = ttm_tt_swapin(ttm);
>   		if (unlikely(ret != 0)) {
>   			ttm_tt_unpopulate(bdev, ttm);
> @@ -337,7 +337,7 @@ int ttm_tt_populate(struct ttm_device *bdev,
>   	return 0;
>   
>   error:
> -	if (!(ttm->page_flags & TTM_PAGE_FLAG_SG)) {
> +	if (!(ttm->page_flags & TTM_TT_FLAG_EXTERNAL)) {
>   		atomic_long_sub(ttm->num_pages, &ttm_pages_allocated);
>   		if (bdev->pool.use_dma32)
>   			atomic_long_sub(ttm->num_pages,
> @@ -357,14 +357,14 @@ void ttm_tt_unpopulate(struct ttm_device *bdev, struct ttm_tt *ttm)
>   	else
>   		ttm_pool_free(&bdev->pool, ttm);
>   
> -	if (!(ttm->page_flags & TTM_PAGE_FLAG_SG)) {
> +	if (!(ttm->page_flags & TTM_TT_FLAG_EXTERNAL)) {
>   		atomic_long_sub(ttm->num_pages, &ttm_pages_allocated);
>   		if (bdev->pool.use_dma32)
>   			atomic_long_sub(ttm->num_pages,
>   					&ttm_dma32_pages_allocated);
>   	}
>   
> -	ttm->page_flags &= ~TTM_PAGE_FLAG_PRIV_POPULATED;
> +	ttm->page_flags &= ~TTM_TT_FLAG_PRIV_POPULATED;
>   }
>   
>   #ifdef CONFIG_DEBUG_FS
> diff --git a/include/drm/ttm/ttm_device.h b/include/drm/ttm/ttm_device.h
> index cbe03d45e883..0a4ddec78d8f 100644
> --- a/include/drm/ttm/ttm_device.h
> +++ b/include/drm/ttm/ttm_device.h
> @@ -65,7 +65,7 @@ struct ttm_device_funcs {
>   	 * ttm_tt_create
>   	 *
>   	 * @bo: The buffer object to create the ttm for.
> -	 * @page_flags: Page flags as identified by TTM_PAGE_FLAG_XX flags.
> +	 * @page_flags: Page flags as identified by TTM_TT_FLAG_XX flags.
>   	 *
>   	 * Create a struct ttm_tt to back data with system memory pages.
>   	 * No pages are actually allocated.
> diff --git a/include/drm/ttm/ttm_tt.h b/include/drm/ttm/ttm_tt.h
> index 842ce756213c..b023cd58ff38 100644
> --- a/include/drm/ttm/ttm_tt.h
> +++ b/include/drm/ttm/ttm_tt.h
> @@ -38,17 +38,17 @@ struct ttm_resource;
>   struct ttm_buffer_object;
>   struct ttm_operation_ctx;
>   
> -#define TTM_PAGE_FLAG_SWAPPED         (1 << 4)
> -#define TTM_PAGE_FLAG_ZERO_ALLOC      (1 << 6)
> -#define TTM_PAGE_FLAG_SG              (1 << 8)
> +#define TTM_TT_FLAG_SWAPPED	(1 << 0)
> +#define TTM_TT_FLAG_ZERO_ALLOC	(1 << 1)
> +#define TTM_TT_FLAG_EXTERNAL	(1 << 2)
>   
> -#define TTM_PAGE_FLAG_PRIV_POPULATED  (1 << 31)
> +#define TTM_TT_FLAG_PRIV_POPULATED  (1 << 31)
>   
>   /**
>    * struct ttm_tt
>    *
>    * @pages: Array of pages backing the data.
> - * @page_flags: see TTM_PAGE_FLAG_*
> + * @page_flags: see TTM_TT_FLAG_*
>    * @num_pages: Number of pages in the page array.
>    * @sg: for SG objects via dma-buf
>    * @dma_address: The DMA (bus) addresses of the pages
> @@ -84,7 +84,7 @@ struct ttm_kmap_iter_tt {
>   
>   static inline bool ttm_tt_is_populated(struct ttm_tt *tt)
>   {
> -	return tt->page_flags & TTM_PAGE_FLAG_PRIV_POPULATED;
> +	return tt->page_flags & TTM_TT_FLAG_PRIV_POPULATED;
>   }
>   
>   /**
> @@ -103,7 +103,7 @@ int ttm_tt_create(struct ttm_buffer_object *bo, bool zero_alloc);
>    *
>    * @ttm: The struct ttm_tt.
>    * @bo: The buffer object we create the ttm for.
> - * @page_flags: Page flags as identified by TTM_PAGE_FLAG_XX flags.
> + * @page_flags: Page flags as identified by TTM_TT_FLAG_XX flags.
>    * @caching: the desired caching state of the pages
>    *
>    * Create a struct ttm_tt to back data with system memory pages.
> @@ -178,7 +178,7 @@ void ttm_tt_unpopulate(struct ttm_device *bdev, struct ttm_tt *ttm);
>    */
>   static inline void ttm_tt_mark_for_clear(struct ttm_tt *ttm)
>   {
> -	ttm->page_flags |= TTM_PAGE_FLAG_ZERO_ALLOC;
> +	ttm->page_flags |= TTM_TT_FLAG_ZERO_ALLOC;
>   }
>   
>   void ttm_tt_mgr_init(unsigned long num_pages, unsigned long num_dma32_pages);
> @@ -194,7 +194,7 @@ struct ttm_kmap_iter *ttm_kmap_iter_tt_init(struct ttm_kmap_iter_tt *iter_tt,
>    *
>    * @bo: Buffer object we allocate the ttm for.
>    * @bridge: The agp bridge this device is sitting on.
> - * @page_flags: Page flags as identified by TTM_PAGE_FLAG_XX flags.
> + * @page_flags: Page flags as identified by TTM_TT_FLAG_XX flags.
>    *
>    *
>    * Create a TTM backend that uses the indicated AGP bridge as an aperture

