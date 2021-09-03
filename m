Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FE23FFA02
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 07:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C40606E834;
	Fri,  3 Sep 2021 05:24:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A3A56E834
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 05:24:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="241614472"
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="241614472"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 22:24:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,264,1624345200"; d="scan'208";a="689485429"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 02 Sep 2021 22:24:00 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 22:24:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 22:24:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 22:23:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GF6FPuHyhUr97rg4FSy48W05Gnb+l9adAsHrGuK99yvoQdOJt2HGNb8ffvjndcOlk3C+9wmPLnORIArECbYHXeBEMGaS3SMdHLlso5K+wX+QpkJ0iDl+BnTlCTe7/hq5iBgBVAHQKTSt83//aiCrQoVqGU7ASmJ3cUIzRXRUpF8O58/ar1GvgUCIToj8K2VIfQ9GJKFnA8hOqPHmJwF4TfYPnudBN8MPp9/NUg10UudGgZGGR9OSJm3zigfH1NRh3jjseVdSCU7fEzgT6BfC1KbjGIkTRWiV7TY4LJ/cAaa4m2W+wtDXQxlMol+BOj7ll8oAp0EYPBDTyQS27+bzMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OY5elCnwpaXAeM7EEkAYWSgPfHl4i1AAUjXSLPcbdA4=;
 b=nspJCy7CrdimjcpyLM1nE2CPctVkaERanEYIDmkthnfEesKDkVn1ty+ipsM5dxdDMLoPgv5ZOiDnmZDJIsKHu2EHz51FjqQ720LiZR9gTumLWXOGpDVE9GqjBT3EKqf6qUjwThf/dD8vcCyC/ZywS3RRKcaTlfxcjP1B8b+PMQgc/KMQeVuUV3pToHGqyIhpJ0whRCYsqYVWEdqERECHx721my6n3DyMRPRvAZvGVRnpP5tfLtZbi8SdO9kQkRWbH2kLD4L0hpaHBfOawqfYSfsU29PXPpHCIWRTrUyZrQNX+b8Ilei9YI3bvjHRFmG9RIJmjMN+S+k9Wx0/wiuVxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OY5elCnwpaXAeM7EEkAYWSgPfHl4i1AAUjXSLPcbdA4=;
 b=O2FV1ZEGQjEH9mvpp9wFAC4aR7rZZy1Fz5aqgebImbKf4wBXWIaz7elEOx0s0G3rK9+QQqiuuaT0PRCkMDI1T3qeeRGiELn589Ak4JIAft8lZJ9p/+BrGJffvmPa4/x9pbZ/VwVVuQZRo4tfvoJF5HovOieg6m2KEF2QGPQptBU=
