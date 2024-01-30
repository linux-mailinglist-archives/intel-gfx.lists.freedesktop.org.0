Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA3C841D12
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 08:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B8410E5CF;
	Tue, 30 Jan 2024 07:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D227010E5CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 07:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706601391; x=1738137391;
 h=from:to:subject:date:message-id:reply-to:mime-version;
 bh=cZ764T38c/oefJq8Ze1Pn12QJgoCa9mrY/dOKo9pWBc=;
 b=OVmZ23Da5MJJRBJS4CAS0HN8F0yFO7xIqDCDXNX8izbqbzZlGo18h1h7
 HYfMXSWgwjBc4iR8u4+4vPpRE9c18rMUsoMagGuFCzcv0aS5rc4pmi4zz
 qlMFWAYz1vB1Qe8l0VF2FrGzu5w0vY/oid49ic9+K3ftskzF4VX0M9RxR
 fORIZB+2DeQsiW+szg14X+3DLvS7OJNqaF4EAu7Pa6IVTcinprRXjJkZS
 m8wTPaKcoma3ORdI4bXQ8XM59WsqAaoLS6JxSERdG0FiLHtMpG9iWiAZz
 r8Jy0WoFibgyZc/59IwLuOotTXB92VP+ELOLueuzhAaRJrCKsDluUwYOD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="9837794"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208,217";a="9837794"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 23:56:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="788110886"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
 d="scan'208,217";a="788110886"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 23:56:30 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 23:56:29 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 23:56:29 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 23:56:28 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 23:56:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dpx0aByTBL5PPoQp/QagR4mKa1uXE0pfQrbHyNQNcKNJ+kiRl9M+sdVUw0KYY4FjkJAYjkrMbnFbtZ67U8kLIMWcp4wXwAmqGfBMWG2reZNDAlfoG759Rt5gYeNc9EQrVKqHC9z8v8sjpVhIzb+GIpWntThP4KWodS3HpbdGxncyCYfqnb/34Un+wDI59JA1RMuSGbQQt5ytfL0yq/acFJ4kwKEsGyLwZ2k89XWu0XsaOX2HqbGNKy46xODxFO8sfmOhqwO1rauMUCOwOs7s6vignscMHDVEJnwQTrqoFiUphZi8JTsAXNXZP5f4uP/cIhkGyKgvTIA04ehPtEFZfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NTS6MM4W3lhHrj/Fu23TmN/+dGWexatFHoOZpr/1vbk=;
 b=QR5wDDMHQ/uL0s8HKEdZ5cddXr/V3CoKw/PW8HmmVvc/9vlOPTtNINV9q6+cLlPH+c0kiz8CBr/l7AEmbH9/tbZg5CFV+h81/WXrfK458x+53mPB3j/FsqGTTPYXA8CaXnw6VuKecsq5mWOreBLBV7CxzT45Tp/wBeW/t11O0dsnuVH9qmxSoM0cs17bL2v6Ez2z5aC/y2YBd00OSGj5gxQUULYUyDQJvQLWz+TZxg9nFSgHLxC1H7/eQQUG5eBI4blOWIF9cdTEAsdsffOFFnCKAdpN2t80itUWAtcS4TP0p1kZJXFGZv/PpWKOrDaUWDioAVf6jJtRO1Bf5G5DjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by PH7PR11MB8479.namprd11.prod.outlook.com (2603:10b6:510:30c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Tue, 30 Jan
 2024 07:56:26 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::444d:97a9:c0b8:5cdb]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::444d:97a9:c0b8:5cdb%7]) with mapi id 15.20.7249.017; Tue, 30 Jan 2024
 07:56:26 +0000
From: "Lin, Charlton" <charlton.lin@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/display/dp: Check for MSTM_CAP before MSTM_CTRL
 write
Thread-Topic: Re: [PATCH 1/2] drm/display/dp: Check for MSTM_CAP before
 MSTM_CTRL write
