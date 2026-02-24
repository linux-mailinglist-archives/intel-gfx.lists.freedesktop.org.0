Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLbdDXmgnWlrQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:58:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9413F18753F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:58:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC27D10E57E;
	Tue, 24 Feb 2026 12:58:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="awZWbnpo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4026A10E57E;
 Tue, 24 Feb 2026 12:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771937910; x=1803473910;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rMFFTnJ0LNmAwCfso7UTCKRdI4YumLoSCQ4o8MsnkKU=;
 b=awZWbnpoyvDb+VDOimhicy+q+EKGn7hnZKcU2FjWD16z42f7oYQRU9ac
 KNSUP+yOW2hjt9MDzEMCaIz7rD2My8w1eHLDVSxT0HH9h6jl4zk1wpuyb
 i6D5YrP43jAM/slX/554/WO6p71bvdgSN+IzTl2RqzEkTJrRqbeHVFu8l
 DnsHfk/TrI8unZ5S+ogS9gXXe2Q2tCou3i90d+x3SRjIl2xXfy17G2BZJ
 HMDwRBS5ON/YyQr17F+WkGMIASKbrSPyB+SbFJPgeLbH2WZIb6vc2tPrf
 9I7JRHnH7RRJ+uqnkNg/b9kpUKYh6dnt+Q0n4hVaeZIsTcBVWjE1Sy3ws g==;
X-CSE-ConnectionGUID: +jvSCBCWSlCncqi+qfIe1g==
X-CSE-MsgGUID: q7MOfh/5RB2ietCcCvZq8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="84311828"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="84311828"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:58:30 -0800
X-CSE-ConnectionGUID: LzaOt6wnRQqEVplXoP0mkg==
X-CSE-MsgGUID: 00lBi6aWTB2SgN7KxvdXig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="219996402"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:58:30 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:58:29 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 04:58:29 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:58:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KW1NHnxGWKK1EeqwQgDhA86qeSzjQm9z8gnccOan2ADozm2AUK/bPUoEmo58Ri/Pc845Rdk+zQR+FMbLSXFu7ifDjW5dM25O+b9YB/Zc4awFOrcdauctFt7iz+LmpcbRF5cNNnwI1XCul+BYsJIGq+K18Y4dbCUpLkzZstUOE6sF19rttI/umOpm3iUHuP73hRmR7k3AG5eTw1QWSGpoky90+TbxtI74mA56bI+yFDREywdCmtkch/dfoSu87V+wg5FDUhZ6GEK0DqJ7jU8Hcpo+bd0aseSsyUVWrtON7kPwufM6RqIg4RMx8podUFrDZMoKsuUfx67kwU1hpfaOCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pK2isoLqbG//QT2ZS1uH1tawj6VePW2q+5j/HSO1gIs=;
 b=x5NBa+7Z6Ybr7iCCnAxB/Et17lgbDJkJ47r4CJX0KgZ6T6NGA4uagzxD2sZUu3nK+Vd9McQcXw1wbisyrG0qV4hluAoMdKYFtGr53VziBaP/Td+5duHCgdBIE+/EZhs515cE4guY2V5HcPJC0DjROHo/xi/m9WNV123jcsIMZqeoiyZC1bHyudlX6bgIZsOpw9BvnMPd8wf8SMRoClk/cyDcmE0tv7zqioqsWQC9mZtKJO04muJpKLnTT/E0u3tq+yljpUZDui+8wzwvHdaBtwoSdl7cUqrIzTjXV3uHsmHoWbQlfYr2W+C4sQ1xWYh+41Jop+ogHVRtApKcDGabRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY5PR11MB6437.namprd11.prod.outlook.com (2603:10b6:930:36::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 12:58:21 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 12:58:21 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/5] drm/i915/dp_tunnel: Send BW change notification after
 tunnel creation
Thread-Topic: [PATCH 5/5] drm/i915/dp_tunnel: Send BW change notification
 after tunnel creation
