Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B195FCF6BDF
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 06:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946C410E47F;
	Tue,  6 Jan 2026 05:10:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CW4CyjcQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3356210E47F;
 Tue,  6 Jan 2026 05:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767676249; x=1799212249;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yogxGEJF16+INFPmb39UDyUJaAwcNUooT8hwKPkrZkY=;
 b=CW4CyjcQM9Qio4NQ+RHzRQbed6ko/L+WXQfrWXecHJMLZOiA5in4Zczl
 q7qNYXSvMilJe4Vbn2eoC6WGcmreSbJFXYjMUHq28rG1dpUMedVgkKCsZ
 N2iUT4vMdipjEh9Mjzad+0GlyAI66hP1u3c4SiqtrHCMXpDp1htjDnK4J
 yvrBUwnlq0cJ4uAvYzZLSJMLU6hSHapX1goqPb7/kU+YmADYZ5UcwWqMZ
 PyZdWAYUYxuhUzz6LUzkVDjN22xV49D/j2F4wqbbU2SrHbodoyAQgNwTq
 g0G7+j8EaVN9YxQ7vSQ06jWN8sv9F+UBFrc2T8FPp8zkUNB2QTuqzS+6m g==;
X-CSE-ConnectionGUID: t+lXOPSUQoGthN7JVJyM0g==
X-CSE-MsgGUID: owrgwGJ5RpWpX3ggNZFLiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="71620472"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="71620472"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:10:48 -0800
X-CSE-ConnectionGUID: QtjQ3zHoQPiZEDxEUROsxQ==
X-CSE-MsgGUID: pdG+bdOFRzKFD/4cTvWwLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="201703447"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:10:48 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:10:48 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 21:10:48 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:10:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vYFnXDYeZTxxQXcYOKLClw4g9WR7XZKoMg6K9czAZA+YPueZBOg4xhZc976kVONDBkjDVLda4/qd0XOHi8UvbEV4ZkCEhDkm0G75xJeS8vhyR1a49S967oiv4rUG4NT3xNIJwQ/IAKJV8QX3nsKaFBjtPFCfg6M9xKipKMpoF7duE40X7Mae364hIkmQcNbFpksLCX/7oPHh8rsfqBIxVBgQJIq3h8/jMfL41SjundA2v2/oEn+VhQ1QNXzbFdzaInNrDPxrSrqnPySs6+U1HjGrlyPKKFcsqWyGRYKQb8nU646j5jTqozWdut2OfQ2Mb5DmqlbDb9OyYvZ05bIwGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zdgCwUWqmSfF+diLgoPqK35dbIPNDHR93YyFLKLQOSI=;
 b=X6/KzEs+gLMEoyncCxGkPOKhzBq1G53yyshQFS5esCPUKgGtEvD6ddg0dbh/hZeFB3fV+63k1YG6+R3o17ChIKtRb5cuL1ojcaN71h8s/JSSuLEnJJ6VN7uvYPY0PLH7ljZqL1O5HCvr2PQ5SCed+TYebQhypAcLId28XzOyHVjZ6WnqLjVwBsiLzg+hqNI92rPtU2ximq0hCaFbi0yxpYM6FwWv5tj+Zy9xvbbB5EePOy9IKNkeR9oznH4Xbre5AaHD/r8LqNQZu6PaKdRf5USSAwUASyY/3N/D6GEazhK0yf09xc3tU3ME1VoHQ2KLxHZKmpXjySYz7ZH5QEXfgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by IA3PR11MB8967.namprd11.prod.outlook.com (2603:10b6:208:574::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 05:10:46 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 05:10:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 02/15] drm/i915/c20: Move C20 port clock calculation
