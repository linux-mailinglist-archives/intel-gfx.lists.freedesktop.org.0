Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7DB69D50E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 21:37:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B857C10E78F;
	Mon, 20 Feb 2023 20:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3E610E29B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 20:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676925468; x=1708461468;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sT0l6ZWNxN9Cc4TlTljb2LyS6ifDhjVpnMAyuG8SrKM=;
 b=ka7o1UXSUBD0Zl43/e2x/Z/AldcC65zLK8DTSqEblVMhzVBbJ2SP4A6n
 tpDw0rDX4PcG5SkA3qdOiWaUo3QfqBJOJ+4oPZSht15soik0ejLivjC7d
 Y3zokWu+CdIhWtGOZzNWiRj+D2g+DzVKN8vsDjcH6/1HH25mFqTKl/G2v
 YNDBlr47g61TwVIdntMP0ztSWPE5Frx2Iky2LAQ2vj6LAC6w6rAmHOnSa
 SmY5kLFB/irTr0xWFJU4fd46TbEdeIBsJVsXvVoJiojehbyyvPUHYY1K4
 pTAO/2FhWdWnfQW8ijW3h/LiVe7KnH94hXCh+ZKohHWA4oQ5fsWVVaxot g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="359955413"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="359955413"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 12:37:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="814251598"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="814251598"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2023 12:37:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 12:37:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 12:37:47 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 12:37:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZFmhHLalVyBXKRD2/DdBtDhuUSU98Qs+CMgGigwJSRWEwMznzjKwfMZsre+EKbZKuubLLvQt/6jpsMTlV94rSwZUICZmZHaKJyOUt/4sTyOImwC/XiJ243ZJwOiZiPDp1ARaEp2dROlSvvyccykBWsvvrGvxGcEqa7lg8mNascf/x3VaJ8CqhTPTBcm5ATNJOUFUhxJPtpJvc0Wticx+n9nHMtvh5qnnYWs3iNmVkHJvUR3s8XOmKXBeupCeGvkazckuFnsBqN6baUMzIuCoNZQ27GwcytlKTfvMZSHwE37uoyOdYXxg9l7J7x8BX1dDa2XRnQ9NchjGrzAX35H5Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Dx3ahQGBh7GZWg/IuffTKdiHKO6HWy5Y0NDRdX3ydo=;
 b=POEJVa5SFfpgo3nDc3Hue2JwWYQ2h4x3ajTam2y5NTFFY5VDJme1nXqgA9ZY2hu1SP/yI6D911/nAndcb1kjOcAPs6AQ14q0mHHmg0gzK/sLH3N/lnsI6aDg/xcaOawh3ubGEn7qt2/VUhkWCgabMc/muR7JTWLrmAYPH5K/XEHLfYoqQx6fK+LLanpiNsL8lpaCHw8Q5r6aFTHX3iymuameGm6Rv1z9rw+uuyNampv6DiBJQ3xc+oss6SszpFRkMnx9dBjFpvLixsFXdw7ehvB4V76u5VyGxQVuDMQYfvtwE7MFmzOCPJHmTex8XXSdymgzwtVJcdTYVsmsbLC7kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB5795.namprd11.prod.outlook.com (2603:10b6:510:132::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.19; Mon, 20 Feb 2023 20:37:44 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%5]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 20:37:44 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 1/7] drm/dp_helper: Add helper to check if
 the sink supports given format with DSC
Thread-Index: AQHZOsg2SBM6GMY8y0WDGPdbI30kla7YX2oQ
Date: Mon, 20 Feb 2023 20:37:44 +0000
Message-ID: <DM4PR11MB6360BB203EFF733C19389C4BF4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
 <20230207074416.3209722-2-suraj.kandpal@intel.com>
