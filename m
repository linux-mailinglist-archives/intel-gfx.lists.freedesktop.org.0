Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C33F6818A7
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:20:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071E610E0C3;
	Mon, 30 Jan 2023 18:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F6B10E0C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675102825; x=1706638825;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EK84aEy5X868mSPcEpnKzpVInrQswhDS1v7V7Emk3ao=;
 b=LNMudtTPFrP3QF7a41wyZ/gItZJg6edSp9z5qqfX8AbL0dJZm4uHcA5S
 iR6LO3/2nHYZ13q8qs4UXtIKtTwwpNoWiOTQNryTRniR4EDubTKtJaGzI
 7nbGS+TnUxMyrddej6QlBvGkqRBPkBvVoxsoD2k4D64U5k4JfDNXA/+r7
 vys2q4nT5AnmxKWv3V1zGAF39bNwx42BuXwKX/eUHGiHHeWDh4L4kjeaj
 vf42ilEobXfFo7jQ4o3XUIvuweg7ZgdmTFzzjtfGWUsYvosk2CdaiYPw2
 lDE6fZLwbXZNbYW9YziKf97AsrUW6a4SMbnFwYt1rp+ydeRKZTZBBLuhY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="354954498"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="354954498"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:20:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="727586175"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="727586175"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jan 2023 10:20:25 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 10:20:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 10:20:24 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 10:20:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LziCB8xVYoKqEXjedzlzZAYBa8LBWVon+vrqSIxiSR6HwdNZWkl7UmFvRKjB9CbhFSGU3d3MPAjrIEafTJKwyZ1BRt6kNGvbh/Pjo/70yNsPF6gD13FeV8pZduP0kfEutgVW6EVb5A9QDq5IexOucCmk3dOcck+DxQ9YIfFhzOOaE/1wueeF+ms77aMus3jAmmY2FnrkiwRx+C+iZZ1NGHO/b+vBAR+p4RAjuNnLF5I/9AMl3/3td9INxyqB7lL4Xai8Jm4hoDX5nnJ89O6Hys/tvl5z0Sgm48eYnGZUKPDYS+qIDpi4+HIi0Mny5TGtgRYmomOkSasdRPuxrya4wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ddMfgszebcrvw7bY3DDYrRsb+u/YTrQgG+Pux4gOik=;
 b=b2rZwRKDshF8DMm5yRFIly4dN/TiPLJCYoxt8ofsPciNx66eN0tEk4ZkfPxGZ4gNDD5B+FWhdAWSrc5UDU64QA4gNsuxUOcD95IRP6+8eQh3hklLkZglbV/WUX3Sdk6p9g9XkgrZu6jGYphvpq9kE5D71zl/d5RKHQiXD//oGkE+i1EIAFGCtU7T5XmAjzKIKFSt+URULt6GxwwNc6hRjrTkLPBvQ+UO2XAXvmYJeHMhZZ3i63wbGrbNx3BWehtYLlZgKmUoLvhbBL+tKmDK8Rw0cFMwaV8Ptnfmq9ZJs5pJkpvNbEOFc9kV89VMe9JYtHuOgsWaWS11AU5vxCDHcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by SJ2PR11MB7519.namprd11.prod.outlook.com (2603:10b6:a03:4c0::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 18:20:23 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117%8]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 18:20:22 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Implement workaround for CDCLK PLL
 disable/enable
