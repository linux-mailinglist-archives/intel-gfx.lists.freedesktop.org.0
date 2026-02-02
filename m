Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAHeGn3+gGk6DgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 20:43:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A037ED0A0E
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 20:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6353D10E1C9;
	Mon,  2 Feb 2026 19:43:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NVFeJfep";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 857FB10E1C9;
 Mon,  2 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770061434; x=1801597434;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/48JbolbrhZikLMLJ7KJAMytzOXFCOSMAu+kE0OLdeU=;
 b=NVFeJfepB/XG9NT7ho9HOhpXFI2sAniXk0v9UznT9ZUkfyX3Ybpxoofr
 MOwfFL1DSv4jU9fyTtiBk9TZDZX2bQlGo3gU2s3+wIbj4kTJ+dpTzTPA3
 Gi8fMGXRdEppvZiUyJ9P6m9CwUuzgRIBrka+d9AT82XZ3OKcW4JfMftBW
 C0cRGTgiYsZLkBSBGaPrMElK44qFH7nfVSYHVS/JlDGO1Vj6W4i5O5xXU
 cRcMaTFa1ca1ynGNMeNPYLXOdOiKw87z4HwFkB1lc2rEMb+yy7ZKATJp3
 E6KJeTH3z06qJ1CD48kqjh3FbzBoYqEPrPJNkgcxighOO0OxJ2kwaix/U g==;
