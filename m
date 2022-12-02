Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA4D63FD93
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 02:19:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2460510E69E;
	Fri,  2 Dec 2022 01:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 289E810E69E
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 01:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669943938; x=1701479938;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=tWBVuub/oxxWXH6rqehoRmP2pIgOq8zpoCgaPodPSvQ=;
 b=VMIQcPHR7s9RswiABI5WOfxbKVNJUgwdZ8PSItqL/C74pkMy8iQDhkD5
 tnsuRTMcGvxVHAcMoeAizdyMrucD7ZU1RdVTj41pKp8J3ytJydN2mUn54
 eKiCqMTSHkiNy+qZ2MJZKlqHliLqUSZ1UQBesH10av/zQYmRBXX5q01dd
 pQ3PPpZ9YVhF+TBsQSNsb2jBvjRWzkEtrZkt0VJ9Czg3p+NMMFbxmtfR/
 erbpawuLE5MMQ/QPQvEpeheJf4UpkweT937RsmfOdLmaq/NvcMw0qF0vW
 P4vUvg+K2fes0OhHxHAPr3/uLlRCwKWLg8b6UitW41lDGg7h0O8sRPrLD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="295538582"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="295538582"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 17:18:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="595278403"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="595278403"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 01 Dec 2022 17:18:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 17:18:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 17:18:48 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 17:18:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mo6jIaZSEiKe8fHZ1Zjqw6mLL0XA7bv0uZot3UOtXGfgZlcKgmYBTB1WtsIJQ5a77b9ryJO/cgy9/VGw/rrALxGiiZW4tIjLizYpl6LT/i6tRWIyddXUOOeBENklR3DsNaKuH6E3JABHD5dxkMmbSqczNZlhnwpg71pjwAdsJsdDTlTbxJrX9KctXJXDjIC8tFNhAG6FpIbzFPktXnDIv3d0IGt/ayf8j3g6W4q/5a/DSubEUOB3CCMzQ1Az3nviFWz1mm7ji+PLjRHFotQ9NwOCPwphNPNwdFiC3kPYpNW1zik6S5sT4xaEWLryoVEo16wWf/AYSm7c64E3ixj5sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/4Y3sd9boum+4eOOhRYhMfn+TfrADT76w36j/DP3UA=;
 b=DGJDYP1Gkbj/S11MSW99DaOtZZiDG2C/pmTjpxmptL7L5K/NpZ9Vr57ykFFxrSyQTdFcvGkntVjnqKuXORbYfouQKuitBmIro4pcYvGfmUdEUOp11iGh2HPdpP1/F6LSVC17H+oAi81GgKjjyIGmhTNeKkZ9UXHQMndTloqrESZxktstlKwir3xgMqr6OyR5X5E10xMZlZJLWDqphGiDO9rRz1N3tFhHJwbI9T50gfkQyYpXz5v78ScXvSdJrOX0+L5g5XNfoaUMjDFtAEaZ6TiYZz1bPZ+waFJqQ/OJKeVq0HGxTk6gOiFL+03rTUekEb7BoX5It/2y04qAD8HoDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB6790.namprd11.prod.outlook.com (2603:10b6:a03:483::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Fri, 2 Dec
 2022 01:18:41 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5857.023; Fri, 2 Dec 2022
 01:18:41 +0000
Date: Thu, 1 Dec 2022 17:18:38 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20221202011838.v6x44i7jxv6heu4j@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
 <Y4kyMSEltDvdD7uV@mdroper-desk1.amr.corp.intel.com>
 <20221201232725.rnn6ct2fae2rwcqe@ldmartin-desk2.lan>
 <Y4k8R4wNXPF7Pwcq@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y4k8R4wNXPF7Pwcq@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR07CA0066.namprd07.prod.outlook.com
 (2603:10b6:a03:60::43) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB6790:EE_
X-MS-Office365-Filtering-Correlation-Id: 214367e1-fb1e-489b-493d-08dad40325d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i+9hW55cgPhn7fAuLQB9znTYUkUp9uKoYNIo6DsxvNE0/N1OVQIxQDh1VkPetWQzEjAo8bqAHCFMvyXQ2WVqjN/Y92DW4F1SpgdkeJx3GI6Rhp5LD3khOcJlxp7hc31hY2ZKMrguoa7xKnEKLRfo6YkuMp0hOefOyB84Qx5yc1vFJArkYvKVG4QiHo3j770U+AVVsJ9rEhy6OBgT0sDNyWoA3uethjFjuCoyVp7WDeq6wR5b4cEv8pK6WrlEvdnI7AricytgYkjYmXVURPrko8R/fDKSdi6ud8tqjjYv0SgUIVBmk/aenCuxlclMiCCM+gLq5m3CI5CKJ91jMRPvO0C4o18llUZr7oD1cKsdaXzkkngOhLV0Dnn0tZsJmTABpEkChSxCL0munurRiyGjpHL7QPOPT1A/ffNW9FjKwrC4bvVB3UbzNutJnIQlUqnz6xhW8ZmC2gMkxp5arWJ2LzmjC63QKkkqulxAhouPfziMy8/AQ9N89gTYmKmjE+KC0SRqaAKhDwpl1mpi53NJ0BBE3kT1eRaJfsVWk8SHWvRkszqXnPnzssWN6LRmun6dKygISWqnGpFFxcFSeMuCZdogOz1DQMu5nxDxztV9+3GrrwsUCCSt3kVLJSEWFn5xRA/vYUrcEB8uQdAuIhB8IA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(346002)(396003)(366004)(376002)(451199015)(66556008)(478600001)(36756003)(26005)(6486002)(82960400001)(6666004)(38100700002)(6506007)(41300700001)(9686003)(66946007)(66476007)(8676002)(6636002)(8936002)(316002)(86362001)(4326008)(5660300002)(66574015)(6862004)(6512007)(186003)(1076003)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Mp8cuw3bbCil4gkhUFyDE5uUuGcvsaB5vamZZqpdbsgZpgudpsZU0DY9Tj?=
 =?iso-8859-1?Q?A/U6wbc+Nf9Wn3Qn62aMhSQzea7Ahc9gwqj+aZKITk08urFBBegjgys4Lx?=
 =?iso-8859-1?Q?mf5x8oI4WGP7kEgYnbaiaZGpsxuqJjLkWEPYwe7ucRaFOmBfw4+3ShltkO?=
 =?iso-8859-1?Q?Rdpq7kbCmz8RVr2Cp3kQP5jYGqZoRFY7i/+Mmlq5EFE1Wpqf5XZNGxawtT?=
 =?iso-8859-1?Q?z/x0LUI+jSsjRM3zLr+7DcPgFiCiDlZs0aluKL3BrFNCyODNAkZo2nwM7/?=
 =?iso-8859-1?Q?x19rp7dxnSNlbx39lBYp5ve46gm2iW12GfyUkk52Za8ffCv4K92ZgeePKb?=
 =?iso-8859-1?Q?qJZ6FB6SoAnghFop3ZuHk4CK+E5KOVP97GPOW2aMsxQXcH3V1UZoHM/6y1?=
 =?iso-8859-1?Q?XiR+nWKPiN8cnryTOBMMTVrD396j6+FJ+vEUSYspLy7OHFYfzA9GxyO6/2?=
 =?iso-8859-1?Q?8yDpFcsg+DblcSSAK/p40nI2qV4mkhkU/UCYJunQbQ8fanwI0MlbW8dUmh?=
 =?iso-8859-1?Q?Fy3H/yI7FnaiqMFbGQo8TubYdo/BRFmSBvsbZt9Ggvmi7r2TvD51GJLsE6?=
 =?iso-8859-1?Q?z+NbnuBjnh5jQpZFrbqYd8u63WH0E0kHGWIysKK2fj0X2IeY6Dc36BsnpP?=
 =?iso-8859-1?Q?DopQUf1E4Xj41cSCRWwz7F+poLdv3obqdHQBgvGtDb0ns+dvBxGg0lEktS?=
 =?iso-8859-1?Q?IyV9kXK149BiedD6JmLnythmaaWhMNK6HoM5C9h9P6AIW462d76Q+WcOEC?=
 =?iso-8859-1?Q?5yCX0ay1J+Ke5sNSwO9pgWNdZSGjyZqF1kPiXIqGVaqQVTMYP7Hewp4K0a?=
 =?iso-8859-1?Q?PPIcQRyyvB1Sgi++ebeh2iSzo2cLBdiJUOU1CeU96G2hdUxczbc/6M0TYd?=
 =?iso-8859-1?Q?982jI3F5bIjwTFSDnJu2LLpfTuHwna+OFkkBH+JYXaPQJIaOSw1QPQbXGE?=
 =?iso-8859-1?Q?laKBi00LeKaLDYBE0yEQ1u/xOiHE8vqDWJZzfGnizK+en3am/rWievs7SP?=
 =?iso-8859-1?Q?b2aZo7/NbnO5uFcxRd27IvWzm00S+DevDjl2R0V1xYEulh4kzKXvhNKWfh?=
 =?iso-8859-1?Q?501xo0Ppcb98mYjsakgoG9vw0xpAORrnzQ6FuvOJjb9BY7aBGPARotFQAn?=
 =?iso-8859-1?Q?o1fs+QLJm86ttv4n7ciOHU+A/Q1i18TWTiorrcNjR0MBM5a2fEzwFEnZZU?=
 =?iso-8859-1?Q?b0og9SOrKGzpKhqlKh5X07XCiGfFHSqNmS3XZRV5YSZy85ixhrtn8TERK1?=
 =?iso-8859-1?Q?XehwceMIcKD+6GG+sW2NoDTOCs+OBgvWfjxLuoEtIfaENg0lX2jzuc/qRS?=
 =?iso-8859-1?Q?OPQIbSo8U1cKmWt3a5Zk39OIHdRoUSSq88aXy++ZjLqMtSvE0lnLARlp8G?=
 =?iso-8859-1?Q?+5gzDOVtu9zOOt/wG9XvXaa7iTo+OLbfwBh/rIM1bZZSHax2uC+Ng9YYTa?=
 =?iso-8859-1?Q?vLc+72AgFljGS8s3Ek4R1WtufE7pQygazw6gR8grrlsEuyulR6cplMPCZe?=
 =?iso-8859-1?Q?JYhoSW1AfTc6ofsDnlP0xswiXRL7LlM4hPMECkE2yCfudc0yn1WUJ7Ir0a?=
 =?iso-8859-1?Q?tukwdI5xoG6M0fQqIU16ncJqBrEINTevw9IF2sv0SQpKReYP3yJ2eWhBw3?=
 =?iso-8859-1?Q?bED+aZy2hVg8+1xpx3uAUGorbZD7rd5NJkcyk7fCCQW0XG9NrLMnohBA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 214367e1-fb1e-489b-493d-08dad40325d7
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2022 01:18:41.2766 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KCu4I1Bp7DrQ146STw40ribo+d+s+rW1MMO3JeLZA29KMwCZe4G3CTKG73mNKjCIIgKq2JWZMwdQFOWUvIjPv4x0nA4P9iBilxRLhrk2SgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6790
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Initial display
 workarounds
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

On Thu, Dec 01, 2022 at 03:44:07PM -0800, Matt Roper wrote:
>On Thu, Dec 01, 2022 at 03:27:25PM -0800, Lucas De Marchi wrote:
>> On Thu, Dec 01, 2022 at 03:01:05PM -0800, Matt Roper wrote:
>> > On Wed, Nov 30, 2022 at 03:17:08PM -0800, Matt Atwood wrote:
>> > > From: Jouni Högander <jouni.hogander@intel.com>
>> > >
>> > > This patch introduces initial workarounds for mtl platform
>> > >
>> > > Bspec: 66624
>> > >
>> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_fbc.c  |  4 +++-
>> > >  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
>> > >  drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
>> > >  drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
>> > >  4 files changed, 28 insertions(+), 10 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > > index b5ee5ea0d010..8f269553d826 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > > @@ -1095,7 +1095,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>> > >  	}
>> > >
>> > >  	/* Wa_14016291713 */
>> > > -	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
>> > > +	if ((IS_DISPLAY_VER(i915, 12, 13) ||
>> > > +	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
>> > > +	    crtc_state->has_psr) {
>> > >  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
>> > >  		return 0;
>> > >  	}
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > > index e82f8a07e2b0..efa2da080f62 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > > @@ -537,7 +537,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
>> > >  			       0);
>> > >
>> > >  	/* Wa_14013475917 */
>> > > -	if (DISPLAY_VER(dev_priv) == 13 && crtc_state->has_psr &&
>> > > +	if ((DISPLAY_VER(dev_priv) == 13 ||
>> > > +	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
>> > >  	    type == DP_SDP_VSC)
>> > >  		return;
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> > > index 5b678916e6db..7982157fb1ff 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > > @@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>> > >  		return intel_dp->psr.su_y_granularity == 4;
>> > >
>> > >  	/*
>> > > -	 * adl_p and display 14+ platforms has 1 line granularity.
>> > > +	 * adl_p and mtl platforms has 1 line granularity.
>> > >  	 * For other platforms with SW tracking we can adjust the y coordinates
>> > >  	 * to match sink requirement if multiple of 4.
>> > >  	 */
>> > > @@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>> > >  				     PSR2_ADD_VERTICAL_LINE_COUNT);
>> > >
>> > >  		/*
>> > > -		 * Wa_16014451276:adlp
>> > > +		 * Wa_16014451276:adlp,mtl[a0,b0]
>> >
>> > These days we don't really add steppings in these comments; at best
>> > they're just reiterating information that can be easily seen from the
>> > code below, at worst they get out of sync and cause confusion.  I'd drop
>> > the "[a0,b0]" part (which also isn't accurate anyway if you're using
>> > range notation...it would be "[a0..b0)" in that case).
>> >
>> > Honestly even the list of platform names on workarounds is of
>> > questionable value and I'm thinking about writing a patch that just
>> > drops all of them throughout i915, leaving just the workaround lineage
>> > number.  Maybe I'd keep the platform names in the few cases where we
>> > have multiple workaround numbers (with different sets of platforms) all
>> > requesting the same programming of a register...
>>
>> I'd be happy to ack such patch :)
>>
>> >
>> > >  		 * All supported adlp panels have 1-based X granularity, this may
>> > >  		 * cause issues if non-supported panels are used.
>> > >  		 */
>> > > -		if (IS_ALDERLAKE_P(dev_priv))
>> > > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> > > +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
>> > > +				     ADLP_1_BASED_X_GRANULARITY);
>> > > +		else if (IS_ALDERLAKE_P(dev_priv))
>> > >  			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
>> > >  				     ADLP_1_BASED_X_GRANULARITY);
>> > >
>> > > @@ -1185,8 +1188,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>> > >  				     TRANS_SET_CONTEXT_LATENCY_MASK,
>> > >  				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
>> > >
>> > > -		/* Wa_16012604467:adlp */
>> > > -		if (IS_ALDERLAKE_P(dev_priv))
>> > > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
>> > > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> > > +			intel_de_rmw(dev_priv,
>> > > +				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
>> > > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
>> > > +		else if (IS_ALDERLAKE_P(dev_priv))
>> > >  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
>> > >  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>> > >
>> > > @@ -1362,8 +1369,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>> > >  				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>> > >  				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
>> > >
>> > > -		/* Wa_16012604467:adlp */
>> > > -		if (IS_ALDERLAKE_P(dev_priv))
>> > > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
>> > > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>> > > +			intel_de_rmw(dev_priv,
>> > > +				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
>> > > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
>> > > +		else if (IS_ALDERLAKE_P(dev_priv))
>> > >  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
>> > >  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
>> > >
>> > > @@ -1625,7 +1636,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>> > >
>> > >  	if (full_update) {
>> > >  		/*
>> > > -		 * Not applying Wa_14014971508:adlp as we do not support the
>> > > +		 * Not applying Wa_14014971508:adlp,mtl as we do not support the
>> > >  		 * feature that requires this workaround.
>> > >  		 */
>> > >  		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
>> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> > > index a8a5bd426e78..ecb027626a21 100644
>> > > --- a/drivers/gpu/drm/i915/i915_drv.h
>> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
>> > > @@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>> > >  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
>> > >  	 IS_GRAPHICS_STEP(__i915, since, until))
>> > >
>> > > +#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>> > > +	(DISPLAY_VER(__i915) == 14 && \
>> >
>> > As Tvrtko noted, this could come back to bite us in the future if
>> > another platform shows up with 14.10, 14.50, etc.  MTL has exactly
>> > version 14.0, so best to make this
>> >
>> >        DISPLAY_VER_FULL(__i915) == IP_VER(14, 0)
>> >
>> > so that it won't automatically capture future platforms by accident.
>>
>> I think it's better to do a platform check as the other platforms are
>> doing. See DG2 for example:
>>
>> #define IS_DG2_DISPLAY_STEP(__i915, since, until) \
>>         (IS_DG2(__i915) && \
>>          IS_DISPLAY_STEP(__i915, since, until))
>
>I guess that's fine in the short term, but in the long term that's the
>kind of thing we need to move away from.  We're really not supposed to
>be using platform checks (which are derived from PCI ID) anymore going
>forward.  At some point, even things like IS_MTL_DISPLAY_STEP() will get
>replaced with something more along the lines of
>
>   IS_GMDID_DISPLAY_STEP(12, 70, STEP_A0, STEP_C0)

I think we should only check for the IP version if we eliminate IS_MTL_
from the name. Or... when the macro is renamed/reimplemented, it may be a good time to
change.


Lucas De Marchi

>because the expectation is that none of this is actually tied to the
>platform anymore, just to the IP versions of the various chiplets (which
>can be mixed-and-matched and in theory could be re-used on other
>platforms).  But today MTL is the first/only hardware we have using this
>design, so it doesn't matter too much; we don't have to clean this all
>up immediately.
>
>
>Matt
>
>>
>> Lucas De Marchi
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
