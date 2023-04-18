Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5D56E5F1C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 12:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A106810E745;
	Tue, 18 Apr 2023 10:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 053D710E745
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 10:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681814738; x=1713350738;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yjX+6xgoY0b9kkZmapZwl2pMvCMhCdrkObJeiRvezXE=;
 b=mGihPYMMH+yNX91xH/zH8C7s/lHVaOBn6dS/TIdF9kZduVRzfXgMZdpU
 h4Zrb+8sckNP1yrx4G8Vs6oGJ8N9Q4hwgycKzy6ZSuMuC19DKPlw9aqkC
 jJl8UrWLGlKE8ev+nPurRFzYvlFAUi/dy6rKBESveuZhxOpvQe0NLt/Rr
 QM1aNCRHgMZKx4p0jZGDMJleETe+wmgx7ziPmmn46Bq4iGcxvG2twbIPA
 GJdprX0/1wFjcM1+2qIYrFJOo3dWsj3cLxIQHs1YQGIRCZNo1F4KUL3rR
 oElodkfhzoqUFJuDWQa+89713QJNZuRUtMriYqSRZdggx4mTOpn6hoXXg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="346983404"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="346983404"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 03:45:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="865342425"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="865342425"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 18 Apr 2023 03:45:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 03:45:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 03:45:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 03:45:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 03:45:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K0OXvPBxs6HSz7H3JLDhpNI8ZX6LcrT9QgmP4lzyZl1fApVzCeHVanN7cu5bY+Bd9GLD7F0J2G34MUcYk4gXYEfJCU+G1Rj9PxNuOOpwg4u1sYlv2EsGS5S0lP83gwuY+vNOoRwlHBeGtN8YA5jFb6cDmVphzVVQtTs+qYqpn4DOw+U/JaMJswqXbHSmxv7xJLYCLnHXJ8YsC38Qm3MPQxHJ2cX57Uszu0I9ugdqfln9mjxeSzRtiuKqA1A5xGLL6qFb0yKd3yHLumkbLi+xhRwocDz3RTbn8irhE92dHruR1PUXRVXtx8IhQvQOckmkQk1GODq7mMjJbemYZhxkpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KLcf3KAxvUC3ieu/SeALNwc8A5Ehk626k/2HCPbFExM=;
 b=cH4fAJs9sg/+UOxwiprG6XAVPxyPc8IF3gMiAgt9I4LfMpc6qPzHWwTI2OHCKSZEBWNxrv+EdkEn+3ZGYOBZ5YIUqiAmWNHzX89ilmk5jdNT2GvClq2rn6fwjfsUncHuXR2j+KSvP38KiGdZ6xCVsmcNkmt0GGm1HuqRSb6tXoREKqi7T2LtoeqYJ8yzJ+dlJhf4EViWp8DYKqjNvlTdrfi0//JioMloHnG6OdM5edkXsKvIE61QwKRLfE08oxRmAu8QuAOydDoh9eBUKCPiqJwQJnXz6sYquMHFBklq/8hKHLvC8Youwu0+Qu7dvRiLo4dsJVTIzj3zh9KFsShu0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 10:45:34 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::1f76:e934:bd01:fba9]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::1f76:e934:bd01:fba9%6]) with mapi id 15.20.6298.030; Tue, 18 Apr 2023
 10:45:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hdcp: Fix CP current state
