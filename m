Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNF9NW1JhGk/2QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:40:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 397B5EF80A
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:40:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A143610E7E1;
	Thu,  5 Feb 2026 07:40:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iFL/Tyut";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395FE10E7E1;
 Thu,  5 Feb 2026 07:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770277225; x=1801813225;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LZp2elemKXs4FrlNcFNEjWk3ExFl/aVVncSyXCaMERk=;
 b=iFL/Tyut5VBIJyzM6jSzY4O8q9682woxGQZVGT6O5R1Cxq+g+k9kkWhz
 /BRySeGDyTJgmbBKhsecAOpJIQ0T1d0doEN481QHXeOsxHd95PdlL38Xf
 l1Ih6yLNbiezC/Cf8PGQC8wzPOXnyMs0sBFFs8ooE8tY8IUzL8diHaRi+
 VU25I0fKzArmOJ19WZ/VcvLAKH18TivdedorBbDTvOey2rf44ffc6W6dh
 /o/KB1z8UHNqeb28uA6Xh79j+t123Ts8qJe3lJkP1tFOwXhRIjxsXfmIK
 zWRtW1fbK9KtlRcn8EEs+ywsNotcxUqsnQq9cFQBsK1xvXHvGLOr4vPlx A==;
X-CSE-ConnectionGUID: R48qTghyRbyVpsbwieYr/w==
X-CSE-MsgGUID: gCdZFt6KRjK5l5kwggVKpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71368916"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71368916"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:40:25 -0800
X-CSE-ConnectionGUID: ajdNN3XfS5uwfbD06jcFag==
X-CSE-MsgGUID: J6ZmvnEZRqCtkIgog7u9AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209525419"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:40:25 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:40:24 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 23:40:24 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:40:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aomICoZmC7eZb9YAZnKAg10VdHwzOupqo6xZrn3Wv6+k/ZD71ltBlBdfbYcD9cwWJDJMQsZuWmWe/SCnYp+Q8Ty75kJsSBd/HRBfY2GuSJpHnIHofLlvFZN0MqWpKqKiVf0kS5ltBk2p/SfsoEeCU/5m3bLe/XWWg5sQxrPhBNokxuaCChobdJKDQuNNG88Rj4SXYeTiszp3Ys9Xrs9upV/OWVaFpfe2/gVak7ai+J2gmVDTGlEa/p9VRR14tVFdEgqESmIW5t6dpFCbuSJC5ys1+hasBaEltN7ylWuisz2pR8gr/0mlMI4oCJSWq8Rilx+6TY24ka6IdszA23leBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P2B/4Y8x4aHjHrSkZhlvdgBQv4/+ta/MFYc/R7UllvA=;
 b=G1aZzMSutI4NQJHsLiZkQ8VtclSfydISUvNLoOYpIA5HVJuCK2Efaj0fXHzo54gAkW+g50L0mwQR2wZZcZ88yiCuAGqsHUTPTSGq8vNLhguBzr8fGBHkjgT+UVuujwGvW51h/iIgT7HB/bqROR4Xt5wytcEcEee0dIuTlaT6lCnL3OoKKrC3V6TPbFyTsidUq5D35sExBSGlHGXEnC7SgDnZHk3qS8z15hY+Sor+KdwZ+TgnVEhcoDZY3lNNPmP3wmXSw2sNEGT1tBuwuSW75A91tbvJBInj9YxJcR7edO98bLahn6bPDGmMAo5lrPt10jMaS4rTaCoD8Ddm9JLQuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7940.namprd11.prod.outlook.com (2603:10b6:610:130::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Thu, 5 Feb
 2026 07:40:21 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 07:40:21 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v3 17/19] drm/i915: Remove i915_reg.h from
 intel_display_power_well.c
Thread-Topic: [v3 17/19] drm/i915: Remove i915_reg.h from
 intel_display_power_well.c
Thread-Index: AQHckWIYQgZAaWXAyUmNIMbfFUteMrVw9DWAgALN/4A=
Date: Thu, 5 Feb 2026 07:40:21 +0000
Message-ID: <DM4PR11MB63608D290965B7FBFD0A5A97F499A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-18-uma.shankar@intel.com>
 <1990f0bcf49821dea3f5161099776bc975ec4c2f@intel.com>
