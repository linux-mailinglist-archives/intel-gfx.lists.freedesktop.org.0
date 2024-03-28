Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCF888FCD1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:22:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A5010F504;
	Thu, 28 Mar 2024 10:22:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UXrvdD6T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14F7510F504
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 10:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711621336; x=1743157336;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jHHTjG78AmddGujOWGh/3lB+Hwp5ZSfHau502R4W7bk=;
 b=UXrvdD6TCKXsxN/FO80aJdgDw4cT8BMRsZwECaVhwLTz7NYdJCfx0VyS
 K2iMKDnHOPdIN1AtvhUsjpt3UE6JqxuvWCBL7iqdN4i69NBAOjsjCPAiV
 LL7oUI0mlMMm9+WxMqFY39lBU3dhVudtlvTdbalZospjngbfAjSUiCWNk
 WLCuwZTw2CHvtxdxUY5dmQGZCu4B0xtSUXaFgdXwfhdxCDVdjapv2VXkk
 Cl7jMkRIOAu0iilrl7S+sXShnxNwlA4GraAe6sO2+RQQdrIogoiNM4AOT
 wSyWqGoJp215kI1T+5oK6aMZKkXSWxqv56v6z3/0Z1yig63mNDnVImGVC g==;
X-CSE-ConnectionGUID: 3IWf57lsTGGjvYmeee5OaA==
X-CSE-MsgGUID: 3x5QCRrvSHK5k47godrSqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6620846"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6620846"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21293132"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 03:22:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:22:14 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:22:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 03:22:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 03:22:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8NVc20VedOyQryHC4pPDEWCHDGmqoECF+VbfbSRvirUuwndZGJAKVQ6rJB7gIr5PFVK+D5DmLrZYYsfsKkoFF7j6l66tysi5MqYvIHI8yLBiRSjZo0FxV/LvLqUmscgEEN7+PUNrsVwcdaNod0oEMEMXs3DCicexQC9WD/1xnrctrF3X2DzK9i7U2wCoQdZpJ7Z6apcSgpan2ebFe66QreBUW5peb0E8ujqtZx0/YLwZS9K+LFBGP+143GAaVztNHsCsq4axnUyJ52bCjoNcTP3MbtxKz9vRaoKjCYkOAgKWcj+RqaQlHch9zeH3P0Ht8N5MbgnSmYRaCFLKDRSZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WfcABtaDHbglud7tqwsi9YoGzBymZ4Gmqlv/pXFVtF0=;
 b=WTpOcGblZ2ShIzqQ/dajdRFLrVYxMoiD9ReFMO/panK7v/fbemphp36jRG7hN4qu72URNl0VS/YFDgcMUjN2k/Ca6+BUrttSJaIAKwQio9/0KyzPsuV64QRG69Zfqk7TeDKooH5UNVseR2qrnogmmbv3/pZsA4UPsR62Qy/TBYGm0aqFeU5JCg90kZukMZtFj/IM9v8Axv0KvUw5rVeqGTlOBWkIeTJJkszUQbyg7deTMVqvLT5IZs7HuNdF+zT7hh5mNiq2stnkVM5Swu5Y5gBs1m0/XSAXTzaX0Cgd1PN1/AMy5NQvgLXjIAmCXx8hjZVYPs63uYfMO3BKoKHAwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB8130.namprd11.prod.outlook.com (2603:10b6:8:181::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 10:22:12 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%6]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:22:12 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/display: Initialize capability variables
Thread-Topic: [PATCH 1/2] drm/i915/display: Initialize capability variables
Thread-Index: AQHagAHSBbd1z9cQMUO6wtYcjXeLXrFM8rbA
Date: Thu, 28 Mar 2024 10:22:12 +0000
Message-ID: <SJ1PR11MB61298BE2584FD8CB82D082E2B93B2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240327044422.240398-2-suraj.kandpal@intel.com>
 <20240327044422.240398-3-suraj.kandpal@intel.com>