Thread-Index: AdpTUb9cdoJGzl/qS8+5o/uLxQsd3A==
Date: Tue, 30 Jan 2024 07:56:26 +0000
Message-ID: <LV2PR11MB6024F22AA5D550720E6D1C458B7D2@LV2PR11MB6024.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|PH7PR11MB8479:EE_
x-ms-office365-filtering-correlation-id: e38afddc-5b79-4eeb-6851-08dc2168f59d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IqKrwpd7Dr6WKluuZKIMyMwhGondlV7wtFfE3QXbD7IfIm+VJcAS5FgprPmNVEjHgfifLd7lBs3HSHffkMgC0Tc/q6ge5l2gv6gl/QXFYzNp+li/m7elk/M4UBGhmUmm0p5ToweqMKhmyhNJmjkFnHraIGVzAhBTNTNbcEQfCsltxU+lO3ofcqubBxIbRC058QFsKElRdJWokrDKBeBmmiQXPETEU94prlpqpIvnxwFzuz2aqFlARTnAVikV2J89q1i5OrJV1U50URFxymlMj+SVIFo1C3JWHiy7mKzdopowRVlPz+TmdV2X6QtRKZKJ3A8ikBQ2xOGDepWI4PiL4vKA1TX6IAm8cHSt/AGh2angm/y5swTCmIaObemWgLGmXU1q7+uSoQI5p0YU7l85iOvSZ33rPoiG9kW1FXi2HlSxvFKp5aRtmaeP1FF1/6ydVWaW2ozLgp04Pip1BkPtbZRYd3gjAym4oBKtmIbV6QTGxjTldVnXAk/DeVJEt78MhVr+luP/oGwAfsiFcQeP3FluSpRmHYxgzMo5Y5XYFVP8pTtJKYN99pSphew/PrsYLbzsSk9SFKM2qii67mZYJ1ZvOKlrapKuGkBDYbF625BZNuEkW8BCrM9pDsSUI8Y7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(136003)(376002)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(53546011)(83380400001)(6506007)(26005)(7696005)(55016003)(33656002)(86362001)(38070700009)(82960400001)(5660300002)(8936002)(52536014)(71200400001)(41300700001)(8676002)(38100700002)(122000001)(66556008)(66446008)(64756008)(66476007)(316002)(9686003)(6916009)(2906002)(478600001)(66946007)(8796002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Gw0Z6op6Q23lNjRkNaqFoAWNwZPLOhzglWqwDPLQQ3vm74WhSDxMJlO0fENe?=
 =?us-ascii?Q?+/79NgtfQdx2nvHaoGb9zw5+aIm2nB/dtqozByGFYBY0JJf+7zXnWLEGxLm0?=
 =?us-ascii?Q?OEBEYu9ss1K5RNoC1OevzzUceAifeb5+FKyhkhzTywUOsgfIRVpwR2X9vbOl?=
 =?us-ascii?Q?5ORbC4Gf8DhRf42dmBA0824WqzOOTxaX6gW+17OLM9IH7L7tKH0qudAmdwfj?=
 =?us-ascii?Q?Xf1GTsaVxfeJopwxYhJZO4gsLkZtYTI5T/irtKXSNptVC/omMtDhPw/mAgtT?=
 =?us-ascii?Q?pJwDXAHlE/T/MXy4XXpOmC5I6jmmoIxDpWtRDFZjkTPG/ZL6b8+Fw26lDfg6?=
 =?us-ascii?Q?yKGl2ejVDXNfYdOb2GnY/FrZrJjUQjfGkkwL8NEgRWNTQ8KeBof7ifCq8AAi?=
 =?us-ascii?Q?BksukR88FpjLVVFztVBMiX6Zn22oNwl3kzmyi4uaGnTOa93r1zv1uDHW5MDT?=
 =?us-ascii?Q?nKksNmRCDbCBsECkSPfZ4R7UqmpNQeTAfYdY88ChWgIGkVXyvBK9JVFO+UBG?=
 =?us-ascii?Q?ugXmW87I/gn9KPd4wRXFEQT6w819kvrn99SAfHCBBh96ty2lRPNEWfAv502f?=
 =?us-ascii?Q?WgGoOZpKoxxS0NZ/9fovhTEj9KaBepbw7kcABt/jCx2JwwOUTmArWeLwiD75?=
 =?us-ascii?Q?GjTxG77uurXwL/y6ArvKyCDFWi1Sj2XtGAJabFWDTnU0294ZnSyn4D0aZSe9?=
 =?us-ascii?Q?Y5IfRmQgIOn7dd1JE/wQVWCyZFpEqinYbYYBiuyY5WE/wDKP25j+KuT1ALQu?=
 =?us-ascii?Q?5wtv/IUsF94j0cXcqm2OjzqZaW8VoHXpr7TiF2RLFLU9j9FUQwUnjRlBYTFX?=
 =?us-ascii?Q?V542jobsAplmPYxAU0b9tIYtmW0D3gzmMtwGWV93aIIGuQ2s0+gRY3I9oHOZ?=
 =?us-ascii?Q?89B79iEjcRNwVh2X9BnjfVd1Nct4usehRrgAFxiDrtyesaB+F+EvEZifNNEf?=
 =?us-ascii?Q?cpJ3vZCr0b7WV89spKwNH0FZTWpjwV8+1JNTs7mdsz6XOVXJtFXm/xraG5/N?=
 =?us-ascii?Q?y3IhssNgKKyFZgPlvE6c0qJuUIM8zOxgfyOAQnYzfflByJuUnn+bJ8zkf+6f?=
 =?us-ascii?Q?CUvxWedUxrJ5KwMP8ufPwAtmw7hobHr567ZnYxVyaRO0O/6thgVQs34xs8v6?=
 =?us-ascii?Q?TkMw05f5uK5l2ShbguBj+F8vK/3gzCp6UXsv97p0A8yce9tc4HB/wAkZlw+r?=
 =?us-ascii?Q?z9kkxupTbtS/M0ETD2Kq6E4EH2IjuaEFU2x7uRlAwCmHenFpMB0mHN1rq1Ry?=
 =?us-ascii?Q?I5lc9qcN1UAPi/3pIS2UW+1gFl7REh8JZj9H0EhAuBfZyui7QsIpvbjb9Aw0?=
 =?us-ascii?Q?P3EkNi1yyjEJZzOKEmlXEXpu6aOrZZtUqWcnxXma9+ZORwJaYgRc04/l/phE?=
 =?us-ascii?Q?GspI8GSa1xG0k5i4qow3kqxzmpEkIXQTYghvrOdqxYwyR6TjYvYNWfV5R0va?=
 =?us-ascii?Q?5jXgW3Y5KkZXoUvlZOvNQ+81C+dbvhF/UiQBtgPxJk4odERa7wF2ySp2xKb9?=
 =?us-ascii?Q?hN6Flk+4moUU8F//rf5QIKLxBSrA0qNbn/kdGvWTnWqk9k5qUofCTevvvw3e?=
 =?us-ascii?Q?e3aFtzEAzNXRcJQcgO+NgidHlLQ82El/gJ6JMqh5?=
Content-Type: multipart/alternative;
 boundary="_000_LV2PR11MB6024F22AA5D550720E6D1C458B7D2LV2PR11MB6024namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e38afddc-5b79-4eeb-6851-08dc2168f59d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2024 07:56:26.0227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lewdoHuSjWHippp1TwYC4PW/m7FXt7epfcwN78yvTutYR/8+EfvEwDXc7XmSylR2zjtOf/fOiPNFW1oX0TyH0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8479
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
Reply-To: "20240127063627.1369883-1-arun.r.murthy@intel.com"
 <20240127063627.1369883-1-arun.r.murthy@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_LV2PR11MB6024F22AA5D550720E6D1C458B7D2LV2PR11MB6024namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On 1/27/2024 12:06 PM, Arun R Murthy wrote:
> With DP2.1, multistream packetization and the underneth MST protocol
> will be required for SST. So check for MSTM_CAP to see if MST is really
> required and skip the MSTM_CTRL write so that we ensure that only the
> underneth protocol and the multistream packetization will be enabled and
> sink will not be confused by a corresponding dpcd write.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 26 +++++++++++--------
>  1 file changed, 15 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/=
drm/display/drm_dp_mst_topology.c
> index 8ca01a6bf645..22d81732a978 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -3666,10 +3666,11 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp=
_mst_topology_mgr *mgr, bool ms
>                           mgr->mst_primary =3D mstb;
>                           drm_dp_mst_topology_get_mstb(mgr->mst_primary);
>
> -                        ret =3D drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTR=
L,
> -                                                                   DP_MS=
T_EN |
> -                                                                   DP_UP=
_REQ_EN |
> -                                                                   DP_UP=
STREAM_IS_SRC);
> +                       if (drm_dp_read_mst_cap(mgr->aux, mgr->dpcd))
> +                                      ret =3D drm_dp_dpcd_writeb(mgr->au=
x, DP_MSTM_CTRL,
> +                                                                        =
         DP_MST_EN |
> +                                                                        =
         DP_UP_REQ_EN |
> +                                                                        =
         DP_UPSTREAM_IS_SRC);
