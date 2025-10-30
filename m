Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCAAC215B1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 18:03:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A353410E2A8;
	Thu, 30 Oct 2025 17:03:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c2N21QBO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A12C10E2A8;
 Thu, 30 Oct 2025 17:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761843834; x=1793379834;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6ls+ff1Lp9UZhAFjSKPqWasZTADdxHHt+N5pI2tqj5c=;
 b=c2N21QBOALQw1X3niaPt6t1Gb6LlLIP+hP+K7yu1pjTxtmqtAeKronL/
 zHYi3FY6jhsqELTsq/E9ojTN4D0kvxGfy3AxR28pmzWQL4JAENJ7rsXiP
 doyGPyrFyV4Q/CAdmU5UB0hIcEKLYAqMdUnaXsHIFb+DCJGnFCfVFXpG+
 6XEmNriu1jXenFONDd8GN0hHenYQW4VjwYTPIHGp25Z+exYjHs/9zoXW8
 nUNivdJHD13Wa1c40rx/lBzEHYzLFmsWSR0DuYnSbqAoixW3SKh+5kjVm
 0fliDEVKlUVu55zf4PYbxARFZhxXurtFb2u056SDi5K6HraPj+verF5Z/ w==;
X-CSE-ConnectionGUID: Wy1npM9HTS2LwpPz1e8rtw==
X-CSE-MsgGUID: MNRPwEEETx+WgZVgEHT2xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63898660"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63898660"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 10:03:53 -0700
X-CSE-ConnectionGUID: Gt+s3DPjSymULjm611xF7Q==
X-CSE-MsgGUID: CbrY9IsrThSlDNBHWo256Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="190083030"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 10:03:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 10:03:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 10:03:53 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.7) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 10:03:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wefbJsgtSYFfgjwZS9YMEuVj8UJUwjF85kDckZhympcUq3cXZX72tvkAIoqJ5f1WNC6UM8IIT1CNfRWxFY2NX0adnh6HdGy8YyyernVekL5GRFCvZbeCDUYnMa+4kih3JA+mSfRlVyY2J+dtyR0Z7h7u9AzT2FTatnH1bo+NzaGxdQjHmAg3xw/v4kxd1ZfB6tJnHdhGDOzHFc0M2/TSItC+mORKi4WoLPDsaqaklh8rr9RUS6vNIkbYsGw0loz6Lj3vnOmYXh/8B6BlzBAIemiZi/y6XI2buR7wTsOnyJRWpNaiJLOBpILDTHrI17oj6AaYJzF93bQPysImYEZtiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67zCYCz5iesv6NDx1SEFTWPdgnSTvFe7LmdqLKeq/HM=;
 b=eDyFyZHtaWaZeCxe0Fx1QtGZXIPJ3rZfMHWXY1j/T8ynn/XzFOYIs0+CblXZNdey/7eBH/Y4jLOZVyw+doa9BPS2fSe1PqOh7IBwfIUZGnEqGWM7VG1J+WTGIz6n2lJpGwRhgm1FpU5S0ZdVg7YW1qpTMyIbVeyw79xtMXgQT1RWm0ZUUOBbmf8HFrnmM1l0kFtq9mjrPbXccCB5zej6pIxJDl57SyvSfaS71pkbyx4rr0/cf043oJI+8R+zQua0SZP+pLCdow63LHaqib4GTj8wK6W/HX+K/oiC3Va8RsJhl6xyHHLinZtNg3XBkEwjaMbfX81wCTKPYDXeg8uJuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 LV8PR11MB8721.namprd11.prod.outlook.com (2603:10b6:408:203::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.14; Thu, 30 Oct 2025 17:03:50 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9275.011; Thu, 30 Oct 2025
 17:03:50 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH v2 3/4] drm/i915/xe3p_lpd: extract pixel format valid
 routine for FP16 formats
Thread-Topic: [PATCH v2 3/4] drm/i915/xe3p_lpd: extract pixel format valid
 routine for FP16 formats
