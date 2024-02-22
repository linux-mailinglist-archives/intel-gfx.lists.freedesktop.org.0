Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AA385F12C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 06:57:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5575410E0C8;
	Thu, 22 Feb 2024 05:57:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hxn8ME8/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E79210E0C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 05:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708581460; x=1740117460;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m2LAV3DqaozXNYVsZmTqV0IMX6pSNaggWXdEbI1LxbQ=;
 b=Hxn8ME8/MNHk02B3NtBDsA67j8CQpQFDJaIEO60dGkFe7SBpRhvvNbqK
 w2EyiDrVp/AJ+L/4Yjuq14iimOxEaSm5F2N8nEdh1TDO8cBRSIJ+YcvTw
 o4BEi96nFkMi3VXMHhZhU/WQIMDDuZmCWpfToVvjeFKAbFb2aUWfAp5Gn
 z86Zecys8Um2svTk8q1/DkWFQTv++getsdf88GNr7sIvqKaGISzfcpcwf
 yzdasMDMQ1yyduENe+D/rBOqgrQPKzAqBHonyKkqaoG/TIJZZMs/nkdip
 XjDQXHsTy9nsnUPA2+01i3dJ2CZ0RTqhj1Ic7tHG6ME5RUyuMZLfHp3X9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="5735694"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="5735694"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 21:57:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="936787382"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="936787382"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2024 21:57:35 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 21:57:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 21:57:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 21 Feb 2024 21:57:35 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 21 Feb 2024 21:57:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EOJ2jWsibcmNpD/xozHzte73d2wOsNXED3Ei9A3hRI3NDDX3NbvPrKFxXqLbvB3eKowRXzk7gXulrKfC1CQ8URsQJ8D5Sr61Xl5rdeUdhPLSfrNsLlx6qk/bGaP3wpCexRnoVLVsgbU3zpKOuUBd67bBb6m1rCcSmPfLpMtHYdpHM9zRrXuGxBPb7HcartuDR1JoTCdlrsYSuIgqmLBP64ZuElw2vl2uAAU3iABUaPkflouM9kaYyjTgzgLLEO6wbjm2rbWh4ug52XfpZQ6v1XjQm+hKiE1JmwKShd3mKyisdzuA5Tojhvqkf3mbxHXVGux6JbnWDK/04ChSxzluzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WFkG92LXPzoZMTwmxKnyHjQqVu/AAT/6GTuqggH7Ahc=;
 b=jXFOIHRLuZQKKlCRQPzHmgM0Q6mpZKQc4+A1BhotB5tKXuYdFNHBG32q3naJ/PdvZ5uJIKC165eGI4wo0sD4sFDBVRiFckZJTWleMgrBo2cnOL192AZppirZLfNCViY2+5nZMRyEjxoPEX1bL44PmybK0ka997rzp3N4abPCPnm6psmN/aq3D84BMEOmD390wRw1doWb+21XL8bnn0cC1u+iuVZRrtVHvDFMcAe4FMUdxcMiMQbdWSi95nHTmMK9F6tyaHVUSWSgRP0DfxWIZ+2Sgu+IQoYlweVuIBrY7bK9XcjkG8rc8zKIiSnf2EwY8bxDaQxEaW8o7u4hnWgXVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH3PR11MB7391.namprd11.prod.outlook.com (2603:10b6:610:151::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 05:57:31 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::27fc:befb:9a38:279]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::27fc:befb:9a38:279%4]) with mapi id 15.20.7316.018; Thu, 22 Feb 2024
 05:57:31 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
Subject: RE: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
 i915_drrs_status
Thread-Topic: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
 i915_drrs_status
