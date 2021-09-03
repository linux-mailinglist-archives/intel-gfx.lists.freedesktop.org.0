Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 232813FFA00
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 07:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49D906E095;
	Fri,  3 Sep 2021 05:23:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C879A6E095
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 05:23:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="219392072"
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="219392072"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 22:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="578511136"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 02 Sep 2021 22:23:36 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 22:23:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 22:23:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 22:23:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y3kUOBOyqNJPUjJX78nzBKvAV6ekaHbKjaurAzRJ6kgCBCfeEw524N/K1ycQPZZrLzzMJjIalFgN9zWJniQS6Eyfp6UQR8N8yM62Ar+tWd5IIn3QBCCuGOiXhGAizXZN1BmUQgkXZ9BgKSzrs861wq/NlTM4AM8Gumvp/mOWSBy/GYxMbFNKJmpr6NVcf7ogzQnqL98erxuki59N6eIcDlAUcqccPhl0IrQ3bs+YIsoTmtGpAAWBQmZN2fW9XSdwJ2B8Cr3PMMkxwUFxxjwGe8+crqbwU1uIla7RETgLYzEE0bnCJpFbUT28oWiI2SNvMcgqX/Mf03s8WBiYD7kIgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+QYMc+kMBSgEafPLEh6l4vpKkGtSy9MwjC4Mg4O8IEM=;
 b=ClCHXdV38G/9VjtlwNLXhwcnfGvrn88Vstr63jSat3kAx12GH6mtaBmbrriT2muHySkpcCj8O3MVk4VCdcsrPgCwH+/DOwF/5zO7ORT96HCLJu+MieqsXKkkuGRKh8R9Urg3U7NtWeHReTE8caLIrpwMLgBcTleMj/eLh95ydHlOTJ3ZKEALOI5NHha9xIroU+wY/6M4S/yf1bdjm1JR6neHJwsmoFu7GoHkTQx5lA8ma5e5wSDv9OhfiuMoNurJ8FGcvUshiqqI/C+fXCuI2LlAGJt+txy7AtcQBHvgy7rux/edHVUlBKAFesHqku5GdSXL/vXf9fzoMtLzoLqyPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+QYMc+kMBSgEafPLEh6l4vpKkGtSy9MwjC4Mg4O8IEM=;
 b=zR65gvxjYkpDuL6k89IZpHp+O30gjfvxaR8W1NwkGHTeKknqS8WaQ8SuPORZ7z5+p/ZCx/5maNXQGyBIuzuEvXoakCWf9tsLHykaZtCGauKmlg4NOqnqimJGtXcP9aj0qNTHCxRxvWC2jxso1q2vDjATdfyOQRAdQnQOfZauPMo=
