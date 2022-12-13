Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F303764B393
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 11:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF3910E301;
	Tue, 13 Dec 2022 10:51:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 244E310E301
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 10:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670928656; x=1702464656;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8zD0l5TjUGtd9up4AXqMsTZQNaYtBSfpqH+QYfcg1TU=;
 b=eBwZ+2QSn5xyFnVaB9KMyofAu6IvoCpzmjDC1yx5aEiufsSSFa+iICiy
 i3FdZLSil0vhEDwKYFaMtgAtM3jrJsJge28JvB/yj2iGUgXNA6PSk4wUn
 axtn0JC6vQh9Xehqfxlw+/+JUm1ZTxwg0MymlHrDosVKv7+Go9aSbKfUH
 XHYF8UJvM+KKHcsbqRI9NtFFfyldJPQ9BJaq3+TZmn5fpF8CgtX8dnUYi
 9c7Ecgfif3Xo6cBzCueBhenG6Gv9DgsHReG2S+dDReVZyQtElhSfGo6y6
 TWY9xlm7W6NJQUzeYwzeiqsPEYWzNX8gyiaTxq80hpV4MV/iPIY6avm7l Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="318131060"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="318131060"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:50:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="737342222"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="737342222"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Dec 2022 02:50:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 02:50:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 02:50:54 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 02:50:54 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 02:50:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gAksDiMWjQ2Z8E5hieahZak2OOiuwgZEpXKe9lBW1laPcm65qFG1LwSWF7q73kDShh6cas8Glcb/CHQRFw5/GzrWcF/pvHARRQG8tQ+Dt6T0dxKdXocnpfnFfSeZpRJWZZN56IYFRJItp7F0FRfAYE34UTKiNCGjrH5JyYmvT1eTfQXMVJ8QsSbqwA/OhYmQG1F0fsQ9Fe+sfCs5A0jbhjCF1y6dVfuXpnJO6A/0KotVYYhnH961iBE7TKQqj/BVV69XyASh9v5d8TXttthCfcB9rhnOKFVifGaDmyZC+IirfoCD1vxXYtqYCNr//DboYdD8YMy1tJMY86e8NirLsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7BcswZes/GCcOw9VWz+ak/mQLQVeYvTBX6cp9QtLvWg=;
 b=LhfDrVl6gGU+rXF6JhhHyEDRWk1guCzAHb8GU8ATthgGmjO+KsNFXLNvUZ9BS9iI3Rx6E0h3WN9hGVKlDJEj1Pom0vPUbpE2zpN0QC67tPJjC3TlmQyaiShCQI6XtErpSrpzIw3FgqK1DQ28g/MHdrVBR+54hb810DmiCXFqiSgTSLdNjWULQu9ErBjKm6ulFP7Uv7WID0SYsLjzk+eTmai68AN3Ir9JH4Nfov6QvMPQWwKzochKnChDGxEPdNuWkkyF0A7snFQxXmnZoV0dzdRU4bkpDtjXnuhNLCCYgnmKeq1sdpnMVkbvcmCJG0Vg6VmKbXjzMw9EmUtadDmteA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by MN2PR11MB4584.namprd11.prod.outlook.com (2603:10b6:208:264::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Tue, 13 Dec
 2022 10:50:51 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77%7]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 10:50:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 5/7] drm/i915/hdcp: Fill wired_cmd_in
 structures at a single place
Thread-Index: AQHZDsD6iVONlp92+0iGfKI8qFrsI65rohIAgAAAf2A=
Date: Tue, 13 Dec 2022 10:50:50 +0000
Message-ID: <MWHPR11MB17415BDCD6C46B52A55053F8E3E39@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221213070158.2621403-1-suraj.kandpal@intel.com>
 <20221213070158.2621403-6-suraj.kandpal@intel.com> <875yefy45z.fsf@intel.com>
