Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C8E406CE7
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 15:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87E46E9FA;
	Fri, 10 Sep 2021 13:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C856E9FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 13:30:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="200600169"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="200600169"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 06:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="581354813"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga004.jf.intel.com with ESMTP; 10 Sep 2021 06:30:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 06:30:20 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 06:29:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 10 Sep 2021 06:29:45 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 10 Sep 2021 06:29:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRNy4fV2rVaLOmyfu4yDBRpEHWbV7eebji7ggVllPcV3FGvuhYdDHM4iRZxA53oFJreDVrRfQ4/cssdevFIFH6Q7fZivsU1OtrC//L6s2vpZtfOBn162LMxMZu0mM0DNb2D4s5WTnES6Iq3EIYVZqHeKY1e396IW/QnslaDSfE2mmgwqBgzN2D9Ml8vAzooEQutQBeHKMekU7t72WstaRstdQCaPRXtcg2Tdr3veT7BjCbE9XEqUTwho/HNwkI4tvRnRyJUEwYlUgQYRjIyGxJ/Pst+yiLfnBpA9vYVD39Xkcj8QOV7gE1feqnGhtCPL82oT1Vn3Hn9yG626pxS9Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=xhENNBnHmwvsN4VmHKJz+WOGG6Xt+D33UsJwDrcvk5c=;
 b=Y04B6Ko/ZQIy7GuRf/uFXMk3XDA+s1edjYLptZKSPN2aGqnn08w0AUaiPYR2DRJbys856TRxFdrygEC/brRFImB/xKkaF/USYSHj8Pxl+bNV9L4l9ewTuAbV5L00caRE7Zy1KkkJUU27zZRSYBuer7u1eCWXmUrwkz5IUmP3qmrAIV8EzAZYaOfYxsEFQbTXr9BijyrDQacyOlUyI1iiNCXhGVEVSVJkhboWi+5PY4Qvi7km9Nyo4mi1cxszWwHcecdxUmHWCsrSOcYAHHHreSzSnlXM3pHsW4bT5apE+3nOFRAE++dhUof378Ahp041HCko0ZLB0A+4+LWJ3aKYcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xhENNBnHmwvsN4VmHKJz+WOGG6Xt+D33UsJwDrcvk5c=;
 b=yb1itkHM+Kyf+oXxVhOzHUhHk2aKrip3WcHkIbkaOWjOceVG0vZ7DGm+ls7YKClUPz4RQF5UzRRDO1j+2WoBt1V9Jd+9uoFJrxaEYa2uRnLkvobkcx6yLcNkMzXXrhwyPX/sC9rG1XgDy5SMEpyROpXCid4CCw8Crx6uAGk5zoo=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4231.namprd11.prod.outlook.com (2603:10b6:610:3e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.19; Fri, 10 Sep
 2021 13:29:42 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4500.018; Fri, 10 Sep 2021
 13:29:42 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210909230725.33735-1-jose.souza@intel.com>
 <20210909230725.33735-5-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <e0993b2b-84d7-893c-96cd-8061bdb695ae@intel.com>
Date: Fri, 10 Sep 2021 16:29:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210909230725.33735-5-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6P192CA0007.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::17)
 To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.137.85) by
 DB6P192CA0007.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 13:29:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 20a005ae-5711-4b54-b5fe-08d9745f0bde
