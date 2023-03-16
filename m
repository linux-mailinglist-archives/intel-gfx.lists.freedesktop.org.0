Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3316BC80B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 09:01:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898D310EC5D;
	Thu, 16 Mar 2023 08:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 302C910EC5D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 08:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678953665; x=1710489665;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pmZnUUdI91mZy6BQvIxjZ68aizwgmQyoWhu/6mNY7To=;
 b=OKh4nVqbGRsZH7FkHCTvCrszgy8l8U1HO6pbXUfKrVpwHEC/Glk6SgYP
 2Ay5oaA/DtB2n2jW2FMsILYZWgN/5M9p5KCxwFhfG9IGKIKkoRaue695v
 yiP18jvBdyup4nk81G9KS8YUcDXVB0ivs8Z7bLsN1XSynRr95B3eYJRzz
 1+0Xzfbji3IIKSkff6KGu/GwWQkdkfUybE/YPUqd41BqMpUMupa1qW/71
 ji6xWnxP1yLeBCaouW0yhde2TSrxbOiCsHvpxG4kCvZfMrdUgqFQen5hy
 2tLNNa63/eu2wiwE9QaS/0wIQqlwQZV7SVqF32kgR4NXEW9LvOH16d8Fb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="318318480"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="318318480"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 01:01:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="790177309"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="790177309"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 16 Mar 2023 01:01:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 01:01:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 01:01:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 01:01:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nxheMqM1U9fkcKpd79tkYtUJnKkr0AZ3KGk4P6IugqerAQ55IHuhvt4kUB7hpfMc9R+uSwFeBD0U0mgAhK0iUDvpebw79BwxRuv3mvXyYeKYStO5fEY/JR5DVEzbqT/+8a8ATdWNZTNgjEg0B+Gogh2Wgx32j///wvLzclzztRUwDDnJatutlsDC5AwQ69JP0/T+NtO4qRl1CH4uOEaWr/1ZiUIcC1wLr3HaS1/242MsS1ZpvfCyTsiyDzUHXIi53IA6Hn28Rp/n1W/b7+VHJIntIG5/vdc/bPM6UccOkZQhwBiUR2u86vDNRT1D3lHNohDP0sNg2Twy5tGCa1Qmng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ebvh9DHl6YkBdBGymmGeR6JyMTGkmXB1tVzAoKQCezA=;
 b=M1VxvlEnVQwzqaVOTg+3uvK5r64PpFIFRtLqYcSnKogL/XXKa0EpkRqpuPAWrsposegrR/yLjcLtseq9s/qgrHkV3mpn0S8OGxFHY570sjju1iUT30O3WLEadWSvSh4bo1slUFOO2EdYoGaF5+lhwtdm2Ftlfv/DnIUJCavgsOX4ErrThZYePgrX78cExUXSAmss9JVZ/w2PMWNlO6rj7g/FYvscJGF96dkp32gd9DgaG/AIHKEwXxv5g0f/q317fudxHy4k8fdYXF2RXL3FimG9tWBzgUFVui/uBaUvpJ3VfveWv43t3eSIw1nQeI6TKgR/wpm4HXEWq+Adoj+bDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7623.namprd11.prod.outlook.com (2603:10b6:8:142::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.24; Thu, 16 Mar 2023 08:00:55 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%5]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 08:00:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v12 3/6] drm/i915/hdcp: HDCP2.x Refactoring to agnostic
 hdcp
Thread-Index: AQHZUlyMzeYZJhVsvEi9BDLeezADDq79FW7w
Date: Thu, 16 Mar 2023 08:00:54 +0000
Message-ID: <DM4PR11MB6360280C13ACE21A41A01BE7F4BC9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230309075423.409402-1-suraj.kandpal@intel.com>
 <20230309075423.409402-4-suraj.kandpal@intel.com>
