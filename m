Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3925C628D3D
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 00:15:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B6110E343;
	Mon, 14 Nov 2022 23:15:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124F710E34F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 23:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668467713; x=1700003713;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YxGqEvzpt5gMgNIWjnpTrYMsk+/DI0iHobnKURdu5Zk=;
 b=n5xYys99GmHnyXHauJes0iENK1kF7DYjuU8be2nsCD5n+pFBUEuXN2g5
 aM8+HcwoUNlZNH7WGzy8B8q6riG1J6cM20XYE3o7sNUXkmAT8M2xDAwJO
 48mrJBSpdzxVDVWbKdBjJFNXSXPlFC8l9g3uLhXhoAI70sbYktFtnt3VY
 P1eBk1rropKLuTEtB2ME7CYDbHxM9/dKqT4H6rbILjuydJ2xBANXMAm+Z
 PAA52XK4dwbseGQIeSyAoFZdNpEZeZM8uS/igq0m+o2IHfP8JpOJia7le
 Vkvd9eeCNpXmW2GTMJiwSVd4tOYRp7skaSmtp2ztmVmDntbMHeHWZ27tO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="291819723"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="291819723"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 15:15:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="632998668"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="632998668"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 14 Nov 2022 15:14:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 15:14:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 15:14:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 15:14:40 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 15:14:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QGijAhAtWd/6v30+mvD1OKI2199V4SNify/O5Vn02p8kWl/LfTu6ly4zchTj+arQI5pAKMTqRTfIQhMk0pAUIDQjw0Cpzd2xHs233yLKXEYglShl8mFSGwg+jglrCjw/XEAnhrwAPm2GOwB/6kOMujuSD/jZeoFKXpOH/72HTrIKCw5X2bgs2B9NxD+lM24xF4amOYKjU3gorp9b690IdUSP5K8qIGNS80U42oB/whNj/W/trd+/05D2g/XK4PZl9rjM62eXlCzTw/xr80HonN0h1g9q3JFd/Ml/KtelkqyTz9dYmp4qAqyJ5VbBMMzlIogenINyNDaoxFBZCTWQfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SW/CWlBwqrh2OI8Fo8bIgXG9Xeh6JEEPWP226WFMIOY=;
 b=YE66wi7s0SZOAsGwrQaZsvsW3pBQ3Ck6UMFwJDBdxbL/SUfzqPUWsgq+TVr71tGFsVfIvnCuh3mlZpnZ0q9I02VJg4zC+OPT+9oo2RH5Oh/wv3bdp5W+MHVAhtYBhkbhnz78Ko35IwGlaRt+Mp3lNiosYnG201X9ZXmHduOGUPRdpisBdvKUDaXXeTZvw0cIfB1AuPmnbUQuFtpMUtu+CjdOXkltaFjVlyyloVwSz0xj1WS/INSppNEk6tfd8EuLIi8ystqaH/1eNEGbVcXDjfnL8PEN2MVr3C5C6twDoVaiFnhE4Gu187RojB65CSn9LfhOl09jccxxV99CgVdjkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DS0PR11MB7529.namprd11.prod.outlook.com
 (2603:10b6:8:141::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 23:14:33 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 23:14:33 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 2/3] drm/i915/display: Do both crawl and squash when
 changing cdclk
Thread-Index: AQHY+GuqpRj5ndF1xkmRVKvqNqFwGa4+/HCAgAAO+BA=
Date: Mon, 14 Nov 2022 23:14:33 +0000
Message-ID: <CY4PR1101MB21663F7C69EA4AD5984E85D3F8059@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221114205717.386681-1-anusha.srivatsa@intel.com>
 <20221114205717.386681-2-anusha.srivatsa@intel.com>
 <Y3K+EWdQwpKSLm1L@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Y3K+EWdQwpKSLm1L@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|DS0PR11MB7529:EE_
