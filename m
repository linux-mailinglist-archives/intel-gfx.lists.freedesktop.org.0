Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DE462206B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 00:42:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C79A310E53E;
	Tue,  8 Nov 2022 23:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F08B10E538
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 23:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667950964; x=1699486964;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ORfXQkTStOjaw//s4AdshnwFJFriE03ZN574P+31dxQ=;
 b=Gp0niFxYez6rT4XrdvRzw4m/E+iCdVkh/9qTb32UEilxl/b2suBIgC04
 6Z2YfSnSiHbv9PwYeBcx/RN5xQrLhwUEMDj7rDlB0LBMuMLgCp0yvg6Ol
 3j6XlGoj4Y7zfz73oE8hBvtvgUFp7n+hJhvt7aG+EwWX+plsoK53b0WY9
 sa0mcRQ9nW0p2G32TLvsSVoZuY73zDvK5N4WljZb6z520JHU130rOOM7m
 L+CWtSb4hSyfp0HxlJP422Im6QK87cWoh9OFAebD7Jc8G6blmEQQPaLQP
 Tux1icmsG9s0WzY4Bjzz5b8KKQoiiTKLgGG8zDUcBNKW2V3UvLaEDP0B1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="290555690"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="290555690"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 15:42:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="881702081"
X-IronPort-AV: E=Sophos;i="5.96,149,1665471600"; d="scan'208";a="881702081"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 08 Nov 2022 15:42:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 8 Nov 2022 15:42:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 8 Nov 2022 15:42:36 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 8 Nov 2022 15:42:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TSX/cNv00AECENhrXvUL25vQalepgdErGq6CBXxCeKXY8aKLZm4gtYFWyiB2Dw06U8CMp1M1NyfLoIkOohIJ2G2Xsx3vTBmYXfLRCDH95K+wtp4o592lTti9qfJR/PGGc31zpBKYWnfk1MR1AyqCryCxN9glMj4q5Dk9uAgrn/g2d+cWO2caifIatWMuRVhVq0wIhAFqd+ovKksRlPbiHcL43GdH1vvzfJcYHprLDw1uowQJZD9Z+prz4POfWuVvqsh3kIC87CdRYYR4zxXxR7RXUdZZGX7fVZgxDgZWuEjfcAizxPeyINInIIztSSmDgkyvkY2Dds1MBix2X93gWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2RmXJT6yefxfWorFfmhPL16CZ2yXU5E67KQkACYWzOs=;
 b=g+dfn88D/2s3X5Qy+NtVddaEmlr0aVRHM1UjDObODK+pY9JBZ2Mob+1eA89N1BDWlNGHZfEuH/6HkLix73Up4VC1JLDX1wXUNoJVRBQzCvLjCvFuGhSbjumnvGsxmLX1nuwvAaR5peOgxJRsEwYAC+EB/AuhUvLJcSTlejiLBpus4qoQCtmUfWDBMKxH9Mwo7FRvrxwb4blO3PoJXy8toKUHF9xvyq0LIIJFU2Xv3vnGKUBPAlcCvYhGi5DCDNSbcHk50fOLWl5peDTMTeKJKaaa9cpuI3uzPnpm4oTWPASX89s7GW4dJ5Qb4P1kG2L65oskouhzvcDMtRzVqLP6rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SA1PR11MB7063.namprd11.prod.outlook.com (2603:10b6:806:2b5::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.26; Tue, 8 Nov
 2022 23:42:34 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5791.027; Tue, 8 Nov 2022
 23:42:34 +0000
Date: Tue, 8 Nov 2022 15:42:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Y2rpZ/8Li/186jR1@mdroper-desk1.amr.corp.intel.com>
References: <20221104222642.815560-1-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221104222642.815560-1-anusha.srivatsa@intel.com>
X-ClientProxiedBy: BYAPR05CA0102.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::43) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SA1PR11MB7063:EE_
X-MS-Office365-Filtering-Correlation-Id: e525f2f5-7437-4318-8e23-08dac1e2e8cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z1v0IEDYsvGRkE9Ju0eLjvDavHdFAa1Zcn1Y3mIFQjfXj4os09kjUJ0H0XG7d5FZIRqCHikvwR1+g6qbO/tObNJd2PjfD1FXptD6AVVyp1U9GGgczs1aqMxvWZaJVj62btAeICJeNlN98M3mnypik5KzVXTyTghjkd37MQXG+1zR5DlaoMn15gyDD41oCCmcxdy5ufdf4hYT1P8g/77aUq4fji0Ixk4KKaKwFQ4AljS0fmpGI7XFcRXSCc3ajUCLjbaAqKS80zoRev52LW+5+8LGR1h8vmJU+9lXSYaZGoZSFEWJKAPkADwlP7mEpEgH2h1xYX08zvbnmZe91tgXLOrdu4KHWxJW5YlUjp78X1/8Ro1nVdKu62ZBkd4K1DmBoyQqFrPHIlX7QCOyutqqJym1T7qxKKO4u8Kh3j2D6MhAQ1gJR4RlrRTyAjD2mbWY8jn3QlNBjLQGnv0nkfhWVpwg6BgCuzGgdXTUMWa0C0IZh7wAuOtE07gs0ms+CzKPXWWxAVVijASaiq1wjI7Uim3lto4J8DNKUZKo3hfGuuk7jav8CBijqqhphi32mwSnrxD3+yg6j6NDrgN+w7KbkwBA+VWOAL08aQXVyN2J7NK2K57GNHB4asQWnUabIbIsrCtLsqrewBgJz2xo2ENBc5l1M09gT9I5ESUwRIQh6+dsK9YGQeLICOp/P5dpP+wXhIuJLDl/zP1GX7SJqZ7qt8wHktb1Iiw7VIao6W+1qpVBEozSrRUBLts7xEieaqYO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(346002)(376002)(366004)(396003)(451199015)(6666004)(186003)(26005)(6512007)(38100700002)(107886003)(66574015)(83380400001)(6506007)(2906002)(316002)(478600001)(6486002)(5660300002)(41300700001)(4326008)(6862004)(8936002)(66946007)(66556008)(6636002)(8676002)(66476007)(86362001)(82960400001)(17423001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?8EkqvZPt4pu+8fcESLESkK657Pe8NYz0a/+8F8k4Bi3vdeoTuNa36w6R40?=
 =?iso-8859-1?Q?qUPVCuYA7HdZhvKhLY1ZtIzVQAas9VXPR/6qRm/d74s29Ec7NESJsl/2gU?=
 =?iso-8859-1?Q?adGTQEKWFG269tVlj0lVbeAD8MzqHKY4iAd21G7y5xRyoYzzpsA7qRWTKN?=
 =?iso-8859-1?Q?C7w1Y3Q5jxpzT38+mpbbQN95l8xcR6XMMrynxiicdF6d3GkYBDCf4oNwyI?=
 =?iso-8859-1?Q?HtuYjGy+GgvkjwFwAobReEcM+Ec4s9Ub4wAKE44FllrcPRyeAAoTEDBNvs?=
 =?iso-8859-1?Q?WJRZBeILvCyvEe0ZufCaK2VZdgD8IbuzjRc7sGmVOHISHsiJE+oYpW5ybo?=
 =?iso-8859-1?Q?DKjZ5o4ngyXf/kOr3c6XnczgiH9A706PL7p6VEelWwWTSrqt5rMJkWjk/G?=
 =?iso-8859-1?Q?Zuh4WsAjcUKtfHDMNiElRf1ad+6ewIjy3b8wGR3iYcDOz0bDVMFdRFoHTP?=
 =?iso-8859-1?Q?ghcV05kDbwPeOKFpqoce8BrpOFGHqIwvPDN4vi1uAH7KiDljdtldqHEvg+?=
 =?iso-8859-1?Q?0ZrYxmcWhd/IHqU419cnGRfo4d+T5srAUQT2HeJLolShSIG4Yjhoh6xR+o?=
 =?iso-8859-1?Q?v299l1HFVnU14HzJuryyw+zGTunrEXXbgc/5RSaPEarrZp9xE0sh8dLMx0?=
 =?iso-8859-1?Q?1nC7+j3rCVJ2rogR2ogkZoAWM1icKCtjJ/iNzjZOe20Uez4JA7+HsfFwkI?=
 =?iso-8859-1?Q?YVQ19SfIWxCzdRJDoxCWFxff8SvJ+kqsEFMcFw4FpJ5bzpU08lgI5AmKbZ?=
 =?iso-8859-1?Q?N56e66UUR03PQjblpg+lccPoKCYI/NHYF3Mq9lSjk8QshjoBhb2SN2uKvg?=
 =?iso-8859-1?Q?AgDVXXeCff1q1O/BtxyiiH64RIUDDdBr7RFiIshtnefJr8wSEej5nyN5w4?=
 =?iso-8859-1?Q?tIEclMDrkqxnrdQHZWRUcLVP0sDtTun+NjpyYWH/VZL0gSXsAXBouTR5O+?=
 =?iso-8859-1?Q?9qNzFNc+fbGSuGFgmVmOTigGgOTq/2fQzjlyg5tfCIZ2k3mvYGlk0D7CfH?=
 =?iso-8859-1?Q?G6OSfoYghpu0CBYYlUBZqS0H2U1Q0YsY7qdinWXkvbxbqV5b5uYNwZ9uFK?=
 =?iso-8859-1?Q?Vz5hni/x4e2RSHRZ/VajFD9OtCEZ2yv8MHsZ2incyPPrSHTdazPWDtvfiZ?=
 =?iso-8859-1?Q?UDNgNKJSHlGMLfYMsiDiPBNOxAlfFZr9L3bLOvvwvvQ6WAWHWwz/BblhLg?=
 =?iso-8859-1?Q?4YRiJ2UNSCn4XiLvmHdrbu+3l/HwkDKR+3uyD+/SOKceeNSF5dlCp30eAs?=
 =?iso-8859-1?Q?3udxiOvOBaqXyvgnbHeK2E7ojKz/nCcIYYuUnsGlTiWAZMf+AS1Hcmglzn?=
 =?iso-8859-1?Q?QKfv1wCOF6NaiVCIeXIMygFvMrasvp9+Ur9UQush5XMdLrCJAUsCfuAnyo?=
 =?iso-8859-1?Q?d2y50LWqkhQ2+DTwp6SfhbxvIQQd9e0uo6fWsDQGr+TURIasBywJ0IV1rw?=
 =?iso-8859-1?Q?uRj2ACOQmHrh8uSs7/MOg6CyOIwtn7kdF+e160WioGxL7pYGflggg2Ppev?=
 =?iso-8859-1?Q?6TlWmNhCAKnfcu7pj/LxupMVYpZ64E49ZO3Vlvc+dGKZB0VA+Ezwg84k3O?=
 =?iso-8859-1?Q?QD1tO3IMhCen1G+ajTp6TUTP5WwrCG3wuDHEGO+9Ji8BBhdjlO+uu8B/FU?=
 =?iso-8859-1?Q?MFbJd84S+qTBp5SryYcOA/xEs+dFXQkt1bWxslOXp1bmLul1x/yvFGEA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e525f2f5-7437-4318-8e23-08dac1e2e8cb
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2022 23:42:34.2207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TnOIY20daUrgIF9SQw62JP58LTw//Tnv9cL9KdG2sU6ew/eburU7cFfEaU7Mrus9QFEbRYNg2Z+Sro7N55RW89QPM1spFoiqlGk2OKGdXm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7063
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: intel-gfx@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 04, 2022 at 03:26:41PM -0700, Anusha Srivatsa wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For MTL, changing cdclk from between certain frequencies has
> both squash and crawl. Use the current cdclk config and
> the new(desired) cdclk config to construtc a mid cdclk config.
> Set the cdclk twice:
> - Current cdclk -> mid cdclk
> - mid cdclk -> desired cdclk
> 
> v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
> change via modeset for platforms that support squash_crawl sequences(Ville)
> 
> v3: Add checks for:
> - scenario where only slow clock is used and
> cdclk is actually 0 (bringing up display).
> - PLLs are on before looking up the waveform.
> - Squash and crawl capability checks.(Ville)
> 
> v4: Rebase
> - Move checks to be more consistent (Ville)
> - Add comments (Bala)
> v5:
> - Further small changes. Move checks around.
> - Make if-else better looking (Ville)
> 
> v6: MTl should not follow PUnit mailbox communication as the rest of
> gen11+ platforms.(Anusha)
> 
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 161 +++++++++++++++++----
>  1 file changed, 133 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index eada931cb1c8..d1e0763513be 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1716,37 +1716,74 @@ static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
>  	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
>  }
>  
> -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> -			  const struct intel_cdclk_config *cdclk_config,
> -			  enum pipe pipe)
> +static int cdclk_squash_divider(u16 waveform)
> +{
> +	return hweight16(waveform ?: 0xffff);
> +}
> +
> +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,

