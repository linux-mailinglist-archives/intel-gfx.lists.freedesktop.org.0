Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE4A76EF17
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 18:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5335510E629;
	Thu,  3 Aug 2023 16:09:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A04A10E631
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 16:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691078950; x=1722614950;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UYxjyp9wEf4saZCcNIK39JeWgVR/AAG1BoK7CuyIdhg=;
 b=KKEJi5G8lQoPlNZIzqmrWjDUtCOw3YxKorz1cXL2JzzHyuH3iy9Gnrps
 UdxpiBXVDOg4kAm/td4VD5GRqfg8ubCHL1UTw7CrpH9++OTkGavKgMqpu
 WBvFsfuNtdH8Si1HWpezCc0t9Zk2XpuDYr0FBpSf04QbigOqCnD80A2h8
 VuIX5UB4+XLuoIqGWwcPcjQrAvHyKDJSHLCeDdoCSfk6YT/473O1qu4un
 CCByIwUtPAjQQAqm6HI/iqKFteXktMTb63ImLjG4w/uNjb9x1EcyUwP3d
 DzX6PaQXgeaV5g05vSf7MICg6QBciRvD4TNTJXPUWAZUODL55Lwbo34/2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="369915325"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="369915325"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 09:06:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="1060330372"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="1060330372"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 03 Aug 2023 09:06:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 3 Aug 2023 09:06:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 3 Aug 2023 09:06:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 3 Aug 2023 09:06:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VtGo1bpZ+UNf9KAhhovxUxajF/36Kcq0PDyMCbpVT8tK17zFCdJMsF5tjq6RPc2+R3WWnzm1dE3PNKUfldqSnSptPoI646nLDZAcRUI0RL8oaIbAAD2WWgva9Ay/qNP/s1ZBb1r+BRTxNlNrlyqAMberCEfafhTJqy+u6ngNwfkfU1aXFgisfPmYvQfUEOEEsLPS0iU+bVqohQP4ChE8GzuS0dZLP9oX21wAxbbKj4AeIhztuNW4OUC58Ynt3DCTo0AT2Fz3xNblSb67gFffAwM4jIZN4NEvP9i/uuEEphnDyTjXOIoh5chbBycziEc2Ofrecns0hVwLXRooR+4xdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v2MgGmSGlt6w+aIcOO3CZAw4kJXZMhloRYHeRTKECcU=;
 b=l82NaQ77uwCEgCy5dvMnoHQz9Zk4qArYoJfuTNMBHPYgkPoFC/Oe4RoW8ftCEvKib59qjeZUED+d7FMeJ69sDIRwfoiyH1Po3efdVhIrVDcgH8xWd7hSXgcrWxeRuZjK+IQahPQEe01+za8hQNS2OUmPirE4L9i8Tiq0TIdBrvLV63qe0XYS8wt3Ccsss3HMsekzhgSoAHxl++WEmaT2rXzJJ8omUaxdVibnSCas0zmtPEKaDoLky/F6dcJwNQP+d2BqzmwsGdzzlgLNtozNgFSNEDtdwBzeGg4Pht270y1o1wrtwCIol1C7SufgokctM9N2uM5/YC357p2HuKGnpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7316.namprd11.prod.outlook.com (2603:10b6:930:9f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.20; Thu, 3 Aug
 2023 16:06:03 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5793:4b53:8813:e10e]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5793:4b53:8813:e10e%7]) with mapi id 15.20.6631.045; Thu, 3 Aug 2023
 16:06:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "20230802101541.10045-1-william.tseng@intel.com"
 <20230802101541.10045-1-william.tseng@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
Thread-Index: AQHZxSpmSyDyXXE2FU20YdebZom9eK/W2PSwgAAIggCAAbZDAIAAJisw
Date: Thu, 3 Aug 2023 16:06:03 +0000
Message-ID: <SN7PR11MB6750E2A45BBEE07C6ED57BC7E308A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230802101541.10045-1-william.tseng@intel.com>
 <SN7PR11MB6750B10DB5BDBE772C71ADE8E30BA@SN7PR11MB6750.namprd11.prod.outlook.com>
 <b376d7be-b1b6-e23a-aca9-22ea33f39e15@intel.com>
 <SJ0PR11MB5894A7C14B9AE624665B36C1F108A@SJ0PR11MB5894.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB5894A7C14B9AE624665B36C1F108A@SJ0PR11MB5894.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7316:EE_
