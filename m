Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9957738D8
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 10:06:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4008310E3B5;
	Tue,  8 Aug 2023 08:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 689A910E3B5
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 08:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691481967; x=1723017967;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=8uU3szIxmT4yLImcGpunaK9/QqEznsKHbgS+DB3Pujg=;
 b=hKpRUBMMAlVyFHunxvrnYJrYrZUm12PQyax+1nDuyR83Vfsc0CfeRgWn
 SEjUr1I0GGwUsLl53CIaiNXYMFA2QWVL92mKAt2omhBIEh+jM1W4g7Laf
 Fabkqh2DdjIqLAF+S87PONr8HSdzPZclmLiiq8TEC6cyj0DXSR4TXF9iL
 OrKkY2iGnrY5SDgnYtbclroL2sFrRgJA91jO6b3NR7D96coDE58q+/C8j
 Pp0L7/6XK808VSVrq9k/pit6c/QirdLE6WKN5HkItGzVjvlK/W+/deu9s
 OCcFOZ+AzOX/aMheO/IjgACBXakGTVBb6Q53uH1xrsDc3mh+Zgy00Kygi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="368201294"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="368201294"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 01:06:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="905131208"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="905131208"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 08 Aug 2023 01:06:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 01:06:06 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 01:06:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 01:06:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 01:06:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UFQMP8CYkvKseqeGCsSzHEeTmr00mGbYN0Jmq4fFLa+WJtvFCzpBSVghfJ5Zzfwoaz6lKTc4/iKZkEZfaO67GjhHV3/TYwP6YRHgTR6RiI1qlyJEMvHUm+YSsrwG1OsCtxanDu6nuJup5k0wJiDXlQ+uO5RO8QJqpCUgP6xCgKxWSIq4HysY8nDvfhMLfzoggMyuo2Y9G0NLaJsSOfIgFV+r7NWzv8dXltlzDN9s64d2DD0PZSvpfjRQyg5FseYpVq41F47NzzVJB8DiuKhNYIEu3g/LtMlCdNliirWsQETeDCzD5MS07PqGpLdmKu2G0w+IVxlDk5FRAN1/n7WD+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+GlIFP2YTt2xsx8kiZb9uYkvOOohJdxr3ISqy90do8c=;
 b=JKen9dLnl7+oMBopfqltE87JkEi1/IVwd2HakShoszyFtE0M6H2/RBBA55OrPtwlkQiX/I3p+Pt1YS5r7+GygJTtyO1xuFckG7zhFPPW1F20N7MXh+7DAtCLJFrLMYTpS1lRiU5oX5ely/0mvvS2EK9Hya0YMCan3CtlhMnVLydn2MZU22pQaadDgUzS6JoDtb+SL3k5lyVMAYSsc8DAHs2775ftGEPfoadS+2B0j3j3TkXnHDrrUktTrESjtBNQQVdg5aJbmX/RG1sT9W6bttftU8PrZTeCgDR+S1nO+PVXNEAi7n6ETa3z+BTyfPBQpB2AgUdAL0w33bGt16qBiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by SA0PR11MB4766.namprd11.prod.outlook.com (2603:10b6:806:92::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Tue, 8 Aug
 2023 08:06:04 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f%2]) with mapi id 15.20.6631.046; Tue, 8 Aug 2023
 08:06:04 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsi: Explicit first_line_bpg_offset assignment
 for DSI
