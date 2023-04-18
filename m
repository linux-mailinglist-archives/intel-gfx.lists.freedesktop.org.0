Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4FC6E5DDE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 11:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5639110E134;
	Tue, 18 Apr 2023 09:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4200B10E73B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 09:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681811365; x=1713347365;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DTZ9rANWUUL25aca4FuUJlY+nTSnoM/o5++T6Kb41pg=;
 b=Dm8jZ8vVhLLSfmX7OOyykahQd6YTTyhBBgPAxd1REVLgvniTNJdo6cqd
 Z+MRN0NCsElU727zMqexGAzMui7v1096xK8iey2ZUzjISBrfNO95ZBcxz
 kqKpU7aObuSG20CdSxixYSuZte3pw3NaUPfmOvpwqzE+Xk/BZyvaSjaPQ
 gTqCiTU2XW3sFc4glcZdo9BFbEFp59QrvNnX93wnuJ/MROFhZTNuRGuSM
 GEdJwPoxSQGZws9C82EANSSo0pP5ORFJHW9piSSt4cZTmqVlZlGffUFVc
 CtLQ+tEF29HXbvArlc+gePu0v2KPrHmoPRHcQrrUZ9jTepcdx7LT7FKRE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="410344461"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="410344461"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 02:49:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="691029226"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="691029226"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 18 Apr 2023 02:49:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 02:49:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 02:49:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 02:49:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d6cGES3JeQoPlMdC2x+2zGNYPSUNv45Q7BZfvM9dK76Kb8drw8AslCvDyapasO6ZhH0IIR+O3Pf4YqNK/iWUnOamrhgRNednJA6MZJz15giv75VOHam6a+jMLB+52vhgibyPxyH/AEkFZJimcvO90Dcls+4YAxCiK3hi1xBvA+3mrd/+IH+G6Icc+f68lYBzXhoiHu1pMlJRFvGTy0jFvn7k3zmDGpKM88XQF6SuResQcU4JGS6BrNaHc0XBQIn6HOKx++/RpO/JmDTgpe0gmMMYhEwAp8zRZrbAzwwBooG2nzQIBhESiwcYuu7wCYhJEZsddS7O9/XGwuTtlAe0cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRHLZgWcDXoydEgX+E2PyPVgIfWu8kSVf/Mhb68XJV8=;
 b=TYs0c5P8UCUNuxhaGPtALCN/cDzEcC+c+WQvKkJpMFwDBuGoWxZqaPztbaUMX9D+OpoBjanSmdva/AQbTeqH8oiwBMViQ6U15nsEoEapXjJLySjl1pRsnl+IT+Sa5jMp84Hg3j0jgO6i9YwIQAuluAK5Id3AkRNTHPi4oP1PQqw/Zn99J5kZIn9Sh6IHJHJRPSeb6Y9fguNaFLRHxQ9yHWEDQQFqNSFu7CZULhZhiC/Dme2ZRB5hg/cLr/JwA1cVSSKkx5wefZXu7TCFylfggDkkGmZc9UVOK+aemw2yHmtf4uV5QUa4EEzbs7fiJK70SwZRxPxS+FK2QlkhtZxvcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SJ0PR11MB5150.namprd11.prod.outlook.com (2603:10b6:a03:2d4::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 09:49:21 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3cc2:6622:cce5:cd02]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3cc2:6622:cce5:cd02%6]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 09:49:21 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hdcp: Fix CP current state