Thread-Index: AQHZbPHgA/44QG5uUE+pQxVibEonLK8w3DQAgAAOn4A=
Date: Tue, 18 Apr 2023 10:45:34 +0000
Message-ID: <MW4PR11MB67617E1C777F1B541C547FD5E39D9@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20230412034818.688215-1-suraj.kandpal@intel.com>
 <CY5PR11MB6211E8AE7A2396F439911A2C959D9@CY5PR11MB6211.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB6211E8AE7A2396F439911A2C959D9@CY5PR11MB6211.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: 2ae72f4f-718c-4c00-62fd-08db3ffa09b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VMwRG4BRYR5dN/k+fg0+maqFyzqspOE3G/rECOqpebKO7nmQqXAAa8FbMXh2s3up+gy3dcTuu8aBwjDhWEcPL1wuAp28hyEllMPgkcnZhkP3n8ja7aDCxzIsZwOrV9TTYB7ksrstannoa+OSA7ggGay+a3Dk2UCyMZ4IKZsZ2sO7HNqYdFQthCwk72Pq2ZD0D6q3WQQip4Zt1eM4ofxWji40I8A9fDAfM9H306hd9Tb3+C7o6hub/Vjup/RriakFUnYqtvj8cym6O1x7ZKPsBoQvpXZWv/cvauv+fl/cH6tXFFO+F09p7KkB6lz9wfKqcwXLDfRStAUv9aMLChECSYnOq3/79Hq947BgmnqPD5H7SlwV/JuMggvfbpAAtXjkSjYAOQGfk/B4rros/V5zTf7JXJ1l2Dsx5vXLGRp4vMwQZkxryauAcTq2pPi2gAWxn46kI3zmt20j4bm1hgfSdf+F9NjtVHmPpByvuFsDdaYjXY9Bvtz2/y8QuvuEfjqVrSfO3n+LQUDYAT45G/6N5spE2GuvELyWJvwuUjoZ1hSl6oa3/OC4kaXAAaCQbEQwNA/teMHaCN32L1aMtWMs5iF0b2FCfW9GXli0tvN6yDkiwdpHEkobm5iJPnRbJB/k
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199021)(7696005)(478600001)(86362001)(110136005)(55016003)(71200400001)(26005)(83380400001)(33656002)(107886003)(9686003)(6506007)(53546011)(186003)(82960400001)(38070700005)(38100700002)(122000001)(64756008)(76116006)(66556008)(66946007)(66476007)(316002)(66446008)(2906002)(4326008)(8936002)(5660300002)(8676002)(52536014)(41300700001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NSiJLhmj7eNojf7RI85gbCOV7S/on9NtuHIqo/vfWF9d+mNT9caCijPjQBEg?=
 =?us-ascii?Q?OzL48a/+KRy/n7SvikwvOuzceeXBkEhVmquS9AIzI+qxVTpjdAXw9lDcD8ls?=
 =?us-ascii?Q?9foxGLkx+iGyYWPJFJwZLzO4wqcpi9JkRcSrwBRu4bjdAGNoSpBEfcymFdfp?=
 =?us-ascii?Q?GBzcXISKNsyJYD/09iPjAOZOKYuHUiYGAyk/+VRVoPQ6NW0XNu8gLkUqjspF?=
 =?us-ascii?Q?qQlOHqN/RW0Pgp0yxhPk2QNNPz+B4bUF1Fnn/9K9lXwEkjuEMc1DlcvZERod?=
 =?us-ascii?Q?K5CbQlsRrWI+xNsdQlNwtmmVumEwMUfbHmpzOiOMzFMibBx5ZX2AdzbC9o3A?=
 =?us-ascii?Q?D7SQJ6wjgs7JvXEhhBjbPhrie3xVZLWlAwku2X+xgxvSZb+1slyPrrl/8F11?=
 =?us-ascii?Q?eTUUFTm0C4cLamHbLotPAM+sablsoEgJ01LDFQqL3ELkQz7KKsbCOsSNz+KA?=
 =?us-ascii?Q?bJ/+VONGDCSbeUiwGlxAQrha9iYJmyOUltrldqf2EbFalUgSWWchIiVWSSEo?=
 =?us-ascii?Q?71MX6QBQOI6mk0Xc1czN9+N5Lf0yYxtgIJvKzB3MuYRujOwcPys7dHtVnwEq?=
 =?us-ascii?Q?3bfpdOnoKC3sMkdVmzSZ57wmBQ5+IEh+9+sRWYOInxDruHLbTm0MyXiJ1Eji?=
 =?us-ascii?Q?4NOg03Q9W6RIDJQ7GZgH1uLtOWE4EGbxyMN7Ve1UkLUjBbuuMn+xwGbfQMwq?=
 =?us-ascii?Q?BP1tC9w4Y4YcH3P1oHhn6LDWmcIaVcGLTsFxVPdKTrDllhO7YS4Ax3j6Odzn?=
 =?us-ascii?Q?oAjefUdgV4bR7mekv4akMQLs7/3IhjrA0qa75TTB09YrnvKWbYORNpgQJiPg?=
 =?us-ascii?Q?e26C8bKItQdUgUEG3TKoDwdRCFA9PbXvsWBWg/qdrXJA9s4G8KuaQe4uUr2R?=
 =?us-ascii?Q?jr4uaEOg2xRWxnDR+CPpqc3x/WIxVjFckBV9eBekCmkp1oiAmo4bBLjPP7+r?=
 =?us-ascii?Q?f/ktDc7GExq7DfBS8JLdmtEg1RvPtgpbW1ACKhdtQ6dO+nDadGyYjEkrMuci?=
 =?us-ascii?Q?hpLFYNmAJHG3RCL0h/6qfKV2xHQMaqDIGKcT5sCsMgT6ucgB7bZNcUhArdfp?=
 =?us-ascii?Q?0nocEU4PsbaQlIbarQ7Yn9FTbuNPKB1HJBzm9swJz4uvzErUNn9c0FWCLPHS?=
 =?us-ascii?Q?kVfZZHvYdQcXBJzb524qrt2rtPSQh3GUXhyA3Sef/+vAMazAjiYMed9jgP6n?=
 =?us-ascii?Q?QzB0uWuQFTu3LM11vFDvuxDxS6CUXmPXl7FeGUz8Aosu6j7yuC6fZI0l2n5I?=
 =?us-ascii?Q?DNs2yJwe/4fU5eSPYhmmfQw9u6CCtSDCWg6nfxzTPGiXnuzMIKxe9G90fzOf?=
 =?us-ascii?Q?3T230NDep4oBYetrzt6mhiOkUAoTSx79DZizDwQx2sMiUPYdLmk0L6by/5D0?=
 =?us-ascii?Q?aoBmPW7jCOMM8BE2vpL50+33Jiwpwhr82uciYd9+ip0ZeZzxWjtjOTvMjO0W?=
 =?us-ascii?Q?XucdaGFWGrs6I1fZ4no0OlIJSNYcFcAt2aNwI88JMbrzSanOEsG9U50z9WSz?=
 =?us-ascii?Q?u9mzoXixcasIMKPvaDNw92P0hAGwr8oiuJykTTWBFsbLKY3EsHZNErS8kUpr?=
 =?us-ascii?Q?jQkskLfaxiUkE52xNR47+1nLHCM8gvJ4TXMCsKdF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ae72f4f-718c-4c00-62fd-08db3ffa09b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 10:45:34.0393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZWfglNw2N1AOKhuc7ItKUAh0EMlYmof9R0/2qKHQd7sONB/ehoKT5B+RH3FrTJTyIVwk18Inswt+Hz4vyyBAkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
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

>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, April 12, 2023 9:18 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/hdcp: Fix CP current state
> >
> > In many cases there is a need to change the CP property to desired
> > even if not modeset has been requested yet on such situation being lid
> > gets closed while DP is still connected in this case HDCP
> > authentication needs to be reenabled.
> > Remove Fix me as we now send a uevent via drm_hdcp_update_property.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 ++-----
> >  1 file changed, 2 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 650232c4892b..7b0648e3499c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -2564,12 +2564,9 @@ void intel_hdcp_atomic_check(struct
> > drm_connector *connector,
> >  						   new_state->crtc);
> >  	/*
> >  	 * Fix the HDCP uapi content protection state in case of modeset.
> > -	 * FIXME: As per HDCP content protection property uapi doc, an
> > uevent()
> > -	 * need to be sent if there is transition from ENABLED->DESIRED.
> >  	 */
> This comment was added because , we did not send uevent in
> intel_hdcp_atomic_check() function as it is not possible.

Yes but now we do it from update_pipe or when there is a call to update_pro=
perty which schedules=20
Propwork and there we call drm_hdcp_update_property which sends a uevent

> > -	if (drm_atomic_crtc_needs_modeset(crtc_state) &&
> > -	    (old_cp =3D=3D DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> > -	    new_cp !=3D DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
> > +	if ((old_cp =3D=3D DRM_MODE_CONTENT_PROTECTION_ENABLED &&
> > +	     new_cp !=3D DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
> >  		new_state->content_protection =3D
> >  			DRM_MODE_CONTENT_PROTECTION_DESIRED;
> This is overkill, for every display flip there will be HDCP authenticatio=
n?

True we are trying to see some other fix for this but as of now only this s=
eems to fix the issue

Regards,
Suraj Kandpal
> Br,
> Anshuman Gupta.
> >
> > --
> > 2.25.1

