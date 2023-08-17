Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9066B77FBAF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:12:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68CAA10E081;
	Thu, 17 Aug 2023 16:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3D7010E081
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288742; x=1723824742;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AfOhctwZUf5PI1zOXekvrgtUZddZ4a26LN/QBR7Vb/o=;
 b=Yedp0JZqnEPDL4uGoh9tMHpECoQ1f1I6KHOccdRlE73RuP1FCJhI5kLx
 QVGH2oDl++j1hx8q9F5cdMgBJYpOl1V7JEbrgBER6fsMrqoWbibqvsJ8b
 AqT1sjy/cQqtPYZUFMqcIQCcEYhkROyTC/dqYlaArzhHnaQyiH1GuxAxL
 KvU3XsJ2MGVIq5H5xry7F1aH/v6jOkDSi+xpgJlwaavSw16H9/MdVBM45
 3r28rKFuG6M6aNKjTy+xGEoCfrHGjYw+YNx5L7HLG/hMiUgp0XL77HIgJ
 Lp9H/FzyDyz4J03K3K0S/F1GnpSP+FxKzJE2PoEJ4KnQYPAStPAOQa/Cr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="403837124"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="403837124"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:07:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="908454409"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="908454409"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 17 Aug 2023 09:07:31 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 09:07:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 09:07:31 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 09:07:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oek+Kiy+WykiInZIjlj2oGe8uVoeInBCUAK12j+PFXGx6rZ+aVsKFzB1p4uiEOfhLrI1c0eXpssExyHozv/q5dmJxzKDYnVf9UOaSnnHz2O0kzFFFMBUbbIiCa+TWCBFiAmw5CI7XO1FKi9q4qZIeieBvwB+ZWqigGJ0Hap2lxrbDGtKG6ylDWcsmR5a9wamsx/FP2BnWbtboGCKFklgilIHiJPSNob3DdVGT7WD8/6osYZRhAyLtN37axJH/zeBQW98/WLLZu4BcuDzpjULqlvqJC6PnzyMQTdhAvVp1vAXYVRxVWMUszoQ/eibe9nVefmRDw5KSJxDk8fu8/E7Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ba86AMpC3hJxk99DhV59Yl4bG+7XdTL+f40rCoNPvQ0=;
 b=XdioexxCn17GvHF04XnhxHyVHDSkeejs0b0gV/xhAOoJoqWn7Cc9Qag4/qvi+LgR12Y38eEIZ75DYdBff7hbRc06VGpdVYp0L6L/G69+oMYLa12xf0abXXFitt3/KwK9KBYNwWUi12p3jO6JZVwSQNhKkAWbBf7lVpczhX9o+z43OyOsxusqS7nfQ7xY1B5NEfM/Bk8qNTsrEEnJ8JZFg9GQWo/2XfHqSUd6ux8k7xHabbx0AUeVpZs/Xj51qs1rnDLbLXdFjw1E0eQa7s5qRhBHSAHlkb6dl3+UbhCd5ahKLQOWbfiynOkWBMdAHjyfw7wqxVC2q81G63bRLkpG4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SN7PR11MB7994.namprd11.prod.outlook.com (2603:10b6:806:2e6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Thu, 17 Aug
 2023 16:07:22 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241%7]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 16:07:22 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/dgfx: Enable d3cold at s2idle
Thread-Index: AQHZ0ECSH4VTmqz5HEG4VlGtzMIS3a/ukLAAgAAXQOA=
Date: Thu, 17 Aug 2023 16:07:22 +0000
Message-ID: <CY5PR11MB6211A9E8D3949FC5258183BE951AA@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230816125216.1722002-1-anshuman.gupta@intel.com>
 <CY8PR11MB71341DBE139DE3F6F7B84639E61AA@CY8PR11MB7134.namprd11.prod.outlook.com>
