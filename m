Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A465F71EC
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 01:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C1210E8E6;
	Thu,  6 Oct 2022 23:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EE8110E8E2
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 23:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665099450; x=1696635450;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c7P1/tv+EnkBIpEDOt9MNpqyDzznsIvS97LIff15P/U=;
 b=iQA8AqyLS6T9+fDHI20FdJFSzMwX0HNdPefzddmMmsybqqDOel8783P5
 rJGbulw6uqUbfj5WbI8qUEGb/SEnF7y17iP3FqHc02DB+VnVFQH0YLMGV
 rzQERdaoWU/OhutjBK4LOTyfMQdSBbjHr29q0+32O24ytEOxM/Y2hb7Np
 ZB6BQ5V3D+ejf/U0FGFbyy2DbdFWyg9D2Ta/pyfDkVm+02hZgisP2LemM
 oNEHr4UNTw6XO1uHY/sgEz0TVhrg1BqdjuNkbQqvDIhJQiJBE77ColTeJ
 pQz+ZleyzgVSW/+3mzLDmcMHs1QiHCTD1jCzqmjAJyzVkjnCRoO97SftV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="389895492"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="389895492"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 16:37:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="800083258"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="800083258"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 06 Oct 2022 16:37:29 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 6 Oct 2022 16:37:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 6 Oct 2022 16:37:28 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 6 Oct 2022 16:37:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZHzOfyd3o2zajJhkHP1LjlfO6sxoUq7Ypo2rJcbY7hYmPWu+nZRaeB/FutGBGO8npC3523NWnc0giKisgPkIGAO2zHpdUnT5/LuJ+I4M0rR1ltGrZG3/7B4bdwoCFxFEYaTa4Stf1QzAC6XTLdYzXBiBdCCARu65BahREtFr3mg/4ijOsoFjauIxAR1niOUKcSNFxSSQvwMb9H3JnDRAoNEdAekrw3BgBpauePTQ8HUK/O8VnJnf5LhhmdQN0wEg/HIGjXbeVyW88PeoSVPnxB1C/IY0vqdHrhCXEmV05P5RVHmVI1XyUano36kzRhsRsCRdTMwElyfxgOq6fz+WQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kVUOLiWarhWDniYYaRbV3zlrcePbY0h+bO/DYXFn0dk=;
 b=lMDA70qOiVJ6XJItwSJUSplJsTx6cGNBd1IZeuz9SfT49pzZWs8FC9ztto2SjBTZ6LXTphIADfX089M3y0SJ919XhUXPwVo/YIcrMlFbeJdhhax4EiZUTlbzqTKG0wRfVVq4XmU3rV0qoKglerQjoL+96kDJ/gf2GDmqlBxHgFQmwwKT76gtV837XzqNZ/tuieeFLCx5mH4y+lnZfSGrAKOqsUIH8l75l1IMi+rArPjVwwImd+YoAs5G4Gd173b0crs9VLjw56GxuJY2AqIVwDVJmUZqaVH59xRnqHMVGn0Z3kVa1B/JCDxU30mWNjy5atMB6U3c12scORWjCBJZ3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH7PR11MB6770.namprd11.prod.outlook.com (2603:10b6:510:1b4::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.23; Thu, 6 Oct
 2022 23:37:26 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5676.036; Thu, 6 Oct 2022
 23:37:26 +0000
Message-ID: <6aeb2948-7c4d-412a-b836-b68ab2c20bd0@intel.com>
Date: Thu, 6 Oct 2022 16:37:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221006225121.826257-1-alan.previn.teres.alexis@intel.com>
 <20221006225121.826257-3-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20221006225121.826257-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0056.namprd05.prod.outlook.com
 (2603:10b6:a03:74::33) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH7PR11MB6770:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cc6a310-8199-412f-dcaf-08daa7f3ba0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zzrT1BEtTt5w9SIsjVX/7U51Axd1p5nYfnHv2ksRHKB6csaceTbr7BiqMDMTymbHRoWUcqOMIE2RpirFbl0AO4hf5XGeIHwsNav894DfVY1Q8D3wj3av9ERNIvU2/MxoucY6qoas7HXRUFyG9ZhWEmZWc5cnjk1E5R2OkKw6SAUUARhzvKKULiGEh1XS18IFJPvGP7s6l72R7ntQtXWyRhHcRnXvhH+H2U73SAW+qywi5BG/QhPuLwDHlZr9v9KeG4b2ZmhHXq/uaAFMC4FLePom2DHHJojwUrbjxR1j13JdNAy5QimM0dvrO3wZprYNqy0CguUr7fQhvlyoEcmvdv48P13CUSNOKqS8mkR+FN6X6N+OR1wg0xLSUioISUpOKhaqApwYVn1ICFMoOxC3ml+3HJXwbjb746WnLrVPlMkU9Qdb6dBYz7V9rgX+1QZQROpyW6sjy7vvmtNB/qr3SBdlwHTH84XE/5GUKfURT/khR/kYyN5rjH4cwVN900eHtxbffi+e8SS2vlTnNxJYTfY+dEDCqbG0ib7JIZzyrlTXYQ5iY/5GHO2ql1150OBU7WziCbZaAIlOFFbhSKQlOVYj0nhSLuTOMXc3scZpGxh4JvzDDk2Dq25wxpmqIQCLbmjngsHv1lXshoXrpcNkDmmA33qFtGBtCXM7OikfCEIx1qDiqqT7c5pWHq36GAefO8lNRLTgzld99Wpn9nPYKyqPp3WQkswhBDJtUbdAavNg5dhnxsyvf8GI4QE7U218PndXXPK7hQhMcRSit+0oGi3RKOAHk40AMdL6hSH7Jy4/OQigE4mPVDhIDzL3Z4uTNYCxA5NZJXM75S8cgcvvrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199015)(83380400001)(8676002)(66556008)(8936002)(66946007)(66476007)(41300700001)(5660300002)(2906002)(36756003)(31686004)(82960400001)(478600001)(38100700002)(6506007)(26005)(6486002)(31696002)(6512007)(316002)(2616005)(186003)(86362001)(53546011)(43740500002)(45980500001)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1N6STZxUHJnQUNjN1lUMDI4STlWcG93bVlCak56S3lUbmdOOXJCdkhkMTN2?=
 =?utf-8?B?cFFSTzFsa0NBcmFMWkZ6YXNDV2Q1aGJTUTZPRzd1L25wZjExc2ZGbGIvREY4?=
 =?utf-8?B?a29KMVFpTzBpS1RUanJkZUY1cWVvRU45WkZ2Q1JJaUNKTDRvV2V1eDE1ZWg4?=
 =?utf-8?B?ajZBRHRobHkrZTNlQVpxbFFidnYxbjFhajZ6ZlFYU3pwd2pYY05ud3dKc29N?=
 =?utf-8?B?QW5jNUVqYWpsaVZGQ0VLV2pOV3dOSGJUaFFOdVdHN1c2VlJUR0wzeTQ5UDdT?=
 =?utf-8?B?VUhvYU9MNUJOS0c2YjNuZEZ5NXJSbkZsbUtnN2xxUVExTXRzek8wbXg5RHBR?=
 =?utf-8?B?SEdDMWNmYXpJNEV4SUtFRVg3NEFEYmhSWWJZV0ZFNXpxYXhvaVpBR1FnalEr?=
 =?utf-8?B?TzM4VDJVYWZjdTFzVU1vc3o2aVdWNUlYMUJBcS9JL0JRSVNzVXJtVDZvT3JU?=
 =?utf-8?B?M1l5d2lZR0VwQVRRRnhHL05ickI1NVA4eVJ5UlVDSklBdW92UlpPTTJFelph?=
 =?utf-8?B?czlZSjlIS25OaHR4QXZNT1c2Rzh5dkg2dkY5ejU4NUttWHJncjhxS1hNSVBM?=
 =?utf-8?B?ZitoUzhSOWlmcGV3YmhITjdvN1VuelhDUXFjUzJwSXNSUmJtZWxqdFRoMXZa?=
 =?utf-8?B?UHpqMXUvZlg0T2M0djNvT25GcWxId0FxWGZrTWhwa1RBM1BRb2hZRFFxM0xv?=
 =?utf-8?B?dE5CY3A4Y09rNnZ4UXNRVE5DNHdnYTNKQ3YwdDNyaSsxd3BnK1djK05PYlhC?=
 =?utf-8?B?MVdHVVZ1blRnb3pDc3BDRXY1SG5icTNGbGlCTXA1MU85NkFDU2c3NWxwN1I0?=
 =?utf-8?B?MHpYdGxwalVaSDRtMzFzODJTdHVJVDRZTWRINHM3RnErN1RjdHNoRGdQeTJr?=
 =?utf-8?B?L2xFdVVTaVptZ0o1aWtEdkhWcHBsek1ibmFuVkY2amZBbnl1TVBHNHhEWnls?=
 =?utf-8?B?R0ZiQmFKZGRQS0Y0dGo2K3FtUXN4TGtrS0hDZEd4M3J3Mi83K2FhRFAwT1dm?=
 =?utf-8?B?eWMvL2l3bjlkckpnR3pIbWJKcjBLaFBXaTBRcFhpV1ZGWkJnZlVVckJjRnBq?=
 =?utf-8?B?dGQwQnZiNE5BSlYySmtlekhlcUhMYVJjeHd5Tk53dUxMektzNjdMYWJSTm1E?=
 =?utf-8?B?SXpCNW1FNGFTVklLQ29QOWI3TjdTZkpuNHRuSzY1YTBjWlVZdnlSQUpqYm5o?=
 =?utf-8?B?UnVJci9YZ2RoNFVkU2pHT3ZDRjhwRFRBRTY3Ukwwc3RXN2taaHd1MFpxa2tZ?=
 =?utf-8?B?RmVWWUxFYktPalhjbXNzU0ZKeW95Zm9lK1JIYWVJZ2FSaEJRa05XTGFKWFBz?=
 =?utf-8?B?Wm1TTDhueHJ2RTBrbnpVVjV4NllTTHRnWmtmMk5PZjFjVFB0R2tUMGgveW4v?=
 =?utf-8?B?S1k3aXM2L29pSFByb1lPZGhtQmYrQ3dGNjRZQWJQOWc0QXZkOTdzdmF0UWl0?=
 =?utf-8?B?cm5GVzVkM0E4U2RaMmhLUFZhYUt4RUx1MWl0QUhPU2lUeCtIZThsQWxTQ3NG?=
 =?utf-8?B?WXNaK24xWU9iQk15TXk0MFlHKzJDWkFKZVRpWTNnbVV3ZlNndFVUU2tsMGNL?=
 =?utf-8?B?OHdtdDdkaGVWMzdLQ05sSUU3dFV6OVpIcEFRczhCMjlFcy9pa0dHTFlQcFdk?=
 =?utf-8?B?M3UvQ2xDc3BGSEprTUlKdlE1RlVlcUpwZnFkMnhqRmFQSlJtc0Jld2pZRU52?=
 =?utf-8?B?ZHp2YWZiU3hPcktZZVhWVVhhajA5NSswZXZ6MEMzQy9qZjlhUUY5NXd5NDAx?=
 =?utf-8?B?UEkwdHRKU1g2bWFNb0prY0ZaOFJmem1SWVBJVG5nbm13bkk1cXNOejBuMGNP?=
 =?utf-8?B?NjZlbEUrOUNIYnN6TWxNek1YR3Z3TG9MdmlvNWJ0VEdlNGNMZHZQVnU2aENI?=
 =?utf-8?B?SlNIM1l6TUdTN3lvVFA5RjI0OHVzSW1rcTQwaVYyUlplRG93eDEzcjMrY1hq?=
 =?utf-8?B?aXh2eU8yVDVqallsa1JjMlhhS2xtUEdQTXgwdnA4TkZGT2Fyc0w4L2VtaWtt?=
 =?utf-8?B?RHNuUEZaU1VaZy9xbEpqMDhuZTRLWFNhRWg5MjJ6a2R6a0dwUDRaNVRvZkxF?=
 =?utf-8?B?NWF6NFFXcC9PeFlFRXI4eCtFdVR2V3ZURkVhWVF5RTZ3empGaHpsTVpZUFhD?=
 =?utf-8?B?UUpKbUJEY2pMa3VGOXYvemRrNHdSNVZSZW1NK1A1Rml0NDRmS2QrWi91Z0la?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cc6a310-8199-412f-dcaf-08daa7f3ba0a
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 23:37:26.7761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /gjc29lz92lZk9mgxwyrJQWSIoctFZWrtXGyM9sNX6WBRvh+dCIIjvwuXCcdRruSNeb7dzlWYJWkm8WNbG+zJskHfhX+0sHX1ozULXuv+ow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6770
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 2/2] drm/i915/guc: Remove
 intel_context:number_committed_requests counter
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

