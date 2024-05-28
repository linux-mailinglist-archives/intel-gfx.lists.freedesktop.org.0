Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 235FE8D17C0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 11:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FF510E0D0;
	Tue, 28 May 2024 09:58:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NrptKeNn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3089F10E0D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 09:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716890280; x=1748426280;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qOnnoQomcLxbubV0KpstGSNDr8xNxQ6EbAirHYP7Y5I=;
 b=NrptKeNnd/rafN8AtfGN9eZWbygVJEUT7I9re/nfRzhd1rGMtbhpitve
 uZ3RxNL87fYaq+KG+0VYrvA54XJ4pQXjlCfAwUVv7JFTzDQCl1BGbOtPC
 YxI3/e2dLWt8sqNVb+5JX1+SWr20mX0+guTvz4c1X7GxZIosG3bsfKCZK
 fzMN+FipKRGIsaoFkx34hbOe7KFcymvEqrrZbmxbIVWOG1Tcajoyhfm7J
 +rDSPJ0jxpNNk7rIvoJ1VZ+5DU3vljMFrCwPcIGPn89wQqWgZP2U4ucz/
 QAJzxA1znogCKARLXPkeavpILZE7DXY8psXp9jgHJmgQ20Gcc69MDmWkL g==;
X-CSE-ConnectionGUID: svXfQoZ/QICkeIIed938lw==
X-CSE-MsgGUID: fYnhpQlOSXOHB80Us6j9Og==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23888454"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="23888454"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:57:59 -0700
X-CSE-ConnectionGUID: C3v3IMyCTpirCpC+YuPASg==
X-CSE-MsgGUID: 4DZRYKGnS+SihZ4tNGzlzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="65856158"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 02:58:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:57:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:57:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 02:57:58 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 02:57:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i08VBz/ZdFISXDI5KtR/TFgyg2TsOKnLvVVAY1PU5qAMf/dgiM4RuLYVIHWzhr9tm2gPuPx50Unn7nBQ6g+q3SoI0EJXZiwVV/n9MedATA9Hea1+wmIBfkvGtcBWGVkHDij5Tm0yalfY0C2+heCJE2WWgdubA+Quns2j84O0vplBH+TIu5trb3H40XB38lgkefcsLvQKACuc9EAPFQBjuily3UMbc0EIlKo6K+1sjMLa4cRsX24QVkGO5iRInt8v74DsqTIc6FjpN49ca/RyWiFY5Wp5AvNR0jAeymWNfnNPxNnK2jo0paSZoZwYih9TDCPld8pSnGph28/hqWhM7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kl2uHWYBypjQ7O5+xJka+VKVjNQ0WMRhXlOEo5TIPUE=;
 b=JWAF49wJf4uhCGagZml4L+lVR8HgPcLPY/NjdSZCtopmvv3I5idJHAGyyW1G450HzjP4OZ95tn+yXYrh8csxDJXOGHyvmhmxzOm0oIJTtBi6GplvtxXQL7Lvg+fp8ttkprIW1OiY7KmZIjDlzGisQD9g3OYMApGqsQuWPw5DXpMU1ngLBL4lql7PB1qKHgr7TKy6X6DXEchk48IOulbukpGj89SFq44cZGEnhqCZ4NaVdFy6o/AYAs000KGcJoAulOean/I7v+tudcqQqt+yli+cO5fI0S01g6xuqVJmexTsZO/Vd4ABsXk/u/xlziROIaszuYv9fFR27AG0toKyEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 28 May
 2024 09:57:56 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 09:57:56 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Fix IS_METEORLAKE usage for HDCP line
 rekeying
Thread-Topic: [PATCH] drm/i915/hdcp: Fix IS_METEORLAKE usage for HDCP line
 rekeying
