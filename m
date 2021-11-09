Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C6C44A847
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 09:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1356E7E2;
	Tue,  9 Nov 2021 08:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3F146E7E2
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 08:23:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="293236282"
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="293236282"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 00:23:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="469898622"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 09 Nov 2021 00:23:50 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 00:23:49 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 00:23:49 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 9 Nov 2021 00:23:49 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 9 Nov 2021 00:23:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dizaK74S50Yy3yFnwDq3BIfy6SSAsrV8i6O+WU5dLo4PpHXjhqNIFonVoIp/iYP0DOPMBFM7kNcWh/X0rhaaVAuLFj8CYt30g6RdYAffaDjynTRcXnd8Zv62yJhzuL/L8SH2w3wBIVLhfU+YlxatcGlqhdUWkBiaf1hl1Q9S2CaAeq9Rvo1S/KXMqBP8McQ76mtvH7EwGhmI5i0nIYpMMzBNLZHC5az6+BZWfiG4+D2wvJF5C9z6loAtgy+X2z3MMjwXwiJMGMfyvYhhvlp3XPINEWqr4IqQsu+1LLN7U40phtz5f7MzD7jxHWl9syDH2Bypiipawi3mtbHmIVaDxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u3+PQedjXHBIMjZAJi8z/Om/lxsvk1JS3ZOd6Uee2hw=;
 b=SFZNu5Jp08Wsd+Pp3hy+aNOEO79z98vfVuiBKn+RDYoowy9LXGeafmK8zuDJy1OQyMhujevXRkf86M3Sw24N2sLfU5UeqRVB/Q8ERejfWBR+juBWGqwoawqX/wBFvN+7d4z8ZlppuNaSaIuNAI/3secaC7Y5Prk6dmsBOfoo6IxAFCOewAPgj556/VWnFFMDrPnWd9gbPA3pSwi1HdDzsiTF4Dfnc8S4SYz7pN/IvkumopoYo7F3fE2HAxU7EV5OfvaBpVYx7aWRWAjtkN3YBNvs+30nqB6A8Oqtpzxn9zO0rFrv2x0uVUe0tmO+hZgZA6ODFgMeOyJweScKo5IN9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u3+PQedjXHBIMjZAJi8z/Om/lxsvk1JS3ZOd6Uee2hw=;
 b=Ed7I98dZ9rO5VsrlE0N6y/bcAoBb5v56fvNX1mMC8wxxHc+Fx4xZjmvsO+XGXaMEXVgE8og6g7J5bJeHS49qjIUvsHf5caHT47rY7l5WgEr++/Eo9LuwQu84Ztu0IDpRaysNREqTCkMSdQhYoIIgRAQ5L8l8s3Fg/mBTgFtfCZk=
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by BYAPR11MB3736.namprd11.prod.outlook.com (2603:10b6:a03:f6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Tue, 9 Nov
 2021 08:23:43 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::10f:2438:c4a8:4476]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::10f:2438:c4a8:4476%8]) with mapi id 15.20.4669.011; Tue, 9 Nov 2021
 08:23:43 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsi: transmit brightness command in HS state
Thread-Index: AQHX1TYYJcfKToUuXk6Kzuos2m7jwKv6ytCAgAAOmYA=
Date: Tue, 9 Nov 2021 08:23:42 +0000
Message-ID: <SJ0PR11MB58946269F7AEBA99EB960206F1929@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20211109065013.12717-1-william.tseng@intel.com>
 <8735o57pym.fsf@intel.com>