Thread-Index: AQHaZLe7GfqSBke+Z0+SaiU1JDmP/rEV3YAg
Date: Thu, 22 Feb 2024 05:57:31 +0000
Message-ID: <IA1PR11MB63487164DE1F2C03BDBC1C54B2562@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH3PR11MB7391:EE_
x-ms-office365-filtering-correlation-id: fd2b8c0a-672f-4b38-6e55-08dc336b28bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W6nGpW0QJRiy3tAjitrPZ1mKwCkfg6SF5QOO23NKuQR6zgl/sI+2o6QHCsP1Q4p3RfwLPcvMTvgmoegO6SplpDGm9mldVU/EOe0hVv+vVr1h5iM5ugDyjHBrY8ZrqFWOsXbsAPQfSGosDVjOemiS/HeAcpXS1UG6g45SXxpD1y4WVrOM8toCh06OAEAhW9WM8M1NrglaHHgWsmToPUnyVjhQ1i4+BC/qRxggn2LdDgrYfeX2TlgagsrAgOcfnOJ1xtJBX3Ieb2j/ZctaI0h68E47+VmR5R30o1+CBhioiOOSBb5Y8CiYd7ouFw2YgMD4dzF+EFYJAR3i6V743rTuEU7oaV+mC2BPQ+l5l+gri2lIp0h3ODUFtGe0apTO7wu5vfy6XdrcpbFLYxJpuj7kruRc4zeQNfQvWErT6nAy7N6Rn8SRrVUh6Y3UG85ISjlYzN0q0Eia2gdZe6ZGBg0ed6jegxp0Ade5Inb/Gi81Uiz81kNWKL1kFGJjh/DjrB3gJAbHoGDmbX29xFmc82vCmrWMSf16dPlyRwyOmCcsbjreYEy7PRsqEUinbzKhxoZPX0DnW8+Tg3F/CDoL/wPb0imfg2cSYAenzeL6mxY3YZvvKypHIkfB0wNEiVkIVrGp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cT92i7yVTZOA6BGarGFKfVKf4N8VFsep+90MxdSdoNxCyqopqh73SbA88AdD?=
 =?us-ascii?Q?oELoTYNOleY70LLOjKQFfPZNx1HG0WaJE4v5WUmz3L7JJ1z4SBg37lUB08cJ?=
 =?us-ascii?Q?G4PZ9mGyjn3up/VFycXmx9ZV6PysOnF9WopYIgtCD9cHxkwAS8Ml6YKNQ8RC?=
 =?us-ascii?Q?TiqL1LvN7wZGobgV+7qDngPVRHP11kzgsFv2yvYHypJFFk7nQlNs/cO7EVWU?=
 =?us-ascii?Q?homfmgwKL01+FV4Rp90N7JVtpxITCqS+6WyAsn3SCXQWrt/MP+yeaS3r0M04?=
 =?us-ascii?Q?oMnbQMbwX/CR1j04FXPxdoDYTWRwJT6yiKFtzd+ugx/5STlIEwjsaP3/8tuQ?=
 =?us-ascii?Q?OVP4f8RPsNHudhGXktqsyBGnG3dewtxEvbUyWMkOn6H6oVIdgbn/v/5OGvK/?=
 =?us-ascii?Q?fl3ZpT4CJSSt7UxEm8mFKkekZ1ZYiHdHv/GfUQfwtcTs7qzOQXrc6NJHPzOu?=
 =?us-ascii?Q?pvt2U3avoQZevtkXwD7cQvUnXjNt0dD1eoeQggx7hxlYzL98b+yPmiJzvqHS?=
 =?us-ascii?Q?LTODCB1VBKfVcZzjCKcIEYmtKL6c4s2/dBJOSOwh/4nOaKjmV/i7Y+sk49Cp?=
 =?us-ascii?Q?9dKLT0cTHOpxldnh70bGXrqfIYZDdzbZAGmdE2CTodzSqto0ugxlL5gzMtjE?=
 =?us-ascii?Q?rGAsfk1xGB+/SsWlvQ16FoOHjtiXZcSfQOuvOlP/BkIFBCrLp9pvPPLIrACq?=
 =?us-ascii?Q?mImBVwD6+eDZSeaN2Rrvg2eoZKWHZLDLJ7Q7ed3h4PNF9kCSspbXXa8j6LT6?=
 =?us-ascii?Q?9Da59Bg3K+Nu2WNGj43LUnPViQFvB5lmuL+pPytFeCV5VlutkNwTbnK+rF4b?=
 =?us-ascii?Q?HFWfd/6JBZf2AdLhLMmxtaBBRUuM2hneFFsfQ3ElnaWR0sdc+qw95dRwGxVz?=
 =?us-ascii?Q?esC2lsgaEEjUx9Du/Qv4w33I/NQUC4pHHHxNTrHR5Jmy/3QgzEHL/OiS27Oi?=
 =?us-ascii?Q?2MwhVasIkVg4wBTGJdf1Nb+l7SnjqFbysCqY5qcmhOTlKVTw6zdK6LhfEaHU?=
 =?us-ascii?Q?iIcETjVt7De24au5XRSFulbvyXNNUMHRLEzQrlA9s/eL3BuKXTZ7cKUZW5p1?=
 =?us-ascii?Q?EjUKJyElC0fXW9pTuF+t+2Jayp76r6FSn/E8NbqCocFIWgO0i6ex3eF3/7rl?=
 =?us-ascii?Q?OTv3EV3y8NX1f9b+GaZjxjO81IClbkevuW66uaNV1PHAt//dU/XXoU6s75mW?=
 =?us-ascii?Q?ReT5ymQZMt83PJFf9KaQjT7oVN/SoOxYwYyZ7B0sRumUBUWJ51hrVWXQq4id?=
 =?us-ascii?Q?VxAaSSSklRFcmJmvukcjyfsKdJ5u0KjDIE8qvYjU88rXybf5GHJvhF7khiR8?=
 =?us-ascii?Q?fQBPqNDti4xJFPpdC3CEoz0E4FAtAUrRgEoS8J7hmIQ9RMxTYjj9FBY2/2JJ?=
 =?us-ascii?Q?vrJd6XTiGy2RbDvyHJ+LECUD36IPFbNf1ieXG2LHclnJDUYlGp+aOCGwEt8k?=
 =?us-ascii?Q?FhlJQmouUHA5/OAEkU42KkCI0GCpEE/PZz9DIbOGYetY+QXVPAHHPRGhldyx?=
 =?us-ascii?Q?qRltFWHYHiHwsxYWNHsS1nAK+11ixVZAqqe206xFQ031E4etq5qjvI4Whh0O?=
 =?us-ascii?Q?Bmx0R7x6xA+Wsk+n6aFy6s7awVLVn2VAgibjoC8ukRMVn7BJ0IA5cVLDYqBC?=
 =?us-ascii?Q?3hcgYZfXf2bfhe5OLV/6RuqNwxlZykT4KdZ1drogASER7ruNrIcHbleZmrsS?=
 =?us-ascii?Q?sMDFLT8C/txv6na00frdHUk5V/4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd2b8c0a-672f-4b38-6e55-08dc336b28bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 05:57:31.7430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h4rNaiL4G5jf6mzAizqZGXaIXMHSafJhBQPzh6e5Tlzl6Sj0kxmmTw6QAriEA9i2H4o/u6TDobVC4GQPUyzjVQrydUnW4LKKEz7J/fvkoLm+8YlhK+vvchQ7q7yPn0tX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7391
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Bhanuprakash Modem
> Sent: Wednesday, February 21, 2024 4:42 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
> Subject: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
> i915_drrs_status
>=20
> If the connected panel supports both DRRS & PSR, driver gives preference =
to
> PSR ("DRRS enabled: no"). Even though the hardware supports DRRS, IGT
> treats ("DRRS enabled: yes") as not capable.
>=20
> Introduce a new entry "DRRS capable" to debugfs i915_drrs_status, so that
> IGT will read the DRRS capability as "DRRS capable: yes".
>=20
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c
> b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 6282ec0fc9b4..169ef38ff188 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -299,6 +299,7 @@ void intel_drrs_crtc_init(struct intel_crtc *crtc)  s=
tatic
> int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)  {
>  	struct intel_crtc *crtc =3D m->private;
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	const struct intel_crtc_state *crtc_state;
>  	int ret;
>=20
> @@ -310,6 +311,11 @@ static int intel_drrs_debugfs_status_show(struct
> seq_file *m, void *unused)
>=20
>  	mutex_lock(&crtc->drrs.mutex);
>=20
> +	seq_printf(m, "DRRS capable: %s\n",
> +		   str_yes_no(crtc_state->has_drrs ||
> +			      HAS_DOUBLE_BUFFERED_M_N(i915) ||
> +			      intel_cpu_transcoder_has_m2_n2(i915,
> +crtc_state->cpu_transcoder)));
> +

Adding DRRS capable property to debugfs.

Change LGTM
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>  	seq_printf(m, "DRRS enabled: %s\n",
>  		   str_yes_no(crtc_state->has_drrs));
>=20
> --
> 2.43.0