Thread-Index: AQHcoc25PWGdIutHGEqlZoJk0Ic9irWR1tBA
Date: Tue, 24 Feb 2026 12:58:21 +0000
Message-ID: <IA0PR11MB7307D9ED51D5E558A66BB309BA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-6-imre.deak@intel.com>
In-Reply-To: <20260219182823.926702-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY5PR11MB6437:EE_
x-ms-office365-filtering-correlation-id: b3b53aac-5d29-423d-74ca-08de73a463a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?9YaCPQEd+/9j7TPweQLdGk5HXg6acRE+ez0R3z6CxZsQOsO0vjQwBTj4/8RY?=
 =?us-ascii?Q?uN6KPl6RQlZcD5xzAcx4YGtnqkHTdPKXyynTJ6YUTrihxEu5l1nJgIbPqaRN?=
 =?us-ascii?Q?5qPf4S8JwvJns0RAaoXKwRzZwk0VhktQ7GAtMkCzitdY8WARbcrsohcYYAVq?=
 =?us-ascii?Q?x/OgmUwAK7lfVyZQjSrfRgW/ZJke/FyiE0z8JjVGLFeCNwaCfmhAhzq6nGyF?=
 =?us-ascii?Q?WYyH6hI29JSaEsdGvdP4yo3+pw42+4LnxBpw0eYNfm2ssSDHXSnUb080DMws?=
 =?us-ascii?Q?Li6aFVDbJYLy1RTOvhznJpJlSycvlvOqt35+iSIe9csdt//d7N4ma/TJq+/b?=
 =?us-ascii?Q?3ud0gDAOStM3Vo4cKefiV6SYI/MUMWxUhkSInyGCWvseo8BJezsXBa2DBfsJ?=
 =?us-ascii?Q?FFMcMKVp7EHHzGtllbXWxeQsqarcVfvMZ9bIA016XokxDtO7AgFConGCBIxP?=
 =?us-ascii?Q?CARlI8AUtbdT0xaZlgBzESTCgybSUTOnxoeWAPpETg2dHDDbeL5hRQiTJgwm?=
 =?us-ascii?Q?hqnae0vbIuVwZJpU+DS2qWO5NOV0TKNnEpTeUh1+37g/C3CuGzqaQhA/cTat?=
 =?us-ascii?Q?Cj1qzIQo1HLloVvczv4ENRmtWZncX+pGYIi0VKs7ayPR1IHO7glFsvv7mGP6?=
 =?us-ascii?Q?hi0qaAaA0qZRLzgMpvflgkB2mA5cLxKpQe+13SiVWjzq682VZCjdlXWa2+r/?=
 =?us-ascii?Q?fCz+J6p8fcAqE/cRt+sm/Ayi9ihb61VSlP9goojpOKQlGiCz1a9ZVyWBrY7X?=
 =?us-ascii?Q?Wbm3g00JxjknSxyZt4rPXibJZ/+AQ76h65D/PfXKSsWbPv1Hn5s9A68ZrUdY?=
 =?us-ascii?Q?gWs0xkMZvUly4F4o2OpctowGKUmUBAQr11qVS1Kle3isXZH0VZEqYJR5yf0V?=
 =?us-ascii?Q?71ryF6ZVrXTj7Ad3IngDwZa/Vr2E63+J9mdhggaCLtHLXM26o6JidGCPRsVc?=
 =?us-ascii?Q?GCZPnmP1ig3zSbUQtYT+B2OvXQnHLNyfUlFSO+i76kRtqOnHLPIBD/UAzgtC?=
 =?us-ascii?Q?qoi4OZWdTMZsmZr5YVhIpjFAbwm6dJYfWT3u9UYY8mdJOvpiD7xNx6woqNTe?=
 =?us-ascii?Q?kt0Q0elS1jTVmcKBiP9EryZtU7rTdVNQ8WyUCMDcBVesYeV0VgDtEv/43+7Z?=
 =?us-ascii?Q?3+VDmEJd5RpImyxFC4QZyXLHMHAcuyQoshB9LsOX2qSpXU17JKPaxwveWtjn?=
 =?us-ascii?Q?tznWAT2o4J/uGz0bz6Ztl1+Vyzo8rkpPPn+yMDonXfmUVinaKI7RkZgy/zCr?=
 =?us-ascii?Q?05WPN/4rtNtvIkUNlXXsmJDQzw5Sti+4SEovTcagviIonj8V0Ju6xKQiPmQd?=
 =?us-ascii?Q?g+fTzAlIAZd8lqUwDCVBDS+rOp+ukuclTyI46ZogFEhG/cjaSnTGycHZWWIm?=
 =?us-ascii?Q?esIFWoiNxZysVXo/LE86lavKgawCbRauR1RcY5duuDn5WmJP7Hei/aCoZwS5?=
 =?us-ascii?Q?fImSww1NNNyUj5ZutokBWfAEusGXw7TiS1cA9bUjyTM9CePNgxcL0TMeVC//?=
 =?us-ascii?Q?4de4PyMTT89gWI/IkjtYv0dJOV7r8ew7TElT1CeLeg/Sv8R9itCCbKFS+Ypa?=
 =?us-ascii?Q?FAaS82rQBf81eCIq4WhrGAjNnkVLqxzpIIxy6MIu02Q32hwrVFwxPKONelq7?=
 =?us-ascii?Q?Qgrioi1j5Vf4c2XTcdYpgCU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Eyoy14Gx0W/SOTPuJYM3Xn4RGTVN8hJ0sZHPdZmMi0cCHrq1rz0YSSbVT2S9?=
 =?us-ascii?Q?2Uu8gEu3NCxvS2ZhR+A34AqG6qvwJ7ERXfRT+sn5X8ASuQFl6pKEMjA+aFwa?=
 =?us-ascii?Q?us+/zmC7cSZ/CfysaSUoRcDkIYbnIGTdySWz+1U3E+p8htVv217SiGfeUf63?=
 =?us-ascii?Q?ji+6nNYAoqlQ8hYhXmNKX/BGlbPejVRBcuGX9vGxcyJpPgTzdZtIyZpvMwo+?=
 =?us-ascii?Q?ghTQvMOBs5b2x0ur85vdnRdxJ6qi9Tm6EWzD4vzTiDVEH+6LlvRdY0r9Pux8?=
 =?us-ascii?Q?mzl0MpZgEQhxww0XP49vIeDIW1wHKuTqCYFvRj91Zfsnq7d5AbSikgUNm9CR?=
 =?us-ascii?Q?g77rjs0Qc+gWSGkeaELl9vXEJLaRw+ZUMjOh1NM8ZYiJ6UPE9suDk+vld0C3?=
 =?us-ascii?Q?oXpdKIRyS4PXigStw2b3P7jHimapoAPp/fCX1V7YJZxiQTe8VE+Cn5wRpotA?=
 =?us-ascii?Q?QoDSwYaByzN/qC7celkx/W792lT43q5reaY48CgMUehyX9rTM6XuHPY2aUBI?=
 =?us-ascii?Q?7FaawrjLmj/T8/EatH5Vfjt6/3QRZGr0s0CWktkrhKd3axD9/CKXVtDem7Ue?=
 =?us-ascii?Q?byp4zAZfMvDAFpb9yUfuV6uiwhP/UWP+McOzfQAFK3w8csga1S0TKamBUXVw?=
 =?us-ascii?Q?4Vwi+DaMlKnSD7cBwy2oJw7SbLeIUGUnRmpEpdUxPelucvDFSnMmOfBqA2S9?=
 =?us-ascii?Q?Q3t9JMorhYb+YrF8Q1IIHuL3KtLkGQhKBwo829EsJHsn827Gqvo+H1FOkVrJ?=
 =?us-ascii?Q?MP7foVB/LLhWzjQrk5Y7pvVcaUlxPWEsc3LGbMiLF0ziFct/cV3Gy3UMY/MT?=
 =?us-ascii?Q?tJ2cj8NfEEZmoRDbuemo9ySUxI2w8MyO7GIMUG4YOVGpJvBHTh6gge9Be43r?=
 =?us-ascii?Q?hVg/i/xgy0IEctH98Xqi6hHFGHlIn9qmwVBMmSDnxFBbqwPq4amg/QCrpVQX?=
 =?us-ascii?Q?WcVyuHTZUiSAwHa6UbZbgn40Wq9Ie/iKJJZGvEnwez+NTlB0jf61Ffr+3jpX?=
 =?us-ascii?Q?q/7K9O0krDMU2GTh4nziKV4hvhxc6yiv+3iNVmI3AD9g3db1dLALtVgvlPh0?=
 =?us-ascii?Q?bPi5aYODQSXUmUIMV1uxWG9xSYjtWtQPcvPZvgSluunRuvzFFncoflRVwAAv?=
 =?us-ascii?Q?IqVo8uhCWG8OvnTVxDirBqM13iIv7LSMOIQy4WaRlOsX/1J/CgptQ043AzoD?=
 =?us-ascii?Q?yi67hGNFDw0Nl70Or+b1SBuM1gVGaSZ0fHEg4F9PDZmt+R/PbalGq/DccM+T?=
 =?us-ascii?Q?ZwWes3C8KX2UqDmVOE6KQlvDPQNhKw2K/K4UI4n+W0/yu8uX6AN68UG6GkbG?=
 =?us-ascii?Q?QFRFOAADMCquRFcxAy9U1iWqWBxVgaZJmZ97SooKjgz/cnBswR9Elq8+DpHZ?=
 =?us-ascii?Q?oa83ZpHNHxW2WFw+A1uP0IprOzmf5mcHW80sjiam805AeHTYPjEpFdmUlsR+?=
 =?us-ascii?Q?eZJbBrKqlsrYkcqZy4rFq3r0TSaCs4ufJj8+kOoSCYIqIvFVZsAe7TtZOqpy?=
 =?us-ascii?Q?0Yw7dEAdZFw51kV2SfTaTtyS2BDoK33Qh0Biquon1EglxXuwCa2gJwdlZFad?=
 =?us-ascii?Q?h84DxQmKdg/jae7LpjSygp+WTsf+G2Vu7g/qxoir+hyYNY8VQjqOKhYBWOm0?=
 =?us-ascii?Q?3b1lnAjaOOfjbGkstEW0DZT1FzeRahJn5Kt1ptEWM1HbP/hmH047VTx4nhbt?=
 =?us-ascii?Q?cXTNA/reOT5N8cLRFvlWglWdlx/TxWKxuCQiOM1YwFtzLt+loIU86BQjL0kk?=
 =?us-ascii?Q?crWxVnu1uV2LPE0SSvCN+lxCGG2YwtCF4iNjyQaN/XZEeEmw4azC2UXe91po?=
