Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E937144B9D8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 02:01:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0AF86E0A0;
	Wed, 10 Nov 2021 01:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF2816E0A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 01:01:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="293406586"
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="293406586"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 17:01:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="582421137"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Nov 2021 17:01:44 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 17:01:43 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 17:01:43 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 9 Nov 2021 17:01:43 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 9 Nov 2021 17:01:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gHhMhX5GJvy8i5UvrKdOe+rzADGXoIioIC+gTHdO8ouzDG9sk8DofjYFt7+31/WRwXKd22XVtf4fQVKrVFZTqViwuFbXw8JuBn2fKSLanLfBCUftS3bU5+6nQZwvQkbeX72DJzkDv9aeBbaOoduPKiT9itz4lDCxchmkFxFRUPTpiWi93pF+BYGUpNT+NMWdrQ+emsJoJU3JgTbZlGIk9kgUvo9OcSWi/4JV1WEwclGbTNuzp1o5195AstIOV6CJ/s9hNTG+f82+5Z0easm+xD8pYFYlwzaSPvmu2PhiI5tzvkN6pmATXnX5cb/DHKTqLBtUFCx5JF16ASY4vQVt/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sXD/18MMiI3uWstmEAAHOIZlBgRZoGcNcBHbLD5oRSY=;
 b=NafXNFcNItUTvdu9q7oS2qzStdBA8IjzBgluBbCuw07qdMbAuSZFF4LUxTNAKAKsv3DNYpajwL58MGbTKoXa+3SJv2Iy3zOHWXNV3JWqEEALKDfZhWG78uK820/eiPh8GD6d6aGtxRP0L76w1uY5TL181SY57B4uo5ZjZY/3Opo0ie44+I+/mTdqTnRn1OySllKT4SkD1RUKOID0jHRFinnC7PEOoufLvZYlwom/0e21lHAou/YO+qx+uPfdre70UQvT3SGu/0IA1WcE2zhW6cHGrxpbod+CSuXC4HVxmm0HOR6i8264r0HiOZyvwJjAC3ie/uc+/zWMfh4JWMXvFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXD/18MMiI3uWstmEAAHOIZlBgRZoGcNcBHbLD5oRSY=;
 b=cug8mCffAaYlnZFDDnCT6kGvr/Og7GLJi7gOr8qVj0b0ildlYn23+F9mdqC5/Y+kJsYE2A1mzdyV0RsO+75/smblgC3dKhlKjF8UlZq0TYL3h6qCZSgJHR/ubi5Qs365/FlQSLX+5MHHQr+2pzmbxjJdfaIhVDR0clZQfakskEA=
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by BYAPR11MB2567.namprd11.prod.outlook.com (2603:10b6:a02:c5::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Wed, 10 Nov
 2021 01:01:38 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::10f:2438:c4a8:4476]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::10f:2438:c4a8:4476%8]) with mapi id 15.20.4669.011; Wed, 10 Nov 2021
 01:01:38 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/dsi: transmit brightness command in HS state
Thread-Index: AQHX1UNUuEMEblCyLUaT72yRDEHJw6v7AeiAgADvdbA=
Date: Wed, 10 Nov 2021 01:01:38 +0000
Message-ID: <SJ0PR11MB5894C631FFD6D733AA546DC2F1939@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20211109065013.12717-1-william.tseng@intel.com>
 <20211109082458.13740-1-william.tseng@intel.com> <87lf1x628w.fsf@intel.com>