In-Reply-To: <20230207074416.3209722-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB5795:EE_
x-ms-office365-filtering-correlation-id: d4fbf207-0840-482b-81f7-08db138251e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vFfOvhrbhChxDvyUIYMqxphr+ZYOrH1sUUoOrmC+LdPDM7WdJF1aOpz1PEjR3RhAOYDf/G1KX1/tEo/6VZC984rKI6tHdPcxiJemdRfUnLJQUsuIATDcrLi0ruM8Pt08oROm06o+J8wR7woiFgDEI/VO2U1/fmBDBIkpg32/DqL653eiYCrjlVVv46uN7pYjvpkJBGnLXfNVc3zSAx8+RZO7GgM68FN5BI68IBZWTRCPU8+caRrdA/b1rsN6Egcm+eDmUHon+P2mo/7G0kCHcCIrY/YmWAvqSsJmEWgRSPG/diljU1/ByzIpcL4QOM4dqE62mHeHc5ZSUo08DbR4ACwTdbFH2+H9+8j3mDNJi1NGan0l6UzTUzznVLQwvFWDPGQ4kFxaDDkP/17l+f+5z3/aGm988tcMRFk0hn+YBCg20xueHSnwc+8ZNTH+3YthPMwYTE4DtuYKfgiY4kZmcMGL2lBU9nlqCzhmZ/uKhCMNv0LipivR/hvSkVw6XLU4JRlmfLvGMYiymKbhZ5TEyiCs96mdNns9/XSZlEYst0rqBmhL5YpFRv+X/6TOC2mOBpuWX6AT/wdgjusyeLt0Dq/RJrG1RYXgyObjdAN9X8x+XsVRdStJ7UDOHvvq1Cali5ieiViUqgXczrRuPPsBJCgaGmhxJgND7G7zsYiFwMzxS2fBoL//nfcZZPxkANHKfkElSBInRW6ghuIxnF9WLA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(376002)(39860400002)(396003)(136003)(451199018)(122000001)(2906002)(86362001)(82960400001)(38100700002)(71200400001)(7696005)(6506007)(110136005)(186003)(53546011)(9686003)(26005)(478600001)(55016003)(33656002)(38070700005)(66946007)(66556008)(66476007)(64756008)(66446008)(76116006)(83380400001)(316002)(41300700001)(8676002)(8936002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qisjsgFaoscATfkLOe2dyEDMkzg0xtiIIZuZ8KkxhFNmlorGSwiabGQbI7uO?=
 =?us-ascii?Q?lzCqBhALSTCMaSYIV6BUiaui6Age3L49odneKX2/Lu47fsP2Q9KnW2ykqmx+?=
 =?us-ascii?Q?uy2WT9oJtIEqk0nIQUibB3lyWdrhZY+Gd7qVwn27nmP22Ko7NQLim25+Fv7J?=
 =?us-ascii?Q?fKl7/yh5pvCEAOBQX2APrDFhViw+XW8ClUtBk1xMNfA0gKgnJLXUJlsol7SX?=
 =?us-ascii?Q?+/mWKO5F6iMwerZ3I/Ff/fVjiCzgosJj/LRaHmc0QzEA649m7NjUwVOJJ4Ra?=
 =?us-ascii?Q?/6IrwDqWFrq9YDj96bXnWzsOTPRGNruYyjwbHcQzceYsTRvj0otJM4dchRaK?=
 =?us-ascii?Q?HOeIQ8+hLg2eyoj0DAIqNDDbYQdm1yVmMC6DiG3oeWNecyIyVoRTAzjTLtxZ?=
 =?us-ascii?Q?hb9yAvo0kHLWMD12mhLHxD3kigBdFylYFKZNYM4L4b0MaiZ9HWYOYbaPvboH?=
 =?us-ascii?Q?GYWrzZL/lbtOrslOuENLOqeK4lVz67MTLDD56p7Rq8IYdfmaAkhuXf5kKH//?=
 =?us-ascii?Q?HGEGpJkUCD27KhTfLksNP3y3wcZtBGCCX1rkXQLks/iOmjtkXR4j9v9797AB?=
 =?us-ascii?Q?JUMLLBjteRxlYftJ2IPW6VH66sphOLKpnuzLXz0qvVLFlCxqaVUqBSaHDfHV?=
 =?us-ascii?Q?EV0vaSF2SlPejj443Ss5zkQeq1fN1BTwDBqbm2SNVyuWu97W4+XZGxoI2fyP?=
 =?us-ascii?Q?8EvEAfUJTFTxbBVtmfMb3XCkrcStW//d9yuDOc5RwMy0uF8ly+PpcgvEX0ks?=
 =?us-ascii?Q?aI5+vyF9l9dKQ5/AxlsSg+n2kEmDx54bdx1qiVZZXBx8AjwoKUP2KVw6Ka0t?=
 =?us-ascii?Q?y8D8FkYvq0UrFlR7MqJo4CfZN9U6jpB2yWF2xH9enr81iaphlbfAusZKxodm?=
 =?us-ascii?Q?q1RAjrJP+PDVpM2achjA6yPKxBfuELC7h1faJefPNySEqeA41xZld7IOfDWj?=
 =?us-ascii?Q?/XmxWSlBvRhDyL3ZOowesTpBrrBY29ZB2278kaLUjaUl9OvMxbyJEny9vqe0?=
 =?us-ascii?Q?zjwSIqPduloFwC1abEQ6YkFabzxUspS1z4raXnjulQx9fFNvhQCrT/k2u/UW?=
 =?us-ascii?Q?cnRMsK1u7ouh0hvu70MKJufjkX6dqCWlAkp3IFVC1OgWObdt5yljXPles0tu?=
 =?us-ascii?Q?h5qdQD3BGQjLoLprIVWlMrG+LWpoQDcskrp3KlFJyDRZeezIn3koYHl2mHcB?=
 =?us-ascii?Q?v1IY7nd3ueaj3gYZ1BLo5E5nmcC9gp0LftjTH/dAPlga3K0mtf/60nV8duQV?=
 =?us-ascii?Q?WQxsqEnox12d5iWCF8o2OPyNO2ODvVmHXaEwGXPYaHm23EvShsdmpQIqyz6l?=
 =?us-ascii?Q?4v4RnOIHR94ysj5CQzgKrXa6AcKs6fD/i25aETWu7ypngFRwMWyGZSfbHu/r?=
 =?us-ascii?Q?Wso0sY/uG3uc8CD94OMQvWvfPMpq11uMFYwo30Vyn5WtZlDnxlXodMlDhcVG?=
 =?us-ascii?Q?nbLrHv/6xt7nHeZcM1qqFZh4XwxVd7Y9m9RZJ8Axr8Ae+0IvBgPrcGsnwDvD?=
 =?us-ascii?Q?CfUY9aNEEKTrMARSRyVKW1oE8mJWJA8xXjS9yurK1T/IVBTKv/VXx0khtOBF?=
 =?us-ascii?Q?7X/iyVpiYUZ7Wlwod6FAhXuLw8pZRJ/rAwTTiTcw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4fbf207-0840-482b-81f7-08db138251e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2023 20:37:44.2972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uJQwgrI303lBXDnj/eGN/tpKhZIoi8q3yPa1X1Dd2BZUWwAiXh9Rl5p1kEEIAW9xJuCgNup/enQHZQetcFtH5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5795
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 1/7] drm/dp_helper: Add helper to check
 if the sink supports given format with DSC
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Tuesday, February 7, 2023 1:14 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v9 1/7] drm/dp_helper: Add helper to check if=
 the sink
> supports given format with DSC
>=20
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>=20
> Add helper function to check if the DP sink supports DSC with the given o=
utput
> format.

Nit: You can drop "function" and "the" to truncate it, add o/p format to be=
 clear.
Also I feel this can be squashed with 2nd patch. This seems to be a static =
function,
so scope is limited.

>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  include/drm/display/drm_dp_helper.h | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/include/drm/display/drm_dp_helper.h
> b/include/drm/display/drm_dp_helper.h
> index ab55453f2d2c..d529d0254b68 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -194,6 +194,13 @@ drm_dp_dsc_sink_max_slice_width(const u8
> dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
>  		DP_DSC_SLICE_WIDTH_MULTIPLIER;
>  }
>=20
> +/* Check if sink supports DSC with given output format */

To stay consistent with rest of the file, please elaborate the function's p=
urpose
and explain input parameters.

static inline
> +bool drm_dp_dsc_sink_supports_format(const u8
> +dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE], u8 output_format) {
> +	return dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT]
> &
> +output_format; }
> +
>  /* Forward Error Correction Support on DP 1.4 */  static inline bool
> drm_dp_sink_supports_fec(const u8 fec_capable)
> --
> 2.25.1