In-Reply-To: <1990f0bcf49821dea3f5161099776bc975ec4c2f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7940:EE_
x-ms-office365-filtering-correlation-id: dc3b9aff-76bf-4297-2b22-08de6489d12b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?7gpqyTIGxtdcnrAOjFI0x2BgepZkYCZCrA52Lqn1umjBZQeV9e+5DXqeqOF9?=
 =?us-ascii?Q?HZlpo0GpFBa0Wxh3o1CRi9rovsf2uNgeWVLlpKMaE6Hf4XVhezQHW3CWIOxj?=
 =?us-ascii?Q?R8z6iKw2+Zhp8KmOe5MQ2hY12GStN/fQt81zpsSzqFBxrwW/zBgnjJKgExXF?=
 =?us-ascii?Q?Z8JaE1yTzjcRWZxgwUiVq0lmAMnJIbAAA5F8bJG8S/k9Iuxc+/n/MPjhUv8U?=
 =?us-ascii?Q?mI9dCfYh3gbsTJ6m1aGovriSF4OVrgAdWaDsq78sSgPZnrmDV+XWrs/vghqt?=
 =?us-ascii?Q?BBLk7F0IMg1B+fppoBIbkY/+XCt9nagbQDhQc2b4oBmVSLaJ05B/hE9auyX8?=
 =?us-ascii?Q?JSvaHqgpDrs/+ynNPw8Si0bsFBmeT3eg5ejaXjPOSLcmjQKS4Vu8p04qHpKm?=
 =?us-ascii?Q?iqY6JCbny7g5ikrcGeiOk1Ne9mHin6q8h0fgklItPtXwA4v+CYAIgV21mqX1?=
 =?us-ascii?Q?QvhI9PTRDD00zXDaeQUYoMmEwVbYcFlYnK/Y3eM/148xTaEqoglhC+JgsRiT?=
 =?us-ascii?Q?WWPSfwEJxYxef59H5SCLGkycppJvcutWTge8wSUw7ZkImHHC1vy57q72fAf0?=
 =?us-ascii?Q?q2+lsA6d7/WV2veBhx950AWNrowzJgPXiPpkmRQQlY2xvYw0R0u6BLCQxwuy?=
 =?us-ascii?Q?H5t0BCFQ9Ws4LNL0JHCXkkdtl5/HXOrrfqfTuIfpaTzUc+3mW1oOLkeBBCRR?=
 =?us-ascii?Q?1X9wZu5F9hy4cx3dTKBxJ4xbZiDNuI/mL96FX/ZgM5GONha5lUqx7lD2cj/4?=
 =?us-ascii?Q?2H1wptuYlViVKqvZx4JEiqz72MPeYvjUxnuuZP4Ja18ciMRLh03HtxQsvnCX?=
 =?us-ascii?Q?07JwkGOpW8s/BO+baksM+yhuwuZlXuhWNEGxiY4qA10udqkXTIpbJPN9Gt9Z?=
 =?us-ascii?Q?Y+pKcq+ZWSS7VEOVYfZGBsff+ePn2PofFVJU8FOh/mNIYLJIBWEz46d9mH3p?=
 =?us-ascii?Q?E5qzo3IWh5l3ZR/8u6zoRvwPsotgAAhO7A4IOZ6XzTeZLqgcDFiCAp9jXFhq?=
 =?us-ascii?Q?Pjm4t8gQOFP3b/nLkg+Xroim+q0FcxHz72fjayrmIcqiuWlCWMo878j7ZAm0?=
 =?us-ascii?Q?V3wB4VhrKUDEBfFP4XrA3TvppRqd6DRPhPptYp9Xb4HqRrWQY50nKNSUKXPk?=
 =?us-ascii?Q?fuuwQQetNPeybAWgIoVO/qgTARi160cAkdPsMq7067QLCaRlfNZVP2Me4toT?=
 =?us-ascii?Q?rdwAHq2uUPMNXuCmR7yh+SkN4kyqV1gBMjP0BZXHMo29AlLrvX4iHV23pXlr?=
 =?us-ascii?Q?ji3Bt6V4/YCfVOGbwozYqm+zOA3ad36Uo6I5T9thNgwZvKuMB3asQoB1kTg0?=
 =?us-ascii?Q?o4231nFjJieksulDorjFjM2qtn3Ic4D3BMCulvMEdbuJ8Zx5nXiL9fnERUkF?=
 =?us-ascii?Q?VBvATeKePBQA30aEjBhhum+bAZydoHsfxSaai8F+2ogNLRqb/ZtLc0Q3stU4?=
 =?us-ascii?Q?mxr5fUYkP5udMBCCowF/7LlZlZCCKxbpsQFkSVuCyRudwtHG/3UknxxziyDE?=
 =?us-ascii?Q?AP6Oi3pkT2qnDCDpIGiBPfdZtLV+0Zq/of8+AiT3aT2HlqXSP8uTkLbIBXZ9?=
 =?us-ascii?Q?UrRZlDa2HxW+m/P0nH7No5eLKEUgAh4Q2+A+i3RBt3qwkB4G3tM2OBw44Dwq?=
 =?us-ascii?Q?Z75UwxwoxnKQboDPG/xbcME=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JVP0dN2RPrvSV+1+tDAIvZpPeMiOt8QzZGAMEoI5KKsulApPsZiRI5TL2iww?=
 =?us-ascii?Q?0T9zihUGB+8G0QDHTL5I8rTGj5NXj0Qxk8hoi/4ifpiHq7BRpINC7fj+b+A+?=
 =?us-ascii?Q?5af0lWoB+QLjBKl7s8UKSsbNlKg1RZQxaMmom50cO0uLJUY9i2YP+yxNuPLw?=
 =?us-ascii?Q?aszRxyMwFQ0W2qat6ScN8go9UacJIWm73u6Sf+7SBneldMNL0rUjKr1mo7F3?=
 =?us-ascii?Q?lITHFoGT3n0IZKnwrwPQxOJMsDTB/YSzTmVoTFlEW+SDfueADOLp87jGvHtz?=
 =?us-ascii?Q?6CsZx3mwoxkBtNCeDAoNydA/3TwS6ugg63eE5F535YR4gt0JWjiK6UmolFtB?=
 =?us-ascii?Q?anzcVdhm5l3Gxa5OfS3lEp9cReZNhjSE5oHJhSlo9TA9n0ywU5Chv0oHGgx6?=
 =?us-ascii?Q?tZZ5wofHf00uSb5OH5+mCmpIvUNAdovAq5Lwfy7iHeNuxdukhhE8Utwdar6g?=
 =?us-ascii?Q?0VvDs6u2D0vnSIhthpuHTAWRYCv2epmdkIEsa9KPrvOyTjpuDqfmqOxpq1nE?=
 =?us-ascii?Q?KCqw6skMNcsLMlV6cy2EaLEPWq/p9c9Wi+yDdiRSJIdAVLAiPXHWj5g1KVKA?=
 =?us-ascii?Q?mUqpTjX3GD01NAxkzarqlNcxRWR8nPeZiu8thX03SPbZ0sqXFrvNoZs3bhyK?=
 =?us-ascii?Q?BMcsHJRlU2BAvUiQ1IFA5EwXotu4cdVT3LxPWcq+xWD2C4JdufGLInqypInN?=
 =?us-ascii?Q?SkqaVag2yT6FSdD49DwnQ0G6MX/JeZg1ufiWEeo2Zfr9wEiBbo2EAYx6NeUL?=
 =?us-ascii?Q?QU8JC/HwvlfEINfJIoSmQNHpEPeIa8WB4bbPvl0nAlFjEeo3q0dURH4mbDA1?=
 =?us-ascii?Q?VofZgNSmbB1MCcNyRdPgCzV+TJxiGP+U92MWUFHabKWtiB5TXAlyMIE4b9RD?=
 =?us-ascii?Q?IW5rKdZUv4OX+HvPN9Z+0OpqWPHvw3luy8LxIqe8sF9u2kDbvBGk/WhVjSr5?=
 =?us-ascii?Q?xZ+8rBitcFYY/CSxilTo0JKsFeus/9YWXSnBwXaL64YW82xpYtIdnKQsWLcp?=
 =?us-ascii?Q?CiUanR45j6N00Aq2l4T4DC1rgOgsb5R/GRcqO9NpnvWwLYYQut4b0qwMv2US?=
 =?us-ascii?Q?HXjvGY+hibhFBRmRUj7pXPtoSzSSplBeJmKz+PTky3+60rItZ2TcN0dJwUR2?=
 =?us-ascii?Q?y0xIpzx9p4VEC01JYK2B7nbcGeAmL8TfURDTLbiImnGPyC/EifxycxRgw94g?=
 =?us-ascii?Q?KnMd6gmLyzrylmQGc7pOOvg+hiCw4qE3Ypw6nkuJuhJ3v5muumMeHeGM7o9i?=
 =?us-ascii?Q?hU2eO4ytZZ5IUmt1jIszX+khT5a6jN0zAevFjC+QzeZpHGRMzfmHfHouakyj?=
 =?us-ascii?Q?YTgEnposur+qEb91cF77E839mcSkcXhIbviblxOEKLz1u/72LcHRXIg71gih?=
 =?us-ascii?Q?IIekBalSez91fJqQafz3AQoUnOYDvSB0m1XdSTnEGEAliQKIMYqxwe/0PKmu?=
 =?us-ascii?Q?XNq1JaTIH3TBlAkcJBD5HXq6lc0wN7/qc5ps0fS6zKpQL6dgWXyqmnbRC048?=
 =?us-ascii?Q?xd0+Tsm6Ne2g/zlR1lIlUybadnLfPU5YRXgzgrmrGSC3aoABxYIclu/+sJU2?=
 =?us-ascii?Q?X63qc90zsaRLXTCXUCj1hWxV4PDx7+rFC4pet2LZec5j90pjHleSwOt/pfhK?=
 =?us-ascii?Q?vN8wHLzw55r8416g6LRjt5MRO3FNIhFQMOIrrRP6NItUPj7bfO0t2ZURs728?=
 =?us-ascii?Q?IzeEFIlHYI6Gbxt2mYgNv491a4skVZ/NM3EX8mi0Oy4VJXEwrVFOCulRCGoh?=
 =?us-ascii?Q?Iu4r17ForQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc3b9aff-76bf-4297-2b22-08de6489d12b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 07:40:21.5707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bTAMeko1zJNsgA9Cd2WQ5BU3iEQQ0xu48MDYLjzZwFR3ObJlAbPEpD/8U3sfZXCEw1hoHgAEXK27xVvt8MoO1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7940
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 397B5EF80A
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, February 3, 2026 6:19 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v3 17/19] drm/i915: Remove i915_reg.h from
> intel_display_power_well.c
>=20
> On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Make intel_display_power_well.c free from including i915_reg.h.
> >
> > v2: Include specific pcode header, drop common header (Jani)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 ++
> >  drivers/gpu/drm/i915/i915_reg.h                         | 3 ---
> >  3 files changed, 3 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 6f9bc6f9615e..f98de1baa63d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -6,8 +6,8 @@
> >  #include <linux/iopoll.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_pcode.h>
>=20
> Hmm, nothing's being moved there in this patch, so this change feels unre=
lated.