Thread-Topic: [PATCH v2 02/15] drm/i915/c20: Move C20 port clock calculation
Thread-Index: AQHcb2nlWO4iEp+7DEKtJ6214KqhCbVEtnvw
Date: Tue, 6 Jan 2026 05:10:45 +0000
Message-ID: <IA3PR11MB8937938B11A48487B63BFC8BE387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-3-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-3-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|IA3PR11MB8967:EE_
x-ms-office365-filtering-correlation-id: b6eafece-46b5-4e26-725d-08de4ce1f2e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?LireGzap2IXTj3jJcnyZDCKDgBk7APkga4AZmrg+LkUCYFZJTIpXx6ctPxSA?=
 =?us-ascii?Q?jz5NAO+gDaGtF4u4mePBpkHVT/0tVZCNS+b4HIWLidlObD195mqCiPTHz+Os?=
 =?us-ascii?Q?m5wED33xc6xFpVENlGReGB90l8qfia5/ZqeyfxGNRP8XWygqQz/gHrdvURkG?=
 =?us-ascii?Q?FY6UpF3KNfPVD883aHoqAGxljBQytIXHTQmX4TM23mXTg7dgJXmGwZ9I8s0X?=
 =?us-ascii?Q?PM/SIuJ7XBegH1Mjac5dMqeixAiCGQ06odCULBrokKcTQO2rfb8fjgh4OG3F?=
 =?us-ascii?Q?RL0NHYLS0ouMaJT6DxcKYO7Me9STLazlvDpDRQfC6Zxdzzuf7SzlyK8ZpkhL?=
 =?us-ascii?Q?QBGiqkEJoI38Mmf+1vpaXUm9l6MKcsrXEWu3ZkYA/riqgJ3ChfmBovPuXH6h?=
 =?us-ascii?Q?64b3TEwShlKfa+QENxvb4Aks7TtjblzCnvwrw4+hH1W9auK+XB5jdYDqc0YD?=
 =?us-ascii?Q?qnYT3n7bxA5fmWhsBCfv4slGOhVV+KzcVhlG+DFI64u/JabtXKU9an1v9Cgs?=
 =?us-ascii?Q?uWEt1pJZkIv1+2wmcHsju7Mq6lKhgIzJCI+FtoTpswwNEKrT+cppDR4xL3FL?=
 =?us-ascii?Q?KQqd2GlOjcJ0XAmHG0S539j+Y1SKIdpYiiBNHp3pvKzEO6kpfAAAUhZb0J29?=
 =?us-ascii?Q?XqiPlE63AZrDGa4OwePnSL+gcHod7Nc48konLG3+YUF0KXBNB810QK0ln1Cg?=
 =?us-ascii?Q?nEB7iP5N8US2l//vGzjPU3C3PsbeDBF8DeDh4NtpFVc8Rv8GqICc9l2Hipg3?=
 =?us-ascii?Q?kCKuhX1PRiF4s+7tk8GS006CDMC1TJCZi6U4hAf1a9u8bgwXtecmRsxMVYOW?=
 =?us-ascii?Q?P7Lgg/gEoOkn6rR77URJbfF1afu4K3pZKLIwYHcofqekTTplYbVqmwyFizMo?=
 =?us-ascii?Q?42wLoO1xz8xiv22srwR6HEnxEFB3sXl/ij74JllsujjM2qKgk2Pa06e8CYPJ?=
 =?us-ascii?Q?2b0jjWC0IDCZIfKnSFyq7h80zgu5BgyA6EMO08iiiEbrgJzNQEiAChvjDj/A?=
 =?us-ascii?Q?h4XB3TnUXK7eJBD0Dfoyfj3XZY1bxsKiqNokwtvAGEmrgulcHZr0xRu9v4pP?=
 =?us-ascii?Q?gZ1/5/W/4zG0/Xi6/6r4Gj6FVzl0rwrOiouZvVrZefz2x5LOuxpG2YwrXgqH?=
 =?us-ascii?Q?cOqESr6UET9Fs/kqeiEGG4cK+eT6rHkVpmF7Q5JN0Qks5+0suIQqBq5pt6M4?=
 =?us-ascii?Q?8S9J8bbWVoXbLRdvTMIWvJ2JzgOFuEInmE/vDV+vE8z7Y4cMi1zrMpyTCRem?=
 =?us-ascii?Q?DLAZCdX8uGhgC8uC7lOveGh2y8d1641iimDU7XcBlDovlSIm4uhtxGjtqhMt?=
 =?us-ascii?Q?Sz+DlTr8OfVsH0mEAsGhmcqQZH2r2LZVl8dRxD8faWsUMEQgFAoPXUQP7E6J?=
 =?us-ascii?Q?nGitq6BLF6snyvhMf2JOW4SMXBhRqNdA1us6auXB4j04PYMJXPgqYN8I8mfs?=
 =?us-ascii?Q?VewtDDMskY/V7V7yRfOGnM24m1moyzjVCTETHKvCvVfDXT+314I8l1F84HT6?=
 =?us-ascii?Q?eh/Z3X5xFuuqrzfaE0JGIcddEaQyGHrdurc/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tsgDi52PIsuqqq/txtc6IEf9Ibg85FsEVMq/ERcEEC3xCn+kfiawYBp+0dPL?=
 =?us-ascii?Q?Y9s2hb5LFaIvnVQk6IpfFIgLfcg0UJpLCsLMvPMonCDfxfGasVL9rEmGgEWS?=
 =?us-ascii?Q?SFp8TYKxxjj0VIij9SZtq8bnDnNtSO8w9dt+0AIKn3JS9HSc22Ox+ApnrxhU?=
 =?us-ascii?Q?cGzYADi5RPeznqpxwnaVLNWANIXKXaEcCrLToDPSBNR1ebzSSq8l4tQDKNRA?=
 =?us-ascii?Q?N/bqJK3J8jPnJjndi8Y+i32IZGektU2j3BIYmrg1LloSLIkQ++bmXMikul5c?=
 =?us-ascii?Q?2Q7zrO0Ry9LDaeTmQ+lNThRjRTXK5aHFZ8gWnzBF5RZNn2gnJEyK3+DcvYDJ?=
 =?us-ascii?Q?h3biYqhj6WKf81d5CCR+2v/RtgmEt8eecQZOVmzK3eboZ4XwT7aX6Iujn2ir?=
 =?us-ascii?Q?cA/SJi4GBFC0k9DRPY8Kqe9uWVv76lsv/JZQ0Z6+9TvHBmD91BdWTGI3fWvG?=
 =?us-ascii?Q?06Nca62EAwjYc6jpfXrnfrlSmK3oRZrCd8lDHhnS+dcavuGZCCPgmxV0Cxqf?=
 =?us-ascii?Q?xb3nQDf8O/3DzN2HaBhkkR63V+lCUAi+lpGKEiJwRe+8dVZJNf0mbju4eqAH?=
 =?us-ascii?Q?cBM27byibueNOczemgSzuuoxj9r1dpgBvoPG0poREkUlSD1gb/Q/Ya2czswQ?=
 =?us-ascii?Q?QFt8cQGyqk6LNEt5q6nI0DzE6WAeH7o864ITZnSkrAaPo0KuDXsuGTcgd+vW?=
 =?us-ascii?Q?Qt7LaA7k0m2xTcwlNYkSVbFVpzxtrYSkc3YWUDKxf14pBiZ74j94GA4WdwwW?=
 =?us-ascii?Q?2Ndt9arFHG6yoTsFk6ZyC2vhMHOgzDlKego+4+jl9uEz3ZibnS+3wNk4wqEX?=
 =?us-ascii?Q?xvn41SgYOfPlAzLfh9+UTcEzwsw3xvVpZNEP7Be+qhQgVkW0GosogMXySMsc?=
 =?us-ascii?Q?J+QbZd9NJEbtqudoz8J0HoLqDcrKOhauCn21LpDKLlWaF65zjOrP9kwh9eVs?=
 =?us-ascii?Q?3qkWm0IStDpBtzcTnwCsHfvoJ1Ss49ZP13hC9uYUjguRUf/zPKwZP/REO7yC?=
 =?us-ascii?Q?TtXuOfcx8W8q4hAogSNsfr++6BnHNJrmRjGhXW3sh/8achvUFWcFMfvTi4Qr?=
 =?us-ascii?Q?Exk38HfuLSkQFugPyHClSctbMlju9tFzP+G2r2m67oHLDhg4jqsX+NBBKtzI?=
 =?us-ascii?Q?95bzRTt69LHBj5tJE3MrIXUywALhReFVdepsBlfG94HIK/9v7M6QGN9cLevL?=
 =?us-ascii?Q?M3+/+DPZDoUh5Vn3ATYy38qwoVN3U8XB+189X14wUV8Um2uNH5P7QM+nccuU?=
 =?us-ascii?Q?wAYY+QHFPBsH1yIxa0rM/OYTJ2qtNq1TEDokBJjVbLGQm/WDjL7QM2OvWa7L?=
 =?us-ascii?Q?k64tonBJrWqfD58h6JN1yisZS3FjTFqyZDV15hhuhGy3a3nz6z+cMHYnZu3r?=
 =?us-ascii?Q?YiJRHJ7Y0qaokPoXFalpEZ3BQUw94kLmj4P0KgurMVOj5KdvzT7xDtrDyBP0?=
 =?us-ascii?Q?RwO5zCK6Q2TJSF6/0ZLSPzy2i6DUzwDH2pht4MXOo9oe86gkJ1iEAGe2ImM7?=
 =?us-ascii?Q?VxSL35e4SteF1Ilm4fIY5SQjxe2Rzft9KMHK2Fhmg8GuBruXIbZNNmKwMxTC?=
 =?us-ascii?Q?vHAgmorRSx4wZ910iIK43ZPjGrfJkZlMohUmL5k2p2Sv3FMq7mSmYdf1xEjr?=
 =?us-ascii?Q?OAm/mqtzb1jH0G/cv+kuQkljzRdvm4OaBgyoLTY2e9SBO8xONd1dMsVmydiT?=
 =?us-ascii?Q?H/DWpov8WmHV22Om/4Jzjzo3F30sU1oOHrhsGqau6WGkiz2j83+MJa1wrphL?=
 =?us-ascii?Q?RuT3GRQmnw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6eafece-46b5-4e26-725d-08de4ce1f2e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 05:10:45.9421 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7FJ83M5vPgIA8UdnUB+1sk/ECqbbuxdQODDbJMt/fgee+vOO9WUrvCJ1EzrD5wxDPIIQ6e2Am2K3WkBYz4CZUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8967
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