In-Reply-To: <CY8PR11MB71341DBE139DE3F6F7B84639E61AA@CY8PR11MB7134.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SN7PR11MB7994:EE_
x-ms-office365-filtering-correlation-id: 28354ea9-6874-4d6e-94ad-08db9f3c0a57
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8MKgJ3vTFYEM3c4BnOttCBIgHgnPjnwMhB/evdWLWUdD8BXaU9tjnHOmXlCkTGaEFSiFV4Mb+Wj7fSwfIMfU0WgloB/o5ReD0YpdJeTgsk2xby3d5kW4Ty75k0GBU3AVlGPY4K9LGVMGfKPtGA+ns5dr6k8vZFenfeA1Z+D7XV+29lc/Q0Gu2mPU0Oo5pwWkCopJFgJVTcph63zYxqcbVMnzqHyeumc0aTYkG4QmxC/eDRdm1AEkEcSQiOV+U0xwYz//Duro6GeF/I+NpmV0kGc2d895Bcqy8nGk0VoZ929YX8JutB4cfqiAcTyszSClwHN7DpIqX7xPCLOw9vBIdXS4Gx1T8CrSBBQiBFPWXQUxCtyKjEaNVYOYDYn95GJo5aSwK7BCYV1NpfMk0dtxkawsXdtEYcy7zUHOH2eM5Ix9NugNZf5aPUF5sG/Xkgkcw5i/h23etk0sL/g2z6/9YKE91zQsPAPWvurPXObzcUuFwGNXKd7o/uixCN6rMaPdNrPnfy5Jaid+Jq9LDqIpjfh7iPBvLRObD/SbdgJoipm5Ke9R0A9ch9kCp8ESx4GWb2RWPPsTovIMxs4UeIV9MNeHVf8C7uJMniW+uV7I9xX4xdFIzwNSrcT4HHHFT8iyTNZsNUpWQiuccUPs65pniA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(136003)(376002)(366004)(451199024)(186009)(1800799009)(316002)(54906003)(66946007)(66476007)(76116006)(64756008)(66556008)(66446008)(122000001)(6916009)(966005)(5660300002)(41300700001)(52536014)(38100700002)(38070700005)(8676002)(8936002)(4326008)(82960400001)(26005)(2906002)(83380400001)(55016003)(478600001)(86362001)(9686003)(53546011)(33656002)(7696005)(6506007)(71200400001)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4MkXOZ3Aj7qTKg9OIJzw2kQP+H+mp9L/EqoNsBvoHVTGtLEDvePyG2TZo58M?=
 =?us-ascii?Q?fHOrDx5aHIstyaTjxC/WCW4R5U1+hipJdBHPo6BAFNU94d3pqjPDUSnjvbRD?=
 =?us-ascii?Q?4GS8EXmqQ7zMHtE2MznJiXiQdvi8c6hT1sEz+c939pqRerDZqBRQQ+P0SQf1?=
 =?us-ascii?Q?zzbs1G5YQ6QzmU66ezHlcpv8IyqcEexK3+Tc39LP8ihFJTdTbDZEMp3xJZxR?=
 =?us-ascii?Q?VGGheDXfqHaiwPuocAtleGdCOle67chZbnuLsYtHz4vmeK3853GQAweT0Axf?=
 =?us-ascii?Q?bj1HXg7lWq2hBSzJbj6537obs/LbsyKa1SkM+Mj7PIZ+gGF1g1fAgW4Lb0jq?=
 =?us-ascii?Q?MeUACCDHmxQGTv8CpJz/ztwYItaMSeQhBYhvNW9OM5vaNQTtrDTt/wYlbFmO?=
 =?us-ascii?Q?iAU78hCeA3vYgSdIPwzsC9/MddWAq98GElPfaS/YeKhToZqdBosIHST1zt8/?=
 =?us-ascii?Q?YXGqPlfYcLESAzvVaOe4pKfYeyBdk/6g1/4o6hUdmJSK9j5Uo3POATLalvCE?=
 =?us-ascii?Q?LF4hhHSsAwNNamAzITfKdtOQp4N8F7JbJakhyXJ6hM2YenCCHY/nHS5CSMH/?=
 =?us-ascii?Q?nHD/uhT7qxd3CVwu3i5BKApHtcfurePqqKqJ6wUQpEMFbtJu559pXx2qQAwf?=
 =?us-ascii?Q?6fiE5RY2xHY7P1+w91GE/FYwX/w7XhbbenV2+Ure2O641x8qv/c35FXJa3AU?=
 =?us-ascii?Q?q6FzPVokhlLCKtrdSEa+dQ7VRetOUjA6KLnJO3kcLS02ddtvLeYCV/zdTSRo?=
 =?us-ascii?Q?pPnJm7ZfwFuEq82yKDKZUT2mKn5QaOAzw/Tkp5CR/uE03KpdBr6mUr4e1ni2?=
 =?us-ascii?Q?RFQZeVfSNVXoJEunkMrAlviV9ORYhQGasudBrBySt21GM+VKjxghe8uJKgZu?=
 =?us-ascii?Q?F8AcUXOcz6ITaXxMJxxKeJC9c/wBBMqJ5a4zTnYEgM8EA+FkJamywxEEOWni?=
 =?us-ascii?Q?DpkxD9p9+7hScj04M5QGhkro/JQtCTHhCJhPg+qAm2avP7Zc13HtydtnCkdh?=
 =?us-ascii?Q?kWlNmNdndfBtlkRIWyP5Vii4xfmO2FYs0gCxb6kO5T6GpBiYhxXBA9Y+gwRg?=
 =?us-ascii?Q?NmD4nXgQAdIqiOSLXCOuT2wgG/YvSbE9PgBhlYm9wCrURqgLzQK91MWhqUTb?=
 =?us-ascii?Q?82fd992uNwPyD0uFzJTr29S0YF+CbM5vJL1aTFI8kaOkg+fAmBG8mSOlbSQq?=
 =?us-ascii?Q?hTygOMwSJTR2iyGwOoA6P4rcMJjGY7WZbZKagZaLk0DylPap3bcJC/53hqax?=
 =?us-ascii?Q?fzMqWRwfjO8uGfX5DPjrfuPlKy0VNB5WXDpweyLU7SuzJSziVmtmjNhMpdoj?=
 =?us-ascii?Q?91+pdhMfjxycp3i8NniXus/SUUtx0XzsIsUoMsetXlMfxrYF66WBqrUU0A3y?=
 =?us-ascii?Q?RVgk7OpQCiRtjHTPSJpKr7MuksylffA7QZDTKNqE9U7K54Lhr/HEFENIgvr2?=
 =?us-ascii?Q?Idsm9rSyR2KHiopotJXXf5H/mHCO+O7j+AbAOZd/jc2C64emUInavFWrD886?=
 =?us-ascii?Q?Mul7nqvAjG2cjBTI4wGjucgi/KyghNxVRkTUmb3YWKmv+7H8vTYuebd6rNPj?=
 =?us-ascii?Q?ho/SjmPKtbYgpliGAd8bBQF7cACAEeXGvdPbI4gm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28354ea9-6874-4d6e-94ad-08db9f3c0a57
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 16:07:22.3282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qwxpedfaFLjOJfiUAjtvyiO+gS0uCC+6i0AZs9SZ06ShvIwFKBGHcMvMCdTwSNjbHbGZ49Qx8TzKnIkei0IMQfFNWMAiWAAAff+aGpoJtWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7994
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dgfx: Enable d3cold at s2idle
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Ma, Aaron" <aaron.ma@canonical.com>, "Wang,
 Lidong" <lidong.wang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks for review and Testing.
