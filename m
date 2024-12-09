Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 348F99E94BA
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 13:48:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BADF10E353;
	Mon,  9 Dec 2024 12:48:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J2IxCdoj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BCE10E353
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 12:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733748504; x=1765284504;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jL/dNTSnVLADgqiCg8j/YgfR5LD5RIaMBM6X8r4su3Q=;
 b=J2IxCdojVzKoSuw5RiGw96nIrKnYdH2jcn5jzlA9WFWmwT1I263MzGhj
 Zc2MnkQnseqQYj6ep9Q7Q1C908PqNu0RUO4HwJNzbWx13CaClbO08CsRh
 r1qwwx52eKnIwGulv9gK6TK9H1z8TFPg9pCjCsNHagM7kTPoAEUuOYnvW
 J9pGGASwc0Kbf4XoZ9ClHL7VXuPiX8G6BaEjhBBp6LZtB+ghitYUuc3bO
 G2o2KpbTEluNWMMjD9yHiCQ1O4sI4w2ztVhnW4QdvP7gc90SPTAm5ggt5
 3nzl7wXNI+VRRt7DOF/2hOF/9QFJ6T2bfq6a1tJ/9GBQhHwwYL1bWZ9gH Q==;
X-CSE-ConnectionGUID: xzzX449DTmmvXItY3MXaCg==
X-CSE-MsgGUID: ovaqAvUqTDGlQS62F2kHAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44510399"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="44510399"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 04:48:24 -0800
X-CSE-ConnectionGUID: 1/kuRYEETXiczva7E5rbHA==
X-CSE-MsgGUID: EwZMFLjeQUebxRqNwQgpSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="99519296"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 04:48:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 04:48:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 04:48:23 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 04:48:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vHxvuck46rAgrFk0TltEMzd1cLcChlUX3Xw80fsniOA4m+UWmwYOXaIBGhRPP8t4/IP7lkXennFTOA+1OD4jQySYMyoYAc26LE5VCVBhBXK/txLjZ6+rtw/Dmsjir7TauYooHKrfqE0Q9hwfS25DX34F5iXhbXQBsiIYNk00IovZtSCWfRDe7VMk2Lw+q34RcpITBq9H2U+hJSJZoJtbM0SmgmlYo0Od+gk0ZC4LukWv3yFYO5dugq7/K83kRXVbazQegtXLgofFAM2eEq6e7BBP7ZwKmOvfOBb8tW+OsScDgECIjw0PSz4ZwbR+7H5kvibzK/cTfB1IchFXqJJuvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hhGURfl08siaDhG3QvhzHyjbapI03TiZnWOo5vLpKjk=;
 b=oJo5dly+rWIJA/r9WqM5kRy6QBoWyzmqv3c6JQqgFtUTlxBTFkh5ThVyM7JlWt3v+qHjGDsso8/2wabz9bK9spodQABvq7NoXRh06lxH5vRrP/YBFaWfqr7vBe275IHjnFirHXmzrAjDTa8etU+WTHT5HTmGrS8IOnD5h3sQy7OS+t173rCNLqwjaAxVaRGYEocTstQX7K+8O71DlpOuHVhb3WhQyCKakb/UQa0JGrCUPFuakZr0dBBfWve6FR56xcncTMNp3Q7VmDhhI3SaHtJvRri99XTF61AONCoGWxlPYlhDkjmtsSKJYtBUQMMUHz1Yv8/BPP9XN5yUFBx7zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB6335.namprd11.prod.outlook.com (2603:10b6:8:b7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.26; Mon, 9 Dec
 2024 12:48:21 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8230.010; Mon, 9 Dec 2024
 12:48:21 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/pps: include panel power cycle delay in debugfs
Thread-Topic: [PATCH] drm/i915/pps: include panel power cycle delay in debugfs
Thread-Index: AQHbRxJ7Pk7ApWON/k+RjtSC42O1pLLd4vaw
Date: Mon, 9 Dec 2024 12:48:21 +0000
Message-ID: <SJ1PR11MB6129E94FE67A8215E4B0FDE1B93C2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241205123720.3278727-1-jani.nikula@intel.com>
In-Reply-To: <20241205123720.3278727-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB6335:EE_
x-ms-office365-filtering-correlation-id: f8ee1a11-56a2-4a12-41e4-08dd184fc31c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Ksm9Ud6U5Q6ngU2Z/9Opej+U1it11wEdiYgBd/jzmPGHStu9f0vJ05MB3+ly?=
 =?us-ascii?Q?TXIkewpwY/7mvbzVSIZ72siYzU8pi57cbZdbuS7ShLaekLEUMFqXspBNiDJ3?=
 =?us-ascii?Q?1Nf/dmD+HlR1PZ72FgR6Kwj2SIZWkWwbaUF2NwBcsU5A2Uo6lNHFXS5Gk6oS?=
 =?us-ascii?Q?NHM/ABXQqtBXjXBQE/75u6ZlBSMjsC12A+Agn72yOO63qnm7CzV8OT+rhKws?=
 =?us-ascii?Q?fjKfqPFH0TqyXPKMVNVsM9JHghffLNvla3uVj9iIfOX/FnJTYxMAF+KWU5WH?=
 =?us-ascii?Q?Vpt0e822Y39bAjZ8XGLkmpoKDI64uihH2C/pVIeGbGbCNjDwqScSJHWITjdJ?=
 =?us-ascii?Q?w6CgnBmZKtmqI2la6cjhtoiUDULtlTh0OcgrJVDeLrZffarC6t/qXuT58x1S?=
 =?us-ascii?Q?/qjmDMRbOc4mZmbBYg0mTm677ASTxNgksjHzyxpeByfu9ZFGMnpXv1FBC+rr?=
 =?us-ascii?Q?wdT9Fab8/XzbFYDTbO7cgpooK0pex7Nvy3jgdmn4/gn4r3RI4QDVJYxVuAjP?=
 =?us-ascii?Q?ihokINQP6GOaerQGJUfPns5W1YMYIXehIVApd/cNZ2qMYY7GihjM19D8HKrx?=
 =?us-ascii?Q?8JZ0yXnM/xJmzZQiM8cEvpzItHlHZJhQzRzbgt5N8qOT8jvq3IH5C1lt1+3F?=
 =?us-ascii?Q?YIOvLnPxDaTdn8fEiG2HvD+C3tMs4B+fye6wY8AdIJSp6r1KsSqQzxC8UdnJ?=
 =?us-ascii?Q?R2LRxy+aaDsRQ/gJ47FWWwZGm1N6SOTRlB8zB28KfPywtLNQUbKIYb5uH9k8?=
 =?us-ascii?Q?+oD9joCV0WAXnn6OT4JGqFGFtdUWeb7aHOUOiwQl9sHwDQNdjHzltwuCCDww?=
 =?us-ascii?Q?1u1ZmNC2JelGbLfBypEI1e7eVLZX+zfLBpxz3xFkMZ9qhQOXjVVtSb1KaW2C?=
 =?us-ascii?Q?xxyK/rV/3WLQdKnpK+immOLHSOfVTFYr8pLpBD4fuc1X1KzTWC+r/x5gtDUd?=
 =?us-ascii?Q?ZEltJXbPPxlnwN5WAiXkI0NIYNV+DAONav3Sz5QdQOILs8hBTH6Dir0vymnw?=
 =?us-ascii?Q?2prZVFl8fwj5ccEDq+EbcMn2TQPFPI/h+go9eL/vuZzfXUfldn20CfQ0wFdO?=
 =?us-ascii?Q?GXQh7IcXqtEDfrrhQNAw2hLudecE6+rQyLmQL/mGOnCekZeS3bO9ItL4Kde8?=
 =?us-ascii?Q?opKJ3vZI5hVr+rAajOCwOzlFSLmIRjj9mTmSocMCauCDT9BwfN2fv7oXVEId?=
 =?us-ascii?Q?KWuEC1UJWzeEDMkcd+fSglpJO5JmIUJoNIugR/SDoXVeq08MNKfdecL1Fh7q?=
 =?us-ascii?Q?XhTG4IVo4/G9eMrn8bDEA9x2DgJ0bluOHgu2sKNphIpUORq5ecpF9n/RPrYA?=
 =?us-ascii?Q?8JBa8ZcOTKieCQvG0YgVmiAjy6YggdmWcgrKspw0H1rfb38A98FQFmC9KItF?=
 =?us-ascii?Q?KNO0hCEBCTtcmf9eZdYnnO2Pdnq76U8QS7FMeJQP0UrN4QoPWA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Gc3vC+doxRKVsGOaCQ/5cuZBpT8cezoC65DrXqYWW5bTMtbw/QovimiLsPQ5?=
 =?us-ascii?Q?xayg+gKAK9jEXXbzo9MnlTxCf0t/4xk0NZ9bfAS27mJZGO7wcn07ahfzcu+h?=
 =?us-ascii?Q?6alK6I7GcL5mjr+ef9gy8CDauAzPO3aHYGtocYqg9n/F+kROuOvjdOHXEdQ2?=
 =?us-ascii?Q?lt21Ea4S2l0gWCYxzcKzmooXLxuStt71BQYGaCbZKDNVMExw+d0X8aFQJTO+?=
 =?us-ascii?Q?Ld3MNP9Cgj44GoitTZAlwtbE/UsRsoiZKqBMExYTQDfwn7eHNuhPHWogvlQb?=
 =?us-ascii?Q?66Ew0HB8/B/cjZtuBqQ2j50E3E2zyIzXZrJ4JMgZqdrxlxNE7+X17HQahldw?=
 =?us-ascii?Q?Xq1lRtfuWfU5la/0AYlAl38lqPkyAnHy+D+eggjWDN2Rs9GxTAA7tBqa72u+?=
 =?us-ascii?Q?PS0VCx9yT2PciFPwyNzr9OAyjUK6UAaxMV9d1XnDAhsyn4j7gQibNhIU1mkL?=
 =?us-ascii?Q?7F6bPdycwjrMTX40Q0c9YBJiYU2i1iZVbOseS+IWgXTcoUgnlmi86i8n/asV?=
 =?us-ascii?Q?8zlKQZ6U3+0XEy+7zVMYXvUdTzHQtl9uZ1Ly2cirjanso79z3i969Kvd5qct?=
 =?us-ascii?Q?9sgKeMcSeab0xjmbbYHP1sM307/tdugFZCatEWJBfWwl7aveui8l6d8oxqGg?=
 =?us-ascii?Q?mW0c3zhWbKxtwvHiu0JUnJbjhtsyAd5D0KfLHHKLBlKKDO9Nss8GWV+yLiyt?=
 =?us-ascii?Q?IEvHesHPR6NwRFqiui2785073coWV1/282ReKTx2ZYio9N/YyYBTENu5X5fs?=
 =?us-ascii?Q?xPkHCm+MyXdLhl2sQ+UCM0SadQltW/XFmMh2PLrV7D4ciM9ncTbzkkYDDGIF?=
 =?us-ascii?Q?D3EEce9Lo4WNuHI4/tsqHEVBxfRooj/eobEkjoMqnThxRqoxSSsFkqjoRKpk?=
 =?us-ascii?Q?O9NxFK4Td4qs/8/TEQHd1WfAjkwibNjQZ0zS3ZmcXIqqeTlYDX/RNF/NGnnd?=
 =?us-ascii?Q?bRQ72nLrag9r+CHvneRWWB0UdX5PlxonLAhohVwVFEWI6qUewttZbaT8q2h2?=
 =?us-ascii?Q?nXRpN/1PAcouDg2OwOK8B1vATr/H1F8HL2PQGH9WWMpvChLBq8UbntQzBis5?=
 =?us-ascii?Q?lrbaYEKpQOPb9k3TFVw4IqYnOqpexNAfP/x07MTEGZOkt6OjjOaNGy9i2m7P?=
 =?us-ascii?Q?GA/OtSV86DvSBaVj/5xOo2FiWZ0pqUUFjysTnILM/N+TcBCzoEJd8206j+5p?=
 =?us-ascii?Q?+CDaIXLCz6a6pAogmtEcxA/jbvRFILFcgIoZiQTmdIrES8UP4Jc+tRtD7jmS?=
 =?us-ascii?Q?aS6Dm05Cg00x6fKhzV8MGg7pohPNa8ZI8hVO3mkjkKGYlDdt3DE7jPLwGPCs?=
 =?us-ascii?Q?asr02EArCpViqXPAR+wEoW04xwutc9O6tCp6zNIVL1Ph3CI04gtlVVvWMc/c?=
 =?us-ascii?Q?CamQz7dwXJryBd6/KuOyDp46DOJBOMC1D0xs6l4DWcVK87HqMElOXvXM52ve?=
 =?us-ascii?Q?sz914ph2ex2clyy0Z897x8Mv82VOTt8NKUnOaGZD6rvRpaEN9D6GzVkC0KbR?=
 =?us-ascii?Q?nLgFL5m2ofGojyfnpWQMSz8Qx7nY7I5UixgZXpJgYGQYB7TMf6aLhvTzJI5G?=
 =?us-ascii?Q?eMYTUtqLbZn06JY2ZxYxYvjpPeOQaxvmkOHB6c+uqtxYbP6pRIYyN42H0GZ9?=
 =?us-ascii?Q?+Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8ee1a11-56a2-4a12-41e4-08dd184fc31c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 12:48:21.0823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rTCS84syFjUKfEwiQyJ9kacFJ8tM1kTHitq9Ku1KaL9nIZurrSYOCWQqxQC+A5fO4nhCNl2mo/68fADwbAXdiTq11emSt4PfNbYj1EwuZPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6335
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, December 5, 2024 6:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH] drm/i915/pps: include panel power cycle delay in debugfs
>=20
> The debugfs contains all the other timings except panel power cycle delay=
.
> Add it for completeness.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> b/drivers/gpu/drm/i915/display/intel_pps.c
> index 7784b3b760db..e55c84685521 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1819,6 +1819,8 @@ static int intel_pps_show(struct seq_file *m, void
> *data)
>  		   intel_dp->pps.panel_power_up_delay);
>  	seq_printf(m, "Panel power down delay: %d\n",
>  		   intel_dp->pps.panel_power_down_delay);
> +	seq_printf(m, "Panel power cycle delay: %d\n",
> +		   intel_dp->pps.panel_power_cycle_delay);
>  	seq_printf(m, "Backlight on delay: %d\n",
>  		   intel_dp->pps.backlight_on_delay);
>  	seq_printf(m, "Backlight off delay: %d\n",
> --
> 2.39.5