Received: from BN9PR11MB5305.namprd11.prod.outlook.com (2603:10b6:408:136::18)
 by BN6PR11MB3859.namprd11.prod.outlook.com (2603:10b6:405:83::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Fri, 3 Sep
 2021 05:23:53 +0000
Received: from BN9PR11MB5305.namprd11.prod.outlook.com
 ([fe80::bd73:7a75:ffa0:ae5a]) by BN9PR11MB5305.namprd11.prod.outlook.com
 ([fe80::bd73:7a75:ffa0:ae5a%2]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 05:23:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Li, Juston"
 <juston.li@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "seanpaul@chromium.org" <seanpaul@chromium.org>, "C, Ramalingam"
 <ramalingam.c@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 1/3] drm/i915/hdcp: update
 cp_irq_count_cached in intel_dp_hdcp2_read_msg()
Thread-Index: AQHXlSrZ09wXAkZZSkmlPcrHolu1zauQzBoAgAERQMA=
Date: Fri, 3 Sep 2021 05:23:53 +0000
Message-ID: <BN9PR11MB530515051D512CC84AB5F4DEE3CF9@BN9PR11MB5305.namprd11.prod.outlook.com>
References: <20210819184835.1181323-1-juston.li@intel.com>
 <20210819184835.1181323-2-juston.li@intel.com>
 <4a8b0d505071448ab3a233d014bd5761@intel.com>
In-Reply-To: <4a8b0d505071448ab3a233d014bd5761@intel.com>
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
x-ms-office365-filtering-correlation-id: 98b7022f-23e9-4157-2d1e-08d96e9b053c
x-ms-traffictypediagnostic: BN6PR11MB3859:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB3859E42C8C22D96D8336D715E3CF9@BN6PR11MB3859.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fqbcBBnNcoPPYUFf1PVmagv6+EzV3ETkzjJSgNUujTtpLmRh7E5XE69lKzp8co/nBRtm6kSyPNY4oRb04CNj4/Dv+Doei+CP7gTP6xm7b94wP/2AvChzluLfn9aPcZvmcHPSxOhRN5HeVLKmul+x8xUrQL/NX+uDOOieokaAWxutXVdrFXLHLI008oQ2GY4GbmI25QMGAwfPlv1ifUT97Oq3APCEtVTXQ6wiCzZ3tRENyLW5WaFeGh8NtKK5K4WC3UYHSt48meNCGnqwdC45kCNZ2cWkRy1v4o4pgEFCtnp9C534PCPKNzMo5x4wzUrrqcWSQDMeP+foj2OGx6SYzZJon8v5J0if51ZJxzWShs9/Ks+NSi0btDqZMcCCTggTpE206kHiBG7hXwJzBK20yxiGeveCnw2iuLWP5eFgzgnQFnrSLsdteKgYCKJmtLxcwwlScOhOBZndflNpO15DGSzouE/OUHF2E6MslGWsJ6nV1xb1LYdL6MY+NZglXnODg1rkxOPgXXEEXRZ1OF0dAwWdYVFrtPeDCifLIXXgBKcvbQo6Y4shKlzZ1gf1U2ct2eOmA4yhFYCLK0jCaleujp2GDStRsPQFrmT/kU5SIhwM23MqJoPM6UBexyhdcFeKfDmXV6uum5DN1zTRPBpTT3DLYDt/MKilrwD5JGMiIsG9oZXdbv7P8vAgtxlxSnXgQ9Jr1AH1FXL+78jBmlmtag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5305.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(376002)(396003)(346002)(366004)(55016002)(15650500001)(26005)(71200400001)(107886003)(4326008)(478600001)(9686003)(86362001)(8936002)(52536014)(76116006)(38100700002)(2906002)(66946007)(33656002)(38070700005)(66476007)(83380400001)(122000001)(316002)(54906003)(110136005)(186003)(8676002)(64756008)(66446008)(66556008)(6506007)(5660300002)(53546011)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dYHZTBDcVL9I/cwe7EvDJKEjWvvjvVeh5DnyQUd22zgE3F7pDW14tQ42NVU5?=
 =?us-ascii?Q?YSwuoCGK+y7j5hA0QWmExmjeydlhYGH1jSm/kXH7AOQ4805RMAzTA8FQJSxX?=
 =?us-ascii?Q?tTqTX/JTbVFkAYdiLACLqiIo3oqLC43tjN3pTfSxUAgUng3fAvylBMtBxxjD?=
 =?us-ascii?Q?w6wlBr/prIbY6X3NzXNg4zxKhOKu5UR92oe/yeaWnupXyYwb0bSTHRmNb09u?=
 =?us-ascii?Q?vkzqFmurgOjhKQy0Xy8LwtWdqO+z4gfSCoYLCDCV36qk5skHCMJBnzrwiygY?=
 =?us-ascii?Q?WOX93v/4QYt5thGr12yu4ZxxuxaYnab5B/jYNQQ3z8KfzqVsWYw/t0Bq2xci?=
 =?us-ascii?Q?tcSv57JA6YhgPMdLEVdRx1oObL0vwqnJRpWm6nGAvvRLti7z5YDPYbtVod2/?=
 =?us-ascii?Q?uImEYKB5J7l0XUmDJ17SK3Q5LSvXgX3LG5AdRUrxkVLUs/XWAPKZu6DhYaM/?=
 =?us-ascii?Q?DU8fQ/4NRt4H7EreASVWxJahvEGOWpvzlzwZ7bxjwmzbes3OAR2g5PmZO/qQ?=
 =?us-ascii?Q?2AdkHNoFzaPCOgt/28ELY3atCeUXDnCGKZYdI0oZsd9z3YF/pre3rKjPfCpm?=
 =?us-ascii?Q?WD1Kg350wo9g4s+sqh3t3pBacHmJsSpR9el7Gk/Rz/PpHqKZBHU/d9T2JaTX?=
 =?us-ascii?Q?VDLdGhGW5Dq29seuYjzdZL9ZCzc7P1BWnxUGquUIK7ZpMATfDrWAlcFYxCJt?=
 =?us-ascii?Q?jebat38SrnmUuydgohu7zYh4WmLe2OoH5SNh1SO5wOYrnbrMaIwha5tuTnCc?=
 =?us-ascii?Q?rxrOxFZPa10abeldMG8R3A07PnVfZtihL2SLdWNPz04aElCVj+K9OWBIgeQ7?=
 =?us-ascii?Q?LiWVkf0WiDEWGyb0JUSC/A3fv0UC+td29i6JAP4l74OD8AivpPW2PNI1mSPQ?=
 =?us-ascii?Q?/af0s9EWVEa3BKa3IS8OWx7CZi8qiZMzievcWSlT6/gAbvCT9M2QgtXpM9HU?=
 =?us-ascii?Q?pmYWG6cQaqDnEcgm6vWAyx/S00N3bsoF85134Z+Ahc91FSb0CluqNkCuPzNd?=
 =?us-ascii?Q?x7KbsNYcrW7teHugYAC569oPiaE4pKOvikt6j2zwlrL8fFfS3f31wXBQdED6?=
 =?us-ascii?Q?fIHADUqr1JyckslCOMyUKqxHOjpkaAt8amtu2cowkVphRWZycIBFsvXSkCxZ?=
 =?us-ascii?Q?eRozXDlXIgKBD81Ngdfs10BvbARY9IIdJ/Ia8dMirTVdOitO9Axxb/wze+WS?=
 =?us-ascii?Q?cGPgQo9gT/ovyQaR9MC8hyNmin3TR1K9+AVXyiQoOUEpTYu+cwDd2MQoaSx4?=
 =?us-ascii?Q?BTJA0osVqMtTpn3P5AIAf7uQrO8wdwAo1g0EYjsSwUXKUV+uQKI3xa0uWLSG?=
 =?us-ascii?Q?0/q9gURXfApDR3WicqmUdGc4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5305.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98b7022f-23e9-4157-2d1e-08d96e9b053c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 05:23:53.5107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LNNaTDD4QfPHjxmrjZ/+iNDixurYFav3OXbitIdBPntNfp7dHHpp0BDWSTJ1YCUdqb/NjgP4erGO5aEBdYhbuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3859
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 1/3] drm/i915/hdcp: update
 cp_irq_count_cached in intel_dp_hdcp2_read_msg()
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
Sent: Thursday, September 2, 2021 6:38 PM
To: Li, Juston <juston.li@intel.com>; intel-gfx@lists.freedesktop.org; Kand=
pal, Suraj <suraj.kandpal@intel.com>
Cc: seanpaul@chromium.org; C, Ramalingam <ramalingam.c@intel.com>; Vivi, Ro=
drigo <rodrigo.vivi@intel.com>
Subject: RE: [Intel-gfx] [PATCH v6 1/3] drm/i915/hdcp: update cp_irq_count_=
cached in intel_dp_hdcp2_read_msg()