x-ms-exchange-antispam-messagedata-1: lM5OrqGqibawQw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3b53aac-5d29-423d-74ca-08de73a463a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 12:58:21.6027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4v67qNgxsY0Ib9+FgwIc2taFLNm3z4CkAs9JhmZL6ATJmLkas9OgXCFqbNRdwN4BcCmzoEyUbq/kQmJRZ6eSpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6437
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA0PR11MB7307.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9413F18753F
X-Rspamd-Action: no action

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Thursday, February 19, 2026 11:58 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH 5/5] drm/i915/dp_tunnel: Send BW change notification afte=
r
> tunnel creation
>=20
> Detecting a bandwidth change for a sink connected through a DP tunnel
> depends on updating the sink's DPRX link rate and lane count.
>=20
> detect_new_tunnel() -> update_tunnel_state() updates the link configurati=
on
> only if the tunnel state changes. However, after the tunnel is created an=
d
> bandwidth allocation mode is enabled, the tunnel state itself may remain
> unchanged.
>=20
> Record the sink bandwidth before creating the tunnel and compare it to th=
e
> bandwidth after tunnel creation and enabling bandwidth allocation mode,
> ensuring that any bandwidth change is detected and userspace is notified
> accordingly.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_tunnel.c    | 25 +++++++++++++++----
>  1 file changed, 20 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> index 1c552a7091897..4b743387b15a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> @@ -62,7 +62,7 @@ static int get_current_link_bw(struct intel_dp *intel_d=
p)
>  	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);  }
>=20
> -static int __update_tunnel_state(struct intel_dp *intel_dp)
> +static int __update_tunnel_state(struct intel_dp *intel_dp, bool
> +force_sink_update)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base; @@
> -79,8 +79,8 @@ static int __update_tunnel_state(struct intel_dp *intel_dp=
)
>  		return ret;
>  	}
>=20
> -	if (ret =3D=3D 0 ||
> -	    !drm_dp_tunnel_bw_alloc_is_enabled(intel_dp->tunnel))
> +	if (!force_sink_update &&
> +	    (ret =3D=3D 0 ||
> +!drm_dp_tunnel_bw_alloc_is_enabled(intel_dp->tunnel)))
>  		return 0;
>=20
>  	intel_dp_update_sink_caps(intel_dp);
> @@ -124,7 +124,7 @@ static int update_tunnel_state(struct intel_dp
> *intel_dp)
>=20
>  	old_bw =3D get_current_link_bw(intel_dp);
>=20
> -	err =3D __update_tunnel_state(intel_dp);
> +	err =3D __update_tunnel_state(intel_dp, false);
>  	if (err)
>  		return err;
>=20
> @@ -187,13 +187,24 @@ static int allocate_initial_tunnel_bw(struct intel_=
dp
> *intel_dp,
>  	return allocate_initial_tunnel_bw_for_pipes(intel_dp, pipe_mask);  }
>=20
> +/*
> + * Returns:
> + * - 0 in case of success - after any tunnel detected and added to
> +@intel_dp
> + * - 1 in case of success - after a tunnel detected and added to @intel_=
dp,
> + *   where the link BW via the tunnel changed in a way requiring a user
> + *   notification
> + * - Negative error code if the tunnel detection failed  */
>  static int detect_new_tunnel(struct intel_dp *intel_dp, struct
> drm_modeset_acquire_ctx *ctx)  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	struct drm_dp_tunnel *tunnel;
> +	int old_bw;
>  	int ret;
>=20
> +	old_bw =3D get_current_link_bw(intel_dp);
> +
>  	tunnel =3D drm_dp_tunnel_detect(display->dp_tunnel_mgr,
>  				      &intel_dp->aux);
>  	if (IS_ERR(tunnel))
> @@ -223,7 +234,11 @@ static int detect_new_tunnel(struct intel_dp
> *intel_dp, struct drm_modeset_acqui
>  		return ret;
>  	}
>=20
> -	return update_tunnel_state(intel_dp);
> +	ret =3D __update_tunnel_state(intel_dp, true);
> +	if (ret)
> +		return ret;
> +
> +	return has_tunnel_bw_changed(intel_dp, old_bw) ? 1 : 0;
>  }
>=20
>  /**
> --
> 2.49.1