Bikeshed:  maybe name this "cdclk_compute_crawl_squash_midpoint" to help
clarify that we're just computing stuff here and not actually
programming the hardware in this function?

That naming would also help clarify why we're returning false if we
crawl but don't squash or vice versa (i.e., there's no midpoint in those
cases).

> +				   const struct intel_cdclk_config *old_cdclk_config,
> +				   const struct intel_cdclk_config *new_cdclk_config,
> +				   struct intel_cdclk_config *mid_cdclk_config)
> +{
> +	u16 old_waveform, new_waveform, mid_waveform;
> +	int size = 16;
> +	int div = 2;
> +
> +	/* Return if both Squash and Crawl are not present */
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
> +
> +	/* Return if Squash only or Crawl only is the desired action */
> +	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||

Isn't vco unsigned?  "== 0" should be fine here I think.

> +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> +	    old_waveform == new_waveform)
> +		return false;
> +
> +	*mid_cdclk_config = *new_cdclk_config;
> +
> +	/* Populate the mid_cdclk_config accordingly.
> +	 * - If moving to a higher cdclk, the desired action is squashing.
> +	 * The mid cdclk config should have the new (squash) waveform.
> +	 * - If moving to a lower cdclk, the desired action is crawling.
> +	 * The mid cdclk config should have the new vco.
> +	 */
> +
> +	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
> +		mid_cdclk_config->vco = old_cdclk_config->vco;
> +		mid_waveform = new_waveform;
> +	} else {
> +		mid_cdclk_config->vco = new_cdclk_config->vco;
> +		mid_waveform = old_waveform;
> +	}
> +
> +	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> +						    mid_cdclk_config->vco, size * div);
> +
> +	/* make sure the mid clock came out sane */
> +
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> +		    i915->display.cdclk.max_cdclk_freq);
> +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
> +		    mid_waveform);
> +
> +	return true;
> +}
> +
> +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			   const struct intel_cdclk_config *cdclk_config,
> +			   enum pipe pipe)
>  {
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
>  	u32 val;
>  	u16 waveform;
>  	int clock;
> -	int ret;
> -
> -	/* Inform power controller of upcoming frequency change. */
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> -	else
> -		/*
> -		 * BSpec requires us to wait up to 150usec, but that leads to
> -		 * timeouts; the 2ms used here is based on experiment.
> -		 */
> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> -	if (ret) {
> -		drm_err(&dev_priv->drm,
> -			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> -			ret, cdclk);
> -		return;
> -	}
>  
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
>  		if (dev_priv->display.cdclk.hw.vco != vco)
> @@ -1781,6 +1818,49 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	if (pipe != INVALID_PIPE)
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> +}
> +
> +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			  const struct intel_cdclk_config *cdclk_config,
> +			  enum pipe pipe)
> +{
> +	struct intel_cdclk_config mid_cdclk_config;
> +	int cdclk = cdclk_config->cdclk;
> +	int ret;
> +
> +	/* Inform power controller of upcoming frequency change.
> +	 * MTL does not follow the PUnit mailbox communication, skip
> +	 * this for MTL. 
> +	 */
> +	if (!IS_METEORLAKE(dev_priv)) {

Is there a reason to believe that we'll go back to using pcode again on
future platforms?  If not, then it would be preferable to use a version
check here like

        if (DISPLAY_VER(dev_priv) >= 14)

since we usually assume future platforms will follow the newest
platform's behavior.

It also might be best to flatten this out rather than using nested if's.

        int ret = 0;

        if (display >= 14) {
                /* noop; Pcode not used for this */
        } else if (display >= 11) {
                pcode_request...
        } else {
                pcode_write_timeout...
        }


Matt

> +		if (DISPLAY_VER(dev_priv) >= 11)
> +			ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> +						SKL_CDCLK_PREPARE_FOR_CHANGE,
> +						SKL_CDCLK_READY_FOR_CHANGE,
> +						SKL_CDCLK_READY_FOR_CHANGE, 3);
> +		else
> +			/*
> +			 * BSpec requires us to wait up to 150usec, but that leads to
> +			 * timeouts; the 2ms used here is based on experiment.
> +			 */
> +			ret = snb_pcode_write_timeout(&dev_priv->uncore,
> +						      HSW_PCODE_DE_WRITE_FREQ_REQ,
> +						      0x80000000, 150, 2);
> +		if (ret) {
> +			drm_err(&dev_priv->drm,
> +				"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> +				ret, cdclk);
> +			return;
> +		}
> +	}
> +
> +	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
> +				   cdclk_config, &mid_cdclk_config)) {
> +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	} else {
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> @@ -1953,6 +2033,26 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  		skl_cdclk_uninit_hw(i915);
>  }
>  
> +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
> +					     const struct intel_cdclk_config *a,
> +					     const struct intel_cdclk_config *b)
> +{
> +	u16 old_waveform;
> +	u16 new_waveform;
> +
> +	if (a->vco == 0 || b->vco == 0)
> +		return false;
> +
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, a->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, b->cdclk);
> +
> +	return a->vco != b->vco &&
> +	       old_waveform != new_waveform;
> +}
> +
>  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *a,
>  				  const struct intel_cdclk_config *b)
> @@ -2759,9 +2859,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  			pipe = INVALID_PIPE;
>  	}
>  
> -	if (intel_cdclk_can_squash(dev_priv,
> -				   &old_cdclk_state->actual,
> -				   &new_cdclk_state->actual)) {
> +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> +					     &old_cdclk_state->actual,
> +					     &new_cdclk_state->actual)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Can change cdclk via crawling and squashing\n");
> +	} else if (intel_cdclk_can_squash(dev_priv,
> +					&old_cdclk_state->actual,
> +					&new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Can change cdclk via squashing\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
