Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26312ADFFBA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 10:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BF910E9D1;
	Thu, 19 Jun 2025 08:26:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AH6+eA9s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E4E710E3D9;
 Thu, 19 Jun 2025 08:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750321598; x=1781857598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cYoHs7vzGd7keeyeWJxHN4+I1peA9hoarQM6Qu/IxPc=;
 b=AH6+eA9sB4m0Xxv484waU5cBe1eMR2NnV+Hwohyt8uZBTFXNgUf1jLn6
 Kk1HK5AlPkOsfYDCNVI4yAK7k2lv99Lw51ANnYuaQ9ZXYzhl1fGbSiksN
 g7BNXpXbbEvDDmdwa2lMj34FKL5dJLZmu29eft9ngIlJlmUSUD02JNWhT
 PpOP7vWSKz5Cp9i0hCXspCw6UqDPKz3odjcl6mteKZ3JlXwGXJkTRwNA3
 XlklZqntBzb0Z6J3psfE0ucataK1ApcvQ91b0rqUI5yXjw9rYJb5ADKGP
 1GPjJQ1tKFwAnmyq0eSzyMlGkWiR7u8u8FUSkFjxUeCkS7p+cZlmvsfLC g==;
X-CSE-ConnectionGUID: kBn2do/tRl+BSd5FOW2Ufg==
X-CSE-MsgGUID: 4uTFIPeqS/KhBjgDL/dCbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="77972950"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="77972950"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:26:37 -0700
X-CSE-ConnectionGUID: xn6gGDoBR0OPh9xQLFW7bw==
X-CSE-MsgGUID: 9mUp6X3sQmGgLUxbXkwELQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="174110614"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:26:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 01:26:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 01:26:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 01:26:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JzHQ4Iia9UGLTafAoNlTbnNs5fe+snWSRD0DYLpaE2eJLEUP7U3EXNEIpz+w9NeKbLVs9hyWrNAGREC4ymtp74r80M9pOyZ13KcvbJG8Er6I9K8iWJHjgQsbyOdrbRIxWg+A4aAhsqlCEppljCiSPcCiKTunBdtnf+hC7TzSm9fbDevTapzIHEQEofJaYR1zjuxlFjZf1yB/HNsBuMlhGcL+pAM9rKQjQoSRwn2nZ+7hhbNvLAeOy1qaTfoFB3YTJb7J2MgS2+s2TzyOI0uuu0g+lCnIoiTI4kpEgOLj+9XAG7zJ+4OEnCpymPtFXqYQTGjDLSK2cun5nUoV+CPzCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbYf41zMP49EU6q0xmgpf9+nNWYuVGUgFMbUyj+3uO8=;
 b=Y+ze3IovKoMnLNUnFpEc4PY4vqGiaUZ8Qj0F86HOjXJmf8KFuyOXm4twgnIpmr4R/hSeUNf63YCPwRB5eAyRygYpgO+hktimPb3pW9wyG/jzuKhnuhbbM9di/FBH2Imt8IBxzpzMhbOdnRXYO1r9Uc28UvfTq85irZCiHfuVFZmyfTXCF6b/UssgqmXYhgUU02JBGGsAKxqYR2I/pRhuQ/dZmWHtwIbwsZx02HoTbXzw4Lf11g1zE7cvMJIrWz9WemaKIBkvzohwGr3zqUL3ntpbrHhtnBZYvwF3DSmePPWD+qMIKzMaoTZGTfTXx1wC1vRHKXS+chpW+TXHHdIQAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS4PPF69AE895C5.namprd11.prod.outlook.com (2603:10b6:f:fc02::2b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.30; Thu, 19 Jun
 2025 08:26:34 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8835.027; Thu, 19 Jun 2025
 08:26:33 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify content
 type status
Thread-Topic: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify content
 type status
Thread-Index: AQHb4M+BCh8ryML3jk2Q42h7rlFJrLQKJcog
Date: Thu, 19 Jun 2025 08:26:33 +0000
Message-ID: <IA1PR11MB6348EA283482C364646ACE1EB27DA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250619040519.3375518-1-suraj.kandpal@intel.com>
In-Reply-To: <20250619040519.3375518-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS4PPF69AE895C5:EE_
x-ms-office365-filtering-correlation-id: 621f761b-fcf1-4c09-903b-08ddaf0b002e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ScCDZOpB75pj7wIIR4ZRI4PyDPnZEqycCb3LqLA7FCzim3piXolfBjrL4StG?=
 =?us-ascii?Q?0XPgBV5bq7cZXlNbeqf6KQqlloYEd1l/OIhU2GSdWurqCWaLj4Abrr+392Iu?=
 =?us-ascii?Q?FaipUUJM2wSVcfpMZOcMW6tu0yuqZdie7L17dzS7K7psh2XyZ24wl0fpyCTD?=
 =?us-ascii?Q?aT+CkDIvB3npHl4V3nuQ68m/g/L7/DRhtWU4Adj3C+uLUVFX46PhBBGDS/7N?=
 =?us-ascii?Q?n62PLG7T8jifTzYWye5XdTdobXHlWKJaLCinFrOS4U4Icg3J5AlmAEqtkhQt?=
 =?us-ascii?Q?LioZW1fOkfUxLmDYyq0tQN9TaujXss0kk1h/YEnN9Jo6vW8dfTFdIv22SZFG?=
 =?us-ascii?Q?p1C67spynvyNKPu1Q5FcbTpClweTKSi7KvFLJqJjIjXnvawBiKkkUde3D/Px?=
 =?us-ascii?Q?v/QCxEHbz7l9GMyloajQiPyF7GWFeNUZdUQpZ/F/Muh1kmHr8B2I/CLJzTD4?=
 =?us-ascii?Q?1Rq0zQeTA2IL/qpqfbJTRdI6g+11o30fK4NY1RuY3ghsVrvXxqwoOP9LAqbk?=
 =?us-ascii?Q?XIh0ssDCGn2csODqHZDva2UfeWt7kkY9rTts+sNunbRScEJ1a/aIadeyka4+?=
 =?us-ascii?Q?HMIjQb7AA6v9SRN/76oyfIElPmElA0ygC3mC+gtbV/YgXwItxLjxGrHK4kQ+?=
 =?us-ascii?Q?Dvyb7F3rf39jp+ttAC6IdMWBEbNhDcFhEKygG01zANDTj6oE7FBj2R9BuXD1?=
 =?us-ascii?Q?jVzWnOzO/vbOIQiERA1P9SeVB1DqExTAcFfvlqJjT8jQNGE82Y7lYwxgj+n4?=
 =?us-ascii?Q?g/bksg6YIz8hNN+EaHLjq0JRLyTlr/sRmzDxKOJVaK4dYP/i/o3V609lODfx?=
 =?us-ascii?Q?taO4DNxm7+9KUqNOmZaAgnpCYtVId9P0FYlmlWoVRla9y2XdpwgTicKCInRS?=
 =?us-ascii?Q?lB9GRTSx6LkbBB2Ly8g7FMAhCuUv6jofohytNA72yWaF5QSVfIWYTXooaq0E?=
 =?us-ascii?Q?PmTgbvSeboZMHf2IqKyM6bU9K/qR2IT1WVTjH7BOOrQJPCXCgfk9BpMDW51T?=
 =?us-ascii?Q?lZm/JSiXwfnbfDIhuxv0BTlqMESFRqjCStBYVZMriZCdxxTel80pUtbp39qQ?=
 =?us-ascii?Q?qLwfUrEUPZnvbDXCUylikOEmiYkF6R+dbcWvBsl5zrObQFfJwGaQccx1c4dD?=
 =?us-ascii?Q?/dIhqRK+sGu0255p1wJI3Wl22DzS/Hp1XPYiYarSY6UAxMTOvcx1pLkfsGuW?=
 =?us-ascii?Q?ysvEtPnkBsPIV9Q6glqZGgesodGQY6kBNaGlu9ehPxXjV+flW1zMYZwipyQX?=
 =?us-ascii?Q?rMW1sIGfefvbN9TIgdpygb0zWt3Lm9b+dDrQQzyA//hj0siV7cNrcwbLN67V?=
 =?us-ascii?Q?7/HWZ0q5uBMNQawsJUBKb3gYjquajggGxMjKxE9zyvdQYbiSdxd8U89pzV+Z?=
 =?us-ascii?Q?Ym5PqdY1LF2mfm0SHtTWcLkd+TEy5xgbmgLmy7ZMZOA/8zcLZ27AFV2Siv0+?=
 =?us-ascii?Q?JZkB6hzd/afwEJ8w/3Oq1uHXOe6R17aKYJG0QYQkB3RNifrgwEABdA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5jr1rCJLD4opm5oCglL6vv0954WSpUJj2bTo0Z4GhphR7a77cgfwxmm853lj?=
 =?us-ascii?Q?J7W28hE4T48YQXHaVbV0ckm7DV1wGaJu/oVMMddij17zjbd7HFIH0Kig9ElA?=
 =?us-ascii?Q?+rt9lxbxMsBuLAj9miR33ykkopI3jMqMy08tvK2hJAtlZLv0Qa5qpTD4WN8e?=
 =?us-ascii?Q?HDWLGpoSgfaM79c5K7XJp1HeAbpyYXCGmFoSWFFVtMD5diOOpsbitFxwRb66?=
 =?us-ascii?Q?4P95v//uo584CouSRszZ6ZW9wpe2dDyvZJ3SqKoObHQjimBfOmB4RPFSKjm4?=
 =?us-ascii?Q?GZsG9bF5/EDfWW6fZBEN0JT1iiq8ItB9DxNZ1mYBBjWaw7/BocLrSpq/WwNc?=
 =?us-ascii?Q?1bP7Xmw9kiB8jn/6CciagSa5Zbt6nUy7Niq6JZrFYaKIMn2Nlsys4iaNChqf?=
 =?us-ascii?Q?CGLJdUdwa7akMa0HtLXU6sEQ9ZDBgdDyDOopYQ4AIctvgyEk46a/iVWBfHcU?=
 =?us-ascii?Q?567t+wyN7tTeph5AVeqYpb4daAOBGp83IItAJ0P9Bj4Eijjh2nSK7b3Zp/F4?=
 =?us-ascii?Q?NRyMY0x5RzuW8aVLBVWA82gmbK4BisG57oEl3s87vJKtOof2BsrrK6Ivohr3?=
 =?us-ascii?Q?3I6tu6a85SjQCxn+9bO/I+zUhKgnfMJp1k4CZOqok7c9o+SKnZpgZ8YO4yDD?=
 =?us-ascii?Q?9krwib2HHRk689Wi4UQ7PsBw0ULY1o74PKwv9ZG68qW3MihI0CPte5IRPTAW?=
 =?us-ascii?Q?ZxKcYMB+Z7wRrBgRZE4Ka78aUQPUpVVGGZ8ZQnTLNHt8nRCI7P7KOA7YImyS?=
 =?us-ascii?Q?2SNW51wGuXoQepZu7+B0XuyU5b7WJhxL8rdcPSEVp4fYOwepj3/fyL8X+ReD?=
 =?us-ascii?Q?WyTI/PbQR9qyL9zddWylvhVrXIkzsFxLTNX84cpzZAcao7yjc2WZ9ViJImbN?=
 =?us-ascii?Q?1oWH+5WTE+NDPJRIBo2+Jww7s+1nHDVE+kGYHL/f9S2e4WkAhZ7+LVpCyQul?=
 =?us-ascii?Q?fLsMNTSa62UitFMYIu9F/7RGUmmYpVpwMGmhlX0dMWQnM8ssnT2OzHIoho5r?=
 =?us-ascii?Q?hoDOWgWGsVtoQcb+jv7aF6BHlG9N8wnQrPBAq1UMML3VdhE+2gO+VeZWPObx?=
 =?us-ascii?Q?B0O1gs1P1YbJhTgNlnsojF+OsZ6eSUlCrOs1ZjCTBCsSeZrkg1/5AKtMyLiK?=
 =?us-ascii?Q?hyDg1H3TofMqv5NBhi3fPyB25f+CGmoHYCy67Kk3wd/+dkUXFcoww/5lMVdd?=
 =?us-ascii?Q?L4hJw8dTCXb7s9n/XrUZJudw2XhtiltkFZPsIiV+XENCP15LVQRCscNH2Fyc?=
 =?us-ascii?Q?YJLrokKkqRI4yr697WPOoDfZVFHIUGHWRizq+dUqAMbnVWB2/deF+1u1No8p?=
 =?us-ascii?Q?OrBDkRWASQq9hv9cmhoTbmEDHHqkXPSZBZj7VXxfYxP4x1oxscmky6AwjNLx?=
 =?us-ascii?Q?mPrnwqjfnmdSXluD/IwaTMN5pXI3VWDcZLf8O5M5w+8bjtFIQ/ELCP8Zn+p8?=
 =?us-ascii?Q?kIHlcwTSLKuMaJhjLq3z3kwkqEQSiAUQXKmmxfibd5fpiUJ2zSxS+j72SI8f?=
 =?us-ascii?Q?4us2REQZePaDPAbmLYYkcvtBpYXTeOpOm2/XWK9KUA5jBQXHD0LHDjH+oF1Z?=
 =?us-ascii?Q?R5wNFiCUoa/5kD5+7iPbj0tf0M05rTmzR4+CWE7H2In7SgstqioAwD27ytAJ?=
 =?us-ascii?Q?qtvxHJYbbRR3SVpRRVAhmH0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 621f761b-fcf1-4c09-903b-08ddaf0b002e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2025 08:26:33.8900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CPyxTpUPDayTgv/bsAWd2l5FTIofL8yx6vEW/B2u7UyCKTt9CtdVT0IqSPY8ZcTdaCuP7g0Iwx62P9QPuBMoIleaIbkGWLFwnIlpl2e5fpCh+ZfLHD98XwYfO1XATxUR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF69AE895C5
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: 19 June 2025 09:35
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Use HDCP2_STREAM_STATUS to verify
> content type status
>=20
> From PTL we need to move to using HDCP2_STREAM_STATUS to check if the
> written content type info is the same as we expect since
> HDCP2_AUTH_STREAM is inaccessible to us now.

Any reference of bspec you want to add here or it is based on some experime=
nt which need to be mentioned  ?

Regards,
Mitul
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 7bd775fb65a0..131fc0cae13b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -806,9 +806,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> intel_connector *connector,
>  	enum port port =3D dig_port->base.port;
>  	int ret;
>=20
> -	drm_WARN_ON(display->drm, enable &&
> -		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display,
> cpu_transcoder, port))
> -		    & AUTH_STREAM_TYPE) !=3D data->streams[0].stream_type);
> +	if (DISPLAY_VER(display) < 30)
> +		drm_WARN_ON(display->drm, enable &&
> +			    !!(intel_de_read(display,
> +			    HDCP2_AUTH_STREAM(display, cpu_transcoder,
> port))
> +			    & AUTH_STREAM_TYPE) !=3D data-
> >streams[0].stream_type);
>=20
>  	ret =3D intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
>  	if (ret)
> @@ -824,6 +826,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct
> intel_connector *connector,
>  		return -ETIMEDOUT;
>  	}
>=20
> +	if (DISPLAY_VER(display) >=3D 30)
> +		drm_WARN_ON(display->drm, enable &&
> +			    !!(intel_de_read(display,
> +			    HDCP2_STREAM_STATUS(display, cpu_transcoder,
> port))
> +			    & STREAM_TYPE_STATUS) !=3D data-
> >streams[0].stream_type);
>  	return 0;
>  }
>=20
> --
> 2.34.1