>                           if (ret < 0)
>                                         goto out_unlock;
>
> @@ -3684,7 +3685,8 @@ int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_m=
st_topology_mgr *mgr, bool ms
>                           mstb =3D mgr->mst_primary;
>                           mgr->mst_primary =3D NULL;
>                           /* this can fail if the device is gone */
> -                        drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL, 0);
> +                       if (drm_dp_read_mst_cap(mgr->aux, mgr->dpcd))
> +                                      drm_dp_dpcd_writeb(mgr->aux, DP_MS=
TM_CTRL, 0);
>                           ret =3D 0;
>                           mgr->payload_id_table_cleared =3D false;
>
> @@ -3724,8 +3726,9 @@ drm_dp_mst_topology_mgr_invalidate_mstb(struct drm_=
dp_mst_branch *mstb)
>  void drm_dp_mst_topology_mgr_suspend(struct drm_dp_mst_topology_mgr *mgr=
)
>  {
>            mutex_lock(&mgr->lock);
> -          drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
> -                                          DP_MST_EN | DP_UPSTREAM_IS_SRC=
);
> +         if (drm_dp_read_mst_cap(mgr->aux, mgr->dpcd))
> +                       drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
> +                                                       DP_MST_EN | DP_UP=
STREAM_IS_SRC);
>            mutex_unlock(&mgr->lock);
>            flush_work(&mgr->up_req_work);
>            flush_work(&mgr->work);
> @@ -3773,10 +3776,11 @@ int drm_dp_mst_topology_mgr_resume(struct drm_dp_=
mst_topology_mgr *mgr,
>                           goto out_fail;
>            }
>
> -          ret =3D drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL,
> -                                                     DP_MST_EN |
> -                                                     DP_UP_REQ_EN |
> -                                                     DP_UPSTREAM_IS_SRC)=
;
> +         if (drm_dp_read_mst_cap(mgr->aux, mgr->dpcd))
> +                       ret =3D drm_dp_dpcd_writeb(mgr->aux, DP_MSTM_CTRL=
,

This did not compile in Chrome dev environemnt due to uninitialized variabl=
e ret.

> +                                                                   DP_MS=
T_EN |
> +                                                                   DP_UP=
_REQ_EN |
> +                                                                   DP_UP=
STREAM_IS_SRC);
>            if (ret < 0) {
>                           drm_dbg_kms(mgr->dev, "mst write failed - undoc=
ked during suspend?\n");
>                           goto out_fail;

Tested-by: Charlton Lin <charlton.lin@intel.com>

Regards,
Charlton Lin

--_000_LV2PR11MB6024F22AA5D550720E6D1C458B7D2LV2PR11MB6024namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:PMingLiU;
	panose-1:2 1 6 1 0 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@PMingLiU";
	panose-1:2 1 6 1 0 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">On 1/27/2024 12:06 PM, Arun R Murthy wrote:<o:p></o:=
p></p>
<p class=3D"MsoNormal">&gt; With DP2.1, multistream packetization and the u=
nderneth MST protocol<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; will be required for SST. So check for MSTM_CAP=
 to see if MST is really<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; required and skip the MSTM_CTRL write so that w=
e ensure that only the<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; underneth protocol and the multistream packetiz=
ation will be enabled and<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; sink will not be confused by a corresponding dp=
cd write.<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; Signed-off-by: Arun R Murthy &lt;arun.r.murthy@=
intel.com&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; ---<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; drivers/gpu/drm/display/drm_dp_mst_topolo=
gy.c | 26 +++++++++++--------<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; 1 file changed, 15 insertions(+), 11 dele=
tions(-)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; diff --git a/drivers/gpu/drm/display/drm_dp_mst=
_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; index 8ca01a6bf645..22d81732a978 100644<o:p></o=
:p></p>
<p class=3D"MsoNormal">&gt; --- a/drivers/gpu/drm/display/drm_dp_mst_topolo=
gy.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; +++ b/drivers/gpu/drm/display/drm_dp_mst_topolo=
gy.c<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; @@ -3666,10 +3666,11 @@ int drm_dp_mst_topology=
_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; mgr-&gt;mst_primary =3D mstb;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_dp_mst_topology_get_mstb(mgr-&gt;mst_prima=
ry);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; ret =3D drm_dp_dpcd_writeb(mgr-&gt;aux, DP_MSTM_CTRL,<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_MST_EN |<o:p></o:p></=
p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_UP_REQ_EN |<o:p></o:p=
></p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_UPSTREAM_IS_SRC);<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; if (drm_dp_read_mst_cap(mgr-&gt;aux, mgr-&gt;dpcd))<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D drm_dp_dpcd_writeb(mgr-&gt;aux, DP_MSTM_=
CTRL,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_MST_EN |<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_UP_REQ_EN |<=
o:p></o:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_UPSTREAM_IS_=
SRC);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret &lt; 0)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_unlock;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; @@ -3684,7 +3685,8 @@ int drm_dp_mst_topology_m=
gr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool ms<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; mstb =3D mgr-&gt;mst_primary;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; mgr-&gt;mst_primary =3D NULL;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; /* this can fail if the device is gone */<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; drm_dp_dpcd_writeb(mgr-&gt;aux, DP_MSTM_CTRL, 0);<o:p></o=
:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; if (drm_dp_read_mst_cap(mgr-&gt;aux, mgr-&gt;dpcd))<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; drm_dp_dpcd_writeb(mgr-&gt;aux, DP_MSTM_CTRL, 0)=
;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D 0;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; mgr-&gt;payload_id_table_cleared =3D false;<o:=
p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; @@ -3724,8 +3726,9 @@ drm_dp_mst_topology_mgr_i=
nvalidate_mstb(struct drm_dp_mst_branch *mstb)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; void drm_dp_mst_topology_mgr_suspend(stru=
ct drm_dp_mst_topology_mgr *mgr)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; mutex_lock(&amp;mgr-&gt;lock);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; drm_dp_dpcd_writeb(mgr-&gt;aux, DP_MSTM_CTRL,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; DP_MST_EN | DP_UPSTREAM_IS_SR=
C);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; if (drm_dp_read_mst_cap(mgr-&gt;aux, mgr-&gt;dpcd))<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; drm_dp_dpcd_writeb(mgr-&gt;aux, DP_MSTM_CTRL,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; DP_MST_EN | DP_UPSTREAM_IS=
_SRC);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; mutex_unlock(&amp;mgr-&gt;lock);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; flush_work(&amp;mgr-&gt;up_req_work);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; flush_work(&amp;mgr-&gt;work);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; @@ -3773,10 +3776,11 @@ int drm_dp_mst_topology=
_mgr_resume(struct drm_dp_mst_topology_mgr *mgr,<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_fail;<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; }<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; <o:p></o:p></p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; ret =3D drm_dp_dpcd_writeb(mgr-&gt;aux, DP_MSTM_CTRL,<o:p></o:p></=
p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_MST_EN |<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_UP_REQ_EN |<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_UPSTREAM_IS_SRC);<o:p></o:p></=
p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; if (drm_dp_read_mst_cap(mgr-&gt;aux, mgr-&gt;dpcd))<o:p></o:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; ret =3D drm_dp_dpcd_writeb(mgr-&gt;aux, DP_MSTM_CTRL,<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This did not compile in Chrome dev environemnt due t=
o uninitialized variable ret.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_MST_EN |<o:p></o:p></=
p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_UP_REQ_EN |<o:p></o:p=
></p>
<p class=3D"MsoNormal">&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DP_UPSTREAM_IS_SRC);<o:p=
></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; if (ret &lt; 0) {<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; drm_dbg_kms(mgr-&gt;dev, &quot;mst write faile=
d - undocked during suspend?\n&quot;);<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; goto out_fail;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Tested-by: Charlton Lin &lt;charlton.lin@intel.com&g=
t;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Charlton Lin<o:p></o:p></p>
</div>
</body>
</html>

--_000_LV2PR11MB6024F22AA5D550720E6D1C458B7D2LV2PR11MB6024namp_--