Received: from BN9PR11MB5305.namprd11.prod.outlook.com (2603:10b6:408:136::18)
 by BN6PR11MB3859.namprd11.prod.outlook.com (2603:10b6:405:83::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Fri, 3 Sep
 2021 05:23:33 +0000
Received: from BN9PR11MB5305.namprd11.prod.outlook.com
 ([fe80::bd73:7a75:ffa0:ae5a]) by BN9PR11MB5305.namprd11.prod.outlook.com
 ([fe80::bd73:7a75:ffa0:ae5a%2]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 05:23:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Li, Juston"
 <juston.li@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "seanpaul@chromium.org" <seanpaul@chromium.org>, "C, Ramalingam"
 <ramalingam.c@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 2/3] drm/i915/hdcp: read RxInfo once when
 reading RepeaterAuth_Send_ReceiverID_List
Thread-Index: AQHXlSrbo3fWAbinE0qoy2Hia8eCbquQzNfQgAEQRXA=
Date: Fri, 3 Sep 2021 05:23:33 +0000
Message-ID: <BN9PR11MB5305FB4F6027932200B15E85E3CF9@BN9PR11MB5305.namprd11.prod.outlook.com>
References: <20210819184835.1181323-1-juston.li@intel.com>
 <20210819184835.1181323-3-juston.li@intel.com>
 <9b05d24bb4944e5b9742e83b6c3688c6@intel.com>
In-Reply-To: <9b05d24bb4944e5b9742e83b6c3688c6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 052c4dd3-f197-4849-1767-08d96e9af963
x-ms-traffictypediagnostic: BN6PR11MB3859:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB3859BF20C4CDBB538C3AC592E3CF9@BN6PR11MB3859.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g886wYfOya1aOG7QvdnCyCfGBX18yq0D40o8iHCNIzzkzlHcDKGdXIiM9LMMRZoQJAC4WaZG5lFG08HxbpWF9JYhHKaIlG34YZu/s0sptpxMr7RQtxeJhnb6uiWRCHu6y+Dkwv2yCveyRngCp9I77g2m8Gy26hO0aa96jaekaGSUSxBNaBlyRlFNeK4pK9iqOKsaCV16A+XQ4xb/WJ+WuRgSLCZNKGFmPjrzBqfO6br9txWTWUWpYTF30B8YmSNc+8toGCotLodHzBI35LtQXaztaknq8uBfPXe8VEnOwp64bk9Dy/gXN2VJoUNfr6PU9Q8pXJu5Z6coApKG+XP8vhYMK24eRWojWenq/vZbN+mczlC9tqDFObLWnz6ygEeHHJ6b8ZwIESeU4krciugql8NSc2acapOA0NrzZNgy/AwNmImjNHL9WmYlHhMVR1MFaNHl7W3Xg4+8OL6T+nplTeyhkPjEBs/h2zlwd5le0bQNhD3XX+3yJaC2ImixQj+Fjzzwj6Tk3uD3XlvWF6VtrcasmKLTpzbOeBniynXXliRjbpZN0DyjK9YWtpja7CK3cW/zD1GWLOpHFAuGWHJ4+T2aAa2//Y5TM3WnvUJGeqE/QcdkzNzJTCPROfVibLYPTp5KOVZDbQiSpnQ9jsEegeNyx3VF/6yWf1JX9csEYaiDK7DTqTIMC1OOMcG/MkNQAB8UUJJjssQ0UgGcfP/4Ow==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5305.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(4636009)(136003)(39860400002)(376002)(396003)(346002)(366004)(55016002)(26005)(71200400001)(107886003)(4326008)(478600001)(9686003)(86362001)(8936002)(52536014)(76116006)(38100700002)(2906002)(66946007)(33656002)(38070700005)(66476007)(83380400001)(122000001)(316002)(54906003)(110136005)(186003)(8676002)(64756008)(66446008)(66556008)(6506007)(5660300002)(53546011)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zqpzWEvr2G9eO/FEoN42tpzbfvkz45B8QDN9KZkRtQ38mkJ9FWM4/FasRnhx?=
 =?us-ascii?Q?SIDPOXxas4TtkTLUv2Qy0zBH3NvLLpBcPgwJDaux2x4BGNpuYwP6Mqqgn1AA?=
 =?us-ascii?Q?MtD6qmesLlKnyeQ5iYWk4KUaIACOeVFTstgmYP+jTHQE2+49KL/t0kKU7n5f?=
 =?us-ascii?Q?bgEXh/h/RiZBpIYPwA6ceaumrX921DPGkqWdaoXARnZckXNmrhia92NOwulY?=
 =?us-ascii?Q?LVqISi7l6YZ23bsanRiEAywXQvC8QjlDMfR+XTDpPgIcs2YC9DfWpItLLZl6?=
 =?us-ascii?Q?0grVDhlzZLFMHPQc513vEqcpGrqcAJg7X12aJcDtN+ywoYrzuPyETvQkwYe4?=
 =?us-ascii?Q?U4TIFq+IOF5qGVA7sqdBrkwiqFynDlyxhOkd803ZygrnuL92tjpxv85qpeAH?=
 =?us-ascii?Q?5sawzdJhhMEE9CkMOPGMJ1GV7ky+UuMNQN2RVu75648L0E5V/NAR4wA+OMRs?=
 =?us-ascii?Q?sdfNdqLTUwsrrOzLAnK1hkC0fMhlD1n6tm0SlePGqdfV5zsThXf1PKYUjhJM?=
 =?us-ascii?Q?bMvsHzwwnsZ66YmqwXrvNPehPdD3qvuEwxUXl2loAoxvTXR3/eIjmnv7dklN?=
 =?us-ascii?Q?U9L9HQSHcrFGFspCWYD8b8pFZyinJ+gMBkhhS83QT0+AsCdhhmUnYLQbhbkF?=
 =?us-ascii?Q?xZnqglk6o+pe/8eDhuFlHkSuX6XN5yESIc0HzXc3Hg93DQQiByGbB5vKH8LG?=
 =?us-ascii?Q?vQmi3+zAsHnlSXN0EImsPU3aqlQ4Wn+DbozOXiVDN70mjYj6FJW/Qe4ZCvl9?=
 =?us-ascii?Q?79tgZYam/KqM+C0rLQjmATIVr6SFFQQdU69qZgiUDwMA6TjEM8oOLdkS5cCI?=
 =?us-ascii?Q?p31UL1xisTRDaHot8l4xsHTqy9U5wjWpHBxTE4fvHinYnN/FnlryOhc1TSG3?=
 =?us-ascii?Q?KJtuCf/KfQXs3c/1oNPHVcd/FLiHZhWI+8PzuBzMIk8r53wB0o4CvuKN3wnS?=
 =?us-ascii?Q?BRQDpBmAeZplGyBTfxM9kHAp5HZD8qEhkl9ZzXZJhZa4qxfy6T9rNrvMak2R?=
 =?us-ascii?Q?B5iyfjua6PdoAB55FhByrCTmKrct7F9/+hUbVK2YlKJvhtzMkuIEwD1B/R7a?=
 =?us-ascii?Q?Q+VcTEU8l8Xd4+hJp7naQEqJ6jL+Ftt7dtKDgtG4Qhy2DfO/1L9Wvk0TxsOB?=
 =?us-ascii?Q?LerUNX/LcTpZcnxPwS0vIu2cR2+6XlU1AMOk9PhVk6jBsNeiAHfzN2QgFyy2?=
 =?us-ascii?Q?4nzVCFY1K3psvsJVWiKPDcJKsaPC2h+nwY714UacZmBdB0m8iCowTE6dhX0W?=
 =?us-ascii?Q?N2WmEBR0zJ+WySD91wqpnxciCUwUhwEMILE/6aeOs13oyyMk/FtMRNa4+FP9?=
 =?us-ascii?Q?ThyY0ihfV2kc8C4lYV3RSJMI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5305.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 052c4dd3-f197-4849-1767-08d96e9af963
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 05:23:33.6630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FXrHGFpmrN9xh+nIn7r3sLREhp5KIODlySUPNJznojDrNN9UmkWU7FN7FhoXnArlQ6hRryDB+NqPvkPA2zo1yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3859
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915/hdcp: read RxInfo once when
 reading RepeaterAuth_Send_ReceiverID_List
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

Hi ,

I have tested the patch 20856 against ci_drm_10499 and the patch 20921 agai=
nst ci_drm_10537 kernel using the IGT kms_test_protection test on TGL platf=
orm with the following setups:
- HCDP2.2 Monitor connected to HDCP 2.2 Monitor
- HCDP2.2 Monitor connected to HDCP 1.4 Monitor
- HCDP1.4 Monitor connected to HDCP 1.4 Monitor
- HCDP2.2 Monitor standalone
- HDCP1.4 Monitor standalone=20

I did not see any delta between the Patchwork and CI_DRM kernel and all DP =
MST Scenarios seem to work fine. We can go ahead and merge this patch.

=20

Tested-by: Suraj K <suraj.kandpal@intel.com>

-----Original Message-----
From: Gupta, Anshuman <anshuman.gupta@intel.com>=20
Sent: Thursday, September 2, 2021 6:39 PM
To: Li, Juston <juston.li@intel.com>; intel-gfx@lists.freedesktop.org; Kand=
pal, Suraj <suraj.kandpal@intel.com>
Cc: seanpaul@chromium.org; C, Ramalingam <ramalingam.c@intel.com>; Vivi, Ro=
drigo <rodrigo.vivi@intel.com>
Subject: RE: [Intel-gfx] [PATCH v6 2/3] drm/i915/hdcp: read RxInfo once whe=
n reading RepeaterAuth_Send_ReceiverID_List



> -----Original Message-----
> From: Li, Juston <juston.li@intel.com>
> Sent: Friday, August 20, 2021 12:19 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: seanpaul@chromium.org; Gupta, Anshuman <anshuman.gupta@intel.com>;=20
> C, Ramalingam <ramalingam.c@intel.com>; Vivi, Rodrigo=20
> <rodrigo.vivi@intel.com>; Li, Juston <juston.li@intel.com>
> Subject: [Intel-gfx] [PATCH v6 2/3] drm/i915/hdcp: read RxInfo once=20
> when reading RepeaterAuth_Send_ReceiverID_List
>=20
> When reading RepeaterAuth_Send_ReceiverID_List, RxInfo is read by=20
> itself once to retrieve the DEVICE_COUNT to calculate the size of the=20
> ReceiverID list then read a second time as a part of reading ReceiverID l=
ist.
>=20
> On some MST docking stations, RxInfo can only be read after the=20
> RxStatus READY bit is set otherwise the read will return -EIO. The=20
> spec states that the READY bit should be cleared as soon as RxInfo has be=
en read.
>=20
> In this case, the first RxInfo read succeeds but after the READY bit=20
> is cleared, the second read fails.
>=20
> Fix it by reading RxInfo once and storing it before reading the rest=20
> of RepeaterAuth_Send_ReceiverID_List once we know the size.
>=20
> Modify get_receiver_id_list_size() to read and store RxInfo in the=20
> message buffer and also parse DEVICE_COUNT so we know the size of=20
> RepeaterAuth_Send_ReceiverID_List.
>=20
> Afterwards, retrieve the rest of the message at the offset for seq_num_V.
>=20
> Changes in v5:
> - Don't change the offset define for Send_ReceiverID_List
>   When reading, update message offset to account for RxInfo being read
>=20
> Changes in v4:
> - rebase and edit commit message
>=20
> Changes in v3:
> - remove comment
>=20
> Changes in v2:
> - remove unnecessary moving of drm_i915_private from patch 1
>=20
> Signed-off-by: Juston Li <juston.li@intel.com>
> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Adding Suraj to this thread.
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31=20
> ++++++++++----------
>  1 file changed, 16 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 1d0096654776..fbfb3c4d16bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -496,11 +496,10 @@ get_rxinfo_hdcp_1_dev_downstream(struct
> intel_digital_port *dig_port, bool *hdcp  }
>=20
>  static
> -ssize_t get_receiver_id_list_size(struct intel_digital_port=20
> *dig_port)
> +ssize_t get_receiver_id_list_rx_info(struct intel_digital_port=20
> +*dig_port, u32 *dev_cnt, u8 *byte)
>  {
> -u8 rx_info[HDCP_2_2_RXINFO_LEN];
> -u32 dev_cnt;
>  ssize_t ret;
> +u8 *rx_info =3D byte;
>=20
>  ret =3D drm_dp_dpcd_read(&dig_port->dp.aux,
>         DP_HDCP_2_2_REG_RXINFO_OFFSET, @@ -508,15
> +507,11 @@ ssize_t get_receiver_id_list_size(struct intel_digital_port
> *dig_port)
>  if (ret !=3D HDCP_2_2_RXINFO_LEN)
>  return ret >=3D 0 ? -EIO : ret;
>=20
> -dev_cnt =3D (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
> +*dev_cnt =3D (HDCP_2_2_DEV_COUNT_HI(rx_info[0]) << 4 |
>     HDCP_2_2_DEV_COUNT_LO(rx_info[1]));
>=20
> -if (dev_cnt > HDCP_2_2_MAX_DEVICE_COUNT) -dev_cnt =3D=20
> HDCP_2_2_MAX_DEVICE_COUNT;
> -
> -ret =3D sizeof(struct hdcp2_rep_send_receiverid_list) -=20
> -HDCP_2_2_RECEIVER_IDS_MAX_LEN + -(dev_cnt *=20
> HDCP_2_2_RECEIVER_ID_LEN);
> +if (*dev_cnt > HDCP_2_2_MAX_DEVICE_COUNT) *dev_cnt =3D=20
> +HDCP_2_2_MAX_DEVICE_COUNT;
>=20
>  return ret;
>  }
> @@ -534,6 +529,7 @@ int intel_dp_hdcp2_read_msg(struct=20
> intel_digital_port *dig_port,  const struct hdcp2_dp_msg_data=20
> *hdcp2_msg_data;  ktime_t msg_end =3D ktime_set(0, 0);  bool=20
> msg_expired;
> +u32 dev_cnt;
>=20
>  hdcp2_msg_data =3D get_hdcp2_dp_msg_data(msg_id);  if (!hdcp2_msg_data)=
=20
> @@ -546,17 +542,22 @@ int intel_dp_hdcp2_read_msg(struct=20
> intel_digital_port *dig_port,
>=20
>  hdcp->cp_irq_count_cached =3D atomic_read(&hdcp->cp_irq_count);
>=20
> +/* DP adaptation msgs has no msg_id */
> +byte++;
> +
>  if (msg_id =3D=3D HDCP_2_2_REP_SEND_RECVID_LIST) { -ret =3D=20
> get_receiver_id_list_size(dig_port);
> +ret =3D get_receiver_id_list_rx_info(dig_port, &dev_cnt, byte);
>  if (ret < 0)
>  return ret;
>=20
> -size =3D ret;
> +byte +=3D ret;
> +size =3D sizeof(struct hdcp2_rep_send_receiverid_list) -=20
> +HDCP_2_2_RXINFO_LEN - HDCP_2_2_RECEIVER_IDS_MAX_LEN
> +
> +(dev_cnt * HDCP_2_2_RECEIVER_ID_LEN); offset +=3D HDCP_2_2_RXINFO_LEN;
>  }
> -bytes_to_recv =3D size - 1;
>=20
> -/* DP adaptation msgs has no msg_id */
> -byte++;
> +bytes_to_recv =3D size - 1;
>=20
>  while (bytes_to_recv) {
>  len =3D bytes_to_recv > DP_AUX_MAX_PAYLOAD_BYTES ?
> --
> 2.31.1