Thread-Index: AQHcR0dLdVhz3JcsjEGwZRVVIR7z+7Ta72Tg
Date: Thu, 30 Oct 2025 17:03:50 +0000
Message-ID: <DM4PR11MB6360E24D5EF78261A79D4CB2F4FBA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251027134001.325064-1-vinod.govindapillai@intel.com>
 <20251027134001.325064-4-vinod.govindapillai@intel.com>
In-Reply-To: <20251027134001.325064-4-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|LV8PR11MB8721:EE_
x-ms-office365-filtering-correlation-id: a1bc5fc2-35be-4c14-af61-08de17d64c7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ylUO1m4QMK+tdF/h+1fiSloZRsZ9T3bBfCctXHja0tXC4XfMC7B5piVqeNba?=
 =?us-ascii?Q?dSQfzX938+Xy874EhFLPBTpBgAlc4naw1MCU7W59GWk904JAKwN4KIVPOdG6?=
 =?us-ascii?Q?P3xbBvT25ZTfGLMbc6VfSiNwZ2ZKarIMsYYXcL4WJ3HZF4Ltc9h+cFpuEEMu?=
 =?us-ascii?Q?zWFeCX91jXg+4ledhpmubds4g2NfqukJQxe0di+8u9N2Qn+vUgF3SUXtt2Ln?=
 =?us-ascii?Q?DHadjOXO7WdzRhrF3WIHvmobdOuuNmd7W6+H8TqRxplS6JVhhvzW+OaZe4XP?=
 =?us-ascii?Q?cha6BKDAVTfuWl1LE45RvT2GQtluyzffIL4WQ27UH4WoU2GLe7K2umD6fdBA?=
 =?us-ascii?Q?TZxDViKhH7KDRomjHi4zRkbxvKsZiXOwp988YtSLQpGPg2uurjgBY47C+Vuv?=
 =?us-ascii?Q?rzJu2KKJRzXd3ghbspBZ2oduvpmzbWLndqcoSA/Thx9uP7uErlmZxdBSLhgS?=
 =?us-ascii?Q?ed1cS41tCZ7O+k4m6mY4xqz0CTzdpYFEG0J2X5UQncsFdv3jrEcsleJ9b0tf?=
 =?us-ascii?Q?PsfVdbmVwsiV+bYH2FHkZnj/NHnuT3crKHOoJMXrMJ8Tec/S1YSJTyEqRglN?=
 =?us-ascii?Q?3aqgedPL2LP8f8T16G26EuCOUVbtHQ1QHblUu62dQKV7nlCrVOTk2dPRB5bU?=
 =?us-ascii?Q?XesYHXtQjQkEvzTiUQ8D5QAx/F7Nm48ibWMHdsPoCUFNpkWWk1ePF3Hfb4B7?=
 =?us-ascii?Q?RdfzG5Q0KSI2b1Bjb0zVvkdjgPpI43fcvwKfxYbJHIoaZhaA3kSfxyU53qt8?=
 =?us-ascii?Q?doQ0KUIJCaAp0TNqiCKxPeKuQE1jFy3P0xYy53Xwwj1LeMMTyJuK4dIGFmE7?=
 =?us-ascii?Q?EdfDJM6nQVgDVmN+6VHUXR2itLgjZ/CbCJQwoz6iEjclOZttAF9srBGqyFHZ?=
 =?us-ascii?Q?fcQ+0AhI1B1dxeit24fFUSSFu1rawO/GEkpHy3Daor99vb7KSUeEvPvpZo0G?=
 =?us-ascii?Q?OQPioskp1aLGgwbSaUzYdYJiOFoPNq/DYiNuznrKuAJ0XfQxOm+8L0nC4/aQ?=
 =?us-ascii?Q?T032kzh77SKVXpzLSbnTCoYN4BSsZYsVY1aXozqRtTEg5FyWplMQYXGZ5cO3?=
 =?us-ascii?Q?gIwHw8TuDv9cJwGeqzSdcv+/jisQoclmlSdZsCK5xwavlQUXc9EiasHGgrJJ?=
 =?us-ascii?Q?aNqt1QsZ2J2TV9T/UR2MUNEnalIRqKw9XLXKYCB/ppd8vdcALtmbs+yeP6Au?=
 =?us-ascii?Q?L9C+jaVbI5bTmy+wqBqBS+gyMRgBlNOOVBmuGn2gcTV3mNXROmSJM9u6dup5?=
 =?us-ascii?Q?dDlxDTe0GweIz2BXss6I160D1MdxKU1d8rrzDL1OXBqgR8BaDrFtS9DdmX4s?=
 =?us-ascii?Q?N1ZhhRD2P9SnVAi9VrGeQ1B1k+2TzbzBE+U9H1FVeWXn2an/TdTNGlUt+GRf?=
 =?us-ascii?Q?LLp7QzZjbdfiSdw4hYkxKB4VYImzSir/lBLXKOyqPT1kZ9ig55b72Ve41w5l?=
 =?us-ascii?Q?sp84S3tY/9PBu57DwP/cJeSuwtmF1BOTsBU/JgYBFqP3Pnk9+gFkQtwJAtb8?=
 =?us-ascii?Q?d10kZMV+ES195MHzIuHa/BBW5dv4gTD/mI2G?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gmDrq/cS8Ocrvf7Hy6ysUgiEjNU9wj9JLLDUdYD+9f+9Z5396nTUr5kFU9OR?=
 =?us-ascii?Q?5uatcEQZyk1KylKRJFveDJVEzIXjY94SXT4ihiAsQx9SAlXHqQ04fhzcd15h?=
 =?us-ascii?Q?yjREwfM+8l3q7U61r90/4B6000lr9QrAJ45yJOcI7/12Lc9vCoO/fs3BUk9x?=
 =?us-ascii?Q?Ugo89P6ZqkoM9LjXe6lVDhEHCIHN974AzXt3HbCg8SPXK6pSbkOBcY9jCExE?=
 =?us-ascii?Q?ggOw+eyY7QsTTYVGJ1WdMxQRY5z5CmOc0P+qvarRg8iI178j1KQcfMa6JBjh?=
 =?us-ascii?Q?KXwSB6Enjv/5XdVxkH6JU0qdL0oW1HPp2q+dnxwDAlHrWHpkxNDQJ16mw971?=
 =?us-ascii?Q?yDfyS7JDlFVy4tgPyRtZT3aDQDo5jZwhPKIWCG8pguNOjUt0JHKnbknikZHX?=
 =?us-ascii?Q?lBH6Ue2pm3ZQb04uggR01cM0stBUAnwImaSYtCgD/KN3zxNxZ85t79L6S63A?=
 =?us-ascii?Q?0z4LpHHqaJs5G/SYEpftUW77vFOcVl0tugMwaJyXMWRul8DEkcCTHUkq7oIX?=
 =?us-ascii?Q?cFcBh6etfSa/a9jWjM6fAiNf3zjG/BskRkGgXpQl+UrnDm37/w5XqEhUV6wL?=
 =?us-ascii?Q?2peizKZNJlrKFhdkuYyNlrPrJWlpI4OHbaOW2HqKUGpH0NdIjYyPiBe+TOSJ?=
 =?us-ascii?Q?akz/uSy6osWFvxRtxZEG5EYPJ7PCHxPQqowmIUvb0UJFRdn5wjXUgCM5wiL5?=
 =?us-ascii?Q?flAYfxh7CSClO7Xvk5+Rq+telQQb17iNYdiD+m7o2zwc+kDQqKy9E+xYXkyP?=
 =?us-ascii?Q?tQDg1Cz99tBvjRHYw23faH2mcJSWpVheOEVbtmAfLkIyTgk5etZuGFN7FDoz?=
 =?us-ascii?Q?awqi+bwWPhMhdTRN7LkMPeZMB536rVIo0QdiAyaPjwM6u+7cpWWpIua24bHE?=
 =?us-ascii?Q?/wouvCl678fwcqZ65eoiPMHJRxRrQ5nWfzRHgIBhAy6JbM6+o0HIfsbqFOgE?=
 =?us-ascii?Q?4nalOWx24mIz3n6NWUUFItZsQDA8hZAHM2H/h5F5UvEMy+g/u8ItploMJHv+?=
 =?us-ascii?Q?M5G5h2Q0M6txPTBOCwgvTVlkz6VhnK4NMDVicMYo5imAdCJvUQlFvTTXvzFZ?=
 =?us-ascii?Q?Xzi7qEH/zHjuDv3nSfqfd0cbXhyTnKPMDvSv0oah6lxX7hLGO3YskZ4iLxOh?=
 =?us-ascii?Q?nleEmDBcM/BItd9YyPoRfl08iYJpnDtIZKZoNgiEFYNZ5Csr0wbYFnKT/Whv?=
 =?us-ascii?Q?axUXiH0xUER+4LFtoyj0klp+6GCXf7Ru/5X2nGwVPihQK5NTU6PObIcCIwiJ?=
 =?us-ascii?Q?JA83K90H2jo/lhukDgcwerwA2BHM3axQRwqoAF3UG91cpzD/fe/rLNHg83ii?=
 =?us-ascii?Q?Uuod8dPdK5HIY81PYor5EZ//aIzuESnlEIADtVdJ9IF/etATYeMZnfsF6fSn?=
 =?us-ascii?Q?N6TU/HrxdCGLiqOooVnLdWuhPnISyOq/C4SA6LVSj2njsfYsKinSY7UPdFUf?=
 =?us-ascii?Q?wi+4RNQWWNnwllR+3V6zyzdAOWM7SGXTPCo3uPXO8vzLfK6Y74JdzUrNP7tg?=
 =?us-ascii?Q?3uHbCCt352U7R6+L8T04xtGmR5KmJi+NzMhlPPQnju7n6vxP3PDIlrQSS++b?=
 =?us-ascii?Q?7wrFW5FEAUrQyEuNeANXh42uyX3r9WVke24l0j1z?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1bc5fc2-35be-4c14-af61-08de17d64c7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2025 17:03:50.6690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: goBcbVWUKyuYU2oFvk3xJl0r3i7SKc5UdNuwB1JF8aXJRBSfPT6DEj00Vk2+9H+x6FhzijUEMNqw9Yah5/lDbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8721
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
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Monday, October 27, 2025 7:10 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Sousa, Gustavo
> <gustavo.sousa@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Syrjala,=
 Ville