In-Reply-To: <875yefy45z.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|MN2PR11MB4584:EE_
x-ms-office365-filtering-correlation-id: 743b7902-2921-4969-13cc-08dadcf7e60c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eHzv57/McEQIHTvU9B/gFp8y2FdkNkMB3w2yps+dmmBXXSWuWogeYUAEehVMkeltO75xH3WrUSxqlHiudZOZhMDMbsXhRCvAghgvSFZ7glCWDlBkGNZRzd38N34fl6Z6//LP/mr5LlJca4RaWrh85MOYaBn6LfqI9EayB3TMGC5w3cXvCX3hhbeQDSLzKl5t1dyxvoWQZx3YYi2bmfMqXUFqij1sfyNsPf/J4B98I34ORQfOyGLcojKbSYUahOo6GSHAzh7KKlVkzrw+OYMiFAGMHkClUXPxe6ccmJwWh3rn3U5VwfgIjbRQVx8AQbf+49ovaU7ZGKwp2u7m5ueR2PRd/x1CmU1dfMcxtSLlOrSqGWx/b9+AruOB7kavfyEPzs7OF1WK+dOgidK0S/MVVEP5G1AQeErC57VzbLw+sCtvaKaURD00M/vJOjnYOwJAdjWPIoqGIMEI78ZRx+juI7FHvoBcFpAXY0s37fyuKXumTWgolaqfqpHRDGDyQRz7XpZFiHDv0ViKl6ddEGawRrY4z5jnAXW2eflpmes5zOcvrO6Vs0dU0htbCb0OlnH9Jsxcur5lcuEQNaPR4sBnNVDQ0EjilWc7Hn7awBlNv8L/ysO344KMMHefBEnLG30kGbpFtz+NzTqMqUwb+vtvSp0HmQVfMxrZtj1UU2yvPggVWFqkNb9XJlaeFaPjurGH9f4oKPXBv5CR90DcCmOnWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199015)(86362001)(6506007)(9686003)(55016003)(26005)(186003)(7696005)(110136005)(33656002)(66946007)(76116006)(71200400001)(82960400001)(66446008)(66556008)(38100700002)(4326008)(66476007)(122000001)(38070700005)(8676002)(316002)(64756008)(83380400001)(478600001)(41300700001)(30864003)(5660300002)(2906002)(52536014)(8936002)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FezXdDnjIJdKJm1Il6THU2YHOUiffShnsWHRspLAuHifFSQdaebhKwDBW+ln?=
 =?us-ascii?Q?/tpoXWGWz8s2GrwhONqoj86N46DsQJd4IJRY6HTQAxR5NQXe8870lUjYihSf?=
 =?us-ascii?Q?QtclNkxlo7MseQAf9A7Fc05HwvmX8A5s3C9KqmuqfqrfOLca86TLS2+02TyN?=
 =?us-ascii?Q?kRehDasvmbrOtYpShOMhvvWT+d+LbEAimf5J8xAsNwYFXy+gEMHCxlwZGR/J?=
 =?us-ascii?Q?50G6EayGLBibkIfr3VrA9Fli402OS5g3c/dyqKAROqG9geJoZhwdRJHRP2Je?=
 =?us-ascii?Q?Bu+GhS2qQsc+7cd6n0JchViT95wwGHHL3MqQHTPsXvagUQFRLWGOEu3xODHn?=
 =?us-ascii?Q?bfik9n+42jSohmM4HWtLVNZFhNPywnSKSh5jHpwAFMiM76SJg6UUFk3SRppd?=
 =?us-ascii?Q?TarQ3aNs6jhGVT5XRZt/N4SaxuAhnvGbAsNqrW118lUdVZROlHpl+Qxz58fe?=
 =?us-ascii?Q?LZhtrHyWqSJjIyMGHDcp4GhVki2azzesBlvWhqk2TIf1F27sCM5L3t+z2/gu?=
 =?us-ascii?Q?wbiYdykCnZafBzrhasQ41bhovVkYXqf0U7W/8yE9zoit32tvZGIjOC/4GeRk?=
 =?us-ascii?Q?coNaOokcFPBC1luNNokAqGXTwF1CTeqgVF/Et8KQf0jUjI+dIwSiX99/i9Cw?=
 =?us-ascii?Q?oZYVxFn+GvuD8llgGizjn6rMTHQjiJbkIwWXXaw3rKyaqguwpiYrBDiXmTYP?=
 =?us-ascii?Q?heia98oMtDgdwGrXjTM0n4D7A42IvG4wYA4rEo3rsSNiuNwBnbLhZro0z2/c?=
 =?us-ascii?Q?9vQwAbGdTGwnvHw0HN0V/zkbKC35ZkNgBbjfKdqtkMYgBqn9D7x28CI5Ztb3?=
 =?us-ascii?Q?PAC/4qp4Grcugemy0CffnYOro2DrQoek0UPSjlrwAM0RBxWK2HRZLGZXYn2h?=
 =?us-ascii?Q?Xo1MelE3AZtu95HhupYrqEXE7iv/M3h05lSXj1q4LycUBZy4msOWs5SsRkGJ?=
 =?us-ascii?Q?dElYxqWtQCbwWyPZcPiBkDKGv4ZzAWCZ12MEH5B8pqKZXMMDv6jN4p60DEwp?=
 =?us-ascii?Q?DTzNDVEwpM+VxP+eSfKgnJf6k9x1IBxwMcXP3RzzZIlj9P/l3ntmnFm9M0Tz?=
 =?us-ascii?Q?uEouiUySN19V+FXEj+XLucC+MSAeBCuObiuSDKkPq3bW3uL86guhQ7vO45O7?=
 =?us-ascii?Q?tBpYvjJ/NIHjfCXYG9OPzMW1ciDCtS8yw5yjgsSHWRfe0ZR7rsjeXCufH4XW?=
 =?us-ascii?Q?sh596SVcGyujxYH4iIaM3+ZtO5nnzgOw/wKUwfziCHOYWoIlwqzXQzv2zAJ8?=
 =?us-ascii?Q?Fed5zZmGDRAIaN6D5h7xc65/YY1pCtZen0+4FYx8xk0/DHGEtcIQ7CICbaqS?=
 =?us-ascii?Q?E+0G3icKGD5BiFidxL1yQsU+p/3XszGTG8BOWFHtHxzRQ1M6MeVYheR9vmkW?=
 =?us-ascii?Q?MS9VsvclemgQAJI/WSSeQXtuN+Ox1eEMVrnyhEx3t8f8l7aOZDu+gZG7WPbQ?=
 =?us-ascii?Q?ISnnrvPi1MmzB2HM+NYWoYnx6QL3lbUHkP9AZi+swkWpysOLzH1oMED+w523?=
 =?us-ascii?Q?9XLKSHAZiKKQ/6TSm4kE7cKIjlYfQksLe1QjiFPNuSC+avB84JALTjQiZZcc?=
 =?us-ascii?Q?Xs+Zyms/F5FXUG09vTGcJu48+vlq/S66mCZzVprT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 743b7902-2921-4969-13cc-08dadcf7e60c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2022 10:50:50.0461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jLPRp8zIE7IJcaIHxPHMN8/BpyppQF1dr2tnqQyObpU6t7FnZuQaUbL8RKHvL0McuRxCOAdn3gEyR7WeWI+KgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4584
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915/hdcp: Fill wired_cmd_in
 structures at a single place
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