X-MS-TrafficTypeDiagnostic: CH2PR11MB4231:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB42319DC8971C601034597BE5B8D69@CH2PR11MB4231.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e8yNkYhIqMfWJtXGErDVxdJtpFfRyKUJDMuYIKqmZBwA3c0pG4zoXDqgmB2puIJUahZ+sJxuf4Bz8dArSirE6bHFV7z3DyhEiw3nakeI0P3b2eU6Kr7sxCCwC9s0qPypAPkQJetgtulWWTy8nlLLYi0tVXaHT2kaxBRwWeMg/jDTUa6wJChW1cj4qsg9iD122Fu2C86ejBn3pL8phc3jliayU4IOnNWHL3oTmHpfDjn6rqZZQGxOl4vjYFlDh36qOqKnNiSS8zNeqabMzBscsny3nODUBZ8KdP5y28RcAwjs+4CzkjI8+sB2g1i09ZkLafrtHrI/8NRsiQylAAbvPml6DOcK+aNUj/KOup1Har/et2pk6XLW/CGSkTaY2zdSKzvSeU4E+wn7IKBUD21PDDPz/mFxUPFEPAPZnaVnuaVWJVyNKtz33t7DSumhPI6+0arHk9UXVAu7CjSQ5Y0Ubj16NpckDG3tDfOC3MQHlx/NnlO44NZzSrWdFNxqMgNAAjF2DkBHgqLKE4NrpxAyBBT1/yrTOstgrk9TYw2ciRup/5zCnhvcnTEyAKHIoioN7UqpVpT1ja8opJk32hpSl+ec0Yop9/c868uXzfU3ZaF9egvZm6d88dOBFVRNtMoSgC493zpRmO90jDa+I63mJ6o4Plr1Sq+AMXSuhs+fYF2Sb2ggLY1sHaV7LfHLwbGgSY0rLLtJm0kr4p/7ABL4Q4z2w3yBearQEOEeRQaP6Qo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(66476007)(31686004)(66556008)(53546011)(2906002)(316002)(36756003)(5660300002)(66946007)(86362001)(6486002)(2616005)(6666004)(83380400001)(31696002)(26005)(186003)(38100700002)(8936002)(8676002)(478600001)(956004)(16576012)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1RQZkcxQXdRM1JwRVpLdjB4dWpEK0R6eGlnTHFzMjkzZG45czFaRFdvK1V3?=
 =?utf-8?B?aDB1Ni9BL0NzZ1pyOUI4R2pmc1cyd2RQaFlwU2NDazJ0YS9vbHFEcGtpQlhR?=
 =?utf-8?B?azBTdkVEay82bVNRc1FwaXk3R1c3QXVDZkFjRnJSTnFGdmw3Y0N2MkkrMUpz?=
 =?utf-8?B?a0tKSFZDdUVoaU52SW00Z0pKUHlQczYyTlVwRktqc0JNLzBRNGtHa3RWQ1By?=
 =?utf-8?B?NFVWcUU5a29ZeUptU1ZwV1N0eHNIdjA2WXVtS1lnWHFyZ0E2WkN5bDhRWW9L?=
 =?utf-8?B?aCtyNGtYWWlMK0RQYkhRTjJQeE9jeE5RcS90cU5EMHNWVXFqaHl1TXZDUk42?=
 =?utf-8?B?cGl6dnRQY2hHUUNxYU5QOURuMGlnUThkY0VvZTFTYW5JcGxBN3p2T1pqL1RV?=
 =?utf-8?B?REtlY3haOXZKYUVhVU14NkVvaitVQ3ROQWc5K1BDdEllSldoQUhsdDZKa1Z2?=
 =?utf-8?B?T3pyQ0xMbGVIQzBCRnVwK21JYXpjTGZrR2d1YVl5anRYZE5WWUtQYU01TkV1?=
 =?utf-8?B?VmVTRitIL3M3ejlGY01tU3dnaFhjaFphL3RNNVFTK3dSdCtOTmRCZHo3dEJZ?=
 =?utf-8?B?U0U4V2lwU1BwK2hIMHV1VHFLdktPdk1mbDVwUVJFSDNJVVBxN0gzK3VQdENW?=
 =?utf-8?B?UFFnTnI3dHdGZ3AzM202ZDROclE0S1dPa2hOVmlqYUZkYkxZNG50bVdnaHoz?=
 =?utf-8?B?L21EbWFxdWQwb2NocVhIMzBZN2VINUFIbFFCaWNjcWxVUU0xUXhSdlJ6THpY?=
 =?utf-8?B?VlBIZ2VoZnVVZDhBOHlvMC9KTzFUMUxBZDJ3SWR1THVXZm5mdHg4UTZRcEZV?=
 =?utf-8?B?ZlJtYnJHbXdjZjl1TjBmU1duSXJVYVQxb3BXbmMxdkdXeFlHOStFdFZERm1s?=
 =?utf-8?B?clo0eUppUjlVZGJDMytWVFg5bU5BaHNkNWNWcTd2a1AxaHFuMlJ0Ri9UeDdr?=
 =?utf-8?B?N3I2dTlNUStDMHpjWXpZLzlGS1ByVmMyUGRpR01zcUxtSXR6YkYyZFV2ZldG?=
 =?utf-8?B?MXZuV1EydCtXVmZlN3pmQWlVQ3h1ZXpZb3R5ckRwQXVQbkhUcHc1ZEdseldK?=
 =?utf-8?B?LzV3SzlnOC9TdnRpRkJUYVVXL3hJbWNaeC9JWWcvUnAvUXRpd25rOHlCT25Y?=
 =?utf-8?B?UGYwbENjU011UXZQaW56WXlSOStBYk9Oem1JRXpyNHRQUFZ1VmdLeU9Gek9T?=
 =?utf-8?B?NitSdXByQ3JoTFNNYm9pZ2VLb1N5MHhSQTZIZWNFVmNEMDd5bHhPcHpKaXBw?=
 =?utf-8?B?ZE50OWNEajQ3b3ZiMlhsaFVUZ2VLa3lOaVRLT1RUeEY1OG9TUDYxR0tYeEZP?=
 =?utf-8?B?bzBDekpGWDZ2aEo0c1NPaTZLaEp3NTFENGN2ZmZXY1NhZVMvN0FVT2FpZWZa?=
 =?utf-8?B?OVdPSVBZZXNlc2VKdUdmVDlQbXVPT09OVlNWcVp4UXBuZnAxWTRNdDBLWVM4?=
 =?utf-8?B?QUhwRVBqVVR4bG9TZjNnUVRuc0oxazJRK0FJZ0dDYi9CNFgvVVJYNisveS9S?=
 =?utf-8?B?TlZ5Um8raG1vN2J4QmtoSUxTTzhxb05DMlBzMm5nZmNSSFE4YlE4OVI2OHlH?=
 =?utf-8?B?YThGYUgxdnBRWlhucWpFR3FhMGF3MmkyWkkrU0NsSWZMNDEzandmU0U2WTNZ?=
 =?utf-8?B?TGwva2ExQm9ULzg5b3dWdVRTckRRZUtXcHNnTURHOUhHbFp6aURkc09vNWpa?=
 =?utf-8?B?V20zcnhlaGZyY3h2MXVVbTBKSUNpS2Y0Wlh3MFFSeFpDaFhlcjFNaVVpUkQr?=
 =?utf-8?Q?7/kBzZyIbE/GQA2Z9FOMAatUO1Db1SVpBUB9WOW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a005ae-5711-4b54-b5fe-08d9745f0bde
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 13:29:42.1755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vux20lqIAz0Gib5ivs+s8pMrrJADnQlSJSXJhu6cvznVYjPjbRfOEWEjgnhvUX6WGScP8brD+mteICfHZlTSbCYKLzirV3fHaPUcJ1ccVp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4231
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
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

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/10/21 2:07 AM, José Roberto de Souza wrote:
> Not sure why but when moving the cursor fast it causes some artifacts
> of the cursor to be left in the cursor path, adding some pixels above
> the cursor to the damaged area fixes the issue, so leaving this as a
> workaround until proper fix is found.
> 
> This is reproducile on TGL and ADL-P.
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 25 ++++++++++++++++++++++++
>   1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 670b0ceba110f..18e721dde22e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1565,6 +1565,28 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
>   		drm_warn(&dev_priv->drm, "Missing PSR2 sel fetch alignment with DSC\n");
>   }
>   
> +/*
> + * FIXME: Not sure why but when moving the cursor fast it causes some artifacts
> + * of the cursor to be left in the cursor path, adding some pixels above the
> + * cursor to the damaged area fixes the issue.
> + */
> +static void cursor_area_workaround(const struct intel_plane_state *new_plane_state,
> +				   struct drm_rect *damaged_area,
> +				   struct drm_rect *pipe_clip)
> +{
> +	const struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
> +	int height;
> +
> +	if (plane->id != PLANE_CURSOR)
> +		return;
> +
> +	height = drm_rect_height(&new_plane_state->uapi.dst) / 2;
> +	damaged_area->y1 -=  height;
> +	damaged_area->y1 = max(damaged_area->y1, 0);
> +
> +	clip_area_update(pipe_clip, damaged_area);
> +}
> +
>   int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   				struct intel_crtc *crtc)
>   {
> @@ -1627,6 +1649,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   				damaged_area.y2 = new_plane_state->uapi.dst.y2;
>   				clip_area_update(&pipe_clip, &damaged_area);
>   			}
> +
> +			cursor_area_workaround(new_plane_state, &damaged_area,
> +					       &pipe_clip);
>   			continue;
>   		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
>   			/* If alpha changed mark the whole plane area as damaged */
> 
