Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEEE41D2C0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 07:35:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4D56E2E3;
	Thu, 30 Sep 2021 05:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F88F6E2E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 05:35:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="221901757"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="221901757"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 22:35:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="539288550"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 29 Sep 2021 22:35:14 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 22:35:14 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 22:35:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 22:35:13 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 22:35:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MGNd8BEwVJlbF+KfsrllUgdIx+Nx/xuDUm7twoeX5BWwaKDzgQg0UMXu4U4UmvFOot4K+4LN5XOqOKEkgOEkCTJBHps631vERGaSsnKaUl1EOyeWjSWYGGA70GKkL8D096y88v62BqlCstO7mBUsa+9sQnf6PBErXbWoJay0dNePvf10O1K03OfRNYRqznxLzIXDRepYu/UZ1HfuZiXplzvKilu3UkCd47UvY+IE4ViK/Qgbz8x7LThAR50EbX0g0AqXE4DdXVmVgwU+QmCC2utJygzOghwq3dg/oarSkQdOiGlPFItPuRMhp0B+BH4f+WZ18hYu7hdr9SU7fbGwAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=AWcFprUvRKj5+CBrEq6BvvXRDJqMmpGMA2sES6zUMM4=;
 b=J83E7ioFSgYk0/iiC0RHBLzledrNsLQkgqaTbsMPBWB+9kFvUO+Eth+vHUOQU9SqcrYdhGubLjsAlvKPt6L06IUR+G90MMAxvqw68hY0IACi+z+EuJcCbARtWQncHGj4G4NW6GzfSF2ScMO/brI4sO0/Hqfd5gh33gLy8N0rxUhk3puB9nlwE5KlwFV05a1d/QmBFQYf9gTeJnxIilt3VSVU12NGU7QkFKtcIhDfJv2x8GXfo+lQkO2FDclGrmWJufWOa/9hmuErzuLQ/qFaOntZ0iK0TRcy7UJgDrgqdeJwGRt/Ev3kPOyM0Dsbywhtg4LUWzGnZyji8sYNGzLEHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AWcFprUvRKj5+CBrEq6BvvXRDJqMmpGMA2sES6zUMM4=;
 b=YzhNLlvhKI8zvZgoFyH9NHfWjEfaoQPEKCadK1apY+A2VsfFrChDFYIGkxn9rD9RmMaeik2ijbggJKrJEy2Jb+cYBylriU4fIccxgIwX/XkllPztUIcm7QDPIdGyPSVzlq7r2kuU/NowNXo3URlXcWID/tZgV0jqPjeVTeU27Uw=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5424.namprd11.prod.outlook.com (2603:10b6:5:39c::8) by
 DM5PR11MB2057.namprd11.prod.outlook.com (2603:10b6:3:d::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.15; Thu, 30 Sep 2021 05:35:12 +0000
Received: from DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f]) by DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f%4]) with mapi id 15.20.4544.022; Thu, 30 Sep 2021
 05:35:12 +0000
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210923194617.69136-1-jose.souza@intel.com>
 <20210923194617.69136-4-jose.souza@intel.com>
 <5f2840af-93f9-3493-7e22-e6b88442d992@intel.com> <YVSucKOlmzx4Uj8G@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <defe58f1-41a7-7911-de9e-ea6ac5ce3c91@intel.com>
Date: Thu, 30 Sep 2021 08:35:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <YVSucKOlmzx4Uj8G@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR1001CA0006.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:4:b7::16) To DM4PR11MB5424.namprd11.prod.outlook.com
 (2603:10b6:5:39c::8)
MIME-Version: 1.0
Received: from [10.237.72.199] (134.134.137.86) by
 DB6PR1001CA0006.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:4:b7::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.16 via Frontend Transport; Thu, 30 Sep 2021 05:35:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3299fe8c-b8f9-4109-990f-08d983d41291