> Subject: [PATCH v2 02/15] drm/i915/c20: Move C20 port clock calculation

Nit: Since the change is int cx0_phy.c I think its better to have i915/cx0 =
same for previous patch
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Prepare removal of .clock member from the pll state structure by moving
> intel_c20pll_calc_port_clock() function.
>=20
> No functional change.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 100 +++++++++----------
>  1 file changed, 50 insertions(+), 50 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 5fb39c114078..1deb865618b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2130,6 +2130,56 @@ static int intel_c10pll_calc_port_clock(struct
> intel_encoder *encoder,
>  	return tmpclk;
>  }
>=20
> +static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state
> +*state) {
> +	return state->tx[0] & C20_PHY_USE_MPLLB; }
> +
> +static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
> +					const struct intel_c20pll_state
> *pll_state) {
> +	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
> +	unsigned int multiplier, refclk =3D 38400;
> +	unsigned int tx_clk_div;
> +	unsigned int ref_clk_mpllb_div;
> +	unsigned int fb_clk_div4_en;
> +	unsigned int ref, vco;
> +	unsigned int tx_rate_mult;
> +	unsigned int tx_rate =3D REG_FIELD_GET(C20_PHY_TX_RATE,
> +pll_state->tx[0]);
> +
> +	if (intel_c20phy_use_mpllb(pll_state)) {
> +		tx_rate_mult =3D 1;
> +		frac_en =3D REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state-
> >mpllb[6]);
> +		frac_quot =3D pll_state->mpllb[8];
> +		frac_rem =3D  pll_state->mpllb[9];
> +		frac_den =3D  pll_state->mpllb[7];
> +		multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK,
> pll_state->mpllb[0]);
> +		tx_clk_div =3D
> REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, pll_state->mpllb[0]);
> +		ref_clk_mpllb_div =3D
> REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
> +		fb_clk_div4_en =3D 0;
> +	} else {
> +		tx_rate_mult =3D 2;
> +		frac_en =3D REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state-
> >mplla[6]);
> +		frac_quot =3D pll_state->mplla[8];
> +		frac_rem =3D  pll_state->mplla[9];
> +		frac_den =3D  pll_state->mplla[7];
> +		multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK,
> pll_state->mplla[0]);
> +		tx_clk_div =3D
> REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, pll_state->mplla[1]);
> +		ref_clk_mpllb_div =3D
> REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mplla[6]);
> +		fb_clk_div4_en =3D REG_FIELD_GET(C20_FB_CLK_DIV4_EN,
> pll_state->mplla[0]);
> +	}
> +
> +	if (frac_en)
> +		frac =3D frac_quot + DIV_ROUND_CLOSEST(frac_rem,
> frac_den);
> +	else
> +		frac =3D 0;
> +
> +	ref =3D DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1 <<
> ref_clk_mpllb_div);
> +	vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (17
> - 2))
> ++ frac) >> 17, 10);
> +
> +	return vco << tx_rate_mult >> tx_clk_div >> tx_rate; }
> +
>  /*
>   * TODO: Convert the following to align with intel_c20pll_find_table() a=
nd
>   * intel_c20pll_calc_state_from_table().
> @@ -2702,56 +2752,6 @@ int intel_cx0pll_calc_state(const struct
> intel_crtc_state *crtc_state,
>  	return intel_c20pll_calc_state(crtc_state, encoder, hw_state);  }
>=20
> -static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *stat=
e) -{
> -	return state->tx[0] & C20_PHY_USE_MPLLB;
> -}
> -
> -static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
> -					const struct intel_c20pll_state
> *pll_state)
> -{
> -	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
> -	unsigned int multiplier, refclk =3D 38400;
> -	unsigned int tx_clk_div;
> -	unsigned int ref_clk_mpllb_div;
> -	unsigned int fb_clk_div4_en;
> -	unsigned int ref, vco;
> -	unsigned int tx_rate_mult;
> -	unsigned int tx_rate =3D REG_FIELD_GET(C20_PHY_TX_RATE, pll_state-
> >tx[0]);
> -
> -	if (intel_c20phy_use_mpllb(pll_state)) {
> -		tx_rate_mult =3D 1;
> -		frac_en =3D REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state-
> >mpllb[6]);
> -		frac_quot =3D pll_state->mpllb[8];
> -		frac_rem =3D  pll_state->mpllb[9];
> -		frac_den =3D  pll_state->mpllb[7];
> -		multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK,
> pll_state->mpllb[0]);
> -		tx_clk_div =3D
> REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, pll_state->mpllb[0]);
> -		ref_clk_mpllb_div =3D
> REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
> -		fb_clk_div4_en =3D 0;
> -	} else {
> -		tx_rate_mult =3D 2;
> -		frac_en =3D REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state-
> >mplla[6]);
> -		frac_quot =3D pll_state->mplla[8];
> -		frac_rem =3D  pll_state->mplla[9];
> -		frac_den =3D  pll_state->mplla[7];
> -		multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK,
> pll_state->mplla[0]);
> -		tx_clk_div =3D
> REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, pll_state->mplla[1]);
> -		ref_clk_mpllb_div =3D
> REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mplla[6]);
> -		fb_clk_div4_en =3D REG_FIELD_GET(C20_FB_CLK_DIV4_EN,
> pll_state->mplla[0]);
> -	}
> -
> -	if (frac_en)
> -		frac =3D frac_quot + DIV_ROUND_CLOSEST(frac_rem,
> frac_den);
> -	else
> -		frac =3D 0;
> -
> -	ref =3D DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1 <<
> ref_clk_mpllb_div);
> -	vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (17
> - 2)) + frac) >> 17, 10);
> -
> -	return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
> -}
> -
>  static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>  					  struct intel_cx0pll_state
> *cx0pll_state)  {
> --
> 2.34.1