Yeah, this got missed. Thanks Jani for spotting it.
Will fix.

Regards,
Uma Shankar

> BR,

> Jani.
>=20
> >
> > -#include "i915_reg.h"
> >  #include "intel_backlight_regs.h"
> >  #include "intel_combo_phy.h"
> >  #include "intel_combo_phy_regs.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 4a9b7560ce8c..758749c5c322 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -359,6 +359,8 @@
> >  #define  FW_CSPWRDWNEN		(1 << 15)
> >
> >  #define MI_ARB_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6504)
> > +/* Disable display A/B trickle feed */
> > +#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
> >
> >  #define CZCLK_CDCLK_FREQ_RATIO	_MMIO(VLV_DISPLAY_BASE +
> 0x6508)
> >  #define   CDCLK_FREQ_SHIFT	4
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 9cd7fce09ebe..e4fc61dcd384
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -428,9 +428,6 @@
> >  #define   MI_ARB_LOW_PRIORITY_GRACE_4KB		(0 << 4)	/*
> default */
> >  #define   MI_ARB_LOW_PRIORITY_GRACE_8KB		(1 << 4)
> >
> > -/* Disable display A/B trickle feed */
> > -#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
> > -
> >  /* Set display plane priority */
> >  #define   MI_ARB_DISPLAY_PRIORITY_A_B		(0 << 0)	/* display
> A > display B */
> >  #define   MI_ARB_DISPLAY_PRIORITY_B_A		(1 << 0)	/* display
> B > display A */
>=20
> --
> Jani Nikula, Intel