> <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH v2 3/4] drm/i915/xe3p_lpd: extract pixel format valid rou=
tine for
> FP16 formats
>=20
> As the pixel normalizer block is needed only for the FP16 formats, separa=
ting out
> the FP16 formats handling will benefit in selectively enabling the pixel =
normalizer
> block in the following patch.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index c831bd883395..6cab6e7cead3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1084,6 +1084,20 @@ static bool lnl_fbc_pixel_format_is_valid(const st=
ruct
> intel_plane_state *plane_
>  	}
>  }
>=20
> +static bool
> +xe3p_lpd_fbc_fp16_format_is_valid(const struct intel_plane_state
> +*plane_state) {
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +
> +	switch (fb->format->format) {
> +	case DRM_FORMAT_ARGB16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_=
state
> *plane_state)  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb; @@ -1091,13
> +1105,14 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct
> intel_plane_state *p
>  	if (lnl_fbc_pixel_format_is_valid(plane_state))
>  		return true;
>=20
> +	if (xe3p_lpd_fbc_fp16_format_is_valid(plane_state))
> +		return true;
> +
>  	switch (fb->format->format) {
>  	case DRM_FORMAT_XRGB16161616:
>  	case DRM_FORMAT_XBGR16161616:
>  	case DRM_FORMAT_ARGB16161616:
>  	case DRM_FORMAT_ABGR16161616:
> -	case DRM_FORMAT_ARGB16161616F:
> -	case DRM_FORMAT_ABGR16161616F:
>  		return true;
>  	default:
>  		return false;
> --
> 2.43.0