Thread-Index: AQHar/aFA2Yk5xRluEKeUz1LSm2W5rGsaj2Q
Date: Tue, 28 May 2024 09:57:55 +0000
Message-ID: <IA1PR11MB62661B99B5D9C679976E06D0E2F12@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240527052118.1624216-2-suraj.kandpal@intel.com>
In-Reply-To: <20240527052118.1624216-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CY8PR11MB7898:EE_
x-ms-office365-filtering-correlation-id: 09eda738-ba70-47e7-14e1-08dc7efca5e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?Xb1NYzK4BQf98BHxxpGsC0y5GahUiE0Weec4Q3fQ16mBBbvsjEwvmAgoN+xH?=
 =?us-ascii?Q?ANc8hIjfQmeAA44PMRCdugn4Rs2o+0zXdVOh4eP6J04Q2p3u4Pkon7qK8xds?=
 =?us-ascii?Q?KZm2ed3gFigoMAyd9xXDRSESlxv4/sfSl5oH974/6+JVafO4g63Yt9c42Dqk?=
 =?us-ascii?Q?urgkLfe+EJPWlCIQj1IKD9KG4qCPnL7kcA7IYusfFJRRUHHcrWCCHMfaUJGJ?=
 =?us-ascii?Q?TvqhT266ym3MJ2UbahDYR0wfVcGzeDst1oi8zLAp2A7LgvCBAMDdIPcRNmbq?=
 =?us-ascii?Q?sw7hUwJ5fe/MEy2xdIL6kvdtITxh3UF81dLkfHfvC2NIM8UDomBckctf8TlI?=
 =?us-ascii?Q?y/yo/etk+EgZIwAPkws9br3p4NFrfPCvjoAXDF2W+o/uNrj4VjWmSvzxpdFn?=
 =?us-ascii?Q?A+WXbQndHaeq8wLGOTtwbpTF+0xEE41nV9jvx4RwIbuLN+rI4OHXqMG28zvR?=
 =?us-ascii?Q?rGK2CzHYIh3kKabc/WW5EIlaSgjJbeSFShDG0y2A3bZdYI4BhQHyYK2FoQv4?=
 =?us-ascii?Q?muBLBWGjRAp8ekVVyi5hsQiOGi2iEI/dIZNZ+qf4GyoMYOFgzejM/AYX6EOi?=
 =?us-ascii?Q?svs7ABdiSDdElZEYcCECsVceQcjIdkIpifJOzlbb/Kbt4GdA5rAhdw9Q9U1h?=
 =?us-ascii?Q?pB43Kf0WvIJyFFKbd1psJrFVr6OeksO3UGZaSM1x12nNfFc42tZmFj4Vroh5?=
 =?us-ascii?Q?xrFQeV736Oxbsn56kzqdDOtI8zmsgy6wCYCBKt0Cje+OJnb7ocyfWOHU3t4u?=
 =?us-ascii?Q?RbpogYMe2122kgQ+UeP/T1AnZ5OvG5v/ICIgF3QbJCwc12PpFgsGeGeR5DhK?=
 =?us-ascii?Q?HrVFvV2VvivETJFj+dOev+gs1VGMjx4f2ZUiPoznoBQKGSKKQDfcCfOQyJA7?=
 =?us-ascii?Q?5ACRFWs2vdXBLiOx2svD8jMZ1hH2k9oCMqBekmtq8VjxVJ61ce+HDDSvYtfc?=
 =?us-ascii?Q?mE9EVpXZPb8MLlFGT6sm8I+127fYzP36DOfaEOu3xgOsoPMc3NLZSNdE1iW0?=
 =?us-ascii?Q?/9VAuNC/2PXvDVczEAHCJDWA5uZEH7pYqRqVAaKcXGBuLEIri9unbZMJ3/uC?=
 =?us-ascii?Q?wU1xoTSjJEcRBpo83FgAjzWhKxWRHi4rvcArCXg8ORVlb0X2iOCM/2fgbOMG?=
 =?us-ascii?Q?AnLzSLulZrWjRYmlG95KxfR1L/kB3ChtpyvZuzLl7EZUtGZWiCpw2WZPQiTV?=
 =?us-ascii?Q?n2yjgdN+Us3E2mpuvOigSJqvWXHKDbiRhpuwaqDJKx0t4CZM6ywJtYemesE/?=
 =?us-ascii?Q?hVFstWRQrvVnjzwJmXqeXq8gsjPaDW/7Lodh9RYMysPCV1HNdH4p/3OZPAB5?=
 =?us-ascii?Q?7cJBoC1tyYF9zok1VYFRMantAglqIBq60qOezV5OF5TfdQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G37rRTMYSBlUZ+y1+F84n6HS9nhtrChUE+jJL5hScBFTCINiv6v86BDzh+e5?=
 =?us-ascii?Q?xqXWXRHogS/pOoq5WjghbPPKYyZcFkl7BcOx1QjButf4944UEZJ/dX64osXJ?=
 =?us-ascii?Q?qTz7vX4d8bfhgdq29BsQYZzGCQKtWTb9Jwyz2o+svNfEQg1GXv8uuoiR58VK?=
 =?us-ascii?Q?mVfJoYv5xYXa5/92Tjaf29UQstobow6JMujlCYv4+aILkwFX/ILaslxvh9LH?=
 =?us-ascii?Q?2MvpWAkbqA+fnyRThz0Dke5PLTTZAhan34063yJWSIsos16dyisV88zWyk4x?=
 =?us-ascii?Q?ryiWpNv7cLB5KIc2mt/8SSsakJEPf+f6MJHRxpAXw3F8PWpCgMl/9ofIi7FN?=
 =?us-ascii?Q?0HGvCnWcKOhWn/6xG82tmuCkjxpQL4NeUCNryDJJyDCdaOQabaNeMzqCgo6s?=
 =?us-ascii?Q?xRlRwUjdbgA63M16oL+LS8gBeXb63HITPQ5lnia6u+0GjlD67kjrmgdvMJZ4?=
 =?us-ascii?Q?8DVes17tJiN7JVDNdgCmAVGf2dPxbTkQGnzMlWoOE2bksoDxhXdeXPrlphiF?=
 =?us-ascii?Q?TCxwAWxKI6cJEhUAdDIDd0XcE/mbxQ0+0feErYcE+0r3C8ybJ6HdPIoy5d4B?=
 =?us-ascii?Q?wDJDzTf3wVPBhTA9OcdrP4mKySKkRWrHDm1hQ+OunGb1CDPzD5amd2v1YtZz?=
 =?us-ascii?Q?qGlaV48+zszeOqYVqTBCwQqL8jRF2GjMQQrwbkpVplnQKrlCH5LXLCq0V0jj?=
 =?us-ascii?Q?HyIhUwX1zBMsi5yMiX5rWPzegg7W9mo/MMdOCRi2Q6TE2UuQ1PCdKdWABNff?=
 =?us-ascii?Q?+pobiQxKtgWebB9dPguQj627lGWaaPXnclHk29kSS3agAHprlqb8X0zhYcBq?=
 =?us-ascii?Q?2bM0TBsmbiAIF7PgNnM4ijNVCbkWsh+Ha1fptppc/X+F5+FHNvUzkwcNKu1V?=
 =?us-ascii?Q?V+ztHEjYPAKb49oXFI+ZNCs0AaL/RoT0WZvl2EKtLkJ9Liu7BUyXoSZxtMiS?=
 =?us-ascii?Q?yPvcst8cOFU56GGT42SSYcsm8rymRwiphekRPdQcosP0XpVoxOw6mrCKiax/?=
 =?us-ascii?Q?b5qGd5EJI37rk3H7X0+6hlUPmsDgMepOu9Ge6ZHKGzdyTwISuqCnRfaBuxh7?=
 =?us-ascii?Q?bqSckgzvhy89SX5YN9vq7UUMBzzSPNIbMHI/jA4C6wyrFCsIbstYXhs82dhu?=
 =?us-ascii?Q?CvNVk7N/YqNvbNZUD/1SKFRJV/UfIaVhikWRRsf/fSid2ZAeZF5Mt2svBPMC?=
 =?us-ascii?Q?bEBYX4oaRrrq9qda6pzoWuxDAQTEdOwpjAoXYNpyP0SlmLQXeMUqvOWtmoLq?=
 =?us-ascii?Q?5mpjUT2ypcIV/i2izS2lKqNIbp+Lz0bdIbZtez3xLPVF7wJWjFK9YLXDBDW0?=
 =?us-ascii?Q?jievJZzGgjPZeIYha/+M1X9nG6hPfXKG3R7rzjJ4XWe8uHS2Ssnoi2+gjRUw?=
 =?us-ascii?Q?mPimQWGaAzYbs7F1yKWSrns+1owNX3JBBuMU5gl7xHTTf+JsoD9Wi/qiHDmX?=
 =?us-ascii?Q?DZkHFm6BYyxLtWgi9/6XfWpdHbgDMXNmU7mCH1aLjudeYPj+gfVhYIp2lARf?=
 =?us-ascii?Q?3t/cFvwq0+KjO3FtfLX9rz+kyc4W5Ca/uXPb3LL4KEBxToIoaLyDj36r6qWz?=
 =?us-ascii?Q?STu3hTlzuyTPvRZYiRZNj2Jba2umZMzmbxS83tAIU29dq3jSl/N+r7CP/OMs?=
 =?us-ascii?Q?yw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09eda738-ba70-47e7-14e1-08dc7efca5e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 09:57:55.9429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3YqfVbfHFCKClCDJCCeiahRaL3znc//7FqXZBpXe43gaVI7BkKrW+N7EuE5Tm87H6spW51ajD8tXOr09RbhbASlyKbU+HUOaEKKWYclN02g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
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
> Sent: Monday, May 27, 2024 10:51 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Roper,
> Matthew D <matthew.d.roper@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Fix IS_METEORLAKE usage for HDCP line
> rekeying
>=20
> Replace IS_METEORLAKE usage with a more appropriate macro. While we are
> at it also add the stepping restrictions for other platforms.
>=20
> Fixes: 6a3691ca4799 ("drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2=
.2
> on HDMI")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---


LGTM,
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

>  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 02cbbbfd8e25..5767070248bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -42,10 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> intel_encoder *encoder,
>  		return;
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 14) {
> -		if (IS_METEORLAKE(dev_priv))
> +		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_D0,
> +STEP_FOREVER))
>  			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
>  				     0, HDCP_LINE_REKEY_DISABLE);
> -		else
> +		else if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 1), STEP_B0,
> STEP_FOREVER) ||
> +			 IS_DISPLAY_IP_STEP(dev_priv, IP_VER(20, 0), STEP_B0,
> STEP_FOREVER))
>  			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp-
> >cpu_transcoder),
>  				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>  	}
> --
> 2.43.2

