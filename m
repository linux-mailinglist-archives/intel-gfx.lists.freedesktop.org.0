Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A725C897A87
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 23:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D18710E57C;
	Wed,  3 Apr 2024 21:20:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MqsCaoEZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CBB710E57C;
 Wed,  3 Apr 2024 21:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712179226; x=1743715226;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=stjNu0vr8slLUKgF5GI13U105oOq5em4xCYhnSYqbSc=;
 b=MqsCaoEZV2nRYDyoiNV94zlVSdhYCoU3Dq7vpYYC/TGxZ5AMUCgRv9lE
 YBgcfeC9uC6VUxDIOG9Dtu6hCPI8f2MlcNiptdWnPIewRvRdIWccn/F85
 KhTJ4GUPjSYj3k9dl8e9DlEDwT/c5mqf9bRdjk90dE6kaerRIzjD22nXw
 3Oaxpi4KpOp3fplQDfw1URXNieEdop7N329E0s36ohPMy1Be7++Qby6A9
 uYh12EcvdCut69IyhizdhuHtXT8Vo/aOFJB2VRgx6f8Sqq9Ttif7xHF+E
 vt33niVBJY9haPCmBCjMcmYaCYrIsysoZJ/Az+gmstnICymWoEz1I7SaF A==;
X-CSE-ConnectionGUID: LHMdKsZHTAqc8ldLVXCCeQ==
X-CSE-MsgGUID: 5wozMgrxRnSZAQ3P02xZcQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18013502"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18013502"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 14:20:23 -0700
X-CSE-ConnectionGUID: b1zRweJJQBCJo1lxWdbihQ==
X-CSE-MsgGUID: /f5gajJ1Q7ihUvcZV44WBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="23270222"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 14:20:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 14:20:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 14:20:22 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 14:20:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bGnfQyD5fmfPGhbIspa+m66R8FP6HoEBM9wGhQN6yaH7G1EmeWf1UJ3zbuQqwU/IoAihZmeAkmrbEI+TYVeMkL6rNki58Lgl79N/3mzGbQXsxLvMjAQZcH2jaROWQsRihTqNWJRYudU7ojLmqyhCwcE4SiqbvdFAiTWyRhR4/g8w/tpI3NN5PlNZaSSwZAt1/ErXOagIP9QNTmVgOkOgtCY6PB8jyjf5ArD0h9Itq9Vq5t9lwx4mae7kdBm8AnaMW7PCeMnS7bPO55BbTVMGvQa+HzK7WmKKnPdH8W2sd20L5d6Cgu00RzVFNfpdLG7mkHZbgP0B6CNgU/BtOQpSyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3stKS3EjQ8h+uww+BkJm6LcLoccNbYWVnOhy5C/lMqw=;
 b=hEvqLKPyTehufqbtyeqX5focgvbeyeHGwjOatzhDKLGMPTagPdwUb+UkJnlA4u2JX5VQyjossH8FUZEm96YCPUPTyi5hVCflBH7ZLq9lmLsPkCquHSEK4UwrS4zjqNQ+rk/q9WrN3+xT5VqTK86zuV8NhFyaScggUm6pnM5+mZnwVTo3H7zecXZ0sTbijf/gpgr5pYGXNHFDYIe6YW8BTkr2xhIi3NyH8fH8qLuddm0KKUiXyRNS1EJ6UdsjsQJakpeVyul8XtadFN2X2JDl/WqQmPFy9Hiwseu3/7xo80y04OKc4pWgOVQbu5kIfRu/JpYk2WaRVMkT2MMMXsej9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CYYPR11MB8306.namprd11.prod.outlook.com (2603:10b6:930:c6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.24; Wed, 3 Apr
 2024 21:20:20 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 21:20:20 +0000
Date: Wed, 3 Apr 2024 14:20:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>, "=?iso-8859-1?Q?Jos=E9?=
 Roberto de Souza" <jose.souza@intel.com>
Subject: Re: [PATCH v2 19/25] drm/i915/xe2hpd: Do not program MBUS_DBOX BW
 credits
Message-ID: <20240403212013.GR6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-20-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240403112253.1432390-20-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BYAPR01CA0002.prod.exchangelabs.com (2603:10b6:a02:80::15)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CYYPR11MB8306:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G8FrzowyrPwWiRNvuCU3Gfx2PUIVzCfhJkFa8zn+O5mHbp2I5pIsAtzN1Ko5xU8Rz3gHV9bmVI7EXB8ZUDtdtvg6n2vlVn1FWTSYtUbpZT24q5f2e7UtsIGc0v5AjzIX5x6MFMEXI/AwaKod+tckZzXfTWpCtYGiLdV5Pfi+HQgmvm4lrVBPIyoODDPdIi1pieba000IWCdgC7A306A18XILKrHDehK0PpCj21Zz1XMlH4Z9U1g28wrtHSBzBk01w1WOHpomvy32hxbv8hbMaNh20RZvIKapeWbH1L2SbM7EXnk1MbRjW74xGyM5gz6zqmmy52478lGCHuVObdWevgogNSx6BsZGioczL55mB3VX77dnFg6cDNSm/RSD3mZ3eVdlP8xc60d8HT2j0OLG5y5pQihjbLQXfmxXHGCVgz2EeyQzraXcT/Ctx+OGIAdthaHeZk6AH4vJgwlMLogU88R0Y9uGE6pGtOIPDPVvTelu3O+3fBGXNKeJtxPio9eQnT2DCY4idYGGVpk8+i43uoA5SJUJOujyO63wX7/S2TseYm+10VzwzPDlpKbyXIxYTekHGXR5HQQ+d4yBJkndckYWF62Sghk0e3BhmD2O5l7NaezhUXWo1bCh5UVDuqdEgMrm2oxXcicnF05XObMEIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Mz/lAguEQO89LCVdhheMTu6gqbe1bwmGYROyEVrxHpO0BTVQpxQF45IVDc?=
 =?iso-8859-1?Q?5HJOxgG9vzT7MvSajK0Tg/I7Qu5h1GILzV0rIG3zpigJJI/pYwvTO1rk95?=
 =?iso-8859-1?Q?jbxgkqhBA4diSuQbEiyiEcNvVdYURm/34ETSc43oDeiSVtGtiUnKVN6TWm?=
 =?iso-8859-1?Q?ZalOho3E+1mRmb8+Mx6uvw+k3gZhx1vLJh1duJjwS2s6uVl1+3SFbw6lcw?=
 =?iso-8859-1?Q?skMyBwqwoyDomZZjhGaiP3PsL/HykZlC5ThOyWVAZj4Q5R4+3dmF6eZogu?=
 =?iso-8859-1?Q?W1UrRO9f3KHWBhp2ZFC0D5peCzlZthsS8HGQX9YROCCihwWGFpSPI8w7sk?=
 =?iso-8859-1?Q?pV1DpZF573Enx6gL4I4ODB+dx/X8Q+UIYaX+xBlJMVVJkkuvPuakRGBmu/?=
 =?iso-8859-1?Q?oUdsHSAp2f213InzYJ5Z5gdjOKrnZyw3bjCQIiiqwYYwcoZu5mTuRkZvml?=
 =?iso-8859-1?Q?8pFhXqi/xTHOxr6Ppepqrg0vGlW8HLAzmzq353QphcjBU+nS2BuPqwIJJv?=
 =?iso-8859-1?Q?TVQemn2ZsblPST2DiV79NNfQQHw6IXIoUb4wmihwCyHvvsSqVha228Jb39?=
 =?iso-8859-1?Q?fOX4rQ+E/iN7+dPsvvPaIdbdYagyNcdCB8us9HoRTAVkEphZ/+0ICUnAlU?=
 =?iso-8859-1?Q?nmN5QvG4DcX5lkQfPk5D2b+f3rWP1jwxY0wPzz3bYfwkTG/00nW0oXdR67?=
 =?iso-8859-1?Q?u/PUHDggnvugREZOrnPC1r5HTWJddax4ku+gCv0kUrN0d2TkqL26GOFjoD?=
 =?iso-8859-1?Q?GF0nnaFpvDtCxgpeDqCIx+QmqraAR70D6L3OPEC6OakclVqzaVoEoVL5nJ?=
 =?iso-8859-1?Q?QexOwXZsaPyspnCGTu9aAHAQEaOzg72KS4APoFdvb2h/1bGh3CjcZstTza?=
 =?iso-8859-1?Q?FMyHBh0Cs21RsR6EoCvvBCrjXveCHuXzy5R+PxBwCUYuhUr1AzF4TIUtED?=
 =?iso-8859-1?Q?inMMxxSIrExtpUFnPyuiMa/CZS0052EP9LIyuT4nGvE+yw/niLWCTeNDxD?=
 =?iso-8859-1?Q?L/VFnGdi3k8BCgo5rRdXjRZApkZwDsxEJQBgvJZHxqRGsoxPB/D0nzYLZ2?=
 =?iso-8859-1?Q?5ZOrZrPEEdb599dACpGJSGIA4LIV3MQdgoh0aAA+iPoHnW6CCE7UQESZxK?=
 =?iso-8859-1?Q?rgZ2ak9i611vAIkeKHO47jlpcKE6c/Cg87LtG54LDkZPtG976EQi9hm59A?=
 =?iso-8859-1?Q?CnADXTsZc09GaBEjtKkVhebTf1Xz5GTQTtutpQ2vMVzN1pPZ6g2oXY7WzM?=
 =?iso-8859-1?Q?S+vDqtec3HwlQTl2SFe05EO+g/q7Bki+S7xCPU4wePx+0vXRAXi7QnHPu0?=
 =?iso-8859-1?Q?WZFnLVT3A6IFywXRdaqPX9feQvNy99WEG6Hqwh5jAxl6qB1bl0N77Gv1ep?=
 =?iso-8859-1?Q?XNZfCEPOXrj8rgfs3lLe/jnkQMNhdIlyB77SWH9wn6wBVFeAYzSmflP/Q/?=
 =?iso-8859-1?Q?4pEASt/9PsXJQSykNL6QvwUBIMHIpykr0fkiinVTXLG9UGcWWMbi5ZY7HG?=
 =?iso-8859-1?Q?xNgPcD9f68pzdyv+0qMPyzq4q1nrBMWgT7IVWhv1ntB+of7I3pMxVrggrm?=
 =?iso-8859-1?Q?4LcHYeRNjvmbQhVg4eiAANhI5MG3e+ZkZYqFvu8Ux5W1Kukn9NhXgRDIgN?=
 =?iso-8859-1?Q?HOh8RRVzDSpFbfYK0pRjARWKy/wGd2txglIqhGpkIkdJmyXETptKFpBQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5266f88f-c9bd-4b21-ef32-08dc5423ddef
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 21:20:20.5254 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FilETcvvTDR7O2kf+w6uj2Dy3tNP3SUYKVJScOLHBjUPccKY/LuSMwYvvFZklMiIkqALmSsd4rbA132qq36s1WXN9Qc/zljF3l9doYwTJbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8306
X-OriginatorOrg: intel.com
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

On Wed, Apr 03, 2024 at 04:52:47PM +0530, Balasubramani Vivekanandan wrote:
> From: José Roberto de Souza <jose.souza@intel.com>
> 
> Xe2_HPD doesn't have DBOX BW credits, so here programing it with
> zero.
> 
> BSpec: 49213
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index bc341abcab2f..22ae782e89f4 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3733,7 +3733,7 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  		if (!new_crtc_state->hw.active)
>  			continue;
>  
> -		if (DISPLAY_VER(i915) >= 14) {
> +		if (DISPLAY_VER(i915) >= 14 && !IS_BATTLEMAGE(i915)) {

It looks like the "BW Credits" field from MBUS_DBOX_CTL doesn't exist on
any platform past Xe_LPD+.  I.e., it isn't there on Xe2_LPD (version 20)
either.  So we should probably make this block an exact match on version
14.0 only.

        if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0))

so that it doesn't execute on anything else.


Matt

>  			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
>  							      new_dbuf_state->active_pipes))
>  				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
