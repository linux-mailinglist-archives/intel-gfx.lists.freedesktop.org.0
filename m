Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFglEMHhjmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:33:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6B2134174
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2273B10E002;
	Fri, 13 Feb 2026 08:33:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SEglhErH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EDDF10E002;
 Fri, 13 Feb 2026 08:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770971582; x=1802507582;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fktg3Ma4EKKIt7qm+SLG1+ZjhfoCRRbeOLXYxuF4V0Q=;
 b=SEglhErH6081YrEugdlVqatu3Vk9hn75SGLPbPCQT21FIhIIpkhbTnNh
 EpE/HxxDiJl+I/jtzi2/EoOBMrkJJbhODnnBF4EjJBZUQKkCR4+f7v0t0
 drXJt2kX9iJlMt6sky+u+f7ow3U6iRewx7iUTKz6vRpJGHEbdfeQi3H72
 7xE02fxxKVeZ+EI5nhysWHwTeJwU9fWTscRxY5s7fxdCivijO49wkZsPG
 ZN7M8+8qoYYnac+drvdi2/VYYDHad50i7ZpQbk6Iy7dDh+gffWYr48/cj
 4fBE1W4FMuuSla7E1WGIK3GUza9PzzejVlPLoIb1yJiLwGuMLbCJ5H49n g==;
X-CSE-ConnectionGUID: LdSixts8R4WHfRgHsnWPgA==
X-CSE-MsgGUID: so60VKlkTqSxVQ+yE7AH3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="89565235"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="89565235"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:33:01 -0800
X-CSE-ConnectionGUID: PZM8X6qRSHiSI+Ma19IvUg==
X-CSE-MsgGUID: yetSbp2cQw62UyXby43YHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="242307252"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:33:01 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:33:00 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:33:00 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.65)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:33:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WPKOsj9vbH+Ux7jHot8Wla++7+jd7BJUsUfMS0QzmPK/Q0cMdn7A8sEki5WcfvoRgTyVDEkgkyzVvywEELNcnKUP5MS8q9B0nOLPzTve6xtc5V5aMDcLaoLuVjEn7tyKNUVdvsw6l/gBVD+VC2ws0RU4GVw+uH7t/iFhjSlxCQzbyo2RZvhJlcKQP04QyLljK0lmAHJRgjzeKyOu4JbbU+Je+US1jWKmyL3EItuE9tTvE27czikv3zid8Dx2hRo/nYB8RpghypLN00Hmea1G3IXtHj6HllNpOmNpMqGlzZgtRKU9yv1FZL5TNDtyw6x0EACMKhEMO4QqKSmr/4YwDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OFdDILDfDdBlXCAACkNs2aG2X1kewJ47dTzwA1UnqVE=;
 b=r4Yru+tjHz/Y9pruZ/u4hWi8v2rEo+4e1aGbu7wfeNCRKsWfzdMceALnK2zdYU06uoR/rHj1lHCirie81F8m/x/PeKcjm+fLgAUYi92SnMpz/FEeaxcZ0GompAa+5ZFy3pKzUIpFuV/AwyN+I3Jo1a0FOz5xvQBcA974topyNS9kjsPQzp0jHXqFnoYKOLO5gcAo66HUgaVLpOi8MfOZuVPSpCm1aAVi7QY49Qn/4qQKPk4SMbzHyDU7nZIqE8Rj2b8FzMQceevFPSS6xBNMzihnUZinho8OIhtofgwgEr7mzHomEIqDVwtZQscqPGsBUOttS8BK6pXA6h4oxDYmww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ5PPF183C9380E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::815) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 08:32:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:32:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 09/15] drm/i915/display: convert W/As in intel_fbc.c to
 new framework
Thread-Topic: [PATCH v2 09/15] drm/i915/display: convert W/As in intel_fbc.c
 to new framework