In-Reply-To: <20230309075423.409402-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7623:EE_
x-ms-office365-filtering-correlation-id: 60bc357e-8d2b-48fd-579e-08db25f49196
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jtYkNPus0rCyiLN5gK2NiKsK3wj83lAvtgqm22WRmE89S2m0lsaojpDmMWKscng+U1VVIzL4yHKHSsMxCNdzvtoupBjK860ggPMTmzMxTTykYQBP/ug8H9pOgyy+QQOiWrm3JmVAbWcWn1I9UCR2f0VSLqHX5xHujEbyLq2q6eqD2c3tF9XAbgT71PnsJltXuqnx1IeZKUXyI2LO9GShVONRY2OgjlmSwRDavbfvz1kPCXQnRfPok5qvaLhiNKqQwJSCcGeQNd918Xev2qKrZYRkitmPFcln0PTG8bX665g1NKrUiRdEiFbGQEpdsjeYRN0xLsoU1THkKFoxr+x9XWEqkRcqK5+6n7vUPxPeH5e30j6PkZ3+a61FkiE5fX/TN+k0ghMub0YGttz0kQ01RSBoV43x4YhLQB8uiRwaFiPjjMSUyjmxd20IUZLL5Glwn3+S8F9bufo7MehNRwgmGy/6b33Jmn+BXXnzB2M1pd51bPzuvUmLLlMmjLw5da5Z7nfgKYvRfy3FzgvSeoQxWj3b8pBl1IJ9MMsPTPFAZUNkN2qA+R7R3+RAj8KGaroNX4D4G+LeVw88fXXrcIMm7xTt/Kv7I6CnR/W2vqG13d5nvzYiWYai7VQOBXAJOthlcgNvgA51Pcj0PtxzvTLxmbMMUQAmdc02MpcflCVUJ1MivvF+u3ZIo2Sc9YynQDE1BUI2TtFuwL48+dVGPtZvjw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(366004)(346002)(376002)(136003)(451199018)(38070700005)(86362001)(122000001)(82960400001)(66476007)(55016003)(38100700002)(76116006)(64756008)(52536014)(110136005)(4326008)(8676002)(478600001)(41300700001)(66946007)(66446008)(66556008)(54906003)(8936002)(316002)(2906002)(33656002)(5660300002)(83380400001)(7696005)(186003)(6506007)(9686003)(26005)(53546011)(71200400001)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0qryP5lmu03tYEzUYkhXlD2ETPPr/+rtzowOy6Rgf5WKgK9bDxSb7zm2fZNv?=
 =?us-ascii?Q?ZqXuEMH6IDvI7UPr3ej8Wf852qd2ASS5kkGGQ5wX3bHlpE3T6OhaRaCI9zU2?=
 =?us-ascii?Q?jH5gyQBk3TYIomtZ1Jg22swnchdGfPFxyL0qF6lbudryNg2G38Zc0WSoaZ92?=
 =?us-ascii?Q?Tgqarb6ChVcp9ZB0j0yWX6kFnAzz7fJErCgkPfFK6KZVpgRmK5pBw8L/7t5S?=
 =?us-ascii?Q?cOo5J4GRsofs4gr6DRLNVaDnarAQsYG4wr5OynXAuvamfml5alFyhGy2513k?=
 =?us-ascii?Q?5qDfYk4sdS2Ic9qMXjQk0dQzSPrx1hISMxwqy+SoWvo5AGuozdx5Dor0SyDl?=
 =?us-ascii?Q?7xsy8KfKWs4wWE0GEqfXfNs5wThaFNnYPMLyWjkJ2IgBW8yIE21k8aW8hT/V?=
 =?us-ascii?Q?p4l3v7L3kc7aVWp7sPeuntclgGCX3cVvwVEL4VlMpjRmzmzo4pBbYP5AQZTw?=
 =?us-ascii?Q?CQ1hn2IR6ALFHl0h2hxSwu4SonM8Zs0hEax5caYzXlLA4fuCOJy9JEkpJFMM?=
 =?us-ascii?Q?TkxE6XFPUHc2a8Vk/lMx9EMSRdbzlubnstcSIUmS9r2HHvEDKir7jUpQTBBh?=
 =?us-ascii?Q?r5hYspwh8iHHpFnx2WtafbOhgf84NThVE2WcnHAP8SIVC2YCUXhcqC8t8Gsa?=
 =?us-ascii?Q?hGd2aLtKJIsXP4z6E9+0n5x2hC21J2IuA/stU0ijeOb16CfvLdfhWqqLSQ4j?=
 =?us-ascii?Q?3Uu5L157I1fjgG7zjretswwLHbMF/u3GxGXGfr6yANTZ6WFex1shBPYHi2NZ?=
 =?us-ascii?Q?vzYqDBzkHNf2CT9GPzHW7pwDehrijcmD2czW3mpW43+MfOLmpxZHUqxCZfUh?=
 =?us-ascii?Q?ateqdO9E3UpQhrOYSixp9ldAz5Pol5Cubn8W0BeOWF7BYcmu+sVtiqnPxwYL?=
 =?us-ascii?Q?KQJ5e/fLnAtJfm6Gl2zmPNnCAyS7FrM3R/TOMRW17zJ2ZkLLzagA6T9tHpTJ?=
 =?us-ascii?Q?7otjjdtVPstmcwHdSjXj4X80+ZnOW/jMpiCT40XBirtLopPTLEX82SVUKMRX?=
 =?us-ascii?Q?GSKLIVzp7WGMf5UG6hBhLUURbmRXOxBg1fiEJvjb3xWN0hz6snGkjq8yKuB+?=
 =?us-ascii?Q?IHfzdoD+1GYuzNLqaLhh3sBrFfoZTNJ1Uzxaby6K4DMFcNJ5IV31W1DUeeR1?=
 =?us-ascii?Q?JsZkWaO9eAwTF1aksh3Q6RxMr+XGi9NjXQ7JjAviYGEXRxAtCyLloNWq8F9x?=
 =?us-ascii?Q?z/QnZeUJeaBgIz8hAWGu9S13CPUapG0+MqP7uMPWS5sBPJ8RiUqHuAWhfz/J?=
 =?us-ascii?Q?WjJhDYfg14n2mvkrWNLTGKgJt5q1ZFOygzqKLWkJfKvo3oRBETD8RU4u6+4j?=
 =?us-ascii?Q?tcBpgUphTQU1KtsnIYgJrzuCJsXIZ6551ZVgeAPL+wmQ1db2ZW25s5lhRwhu?=
 =?us-ascii?Q?5Ekjt3vQZOysVPcu0LVZQ3bb5g4eogrEshN95EM88gmFU9fhWiIC7LsaunHs?=
 =?us-ascii?Q?jmSdiIZcPNXMV/JziuLfN6a0FchvjW4EkJlpGxlP2+ZKhDkZg/ZN/TE/lWMk?=
 =?us-ascii?Q?XFqrylPMeMi7Xvrxz8puCoy5ZYn/zpSJ0vM6HrYhzPd7QVjIISAcKkceBDRb?=
 =?us-ascii?Q?PKnJWmRf4Y3IEhF7Q+BBWAaL0t428LbhzTP8APN1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60bc357e-8d2b-48fd-579e-08db25f49196
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 08:00:54.7229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ylYheu2GBihVLmdayXaOA0rnRarXsgWCkiw1zq9PBRJuOTqenEKcvcHT0cD1DwNzzWju8RA+GFZDynLZRGazIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v12 3/6] drm/i915/hdcp: HDCP2.x Refactoring
 to agnostic hdcp
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, March 9, 2023 1:24 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>; Winkle=
r,
> Tomas <tomas.winkler@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; =
Gupta,
> Anshuman <anshuman.gupta@intel.com>
> Subject: [PATCH v12 3/6] drm/i915/hdcp: HDCP2.x Refactoring to agnostic h=
dcp
>=20
> As now we have more then one type of content protection secrity firmware.

Just say it as "There are more than type of content protection security fir=
mware.
Make the name generic". Also typo in security.

With this fixed,
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> %s/_mei_/_
>=20
> --v3
> -Changing names to drop cp_fw to make naming more agnostic[Jani]
>=20
> --v4
> -remove header reference in intel_display_core.h [Uma] -fix commit messag=
e and
> prefix drm [Uma]
>=20
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 1ae0882dc1d4..3b9bdc4a764d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1409,7 +1409,7 @@ static int hdcp2_authenticate_port(struct intel_con=
nector
> *connector)
>  	return ret;
>  }
>=20
> -static int hdcp2_close_mei_session(struct intel_connector *connector)
> +static int hdcp2_close_session(struct intel_connector *connector)
>  {
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev); @@ =
-
> 1433,7 +1433,7 @@ static int hdcp2_close_mei_session(struct intel_connect=
or
> *connector)
>=20
>  static int hdcp2_deauthenticate_port(struct intel_connector *connector) =
 {
> -	return hdcp2_close_mei_session(connector);
> +	return hdcp2_close_session(connector);
>  }
>=20
>  /* Authentication flow starts from here */
> --
> 2.25.1