x-ms-office365-filtering-correlation-id: 571f25ca-54c0-40ce-d709-08dac695fdbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MJSf3qZpPMpNBnmyMbwx5lUztFs36D3Z2pCZpMYUr2HwnT33csCRWhKaWrfABrN5EMeaNWkWryLejePMic3wTuVDV078QKjrlyRlSIhCNR1dkkR0UaAqb+B8DwzRB3nxkU5Tbs6GIPStd0r6637+vpkYY7O3Nn3I8YXhyfjolhqFMAMzKUv1K4Nj4x2l73BXSsd7Zjc69/x3gP6PPgx0fGajMLh1gaYvqXzCIDYIUGn7rzjXiaOX9nQX+xJFicMQdijc/3TD9toNdnafVhQSlPYpuRb8jVGeOXegNWhZHoRq41ErtKshXMzDgCvSOx4mu1KsbVEIniB/9f4kveKiM1GXUFFiaxZKsfLoIn7pMhp5DZWZk3PmLX7/1eDipULShdCy6qoK7XjxumYhioqc4xle+RWRB1n9GOkHL3vIy1nj5RncEAVo2H2BWbZCzyL9SN25FXkHiFjMVauAR+t1jlV/MGZ1MPSWgVO5CfKHgBK+n6zE5uhK3rS3Z88vPhstJgzCjZT9I3nMtEdTRQ3h6aPnelnU0sWnPWnmzLjGQ/Uum8QMRNvcyJ/62znqUY/KCDrSpkgFUm3uZM+6otBGM/rUJEHeCdrMadZYO4DHStVNba/qQYcpsdlQRfimgt45PapiTmMqUPb99LOQ/9mk/ON6S50Br4IKIveBcWk2VOK8K7JduQWJGBtP8oAJ2+9Dm6zrpeaK1VJq6vNYhd5IljghiIzKfmfpb61GCHkn8np8TOxuRj4DpClZN/TWH/4g7kU5W3SdB4hvifgBzbcoquTSiY0OmFx8cVyY+m08+A8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(396003)(39860400002)(136003)(346002)(451199015)(26005)(9686003)(7696005)(71200400001)(6506007)(83380400001)(38100700002)(4326008)(8676002)(478600001)(54906003)(82960400001)(6636002)(316002)(66476007)(66556008)(64756008)(76116006)(41300700001)(66946007)(66446008)(5660300002)(33656002)(55016003)(52536014)(8936002)(6862004)(2906002)(30864003)(122000001)(86362001)(66574015)(53546011)(186003)(38070700005)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?/MMkwgMMsxuJseQoBmpGeweUxyPznL5Fkiog3TSiCnpUynQZb+YaXSW73m?=
 =?iso-8859-1?Q?LjmwHJ1AF0vQplycYwo9kc+83ycmHroeb0rQB4jkPM+03C5HEALeYv9NE+?=
 =?iso-8859-1?Q?2S3MX9BVabloJBzsL+bDXVFwTBKm06ckRuf1B+2WAVTM+QBPdL2k1xM/xg?=
 =?iso-8859-1?Q?FksOxOhtxa47y6yujbbuObdyzvflNrWXw3E2/YvG6um0WdxuJHvUgmrfZK?=
 =?iso-8859-1?Q?uDAFLfBoqaGiu/1oAGxQc9DP26Ysnanjv4XrniESo1k8JJfRgOd/CpLDRn?=
 =?iso-8859-1?Q?Ab1A1YQ7IZwSaLUfaVN3OR1DJBgstvY2d/O0FwUsWe5yHpJuctd+iyhKuD?=
 =?iso-8859-1?Q?d9SPNsugxNx7g0+agzw9vEX60c/R54BnIaTA32J5Vmn6Nk4Yio4r9sVYwu?=
 =?iso-8859-1?Q?2ns/jxLmjCTrooyByfARQTqESwmpiW0vpMnzqcNtaJz86oTuWwCIzeq6a+?=
 =?iso-8859-1?Q?tsvDYN2B2l0bKOYBX+ieleea2oR/ih3k7gLCnFBMxS0rQG24ZSCDu+mfRA?=
 =?iso-8859-1?Q?IPDYUUhQJJAtOTO007/uNdZxWzaxve5mNeByYtc3lWqfHr9gePd1NdCEPm?=
 =?iso-8859-1?Q?sd0nx5kso7SKp1ww+XwXNNYlzg2m/oNsvbxu9MCUuIRH+5Ed8ZAghUGQAp?=
 =?iso-8859-1?Q?8mpydz0bOqVN/95Ahg42UoveZzAtABpOQPUg5yoACaKpJz1gBS3QGISBy6?=
 =?iso-8859-1?Q?CjzHm1pJPrroB7dPGFaZoC1i3YS4yZP7J9F290k8CZiv7Vi/drGNFdvZDL?=
 =?iso-8859-1?Q?BS/wByfM3DMNdqT/cexwLl4PHfaqd1Z7cFiUpftfriemQzVQCqRqkLXONC?=
 =?iso-8859-1?Q?tK+juUPuGKeus33R1xzrA2uPeNOxtVmA7gsUykMyVGLd3C1AsZE3PXp7S9?=
 =?iso-8859-1?Q?DCemA0NCq/+c5yhs/uJE9Tr+h4pCsdv3GW5S7SjtISwmtFqscNGAXTNQkP?=
 =?iso-8859-1?Q?W0eCAdHUfHUtHfND4ai4ZrjM2pc7qtCwtJkz2FRzAiFphU67b5CCxhbCyb?=
 =?iso-8859-1?Q?f0GmNeYvNlhceTM6hHOWhOuXRv6TPv1Mo/1g2lTW5RWXnP7TgD46IJCeQW?=
 =?iso-8859-1?Q?ZNEaIQq97YDEa8UU63sjkB2spSTUymeIBG5ZuDjYBVRNxxOdQo75QqKXg1?=
 =?iso-8859-1?Q?0iCS6NRB2f9uyx/njTnd4uMGL8sZc+l9J7FAP/jy8JPfDnBw0Vz6YJNTXl?=
 =?iso-8859-1?Q?gr4tgR2lFTDZrki/WErfwZrxX6aKUv2xH+pIIOqx+w4zSjcSQ6kIHu+Ioc?=
 =?iso-8859-1?Q?KO+AD6YoZL6Ef1OfxyIYgu2UqMXr7f/nqz05vcLZ0gHsLkxmP4EA73JN7Q?=
 =?iso-8859-1?Q?eSJRzsynqN0VWTbrxWhwWXmplO3tcTAThbPos5ug3bcvu6yFaK+BosiVJ0?=
 =?iso-8859-1?Q?1GgxYwz/6wzJR3IzoCvk4oE5di4v/nQlfT6UJ8XlI7D0op5dAhwrrV0kUP?=
 =?iso-8859-1?Q?HPHpw8sCRQJ0Nofxe7E5k1o4vq6SqM85ozX1D+O/bw0oeFuSI4ZmqoYGj9?=
 =?iso-8859-1?Q?+6wA6qRlg7FlfWERSqQ5oGsA19CtTKVipZVKUM+vgk+wvXyRLow6h6rPSN?=
 =?iso-8859-1?Q?BCdXH5AqgfVd+BOmwJzjSitwyXhegpUbOGujLZ6plcvsdsJV5Ltg1lcs1E?=
 =?iso-8859-1?Q?yOZWXpSI4ECD3RTgyrEh6VfPsdIs7l5HwlvyJqcQhEWqHq85s/5iV2oA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 571f25ca-54c0-40ce-d709-08dac695fdbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2022 23:14:33.5512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2VrAeHtraUbHpRt1ZGQ+lQU93cmGpePX0FyUjYrtEzmHCg968rSDYADL9/zDkCpVyWmRsy9bbg9kxLRW8C4qa4NuVai+n7WjUhPldP3cq0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7529
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, November 14, 2022 2:16 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com>
> Subject: Re: [PATCH 2/3] drm/i915/display: Do both crawl and squash when
> changing cdclk
>=20
> On Mon, Nov 14, 2022 at 12:57:16PM -0800, Anusha Srivatsa wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > For MTL, changing cdclk from between certain frequencies has both
> > squash and crawl. Use the current cdclk config and the new(desired)
> > cdclk config to construtc a mid cdclk config.
> > Set the cdclk twice:
> > - Current cdclk -> mid cdclk
> > - mid cdclk -> desired cdclk
> >
> > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk change via
> > modeset for platforms that support squash_crawl sequences(Ville)
> >
> > v3: Add checks for:
> > - scenario where only slow clock is used and cdclk is actually 0
> > (bringing up display).
> > - PLLs are on before looking up the waveform.
> > - Squash and crawl capability checks.(Ville)
> >
> > v4: Rebase
> > - Move checks to be more consistent (Ville)
> > - Add comments (Bala)
> > v5:
> > - Further small changes. Move checks around.
> > - Make if-else better looking (Ville)
> >
> > v6: MTl should not follow PUnit mailbox communication as the rest of
> > gen11+ platforms.(Anusha)
> >
> > v7: (MattR)
> > - s/cdclk_crawl_and_squash/cdclk_compute_crawl_squash_midpoint
> > - Cleanup Pcode checks in bxt_set_cdclk()
> > - Correct unsigned/signed checks
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 163
> > ++++++++++++++++-----
> >  1 file changed, 124 insertions(+), 39 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 25d01271dc09..4db7103fe5d6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1727,37 +1727,74 @@ static bool cdclk_pll_is_unknown(unsigned int
> vco)
> >  	return vco =3D=3D ~0;
> >  }
> >
> > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > -			  const struct intel_cdclk_config *cdclk_config,
> > -			  enum pipe pipe)
> > +static int cdclk_squash_divider(u16 waveform) {
> > +	return hweight16(waveform ?: 0xffff); }
> > +
> > +static bool cdclk_compute_crawl_and_squash_midpoint(struct
> drm_i915_private *i915,
> > +						    const struct
> intel_cdclk_config *old_cdclk_config,
> > +						    const struct
> intel_cdclk_config *new_cdclk_config,
> > +						    struct intel_cdclk_config
> *mid_cdclk_config) {
> > +	u16 old_waveform, new_waveform, mid_waveform;
> > +	int size =3D 16;
> > +	int div =3D 2;
> > +
> > +	/* Return if both Squash and Crawl are not present */
> > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > +		return false;
> > +
> > +	old_waveform =3D cdclk_squash_waveform(i915, old_cdclk_config-
> >cdclk);
> > +	new_waveform =3D cdclk_squash_waveform(i915, new_cdclk_config-
> >cdclk);
> > +
> > +	/* Return if Squash only or Crawl only is the desired action */
> > +	if (old_cdclk_config->vco =3D=3D 0 || new_cdclk_config->vco =3D=3D 0 =
||
> > +	    old_cdclk_config->vco =3D=3D new_cdclk_config->vco ||
> > +	    old_waveform =3D=3D new_waveform)
> > +		return false;
> > +
> > +	*mid_cdclk_config =3D *new_cdclk_config;
> > +
> > +	/* Populate the mid_cdclk_config accordingly.
>=20
> Nit:  kernel coding style says the "/*" needs to be on its own line.
>=20
> > +	 * - If moving to a higher cdclk, the desired action is squashing.
> > +	 * The mid cdclk config should have the new (squash) waveform.
> > +	 * - If moving to a lower cdclk, the desired action is crawling.
> > +	 * The mid cdclk config should have the new vco.
> > +	 */
> > +
> > +	if (cdclk_squash_divider(new_waveform) >
> cdclk_squash_divider(old_waveform)) {
> > +		mid_cdclk_config->vco =3D old_cdclk_config->vco;
> > +		mid_waveform =3D new_waveform;
> > +	} else {
> > +		mid_cdclk_config->vco =3D new_cdclk_config->vco;
> > +		mid_waveform =3D old_waveform;
> > +	}
> > +
> > +	mid_cdclk_config->cdclk =3D
> DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> > +						    mid_cdclk_config->vco, size
> * div);
> > +
> > +	/* make sure the mid clock came out sane */
> > +
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> > +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> > +		    i915->display.cdclk.max_cdclk_freq);
> > +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915,
> mid_cdclk_config->cdclk) !=3D
> > +		    mid_waveform);
> > +
> > +	return true;
> > +}
> > +
> > +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			   const struct intel_cdclk_config *cdclk_config,
> > +			   enum pipe pipe)
> >  {
> >  	int cdclk =3D cdclk_config->cdclk;
> >  	int vco =3D cdclk_config->vco;
> >  	u32 val;
> >  	u16 waveform;
> >  	int clock;
> > -	int ret;
> > -
> > -	/* Inform power controller of upcoming frequency change. */
> > -	if (DISPLAY_VER(dev_priv) >=3D 11)
> > -		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > -	else
> > -		/*
> > -		 * BSpec requires us to wait up to 150usec, but that leads to
> > -		 * timeouts; the 2ms used here is based on experiment.
> > -		 */
> > -		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > -
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > -					      0x80000000, 150, 2);
> > -	if (ret) {
> > -		drm_err(&dev_priv->drm,
> > -			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > -			ret, cdclk);
> > -		return;
> > -	}
> >
> >  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco
> > 0 && vco > 0 &&
> >  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) { @@
> > -1793,30 +1830,53 @@ static void bxt_set_cdclk(struct drm_i915_private
> > *dev_priv,
> >
> >  	if (pipe !=3D INVALID_PIPE)
> >
> 	intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv,
> > pipe));
> > +}
> >
> > -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> > -		ret =3D snb_pcode_write(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > -				      cdclk_config->voltage_level);
> > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			  const struct intel_cdclk_config *cdclk_config,
> > +			  enum pipe pipe)
> > +{
> > +	struct intel_cdclk_config mid_cdclk_config;
> > +	int cdclk =3D cdclk_config->cdclk;
> > +	int ret;
>=20
> You should initialize ret to 0 here since you don't set it in the new bra=
nch of
> the if/else ladder below.
>=20
> > +
> > +	/* Inform power controller of upcoming frequency change. */
> > +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > +		/* DISPLAY14+ do not follow the PUnit mailbox
> communication,
>=20
> "Display versions 14 and above" or "Xe_LPD+ and beyond"
>=20
> Also, this is another case where "/*" should be on its own line.
>=20
> > +		 * skip this step.
> > +		 */
> > +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> > +		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> >  	} else {
> >  		/*
> > -		 * The timeout isn't specified, the 2ms used here is based on
> > -		 * experiment.
> > -		 * FIXME: Waiting for the request completion could be
> delayed
> > -		 * until the next PCODE request based on BSpec.
> > +		 * BSpec requires us to wait up to 150usec, but that leads to
> > +		 * timeouts; the 2ms used here is based on experiment.
> >  		 */
> >  		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> >
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > -					      cdclk_config->voltage_level,
> > -					      150, 2);
> > +					      0x80000000, 150, 2);
>=20
> The switch from cdclk_config->voltage_level to a magic number
> (0x80000000) on old platforms doesn't seem to be related to the rest of t=
his
> patch.  Ditto for the comment update about 150usec not being enough.
> Were those intended for a different patch?
Well, initially both squash and crawl support for MTl was the intention. Th=
e change came to be a part of this patch because MTL doesn't go through the=
 Punit mailbox communication like previous platforms and hence the churn. T=
