Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E13A8236A3
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 21:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 075EE88D18;
	Wed,  3 Jan 2024 20:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FCF710E2E9
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 20:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704314157; x=1735850157;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xn4oHWWDHW7ucFJSFucdh7Pb0hYSYzur4q/zlbKyf2Q=;
 b=Pc6OknVD6IONUxDX/MgP82twHZKYRX48ato81vQqSm7Lu45nxPLhXtXc
 7Xa5q1BXki1l0xUxtJ8WSrjHmdntI5YNdRyy9acJqc8kAX/GNRDRpu5Vq
 C6+Hcg+rRYlGh3sYnS8Lpkvsx+3Z/nFkAT9eIWE5UmARp8w0wHdB0s4A9
 cwZD1p8YvmhWBxUgWmHBoMJwYtijduDx6aRoCO9kY62d5QNPHB7yadgQF
 Ogt77rafMiKlH6CNDS1U5ngtQbMs7dhURywFSR18i8bejLw6P0/Zu7K6M
 SOZgJV0W59MIUbp0PeRFj/R2GUI0yGpqUtBibnqqusERa73ZCt3aW66yg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="483242207"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="483242207"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 12:35:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="28487459"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 12:35:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 12:35:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 12:35:56 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 12:35:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mrxwc4a8aQ7NbKQWTQrL0ClL4H0Sx2GRHJedhSbE5T2T0z2OvDQiNlyqVm3km6Dn2UJ2et/EN6IFDoBdjGCi+Pj7gpGoNbd392MOEPpkoJTRTA4Rw/nAeaJx3syIhysrt1gGpwpOx85A6HpORwigpFWrorT7Be4EXp3wVlpCeOJ2T4t9GPCKv0cChIP6admCJ74gX9eP2bdOe1flxP9bg7yQAS4U725YXEY4Ic5TlMLiTQ2/ml10GyuCh60AUSZ+CURgshzgqKaTEx4oCZ+Uq5mXMg2vd4w0PgZTXQSraq+0bjitc6izecOpHTLkTaPey4vJPxbeqL1w89Q6p+Jhxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yalTCKXc3QnF5Fb4EkqIkqYSZUSsadQ/ILjD4ABHdYc=;
 b=SViyU+917CexzAdLNNE4sqVCNRBEjdR/F9W/PfgzjLzoCmxjIszWuVSzipWZ7AGtpRrb/KbQD2X/Aesm3rEa/6g2SZVZWFZYjVyfbEDoAcE5DTCg2K/G9aHEz2LflrxX4LJ55aG9D7gs5T+tgSsDYb8yN78xLwg0xYndoZjdfhYvOTCXOf5nKiMtME0dVKzOc/DSR1oqxeklNcn2ekAimrAeb5DN2W3gVv4200Jzk7F+OjUwhrQmmEza1K+Zq0smHuieatpP3vIMr3Rrs5Y0o4IRiXeHqosl6lpAkbk4zsuBrB/eF123dARV7l/sMmUd58+OVevnHZKNr9Kno2ygyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA2PR11MB5210.namprd11.prod.outlook.com (2603:10b6:806:fa::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7135.25; Wed, 3 Jan 2024 20:35:54 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7135.023; Wed, 3 Jan 2024
 20:35:54 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Skip C10 state verification in case of
 fastset
Thread-Topic: [PATCH] drm/i915/display: Skip C10 state verification in case of
 fastset
Thread-Index: AQHaMnhozRUBMQZgTE2VfjprMVkKfbDIo8jw
Date: Wed, 3 Jan 2024 20:35:53 +0000
Message-ID: <DM4PR11MB5971FA2C270696F185ED75B48760A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231219123246.832245-1-mika.kahola@intel.com>
In-Reply-To: <20231219123246.832245-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SA2PR11MB5210:EE_
x-ms-office365-filtering-correlation-id: 2aa8ba3c-6d31-4203-b457-08dc0c9b9514
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PmFf2eMLKuuEBY+QSLJtzI/SDZe9/8wKUQ1Iufcmmhf9V5ycG9+RQGPjBUECqJxlctKatfy1DxvYoOUd6oi25a3KVo6LW69fgcyAUqIgV8w1YVtFIgNKs94tAn7YmLpCN5zCf58KZM6BSsN0hX7cWbMaNpOA9tkSYznahdTVJLBsRl7Cj3EtyGiZMc2YicqigyUedka1MiHFQM/jLj8NGStl07iaxqzDjGUByFiPjjqmcQ6f2J8D7LLmhgFMI2rHOgi1O+iV0ZqAIBDqi/0IVPx4UXlzyagbr3FQ3fU88URdWneZEz2sJKfU5musBDMdH8yTReH2h/nhfz430BnpXoNe2x16avLysx1EOqo/ybXjlC8FYdqcOYWzXwrWilmb44xjvy9LvjVt92z4iOR2PEe/hryyyF/uhHr+tSTQRbfExHf8vQWxdfsnnn4Vd90fUbx/JGuYKCs/zg5vDsYgm4Ie/uLgIW8e5Rd/Qq0QfFKs87Nc3TlQ6M9Yt/ntRz/X5xHs1FCPsBnnwZWDFIv78buoa4CEERs+IwYbt7oq4EacyQngbaktmZJ9i0cEKvXkx1Js/3UfCjutFT7xgN1zo9W3v6N7daM7nb5jC8S6eE3bM5qajxhPSEKfLxFNE4+0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(376002)(366004)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(15650500001)(2906002)(5660300002)(38070700009)(41300700001)(6506007)(122000001)(55016003)(478600001)(38100700002)(33656002)(26005)(53546011)(83380400001)(7696005)(71200400001)(9686003)(8676002)(8936002)(66476007)(66446008)(82960400001)(64756008)(52536014)(76116006)(66946007)(86362001)(66556008)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W/iMrVqrZSq9TTtn0inxPnSIIWojY5NvRdmyv+XwH9Oj1EvNlJuLbTdmIqNw?=
 =?us-ascii?Q?kxKUhOclKD+qtQaKNMIiYXyVrrqvA8/qFHUVx5RCzssaEw2+GbWjQGAIW6pk?=
 =?us-ascii?Q?xIEU+hPF7TrS2jxhfp5ikPBet6mB+6YLKXfLubo+cJcPcWvsiUk0QmD2ez6S?=
 =?us-ascii?Q?XGLhae7wslVg5wtHkIBPgocxh2dNARZQOHFLX1dJr+j6WnxJiT6hInRvOLvY?=
 =?us-ascii?Q?zKIwdW97OFu6XgxqjHGX0s9dWfUgTCm6UOKr+QSwZG7i+r8zqVzQ+YqegiEN?=
 =?us-ascii?Q?ohXkakf1l7xzYZ9oWILW9FbJ4uedg7IB03+bfgi3pcBTqTzWANrFG6U4wLy6?=
 =?us-ascii?Q?xedUuKHgGfEYRb76bb+Cw/jht6JVs3UuEpt5DyMe3ra3pyMa1e1AvMTcIiEu?=
 =?us-ascii?Q?FZmT1OzK/KEKJjorOv8J87WVP8+kmtIiBYGg7gp5Cah9chRGwitGqKJ2IOkZ?=
 =?us-ascii?Q?vkFnCa7BEwXmq3eLeZst1xOdMVVdmHoAHG6B13xMaXPTYy2SvWLAUTQQh6EF?=
 =?us-ascii?Q?eyUhqLSZeON/gPIbHHx8fqzhFYmnMdwwtODskUUZh6wsdHJikp8N6emI4q+N?=
 =?us-ascii?Q?6WMmzMW3O7zV66iPknyTdA4m2a36MZkCMTvYHACKqD+nZCTSHOUuBirHhAcx?=
 =?us-ascii?Q?YImRAPEIVyYfL3IMTx0AnQRVbFtlmQBwm29VnpgSweuEdnxEXNDL/g+wFWyF?=
 =?us-ascii?Q?Z1aRk/7Ba+dcO0FSPCISwxGdLHW0whhJoyfeY/eenZ5GXCRYOJHkoC9Ucr1G?=
 =?us-ascii?Q?2wn0IFTpuz/3j3LIf0dHq7NR0Vv748e1UJpLJrZXp22iyIZ/UME3GZKMIoAZ?=
 =?us-ascii?Q?FWsqPMhs2xMCFaoRpE6KL1z8CvZlTw5Z4CwQpVDuGAa65L+Eda90owOr3S+k?=
 =?us-ascii?Q?MHm/Kh/6ZWV68epvBiDEVZVHgOLs+DLJHQ+4YU1RLiiBddO7nXjCxf+j/dzZ?=
 =?us-ascii?Q?3qNXZgumR4eBvvE5FOwUJisdVLr9Uk6MgxbK2RyutYy5NKdBcMlS1+5opnDZ?=
 =?us-ascii?Q?5+KVhG0T0dWgQvtKmHU8r06/qVrZZQRHK2e0BU5Ao+1aMdUFyMAUgG0+P9rw?=
 =?us-ascii?Q?R+TbpI/DLJu0Gew+lNgA95votS6LMuNdgTxsPGd1ysFkcE3/0swpFqjtGt20?=
 =?us-ascii?Q?Ovk948GvEXvY+FvWKfU1D33g5JFnb+1bQnPFBZEV0IRwombK6TXSPmxLzQ2C?=
 =?us-ascii?Q?AZ1sRAApcj+AY9tpuybQkBBYWIfqUpS/5yXjoJt4eARdqyc/6VshmY/27M1h?=
 =?us-ascii?Q?Y20/Kn7J+mLxsszzR9bwBNbSbyosTB5iNKsStFiLexXXihLwZo1S5pbeU9Oy?=
 =?us-ascii?Q?a3ZmRDFMQgESOe5/qPmfL9iQ5r9cjG32DLz60aYzF+TEZECl+uplqBl9aEer?=
 =?us-ascii?Q?4jeh/Cpi1Zz3yRmWX3M7mc/qBqs3lYIqAm7KLPBjilYs+ypEAASRNHVw3p1V?=
 =?us-ascii?Q?8Am+VVgRerMdQ5f9KRPaOuHTpedeWyjfpAK/iCYCDz6IWzLxzTeSo9JlJuBv?=
 =?us-ascii?Q?JKJ3H66Dwl/5/BRcPK81x+fZOBppi/fpTMjipIn9gWQqddRsl1nMRSDur38g?=
 =?us-ascii?Q?r6t+yVGGCsfDs8LezG5FqGKgtahNvNR/iUXUH3YEMgdbpU1mIV5cJ2wvNZ6b?=
 =?us-ascii?Q?yg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aa8ba3c-6d31-4203-b457-08dc0c9b9514
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2024 20:35:53.9885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zj3v0FzDwb76DfxBNrCuuqo7gwg64ztRzSM290S7oDufrNiV+z0AoTDgyqZDG8MUgciayrpvXebfRe3rYba8ENf3AgkOkD+9+AAe7YTaCGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5210
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Tuesday, December 19, 2023 4:33 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH] drm/i915/display: Skip C10 state verification in case of=
 fastset
>=20
> PLL's are not programmed in case of fastset so the state
> verfication compares bios programmed PLL values against
> sw PLL values. To overcome this limitation, we can skip
> the state verification for C10 in fastset case as the
> driver is not writing PLL values.
>=20
LGTM,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 884a1da36089..3ef54eaca9e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3016,6 +3016,9 @@ static void intel_c10pll_state_verify(const struct
> intel_crtc_state *state,
>  	const struct intel_c10pll_state *mpllb_sw_state =3D &state-
> >cx0pll_state.c10;
>  	int i;
>=20
> +	if (intel_crtc_needs_fastset(state))
> +		return;
> +
>  	for (i =3D 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
>  		u8 expected =3D mpllb_sw_state->pll[i];
>=20
> --
> 2.34.1