In-Reply-To: <87lf1x628w.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e52dd58-78e0-4e15-09fc-08d9a3e5a678
x-ms-traffictypediagnostic: BYAPR11MB2567:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB256712ADE9B53F6E5A2FB0A0F1939@BYAPR11MB2567.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rHFaGDgQiWCb+SQ0MT4koMlJ3Epv+UoATj5NfBgEO/mYxj3C6BaHvtXooykAbjY61v4FW+H8jlLhJ6w7gAwQSU7gCBy7qxqifZWcca9NxdyMu0VOnvffVK6mxMSOEJmogQXBpXG+CGzQV5zRbGJ+WHKbdZS/G30XMHPQjInVbVSpFkB1OLN2ct7/53RJ23zz1nfA6FXhbMRmEjUFIoEeiwxMbhShtJR4UMsm/3SD8lGcgmMUqUGTdoyJgujUJBsutwZklDpMshJIzn9oGVCaX8udmsWyp/7d7/CcTMa5kIC3eKhB98Zm5PW2EEYYONqSYsjsDlmDaO33VyYwzHwd7LE3j/IfqUpytTT7F5gwkLqg07Yjo7X+C0hauxrcrXHj8cmLqqPmmCqgMTcWz8soCiGjDd06ygqjGpzNFIyyNuES++st5+qesCZZywH5qms1nsqBa2X/aNkURoaHUH/TamL0shE7zy7LarqPaSEnoM85m/r6PekjtyzPu/4zjqrIUSwdpzIC42DeiUAHT67LGjMIKD6TATDkdiaYXyhcqNAHOOXhUSRT9UOlaQKIMu6QRoEmQhfASaGe8+wHLdBrBCCl9tk3SC+3Ys6gp6bytPvzySoZE5DXH/z+VV6JiSoOdMEFN8TVJcRqOuIiKJJsAuyIXSqz9XNJaz+LHqyPk2ujBxjgC7zxnXXLkvMl+yLOE4rQ0zvbt36cLogTcpeLyw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(38100700002)(86362001)(122000001)(186003)(9686003)(8796002)(54906003)(316002)(2906002)(4326008)(52536014)(110136005)(64756008)(38070700005)(26005)(66446008)(7696005)(66476007)(66556008)(83380400001)(8676002)(5660300002)(71200400001)(55016002)(508600001)(53546011)(76116006)(8936002)(6506007)(66946007)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8qPLDx7KwU/apa3AUW+B67FCIMW8CgoLwCI6kCUBbZHm/1Uo/7tQ0s/9yWOk?=
 =?us-ascii?Q?uHi9UYGJSMYmRME3MOmsHsibXbAIBl4xEdVy82VWxTQgCu889/rrJI3X+eGz?=
 =?us-ascii?Q?tVMJdoRy1WUs8xwMeTfJzNC0+qgNcfIa+t8EuNkWsj3VNl6ha/kkwKdhX6Sc?=
 =?us-ascii?Q?lNRINgT7xT0RZXFKcI8uariX/HRaK2pFbHIg4IX1fp+I4ucT9TOjme2mNw1n?=
 =?us-ascii?Q?gPkDQKfsp0gNcB8iH5vnsrgBwJGpgt8ihARSk3VpEMmaOdt124vfmOM4iyKE?=
 =?us-ascii?Q?n3nOsCJ7KPaurfsUGsiYXpMjVhuH+slXQxLeuP0VgxBKWmXGP4hfsKUm9ME/?=
 =?us-ascii?Q?9ub3yjVxGyfettFbTUmOuE501eGioih1ORHhNfLC9SfEoFsZux8ka+/3KIbM?=
 =?us-ascii?Q?EgzO0FNl+lBOTiu73FXa5YquAWLBMhhDPTJ8Hpdi7NwlL0qdm02zTg5LEHmB?=
 =?us-ascii?Q?mEK+9GuAkxx9bYwuTnkTDzQxzlBkwTBPDW4wqaU+PnbiRUgZok0DBBty+L7H?=
 =?us-ascii?Q?/Wwes8GgYrpuWVrcOdftgcyy4LujzM3z/BNGCCvUfQqOHjmoD7YvkBNEs3B3?=
 =?us-ascii?Q?+njknO6jC1DTqTXDb7P3zZhudbGc1hBzLifyT+IncFBlY3wYAdx3jvhtljw+?=
 =?us-ascii?Q?65Lcc/jYWdQ3KQt4FhCPCX/Kr41gztWSr7mXFHtHPVP2WJt/Qe4jNNMVyDkx?=
 =?us-ascii?Q?Jyq1C03BO3w/drAfxwqWOZbLPEAaiyylmIDl2a0fZ7QynEOWhoodQCMvoLY5?=
 =?us-ascii?Q?VE3kWm34lF0Y4fKEo94UqjKzQMZyPenS8DBdoFAc9/0ZZo1IV4gweMNOQnhl?=
 =?us-ascii?Q?T4MoK82R/dLg98J1mewE+t4flLWjDHzQe1fXkaY5b9Uos3Xm4uvkoSKJKrVF?=
 =?us-ascii?Q?n9ZpUQgiXbON8WTBzqXJ1EXSebODMd2wUZ8y+AHYdZwubW06khUkwGdmjcZC?=
 =?us-ascii?Q?Am7ietB22oKm0IvvvxjBSXJcNNtIGnUCwSFrxM7bHpVu7REMMz9ZF5KFQLd4?=
 =?us-ascii?Q?AyQmdsfZG0O8Kdb+Aoqi8gfbKO4ofj7PdCf7/aWbU8CGFT6frvWTbZ79WFC+?=
 =?us-ascii?Q?VOiqlk0ptJLXjyz0Ki4mTo9XlTJGoRklc1Cetzs6+JvBtMO06NYVTdgMihWy?=
 =?us-ascii?Q?/YLmwUXyDpbVtWBRQ/jvgOwDsUR39ZrCpIgMOBDdg0URWM+4msFiHdZwa5Hr?=
 =?us-ascii?Q?Gsix8NAv9PrYaPqzYGcD811kw7Lls7kSW1hu5fDh8bSN4xqFJ5GMShJ9hz/G?=
 =?us-ascii?Q?bNMUp8wQdUDi8meH51KstmxN04jdskves6mQq0CFl1+8CKfdNZ4vy2g5NWnx?=
 =?us-ascii?Q?hoHj1MfBDzZUxuLwIGC4zEpB0P5ZbUOOkw6Ci/1Nt5CO2KuwZLrj+vMXjFZH?=
 =?us-ascii?Q?nQeG0nVN5FlbYa8bZmnWLnP0/aWyXUbgH8oJLz38hAi8U+iHp5XmIIuSUrHZ?=
 =?us-ascii?Q?mt0PJzBAHEDkDr/JXyTlSCSiPscLZ0ofKfK0DGCwcxcxN7sBil2ZjRzpN2RF?=
 =?us-ascii?Q?voUDon1t45jTZWRTtoqmvIYhUqedXCwqgM+EUHk6w8yfIyFfAUojsJVofp4V?=
 =?us-ascii?Q?Udrkb1nMGxBKPn8Rz+REOoTK6lYwIutG7g2QIezwP1XDhi9ESFg1qJNGxVLU?=
 =?us-ascii?Q?2g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e52dd58-78e0-4e15-09fc-08d9a3e5a678
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2021 01:01:38.4124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7p0JS+nLYDaabdVTm30ZQuks0dvdu4SwQZ6JChrpFxz+6BgwrjC6VLvc8FshrWMqnkPsuVMbqaWmdsuQ59ixMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2567
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dsi: transmit brightness
 command in HS state
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
Reply-To: "20211109082458.13740-1-william.tseng@intel.com"
 <20211109082458.13740-1-william.tseng@intel.com>