hinking out loud if changing the commit message makes more sense or a separ=
ate patch. A separate patch would just remove make sure MTL does not touch =
the bits of code Punit code. And the next patch would be the actual squash_=
crawl-mid_cdclk_config patch.

>=20
> >  	}
> > -
> > +
>=20
> Stray whitespace
>=20
> >  	if (ret) {
> >  		drm_err(&dev_priv->drm,
> > -			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
> > +			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
>=20
> Error message change seems unrelated to the rest of this patch since it's=
 not
> possible to get here on MTL (at least once you fix the uninitialized 'ret=
' noted
> above).
>=20
> >  			ret, cdclk);
> >  		return;
> >  	}
> >
> > +	if (cdclk_compute_crawl_and_squash_midpoint(dev_priv,
> > +						    &dev_priv-
> >display.cdclk.hw,
> > +						    cdclk_config,
> > +						    &mid_cdclk_config)) {
> > +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	} else {
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	}
> > +
> >  	intel_update_cdclk(dev_priv);
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 11)
> > @@ -1965,6 +2025,26 @@ void intel_cdclk_uninit_hw(struct
> drm_i915_private *i915)
> >  		skl_cdclk_uninit_hw(i915);
> >  }
> >
> > +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private
> *i915,
> > +					     const struct intel_cdclk_config *a,
> > +					     const struct intel_cdclk_config *b) {
> > +	u16 old_waveform;
> > +	u16 new_waveform;
> > +
> > +	if (a->vco =3D=3D 0 || b->vco =3D=3D 0)
> > +		return false;
> > +
>=20
> Do we also need to return false here if cdclk_pll_is_unknown() for either=
 a or
> b?
>=20
The above check should suffice. If it indeed is ~0, the bxt_set_cdclk() wil=
l now make sure driver des not take crawl path.=20

Anusha
>=20
> Matt
>=20
> > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > +		return false;
> > +
> > +	old_waveform =3D cdclk_squash_waveform(i915, a->cdclk);
> > +	new_waveform =3D cdclk_squash_waveform(i915, b->cdclk);
> > +
> > +	return a->vco !=3D b->vco &&
> > +	       old_waveform !=3D new_waveform; }
> > +
> >  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> >  				  const struct intel_cdclk_config *a,
> >  				  const struct intel_cdclk_config *b) @@ -
> 2771,9 +2851,14 @@ int
> > intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> >  			pipe =3D INVALID_PIPE;
> >  	}
> >
> > -	if (intel_cdclk_can_squash(dev_priv,
> > -				   &old_cdclk_state->actual,
> > -				   &new_cdclk_state->actual)) {
> > +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> > +					     &old_cdclk_state->actual,
> > +					     &new_cdclk_state->actual)) {
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "Can change cdclk via crawling and squashing\n");
> > +	} else if (intel_cdclk_can_squash(dev_priv,
> > +					&old_cdclk_state->actual,
> > +					&new_cdclk_state->actual)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via squashing\n");
> >  	} else if (intel_cdclk_can_crawl(dev_priv,
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