Thread-Index: AQHZNLL2DPXbQekXgkeuTnaMvW3em663RYzg
Date: Mon, 30 Jan 2023 18:20:22 +0000
Message-ID: <SJ2PR11MB771563EC50CB1A9624C17A3AF8D39@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230130135836.12738-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230130135836.12738-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|SJ2PR11MB7519:EE_
x-ms-office365-filtering-correlation-id: bfad3463-79fd-4533-376a-08db02eea6c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZOKe6fsXUstIeQWYZgN2hUADlSslfls41lYtubTWVqUZqLDfy7XXK5sQ8Fv4XV0TUxbm8NYPDPUqXKIo4WDO+N0S4OrbplYowIAjZ+WPHge5DVmIsE37ehUYCATyjrr/N95cepGAkmULXPvG/wdFw3bZCv0JpgHt6InB8SrFRCndlx12WU+MyHzkk03zgG2yt6DmNroGA5ShoWCK9CXYkpzlgtbsJWMBntCyGw/i09XEXbdQ9V0D7qy+KXQQ46GjnAp5Lwr5Eudj+66FdoVPFaW2BQ6Q7xM/sBsV05LZrbUOpB4D1jss3avs7KNWXqPjHC6KAyUvVtXzqR3+F178122mDLi1yqirkCp8OUUvGTZb6GzdW6DmczW1nbtClv0q1RZy5TU+LBnQBG6Jod8egzOKhxbS8wuDPrR9XNsn7oFsm4Rdhrhh9tKRx9mPLrH7KZ5pXkohp7zQRM+KhOoAd6xC9MzRcmjliyeY33jaLgG6tbDyf/3YS9D1oI5c/v6yiJvOjbuwdLQrFt/HO0rZVVNKbK+QJ1IQypyQS2S5WtSmE6LVC67Dbtt7SHW6qeKEdHlECGuvsv9p7wTOFwkWYF8gWHq43npYjdOw6Ts7wxFliRl9tX2a/oMXDClUdb8iZEsZ1RBtYBWcYu496dwgcHV/NulGHdtP/uPxJythK+w6ezrOMJPMKolI4zFe2CEATWN0aZ34uB99saSjbXdLNA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(366004)(136003)(396003)(39860400002)(451199018)(83380400001)(110136005)(186003)(26005)(9686003)(316002)(2906002)(33656002)(38100700002)(82960400001)(122000001)(478600001)(66556008)(66446008)(8676002)(64756008)(76116006)(66476007)(66946007)(86362001)(55016003)(107886003)(53546011)(71200400001)(7696005)(6506007)(4326008)(41300700001)(38070700005)(5660300002)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LYktbixomuuBmpdMKGDnG0xKjAglpcia6x/k+YD0Us5h+jre0IMKAXLps62T?=
 =?us-ascii?Q?Fz0mvKnAzTSw2OStbrzRjTNvnZWhQNe5ydg5XKRCyNhVMM5WBzEZ3QKWuE7/?=
 =?us-ascii?Q?dALR5qcMqtUPClheypVDysl10CqWqAr4+vwBP7NYtaLVpmSoP8Eu37UCzz1J?=
 =?us-ascii?Q?qjE5IDFH0FSEuNytr8hPgPol+avB8uHv4Qnmx3srdk8UgdjyPmHGFaJ7dg+o?=
 =?us-ascii?Q?2H3dZGGANa13hYwKSHZYXeiDL3BNl5MbNQqh3/0lU+nRfMNFuUfcRI2cicK7?=
 =?us-ascii?Q?4c2SntgxKfnmJ2uxgQDvG3IcYfHw/5sXZ9ia7rCVBYH9n7b7amhy/i0rj/rG?=
 =?us-ascii?Q?ph3Ny1Q8ciSBvJg4gOWsa+o0MTO/f+7KqKWUw0KCq7o9UPRDv3YsxRQuvxe0?=
 =?us-ascii?Q?qao7VTfq0Tw2BDFhueIfqK9YeKqUsOjNKVo627JGCpt2ni3NEnE8b915d7Cp?=
 =?us-ascii?Q?V/S7fAsfl1EsydBQItraq5Bv+P5BN0tAGz1S8eO4jZxcrQwylUBHSbJVl7k2?=
 =?us-ascii?Q?EGO/1irVU48KLag5Ox6Zz7hDtIgVnsFsO+eqY9QZfdXPGHKgyG1dww/a2hRL?=
 =?us-ascii?Q?7RlS3N9aa1KyJLZSMOyJMqKoiaxndDOGURCZQ2Qwpd3+XJALUTl1DeuCeKQ/?=
 =?us-ascii?Q?K4Gck+74iiUGapoLkVooKS5Dx0YgtZSkSBohvbSNlkB+gTHTcXvKU2ccGAg2?=
 =?us-ascii?Q?/eEi4sthMrYiirWQ4GMGBoFoNB7D981rjmI2gGgG2l8fOst2aTH+7mMqnom5?=
 =?us-ascii?Q?fAxM2ofsSwamI4QvbDHde3G7V9exfOXWrbqGouS9wrw4+520W2HZwJ/OEyb+?=
 =?us-ascii?Q?2cvLh74ZMk1mXQvMj12NUK2w+8Cfwa+GMTVH8EvF/vNG55zCtfT/d4Yr/tHX?=
 =?us-ascii?Q?0ohbbfIUHmDzSa/WWrvvLAI/TokLkhrghASxDJYoanJ5/7CGqzVBrK8txWX8?=
 =?us-ascii?Q?wTDluUJ+uwEVq92DWuaNWgSCeRoljmEH4GfP2u1cHTo7YxvnWWIPOZfBiuUo?=
 =?us-ascii?Q?4MnzjGytgSiR/RdZZwl9z3QYTEQPTE5z4/raw782Rc45Bq/BaLQWNRXj+PXH?=
 =?us-ascii?Q?cZ9pZL2WzxBmAhleiPDnzk6zHPOwPt/buPnJySUvt1SjtAxClXRe5o/rSvje?=
 =?us-ascii?Q?S2c1AmoYwrNl7QIHhNvSTk4ByPgfthNXpyBgJqK3fmymxdZPcXMokwCjsgx2?=
 =?us-ascii?Q?Vvht2bT+zr0gp2SjGogLGMX+uxJ0p2tk981OkOHmoDUsyENoKQrRA8f4STsY?=
 =?us-ascii?Q?yzHObVsWNhjU8f5TcQy4ZrjqKvSCQ0AMfoR8cbsgqTCLZQ5k0iYsc7LwiqwS?=
 =?us-ascii?Q?PDLQhsxczyn9LR6YdKHHohoMEYPp9BLgBFa2R60qEKcOm4unc0fPAOulW4Sc?=
 =?us-ascii?Q?iFdy9i80FnJBwSbyVM2p2jevZ4UM16ZVPgo7ql882nQpnPWjh+XwufY1N0zW?=
 =?us-ascii?Q?nGbjj04eNG5sH8kHqnaHNvafwPxdbicoDTh41gGFZS3Y283vwUV/IJJ/6Dz+?=
 =?us-ascii?Q?TBYKzbd/nH/zj77RqFQ+MwzO+l5fH2Lo2JGWZLL0omPi+MjCQxjzqJ+tqeIL?=
 =?us-ascii?Q?5eDIDtZe19SbsDQzq2eN8poKJ9DUgBGfh1/G4P+BGmipa8JqaLhUQxatquzB?=
 =?us-ascii?Q?zQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfad3463-79fd-4533-376a-08db02eea6c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 18:20:22.6224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8GEN5M1ytxgHkrXaG6Auf1P3ZJNZYSdS7ZqjQdyB9MgKdu78kxzmfkEciWDFm0VnJw1b9c97CUp/UQpLkoSOR3n+vbBuXNs6xw4JX0QL4GE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7519
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement workaround for CDCLK
 PLL disable/enable
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