On 10/6/2022 15:51, Alan Previn wrote:
> With the introduction of the delayed disable-sched behavior,
> we use the GuC's xarray of valid guc-id's as a way to
> identify if new requests had been added to a context
> when the said context is being checked for closure.
>
> Additionally that prior change also closes the race for when
> a new incoming request fails to cancel the pending
> delayed disable-sched worker.
>
> With these two complementary checks, we see no more
> use for intel_context:guc_state:number_committed_requests.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_context_types.h |  2 --
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 23 -------------------
>   2 files changed, 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 6a49fa7e119f..e36670f2e626 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -199,8 +199,6 @@ struct intel_context {
>   		 * context's submissions is complete.
>   		 */
>   		struct i915_sw_fence blocked;
> -		/** @number_committed_requests: number of committed requests */
> -		int number_committed_requests;
>   		/** @requests: list of active requests on this context */
>   		struct list_head requests;
>   		/** @prio: the context's current guc priority */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 3cfdb0a5e5bb..b91c3085501d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -370,25 +370,6 @@ static inline void decr_context_blocked(struct intel_context *ce)
>   	ce->guc_state.sched_state -= SCHED_STATE_BLOCKED;
>   }
>   
> -static inline bool context_has_committed_requests(struct intel_context *ce)
> -{
> -	return !!ce->guc_state.number_committed_requests;
> -}
> -
> -static inline void incr_context_committed_requests(struct intel_context *ce)
> -{
> -	lockdep_assert_held(&ce->guc_state.lock);
> -	++ce->guc_state.number_committed_requests;
> -	GEM_BUG_ON(ce->guc_state.number_committed_requests < 0);
> -}
> -
> -static inline void decr_context_committed_requests(struct intel_context *ce)
> -{
> -	lockdep_assert_held(&ce->guc_state.lock);
> -	--ce->guc_state.number_committed_requests;
> -	GEM_BUG_ON(ce->guc_state.number_committed_requests < 0);
> -}
> -
>   static struct intel_context *
>   request_to_scheduling_context(struct i915_request *rq)
>   {
> @@ -3172,7 +3153,6 @@ static void __guc_context_destroy(struct intel_context *ce)
>   		   ce->guc_state.prio_count[GUC_CLIENT_PRIORITY_HIGH] ||
>   		   ce->guc_state.prio_count[GUC_CLIENT_PRIORITY_KMD_NORMAL] ||
>   		   ce->guc_state.prio_count[GUC_CLIENT_PRIORITY_NORMAL]);
> -	GEM_BUG_ON(ce->guc_state.number_committed_requests);
>   
>   	lrc_fini(ce);
>   	intel_context_fini(ce);
> @@ -3441,8 +3421,6 @@ static void remove_from_context(struct i915_request *rq)
>   
>   	guc_prio_fini(rq, ce);
>   
> -	decr_context_committed_requests(ce);
> -
>   	spin_unlock_irq(&ce->guc_state.lock);
>   
>   	atomic_dec(&ce->guc_id.ref);
> @@ -3651,7 +3629,6 @@ static int guc_request_alloc(struct i915_request *rq)
>   
>   		list_add_tail(&rq->guc_fence_link, &ce->guc_state.fences);
>   	}
> -	incr_context_committed_requests(ce);
>   	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>   
>   	return 0;

