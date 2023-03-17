Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A538E6BF6B8
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 00:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C761810E29E;
	Fri, 17 Mar 2023 23:59:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD14510E29E
 for <Intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 23:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679097570; x=1710633570;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=0K1EKFpbwD8tDTscjneqyhaSYlytoWgG4iemWp0r2JI=;
 b=CC4H2M5uRzX7V42jmPrwVAaHN9cCmLm+jZeeqN+lAJ/0kcZYf4qLbdf/
 mcTiOz8cUuBaBPuFRBwqBtCMqubj2tNomHRyMa+ZGIwafpXyRQMaYqVxc
 7YjV6E3rFfrnxV9+YywYfL+zJem8YshplL4PO89Lws5GOg1pK4Hvq09cD
 qmh+TJe/NCSJWGf6w1C5NSPxNaQG0j00HHRahnBvaOeX7NQNVvGDxiRK6
 RqARanSPGvH9Z1SLx4cIjGOwoITEMaVnwRMHSn/c2EjagNSyuwguEW4rk
 0IIj4SB55vKklMzEOf4+d3DI0NYyN8PSwygPHfj4QhP+jBhZ/sK/ZwcC2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="322235671"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="322235671"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 16:59:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="1009842462"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="1009842462"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 17 Mar 2023 16:59:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 16:59:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 16:59:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 16:59:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WVT8l5YLhs43p1KLNj7SCbYatG1Z1ZYjJXPgq1+MarDrLaj0h7Krp+RExNnKqyWCL8Dj2bSp1UdumYrWpbNQx2jtAbzsY1bwGKmtsauvfEt5SVQeH9lVz2Ka36tAQQH9yAVmjdC665lcbqGINqFV8gM+D3FJbajQUkSy+gp/S1SK0heAhQUhA0OclVqYwlOKhmte4I31zjChYKry192BsyTDzesqQ3sgaXe6YTPjTO51eMfqrJdZjeMKoHG2NW+e5p/edIsAsk94vxDdPl2ewVR9vIHMP6doTmot33WM9b5arRHV8xsh+F8fKanOofZDKV+XR9A+Kj02jrZeagnn7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wVAIz3QmW5lFOSQhHw9PStMAKzieRFuOTbcuL41Qw2Q=;
 b=dNoWOIKnVk6Y3Hr9iSpRVA06p5EbA9j45aUHdevT3lg2DV+rhPBrwaTEOqPraYOlKUILBOFICenSjNOi5hh3X4Zt2dwUwuV2kiSbDbj4adspk6BsANm4Fo2BXBZFZ418gx06Vixb9A059ComwrFZe8dU1F01wuyOYiuAW2Rgzqq1IAFAVtzNSR5i0qe5mqeVUIkRZ6ZDw9dYQ23QOKFZYyP93PHPYEo1T8UWq8agOPbneBLU/q/swH7VSRELDGk8C7OS0boM2SncfcnP6c13xBAGvRp50uTbCEghY3aT2sMwDtOaDpm9xVK2FkxZGnNEYEu3x5Qc2bLrMVCy+beE6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB6670.namprd11.prod.outlook.com (2603:10b6:a03:44a::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.35; Fri, 17 Mar 2023 23:59:22 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%7]) with mapi id 15.20.6178.024; Fri, 17 Mar 2023
 23:59:21 +0000