Thread-Index: AQHZyTuXhStkqz+EYEq1pX094xcXvq/gCuMw
Date: Tue, 8 Aug 2023 08:06:03 +0000
Message-ID: <SJ0PR11MB5894B1BB026C166A4668BA91F10DA@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20230807142754.3891787-1-suraj.kandpal@intel.com>
In-Reply-To: <20230807142754.3891787-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|SA0PR11MB4766:EE_
x-ms-office365-filtering-correlation-id: afc57573-76ea-473e-84de-08db97e64fd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fOvsr50zMuNcMdkHr2BQ+QOXPT7jKPFMVKmMlIoDSuLun6M1Tgyz6b8oLNqvh0drdGJtK041UJdn4tjXvk3y2GDgJjj8L7q1IwtPEXxx0eYTOU5w6a7EEWKQTvCOppZjPlIMXb5yBdpzCRxZWJjL+a9jATYBixqv5iB/dOUujgJu6qQUJZbDcADY+Jg2FxRl1rDYxYqV1B3198YYO3CXrmGTFC63bIZd2l78Lq8j+OHFDWEY2c974bzmyCyd1FlNfM09+/gPHd4AXg6cSzcrokfOtjH7xywBuq6n3Hxd7b0IhWAtGK+0PxjSInOKN/eIGAS1N6lb09p1MQIOPdEB1oUsvqR3rTzqk/kQU0UlPNePT8IM3/6SCSEq5FSVXN3dEiaMGU+lTxZLkDFalDVLTVJ52jT4tMU5wzmxO/uziPA7qbFRE3C1VqdQX+5ZlBdR6/yXS1r75HXpmocwj6Tp/AusDtxekLNQaCBDIArjcsJ1EwuF1ebJ7ItQiQVNPhphVVEd3ioz9CTXCbgeB5tpeXmIFXoetWjg0tijmrKeyN520ZW7XrGyr4BlftmD2Yjde6sx7uUz2n3UgHQHrfvfY78xlig+pXZQh9XdAXR8AAKirTLHzbrtAPFFoWlI4l4EjT3PWrh/LQMuhS/gSDqDVce0ksz3mc+7shfiDJGU93I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(396003)(376002)(366004)(90021799007)(1800799003)(186006)(451199021)(90011799007)(7696005)(107886003)(6506007)(26005)(53546011)(9686003)(71200400001)(478600001)(122000001)(33656002)(38100700002)(82960400001)(110136005)(54906003)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(4326008)(41300700001)(316002)(8796002)(8936002)(8676002)(5660300002)(52536014)(38070700005)(2906002)(83380400001)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VfZMbgHJiwfvxO5JugtoHRR/JUGeU8nCIV9hDlYY8tv74nKHS0QdEkLdBqFt?=
 =?us-ascii?Q?eXjScBg2XqrtcYW4pSkumzIru2CwHioh5dH0MinNtWF4n4JFYxxCK2jEOLmc?=
 =?us-ascii?Q?DN1K6WoqBXwDgRLjZS8BQIWpn3zOsW7EXLkUdtajW7ucETnPi4Hs7hHnUmHM?=
 =?us-ascii?Q?PFSL4/4UHMi0u2zVlXnb9DbirN6QzUEAmXGmeYB6ZeSOvoKtBCPDxKpvw/uw?=
 =?us-ascii?Q?J07JcmvoTGNmbNz1zoDcB+Blub+3Djd8MEocvUgrQ45s5/VViz/2ApQSHu70?=
 =?us-ascii?Q?Q6kcjCc9nxiRNaggmpi1WOn9DE5n1QjnDKBo5vPOLNdSHq5D+Yl5yqS6dNia?=
 =?us-ascii?Q?WYmHDO50uriAOQkMO8nGwpvJPW8sppB95lrHr9WJ1JyCxVhOgWYUfAPHJbP0?=
 =?us-ascii?Q?XJp5F9/C+IgDLK2Acv+1ES/5eFZz0ps7YBX96I70hgcsTwa+LjWvETlJycYX?=
 =?us-ascii?Q?xOUuC4saa/Oh+F1lOblw2ji6Oy0ybhs5r5z+tfmv6ASyPv2IkY21CyaruD7u?=
 =?us-ascii?Q?PgvDUXi0uhieS3xJHjqCyU5bD48w49b+n7L6BEXx2BYOitSkb3Y1mDdlMgDx?=
 =?us-ascii?Q?6UULZuh9VT8uzwt/sntQKXw5Ejh5p/PXFe9yQzHScoFS2aSiOxW2zBPZguKL?=
 =?us-ascii?Q?B+KWH5hmWp3zk+cJcTjqEUgzq53/CxeUwWuQolAkbSYx5yeUzu1mxIF2ZlyM?=
 =?us-ascii?Q?ysolXf7PgWjx+C4sFdwtOY0rbBoqYEPHcIIq92p6Dv7qUdp2QOXOvz9FUlTV?=
 =?us-ascii?Q?bgrPx5k+UHbKaw3tlIaT7gMPxw/LkSZGqA4DwWqSoHy0kvNMFKAxboh1KoAf?=
 =?us-ascii?Q?Us0/DyXx5OpyXzeXqUgDwgPp20ulc1ItUTxyKhuCb3Hx/b9Se2L3RCxP8lqH?=
 =?us-ascii?Q?1Y1Yh62SER+o4Lfc9e1TUwcf2U6se50HSz0Ejqn+67jptsDm+1jW+bne62Ft?=
 =?us-ascii?Q?jjaD317ovoyV+a848ZgezTqpBhTtyanef8EkhmhMB3Uj6+bk6SlLmL7FFjE/?=
 =?us-ascii?Q?AsdfHOFmi99YylW9WfAGm9RbWPmZZ4Apa547RO4jftCbsCtPN/9pI4KmA+7k?=
 =?us-ascii?Q?8IeKaTRR6ywGatLn9vbzMDp0C+xFe2BmJpdffOcF2pmV2AMQ1eC9lCsM/mRT?=
 =?us-ascii?Q?e43SHP+jSOwZsTsAdtYQNWdferuZy/XO+o6XuxFsW5o0Dk/dpMycoMT85XEk?=
 =?us-ascii?Q?aKDyLaT5CpSEkagB3rvShr4BGS6TdI0b4wE1s/B5tRNfXjldbaGMejo6craR?=
 =?us-ascii?Q?bdszRXvpxRemub6f6dVCtk7fAX8B5iPXSXkytStfUxnYuUHy2O4QjBoRFEC4?=
 =?us-ascii?Q?gPvON60TH9xQfdJXRPnAd9ESZCoSN6gLOr19ab+ofdpnqAoIUJtnIEg7mNzP?=
 =?us-ascii?Q?AWfDxwVPwix5GVP8VXZY8mruEu4aTAQgS0cwpzckcle5InCKwlvQrxi0Fiet?=
 =?us-ascii?Q?0uwiqnQzuZoc2r3ash8FlO8Yh3RWCfEObkjGo7prvRVjlRsFDo2IY485C5yh?=
 =?us-ascii?Q?MW08kVq64dZgTAgIlpw75e9HsImZG47Ljg7M+zf4Ticp7xLr1cq9cy0eproy?=
 =?us-ascii?Q?ZkBa4tcqM2vhHMx64OQOLi2vMVCTXEIw6oJm1Ohf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afc57573-76ea-473e-84de-08db97e64fd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2023 08:06:03.9983 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1cWniZdprBKHg0e9NZbgseqACXism6F/+YOL7CJ0nC7MDkDcIkXuLVS4dw1w+or1sYzx+Z1nOB8I5YO0IOkxnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4766
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit
 first_line_bpg_offset assignment for DSI
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
Reply-To: "20230807142754.3891787-1-suraj.kandpal@intel.com"
 <20230807142754.3891787-1-suraj.kandpal@intel.com>
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The patch is tested and the issue is resolved.  Thank you.
Tested-by: William Tseng <william.tseng@intel.com>

-----Original Message-----
From: Kandpal, Suraj <suraj.kandpal@intel.com>=20
Sent: Monday, August 7, 2023 10:28 PM
To: intel-gfx@lists.freedesktop.org
Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Tseng, William <william=
.tseng@intel.com>; Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>; Ka=
ndpal, Suraj <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dsi: Explicit first_line_bpg_offset assignment fo=
r DSI

Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1 for DSI pane=
ls even though we already use calculations from CModel for first_line_bpg_o=
ffset.
The reason being some DSI monitors may have not have added the change in er=
rata for the calculation of first_line_bpg_offset.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/=
display/icl_dsi.c
index f7ebc146f96d..2376d5000d78 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1585,6 +1585,11 @@ static int gen11_dsi_dsc_compute_config(struct intel=
_encoder *encoder,
 	if (ret)
 		return ret;
=20
+	/* From Table E-2 in DSC 1.1*/
+	if (vdsc_cfg->dsc_version_minor =3D=3D 1 &&
+	    vdsc_cfg->bits_per_pixel =3D=3D 128)
+		vdsc_cfg->first_line_bpg_offset =3D 12;
+
 	/* DSI specific sanity checks on the common code */
 	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
 	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);
--
2.25.1