Thread-Index: AQHcnFFvxCud/QJLjUekqsLrJIYEtLWATd0A
Date: Fri, 13 Feb 2026 08:32:52 +0000
Message-ID: <DM3PPF208195D8DAB7A3C59D8F6C54E9D0CE361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-10-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-10-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ5PPF183C9380E:EE_
x-ms-office365-filtering-correlation-id: bc084817-fd32-4ebc-6adb-08de6ada7a93
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?B9BBmP00Wc7jth1gqO4fMBvgU9LHcDXt6tKgZcPxIYDS0qg/9yhnaO+FdTGo?=
 =?us-ascii?Q?gFvi4KwnqiabgLCyvlgWkUq+MHPnEK1cEwqzKaxJAceIt0ig6ECPVJFcAenl?=
 =?us-ascii?Q?ZIdxq3IfWZNv7jVmHzn+ifhpZaoZZsPCzI9U95EdZUvVrKzfJ1RI+IqwEQZk?=
 =?us-ascii?Q?njKQ9/NkR7IPfHNGg/laIwxPtdV055wlMHuDG0cWkg55ESQ1S9zZDAcgcOuy?=
 =?us-ascii?Q?/BK3weSG5Vlz9hD5gP3eT62YB6RHzvYhMHFscsm0YUvhB1nluDLhpyBZa7oZ?=
 =?us-ascii?Q?kXRrPdEC3t+gEcJg1mL5Qnf2YMHu/vZCwiOPq4e9y3w2xmOSN8WPv/YSLQEm?=
 =?us-ascii?Q?MLw6oNlZIMAQirsRoEq2Ry0Ajy2ZarmnAsQLEsmFF/5Yls6c2Zf4iiEjywiC?=
 =?us-ascii?Q?8XVuSZhp+jUoFgi+o2t80h/ZJLBTelcFLdMOFZw0OuCs3mD+LMz3QhayOKRT?=
 =?us-ascii?Q?PViOe0OfbCC8aeGwKWY1Wwv7LJ64cF5/t5Msv1LtLgxv5cC1V+m+IyfslCkz?=
 =?us-ascii?Q?UwsgSp0cbUM8tXtpfLYJkk1parQapbqlRYved3xN75Q9iqS0E/V9662ZyeQW?=
 =?us-ascii?Q?fgY1loAbHT4/gyVkazG686OZPGhfjNi3vU4SoC1dtHkpKH6jD/lwJtMnzW7+?=
 =?us-ascii?Q?8uzg1mITXTfWN/LEOK3bMupXZz5puZVJOkvxI8ZfQHSkbGamYp0QLWR/uQR7?=
 =?us-ascii?Q?TNvvjjuCpOulf+12nOoND3u0BOt0sM0w7jJJKWdHr7PMCCA5gLjin+aLTDMU?=
 =?us-ascii?Q?UZTmSHu5x3HnUJD7m+k4L000WyF6svwm3is+hwc7LMo+QZqKAnDvs3JcvWyP?=
 =?us-ascii?Q?Slu/r/Z5izFzMTMrq950oks+nFWMDhNK8laEiBLCegmaJCQOTKzIpJ5jlopy?=
 =?us-ascii?Q?cENBWMaW7MwDI8V7B/U9Fnpxb0yCPjuNgFzDn8fhwP1l+gEoKESCnh0Leklw?=
 =?us-ascii?Q?K1S75SxHrnM8UuQesXesYWIM1KlKLLuC3Hj5GipRMLq2NKPTCXFHYgaAkdE6?=
 =?us-ascii?Q?+MFY8ab+eympXJNBpXKjyZzikGYzXwzbskqt2El5jUv5z3m082GM01VXLTOa?=
 =?us-ascii?Q?HwtmDo3aZfa2sT1DIOpyscDh/QaJq0kQUwsMdOC5EBJ26KO6BSf/4n84u1gg?=
 =?us-ascii?Q?55CrjHn4Ash4JZPf60lPUeJyi58I0nl0akYEcC2C3ZvNYLX/ANlgcx4MCjTH?=
 =?us-ascii?Q?GcIBAfO/qHO5zH5upZNUGfIHurtA2ObIWuiBUOXjzZrFf82KAtpFBl/jQj9c?=
 =?us-ascii?Q?L8+7Px0JWhGQ+gDr1wyDlzsUWKwWXbIOauZy/YcrObWVXfIX4Yzj6A08W1/C?=
 =?us-ascii?Q?gN6M/0kcpN5ztZZ4IcimryxDrDyTY654X2r8yXjgtYcH8AFLTEbHkcjbWqxV?=
 =?us-ascii?Q?WKYjwpzsCg4PRrs/P2jIGDkQj/PI3cpn/N7PtBI2wkejVQdQHQk2N1xzNFke?=
 =?us-ascii?Q?K0hvTuzMggWGwNtERLjNBH8vEs6uny/K8PTdjSt86IIV4B5QLFG1bekJNSwY?=
 =?us-ascii?Q?9J2ptWxlOyAXy56+lEU+ItfLaLNE3MbX7HCY4jWVXceQfDuIoJCoODW3Fj4U?=
 =?us-ascii?Q?3iIQxz3wtdMKqbmx2YEs895sJafkbErg46+ViEZ6x2ABQshjgYl+SWH8ysC8?=
 =?us-ascii?Q?atiPRWA9CVVBp2HNUUo7m2Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UTrtgBVLrWn0y+FM0h7K3eOZICvuVwZG2Ma6m7gGp+NrDO904vTqWP5SwQbA?=
 =?us-ascii?Q?WgJTZaH1L/G0RGEJt+X9j/5BaPmcD2fd00jBicI/yzXnzNcUxj+SmVpbpmWc?=
 =?us-ascii?Q?qq8DdT8loVSdgXc5IB+XP0Zsn79fj9yaTxhlpK/RuOVQLrlENGBnWvk74rqy?=
 =?us-ascii?Q?lFp29707+mBn0rjfCsVgRQ9Qu1G7UYYQFL6K93mS4iK+ceQX4piC3Im/2U6S?=
 =?us-ascii?Q?QQaSFrhMTzfg9NNKuH9WjtuVSXioDU9JNwJQsXgpdIUeJZPyr2Igj26UQzYf?=
 =?us-ascii?Q?G9G6sOYZ1+1RBlkDukV2qUxg0Fq+svfIIPy/W43Lt1AmghfNxiWWTFUYGZT4?=
 =?us-ascii?Q?uuU41fmmipFSopKSmuGC52d4psDL+uI8z/+LbFN7Kj8n7Hk0RqKRRW8VYE/r?=
 =?us-ascii?Q?PVQSZsP9rIUZ1E9MM8nWq4grDQxntquNg1NbsGp9H5VvQ6xNyZPNGBuQdB+k?=
 =?us-ascii?Q?EofttqdGlavl3VbRzsqvaPEhpngtF0Ptsm1coSYX8TXoqrPuJb+Fzcbt38dO?=
 =?us-ascii?Q?l+1y4q56Xlf2zwqVbM5dKF5r0G6F95x3DOTD8j8EyiqFZpTkS8m+7C9SYwVH?=
 =?us-ascii?Q?LHdkGA26Z3UM7I2twkVtQGWYYLWIWpKTndvadjXCrDwNVuNneEgLVNB9GNvf?=
 =?us-ascii?Q?EVDgKBgvv7UhejwvBcXJ11ITxrGKhiF7UBJ5PDlGKSZqQWKTXCgO3k2M+4PE?=
 =?us-ascii?Q?86ZVYJO+gkkdihnco2mtl4fX/UJ3DnGdzSNJ3nsBlgp1CkqpbsG9qSd4cq3K?=
 =?us-ascii?Q?HgL+m+HC1KxZqN9uc9tDIdl03te962f7YIWh+TTWszNq05o8CpYyAlSWcXSs?=
 =?us-ascii?Q?uh/kxTHwQLXHdjYB3lTEoy0UhSwFKuSCJN6ftm/wSM8LYjwZ619nIffroDXU?=
 =?us-ascii?Q?foRPq6tZygPhBBj4F3mdnNl/CLrjRrwORgzrbuGf7nY4kztUVghkhpvkEAbY?=
 =?us-ascii?Q?ij+qjpZR76i9fRndZww/Y40YtLVg/QG5iravdqedOlfnUOR40VZUkVGncKrq?=
 =?us-ascii?Q?yJwhp8jUvCwM5Ds1qHPWJjOoqYzXqp/G9oQlMHKnWf1ONr3NRpgqOCh/NJwP?=
 =?us-ascii?Q?9DDvkfLfdhPbR8daSf9VuWGNYAPtwVYWe4s4TENUU1iAeEjKo8cFLYjKktjo?=
 =?us-ascii?Q?4Nwq4wV2yhPorembrFC+5C9H2ADEqqAVIRDRhDeaPm2p4maqcQBwYdBxYp2R?=
 =?us-ascii?Q?7qqawXRdGd7KkMjGUBMQKE1BMqwQ5IpjOHLm4ezQEZpIvOlFumtHDTGktYNQ?=
 =?us-ascii?Q?sXffe8YDA2J+WbIDSXkikmyplGhupqRmEju0Z4TzeKvmg81qSMakO8x/yvXF?=
 =?us-ascii?Q?kMHXNDr1QJCef/T3vXQmLWjhqPR+jl5B0+QicAGmO7XWFOhYKylLyq4df4p7?=
 =?us-ascii?Q?Q85kAR0qyHWP5Sjjgf9yG7a5ti3s3rvfV/Xq4eoqElUlctw+AIUplSAg/EIL?=
 =?us-ascii?Q?aniX3pdOqM5k2mt8wZyubIqEx22Bbsd/NIjRy9rZbDDvJiBXQRxh1BLqSaD3?=
 =?us-ascii?Q?yPma1/d8A68zZODhWYWKNWiAP81vSIgiliatKEt6E95rtbv9YJ/JFsjQcSCB?=
 =?us-ascii?Q?W4li8ibeOuBfILCo3O4AFQn4IslGTauUH7AXtWaciF79oYba9j82zEOeg0no?=
 =?us-ascii?Q?utpk1VfGsS40cAeU+wBuZpxHaT7scxFQI25mwL4XE1UsJcHU4Zlp6nilDt3R?=
 =?us-ascii?Q?50hNS8AJigYABiWGtLsjztdCjNHQNgZebkrBFXuNR1FWssdlFQ1xFsqY8j2U?=
 =?us-ascii?Q?OpXyXq5nfA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc084817-fd32-4ebc-6adb-08de6ada7a93
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:32:52.4866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s4+LDCdkNbvpMbd+XorWUXIoLGZRw7vfdCYSFuPd9B/ofBO4NGy1A6+2JFD/EKkq2k/KHH+jhsSrnD1wkC3Oxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF183C9380E
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9A6B2134174
X-Rspamd-Action: no action