Thread-Index: AQHZbPHgxQzK5/8RfkOm2bkHxivI2q8w2lew
Date: Tue, 18 Apr 2023 09:49:20 +0000
Message-ID: <CY5PR11MB6211E8AE7A2396F439911A2C959D9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230412034818.688215-1-suraj.kandpal@intel.com>
In-Reply-To: <20230412034818.688215-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SJ0PR11MB5150:EE_
x-ms-office365-filtering-correlation-id: c2a88dcd-5aaf-48c7-845d-08db3ff22f10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 934R995y+0UPleMAPqRM79XByiIKL87kyjko9MsJgCXCw8H0clA4pYnXqlcr4bipxsyawgr9AmIYd+r83B5xaSEzZUhlpxxK7ftL+G0FVTxBlLWBbosAiF+KFFD6AeG6RKNls/1DKKuLDngOKvVxYzpn71w+K04VTfEYUKcyc3FxbOg3BMCGaC+gD0+TFcAN7cHgZy1KubfP+DijRa7ZtNOCABGSy3tXuAT0huCRe+yyWJjPVSGbxwkeP6VloNTpeGzBn8IoC+eQTrI7ovIxB8KmL/p8r6J0QjOVLV+tW6DUkcLogrP5Q4PJMZNihXK2Gea22y/NPbvjp5W/RQPffQ0QEeBHDkCuj7imt3xCShpctecLUeBK9JR0oXwphqqv1/N4tvQ/aoVUKlKnhjO3Wy5VIVyUyh6JFvnLeREiHLYEl4hZ4f9Lwp0BgG0S73zBQR91WbXjsQua8DCLUSB+gnlouGZX7zJPpxCfgAFii3Zp2JoxmyI9+9Gso4m76R5zDHhUjyQpw+PdiqrKQ7RK6tDuQ+VXD45F3Rn9vd9nvRm+ICr+IyJ+sz1Vslq1OlWlrpdRXSjTVnnj1NIG8ce2b0uSwhAsYBsepF6IlhThik0JW0NTd7tiiZTOZkv3vxZp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(366004)(376002)(396003)(136003)(451199021)(38070700005)(52536014)(2906002)(5660300002)(8936002)(8676002)(41300700001)(122000001)(55016003)(86362001)(33656002)(38100700002)(478600001)(110136005)(26005)(6506007)(53546011)(107886003)(9686003)(54906003)(186003)(71200400001)(7696005)(4326008)(64756008)(66476007)(66556008)(66946007)(76116006)(66446008)(83380400001)(82960400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hQ2nhn238OaAzw8CA6sYChGOpI3dpmlH0Ny15fFHNUutPDCjB2Ry/hqlCAHM?=
 =?us-ascii?Q?RjinBDiyxqNL7QpYx5itP5X0bZ40f+gjxWc4iy/IL2LqxnNSm4jCVUAfH5yp?=
 =?us-ascii?Q?U6NuzWNAsxi4YtXHsiQqTnMxNap+VWX1QD4D2ftP50gSPvUfQ+D4/+4fKPtS?=
 =?us-ascii?Q?8QwKJFsy3pXov3kQVTe20SJF9B2t3dCCF5ICLsV+quyqweBo0LFvR5aVjO3p?=
 =?us-ascii?Q?yR1j9/1lGUTjSppE4EARibs7bfvqg7J331qfNSggSUhXXIIIKfTY1twCbVbG?=
 =?us-ascii?Q?8hzsaJ2WIxa6dq4HtCM4AzvA0/AkaIfpTgDrKcxxKIv2q1ydrpcyF2dS8E8A?=
 =?us-ascii?Q?VlN9sgIssLEKmJ98VK3V9wD1lnjYJDhsdCVnvGtbhBqn3GUHb3HlBcg7gWR8?=
 =?us-ascii?Q?2SE5GLeGV5d2vavtj8f6NGkV/zGspo1tgYqT5TcCcsz1+laM0JLX9y0nXCU+?=
 =?us-ascii?Q?5J8IOHXZiws/xpXJoxLauyHoq0l2mlGpDAfGRK/8MKMIJ0LqJTmnOqJfqV2M?=
 =?us-ascii?Q?1JqpFf6I2YHDbau1FTf6+lguZIUG6Lwqr6LjXTCH3mAnVFEug9elPWjzatqG?=
 =?us-ascii?Q?4bpvwaW7WyAyRJ5pCBX+gIWXx0cZc2onmPNCuPC1vI09FdYenmHGzb3e4TIJ?=
 =?us-ascii?Q?Bmz8uW/Iw26wMJYhqUYZ6db4RZAAKbQ0A9YiCgxDHvLQe1TAcqgIZYHCqPo8?=
 =?us-ascii?Q?jkf5YojGhfIIX3Ptvtf7NnPRvMO4OsO8DyRT0NCes43MnfBWuJFUI02l9Bau?=
 =?us-ascii?Q?IW67pQu7cluZr13wDkk5bSCTaJ/gS892tNyR8EkvXGlhnVtDiUjiY4YwvUzq?=
 =?us-ascii?Q?NevuCXpI/P4Q74p0j5hAYVkKmNfe/yYYpPOz8gPwJzUN1lHl1I4+zbjTDD+x?=
 =?us-ascii?Q?FNEZpkOW9nKWkBVQhGZiK6NakH76mH7uX/BiynjfKjxaBmbwSuTsBCcXDrL7?=
 =?us-ascii?Q?X/nTYGFRqN3AtlVeLBQzjWJL8m6qLSIQMLTEeBaGmP5is+cEmxMXiih9KC9J?=
 =?us-ascii?Q?doPAzXZloakbK9gCUid2s8z4s47WaPCMuL/tS3SBWi72OLJXeh6okotXxCXt?=
 =?us-ascii?Q?DHDBGRVI2qWDsfVBhqIRRtKBzqgXSg07WJOD67b3Kjg/GVoWaXiBLNR4DMgE?=
 =?us-ascii?Q?d7ktKyPihmRpKx07vJzEt4MpItfnGqneYAMD92ABI5y/rLxDeg1i0lVOjMkU?=
 =?us-ascii?Q?ocnCegtDwStB9i3TqofQrdQa/yxmudiVinmx50ca/+hBlp04XJoivoNzHKKa?=
 =?us-ascii?Q?9+oNXC/iLtRwsluNp8V6pgKHZ7seKU6qM5im1TtuVulr5gqGhD5GvhHXw9os?=
 =?us-ascii?Q?GHR7K1uWwJTVxutKJ7vGkdWDta3Mna6Jyqz7o6z6exzO0nrihbCfCcxfznkw?=
 =?us-ascii?Q?wz1p6BXStuW4nTNYMybQiWNtfn6VdMb/xBl5F4loTNy9SiblXZY3EVGAd3Sd?=
 =?us-ascii?Q?ZMMrJ9JNpkOSUhhzvJGHyi3754N2OxuOsLx9c5g4J0dUlyJb57Fc9jQkwXXS?=
 =?us-ascii?Q?PA/c+m4/haaK5WHOZLDK33S6+ftGmSwgXVE7Jut6E4BWL1Zfwh6TqX8gyZY6?=
 =?us-ascii?Q?qNelQTtwtnHyd1wQNs9f/u6tTb5GTOJVYFoAnXQW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2a88dcd-5aaf-48c7-845d-08db3ff22f10
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 09:49:20.7076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QYdvBi3HgYox11coYESp/n+T3sRHl8bZ7p8pK72BEu66KzyQznG3FMqFOsUt0TSAj8r0o4BXUdMXEgczn+TH3hq92vsVVVW3mrSG517xwmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5150
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Fix CP current state
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
> Sent: Wednesday, April 12, 2023 9:18 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Fix CP current state
>=20
> In many cases there is a need to change the CP property to desired even i=
f
> not modeset has been requested yet on such situation being lid gets close=
d
> while DP is still connected in this case HDCP authentication needs to be
> reenabled.
> Remove Fix me as we now send a uevent via drm_hdcp_update_property.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 650232c4892b..7b0648e3499c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2564,12 +2564,9 @@ void intel_hdcp_atomic_check(struct
> drm_connector *connector,
>  						   new_state->crtc);
>  	/*
>  	 * Fix the HDCP uapi content protection state in case of modeset.
> -	 * FIXME: As per HDCP content protection property uapi doc, an
> uevent()
> -	 * need to be sent if there is transition from ENABLED->DESIRED.
>  	 */
This comment was added because , we did not send uevent in=20
intel_hdcp_atomic_check() function as it is not possible.
> -	if (drm_atomic_crtc_needs_modeset(crtc_state) &&
> -	    (old_cp =3D=3D DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> -	    new_cp !=3D DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
> +	if ((old_cp =3D=3D DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> +	     new_cp !=3D DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
>  		new_state->content_protection =3D
>  			DRM_MODE_CONTENT_PROTECTION_DESIRED;
This is overkill, for every display flip there will be HDCP authentication?
Br,
Anshuman Gupta.
>=20
> --
> 2.25.1

