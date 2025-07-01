Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 318A0AF05F6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 23:51:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5642110E666;
	Tue,  1 Jul 2025 21:51:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lQ4dCSC/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A1310E666;
 Tue,  1 Jul 2025 21:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751406710; x=1782942710;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bA5uMmdCT26MBCOu4hIv3tX/14McMP+lq8lDT6cQL98=;
 b=lQ4dCSC/DArxCMlCG58dBBEK4yk908L0EHXc6lXXLn7DfSFm9ieyxx7B
 k2N5KibKMGDH4FUnyvJ4IUvNyuyx5R9YM6o/tVbS+NABFNW5AtIKWnk3a
 6GsaLflnRWsisn1E+lu6o346VlKGkRePQVVJm63HwaaFPTqSO51QcaZBz
 lHtNHIljHTJZzTpxIpTJ5uVRJ+LlPP2W8e1BbyjAVePst3rli7BPAOlA2
 FQWAX983z311J8SIetJzOg2yNtVJlEJVEXPL/cDT1vWFRIf1ezjIEeyEs
 KX1s8++Xrz5HQPe9ZlPbXUhUYK0JybPls2Pp/re4BOWjHfcRAUKM0psdj w==;
X-CSE-ConnectionGUID: +NPBPsFVSVC79AYeqN7SXg==
X-CSE-MsgGUID: fxHiEFBjQtGnxz8PcdBcbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="65037459"
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="65037459"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 14:51:47 -0700
X-CSE-ConnectionGUID: EQYkQChNT/S8AYzvEFZX0Q==
X-CSE-MsgGUID: dL3tD5kMT8iHpDIZJWVE6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="158154859"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 14:51:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 14:51:38 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 14:51:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.69) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 14:51:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XCRJnvkrJ76f8rAEryetp0Xrae3foHL8QOzCqmfW2wJZEw/XuOXUOne9WBauVPrbU2lqnlKYEouPGXG4yncGNbIbQ+TcPNtStlbd3yZc9Sol3GeH1bFKzRV1JiQZoW+gaeV+Tq3/y/ZA4e86/6ZCttQgWM3mHUNsvQFhPIlY5h0Hc5mpgzX8AfCZkBeNo5OnaIpaJTXtDSWrvC4Jv9uqfWNl69KZxZuXFyMGQ0x7YVaoWPLJmcPeSW2i5JOlhrkiiiA9ocaWFfAnlxFCd02hV65jatL1wz/t15SDPveagnmS6G2UAeIZPlJYUPCtLGHJTw69dFe2BxNagJo9x+Fofg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hP2jJ4ASOzHojGUewPddy8cvOb8sTxrhCKwBYjCXXTQ=;
 b=NbmuO4jMRmLXQlvAyNZnsey8xzzKGoiwHX7p8uOP6qcztemNui56HkBELeKgXLSWjXPcvCymHUl2CY0EeWlFXmi3AWcTkiPNnHavgokDTr0bZcWpU8jBIIUDogszOlEXLdgBHoH6soGfm7m0sG+IcrYUZEXZA2pc456iQEGbbXs+D2iAMf7RIRrJOoWESPNPy6hhl62QL5INBrvwJAO7j8N8YLPRbUg6oM6iYdLXqB5+Pzn6/Di029IK6OTHX2Y8VExBRqVviYjwg2vpucBY4p1nSbrZnR5skH6UuHUpbk+e67xBNvy55ByU2fJu3/QZvE4/RXF2ChX2fxq+IVqFjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA2PR11MB5116.namprd11.prod.outlook.com (2603:10b6:806:fa::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.27; Tue, 1 Jul
 2025 21:50:53 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8880.021; Tue, 1 Jul 2025
 21:50:53 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass LinkLayer
 DPCD&EDID tests
Thread-Topic: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass LinkLayer
 DPCD&EDID tests
Thread-Index: AQHb6r4Z5wi+o7upkEOMEGQq/usworQdzF7w
Date: Tue, 1 Jul 2025 21:50:52 +0000
Message-ID: <CH0PR11MB54442C75AC8F390EA7B8AAD8E541A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250701192631.3750408-1-khaled.almahallawy@intel.com>
In-Reply-To: <20250701192631.3750408-1-khaled.almahallawy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA2PR11MB5116:EE_
x-ms-office365-filtering-correlation-id: 74ad51ba-0a82-4496-f383-08ddb8e959c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?DHHrzEk2h7fWNRBvXNzEtNuhvmrSM8LwD+3TxoFM2LyfHKenoZwAtz3UgXP+?=
 =?us-ascii?Q?yPMo59xR5LYgrlmlqc946WX8XSyEVysb61p83/y+LLtzM/uE9P+DQGfHOi2Q?=
 =?us-ascii?Q?vO/8guxDaiT6kj8ABE4p1WJerefL2Wl7GuvOxkPUb2TjKsEwMXyxGrmQlMUO?=
 =?us-ascii?Q?q9X82V1Ipbzt1tik9fusGMj9HS9I3q5CMhANdKGCsGTaMULZP6OaXlnLuWPk?=
 =?us-ascii?Q?5YUZs7Cqw6eTwJ7fYspxwTpwAxBo3suJgwky689wFLnqfa5WXXT/jgW6sUCf?=
 =?us-ascii?Q?O2mHIbOmVAw1dsTM9xRgOnAT3bk+hrbaIdH84mg/rvLM3y6yrAkdGNBRrgz0?=
 =?us-ascii?Q?ELkBU7FtEACFJ0DFAW4fxLGV+aokpJVgoeICP//hrUqiSTAjXiZHcRH8k86I?=
 =?us-ascii?Q?LJ7dYfdV4OECJrdR/5A5DJl0cjvKEAlrr5nFatV1x9ADYpx/8cTMoBawzk9a?=
 =?us-ascii?Q?0AzvWHnQERV1auLyLT7h83QvLm/E+aVYgCkTE79NGS2qB7/zVGcTh5dR5Amn?=
 =?us-ascii?Q?Hn00jpwHmvCmhbZqTojMqN6oMe13U5NsPn7Eqv9UInE9fhKD7yk5y8/Z3sVL?=
 =?us-ascii?Q?cVHkMr+Vq/WLnS8H3zNh8E6fF/962J8viitR/seaeXOX7ZOwZH6GJ7ABdys4?=
 =?us-ascii?Q?uE7cJSN6GuoZGbTVXaO4JuJylO4ilVy8W2HLowb3w9seP0ksD3lEwcDAH9he?=
 =?us-ascii?Q?kdMJKEHUgG91Z1LmAkZY/Jq0SRdCnrMtU/E79M58QNJHHKpixQkCGpcC4PCa?=
 =?us-ascii?Q?FTjU+0SFSFeGs/v/k4+6uRmy9SY1nSmEj/+uIgnyr4RU8vx7v6QirvSJ/q+7?=
 =?us-ascii?Q?L1r0UFmfgOjylSGNbOsp1xZxnZ9bQH0TMTvqu+OnTVxZV6j2Kbj3D1sv1Woj?=
 =?us-ascii?Q?73fAmAUelAgimD1uVYjVNpj6O5bghqsUtimfZQqmnRIrBB6hXgjE8IoxIGht?=
 =?us-ascii?Q?RUWb26okW2X3SXkjQkYynH/ZXYzEmMa9yk7C/0b14wwk0b0dm+Brwrg5srvp?=
 =?us-ascii?Q?gqEUANbC2ZCiJFljuxFSN9VFfLroKRfxkrPylN0aw7vZHgU9qNXohf2aW0fm?=
 =?us-ascii?Q?32c6v+okSrY0uQ2UGG0H64lU2Ly/1IcZS4LDDO+MOV1kIsJPVO5PoPeNa/te?=
 =?us-ascii?Q?Kony8Lu2rMJgBbmQnOnmYHHAlLaiL7qDoTSCktnXnDvtsvVtZRpEF6B9JSpf?=
 =?us-ascii?Q?wGSs3XXEzsT6Rs8Y/G6xnX4PS5JX6UhpYrLeKMHhSWEdEN1aDczCZtKcbm9D?=
 =?us-ascii?Q?WQ00QIo5cbQ+dVv9Is++/fkU81ytc0nRQgqccu99AqjCoq57EjpqVpEe/e1s?=
 =?us-ascii?Q?phQs+KutLRmg/ObI8pRI3QIydmmQZfWVxkWZZgiKC/3zbEenO9k06QekGz/E?=
 =?us-ascii?Q?PRUiZ0LeZghk7Gb1vLy0T0Fikf+BpTkS3jjoc9eynZPdWbvkLDI/er5V1TH3?=
 =?us-ascii?Q?O/3Q5miMuNRIRWB5JDmToVZRTDbXfkDAvNDyQREDA9GcsBwDGj00xOM1+b/m?=
 =?us-ascii?Q?+HN13qIQDNRq9Bo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pi0tcYteP3lJRuWb6nB/1SnbymapOxZQuVuPldBRw6lvGvwwi5uKf9OEtnOa?=
 =?us-ascii?Q?21aVAhI5UsU4+AgueqoPuQcgSa1Qs2Pw3CYOGZvwLnsY7q7JbY/3CG5bD7Md?=
 =?us-ascii?Q?MGeVAdqEYs2rCEZ2po0d22qZZ7QaFP4VUgzJDBBtleBNuc5LQdRmjXZMn2hQ?=
 =?us-ascii?Q?uBr/eZIpwrbTefP276Elhs5GBhqiW1d3KKGmw1E7/R6dYDdNLHpeWXutKY0i?=
 =?us-ascii?Q?x9X7c/Y+BB3tvHWVAXhV1CSN+CCslqgx870fXwoivdIxzktx+if4YsjVqU+v?=
 =?us-ascii?Q?pANo7FhgVPLSXHorU6MvQisLKBURE0ddQW8CGZH2IBBqfoQVT/3zq3T/z7Gw?=
 =?us-ascii?Q?KULmi2wIS66oH3uR0Ia2bJB8G5R9NFVJ8pxBjguMzqmC2OKKUEvgyAvC/oaw?=
 =?us-ascii?Q?hvqrp2wDz7EJPbbo8AtzwqAXveDwav4ErZ6HjqX94hjDl6cVSrkvlq8Hp31q?=
 =?us-ascii?Q?P/I0WEPgvnFNbf5qbc/rOFuWNjLeA7+6kqNxZaSyKKgzmwRPmAIfeQ8Y7w+k?=
 =?us-ascii?Q?hI6wZTwW3nTRUfpYs9GD3GbgnlbulpYtXx6LqEePLS+Oy6knxgqRAyLxu7zE?=
 =?us-ascii?Q?oxM28onq7d8X0+R3quwBbFx8bOXy3eE4B+U9te/m7nR0dhI2j2avpc+6mGdJ?=
 =?us-ascii?Q?9OV6lIRH+GnUhqLTQatN/ftJGmm2np9zpcixU4jI01cE9oZztzRWNiPSk8I2?=
 =?us-ascii?Q?VshIwYaMqZ57aOSO/P6AgTdD8v2Y6DwUt64ey0KJmTkqKXn6yX0UA5r+gk2c?=
 =?us-ascii?Q?rSTb9Em/wpLUje+cvyghJRktF6b/Q+UmORLytx2Ena4bF/72DZT9PH8e3nSB?=
 =?us-ascii?Q?fIQfZfjQJcr7Zx7Al46jFFd955PUShvfr3d+TKAYGi1033glhdAfcF/sdLzd?=
 =?us-ascii?Q?5gxoWAorx11tpO8n4kC62TNwmo/gFqALhR/dfSkyGSfUmMM2qm/hYCi9CBJc?=
 =?us-ascii?Q?iNan8+QD/tyuAnQjZX3X3Uz0zSTHbAUNmrDJLg81b0vc0rCJ3a6cD3owxbCP?=
 =?us-ascii?Q?ZtbW73EFDiYKA5++g3leXZ6qa83QKB7RUWnNl+d2p5aPklXwBSF4ZnNUnBbO?=
 =?us-ascii?Q?8OdO29mGG3Bdw0nKCjOIb9ewJBr7b619gfDUnH4BV+JY16NWcWpplyoYl6Os?=
 =?us-ascii?Q?I80ZR9vMY8SWKBd7jc8vD/Z8egumjdv1OCXkIc4J9jamIlxg6Y7i6wSctNzv?=
 =?us-ascii?Q?nMZPfypohsvJ8qg4vCzQWEHwaZ1jLM1Es+hN4aWWLs7BlB/IfzYyQkjgQgD5?=
 =?us-ascii?Q?8q8pzxH02SrWQR/QHxYisep0ErP3M6Z+Y4wb2S54GNWoHESXbImezAlGxGHw?=
 =?us-ascii?Q?aSJy2NNJc2bLOC3JUh8M50Y9vBdrQZNEotgubRbPRmjrt+kDuW6oMnAU1lMV?=
 =?us-ascii?Q?6ynAiwRy/r/sU8raKVHYKjie0CZqxNkNf0NK7kuTzYxsz9okdR0yJy9xtQJZ?=
 =?us-ascii?Q?ndcUdvX2v+IhZxaazjJUABuvSJUUCTQeMHP37DhTZTFPIXSH6KLirnoB/dRZ?=
 =?us-ascii?Q?8S5pWM7DBc2RUToB4HOx80Rr9ijPneLlr2k1MRX/xX4pB9aZy/mz40XIx+4f?=
 =?us-ascii?Q?aPlAoR8L1racLzg5acpurI/aQISH1hTNpUS1C6Yl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ad51ba-0a82-4496-f383-08ddb8e959c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2025 21:50:52.9538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AtIZDh5RNauZHsC3BJDfArhWu78qLiH185BWniNKWIWPj/CHjbNS8wR0ocMSR6afor5iFJUk+E/zEuXloPYqXKWBu/QhKY5uvqg7MevI9I4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5116
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Khal=
ed Almahallawy
Sent: Tuesday, July 1, 2025 12:27 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Almahallawy, Khaled <khaled.almahallawy@intel.com>; Shankar, Uma <uma.s=
hankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass LinkLayer DP=
CD&EDID tests
>=20
> 4.2.2.1 LinkLayer test states:
> "Verify that Source DUT does the following within 5 seconds after HPD
> being asserted:
> Reads the DPCD Receiver Capability field (DPCD: 00000h:0000Fh)"
> ...
>=20
> Fail1:
> Source DUT failed to read the DPCD Receiver Capability field (DPCD:
> 00000h:0000Fh) through AUX_CH before link training."
>=20
> Fix this by reading DP_ADAPTER_CAP(0x000F & 0x220F)
>=20
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index a479b63112ea..762dc073b824 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -252,6 +252,7 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp=
 *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	int lttpr_count =3D 0;
> +	u8 adapter_cap =3D 0;
> =20
>  	/*
>  	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
> @@ -277,6 +278,12 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_d=
p *intel_dp)
>  		return -EIO;
>  	}
> =20
> +	/* Read DP_ADAPTET_CAP to pass LinkLayer CTS */
> +	drm_dp_dpcd_readb(&intel_dp->aux, DP_ADAPTER_CAP,
> +				   &adapter_cap);

I'm working under the assumption that we're reading these registers not to =
actually use
the values they hold but because reading them has some other effect during =
runtime.

Does reading that location clear the register field?  Or does it signal to =
the system to
perform some other process?

> +	drm_dp_dpcd_readb(&intel_dp->aux, 0x220f,
> +				   &adapter_cap);

0x220f should probably have a #define macro associated with it.  Could you =
please create one?
Maybe it needs to be added to drm_dp.h.  Or is there a better location for =
it?
-Jonathan Cavitt

> +
>  	return lttpr_count;
>  }
> =20
> --=20
> 2.43.0
>=20
>=20