CI Full run failure was unrelated to this patch.
Pushed to drm-intel-next
Regards,
Anshuman Gupta.=20

> -----Original Message-----
> From: Yu, Jianshui <jianshui.yu@intel.com>
> Sent: Thursday, August 17, 2023 8:09 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nilawar, Badal <badal.nilawar@intel.com>; Tauro, Riana
> <riana.tauro@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Wang,
> Lidong <lidong.wang@intel.com>; stable@vger.kernel.org
> Subject: RE: [PATCH v2] drm/i915/dgfx: Enable d3cold at s2idle
>=20
> Tested-By: Jianshui Yu <Jianshui.yu@intel.com>
>=20
> -----Original Message-----
> From: Gupta, Anshuman <anshuman.gupta@intel.com>
> Sent: Wednesday, August 16, 2023 8:52 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nilawar, Badal <badal.nilawar@intel.com>; Tauro, Riana
> <riana.tauro@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Yu, Jian=
shui
> <jianshui.yu@intel.com>; Wang, Lidong <lidong.wang@intel.com>; Gupta,
> Anshuman <anshuman.gupta@intel.com>; stable@vger.kernel.org
> Subject: [PATCH v2] drm/i915/dgfx: Enable d3cold at s2idle
>=20
> System wide suspend already has support for lmem save/restore during
> suspend therefore enabling d3cold for s2idle and keepng it disable for
> runtime PM.(Refer below commit for d3cold runtime PM disable
> justification) 'commit 66eb93e71a7a ("drm/i915/dgfx: Keep PCI autosuspend
> control 'on' by default on all dGPU")'
>=20
> It will reduce the DG2 Card power consumption to ~0 Watt for s2idle power
> KPI.
>=20
> v2:
> - Added "Cc: stable@vger.kernel.org".
>=20
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8755
> Cc: stable@vger.kernel.org
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 33 ++++++++++++++++--------------
>  1 file changed, 18 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> index b870c0df081a..ec4d26b3c17c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -443,7 +443,6 @@ static int i915_pcode_init(struct drm_i915_private
> *i915)  static int i915_driver_hw_probe(struct drm_i915_private *dev_priv=
)  {
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> -	struct pci_dev *root_pdev;
>  	int ret;
>=20
>  	if (i915_inject_probe_failure(dev_priv))
> @@ -557,15 +556,6 @@ static int i915_driver_hw_probe(struct
> drm_i915_private *dev_priv)
>=20
>  	intel_bw_init_hw(dev_priv);
>=20
> -	/*
> -	 * FIXME: Temporary hammer to avoid freezing the machine on our
> DGFX
> -	 * This should be totally removed when we handle the pci states
> properly
> -	 * on runtime PM and on s2idle cases.
> -	 */
> -	root_pdev =3D pcie_find_root_port(pdev);
> -	if (root_pdev)
> -		pci_d3cold_disable(root_pdev);
> -
>  	return 0;
>=20
>  err_opregion:
> @@ -591,7 +581,6 @@ static int i915_driver_hw_probe(struct
> drm_i915_private *dev_priv)  static void i915_driver_hw_remove(struct
> drm_i915_private *dev_priv)  {
>  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> -	struct pci_dev *root_pdev;
>=20
>  	i915_perf_fini(dev_priv);
>=20
> @@ -599,10 +588,6 @@ static void i915_driver_hw_remove(struct
> drm_i915_private *dev_priv)
>=20
>  	if (pdev->msi_enabled)
>  		pci_disable_msi(pdev);
> -
> -	root_pdev =3D pcie_find_root_port(pdev);
> -	if (root_pdev)
> -		pci_d3cold_enable(root_pdev);
>  }
>=20
>  /**
> @@ -1519,6 +1504,8 @@ static int intel_runtime_suspend(struct device
> *kdev)  {
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
>  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
> +	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> +	struct pci_dev *root_pdev;
>  	struct intel_gt *gt;
>  	int ret, i;
>=20
> @@ -1570,6 +1557,15 @@ static int intel_runtime_suspend(struct device
> *kdev)
>  		drm_err(&dev_priv->drm,
>  			"Unclaimed access detected prior to suspending\n");
>=20
> +	/*
> +	 * FIXME: Temporary hammer to avoid freezing the machine on our
> DGFX
> +	 * This should be totally removed when we handle the pci states
> properly
> +	 * on runtime PM.
> +	 */
> +	root_pdev =3D pcie_find_root_port(pdev);
> +	if (root_pdev)
> +		pci_d3cold_disable(root_pdev);
> +
>  	rpm->suspended =3D true;
>=20
>  	/*
> @@ -1608,6 +1604,8 @@ static int intel_runtime_resume(struct device
> *kdev)  {
>  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
>  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
> +	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> +	struct pci_dev *root_pdev;
>  	struct intel_gt *gt;
>  	int ret, i;
>=20
> @@ -1621,6 +1619,11 @@ static int intel_runtime_resume(struct device
> *kdev)
>=20
>  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
>  	rpm->suspended =3D false;
> +
> +	root_pdev =3D pcie_find_root_port(pdev);
> +	if (root_pdev)
> +		pci_d3cold_enable(root_pdev);
> +
>  	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
>  		drm_dbg(&dev_priv->drm,
>  			"Unclaimed access during suspend, bios?\n");
> --
> 2.25.1