x-ms-office365-filtering-correlation-id: d6572210-1c99-4a99-d6bb-08db943b89b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kLKkquAvs2PYIRzuxThQu4Kr7yXewnMrfNNGL6aocd/c2d/hPGMbm4EE/Qy5HO8ZN+pJb/2bfSmYVEAPZYLzwxU3lpNIBeRUCyQp0mjHBqp+Rju41VPfD5SM4AFTYkzFVtKy1SfBIGAZQrXoF2Cw/7w8kLVtZJr9Zla0R0pQtTN11onFw8f5mdHql5L8XRa7vY3om3PgEMSnv+sHfvOLBCVg3O/RvQGIAi6qjg0levQuGm3nEWucXiaNAJxoukwoYbZDT7gCtFmq5XePxL+QLODBoztfqCUkJxhFNWq0iuldfYb2gTTjfFQO6SA2wJzqPLLPMOUc1B9Wia5ayUIbe5R1SaZAgMyPaN/0hZ2faXBOIzTU0otLbUZanoV16Mys3mxGUOR/YhvUiS3WlHEKjxKIZAb0dLzJn84kJqGkqaJex7mKXwmdWnjCuBrHFTi8qMEXpAEDyZiO2o3YswUHiCzLaO4fBZyxpnVd9bWIFyYrItqDn2lPm+Pr4y5NwBQgyWW8sC7jWYBiCMOc3G951/HlM/47vPESDNMilrwezIxZKcHopB9OsA5AZxO/TzvyObMPzyNulLI4HtEv3xeYOQ8eSgCilfZWz84VG9KQYXosesUvgAGxis1bhXCOlQ6H
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(376002)(366004)(396003)(451199021)(53546011)(107886003)(83380400001)(6506007)(26005)(186003)(41300700001)(8936002)(2906002)(4326008)(76116006)(66446008)(66946007)(5660300002)(316002)(64756008)(66476007)(66556008)(52536014)(8676002)(9686003)(7696005)(71200400001)(478600001)(110136005)(55016003)(38100700002)(82960400001)(122000001)(33656002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?koi8-r?Q?InV4POkZJ5K3c1UY0+Gsa5dHh1cx2HCcFlqab9P+HQbiXYEPQREnjNhCSkKNE2?=
 =?koi8-r?Q?BHKO6o2DlWdXue+yQv/B5LaMw0t+xsvEA+KNNctH660JS4ZpwGnQOo5jT0Hy3p?=
 =?koi8-r?Q?IxzJpmx5yYUtleMe3QBB1STmD92HyTFUFJ8bi7DjyEMecN1fRmhD4LCF8kHt35?=
 =?koi8-r?Q?FiuZJoUCPM4Xw/OXZqi4K6cqlBhQu6GQ7O5vOTa7iUitf4cHDkq3zbfwZ08JLh?=
 =?koi8-r?Q?MgoTJ3zA2l/Wdzq5s/7LgSXUBDCFzaSl4ZJYJu5HZefDdwxX+S4gbNs2GPyKMQ?=
 =?koi8-r?Q?cGNlkS4hcqF/2Oi0zSvGdpjrVj7Aoyp8uArkDyFPmOH8H+EeDa7G0ukMB6en0D?=
 =?koi8-r?Q?R00knFuICYbfLMcQGVJ2AToGGoJTbzEvfovIwSLrxjw+dZiYTfj9HqOQZiiRQ9?=
 =?koi8-r?Q?gRrY7cqdHubAFY8gM5Xv/r5zltWVvoa98tiWAQyvQ4wkFRqIw6aYCocqBQV4lx?=
 =?koi8-r?Q?sYO3UDsZVUTmohANsExdMK43KXxWdJF/FQL5DYuL8vh2Ao28x+37ZEKfraiVMO?=
 =?koi8-r?Q?cTi2P/dGs01tNwzG0zcnoFMgOFswNuqI4pKhcEyJo8w4mEHN8YeBp1wbPgXBtZ?=
 =?koi8-r?Q?fHE9ESLfMQVyv0hxlMqauf4IFb04NWfhmuzuMY1yy0dr2Bw4Yt199TCFCeW5tW?=
 =?koi8-r?Q?ZOWZLob/GvppHd5/6+0aqQHftM0Zg39VNQD/5iA0+5opSrhMT4uZnwENgSDqM9?=
 =?koi8-r?Q?/5XBPlekEmP4EQ7goVh8pA08g1H+CL3OrB6IH3oNrPBP2lmWKPu2czqFV4gvpB?=
 =?koi8-r?Q?EdWJoRUJpKsjXJDBoiKzR8776Vu2zmw+xvnPqWzdQi/TS8XSXopgH11Luu7gLb?=
 =?koi8-r?Q?U5qqLlODoxWSuEJEDqyuVGbAkow8sluxip0X9fZ/ddE/s5FI2K+KCiLTTk/VTP?=
 =?koi8-r?Q?dhOSYgskVKMw7B3ro58CwN+hpSVuWd7GI+J8nymMaaPnVd5dBLwo9u5woa2UcT?=
 =?koi8-r?Q?YYvEFYDk0KlKPBTcxB8G2s3PeX+sPYSzLVfhUuP04DVkDgiazZum32tplb9HFj?=
 =?koi8-r?Q?FfZH9UYh/m/GZJ7RtySg1rs61g9e2D6Uxhxgsdi9c2n/5+c4iz4lV3gaWntc0y?=
 =?koi8-r?Q?fy9Ch3ORqFjOLCZuS/e7gorIN0PbobUTV/GXTKwJxFBoVqJzjTcLAoeyFIVRzS?=
 =?koi8-r?Q?O2WYRsrqmCU4E+ItvcawSoPPEzyRH40oo3S0LwpnrYsvZA6bKmxLBIsF4YpFxK?=
 =?koi8-r?Q?ef+fJxY2TebsmJli/pMetePaKjSnbgmfH71dspZpcIQOBpYbjpJPWPm1u09ChU?=
 =?koi8-r?Q?S1obFwO5cYDw87CbJHLVMh/OqztbzvQgajJGvx0DGtRRjc42BMuTjt3zTP6hLJ?=
 =?koi8-r?Q?iFlr4E+SaqhpLaKyfsKtH3BghCriPDEP64UPDQH3mocRDM60eOleFr+zjaTP9X?=
 =?koi8-r?Q?/XkqF0G57qs0OBsbNkbo3WDBI2E2Nc1bJM8fnqjy59xufcs4fpkKX/mybVa1h/?=
 =?koi8-r?Q?x1qycnPMr8ZAANuTG+NvA9SISB+/f34lVkyy5qJGIaUAdIvD/1hXHcw0nZJI6b?=
 =?koi8-r?Q?J19hNJQYnsBh8vPaTR8SObJq2oYUEwUKN9X8BIJhp+mTtGVYn4?=
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6572210-1c99-4a99-d6bb-08db943b89b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2023 16:06:03.7122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q8p4ruX73K+UYv+d9U18ah13ZCxYXNSRdj4qnj3ZqB0lp7thioG7jc07HgNoeFw/G3YC8D/gGjhzFDkIQP6Q/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7316
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

=20
> Thank you for the comments.  It seems the correction is for DSC 1.1 and D=
SC
> 1.2 at the same time.
> Can you submit a patch for the correction?  Because the original patch is
> specifically for the original specification DSC 1.1.
>=20
Hi I have sent a patch fixing the dsc first_line_bpg_calculation I do not t=
hink after that fix this patch
Which is specific to DSC 1.1 will be required

Regards,
Suraj Kandpal
>=20
>=20
> On 8/2/2023 4:45 PM, Kandpal, Suraj wrote:
> > 1.1
> >> This change is required for DSC 1.1 because the current calculation
> >> is for DSC
> >> 1.2 and may get a calculated value which is not recommended by DSC
> >> 1.1, for example, the calculated value at 8bpp becomes 15, not the
> >> value of 12 recommened by DSC 1.1.
> >>
> >> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
> >> Signed-off-by: William Tseng <william.tseng@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_vdsc.c | 17 ++++++++++++-----
> >>   1 file changed, 12 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> index bd9116d2cd76..9b350f5f8ebb 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> @@ -72,11 +72,18 @@ calculate_rc_params(struct drm_dsc_config
> >> *vdsc_cfg)
> >>   	int qp_bpc_modifier =3D (bpc - 8) * 2;
> >>   	u32 res, buf_i, bpp_i;
> >>
> >> -	if (vdsc_cfg->slice_height >=3D 8)
> >> -		vdsc_cfg->first_line_bpg_offset =3D
> >> -			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
>=20
> This seem to be incorrect as per the spec this should have been
> first_line_bpg_offset =3D 12 + floor(0.09 * MIN (34, slice_height - 8))fo=
r
> slice_height =99 8
>=20
> So instead of rounding up we should have just divided.
>=20
>=20
> >>> slice_height - 8)), 100);
> >> -	else
> >> -		vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg-
> >>> slice_height - 1);
> >> +	if (vdsc_cfg->dsc_version_minor =3D=3D 2) {
> > I think the check here should be for minor version 1 and move the code
> > in this block to the else block and vice versa as this 8 bpp corner
> > case is applicable only to DSC 1.1
> >
> >> +		if (vdsc_cfg->slice_height >=3D 8)
> >> +			vdsc_cfg->first_line_bpg_offset =3D
> >> +				12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
> >>> slice_height - 8)), 100);
> >> +		else
> >> +			vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg-
> >>> slice_height - 1);
> >> +	} else {
> >> +		if (bpp =3D=3D 8)
> >> +			rc->first_line_bpg_offset =3D 12;
> >> +		else
> >> +			rc->first_line_bpg_offset =3D 15;
> >> +	}
> > Add the section in DSC spec/ Cmodel from where one can verify this in
> > comments
>=20
> I think this is coming from the recommended/ required value from DSC 1.1.
>=20
>=20
> Regards,
>=20
> Ankit
>=20
> >
> > Regards,
> > Suraj Kandpal
> >>   	/* Our hw supports only 444 modes as of today */
> >>   	if (bpp >=3D 12)
> >> --
> >> 2.34.1
