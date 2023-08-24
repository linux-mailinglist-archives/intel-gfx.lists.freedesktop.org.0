Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7677678756A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 18:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7550510E025;
	Thu, 24 Aug 2023 16:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A2110E025
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 16:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692894781; x=1724430781;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ayVSBrbyby7Lm0smqB7mIGaRxw8v5tIoM8v0SepyG7g=;
 b=AAleBFke+fq0p22V5hQw3wATO0gpfwNZIKCrHpSWZTIFuzWw2gZzfQjc
 buJkXi4/sFLXdUh0YigRjNFIgKAfQYVhOPLGzcZeAJ0Zks9i1Ni//AwCI
 ug9gSv8pliO8mY2DEA1LQm2F1konDsqliPgC/hZzILLPrj0JswLCPPM9l
 Mznrp1mq5+ol9iGEw4ipnE+e72VxrhZQNq0uWipIrEXMzUt7aKV1F4UsE
 ElgwR37TEWKtwYjw110/2yJg1Oba75h/27/RmX5Qt+68BDU1+tj73R3Oy
 pIw4vAtGUYN8bolyjiTDUJNa592m4hSPKRK2Hj/0vqp0FW9xmvfGRZO+l Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="460851656"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="460851656"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 09:24:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="772149604"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="772149604"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 24 Aug 2023 09:24:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:24:09 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:24:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 09:24:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 09:24:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y4TX6XmZ+8IDX+YBJ5g+shRjhi/TxbGp9LOzmkwcZjQ4htkGFB9rSJ5t1tAjJQFJNdFSSMsRBJzsXKbzo02WkkjR9MeypMIsdYQzqDx87mFYhCyxxar/95D+fokkcac+j2fAtwzExNwpbJJDIlMmKmAwmBl/QnVu3KoTxtssAitwsJ/jR5fvLEz8QV6gW5iK9trPOgGdQn/A2hPfaL58sDruNGlLEvFlfxrJcrT5IGv0rV16Mk2V+HpVb+ToBfgXdONyP9OIc2Xbp3KkN2jDnGwCG+2dYglX6j1wImOFBlqBRdJrtBfKJYmBuhsu1eab4amoMxCkbTUC7tZWPjJB1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kTsrBTL7kTDVF0TWztMKT2+lzpyf4XYOMPvaRuRq8mA=;
 b=daqiuum+uuXmhKQ3t53nDeq4eJX9NTQk82G3Z22MBokmZQoTm60CYYY75yNG+m+8Om+Jla2BPa3cqZJgdhs/CeHSo5H6zsuQRnTOgTuadh4ef0j6FLrKac27C9YAbrqr7R2wIPSvZhi/U961/yaYOHGuyYqlcAGMtQZsO9kSYSwFmB5T19j0XehmB/3gDSGyaCdut1TylWx+kdVIOyRoQOsVGs2nJJsjn+YvVJaCI6yJZiTqCIIL9tKy1EeJsBkR0bH7CJ84hOp/cLdSD0WcPpLhgMJ3xCW4kiF/gic5efceRRKz2x/CkJl4iY4Z6uCJ1DJm3+cmDQawGjRkvlCBww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7026.namprd11.prod.outlook.com (2603:10b6:510:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 16:24:07 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 16:24:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/9] drm/display/dp: Add helper function to
 get DSC bpp prescision
Thread-Index: AQHZ1PIpqA5aa6hYVUCIJKIf00ajCq/5IUYw
Date: Thu, 24 Aug 2023 16:24:06 +0000
Message-ID: <SN7PR11MB67501F566DBD033C37496D03E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
 <20230822121033.597447-6-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230822121033.597447-6-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7026:EE_