>=20
> On Tue, 13 Dec 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Need to fill wired cmd in structures at a single place as they remain
> > same for both gsc and mei
>=20
> To be blunt, I think it's a horrible idea to put a massive amount of inli=
nes in a
> header. Just please no.
I see what you are saying here but these lines end up getting duplicated bo=
th in
mei_hdcp.c and intel_gsc_hdcp.c so wanted to get these in a single place so=
 if there is
a change in future I have the same place to change
if you have any other suggestion that would be great or else ill have to go=
 back to duplicating these
lines in the aforementioned files

Regards,
Suraj Kandpal
>=20
> BR,
> Jani.
>=20
> >
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/misc/mei/hdcp/mei_hdcp.c        | 154 ++----------------
> >  include/drm/i915_cp_fw_hdcp_interface.h | 198
> > ++++++++++++++++++++++++
> >  2 files changed, 212 insertions(+), 140 deletions(-)
> >
> > diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c
> > b/drivers/misc/mei/hdcp/mei_hdcp.c
> > index 51e3edac565d..a4c255be74df 100644
> > --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> > +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> > @@ -50,17 +50,7 @@ mei_hdcp_initiate_session(struct device *dev,
> > struct hdcp_port_data *data,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	session_init_in.header.api_version =3D HDCP_API_VERSION;
> > -	session_init_in.header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION;
> > -	session_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	session_init_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > -
> > -	session_init_in.port.integrated_port_type =3D data->port_type;
> > -	session_init_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	session_init_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -	session_init_in.protocol =3D data->protocol;
> > -
> > +	i915_cp_fw_fill_session_in(&session_init_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&session_init_in,
> >  			      sizeof(session_init_in));
> >  	if (byte < 0) {
> > @@ -119,21 +109,7 @@ mei_hdcp_verify_receiver_cert_prepare_km(struct
> device *dev,
> >  		return -EINVAL;
> >
> >  	cldev =3D to_mei_cl_device(dev);
> > -
> > -	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
> > -	verify_rxcert_in.header.command_id =3D WIRED_VERIFY_RECEIVER_CERT;
> > -	verify_rxcert_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	verify_rxcert_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > -
> > -	verify_rxcert_in.port.integrated_port_type =3D data->port_type;
> > -	verify_rxcert_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	verify_rxcert_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -
> > -	verify_rxcert_in.cert_rx =3D rx_cert->cert_rx;
> > -	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> > -	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps,
> HDCP_2_2_RXCAPS_LEN);
> > -
> > +	i915_cp_fw_fill_rxcert_in(&verify_rxcert_in, rx_cert, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&verify_rxcert_in,
> >  			      sizeof(verify_rxcert_in));
> >  	if (byte < 0) {
> > @@ -192,18 +168,7 @@ mei_hdcp_verify_hprime(struct device *dev, struct
> > hdcp_port_data *data,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
> > -	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> > -	send_hprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	send_hprime_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > -
> > -	send_hprime_in.port.integrated_port_type =3D data->port_type;
> > -	send_hprime_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	send_hprime_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -
> > -	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
> > -	       HDCP_2_2_H_PRIME_LEN);
> > -
> > +	i915_cp_fw_fill_hprime_in(&send_hprime_in, rx_hprime, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&send_hprime_in,
> >  			      sizeof(send_hprime_in));
> >  	if (byte < 0) {
> > @@ -248,20 +213,8 @@ mei_hdcp_store_pairing_info(struct device *dev,
> struct hdcp_port_data *data,
> >  		return -EINVAL;
> >
> >  	cldev =3D to_mei_cl_device(dev);
> > -
> > -	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
> > -	pairing_info_in.header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO;
> > -	pairing_info_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	pairing_info_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > -
> > -	pairing_info_in.port.integrated_port_type =3D data->port_type;
> > -	pairing_info_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	pairing_info_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -
> > -	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
> > -	       HDCP_2_2_E_KH_KM_LEN);
> > -
> > +	i915_cp_fw_fill_pairing_info_in(&pairing_info_in, pairing_info,
> > +					data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&pairing_info_in,
> >  			      sizeof(pairing_info_in));
> >  	if (byte < 0) {
> > @@ -308,16 +261,7 @@ mei_hdcp_initiate_locality_check(struct device *de=
v,
> >  		return -EINVAL;
> >
> >  	cldev =3D to_mei_cl_device(dev);
> > -
> > -	lc_init_in.header.api_version =3D HDCP_API_VERSION;
> > -	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
> > -	lc_init_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	lc_init_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > -
> > -	lc_init_in.port.integrated_port_type =3D data->port_type;
> > -	lc_init_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	lc_init_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -
> > +	i915_cp_fw_fill_locality_check_in(&lc_init_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&lc_init_in, sizeof(lc_init_in))=
;
> >  	if (byte < 0) {
> >  		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte); @@ -
> 364,19
> > +308,8 @@ mei_hdcp_verify_lprime(struct device *dev, struct
> > hdcp_port_data *data,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
> > -	verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
> > -	verify_lprime_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	verify_lprime_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > -
> > -	verify_lprime_in.port.integrated_port_type =3D data->port_type;
> > -	verify_lprime_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	verify_lprime_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -
> > -	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
> > -	       HDCP_2_2_L_PRIME_LEN);
> > -
> > +	i915_cp_fw_fill_validate_locality_in(&verify_lprime_in, rx_lprime,
> > +					     data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&verify_lprime_in,
> >  			      sizeof(verify_lprime_in));
> >  	if (byte < 0) {
> > @@ -423,15 +356,7 @@ static int mei_hdcp_get_session_key(struct device
> > *dev,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	get_skey_in.header.api_version =3D HDCP_API_VERSION;
> > -	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY;
> > -	get_skey_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	get_skey_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > -
> > -	get_skey_in.port.integrated_port_type =3D data->port_type;
> > -	get_skey_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	get_skey_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -
> > +	i915_cp_fw_fill_session_key_in(&get_skey_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&get_skey_in,
> sizeof(get_skey_in));
> >  	if (byte < 0) {
> >  		dev_dbg(dev, "mei_cldev_send failed. %zd\n", byte); @@ -
> 487,25
> > +412,7 @@ mei_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
> > -	verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
> > -	verify_repeater_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	verify_repeater_in.header.buffer_len =3D
> > -
> 	WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > -
> > -	verify_repeater_in.port.integrated_port_type =3D data->port_type;
> > -	verify_repeater_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	verify_repeater_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -
> > -	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
> > -	       HDCP_2_2_RXINFO_LEN);
> > -	memcpy(verify_repeater_in.seq_num_v, rep_topology->seq_num_v,
> > -	       HDCP_2_2_SEQ_NUM_LEN);
> > -	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
> > -	       HDCP_2_2_V_PRIME_HALF_LEN);
> > -	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
> > -	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
> > -
> > +	i915_cp_fw_fill_repeater_in(&verify_repeater_in, rep_topology,
> > +data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&verify_repeater_in,
> >  			      sizeof(verify_repeater_in));
> >  	if (byte < 0) {
> > @@ -566,23 +473,8 @@ static int mei_hdcp_verify_mprime(struct device *d=
ev,
> >  	if (!verify_mprime_in)
> >  		return -ENOMEM;
> >
> > -	verify_mprime_in->header.api_version =3D HDCP_API_VERSION;
> > -	verify_mprime_in->header.command_id =3D
> WIRED_REPEATER_AUTH_STREAM_REQ;
> > -	verify_mprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	verify_mprime_in->header.buffer_len =3D cmd_size  -
> sizeof(verify_mprime_in->header);
> > -
> > -	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> > -	verify_mprime_in->port.physical_port =3D (u8)data->fw_ddi;
> > -	verify_mprime_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > -
> > -	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> HDCP_2_2_MPRIME_LEN);
> > -	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> >seq_num_m);
> > -
> > -	memcpy(verify_mprime_in->streams, data->streams,
> > -	       array_size(data->k, sizeof(*data->streams)));
> > -
> > -	verify_mprime_in->k =3D cpu_to_be16(data->k);
> > -
> > +	i915_cp_fw_fill_auth_stream_req_in(verify_mprime_in, stream_ready,
> > +					   cmd_size, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)verify_mprime_in, cmd_size);
> >  	kfree(verify_mprime_in);
> >  	if (byte < 0) {
> > @@ -628,16 +520,7 @@ static int mei_hdcp_enable_authentication(struct
> > device *dev,
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
> > -	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH;
> > -	enable_auth_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	enable_auth_in.header.buffer_len =3D
> WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > -
> > -	enable_auth_in.port.integrated_port_type =3D data->port_type;
> > -	enable_auth_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	enable_auth_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -	enable_auth_in.stream_type =3D data->streams[0].stream_type;
> > -
> > +	i915_cp_fw_fill_enable_auth_in(&enable_auth_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&enable_auth_in,
> >  			      sizeof(enable_auth_in));
> >  	if (byte < 0) {
> > @@ -682,16 +565,7 @@ mei_hdcp_close_session(struct device *dev, struct
> > hdcp_port_data *data)
> >
> >  	cldev =3D to_mei_cl_device(dev);
> >
> > -	session_close_in.header.api_version =3D HDCP_API_VERSION;
> > -	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
> > -	session_close_in.header.status =3D FW_HDCP_STATUS_SUCCESS;
> > -	session_close_in.header.buffer_len =3D
> > -				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > -
> > -	session_close_in.port.integrated_port_type =3D data->port_type;
> > -	session_close_in.port.physical_port =3D (u8)data->fw_ddi;
> > -	session_close_in.port.attached_transcoder =3D (u8)data->fw_tc;
> > -
> > +	i915_cp_fw_fill_close_session_in(&session_close_in, data);
> >  	byte =3D mei_cldev_send(cldev, (u8 *)&session_close_in,
> >  			      sizeof(session_close_in));
> >  	if (byte < 0) {
> > diff --git a/include/drm/i915_cp_fw_hdcp_interface.h
> > b/include/drm/i915_cp_fw_hdcp_interface.h
> > index fa06a6cb0bca..e1edad1d26e5 100644
> > --- a/include/drm/i915_cp_fw_hdcp_interface.h
> > +++ b/include/drm/i915_cp_fw_hdcp_interface.h
> > @@ -535,4 +535,202 @@ struct wired_cmd_repeater_auth_stream_req_out {
> >  	struct hdcp_cmd_header	header;
> >  	struct hdcp_port_id	port;
> >  } __packed;
> > +
> > +static inline void
> > +i915_cp_fw_fill_session_in(struct wired_cmd_initiate_hdcp2_session_in
> *session_init_in,
> > +			   struct hdcp_port_data *data)
> > +{
> > +	session_init_in->header.api_version =3D HDCP_API_VERSION;
> > +	session_init_in->header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION;
> > +	session_init_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	session_init_in->header.buffer_len =3D
> > +
> 	WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> > +
> > +	session_init_in->port.integrated_port_type =3D data->port_type;
> > +	session_init_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	session_init_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > +	session_init_in->protocol =3D data->protocol; }
> > +
> > +static inline void
> > +i915_cp_fw_fill_rxcert_in(struct wired_cmd_verify_receiver_cert_in
> *verify_rxcert_in,
> > +			  struct hdcp2_ake_send_cert *rx_cert,
> > +			  struct hdcp_port_data *data)
> > +{
> > +	verify_rxcert_in->header.api_version =3D HDCP_API_VERSION;
> > +	verify_rxcert_in->header.command_id =3D
> WIRED_VERIFY_RECEIVER_CERT;
> > +	verify_rxcert_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_rxcert_in->header.buffer_len =3D
> > +
> 	WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> > +
> > +	verify_rxcert_in->port.integrated_port_type =3D data->port_type;
> > +	verify_rxcert_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	verify_rxcert_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > +
> > +	verify_rxcert_in->cert_rx =3D rx_cert->cert_rx;
> > +	memcpy(verify_rxcert_in->r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> > +	memcpy(verify_rxcert_in->rx_caps, rx_cert->rx_caps,
> > +HDCP_2_2_RXCAPS_LEN); }
> > +
> > +static inline void
> > +i915_cp_fw_fill_hprime_in(struct wired_cmd_ake_send_hprime_in
> *send_hprime_in,
> > +			  struct hdcp2_ake_send_hprime *rx_hprime,
> > +			  struct hdcp_port_data *data)
> > +{
> > +	send_hprime_in->header.api_version =3D HDCP_API_VERSION;
> > +	send_hprime_in->header.command_id =3D WIRED_AKE_SEND_HPRIME;
> > +	send_hprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	send_hprime_in->header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> > +
> > +	send_hprime_in->port.integrated_port_type =3D data->port_type;
> > +	send_hprime_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	send_hprime_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > +
> > +	memcpy(send_hprime_in->h_prime, rx_hprime->h_prime,
> > +	       HDCP_2_2_H_PRIME_LEN);
> > +}
> > +
> > +static inline void
> > +i915_cp_fw_fill_pairing_info_in(struct wired_cmd_ake_send_pairing_info=
_in
> *pairing_info_in,
> > +				struct hdcp2_ake_send_pairing_info
> *pairing_info,
> > +				struct hdcp_port_data *data)
> > +{
> > +	pairing_info_in->header.api_version =3D HDCP_API_VERSION;
> > +	pairing_info_in->header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO;
> > +	pairing_info_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	pairing_info_in->header.buffer_len =3D
> > +
> 	WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> > +
> > +	pairing_info_in->port.integrated_port_type =3D data->port_type;
> > +	pairing_info_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	pairing_info_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > +
> > +	memcpy(pairing_info_in->e_kh_km, pairing_info->e_kh_km,
> > +	       HDCP_2_2_E_KH_KM_LEN);
> > +}
> > +
> > +static inline void
> > +i915_cp_fw_fill_locality_check_in(struct wired_cmd_init_locality_check=
_in
> *lc_init_in,
> > +				  struct hdcp_port_data *data)
> > +{
> > +	lc_init_in->header.api_version =3D HDCP_API_VERSION;
> > +	lc_init_in->header.command_id =3D WIRED_INIT_LOCALITY_CHECK;
> > +	lc_init_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	lc_init_in->header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> > +
> > +	lc_init_in->port.integrated_port_type =3D data->port_type;
> > +	lc_init_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	lc_init_in->port.attached_transcoder =3D (u8)data->fw_tc; }
> > +
> > +static inline void
> > +i915_cp_fw_fill_validate_locality_in(struct wired_cmd_validate_localit=
y_in
> *verify_lprime_in,
> > +				     struct hdcp2_lc_send_lprime *rx_lprime,
> > +				     struct hdcp_port_data *data) {
> > +	verify_lprime_in->header.api_version =3D HDCP_API_VERSION;
> > +	verify_lprime_in->header.command_id =3D WIRED_VALIDATE_LOCALITY;
> > +	verify_lprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_lprime_in->header.buffer_len =3D
> > +
> 	WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> > +
> > +	verify_lprime_in->port.integrated_port_type =3D data->port_type;
> > +	verify_lprime_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	verify_lprime_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > +
> > +	memcpy(verify_lprime_in->l_prime, rx_lprime->l_prime,
> > +	       HDCP_2_2_L_PRIME_LEN);
> > +}
> > +
> > +static inline void
> > +i915_cp_fw_fill_session_key_in(struct wired_cmd_get_session_key_in
> *get_skey_in,
> > +			       struct hdcp_port_data *data) {
> > +	get_skey_in->header.api_version =3D HDCP_API_VERSION;
> > +	get_skey_in->header.command_id =3D WIRED_GET_SESSION_KEY;
> > +	get_skey_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	get_skey_in->header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> > +
> > +	get_skey_in->port.integrated_port_type =3D data->port_type;
> > +	get_skey_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	get_skey_in->port.attached_transcoder =3D (u8)data->fw_tc; }
> > +
> > +static inline void
> > +i915_cp_fw_fill_repeater_in(struct wired_cmd_verify_repeater_in
> *verify_repeater_in,
> > +			    struct hdcp2_rep_send_receiverid_list
> *rep_topology,
> > +			    struct hdcp_port_data *data)
> > +{
> > +	verify_repeater_in->header.api_version =3D HDCP_API_VERSION;
> > +	verify_repeater_in->header.command_id =3D WIRED_VERIFY_REPEATER;
> > +	verify_repeater_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_repeater_in->header.buffer_len =3D
> > +				WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> > +
> > +	verify_repeater_in->port.integrated_port_type =3D data->port_type;
> > +	verify_repeater_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	verify_repeater_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > +
> > +	memcpy(verify_repeater_in->rx_info, rep_topology->rx_info,
> > +	       HDCP_2_2_RXINFO_LEN);
> > +	memcpy(verify_repeater_in->seq_num_v, rep_topology->seq_num_v,
> > +	       HDCP_2_2_SEQ_NUM_LEN);
> > +	memcpy(verify_repeater_in->v_prime, rep_topology->v_prime,
> > +	       HDCP_2_2_V_PRIME_HALF_LEN);
> > +	memcpy(verify_repeater_in->receiver_ids, rep_topology->receiver_ids,
> > +	       HDCP_2_2_RECEIVER_IDS_MAX_LEN); }
> > +
> > +static inline void
> > +i915_cp_fw_fill_auth_stream_req_in(struct
> wired_cmd_repeater_auth_stream_req_in *verify_mprime_in,
> > +				   struct hdcp2_rep_stream_ready
> *stream_ready, ssize_t cmd_size,
> > +				   struct hdcp_port_data *data)
> > +{
> > +	verify_mprime_in->header.api_version =3D HDCP_API_VERSION;
> > +	verify_mprime_in->header.command_id =3D
> WIRED_REPEATER_AUTH_STREAM_REQ;
> > +	verify_mprime_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	verify_mprime_in->header.buffer_len =3D cmd_size  -
> > +sizeof(verify_mprime_in->header);
> > +
> > +	verify_mprime_in->port.integrated_port_type =3D data->port_type;
> > +	verify_mprime_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	verify_mprime_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > +
> > +	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime,
> HDCP_2_2_MPRIME_LEN);
> > +	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data-
> >seq_num_m);
> > +
> > +	memcpy(verify_mprime_in->streams, data->streams,
> > +	       array_size(data->k, sizeof(*data->streams)));
> > +
> > +	verify_mprime_in->k =3D cpu_to_be16(data->k); }
> > +
> > +static inline void
> > +i915_cp_fw_fill_enable_auth_in(struct wired_cmd_enable_auth_in
> *enable_auth_in,
> > +			       struct hdcp_port_data *data) {
> > +	enable_auth_in->header.api_version =3D HDCP_API_VERSION;
> > +	enable_auth_in->header.command_id =3D WIRED_ENABLE_AUTH;
> > +	enable_auth_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	enable_auth_in->header.buffer_len =3D
> > +WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> > +
> > +	enable_auth_in->port.integrated_port_type =3D data->port_type;
> > +	enable_auth_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	enable_auth_in->port.attached_transcoder =3D (u8)data->fw_tc;
> > +	enable_auth_in->stream_type =3D data->streams[0].stream_type; }
> > +
> > +static inline void
> > +i915_cp_fw_fill_close_session_in(struct wired_cmd_close_session_in
> *session_close_in,
> > +				 struct hdcp_port_data *data)
> > +{
> > +	session_close_in->header.api_version =3D HDCP_API_VERSION;
> > +	session_close_in->header.command_id =3D WIRED_CLOSE_SESSION;
> > +	session_close_in->header.status =3D FW_HDCP_STATUS_SUCCESS;
> > +	session_close_in->header.buffer_len =3D
> > +				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> > +
> > +	session_close_in->port.integrated_port_type =3D data->port_type;
> > +	session_close_in->port.physical_port =3D (u8)data->fw_ddi;
> > +	session_close_in->port.attached_transcoder =3D (u8)data->fw_tc; }
> >  #endif /* _I915_CP_FW_HDCP_INTERFACE_H_ */
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