> -----Original Message-----
> From: Li, Juston <juston.li@intel.com>
> Sent: Friday, August 20, 2021 12:19 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: seanpaul@chromium.org; Gupta, Anshuman <anshuman.gupta@intel.com>;=20
> C, Ramalingam <ramalingam.c@intel.com>; Vivi, Rodrigo=20
> <rodrigo.vivi@intel.com>; Li, Juston <juston.li@intel.com>
> Subject: [Intel-gfx] [PATCH v6 1/3] drm/i915/hdcp: update=20
> cp_irq_count_cached in intel_dp_hdcp2_read_msg()
>=20
> Update cp_irq_count_cached when reading messages rather than when=20
> writing a message to make sure the value is up to date and not stale=20
> from a previously handled CP_IRQ.
>=20
> AKE flow  doesn't always respond to a read with a ACK write msg.
> E.g. AKE_Send_Pairing_Info will "timeout" because we received a CP_IRQ=20
> for reading AKE_Send_H_Prime but no write occurred between that and=20
> reading AKE_Send_Pairing_Info so cp_irq_count_cached is stale causing=20
> the wait to return right away rather than waiting for a new CP_IRQ.
>=20
> Signed-off-by: Juston Li <juston.li@intel.com>
> Acked-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Hi Suraj,
We don't have HDCP coverage in CI
Could you please provide your Tested-By tag after testing this patch series=
.
Br,
Anshuman=20
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index d697d169e8c1..1d0096654776 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -446,8 +446,6 @@ static
>  int intel_dp_hdcp2_write_msg(struct intel_digital_port *dig_port,
>       void *buf, size_t size)
>  {
> -struct intel_dp *dp =3D &dig_port->dp;
> -struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;  unsigned=20
> int offset;
>  u8 *byte =3D buf;
>  ssize_t ret, bytes_to_write, len;
> @@ -463,8 +461,6 @@ int intel_dp_hdcp2_write_msg(struct=20
> intel_digital_port *dig_port,  bytes_to_write =3D size - 1;  byte++;
>=20
> -hdcp->cp_irq_count_cached =3D atomic_read(&hdcp->cp_irq_count);
> -
>  while (bytes_to_write) {
>  len =3D bytes_to_write > DP_AUX_MAX_PAYLOAD_BYTES ?
>  DP_AUX_MAX_PAYLOAD_BYTES :
> bytes_to_write; @@ -530,6 +526,8 @@ int intel_dp_hdcp2_read_msg(struct=20
> intel_digital_port *dig_port,
>      u8 msg_id, void *buf, size_t size)  {  struct drm_i915_private=20
> *i915 =3D to_i915(dig_port->base.base.dev);
> +struct intel_dp *dp =3D &dig_port->dp;
> +struct intel_hdcp *hdcp =3D &dp->attached_connector->hdcp;
>  unsigned int offset;
>  u8 *byte =3D buf;
>  ssize_t ret, bytes_to_recv, len;
> @@ -546,6 +544,8 @@ int intel_dp_hdcp2_read_msg(struct=20
> intel_digital_port *dig_port,  if (ret < 0)  return ret;
>=20
> +hdcp->cp_irq_count_cached =3D atomic_read(&hdcp->cp_irq_count);
> +
>  if (msg_id =3D=3D HDCP_2_2_REP_SEND_RECVID_LIST) {  ret =3D=20
> get_receiver_id_list_size(dig_port);
>  if (ret < 0)
> --
> 2.31.1