X-CSE-ConnectionGUID: 8OZLiQs6QTGL+Pgn6ZIpdA==
X-CSE-MsgGUID: TqtzfO+nRLiYBjf3rznitQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="82654094"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="82654094"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 11:43:53 -0800
X-CSE-ConnectionGUID: VofWqQQNQCGRVuKYMLo6Bg==
X-CSE-MsgGUID: gOMwvHoZQ4OTQN95fxDjyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="214097757"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 11:43:53 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 11:43:52 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 11:43:52 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.15) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 11:43:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zUjb0c3WFFgiLLEbf+YVW9gTkiJlubFUmetDtX57XX++Z2NxjYFRZrSfJYfaU78o1iXDcJgIoDjLdcmMhH135Wo1UmYs78vGJ7RihOxOs3m/4Bgnl/h5VwMYuqGAbEpInF7RzfDtH22v4CFiGiEjKhfBxeFzD02via4F1IcyIZAzEt2w548/2hvAUH3nAk+2Q4w+0f9QoGFINA/O4j1ekmx/eI7GOd5nAtI1BjtXMA+AGIFDfQwVapSQ3A5+77HGb88UViv9NgBIGjrB+WFhjN6mBaBD3hQyQuOF61OpH9F4Rs679P4Qw5WGvfVT3Cav2MlX4IJ1QB3iXJnQhf8bUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vGziylq3fasoYqdpK15BSWeNTRIdcb/wcCT9Xfmy56A=;
 b=yQ/jI5HU+trvyYnbkNqF1sgpzUYV8kgIX7b/b/PJd9AgyqSH38oZYDJuev1iyZKqZrLGnS5pqcbNvqeZQjHuJtQeX7ZOtqeQkL24WTaI9h2KGOAqfCzmbb6ZtyDy9aUksd2r5Bdd1LRstSBJLvt5I6QokysbGwImIZHKILOK2hr1jOe8vnOjkspCLA7RrQ8/qUJOJaaYztu5Zic6aLtBlRkZ/JjYF8Rumh6Z45MHBT+xkdS707AW5ey2QU9c8bIm3iSTqFh1egFwljguFXK7LngwF987R/3CcLcwKw0UsuqiWQZfrCq3BTYs7855x++fnku6t0khq/PxG3JnXt5hxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB5075.namprd11.prod.outlook.com (2603:10b6:303:9e::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.16; Mon, 2 Feb 2026 19:43:49 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 19:43:49 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [i915-rt v5 03/21] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Thread-Topic: [i915-rt v5 03/21] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Thread-Index: AQHcit1h/vGdd5iKD0KJ1F6vOijo8LVv4V7w
Date: Mon, 2 Feb 2026 19:43:48 +0000
Message-ID: <DM4PR11MB63604039C723D86A15EE74CEF49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-4-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-4-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB5075:EE_
x-ms-office365-filtering-correlation-id: 4894a476-2f30-49de-cfbf-08de629362c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Xwp3O83z0FUB4hJZh3avix9hIzTaEHxTp5U1a4gnWp2djhVlAE+YlgiAA+yO?=
 =?us-ascii?Q?FNvcMmOSQl6Ho7n1NoJ60qnNGJJ8+s4wipuc6GR9pCm+acU+2hjwPUP8nX/w?=
 =?us-ascii?Q?I53JwKa4ZTQJCWk5kTG5mup4yeJs55CTqqpUfgP4hiAVXIXyNaxkdb9v8OAq?=
 =?us-ascii?Q?gHrIdS5L7O0KnWwGGH31Sf96Nz+tVLaia5eLsQ/L3eXIxJpTRkfsCrZko70E?=
 =?us-ascii?Q?6aiGCaTjsrmoG8/1Q+2NBOvNBsC+tQXa7+6JMu/HM3CqFF30mjLVF5UCvrhy?=
 =?us-ascii?Q?keUeU/Fvp0Tyf9heLUhUBCV7JwU3PLueMDQsa/2OWjbpy2AZSEsROKwzhHiF?=
 =?us-ascii?Q?bJGAkUmuFbyppapgSI0BsEaaeE5IIYD28U/x330MprMehxRDP54oTlRnkG6S?=
 =?us-ascii?Q?XW5vEr3zlJPCsyaEUWHgvznpFx1FptcJ7UcXRCrENvA3cE7VLLDj6iHBW3WD?=
 =?us-ascii?Q?fTlSBGE2zeO+mX5heXUZp3cee/L2c1ta4Dafll5JjSuSSotigO7ODhZwXLJ/?=
 =?us-ascii?Q?jou6ZbpBCzy4LC95thvneaVjzRHqIzSEhmwcIVlUpyP786oTAg+THzQ8x333?=
 =?us-ascii?Q?F+EtttJlBkw9kfrnO36hPdTOWBN09zZ1dYAN+Nb9InOmBtDSfICtrFCVx08k?=
 =?us-ascii?Q?+Q7FfdOsIfYvqVtNk3a2zwxYvbM3pcuLQvslmG8kKVFaBThyVtZekTE1NM8i?=
 =?us-ascii?Q?F1mEy6QCy97CFZjUiE4YtEiD1y0+Rgo6CPQ6WWo+09ThoWAt9b/Lr9kEO75X?=
 =?us-ascii?Q?t1bv9ri06BbiHxTYXYHVtrSbfKDjMU8C3QMoLDy+v4jcvRHVj9Lv0rSH62Xy?=
 =?us-ascii?Q?ZXeY4lHuVAGA5tKB8FxHcuAKgzzbxdjP5bH6gWabz1Db35/vqJAkw6d7+Z6j?=
 =?us-ascii?Q?GqazawEinhy02Snei1eOrRYssRQokVQL7/fcXsJLEd5CwtBUy1AfMFgDExpv?=
 =?us-ascii?Q?UPUFQcI5oHdQTPrXLOHEoWUeLaRq6gP/WYZmJegm9KBDT8J18hOSd4vs6MWY?=
 =?us-ascii?Q?/HQdVTa7VpNEo57qRuaGg+KTBXJLZCxclbAxjGbPxpuMlpvg+wEE033mEdTK?=
 =?us-ascii?Q?BTb4iiQMERZza9TuywvNTYv6nY0//Hmo5rjUid3flzKscKwAeD7ZLX2i1UeL?=
 =?us-ascii?Q?uwVwjHkho+2UMN+1fOrDrZbO0NLtk0r0VbvLhzJ+24slbZIrwxmobdM1qAZG?=
 =?us-ascii?Q?7li0qki/m/aDZBkURErNX+Gx+doYqMfTDBh9wiZ+iv5fUnymH0oM8bG1nLpS?=
 =?us-ascii?Q?z2DxkMh23Y/u8BmJ3Hza7t3t9TDdSWh6TuUTxOHpQdNuhOH5hmmz+fy3e1ef?=
 =?us-ascii?Q?9oSZ1YRMwM+b0ycNRAj31zJFum7YlmH3mm6sV6HlaYXEJ5MX18oRv1oSfC8K?=
 =?us-ascii?Q?v7ipFBeskKrVq745PtUiNeJLG8IiWHRHyUYQc5YAtr1dS49eKKld+3A3SIg/?=
 =?us-ascii?Q?SaNs1gf7u+pUGLtnpgH5LLc+YBW+OHV+DQnA9hiTMw1aqpsNJ1NN43dt93eG?=
 =?us-ascii?Q?npUZeAlwelrfZkD036N60piP2Vgb8jniHxd/iG/UgiuKhd94UimUg4L8Ic/W?=
 =?us-ascii?Q?qrFk/7mcb5ClaV/yT1QulMDZZfZV3ay02nrRJ0vzaRSBbV0nLuR1uC1Uob+L?=
 =?us-ascii?Q?sK9mYoM6GyLqfsjLsuZi0+4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d1T9yHrZ49Tqk0qQyu+Wg2mmeJMzUb0QItq4ZetSSV3b8k3jxdJjYfLR2H+o?=
 =?us-ascii?Q?QukkB0kVp38QiPM+pSfNnDFNJXnVE8BX0io1zFPE5Jd8kZQG1U5F5BuhsdN6?=
 =?us-ascii?Q?YeUh4P1HtswBq3sHweF2nDyayXaStBqvilVMyiAs8xBXccuqJzW0Ze2CuqsW?=
 =?us-ascii?Q?p+9cbDcSfZdLwE7J2j6kUC6sYS56cNrJsp+xbF7lYisZvaul/kzQnAGl3MD+?=
 =?us-ascii?Q?DLb+bihs0bSvqLZ/5U9M9GxAKPKSAuiTLyWkLVuEtMiTPeWymsfnutv9PmBU?=
 =?us-ascii?Q?KX5EurhJ48F/Roe8pqiR4gg2rh8/tUPpYZLsnJdVDxZOXEEnu77ED6IC73l9?=
 =?us-ascii?Q?ZN9PP659R46ImfhcgZE2tP8U+sui2AOwnCNKX3GvwaerjFC0Gf/hfzCOVBQK?=
 =?us-ascii?Q?CAgYgGxdzmsOMzX2vqiPPO1+gtoSItiMFJDcMmL/t4RkwbnQIf9u1Z32UN2O?=
 =?us-ascii?Q?WBsyA5YsyTLcKQ3uYTY6igwV8KLhzgbN+KgPTTBjWuoxPaIr9bLdKVMGohTD?=
 =?us-ascii?Q?Xb1bc8dnxnKfN+LJ+BlxCL3LDCMa0ZNRsCHABUC3Vh9bljioBYIo0ZZkKyLy?=
 =?us-ascii?Q?dR86g/4M5gvFgWAi4saz8ksrvzClM+nvBMq/NFFbEerzLEexRredQOw+H0bG?=
 =?us-ascii?Q?0WFHIiufsbLiAS40PwPZOkr16BusM+tJnrvxU7kxUN4YotZPd2zcAyBhQhS/?=
 =?us-ascii?Q?EDH4eW7oJbcrDm8qXzE78dfoEHaxhBX8VFkoKLROclPWdcG6vDiySHDj6gAx?=
 =?us-ascii?Q?V4YqVaMM12x3+29lzwhPwCd9D9wgYchUAKcd1k70xg86hjsyX8U+JysHb5xa?=
 =?us-ascii?Q?nNz1scmpZ9+3Uucm1/VbvT3lHVnjDW4g3TCrJoDOEJCfJrXqMG07vDRwsB7M?=
 =?us-ascii?Q?MVnwv3J9arrAoc5vtqIsTTpndRM3qQXfjtNpq1EMqD99/M+C5Rx1Kl9aHTmp?=
 =?us-ascii?Q?wVQnWkqNHdTuQdn2qLhWwJ95kOsp1EeKKqVWNwpE0vb3JYIAx30N24A9JsYh?=
 =?us-ascii?Q?EXAbxl5yG7pvTubq2QKKtmqODZOhGRn2+ife1rbVZsM7vT9H48OPRi+9sZ0c?=
 =?us-ascii?Q?zH/jmycJzyIDoSrBau+xqUn67oy3EzvNCUFHU+1kFP0/jU6eqKbs6drQkcih?=
 =?us-ascii?Q?d5fSophDg+W7Q2lWO9NtOtE8QzR0A08nlhmDTbPnEGeoIHCSgMcWVkp5+hCO?=
 =?us-ascii?Q?8cqCf1V0vezeTr/1mZR3XZguQI9L6Q6U4nEcU8Y1i+f+5XKkbW//VG+Td6bc?=
 =?us-ascii?Q?5Vg7HdNGpf6KVlyEFeiegyokoPr4DWsCvs9aO3ziJCNRpPkVJvG3T88K2Kp7?=
 =?us-ascii?Q?n9Zg8h553WnzQDR5UDDYyqONhSnmpTSpzMASeZT/4xguiLKK1j/MSGFzVRB9?=
 =?us-ascii?Q?yCAQTsAtAQ41Y34LzCm1Ftp7gboe0UJxB7rJkzB6BLmdxqsi20S4rOGZnU3J?=
 =?us-ascii?Q?QClpgCieOItnBT2bdyUeonVovCGR3jjAa+iUv41CBaBsO1sAXUIxU8eVT8Ha?=
 =?us-ascii?Q?uuGPJfcAVAShu6dUCyNCmMzZUv1MYCx80OrMlffLpkvt9n5zWGeQ/ZjG5Doq?=
 =?us-ascii?Q?QDYBr/bWsbrwPN7VdiMlrw1wfwPAHOGjkjbm0o7pby7NSHKZFpgYWUen4BdU?=
 =?us-ascii?Q?avlDe7uvuKLfqqSwVK/gFrotTFE9CMeB8/qKyT6/TmCbK4jX2o2EXdfY3psq?=
 =?us-ascii?Q?QqqmQSoiSwB/L3dtCF77Sj62yFe7yOBzKCqTGyp2SniFGASjXZIVavmxjEya?=
 =?us-ascii?Q?34Bb6odC7g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4894a476-2f30-49de-cfbf-08de629362c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 19:43:48.9730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a2toydcHtZwpR57wouJUxH395Jxi4jo39qZ1ytTZivTQWp8yzdysSjOGzZ5uUjnTxZTCYEk+tCzeBb2T6SAxAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5075
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:email,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A037ED0A0E
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Subject: [i915-rt v5 03/21] drm/i915/display: Use intel_de_write_fw in
> intel_pipe_fastset
>=20
> intel_set_pipe_src_size(), hsw_set_linetime_wm(),
> intel_cpu_transcoder_set_m1_n1() and intel_set_transcoder_timings_lrr()
> are called from an atomic context on PREEMPT_RT, and should be using the =
_fw
> functions.

Change looks good to me but still good to contain it under RT check.
There can be corner cases of cacheline with parallel accesses or any other =
force wake
dependency. Better to limit this to RT.

I think Ville plans to change uncore to display specific lock so that shoul=
d be nice.

Regards,
Uma Shankar

> This likely prevents a deadlock on i915.
>=20
> Again noticed when trying to disable preemption in vblank evasion:
> <3> BUG: sleeping function called from invalid context at
> kernel/locking/spinlock_rt.c:48 <3> in_atomic(): 1, irqs_disabled(): 0, n=
on_block:
> 0, pid: 1505, name: kms_cursor_lega <3> preempt_count: 1, expected: 0 <3>
> RCU nest depth: 0, expected: 0 <4> 4 locks held by kms_cursor_lega/1505:
> <4>  #0: ffffc90003c6f988 (crtc_ww_class_acquire){+.+.}-{0:0}, at:
> drm_mode_atomic_ioctl+0x13b/0xe90 <4>  #1: ffffc90003c6f9b0
> (crtc_ww_class_mutex){+.+.}-{3:3}, at: drm_mode_atomic_ioctl+0x13b/0xe90 =
<4>
> #2: ffff888135b838b8 (&intel_dp->psr.lock){+.+.}-{3:3}, at:
> intel_psr_lock+0xc5/0xf0 [xe] <4>  #3: ffff88812607bbc0 (&wl->lock){+.+.}=
-{2:2},
> at: intel_dmc_wl_get+0x3c/0x140 [xe]
> <4> CPU: 6 UID: 0 PID: 1505 Comm: kms_cursor_lega Tainted: G     U
> 6.18.0-rc3-lgci-xe-xe-pw-156729v1+ #1 PREEMPT_{RT,(lazy)}
> <4> Tainted: [U]=3DUSER
> <4> Hardware name: Intel Corporation Panther Lake Client Platform/PTL-UH =
LP5
> T3 RVP1, BIOS PTLPFWI1.R00.3383.D02.2509240621 09/24/2025 <4> Call Trace:
> <4>  <TASK>
> <4>  dump_stack_lvl+0xc1/0xf0
> <4>  dump_stack+0x10/0x20
> <4>  __might_resched+0x174/0x260
> <4>  rt_spin_lock+0x63/0x200
> <4>  ? intel_dmc_wl_get+0x3c/0x140 [xe]
> <4>  intel_dmc_wl_get+0x3c/0x140 [xe]
> <4>  intel_set_pipe_src_size+0x89/0xe0 [xe] <4>  intel_update_crtc+0x3c1/=
0x950
> [xe] <4>  ? intel_pre_update_crtc+0x258/0x400 [xe] <4>
> skl_commit_modeset_enables+0x217/0x720 [xe] <4>
> intel_atomic_commit_tail+0xd4e/0x1af0 [xe] <4>  ? lock_release+0xce/0x2a0=
 <4>
> intel_atomic_commit+0x2e5/0x330 [xe] <4>  ? intel_atomic_commit+0x2e5/0x3=
30
> [xe] <4>  drm_atomic_commit+0xaf/0xf0 <4>  ?
> __pfx___drm_printfn_info+0x10/0x10
> <4>  drm_mode_atomic_ioctl+0xbd5/0xe90
> <4>  ? lock_acquire+0xc4/0x2e0
> <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> <4>  drm_ioctl_kernel+0xb6/0x120
> <4>  drm_ioctl+0x2d7/0x5a0
> <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> <4>  ? rt_spin_unlock+0xa0/0x140
> <4>  ? __pm_runtime_resume+0x53/0x90
> <4>  xe_drm_ioctl+0x56/0x90 [xe]
> <4>  __x64_sys_ioctl+0xa8/0x110
> <4>  ? lock_acquire+0xc4/0x2e0
> <4>  x64_sys_call+0x1144/0x26a0
> <4>  do_syscall_64+0x93/0xae0
> <4>  ? lock_release+0xce/0x2a0
> <4>  ? __task_pid_nr_ns+0xd9/0x270
> <4>  ? do_syscall_64+0x1b7/0xae0
> <4>  ? find_held_lock+0x31/0x90
> <4>  ? __task_pid_nr_ns+0xcf/0x270
> <4>  ? __lock_acquire+0x43e/0x2860
> <4>  ? __task_pid_nr_ns+0xd9/0x270
> <4>  ? lock_acquire+0xc4/0x2e0
> <4>  ? find_held_lock+0x31/0x90
> <4>  ? __task_pid_nr_ns+0xcf/0x270
> <4>  ? lock_release+0xce/0x2a0
> <4>  ? __task_pid_nr_ns+0xd9/0x270
> <4>  ? do_syscall_64+0x1b7/0xae0
> <4>  ? do_syscall_64+0x1b7/0xae0
> <4>  entry_SYSCALL_64_after_hwframe+0x76/0x7e
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 16 ++++-----
>  2 files changed, 26 insertions(+), 26 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 7491e00e38585..d721a72072300 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1583,9 +1583,9 @@ static void hsw_set_linetime_wm(const struct
> intel_crtc_state *crtc_state)
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>=20
> -	intel_de_write(display, WM_LINETIME(crtc->pipe),
> -		       HSW_LINETIME(crtc_state->linetime) |
> -		       HSW_IPS_LINETIME(crtc_state->ips_linetime));
> +	intel_de_write_fw(display, WM_LINETIME(crtc->pipe),
> +			  HSW_LINETIME(crtc_state->linetime) |
> +			  HSW_IPS_LINETIME(crtc_state->ips_linetime));
>  }
>=20
>  static void hsw_set_frame_start_delay(const struct intel_crtc_state *crt=
c_state)
> @@ -2582,14 +2582,14 @@ void intel_set_m_n(struct intel_display *display,
>  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)  {
> -	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
> -	intel_de_write(display, data_n_reg, m_n->data_n);
> -	intel_de_write(display, link_m_reg, m_n->link_m);
> +	intel_de_write_fw(display, data_m_reg, TU_SIZE(m_n->tu) | m_n-
> >data_m);
> +	intel_de_write_fw(display, data_n_reg, m_n->data_n);
> +	intel_de_write_fw(display, link_m_reg, m_n->link_m);
>  	/*
>  	 * On BDW+ writing LINK_N arms the double buffered update
>  	 * of all the M/N registers, so it must be written last.
>  	 */
> -	intel_de_write(display, link_n_reg, m_n->link_n);
> +	intel_de_write_fw(display, link_n_reg, m_n->link_n);
>  }
>=20
>  bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display, @@ -2=
776,9
> +2776,9 @@ static void intel_set_transcoder_timings_lrr(const struct
> intel_crtc_state *crtc
>  	}
>=20
>  	if (DISPLAY_VER(display) >=3D 13) {
> -		intel_de_write(display,
> -			       TRANS_SET_CONTEXT_LATENCY(display,
> cpu_transcoder),
> -			       crtc_state->set_context_latency);
> +		intel_de_write_fw(display,
> +				  TRANS_SET_CONTEXT_LATENCY(display,
> cpu_transcoder),
> +				  crtc_state->set_context_latency);
>=20
>  		/*
>  		 * VBLANK_START not used by hw, just clear it @@ -2794,9
> +2794,9 @@ static void intel_set_transcoder_timings_lrr(const struct
> intel_crtc_state *crtc
>  	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP
> mode.
>  	 * But let's write it anyway to keep the state checker happy.
>  	 */
> -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> -		       VBLANK_START(crtc_vblank_start - 1) |
> -		       VBLANK_END(crtc_vblank_end - 1));
> +	intel_de_write_fw(display, TRANS_VBLANK(display, cpu_transcoder),
> +			  VBLANK_START(crtc_vblank_start - 1) |
> +			  VBLANK_END(crtc_vblank_end - 1));
>  	/*
>  	 * For platforms that always use VRR Timing Generator, the
> VTOTAL.Vtotal
>  	 * bits are not required. Since the support for these bits is going to =
@@ -
> 2810,9 +2810,9 @@ static void intel_set_transcoder_timings_lrr(const stru=
ct
> intel_crtc_state *crtc
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
>  	 */
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> -		       VACTIVE(crtc_vdisplay - 1) |
> -		       VTOTAL(crtc_vtotal - 1));
> +	intel_de_write_fw(display, TRANS_VTOTAL(display, cpu_transcoder),
> +			  VACTIVE(crtc_vdisplay - 1) |
> +			  VTOTAL(crtc_vtotal - 1));
>=20
>  	intel_vrr_set_fixed_rr_timings(crtc_state);
>  	intel_vrr_transcoder_enable(crtc_state);
> @@ -2829,8 +2829,8 @@ static void intel_set_pipe_src_size(const struct
> intel_crtc_state *crtc_state)
>  	/* pipesrc controls the size that is scaled from, which should
>  	 * always be the user's requested size.
>  	 */
> -	intel_de_write(display, PIPESRC(display, pipe),
> -		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height -
> 1));
> +	intel_de_write_fw(display, PIPESRC(display, pipe),
> +			  PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height
> - 1));
>  }
>=20
>  static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc=
_state) diff --
> git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index db74744ddb31a..66e9b18c92d2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -317,12 +317,12 @@ void intel_vrr_set_fixed_rr_timings(const struct
> intel_crtc_state *crtc_state)
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>=20
> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> -		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> -		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> -		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
> +	intel_de_write_fw(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> +			  intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> +	intel_de_write_fw(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> +			  intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> +	intel_de_write_fw(display, TRANS_VRR_FLIPLINE(display,
> cpu_transcoder),
> +			  intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
>  }
>=20
>  static
> @@ -876,7 +876,7 @@ static void intel_vrr_tg_enable(const struct
> intel_crtc_state *crtc_state,
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	u32 vrr_ctl;
>=20
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> TRANS_PUSH_EN);
> +	intel_de_write_fw(display, TRANS_PUSH(display, cpu_transcoder),
> +TRANS_PUSH_EN);
>=20
>  	vrr_ctl =3D VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
>=20
> @@ -888,7 +888,7 @@ static void intel_vrr_tg_enable(const struct
> intel_crtc_state *crtc_state,
>  	if (cmrr_enable)
>  		vrr_ctl |=3D VRR_CTL_CMRR_ENABLE;
>=20
> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> vrr_ctl);
> +	intel_de_write_fw(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +vrr_ctl);
>  }
>=20
>  static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc=
_state)
> --
> 2.51.0