x-ms-office365-filtering-correlation-id: 1f9590cd-dcc5-4acc-3d39-08dba4be89ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mzqgeZMWSvA07aJN3F8KDXSoKrTH2Sh6lIFnMTqjyM13WOdwGeydSSCFVKC2tJW+mulY1EgHR3UpujLRAQ2vRVyRIkPVM8jWy6BMuhNSwPWWfwz7YGRK70ff6+ptxGc3isb70tbzxaABy/CpgWCoEVFqBu9Q8ZHdLek1Tovxz++iMWri7sOc3i9Vd4HL4WB30VD1OL7cD1+YGchvH+mjRQD9nfKrK8dinycqgymBvDUCM1Po//bTR8VSC1GXDfKf17+pG0vfeC32Nkl0OM9vGjKGrzmtIaAfv98p5Ui6RZXKb3z12X5ey3R/Px1cpWJb7KVHSfKe1dLKwWx31+LPplZPT9LKgGzPGa8LrsURPH2H5iSA33yfxSs7CZSqZplNR1+Mfxn1U5Z7j1mlMW1uEchJp/dE+yl35UnIrrkmQcoUyJHIU/CJenU7YVRLnBpy6/0Uoh0EzOVeDniVdoG5Ej0dvwyHta+eGY6KJxmi6FTpWol58moYe/fXCcxQyRB6uzEt+YMBIZBKkxjKc8BaWMsxRTQ3xI1QAeEwMO/qWoRMmDgrXOBOFhJS2ItkxhsSsYAwPHv6o3QrDP+E2r4PFLWeBQjk0JGlToEsp47jd5Zag5RFLlUygpQG0C/43FPN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(186009)(1800799009)(451199024)(52536014)(5660300002)(107886003)(8936002)(4326008)(8676002)(83380400001)(33656002)(7696005)(55016003)(26005)(71200400001)(38100700002)(38070700005)(82960400001)(122000001)(66556008)(66946007)(66476007)(6506007)(64756008)(66446008)(76116006)(316002)(110136005)(478600001)(41300700001)(2906002)(9686003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BB9b0feSyY7Mujd3oyCO0vwOAJh1DtaAIFZAbv5V0CCIHv9ZO7FwFGjeoGQP?=
 =?us-ascii?Q?unZxz7RLLQfpAYH6aclpFhZ+9xCNyNzkHrGsCqjB2zRzip4Kgqw/n2gAQCQh?=
 =?us-ascii?Q?RslP69se+b7pq0H8AZSd6VI+meqFy3uuMVc4v/SqBHlcAuJYL6PMmsGSi3qs?=
 =?us-ascii?Q?Zpn5BucTml62+l3yk6Gg56Prl6MZW2ET5E0pvntbzeU+9WDZ/b1DLa5Er8Xv?=
 =?us-ascii?Q?qIFf3g53F5HE0aTHX0zqzIbC7z8pTYZtqMujT+xkb8GcmXHv4Crvtx3ikHaf?=
 =?us-ascii?Q?Jnu++ZnrGYlUTq3AsMq6ltW2fWAKmAAyJ814B8oHz9cN9fqvH/Ji2LyIY+vO?=
 =?us-ascii?Q?6RhukD7xGwWhfUwdBVqVj+i259LMqUQVWtF3ZPeSU9uLRW5b1bl+ic1TRzXt?=
 =?us-ascii?Q?UZeLz1pe7LYFZoPBPhSY4yRcZQccwyHJmKXndEWV947b4DzBb/Z/jk5ViM2e?=
 =?us-ascii?Q?S67U2+AzKItSwD1EokpplK7Tk5NQS+SVzJMjf/CFDzNw9lkA1hMdgdxiW/2q?=
 =?us-ascii?Q?c/avLmiA5kK9Z4nWP7OGveSd6rfe9GGKwGWRsor/cenPuXrLVRmAkAVXMzFd?=
 =?us-ascii?Q?+JPxXawGo+m9GEw413+Sx0KG+zcYdtBzWXbWHrAHLAPQyC1Uyfge9MHsPubr?=
 =?us-ascii?Q?U/21s54tu9nsyc37Qkp1/3WY4RtdO2OFiQbce0WHynOwYTHRa292MDPt27KV?=
 =?us-ascii?Q?Gu+eCIdVDsgsuSS7GEwvqXyUSrlUJCXBsc6sjqMwVi6yIpAp52ZYzJc3kk+z?=
 =?us-ascii?Q?gKvWr4EWNG518z+EeyI/GtfI+kgHOXrMweA/PyPVet0mekYV4eLBFDdDtqtg?=
 =?us-ascii?Q?Jh9/IkLKw5qg/6mljwFzv0o+H8Dp2KtkEd2XgWIR1UyQU3T6ZTIXz/s4SYIp?=
 =?us-ascii?Q?ap4CAEWFk2RC6xBGJtJYd0MiYvE4OFphSmjdUCne9ORUTxfUgRb4LCGGo0Is?=
 =?us-ascii?Q?jfGPDc+jk1zLCOvVFN4QGs2G1fr4V6kIG9HiMCmNQbAkeXz4r80eqoHeSlB/?=
 =?us-ascii?Q?NemBS/YpGw8dTfIHOH5BVee0Lmy9TqRHUNLswQapUbXhCUsRwrbzNedLl0Ty?=
 =?us-ascii?Q?idTGRD750ajytOeknMTqEcUjMlrEqG6Pluf3RItT1LeWsUy/FydIDvqugjJc?=
 =?us-ascii?Q?gxsjC4qt+V4qKbuiW04p9eJiHCT34iGJVMH0GVvO/AHdHAqQst1xZ46tS806?=
 =?us-ascii?Q?+ofvYEj+VdwxpstbSFtDglfgP/BCIX/RuToVEC6GHWs4P34F08YKitJnhenu?=
 =?us-ascii?Q?vnyTYWIONjuqPZ1fMTNV9Ye/5YUrQ9CwNtemVxnELyPoVutsSiFQCRfOXUrd?=
 =?us-ascii?Q?6qH6vsD7YM3t/hrs3OfN6GP5Y0Hw10LlSFDMF73aJ7l3oYeWaYzJYseY79NF?=
 =?us-ascii?Q?TtVmoCSC2QLLqmPuz/FXRCOOFUpsMLxQde6o5dVqsDq/IKawMydbql+ytX6d?=
 =?us-ascii?Q?brEAjhBYpy6HVfYNIPYOvrYiDycxVf+Mt+Bo/DJllnuktucHWUcBEibjEHK1?=
 =?us-ascii?Q?QjqY0y0mbHLQIU0wa7Z2g1BMjDn4RY2CTRg3XG6a4q4gG1sxTueGmXY5zZIG?=
 =?us-ascii?Q?yshpNXixOZHiFujmxjvlWCWztvMO9zEge7G5JZtr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f9590cd-dcc5-4acc-3d39-08dba4be89ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 16:24:06.7238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IVLlBlFLNUunNGZInzHpmL1vwRP3HxnB+Du2TSJHcdKzH68mhK7YN/APGImwB8qH5EodQpqadXO5n61sQq/yBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7026
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/display/dp: Add helper function to
 get DSC bpp prescision
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
Cc: "manasi.d.navare@intel.com" <manasi.d.navare@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Add helper to get the DSC bits_per_pixel precision for the DP sink.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 27
> +++++++++++++++++++++++++
>  include/drm/display/drm_dp_helper.h     |  1 +
>  2 files changed, 28 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c
> b/drivers/gpu/drm/display/drm_dp_helper.c
> index e6a78fd32380..aa8ea36211de 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2323,6 +2323,33 @@ int drm_dp_read_desc(struct drm_dp_aux *aux,
> struct drm_dp_desc *desc,  }  EXPORT_SYMBOL(drm_dp_read_desc);
>=20
> +/**
> + * drm_dp_dsc_sink_bpp_incr() - Get bits per pixel increment
> + * @dsc_dpcd: DSC capabilities from DPCD
> + *
> + * Returns the bpp precision supported by the DP sink.
> + */
> +u8 drm_dp_dsc_sink_bpp_incr(const u8
> +dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> +{
> +	u8 bpp_increment_dpcd =3D dsc_dpcd[DP_DSC_BITS_PER_PIXEL_INC -
> +DP_DSC_SUPPORT];
> +
> +	switch (bpp_increment_dpcd) {
> +	case DP_DSC_BITS_PER_PIXEL_1_16:
> +		return 16;
> +	case DP_DSC_BITS_PER_PIXEL_1_8:
> +		return 8;
> +	case DP_DSC_BITS_PER_PIXEL_1_4:
> +		return 4;
> +	case DP_DSC_BITS_PER_PIXEL_1_2:
> +		return 2;
> +	case DP_DSC_BITS_PER_PIXEL_1_1:
> +		return 1;

Shouldn't there be a default MISSING_CASE to throw a warning if its none of=
 the above case
Occurs in case a addition bit for step is added in dpcd going forward

Regards,
Suraj Kandpal

> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_dsc_sink_bpp_incr);
> +
>  /**
>   * drm_dp_dsc_sink_max_slice_count() - Get the max slice count
>   * supported by the DSC sink.
> diff --git a/include/drm/display/drm_dp_helper.h
> b/include/drm/display/drm_dp_helper.h
> index 86f24a759268..ba0514f0b032 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -164,6 +164,7 @@ drm_dp_is_branch(const u8
> dpcd[DP_RECEIVER_CAP_SIZE])  }
>=20
>  /* DP/eDP DSC support */
> +u8 drm_dp_dsc_sink_bpp_incr(const u8
> +dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
>  u8 drm_dp_dsc_sink_max_slice_count(const u8
> dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
>  				   bool is_edp);
>  u8 drm_dp_dsc_sink_line_buf_depth(const u8
> dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
> --
> 2.40.1

