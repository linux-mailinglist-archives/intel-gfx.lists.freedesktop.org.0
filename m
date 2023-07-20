Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D786575ABAC
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 12:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A811910E0CE;
	Thu, 20 Jul 2023 10:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9803010E0CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 10:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689847849; x=1721383849;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dRP8ISfvWyOjQJ13cJWS7aw+PXCbK6Ti6pznT7TeAgw=;
 b=b00bhG9M+6tYfkBOVSLpvsmZETR4v9lWnGBp+vV+tcBpYfwdCEfFsasz
 q5tfCdUWaYnTdFOHdjOsZ7Teh41/BIj4bZ1gHcAJwoCTC0mEh3YGvfLFU
 pgfplKbtT143ixTYuEpbF5YHl6LyyXoChdh0ovFvDWOlvrFl627+/wmhE
 XlHJ/xNj5CH2VA77F69UvMa+mTeiyJrgu5k7e15DQ9At5+44tEYcIUkSc
 CnZHp7Zqw0wxpw127HIusvvhzTj7e4hkeJDxK3V3BQ/VE523Q83rATZ/9
 Nod34X6MTyflAIG4vqa1LDCl0oDP+gCx6dXM6MOJq/bNURUwqYyX3/0eg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="366721958"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="366721958"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 03:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="970994662"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="970994662"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jul 2023 03:10:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 03:10:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 03:10:42 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 03:10:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fzhx9JeDVyXJFG/pbS+/8NpJH7YmkS4oEWrRXUJ3N34XwpM3MA9zdya+UiFYN+ytjJ2uwtFotY1EmV++crLKGHi3SabwkFbp1xUtu+VzYrpioR0Kuxk28xI1cq09AxX9uDy6qbQKVtY3d1EZv2xzm42AfxtUINKhSX2X9E8hQEdKnwE/XBNvZQ1no2Ii9DUta0Esod8gFcl/5V/mrpcXK+qFsZiDU+siV5DwJZhe+CzKLhH4Nzilj+9PQ/Mn4ksciXWeMnSOP80LwYsPBmiMUB/uE1norLpoizu59lw9b3f+VOzIb643+/Cut4fNzl/LKAjakw6DVkOHRS6irj2AAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLoBCQoNzZCdU14KF7a0r27/c7R4k0R0PzPzAAletTA=;
 b=THYeqU9atWrPDg1w+2G+ia3ckNr8FUcw9ByoFptCwZz1FLhaudH1LyIkvq+eT/ZK8bOl+TJfRiV5+g494Sd48ODjYzCPhdCqYZfAm+FfKWICPNDnGhHTtW0MIhw2/Ww5+9gf4YLAfsqyUVSOJIOoNdYJYQ2EpIVa6omZIr0lz9ckWHmG7BH/OUwogrvX+0viC03z7wpmphoRnzR2rGR+JQSm90fANimAQwo3G9fmZo7g4HyC5/6Va6slN0xnT1Z+HRxqq56PLpuy7GnooWEA0qcEh53vr9wdhT8Tki+nQl7XacEQuLTF7YUN6h0Mv8IaUIFqRSMnUwbk6TT/P/+NqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ1PR11MB6177.namprd11.prod.outlook.com (2603:10b6:a03:45c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Thu, 20 Jul
 2023 10:10:33 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::306f:ccd1:2620:a9d7%7]) with mapi id 15.20.6609.024; Thu, 20 Jul 2023
 10:10:33 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
Thread-Index: AQHZthqWtp8s7mUqE06m+OTqfa839K+9tL+AgATDJ2A=
Date: Thu, 20 Jul 2023 10:10:32 +0000
Message-ID: <DM4PR11MB6360E332807BD0121B4A4777F43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230714061339.2897609-1-suraj.kandpal@intel.com>
 <20230717092425.2971227-1-suraj.kandpal@intel.com>