In-Reply-To: <8735o57pym.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 9f9d45e3-f14e-4b90-2df6-08d9a35a3de8
x-ms-traffictypediagnostic: BYAPR11MB3736:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB37367157F34D3AC2A7BB4E7EF1929@BYAPR11MB3736.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7G9BwmRq0PxU2So0y0TkfmzJBTZvRjp3sOWUU4usk0eKgRcMMeOW9awyHrD5cNRozEx6IQbNLREkIqxbG+NUmxlUxrk58nGiBOFSxcmkDs5NRsUHui8xu4icxeaDmOharjHwvRmQjKf3SYJfKY2p9OWFU4PSS903yOUxiJJ5P0GHBsLNGG6zivzMBeoBW5EIgmumPz0SIvkW7ELXK8MNmzGfuFt8hoCbc+AH9JgIZ2El9aV5SeVZrd8fiKc5pBGvVvVHsNZd2d1/JoJz6vJZl9HdeAM8B0QJUzHTX/fy3BI+wXdhJZM8jOUMYi+t/5+Lpc0lyWsemYA1iNT59YfOEvv1B8xiuQjW6qkSG9FHN7OEE4U6KNHc0vkvBX1ZVCpmx3F3ytZRGIeiGnfRMFoKyczq5LABTvRjTMyNq97TJNapaCgWz8r4NPswqZePABXPvWSVyWpzvXKCiJh+l2mtbSBptE74TJlhsHENkJsjafyJCc8zhmed870H11AYMWBh0oq8PAzziWomDz1CT1bmECsMfg2XCY07PQOZFiYiE1/WA2h6Xz0W79mRWsnqHnwaeBCuL5g4WdNRLB0axlWeHNFR7WmRyYHUW1iX53YcSONoz4czS3ZBoFGqIaBvgiNW0U9kc8+FVcDoIT6+Z6SOuBixnW5J4Q2HdCxLZyby+yoaVFLaDXVACCIKBAEtY73NIC/WYWreksiH/ddRdUd+GA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(52536014)(5660300002)(76116006)(26005)(2906002)(54906003)(186003)(71200400001)(7696005)(55016002)(508600001)(316002)(83380400001)(38070700005)(4326008)(8936002)(8796002)(33656002)(66446008)(82960400001)(66476007)(6506007)(110136005)(66556008)(64756008)(8676002)(122000001)(38100700002)(66946007)(53546011)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1a1BoLUiMbgVciq3W6ZbzfiFuILuKeHtB0kGuNwInx3FMmJP3Mc+7lThUI9D?=
 =?us-ascii?Q?+3TTW6Vh+0QqVHIdTX9A4dl6FvRh0GAedRQPxPSFziEUy1xniQFifLLsyY1h?=
 =?us-ascii?Q?a0Okpu+Q/ud0/PWFHWvNHLvdC6OIQdQpe7lNp5dNcbF6upLlSuqNdR0qCrsf?=
 =?us-ascii?Q?nD+Zzi7HDKB3jsW17oUbHBSDEfhc5ftCDNQx54Y0SCA8kC/trKiBiRXwemZ9?=
 =?us-ascii?Q?ZipWUlnoIV6p9TLJMil7GvyhSHGGbdhN0umFKbVr8ZVV8UpOps4GWwsIY1rC?=
 =?us-ascii?Q?c+JtNBBPO7xxDek5Vus/u5mualKfQmenTyIURgWS8AZPtMh1x5bA8QFDZ6US?=
 =?us-ascii?Q?YQJpxFkVK3W1oDJBM04KQXOVjU7CiN51XrTWryqDiSORbuwqu7FNyDUaR6pu?=
 =?us-ascii?Q?bBLMzFJHonaVm1NMaBi7TEp0Hl1QReM4cPpHLzRfbWHyERJIAYmfrE0uGFsr?=
 =?us-ascii?Q?Bp/suoMyXYY4WTMUeLcJ0cAMgv1kPEBuc725xyFR0u2F9ospRJr7rum53nPm?=
 =?us-ascii?Q?P700WRkjR2VK3AhLGxlpKbTpfDYkcyYZpqsLSHRWAHxhM1Or02+c8Qt1BBfU?=
 =?us-ascii?Q?O1W23HcsXH1yanGmicsny/KNaymty06p1ApsRIiY8qxhyUZ6G7F8Gj8ApqfV?=
 =?us-ascii?Q?k2h0/r1FKjZn3xB01yROUZD10NBIzYqMPB538WxGRWzriselS51bU8fa4a43?=
 =?us-ascii?Q?Q7nkWwQaVh27aLvbqFcEFZ/V1E+ccYbipu4MYsAFYGn24mn9Kq9mwauly6TW?=
 =?us-ascii?Q?8lQcXHJ+nxaJaFi1TO1qWPkYXm9EDzWweQjWyqRacBg9dTNtcndQY8+pAWLh?=
 =?us-ascii?Q?blFCF96KAyT2s58DBMNWvWvihsakCePYdheOTzVUaXY/idQBG9V84cbUk7J7?=
 =?us-ascii?Q?KUCfdzqCI3SQT0mBUHI2PZBeIgX1EzW2MOW0AHYyvw7ClIG9ZH2kyNWMAVYd?=
 =?us-ascii?Q?tF40O+6XaTb2Cvch2TKf3uNsdW77JpEt74cJxcpY7VBkXJQpNL/20WLCam1W?=
 =?us-ascii?Q?M87x6HfyxZUiAET2+IR67Nl1BoJkU7eUVfr01YDr0Om2TxMun0cvtkFB+a6r?=
 =?us-ascii?Q?KhFNW8jNHelA3QtLWpBJ6HTYrfb2KWmdYH4/BFE9fMquYBFpOb/8ch747iO+?=
 =?us-ascii?Q?TPwKzGGsNOzyCABahJoQpQq930u6rl8rTEdVe+RpYhgwxYGOOcAoq+jKRTu+?=
 =?us-ascii?Q?SKYborlLE2CcOQSL7bJvUDMqBpUj0AJS7Jpzwx6LIWuRm1G9l/948hTFO192?=
 =?us-ascii?Q?neijqH4kaEDppyPjTPDOlce1vRxuMnM8ftqgXn4CgU7nlba9b+shW7sK9wR9?=
 =?us-ascii?Q?jWKmYfZCnjThnGJJ2ALYnd12fBMv+nZ6bGA00jBdQhqbz3ek7PiVbyoWHHl4?=
 =?us-ascii?Q?CR3e2udCDqqqeNbqOTcoFU6OjDuConlWo5WB9tlKSi6+h+jfNRsWBUHyMByN?=
 =?us-ascii?Q?QaTFdeFLIaPXeHip4BcjxBrXBaq5Ew8i8RaWISuMw+BJL7kVorLRcaSRbpTg?=
 =?us-ascii?Q?UznRLOD9pVE8L3KNNWwJ4eVKqyHFufQrOIKGq8aKpg3M9kaSxzFlGFgJ8hM2?=
 =?us-ascii?Q?aV5hZ4LEvRDSoi6EHwKShITyBwxCHvFVk7KaAbnKOIcYYwIJDH8mO6WF3vgL?=
 =?us-ascii?Q?5A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f9d45e3-f14e-4b90-2df6-08d9a35a3de8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2021 08:23:42.9899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vLGKzE/DqSBfZAx4KelMRhZaYxIlafcw5n0bHv3uFl3BxDSyi6m3fx7VEhkTu4uQ8dHlo5J+DekI5d6js04ZZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3736
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: transmit brightness command
 in HS state
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
Reply-To: "20211109065013.12717-1-william.tseng@intel.com"
 <20211109065013.12717-1-william.tseng@intel.com>
Cc: "Chiou,
 Cooper" <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you, Jani.  Yes, it would be good to restore the flags afterwards.  I=
 will modify the patch.

Regards
William

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Tuesday, November 9, 2021 3:23 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Tseng, William <william.tseng@intel.com>; Ville Syrjala <ville.syrjala@=
linux.intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>; Lee, Shaw=
n C <shawn.c.lee@intel.com>; Chiou, Cooper <cooper.chiou@intel.com>
Subject: Re: [PATCH] drm/i915/dsi: transmit brightness command in HS state

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
>  drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c=20
> b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> index f61ed82e8867..a71ef1eb598c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> @@ -81,6 +81,7 @@ static void dcs_set_backlight(const struct=20
> drm_connector_state *conn_state, u32
> =20
>  	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
>  		dsi_device =3D intel_dsi->dsi_hosts[port]->device;
> +		dsi_device->mode_flags &=3D ~MIPI_DSI_MODE_LPM;

Frankly I forget how this is intended to be used, but feels like you should=
 maybe restore the flags afterwards.

BR,
Jani.

>  		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
>  				   &data, len);
>  	}

--
Jani Nikula, Intel Open Source Graphics Center