> Subject: [PATCH v2 09/15] drm/i915/display: convert W/As in intel_fbc.c t=
o
> new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.

*intel_display_wa.c
With that fixed
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 4 ++++
> drivers/gpu/drm/i915/display/intel_display_wa.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_fbc.c        | 4 ++--
>  3 files changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 798e77200751..1459e5df1dd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -70,6 +70,8 @@ static bool intel_display_needs_wa_16025573575(struct
> intel_display *display)  bool __intel_display_wa(struct intel_display *di=
splay,
> enum intel_display_wa wa, const char *name)  {
>  	switch (wa) {
> +	case INTEL_DISPLAY_WA_1409120013:
> +		return IS_DISPLAY_VER(display, 11, 12);
>  	case INTEL_DISPLAY_WA_1409767108:
>  		return (display->platform.alderlake_s ||
>  			(display->platform.rocketlake &&
> @@ -109,6 +111,8 @@ bool __intel_display_wa(struct intel_display *display=
,
> enum intel_display_wa wa,
>  	case INTEL_DISPLAY_WA_16011342517:
>  		return display->platform.alderlake_p &&
>  			IS_DISPLAY_STEP(display, STEP_A0, STEP_D0);
> +	case INTEL_DISPLAY_WA_16011863758:
> +		return DISPLAY_VER(display) >=3D 11;
>  	case INTEL_DISPLAY_WA_16023588340:
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 2e5ce21e0455..87fe404962ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -27,6 +27,7 @@ bool intel_display_needs_wa_16023588340(struct
> intel_display *display);
>   * number.
>   */
>  enum intel_display_wa {
> +	INTEL_DISPLAY_WA_1409120013,
>  	INTEL_DISPLAY_WA_1409767108,
>  	INTEL_DISPLAY_WA_13012396614,
>  	INTEL_DISPLAY_WA_14010547955,
> @@ -42,6 +43,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_15013987218,
>  	INTEL_DISPLAY_WA_15018326506,
>  	INTEL_DISPLAY_WA_16011342517,
> +	INTEL_DISPLAY_WA_16011863758,
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_22010178259,
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 9f39b6990bbd..a9e1dc7caa64 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -184,7 +184,7 @@ static unsigned int skl_fbc_min_cfb_stride(struct
> intel_display *display,
>  	 * Wa_16011863758: icl+
>  	 * Avoid some hardware segment address miscalculation.
>  	 */
> -	if (DISPLAY_VER(display) >=3D 11)
> +	if (intel_display_wa(display, 16011863758))
>  		stride +=3D 64;
>=20
>  	/*
> @@ -950,7 +950,7 @@ static void intel_fbc_program_workarounds(struct
> intel_fbc *fbc)
>  	}
>=20
>  	/* Wa_1409120013:icl,jsl,tgl,dg1 */
> -	if (IS_DISPLAY_VER(display, 11, 12))
> +	if (intel_display_wa(display, 1409120013))
>  		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  	/*
> --
> 2.51.0