Date: Fri, 17 Mar 2023 16:59:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>
Message-ID: <20230317235918.GD1175070@mdroper-desk1.amr.corp.intel.com>
References: <20230316234654.3797572-1-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230316234654.3797572-1-clinton.a.taylor@intel.com>
X-ClientProxiedBy: SJ0PR13CA0074.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::19) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB6670:EE_
X-MS-Office365-Filtering-Correlation-Id: 5721c3b6-7adf-4ad8-662a-08db2743a080
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tnr8rbT0H5gTDChFqW25EnF6yYyL9aLjfn5ZHOqX7vcKERQvEn1ubVklnjbjGmNFjzVYkuIKrREW1WFwC/gKJaPnFooo6R4Ua5wZjrpK4s63nwvMalpQELa6ATZ9KOKnvlXc89O7vXCHFG2kgiNiuf4eWBaAGdAgY6USsLpeJSyNyvvKbcnNsqC6bPFcxemjShuHE1rFI3DNzu2wp2R6sgFnFyEhhJnSa5MP49kyYmY24UvG9d2qk0EOQFTl71xlfPdUaITzK/GkPOZ6AwhDR5Yv+3R0GnH0N0sCA3Qre5p4Zo7qBKIsA97iGCabazJr6PlDT1BLJfuy3M8IawNZx76kxLwaIPdsVY5au6aaFjR8R2IEZI1UCBx8gZoR/iPcFYWZXvyd03sGeuC4qxM0cSBi6zyXaMit2vNKCqyExtvrJXASLj7G1YsJkY8BKKL7kYbkULefgMsxFuR+qk2w62RIya/V2nkXuuxNrxKnjhdreV5g3olB/hNP25uDGJgCwAbOvseE7Oafp9bQD1xc1cXqYdl6dm/fbwk++wCfFsE1BRQWQD/kEy/T/Ow4iVaKDnUslb2s4zat0rWEfak+qDLUVQ6JNhMl8jsUHRQImr/k2Gd6uKS3DHzzkfOxYCnITnXtYImKGnEvAIL2HsMECQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(366004)(396003)(376002)(39860400002)(346002)(451199018)(186003)(6486002)(83380400001)(478600001)(6666004)(6636002)(316002)(66476007)(66946007)(66556008)(1076003)(26005)(6512007)(6506007)(8676002)(4326008)(41300700001)(6862004)(8936002)(5660300002)(15650500001)(38100700002)(2906002)(82960400001)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ycddCRfayfCWKpQ3Ce26UYnoPFXEsD4BIgxTtvudLjZMgV465Z2bcLIgod?=
 =?iso-8859-1?Q?Cim+8XVb20gyLkB4tTTP8LsvsFIC57dvrHwHIlqdhz2jvgISbCtRYf5J4E?=
 =?iso-8859-1?Q?CPgYtz1EFKczMGK9oPOpFCOkZcQRKHyLlZ6bJcNj+RV56e/WBH4hTYLxKS?=
 =?iso-8859-1?Q?HkLKso6joaNmf9VhIlE7evO7unPNszaD/uYIYcjGhREIh56DG7V/rv4rMq?=
 =?iso-8859-1?Q?tj6awDrVvLjyI8IYV7eMTMF76+GfYmn0qeaezwnY1bgeVzIPA+m5vK6jgm?=
 =?iso-8859-1?Q?Q/cPpVPCoyz6E2rRjTWme64d/BYDumsPymBNKfqb4Y39InNNl3mAjqjsMZ?=
 =?iso-8859-1?Q?Cu7Qm/hgces1/W/JG8OF8rp9xapD86jof1zEcPXpQEEOmCCxk/a9nA0Iiu?=
 =?iso-8859-1?Q?3i4vg7BSbpOtKQGsxLdzPbKeFM6N/mvjeEfxcQs3mD2wr2/cx6A3lIZ180?=
 =?iso-8859-1?Q?OMpHHZZWueOPITbshbYLrzF7lQuvpu0QWGo8hi0C2a89Xw8fN8ebmVVOCy?=
 =?iso-8859-1?Q?sgPI2ZKQDtinv9ntElXbVjvrT0hlEEpx395VujltDicVWx5zIyBOEgH9ZP?=
 =?iso-8859-1?Q?IcxD5wnG1mlJr34TLb4louGFXkVw6s7Zt50CYEyKLi/sOdbYlXcf+jlB0k?=
 =?iso-8859-1?Q?v6/dWhGFq9AXOS9ydTprfqJ3JQx9vC4pdCoZ0KKWvoAjd1EC8rEiAfD0Pq?=
 =?iso-8859-1?Q?OfevN8DrJnEonX2yKn8ASa3jeZ/WppZIl4W04mdUPhnGm2v17q1JeA+4Sk?=
 =?iso-8859-1?Q?PwBBrmof08BkcKNBktqQ+BpUFrAoZwd8mFHofZCSLWNF6+msce32dlb+rw?=
 =?iso-8859-1?Q?GQdwfwkmnWv70HqS51Los8df4HtiSf/lpro/1gccw+9AvCmoKUwhDVvzkj?=
 =?iso-8859-1?Q?AJZ5211aDFiFgYDuwCT0LN8IV/UqrPiYGIIaXXJPe/b1onJDXJZaCSF1sN?=
 =?iso-8859-1?Q?uLia/ohzFxsC9chCF8K/+8AXOna22BJHvwoP3JWgQHhTWdz/VVlWpGYxTK?=
 =?iso-8859-1?Q?m2K5ECWCZrI76Vs8cOocDPB4K4nWjLjyMWnqBr2gGPrSSHhuO3tInVFZpJ?=
 =?iso-8859-1?Q?qTyfXEcz4bcoS/qj4w0LAaybKU7DqUb3Br5WJMQI7aYGjeM53DmnbKoDjm?=
 =?iso-8859-1?Q?KSTpdPf04ZtW+AUdkM1ADuknSvQEl9g2erqMdm91mxpM3fHhYFm6Lne/RV?=
 =?iso-8859-1?Q?3DqTINVtoUqLA4nyeUsGWhi6f6GldxqXrmGSsXcil0HTHux3McyOeH3sVh?=
 =?iso-8859-1?Q?+FjFVzb84Jwhpy6FrMghdhcG/TwgtyF7oeKySQ8cOZ5nivrIKSI1/94EEO?=
 =?iso-8859-1?Q?J0mcScGrME3RUs02nKI4GkEe+bkBAquHoZOJAaplfbxMq/R0a1teR6wfXW?=
 =?iso-8859-1?Q?6hDLqVW8TTtaDuyUoDveulSVU45oDxJzhGRApFMBxZMsWnEPJIyBw6qriW?=
 =?iso-8859-1?Q?QrCA8yFFToclc+yCvbdy1Oh6MnKO6Ri1QJNYaTJwxv+2EEbfthF9FidovK?=
 =?iso-8859-1?Q?BAUL6bHfyq13otY9oma+1dz4VHcrzeJ0j4z4Uz+1GD6RFTUulsknuGK129?=
 =?iso-8859-1?Q?gPt6eH1QtHnLc1d7AJ5+wDg4UkNZFLW8ehOWhHm7dsG4+hLZLSndIrsXOk?=
 =?iso-8859-1?Q?TZukcD7QlHOk91hO6xogfJ8g0ni1+g/nOElzLiyBCIYvOTcE766lsDcw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5721c3b6-7adf-4ad8-662a-08db2743a080
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 23:59:21.4931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jeNvGz845Xe8Efl3vjfDhJOea5ZGXRIinsdRt4Jc7mMuRmkVwmR3B+5dUF5McUvgAxrOgqn4WEQaaylETuphPUw+HjonRVuyEaEFK3Xgj0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6670
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: update audio keepalive
 clock values
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 16, 2023 at 04:46:54PM -0700, Clint Taylor wrote:
> BSPEC has updated the cdclk audio keepalives AUD_TS_CDCLK_M value to 60
> for all supported platforms and refclks.
> 
> BSPEC: 54034
> BSPEC: 55409
> BSPEC: 65243
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 65151f5dcb15..3d5a9bbc6fde 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -983,11 +983,7 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *i915)
>  
>  static void get_aud_ts_cdclk_m_n(int refclk, int cdclk, struct aud_ts_cdclk_m_n *aud_ts)
>  {
> -	if (refclk == 24000)
> -		aud_ts->m = 12;
> -	else
> -		aud_ts->m = 15;
> -
> +	aud_ts->m = 60;
>  	aud_ts->n = cdclk * aud_ts->m / 24000;
>  }
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