> -----Original Message-----
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Monday, January 30, 2023 5:59 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Subject: [PATCH] drm/i915: Implement workaround for CDCLK PLL
> disable/enable
>=20
> It was reported that we might get a hung and loss of register access in s=
ome
> cases when CDCLK PLL is disabled and then enabled, while squashing is ena=
bled.
> As a workaround it was proposed by HW team that SW should disable squashi=
ng
> when CDCLK PLL is being reenabled.
>=20
> v2: - Added WA number comment(Rodrigo Vivi)
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 7e16b655c833..8ae2b4c81f31 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1801,6 +1801,13 @@ static bool
> cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
>  	return true;
>  }
>=20
> +static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv) {
> +	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
> +		&& dev_priv->display.cdclk.hw.vco > 0
> +		&& HAS_CDCLK_SQUASH(dev_priv));
> +}
> +
>  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			   const struct intel_cdclk_config *cdclk_config,
>  			   enum pipe pipe)
> @@ -1815,9 +1822,13 @@ static void _bxt_set_cdclk(struct drm_i915_private
> *dev_priv,
>  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
>  		if (dev_priv->display.cdclk.hw.vco !=3D vco)
>  			adlp_cdclk_pll_crawl(dev_priv, vco);
> -	} else if (DISPLAY_VER(dev_priv) >=3D 11)
> +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> +		/* wa_15010685871: dg2, mtl */
> +		if (pll_enable_wa_needed(dev_priv))
> +			dg2_cdclk_squash_program(dev_priv, 0);
> +
>  		icl_cdclk_pll_update(dev_priv, vco);
> -	else
> +	} else
>  		bxt_cdclk_pll_update(dev_priv, vco);
>=20
>  	waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
> --
> 2.37.3

