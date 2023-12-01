Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 386A480158A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 22:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8DF10E930;
	Fri,  1 Dec 2023 21:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D178610E930
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 21:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701466675; x=1733002675;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=aCgpXINFjqnE6hrhEctiT01EpLxCNvfttlJgHGj5PLU=;
 b=M7WTcQq4IQQjaQIbOO4P/5hgnJt7Yz3jB/lVHw+4794sIQTLmwDmMdrd
 5DxrosZ+BS0wRyIUJ4PAV13kYwLRJtmgOl8OPjAWo9vfGbL2HlWVBmHqV
 HGJMEn1RC+H9ajKp90gWpoEsj95mBljRY0E7U/oDttV7h9Eb8kTAyatFE
 edEhdJYI1A/uwIalq6PqtMVy1E4N9qG59CFQ73+aRXNbEEr8CLju0Knbt
 IWC4qWOfdirfBcTAkriNpdjPwgxVD4ny0LTOOWIh6YXD/HnJIpC7ttBij
 nL2NoUfcyVZ5bg+FTazE1NoS8sljq0QdlJRN2GIojkfUYzvcUvx9+Idmn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="378582655"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="378582655"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 13:37:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="1017156555"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="1017156555"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 13:37:54 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 13:37:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 13:37:54 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 13:37:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AOqe7q47tHT6f4JCdZivlq+x9I8RJvI3d5h25DBc66knpJ0F6TfuezX/+4D8kqFYWUZZRe6tE264WZMXTRp+yjBO6rJ2XOS+laGfreY67dIzI8L6KomZHs62OT4R+X/xrOynyXWK92gx8p8V2fmqhAaeojzSWOcdjtZ31Ohj6ZZL0TjvlkrAk8Dv5PslQyxtiI2rw2zsFntpFjDDhvwkzTCbVH4Ji43bo2oNCw4Ca4+xOZHOmj/rGIH6NhbuJZfSW9hbRU1Knmji6ye4iIV53QGNLYXcERhX/zTQ2RkW7bEWh3CGPCKEh7VEvhYUu7fmMaV7R6atNPU9mZ+BxD+prg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTNR81q3606463sJV0W4ZCyq4l9trvXdoyePLJsi9HY=;
 b=fBU9ovYCgHSK3BDZmuN67Rk6jZXx0NqLHy351JswumqihmIY1Suu/B3+wpkZyyuY3hY84WNcFxTov7aILEzLA6vizHlcrr7+CINlG4M4cplTup1BDNC3YIYvGN5SN1cyf2gnKcknqOjs+2XgSRR0AXM5Gp4z5ne/NxrznVdUsjWgpKgQzTGbVzLmBjknPYdrbtuDTfX0VduXhasuS7YwQAZTEHzUGhPV637e+qiMQuwz74q6QNBv7rt7+u627BUZmmBIQmMEDFS28M6wEz78igw6kKpSmFiv73yIwuwXIB0UA0SRp8vjz4VHL5ki1ToQd0YqNSGeK+IR1yup2EoOXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB6829.namprd11.prod.outlook.com (2603:10b6:510:22f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Fri, 1 Dec
 2023 21:37:52 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 21:37:52 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128115138.13238-7-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-7-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 1 Dec 2023 18:37:48 -0300
Message-ID: <170146666834.74196.11225976027611093257@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR03CA0023.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::28) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB6829:EE_
X-MS-Office365-Filtering-Correlation-Id: bf069e2e-3904-4b7c-c900-08dbf2b5c586
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9nrrBkefO4+rfEHT3vj3U+sgcdVGyn98IKfV7Mh3TIQV/rzuyNFPV3CzOKebp923oHSll+WATcN/17pRFjKhPR6+F63I4uAJg/G1pdmOTf03m1PTtWCpn7fUEaQNlmnJ7Wd5fkRRRpO3e96zNzEf9uaq/2DRy5VEwB/4CsrCfJr0M8A00eiKN6Vtm4MDLLXS0r1Upkoy5fZ4g69LBiTO1p/rtoImLnAJNnj7xTGSZy3U6s6eYgPJKEQ5atDVn9NdHyx51omB51BzQvYJtfX8spzZeHG5Z0FtCBXsxVsNGdDSexJ8v64/tM9zRw1rXwtzPQjJ+hhTdRiELGtCkAKKcXw7zW7G3W32ilXjLqOu4dtlIvYXKo6cQ3OGTIddJL0UhTg7tT2RIQ3874okW7z2LjWWpIwNTKBjDGnxkI17CCScAohL8D13esfrKzzPWXPPKy5FFowe35b3qzo8/xdF+4kfnyrein9u/k0KlimlCXRb44PZV3LWTyabhBnot38MyrTBHbmRH02urhBu2hhBsR9f4qb8NtMsGAJYTBIRXKcftPTsFXl3IL8cWSy5sV4K
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(396003)(376002)(366004)(39860400002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(82960400001)(38100700002)(66946007)(86362001)(66476007)(41300700001)(6506007)(9686003)(83380400001)(26005)(6666004)(8676002)(5660300002)(2906002)(6486002)(478600001)(4001150100001)(316002)(66556008)(8936002)(6512007)(44832011)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVpycWIwQjNmbFVLVVdMMUYxb3lqMHNXMWh3SmdoaFlLME9RQkNoSnJJMHFL?=
 =?utf-8?B?VFJRY3JzbXNsaUYrWWx3ZVhIdC9NOUhDVVk2Y3h4aXdTb3g4M1FIK1JndCs5?=
 =?utf-8?B?b1lCKzJ4WjlWYSt0VWlIRUtxK2pBWE50eTJoVUp0MU1zaXZUM1I5bkNpeFho?=
 =?utf-8?B?c3pYc1ZnaFh5RncvZTd1RlprRng0OUNZcy82WjZLWFlGNkZXUmFzSEZrRllB?=
 =?utf-8?B?b2FQYmxEaFExTmlDRmhPOGs2YUJraWpDd2JLN3JiWjRiTzJJYTBuenQwVEhr?=
 =?utf-8?B?ZlBJck4zQVAwL2Q0WlY1Yk5laWUwWEZ1RWRWcm9EcjlSenhCbDR3YXJYNi9I?=
 =?utf-8?B?YkkyZnRZalFCL2lPTEREbkJFVDhCS28xb2lTMllxUHhYNXdZcVlUUGRsdk92?=
 =?utf-8?B?VjhpWk5JWGROaFdwT1hXa2Y5OXNQVGY1b2VWWGJURmMyajRCMW1LQ3U2aHFh?=
 =?utf-8?B?NVV5SlZnOTVzWEVIT0tndW1nK2hmVGdIRFVOL3h5dk1aampRVXhIMCswakJQ?=
 =?utf-8?B?RWl2QzJ4MmlSdERENHcwV2ZUV1IvOVphWVVra1VJRUsrbHkzd2pmT2VHOE1R?=
 =?utf-8?B?Y3BrMGN4eVEyRlA3YkN0VkdLc0lob1V5MWJrblFUeEJWL3hZQUFjS3RwWXV0?=
 =?utf-8?B?R3UxVjNzV2ZXWDdSRHFtL2hBekpMTjNBL2E0Tzl5bERNU09vTFhYOWJiMkFy?=
 =?utf-8?B?cTFocklXWTJSSHpFUXBZZUpERXZyalRlSUNkQzBqRmo5VE53d3JrbnM3akxV?=
 =?utf-8?B?bTNEOVh0SUtzcGFubDg4enRzVmRVN0k4NVlZTEZzdmFPMVNxKzdFSFdrZlVB?=
 =?utf-8?B?THhYZ0c3Qit3OUpDSjNZNFQwdHVyQ2xrMkViQUVraUNyUk1GbFBaL05FNm1D?=
 =?utf-8?B?MHZ2b0NOUXE4Y2FuR1doWXk3WGI4MXRjeW5paS9wU3dZeW1xbGpEdmFuT1U4?=
 =?utf-8?B?OHA4WTdpN3VCNWhibGg1dEQzZ25uZFlKWXRhcjQrdjFyZlhzaXNtM3M1ZFZQ?=
 =?utf-8?B?M1YxRGxmNnE4MVU4eVJCOTQ1aWVVNEV6Z3BnbXg1TE5raGZ1VktMTVBZQnYy?=
 =?utf-8?B?cDRHR3FvY2I4anNTc0dVMFNSSklkSGpVWG1xYVRlVDRPcTF6SDFkUVZFdG50?=
 =?utf-8?B?OUZtWTN6WUJLOHk3Vk91YmxoQU42K3lWNjkzbTZNOFNPenJTLytNbmlHTjYx?=
 =?utf-8?B?bnZ3akJTNkpZL2RBVzZlMURvdXFUK09EbFlqZFBUN1FRN1l1RlNEVEI4TjdD?=
 =?utf-8?B?K0NxQmRKQ3NYRDJUY1p1c3BIekVmQUZSWmRId2paN3lTVWxWY3hraGtReHR3?=
 =?utf-8?B?c0R1YjcwTHRGZWEwSTRBNVlYTWFUYTRsbDhqdWxTVGV2ZEFGYjJkbHd5cjNw?=
 =?utf-8?B?WGFrRVcrYkFEU3A5TmNwZzRTeS90UXVRVUt4d1NIU01NNytSa2lGRnhuVmdP?=
 =?utf-8?B?dnU3N1FqbVFhN2o5N3h5a2tuSGtlVjh1STF1dFl5UzJObjBDQ1N3Slh4TG45?=
 =?utf-8?B?eDBxVHdpbEZFN1VpM2RYOTZuSnBEN0pyTGorOWQwUDVzRlc0TFMrQ3hYU3Jv?=
 =?utf-8?B?bmtrSGJ0ZWtGT0gwWEpuM2dyUkJFMHF6K0pZMFl3TUppeldxOXhHVDNpSWRs?=
 =?utf-8?B?R09rOW80T0NGTzAzaGtvcVdPNExFbGtpWGZYZHo0Skltcm15MDJYSENPTUlI?=
 =?utf-8?B?Uis3eDFBMGdjeEFiU1RIWEMrdnQ0bDJhRXpwOU9YTjM1TGRMWlFva3hoSENJ?=
 =?utf-8?B?R1NJRWR5a0htY21Na1orbUd6cTZsYzcxV2pPYlAxcmFqL2xiUjh5UlcxSDV3?=
 =?utf-8?B?NUo5bkFtUmhRZ3NtL0t0K1ZJTldkSjl2WU9UL0xFYjJlMzlOaG5mV1FnVmJs?=
 =?utf-8?B?eTltWFRUYk4wMk90bHo5a3Q0NlRwTElUdTlNc0FwaEE0N1hWVnJzY3BRdEkr?=
 =?utf-8?B?SUFNNUxNazlYaGdtcmVaNnpqTGtINzdFYVZmT3hVbWFWbmpkWExUcTdsaVUv?=
 =?utf-8?B?TmJsNjlyU1hVSHA5VEl2SnZ1OUcxTENsMTQ0aFBtZjNkTmFVUE5rQzFCWXFB?=
 =?utf-8?B?SWxra09pMGRNN0FYZ0VTVUVScVBqbWtaUHFtZW8ydXhseURPODd5UHpLU2xw?=
 =?utf-8?B?TmZMSnB3UlVHaVhUTmhjMHRtWW5RcDJPUE0vTjB6WXZ0UEJDL0ZOM2FIN3dz?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf069e2e-3904-4b7c-c900-08dbf2b5c586
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 21:37:52.1502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IbAz6YyIcGH/ZZHKFeUgdiI9S8Z54lLYxn/Ff5aGmtnguBdupPvsAM5jZ83oPH9XWa/3ztdrswhsmDZ4kZmR+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6829
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915: Split
 intel_ddi_compute_min_voltage_level() into platform variants
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

Quoting Ville Syrjala (2023-11-28 08:51:36-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>The mess inside intel_ddi_compute_min_voltage_level() is illegible.
>Clean it up a bit by splitting the internals into per-platform
>functions.
>
>TODO: make it a vfunc?
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 37 +++++++++++++++++++-----
> 1 file changed, 30 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 38f28c480b38..bcfcd7e789f0 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3672,16 +3672,39 @@ static bool intel_ddi_is_audio_enabled(struct drm_=
i915_private *dev_priv,
>                 AUDIO_OUTPUT_ENABLE(cpu_transcoder);
> }
>=20
>+static int tgl_ddi_min_voltage_level(const struct intel_crtc_state *crtc_=
state)
>+{
>+        if (crtc_state->port_clock > 594000)
>+                return 2;
>+        else
>+                return 0;
>+}
>+
>+static int jsl_ddi_min_voltage_level(const struct intel_crtc_state *crtc_=
state)
>+{
>+        if (crtc_state->port_clock > 594000)
>+                return 3;
>+        else
>+                return 0;
>+}
>+
>+static int icl_ddi_min_voltage_level(const struct intel_crtc_state *crtc_=
state)
>+{
>+        if (crtc_state->port_clock > 594000)
>+                return 1;
>+        else
>+                return 0;
>+}
>+
> void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_pri=
v,
>                                          struct intel_crtc_state *crtc_st=
ate)
> {
>-        if (DISPLAY_VER(dev_priv) >=3D 12 && crtc_state->port_clock > 594=
000)
>-                crtc_state->min_voltage_level =3D 2;
>-        else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
>-                 crtc_state->port_clock > 594000)
>-                crtc_state->min_voltage_level =3D 3;
>-        else if (DISPLAY_VER(dev_priv) >=3D 11 && crtc_state->port_clock =
> 594000)
>-                crtc_state->min_voltage_level =3D 1;
>+        if (DISPLAY_VER(dev_priv) >=3D 12)
>+                crtc_state->min_voltage_level =3D tgl_ddi_min_voltage_lev=
el(crtc_state);
>+        else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
>+                crtc_state->min_voltage_level =3D jsl_ddi_min_voltage_lev=
el(crtc_state);
>+        else if (DISPLAY_VER(dev_priv) >=3D 11)
>+                crtc_state->min_voltage_level =3D icl_ddi_min_voltage_lev=
el(crtc_state);
> }
>=20
> static enum transcoder bdw_transcoder_master_readout(struct drm_i915_priv=
ate *dev_priv,
>--=20
>2.41.0
>