In-Reply-To: <20240327044422.240398-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB8130:EE_
x-ms-office365-filtering-correlation-id: b3216326-0916-4e21-9c95-08dc4f10eed8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BM7HOtXe77iA5keTnOlmcyiU3OJBvsr7ZmFYyL8uyAbC7a4/ZxiFbU2RQRsHIm0VSOMH3k9RjLIwSn5QjpslAmKLceGFhwk+Qvq3Ps9tbzlnMYBEJqBo8HchbXFAmSt+vMYjumfKL8/pB54Xc9IqrriHCALncSKxkOyZW6eCG5Mwq6ObRBtvot7lxWnonhIFd5DfyqYw07cdfbNTJetLrI7wQ/yNfgHPdPtptsiXMpU3ND60L5jk0X2nAsP5GqgwgXl1b2xFCxJ32571hALHG4NlsCUbVSJ2e+M6KFH4fyHJ/lTvqbfnop53zgpikmlUEh6YX4pBYu+O3eFfjDQ0qecFEdSIhG3250DGNBJDlQR8+Ll/XLZJwaWJcNQqolnHoq+krKE7cDYXcyDP9rrEtoIlIIHfaCEdT3v459M8Bh14OElJplbwoYnFz0e+26mF8K3lKGwI17Z5nfyER7QK/sfUeg2GAbK/LJ8gmGvfGhE50/oCyG0JNv7cWghRnNDGcVtbpygJ1uF/lvn2++Sv97uqK8djW2MlOgJgVdJisb1LAAfEeMWwCtm0hTmuPMqCeD/E3RLg4q153hu68iKBn0OLCgT78w7pct+oJDLEzuw+715uhWRdpQIm0cnmwR+F4MXtu0ydLxCwFA44gQGxxUnHnpnqgZbRGgjFUipyV+1z5r8s6pv9u+lmlGvFYUImn+QDyWs5a9xLa/qXUtGkPBGGyx/0xYozhsrRkln88aE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vcdccN59RhEPuChvdf9oNssRPMhs5phxR975m142Uhf1JtUQSQCaxeFiPzop?=
 =?us-ascii?Q?fTrB5uucZQfajuPLPQs7Z/FWpa+tEzrqx4uTrjq3becBLf+36BRWpzZTBWk0?=
 =?us-ascii?Q?L/7gLOlx0dEfzYywP6vXbBSJC0w4AWrD9JeYLyAtmBUIFZo1rqNfuQd851/Q?=
 =?us-ascii?Q?WG8NvKXsGF3V49FHFwFa4XtERd/S7+pFGcs6xpg37xMoznQ17iW739hdin/6?=
 =?us-ascii?Q?zyzN8jgx8Bgulk3bu49v6I3qyDzsxnhtn/sENWQB6gHF6F/m2NHajxj3Ns4j?=
 =?us-ascii?Q?8/H9bSlDSNMJKpSP9l7JguLUvnKNC8FioJJFFSiTZtOjQz8Ygx7rMDscUAQn?=
 =?us-ascii?Q?X23moazoqy1ZR9M4zaUe3ppejGuBjSVN2MtwWr9nSGikPcdMrVODpymfrnSn?=
 =?us-ascii?Q?hoPP+mAkLms3A7KWYElWbUlR9/HGBI3b/fqyDBiYAihtgRjpyWdAXQpa9iZi?=
 =?us-ascii?Q?QR10QdU662VA8PFa7mgklE3O1/TkqlihKNahewhbXI2JHo25z47Qr6mUfZ1Y?=
 =?us-ascii?Q?TLhkchWS9R6ErmnU2suD055Ly6/Oz2Qu32+rlyYmRoIAKNu6n9pa1LTPu4d7?=
 =?us-ascii?Q?WLiWGQoqtgNvLS4S3iMstIG4IcOitt2yz0l2U363m+GjjEzLcXD++10KYLy6?=
 =?us-ascii?Q?peu8wlFTHStjc3I1mBOE+X7iClvYU55CFEehgbd43uVj1ALZL7pXoi4C5pIb?=
 =?us-ascii?Q?U2VZzKzsaY1AUAukl0AUKV3LaXO/LBy/zJC5iNafCWlFMaK4S1Y6JS8Sdm30?=
 =?us-ascii?Q?qm0tW20ak+969sjruCCSgJqKl841CaYZi0/olBO5H2yWEjuu4FMWG+IAbKgp?=
 =?us-ascii?Q?gxzSTMWCMqR6/+CRU2KjsDA69F515lT5MfCfaxxvIA86yescEWJS45m0dDTN?=
 =?us-ascii?Q?y7YueKvl9tlI5CiPRxwPQip07QAI+nXaloO2VmNieDNG6tKeM2rfk+0ExPDl?=
 =?us-ascii?Q?zi4cLupKbTCeiLbXAGaif+zz+9kO/qqePdUzKj9cM8bsFjDAr03/G+AxoHiF?=
 =?us-ascii?Q?a4meM9NZOE2zxXKENE+WFYbzyUt0lu+3pB8iHT7ZtucE0bdv3fK+A3Ws/0eR?=
 =?us-ascii?Q?Lziy6a0HpTh1HUEvaNdnRG0mwj7RhQqKl7VTHnuhTUsk4BljsQiZ9i4U4jSa?=
 =?us-ascii?Q?anPrx98ov+ecb9GEbPmCmz6n2qd4PbpoaLK1b1xRhcGsws37/p0mvsHVY9Gk?=
 =?us-ascii?Q?I4uaa8Cf1FLI+89x4+fSPSKiiNj8+dUgQrG2DgX/eOTQMcoYr6eeuVZtSZ0W?=
 =?us-ascii?Q?vzcmfQNQ+CvYNYdHV0jHeH49ttWJ7lIrr2HO4g9gAxlnk7gruHtSyRX+RHtP?=
 =?us-ascii?Q?RfIpUuOyQcx84n92l84m+ETSBj8v68siI3y4/14RfWV2z8LSKDrz+HKDLOvC?=
 =?us-ascii?Q?CaEZhEX7izeyyCotJBHWxUDYfYuz70pMQI/A+XleFykIpYlmVCd7tFO5YMjn?=
 =?us-ascii?Q?okymTDWGJkXG9FtI6EbqjMRa/DuEMsKofFrS1Lj1eSC1dahQfF/Oxxd3F1v8?=
 =?us-ascii?Q?ga1+IfhmUbbGMEBiKz+tKwGw0S6U9Z7GltIx8Ah5NDWLnNoLquhOVw9bFlWu?=
 =?us-ascii?Q?ibaAf5xFGX4GmabnItzLZs5yk7iGlhlMhbL3ixxFVI/bHN32Adty/H2KKQuf?=
 =?us-ascii?Q?Pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3216326-0916-4e21-9c95-08dc4f10eed8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 10:22:12.4618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T7TTkiR4Ab3BocRap7hrxo63Gebggf7HD7BQglvnptcwiR0g1kagz9wgBb2GWkGOfMaQxKV6GMOTxw+vpVj9GcMHxpSDYAcIpeX4GImT9iQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8130
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

Hello

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, March 27, 2024 10:14 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/2] drm/i915/display: Initialize capability variables
>=20
> Initialize HDCP capability variables to false to avoid UBSAN warning in
> boolean value.
>=20

Nit: I would add the fact that we need this change because the functions fi=
lling up these Booleans may return without actually assigning values to the=
m.

Otherwise, LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>


> --v2
> -Fix Typo [Chaitanya]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index b99c024b0934..95d14dab089e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -191,7 +191,7 @@ static void intel_hdcp_info(struct seq_file *m,
>  			    struct intel_connector *intel_connector,
>  			    bool remote_req)
>  {
> -	bool hdcp_cap, hdcp2_cap;
> +	bool hdcp_cap =3D false, hdcp2_cap =3D false;
>=20
>  	if (!intel_connector->hdcp.shim) {
>  		seq_puts(m, "No Connector Support");
> --
> 2.43.2