X-MS-TrafficTypeDiagnostic: DM5PR11MB2057:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB2057B119DAC1ADF875E06F60B8AA9@DM5PR11MB2057.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A6lBvcL5mFaVbHBSRZm+6aXiPERfKGqKO8uIGjspUKHg5vSoNr1/6UlMSsX88NySlrIwSn2cYOieIawykEc+UC3wiWUHfMrCJXzcoLNftifnOyYcx5B7cE1pWyp1StF6oBRD/VXz86bEK8DSM/iBJQo7GVLCgP6/mrErqpg2U9vUz/7psGPdRAaUG/V8pGFUHdtUee+C8V9JePSUA6K0FLPVWpxBD8CTGF9i19Ku6Jum4Im+Q70Vir836F8DGhB6koRNVrs0lPf6wY16Xho4eotGlyZGLTf5JYoAKdwj0ssLVUi5+nrrx1s2u9KFTUZIxOBOU4oZtIZHz/nXLbVn9ERSRHA147cVYPlvdjBT7ycfTmTWc2lisg/WhzhPjH7e20tVWg1N7wXBTT9YB0t9lh0TzemjsNKgbV0C4xlA2DA/varq3JNRG9AoRnn9jPa5OUw9TH5NiMX+zip+v9OQ5DrOz9E/ugMxHS0ELTJcccUF64LzYnAVrGsg+C4PQcoH0vrimc4NXYHSEgM/ZkBvfX3rK3zNTg5ZD/gJ6YTENu7ZQDoDerkff/EWJBcXt6JlzBmWfkWyHjPhSv5/GIL8hZgFlzpfju9YggbQM/QS6BCPawMnAjEJHR4T1RCdWky2wpZhjX9xlQhSTGjbLEzjgaCDbRycR+RBdLMjFf9woJFnoo06UqjXzy0a7M8AyEMAk/HUevaAzR0CpzHSdkRXvg81hvOb/WdBt7M2ZBpb5ds=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(36756003)(53546011)(6916009)(6666004)(26005)(83380400001)(186003)(31696002)(31686004)(956004)(8936002)(5660300002)(316002)(16576012)(86362001)(2906002)(38100700002)(66946007)(4326008)(6486002)(508600001)(66476007)(66556008)(66574015)(2616005)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGxkVEZlK0dhWWR4VG9LREtBUWsyOUV6Tm1VVVd6di9Oc21BQUU3N0RvcVh6?=
 =?utf-8?B?TDBQMGNLMnRCWFlkM2YxYlZzb2NJU2U4Nk45dzBaUGtnaUJrY256VXZIZEpl?=
 =?utf-8?B?NXNadWZXZGxCZ3I0THlMNlVlcVVWOXZtQVhXU2d6YzJZUWdscmNkN2pLRC9T?=
 =?utf-8?B?YkNMdndIbFBicDNCaFVuNTV3WktPQ0FGWTQxZDNDWTFHbUNRdEIxNWtvNXJG?=
 =?utf-8?B?R3NNMUFzZ2N0cVVuc2ZqaTVjL2J2NzJFdHpWc3dlTVlJZXJvbEowODU3OVFE?=
 =?utf-8?B?cG10UWNqR1B2QWlsbnpNckIwRG1wRFVyQS9Pell0VEhZRFkxYjM0MnZPa3dk?=
 =?utf-8?B?MDFoLzA0ZmVXanNoNDh3cTYrTzE5c2lnTzY5WW80OVVOS2hXZDV2K1dpODJ6?=
 =?utf-8?B?M0xmWWVmR1Bla2hDWFM2MzJEa2ZrM0syT3ZsTnRNcTh3czkvQW9sOGxZUmJD?=
 =?utf-8?B?U2hiTmFiYU5KT0lscXF6dktNQzhKc010Z1JBTFJmckcvV2VneFN5eTJnSHox?=
 =?utf-8?B?dFUrVmVnWXRoRTAxUU9TQWx3R1R0YjdWVFh1L3FCZ284RTFMSmRERlRadm5K?=
 =?utf-8?B?SElzeDFJR1UzRmpMV1Z2Qm1CaHZXZUF1QXRzUktQQUQweEh4THcxNnRiSUhZ?=
 =?utf-8?B?bVk2QURsM0NORVphMTAvSEtGV2pOVDFEampjcGtRbk4xT3p0MGQyVE9oT3dS?=
 =?utf-8?B?NTkyTTVVL3FObHM4dFQ1NmhqTUd6NUR4Vkx0bkw0SitGU0c2SU9jK1A5M1l3?=
 =?utf-8?B?ZTJwOTdJZ0ttMEd6eW56c25mRFFwS1BIamN3Tm9qYkloVUhKWll1Q1M1QkRE?=
 =?utf-8?B?Nmd0MXRaU1pnM1F3aVFKdmdhVnkyQmx6ZHdXcUhSWHMxaUdkOXNBWFJpUHBz?=
 =?utf-8?B?bHd6RHljWS9OSTdyOEFkM20yRHAvWTFIQkRBSVpHU2xkZUc1dDRzMlRuM2tr?=
 =?utf-8?B?MDVxbEpYV1lrZzU1V1Y5TW81UVh4ejBkTHNEUzliWjVaZWQ5VDFxZ0hpcXlW?=
 =?utf-8?B?NTBkUW1yeGh0a0MyK05oWnBaY2RoQ3dPK3IxTlgwVi96SVRVQWw3Si9KcUpa?=
 =?utf-8?B?YUUvejNNeHRWV0VOUVlhUm4vcmlGNVpRRHd0UzFQVmxqWW5VbW5Md21Odkkr?=
 =?utf-8?B?cFpPUVkyWG05S01YYk9QTnZQUG5pUGZ5a1djRy9Gbkw3Nk50MmNFWjNVeVNW?=
 =?utf-8?B?bTQxSmRGZklOV2VodjJPV1BFRXdnM1FTUHEwMGRIcXNtbk1tYXV5WVdwckFX?=
 =?utf-8?B?SXo3NSs2d1gvZXJ0aUZMQnNvdFJMUXBLNi9zUVdxRzAxWjdNckJodHovTVp2?=
 =?utf-8?B?QVNaK01uMjQrQ1RPRUozcEhZVVp4ZzVBSFlkSDY0M2xCMW54eWpJZ0l2bTlo?=
 =?utf-8?B?TkdQZ2R2c0d1Tk95R0g1TUJwR0d6eDRQVFk3M091RjFpM05PNExNVUZ0dHlF?=
 =?utf-8?B?MTVOMlptMFB1RXVlOW5WdmNGRHByQmtpM3JIdjJYZWRsKzE4UlZWL2VhSmh2?=
 =?utf-8?B?SkxnQkpQQkRvcEJaYnZDQWdkUFV5cjJPT2tPK2JoLytOR3FaLzZkUDRhL1Fp?=
 =?utf-8?B?UE50d3Jra3dhZ2lDc3QySzlCbFk2ZW5YdE0rRWQ0bW5SQk42TzdvRnMvVFRv?=
 =?utf-8?B?cXN3TkNHNHdWMWVrWGNocWd1OHU2S09kM1Y1YlBET0l2aE1uSW9YQlhpaXNF?=
 =?utf-8?B?YkpLaDhHY2sxZ0taV0lZUy9mQ05FUlkwS1FpUm84TE1GYWx4ODl0ZStqS1hI?=
 =?utf-8?Q?px0IQJKYWzV3gZDvC+Cz+kH/qylqolf39g7tI7B?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3299fe8c-b8f9-4109-990f-08d983d41291
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2021 05:35:12.1097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kqQQqnBuDfk3Nh5xiTtR+fEoYGzahvHff04p1hTdIDPpAvZQAMiuLg5nW0HkBiXxLAS2z0BTmomafpvFmBhuZXMWH9znC6K1KLPlmwtSr3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2057
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/display/psr: Handle plane
 restrictions at every page flip
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