In-Reply-To: <20230717092425.2971227-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ1PR11MB6177:EE_
x-ms-office365-filtering-correlation-id: 9de9584b-b2c9-4746-565e-08db89098dc6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LDvyJIxo1kSRNTNzjPnqXv6kEGAzRn31bDBaltSJ8ygpJqQl71WizHp4pkMS+WRvCXlMjI38/kGUpC1H75UyykqH8T6E4Sr02OZZQPdI32a6AM7Dnh4vPBbAXkmhL6bGK8f6wWF4Cjv9rLhbF/OtdYFt8FwQkdmyjGlUsTQnMPgFdO3127ZIGF584cP7cP1az2HOsD9Bd0XRdYb1knLW7426w8ts4lU9GrHWrfO9NXrg52mm6G6WP77rEzowqxhohsVRZcBjC4+A/v4T53TncGfQPIRc003V1kgucgWv8v0IhVNbViqElmyUPbctF+meP3iQgehmwkycwM97jbyObsDAWUO7Z4l7Fu36WyISCloeaYVbEtULfO1QL7VGtK7/xt0MhIuRRc5ANmfGtBaisCcvQupNtmRk+feshIhsPKiqpzxqQTS9cgzLYff4czGU7toh+kL97wnpaSRA/nPMxDD/DW638b+p5IBP/8W7XtCjp8TCn1xXabv/uUC6JQOGs0mXqN2VpmVPpU5lJuYSec/A243799UgWm5z2gVNqm+YTOs1GRjL6OmLkk/xLuXv8eac/b3vxggF1RCGpGyF1TsIeRvz9S3/QVKmRt9m6L4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199021)(86362001)(2906002)(38070700005)(33656002)(55016003)(186003)(83380400001)(9686003)(6506007)(26005)(53546011)(82960400001)(7696005)(38100700002)(122000001)(110136005)(71200400001)(66446008)(478600001)(4326008)(66476007)(66556008)(64756008)(76116006)(316002)(66946007)(5660300002)(41300700001)(8936002)(8676002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h7gbT8azRYzQdZsOk5Jyo6ThiXPmUbL28sVUEw8suEKdr+B9Y/gnQkFIDgp9?=
 =?us-ascii?Q?jcRBUjSmNZ+Xyxy/tDFqikDUvXv+m2PCYk1VX/4uX3PnKwZrVQu05BO7/yKN?=
 =?us-ascii?Q?OxxkesQQ5TsPANx69xotXW+Js6JLedYacERe/PYTOguACbv5591itqB1uS6G?=
 =?us-ascii?Q?rFSZaN8uIzymqi3JAgIYSu/7SavU1vPHAe/4jB32V/jqV3CDLVnSf4l9nFHb?=
 =?us-ascii?Q?i1ucG/LfmYHrf2GzL+C0B2J+vIG81kVloqiWhG1xhWwiyCctBgplHhhlUK5Q?=
 =?us-ascii?Q?gMSmnkcjrm9ftizOQCcr9TBDFRwd8o/4G+0OyKZFPcvsfQxOWHfrdxG5Sdh0?=
 =?us-ascii?Q?87rRif53AQZOe4jt3Ra8YGlspMRXaTUTWjQ4QDSpGHGTWI1yh/xmpKOjqg3K?=
 =?us-ascii?Q?zqvUGabEvT/naG7tNz9kS2Np9jTukdbcCt9P9YTOyHysOSgffGCtczd1sJ/J?=
 =?us-ascii?Q?3Ygeon78IJ+/jBao1uqnEoyDEg9fV/hevOPDPNsqjlKjMs1T5V2iV30r7CXo?=
 =?us-ascii?Q?83CNBlYjIllsOLohej5L8t/Im9VdjNVmeTX/Ocp1mSBoVsPed2nIV3cY6Vh6?=
 =?us-ascii?Q?YqLeruOqGB6jbbfXVqiL70CMknt5P4FXz+/24nEMHQFaaie2gCkt/Re3729U?=
 =?us-ascii?Q?5jcNAJXMKKQJS1p95mdGlWx9Q25S6masM3IkcVDEvrIbyOLH6YvWqvykY9GS?=
 =?us-ascii?Q?kbkgpFlKolS934KFl9FpwNov05sDy+dQNqUWzNTcll7rMapcG/+cnNB8T0oq?=
 =?us-ascii?Q?VIQQxPf7kQVIpHHmHS4gDTFhmsWeWnLXfGJeFAObftmnv18Pfspnk1z5OUM5?=
 =?us-ascii?Q?1jo4quHrqu4fMNzsN5TEZXXSLGXwZHrSiJi2yz0vxD1ImiPxt+0kuLHaPHBq?=
 =?us-ascii?Q?E/SjATwlBDhCUdmWkgkymx8TGjTfxleChCmD5A7T5hFfvqxISQlDoFhi49Jy?=
 =?us-ascii?Q?fSNNmVavuIFjLxEnTd+VlIjKzRNAit6nee+TDUnGz27nAWgLQsNYwFa/roQa?=
 =?us-ascii?Q?BL3WSwrYQbYdLhkKgspr6c5Ub679W/T34PviXnwuxwBjPjKgY13Qh0qLNfbT?=
 =?us-ascii?Q?1Dke7nTH+AXOOBFPSramSn2EZsLVhv1OCveFVLUKK4Fvzy0NSEvSSDNL0Ibf?=
 =?us-ascii?Q?9xX6SiM+4R/gLvMpXPdY8+mxPHFIxaFSaH8WVPwrzjO/rO8KzAhtl933s3YV?=
 =?us-ascii?Q?yClli6Eq4HlxVksVwiC9D2C4hnGs5k9nakJISwdcmoeJMKbXH+N5b7/Fo7Kk?=
 =?us-ascii?Q?RwU0Pd91JXSGhnMiI8eUk7sheP53419nzYv0ibOy96akP/Sxma+iQ6F+yDVB?=
 =?us-ascii?Q?ybhBKOB6LBY4qxfePMSKbX6qvb6D2OLz9loz4u/AJOC91o/5rMSlgBqMLqg4?=
 =?us-ascii?Q?7oFZ8EIrUiuk4zziOsyi5OVgXHOpR9cr6HkDo66zW2M46JAgPfw10ePN0D4P?=
 =?us-ascii?Q?H7JgJ3+dBC8Tjuyz4oMWp12Ek3ju5FFnNlCoZq0n2KQkMSDy28zjXdf7GF6L?=
 =?us-ascii?Q?e/pjH7ll2ykWKX5qCulAfAwMEoXO5A7t2ISYJccYdY2XJG0OksFaiY1q52s4?=
 =?us-ascii?Q?1JPsmzym2/KPKkJuiwajghcjtNzJUZutw4OaYCLo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9de9584b-b2c9-4746-565e-08db89098dc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 10:10:32.9258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O4/40VnPFq98IHE2dYfTxlBg+krDoElflSpHsOo9JPMJSuqJ31I6p0tP/sdxKEBaf5ReKN2DpBCPvECwO+xlEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6177
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to
 250us
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, July 17, 2023 2:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Ville Syrjala <ville.syrjala@linux.intel.com>
> Subject: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
>=20
> On TGP, the RTC (always running) was reduced from 3MHz to 32KHz.
> As a result of this change, when HPD active going low pulse or HPD IRQ is=
 presented
> and the refclk (19.2MHz) is not toggling already toggling, there is a 60 =
to 90us
> synchronization delay which effectively reduces the duration of the IRQ p=
ulse to less
> than the programmed 500us filter value and the hot plug interrupt is NOT =
registered.
> Solution was to Reduce SHPD_FILTER to 250us for ADL and above.
> This solution was derived when the below patch was floated.
> [1]https://patchwork.freedesktop.org/patch/532187
> and after some internal discussion Ville's suggestion made sense.

Looks Good to me. Just add also a Suggested-By tag mentioning Ville.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Bspec: 68970
>=20
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 4 +++-
>  drivers/gpu/drm/i915/i915_reg.h                  | 1 +
>  2 files changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index f95fa793fabb..95a7ea94f417 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -842,6 +842,8 @@ static void icp_hpd_irq_setup(struct drm_i915_private
> *dev_priv)
>=20
>  	if (INTEL_PCH_TYPE(dev_priv) <=3D PCH_TGP)
>  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
> +	else
> +		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> +SHPD_FILTER_CNT_250);
>=20
>  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>=20
> @@ -1049,7 +1051,7 @@ static void mtp_hpd_irq_setup(struct drm_i915_priva=
te
> *i915)
>  	enabled_irqs =3D intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch=
_hpd);
>  	hotplug_irqs =3D intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch=
_hpd);
>=20
> -	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
> +	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
>=20
>  	mtp_hpd_invert(i915);
>  	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs); diff --=
git
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h index
> dcf64e32cd54..aefad14ab27a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4939,6 +4939,7 @@
>=20
>  #define SHPD_FILTER_CNT				_MMIO(0xc4038)
>  #define   SHPD_FILTER_CNT_500_ADJ		0x001D9
> +#define   SHPD_FILTER_CNT_250			0x000F8
>=20
>  #define _PCH_DPLL_A              0xc6014
>  #define _PCH_DPLL_B              0xc6018
> --
> 2.25.1