Cc: "Chiou,
 Cooper" <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks, Jani.  That does not restore the mode flags perfectly.  I will revi=
se the patch.

Regards
William

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Tuesday, November 9, 2021 6:41 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Tseng, William <william.tseng@intel.com>; Ville Syrjala <ville.syrjala@=
linux.intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>; Lee, Shaw=
n C <shawn.c.lee@intel.com>; Chiou, Cooper <cooper.chiou@intel.com>
Subject: Re: [PATCH v2] drm/i915/dsi: transmit brightness command in HS sta=
te

On Tue, 09 Nov 2021, William Tseng <william.tseng@intel.com> wrote:
> In Video Mode, if DSI transcoder is set to transmit packets in LP=20
> Escape mode, screen flickering would be obseved when brightness=20
> commands are continuously and quickly transmitted to a panel.
>
> The problem may be resolved by changing the mode to transmit packets=20
> from Low Power to HS.
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c=20
> b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> index f61ed82e8867..2f788cb0f597 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> @@ -81,8 +81,10 @@ static void dcs_set_backlight(const struct=20
> drm_connector_state *conn_state, u32
> =20
>  	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
>  		dsi_device =3D intel_dsi->dsi_hosts[port]->device;
> +		dsi_device->mode_flags &=3D ~MIPI_DSI_MODE_LPM;
>  		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
>  				   &data, len);
> +		dsi_device->mode_flags |=3D MIPI_DSI_MODE_LPM;

Ah, but this doesn't *restore* the flags, it forces MIPI_DSI_MODE_LPM!

BR,
Jani.

>  	}
>  }

--
Jani Nikula, Intel Open Source Graphics Center