On 9/29/21 9:20 PM, Ville Syrjälä wrote:
> On Wed, Sep 29, 2021 at 08:50:12PM +0300, Gwan-gyeong Mun wrote:
>>
>>
>> On 9/23/21 10:46 PM, José Roberto de Souza wrote:
>>> PSR2 selective is not supported over rotated and scaled planes.
>>> We had the rotation check in intel_psr2_sel_fetch_config_valid()
>>> but that code path is only execute when a modeset is needed and
>>> change those plane parameters do not require a modeset.
>>>
>>> Also need to check those restricions in the second
>>> for_each_oldnew_intel_plane_in_state() loop because the state could
>>> only have a plane that is not affected by those restricitons but
>>> the damaged area intersect with planes that has those restrictions,
>>> so a full plane fetch is required.
>>>
>>> BSpec: 55229
>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_psr.c | 45 ++++++++++++++----------
>>>    1 file changed, 26 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>> index 1cc4130dec7b1..356e0e96abf4e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -720,11 +720,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>>>    static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>>>    					      struct intel_crtc_state *crtc_state)
>>>    {
>>> -	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
>>>    	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>> -	struct intel_plane_state *plane_state;
>>> -	struct intel_plane *plane;
>>> -	int i;
>>>    
>>>    	if (!dev_priv->params.enable_psr2_sel_fetch &&
>>>    	    intel_dp->psr.debug != I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
>>> @@ -739,14 +735,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>>>    		return false;
>>>    	}
>>>    
>>> -	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
>>> -		if (plane_state->uapi.rotation != DRM_MODE_ROTATE_0) {
>>> -			drm_dbg_kms(&dev_priv->drm,
>>> -				    "PSR2 sel fetch not enabled, plane rotated\n");
>>> -			return false;
>>> -		}
>>> -	}
>>> -
>>>    	/* Wa_14010254185 Wa_14010103792 */
>>>    	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
>>>    		drm_dbg_kms(&dev_priv->drm,
>>> @@ -1586,6 +1574,26 @@ static void cursor_area_workaround(const struct intel_plane_state *new_plane_sta
>>>    	clip_area_update(pipe_clip, damaged_area);
>>>    }
>>>    
>>> +/*
>>> + * TODO: Not clear how to handle planes with negative position,
>>> + * also planes are not updated if they have a negative X
>>> + * position so for now doing a full update in this cases
>>> + *
>>> + * Plane scaling and rotation is not supported by selective fetch and both
>>> + * properties can change without a modeset, so need to be check at every
>>> + * atomic commmit.
>>> + */
>>> +static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state *plane_state)
>>> +{
>>> +	if (plane_state->uapi.dst.y1 < 0 ||
>>> +	    plane_state->uapi.dst.x1 < 0 ||
>> intel_atomic_plane_check_clipping() function makes
>> plane_state->uapi.dst.x1 and plane_state->uapi.dst.y1 non-negative
>> values, so there is no need to deal with negative positions here.
> 
> Cursor can have negative coordinates as it's hardware that will do the
> clipping for us.
> 
Yes, you are right, thanks for pointing out it. The cursor plane's 
CUR_POS register has X and Y Position Sign bits.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>
>> And the rest of the changes look good to me.
>>> +	    plane_state->scaler_id >= 0 ||
>>> +	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0)
>>> +		return false;
>>> +
>>> +	return true;
>>> +}
>>> +
>>>    int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    				struct intel_crtc *crtc)
>>>    {
>>> @@ -1618,13 +1626,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    		    !old_plane_state->uapi.visible)
>>>    			continue;
>>>    
>>> -		/*
>>> -		 * TODO: Not clear how to handle planes with negative position,
>>> -		 * also planes are not updated if they have a negative X
>>> -		 * position so for now doing a full update in this cases
>>> -		 */
>>> -		if (new_plane_state->uapi.dst.y1 < 0 ||
>>> -		    new_plane_state->uapi.dst.x1 < 0) {
>>> +		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
>>>    			full_update = true;
>>>    			break;
>>>    		}
>>> @@ -1703,6 +1705,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>>>    		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
>>>    			continue;
>>>    
>>> +		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
>>> +			full_update = true;
>>> +			break;
>>> +		}
>>> +
>>>    		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
>>>    		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
>>>    		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
>>>
> 
