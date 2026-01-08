Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C72D0188B
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 09:14:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0467B10E6A0;
	Thu,  8 Jan 2026 08:14:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aVHRs41O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E8310E69F;
 Thu,  8 Jan 2026 08:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767860050; x=1799396050;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fLW9YkPFvJvSRU080TwXAXcHNTMLmVJ7xiGUYk0bxSE=;
 b=aVHRs41OcYNNHymvu4mxzalbfJyZHgjby2pR0nhMNmg6hKnS1+cnlVX9
 o/kjS9BnsW7sYdGe0XjjdQwpLEw0TiDH61fEOLrsRb18qj0jbfEL0jv8s
 WcW8xkdZfDRvZKvlUbnGblxFO0yHoEd0+p2IX4AMrRS3K+XNmbDXijvyF
 btGhfxFarD/vCU15QNzNsZN4DLJhWj9hrelbpocAC/Z0+uUzOXCpbM1Jn
 4ubJfaUUIKvDcoulhN7obVUOOEYBKanCeNo23EfuiEWby+1TG43K8uswj
 Bsh1a+n/0Jv/M2pboil5zmkf0boMInoiiUbNMHGb1qBToO50r2q+zaijh w==;
X-CSE-ConnectionGUID: lx68VDrhRceuQTO7DvVc/g==
X-CSE-MsgGUID: dogxSnMzSaen4U6rX8CxKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="80596935"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="80596935"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 00:14:09 -0800
X-CSE-ConnectionGUID: 866fVZiqRoSLM5oSdYHzaA==
X-CSE-MsgGUID: xY1qA+jWTWm3+qSRjApVyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="202265015"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 00:14:08 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 00:14:07 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 00:14:07 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 00:14:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RZS9avWD1UomqlgvAmEWzDAhhM1ph7czsPNuTPO5k1UhwWorgTo+NbUUhHgHXpZGs6Xy66kEBZ+Rdy/M5PEMykqBMhkRwd4TiKi+mlp28InMNpdN7I+mHDjKzTTPXCrYI9i32G9j6DwWNpphOCJ8KA011EEuWUJesHPEQwAWiMLd2Mqo4ACAqk8JBkSzEPM80mDN7lFsqBYpgkLFsWPiczkfP5lPO+7DF5zOdbuK/m8iBFaDKkEWiwLlPLVTXbFkhDyzGYHjU+MPDRx/i//dgWk509RSBmV44tJlGIdqfB0UwK5Lro70aifJKPN0GmlLAzorY11o2pOR1GrGRPvRHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jZIl38CV/KHidOEYrfAtAl2iDQuLSORqAIkdOFVgJKY=;
 b=G8Bhd0UcJlaTXSvQEBNaJN9O4aEbfYQWWrU9/4pDLpHsJAoac7iryhq+uCD/F7rKa3PKE+6oQYjgsILAuwt4SnsJz++YXtxxJjYH0QNwrtppjOdc9T/VxHjkO5483OP4535xMeK/KeEnqDVfGMYUJ0Etq4WMAXzkyVkz8D08Se9DvoRclgVo8EB7oNsABCBJgUa1Wqd+FtRiX9gndWUk4rcbH2Ul8u6uMFSFoxIA27CJlSRzkNpgRBxXOFMjEGY8pN7m1gmXWZAYXUFXT2vjse5RVNuIXfnvhm2Ll+F/GT7jAF//M/ioN7Le2bvFvwmZqtSFzaMq6Up2R/xdHaNAug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SA1PR11MB5874.namprd11.prod.outlook.com (2603:10b6:806:229::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 08:14:05 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%3]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 08:14:05 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC 4/8] drm/i915/cmtg: program vrr registers of cmtg
Thread-Topic: [RFC 4/8] drm/i915/cmtg: program vrr registers of cmtg
Thread-Index: AQHcV7sYkOHn83zBzUazTq0ArV4UB7T2+OsAgFFEg9A=
Date: Thu, 8 Jan 2026 08:14:05 +0000
Message-ID: <DS0PR11MB80493CE2BBD3E81403DCC205F985A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20251117114216.1522615-1-animesh.manna@intel.com>
 <20251117114216.1522615-5-animesh.manna@intel.com>
 <ef595fd92b80e5d48deec222923d2c0e129ca472@intel.com>
In-Reply-To: <ef595fd92b80e5d48deec222923d2c0e129ca472@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SA1PR11MB5874:EE_
x-ms-office365-filtering-correlation-id: 5dea10a7-b0d4-4e8c-a271-08de4e8de3dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Z0ghNksv6ur5QBjP/MHJOvd2jqn9/mw8ZI9Mx6FYWvj3S9QhFWRQmNQjSdRY?=
 =?us-ascii?Q?t90RdJ/StdamJ2oLVAy6oaILiy/FtJDwJMFIIb+JbvT8WYJH5/tVU7Va9TNF?=
 =?us-ascii?Q?W9qsKTBX0THP4Zq4GSSmzSN/AfCiR3IB2g8A+RpCH0ciZZ7FjcPpmK5tZqUe?=
 =?us-ascii?Q?igAqORnSMng0HEUMIBHLwZdwcQda+baXzTCR8yoQEWP06MCj6IO6lFkYVsSb?=
 =?us-ascii?Q?zBhP3xImesgo0GxyC3Z4NPjO+CARpF86yV8FXrCt8PKAAjgAw1Wm3jddv6Ox?=
 =?us-ascii?Q?LB4CDYvx5wAQteBAmHJuPTGFHGMqGtXFGVWzyo5aBRUHzSDQM9uR/cIoiQLy?=
 =?us-ascii?Q?+AYJb2/1+boPU3kLyKf4BNwi9V+Q+W8y1MEHih2Un21/PMGQV2rMXNXArRGU?=
 =?us-ascii?Q?LM21fdQ9VYSQSbED15T+cjl5Qmonup7CtGyfxpgATUv4Zg6X29OEnKNAMhsZ?=
 =?us-ascii?Q?DplFRg92zjESdGaElqv8fSSusS6jMXFO5IcxC45q0PfIeaPcPw6Ff8aGb3NX?=
 =?us-ascii?Q?mVNPXoHbW6kAFraf3rV0bz9JxMODNbRoa2B4qA+IIq07LgnpWFZ2fB0Q5k3u?=
 =?us-ascii?Q?pnOE7IWeMJSRirLgZYNUMDX+eIky9yW2qaRmjcmSbicpRGrW+tRW0CT8wNrL?=
 =?us-ascii?Q?DC2vJxiKMGrv0OQD0DHNcAc5uzSqHl+FEml2h+wrdyMWi4NXhJt3Fxl+PwXn?=
 =?us-ascii?Q?3UoLDIeVbCWcWQFfelLCuLGNdJrm7v49ajK4BRFM5rH2Yf1K2+eGb6ofL6KF?=
 =?us-ascii?Q?BiXWrv53SQKYFs8J89ajA0PGsYSiwRL67rAT67XQhp6AYMQAL11ZBiefaDQu?=
 =?us-ascii?Q?/LcjGyAGKVVLy7izjDH3SS7DytGFASP1zjO930etRwSbRRpzJ8+9sMlAcaDu?=
 =?us-ascii?Q?XqcICswYxCLXO4f2at/Rd28ZfPDw1MnfQZ2oNj1PXLukL3c4P3PKMCmv1gRy?=
 =?us-ascii?Q?zWgjfd9kUiWNs5U3mBOG/+Dt4ttNQARERup9a45u8WHNhNozdYUVGnPKo/ph?=
 =?us-ascii?Q?Y4/Cq1Ir8AxpjtwtRYjKF2RjO7+ajCdas2IPcO2sjv29+g/3thqo2eb6RDVH?=
 =?us-ascii?Q?cBO7SNZ5boDmkb53/xgdak+UrBshQKpMAaMYIFo1qrAcKNXUQK9Igq+ZsUIS?=
 =?us-ascii?Q?mS5+MyL8eQYEVB3necbL0ptkFs9S/LbjotEAUcBI1zhxJ5MQtacZUI4TXqTp?=
 =?us-ascii?Q?GtbIjGcyZXDJnB7FtEWKGUrImvDfRxe/JqiuGIwCCkr9c2vI8Y0PrXkyhzAt?=
 =?us-ascii?Q?WXKVwGxaFQvMDjV38GjMSfkmsKvzUVuChsNjiTfvcOlPAniWy+lGKD3cclQv?=
 =?us-ascii?Q?xFcDzdC8UylbrjRgEqvQov5TcE3yJOs2ntBWK6pTjlhmqba/R/9s2dAhTq1p?=
 =?us-ascii?Q?47N6UoXZ27ceeHvhp87BS0zuIwv8tBhNGPznst+zl1wktT1wCSBOPriP8uv0?=
 =?us-ascii?Q?p1h9VQwiGI0G52P1x9nePsYBMI0nkeRvFAxQ6IthnzTs6qohZ0w2zuZHFUTO?=
 =?us-ascii?Q?xUT5n3bCYISUYK1/i3gMN3W7WEVSUlQUpnmK?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q1D8WvyhnBDQpLREDjzptqF/EfBet2GdnzrJ6F72pvzU02tKcf8Qau/EkcU6?=
 =?us-ascii?Q?k0JkTemxr2MVr3bCoer3fdbVNOwfPfs/idd5Ww3K6QEhjPYdLt6Ft9tGB8QJ?=
 =?us-ascii?Q?KlhkCalti7wGm+0eTJSxCzAUfOVv9P++JliqcqMUhokV4RXBuZOKpmsJA18b?=
 =?us-ascii?Q?D5CRbocVjs/CUO5qqDCIlo9or9khCwEQBwtbdgjqJPvFKyCGWPHddiGXoIAI?=
 =?us-ascii?Q?YY4uJ9BjHbCAp+G/pG5Qb8H6x2STpgJJvEKPqgOdyI1RLJbiC00FLmV4YnOG?=
 =?us-ascii?Q?Xm/3R/OclIrmfrp4T/tm+Jlr2EIbWyFjjfECdu50QZXp+CMtxM+gmi+NfdpI?=
 =?us-ascii?Q?ucK9jD6mqHibRTD7lUk2c4YTV38Zy7Y2iCzEKVDb1CPzTmRsYOvczfR/5Js5?=
 =?us-ascii?Q?YXtPd86Ti+4se2D9fbqZuNBR4MZmgMzIrk0x43ltAgq0RGrVOOyd7bR7KJox?=
 =?us-ascii?Q?U5Zpo1Nd9oXZn/q330jqXeOra4efBbh0EGlC93LNDPTbeStL7MwTfWzy2VC7?=
 =?us-ascii?Q?N2UKPewJzlNZ7uLnhh62Tg2WmyltyZ128a9Yj0+2evh5TzY/aJgseIufJOoj?=
 =?us-ascii?Q?etePFl7Li2xSMVkWBjXJjnsLAL25wyFuNyQYxWBKIeRZ8HvIPLnAoWZmTCyn?=
 =?us-ascii?Q?WrMnykneWsbAVsyZgdBQIU9EgYfIvkR81noEa2FLVLyAxOPHVdfFeg5BzH90?=
 =?us-ascii?Q?hz8T6ZtevXdCn7F8E3XDVbL8YlfH/R36EV6nbq8EwPnOLFjNexCNFtXv/1uj?=
 =?us-ascii?Q?zK4orqdUQhiJfkbj9hIsAYaFpWEdfPS3YmdrSZifcIx5Dil+/0QPVfddGiUA?=
 =?us-ascii?Q?e1wRkFuIzlIpur2i3fFZhdeyirEVE+26hscUs9TrkXZpBD1nHNKqru26Cvv2?=
 =?us-ascii?Q?Qouktp7RE1V819+ThHoLUWQ1qxHDPbOIeNdLJvz0NW81CsTVAgqzZHvvx1Zb?=
 =?us-ascii?Q?Cyg8vP36xxRc/Nvjyqqihg55tRjwAmqhhsBp6nTAQVJjdf+slcMoCKHbyx2G?=
 =?us-ascii?Q?bhhLBUWqH7r6b8eKsXMXH9U/nE2zwjt6zSwbxEzUlMZN+IabHwqNpoyvE1Ty?=
 =?us-ascii?Q?+y93KarBAokZ6MXJFzuQ2Rm0sc21+k919eYjPPfNY2PYWSQFXYhcjvGkLbxf?=
 =?us-ascii?Q?yJktBsZA0rcrVFr7hRt6NwmKVLvNNmiUBEXcxgzD/NMEcX/Xy8ec+P9eAquC?=
 =?us-ascii?Q?y/Afu4h0p6zZzb14DM2u2g9gW9VFtoPQ8dQ7zgCgp6bhudJz8Jq0nLP2RpCS?=
 =?us-ascii?Q?AzkZTAr0mLdkZDbNbAlMxci3jjX5uc/zDnvpTiQynGOWDw3m9gBNcmPUiVy9?=
 =?us-ascii?Q?G2tU/VAs41NvABzcueCK3IlnUbSQZyNp6FdFqSV9qHdQVOrWtWtcHe3hvVrK?=
 =?us-ascii?Q?sEkf4Ske33p2hCtMoC6IcxbWIcY7CVZPC0rskR6mg6pg+7soL8b4NBsRxJag?=
 =?us-ascii?Q?nDVfAZy3rfUXRcTFtMO9NMpNUhKWTPX0R1MzTHdDtoo9XBDbkhR9KbQth4vn?=
 =?us-ascii?Q?mqSrrk7/yH9n9e4sx0zO4WyKUPEgl/0vWkbBQ5mO2xOJHIx+jJhnHWf2zV8v?=
 =?us-ascii?Q?ZO/COl32p/EYhlTw2SaG1x7CPaz6c6oP7UTsEgNmGrKDvIApk/ExG1MlYla8?=
 =?us-ascii?Q?OzVXXhml3Tipk7j5Zv0ysq1bFOuxDTUaE29enpwy7oY7gAdvBT39u5wQX5iC?=
 =?us-ascii?Q?A1aaaPev/Zwu5eRARwlYo/eQ/C6JOyKXrYkFJX/K/wlg1VSCIaGuXq9Wr6PW?=
 =?us-ascii?Q?AEvIGoXTOg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dea10a7-b0d4-4e8c-a271-08de4e8de3dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 08:14:05.3083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BMTUYnMX+Riij5DsUc57hOElOIR1T3BEFsQ+eZ+kvtUb1Xg89x/MqJdp9hg3uPfd5Mcn/PLD+EHIeHaQWPNIuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5874
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, November 17, 2025 8:40 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [RFC 4/8] drm/i915/cmtg: program vrr registers of cmtg
>=20
> On Mon, 17 Nov 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > Enable vrr if it is enabled on cmtg registers.
>=20
> This violates the basic principle that hardware and software states are k=
ept
> separate. When we write the software state to the hardware, making parts
> of it conditional on the existing hardware state results in non-determini=
stic
> behaviour.

Thanks for review.
Taken care by using s/w state in next version, currently debug ongoing with=
 flipQ, will float after that.

Regards,
Animesh
>=20
> BR,
> Jani.
>=20
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 19 +++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  5 +++++
> >  2 files changed, 24 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index 5e9aaa50b38f..3dfb691913cb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -17,6 +17,7 @@
> >  #include "intel_display_power.h"
> >  #include "intel_display_regs.h"
> >  #include "intel_display_types.h"
> > +#include "intel_vrr_regs.h"
> >
> >  /**
> >   * DOC: Common Primary Timing Generator (CMTG) @@ -213,6 +214,7
> @@
> > static void intel_cmtg_set_timings(const struct intel_crtc_state
> > *crtc_state)  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +	u32 vctl;
> >
> >  	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
> >  		       intel_de_read(display, TRANS_HTOTAL(display,
> > cpu_transcoder))); @@ -226,6 +228,23 @@ static void
> intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
> >  		       intel_de_read(display, TRANS_VBLANK(display,
> cpu_transcoder)));
> >  	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> >  		       intel_de_read(display, TRANS_VSYNC(display,
> > cpu_transcoder)));
> > +
> > +	vctl =3D intel_de_read(display, TRANS_VRR_CTL(display,
> cpu_transcoder));
> > +	if (vctl & VRR_CTL_VRR_ENABLE) {
> > +		u32 vmax, flipline, vmin;
> > +
> > +		vmax =3D intel_de_read(display, TRANS_VRR_VMAX(display,
> cpu_transcoder));
> > +		flipline =3D intel_de_read(display,
> TRANS_VRR_FLIPLINE(display, cpu_transcoder));
> > +		if (vmax !=3D flipline)
> > +			return;
> > +
> > +		vmin =3D intel_de_read(display, TRANS_VRR_VMIN(display,
> > +cpu_transcoder));
> > +
> > +		intel_de_write(display,
> TRANS_VRR_VMAX_CMTG(cpu_transcoder), vmax);
> > +		intel_de_write(display,
> TRANS_VRR_VMIN_CMTG(cpu_transcoder), vmin);
> > +		intel_de_write(display,
> TRANS_VRR_FLIPLINE_CMTG(cpu_transcoder), flipline);
> > +		intel_de_write(display,
> TRANS_VRR_CTL_CMTG(cpu_transcoder), vctl);
> > +	}
> >  }
> >
> >  void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > index 47403bbcac7d..37dee7165852 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > @@ -33,4 +33,9 @@ enum cmtg {
> >  #define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) *
> 0x100)
> >  #define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) *
> 0x100)
> >
> > +#define TRANS_VRR_CTL_CMTG(id)		_MMIO(0x6F420 + (id) *
> 0x100)
> > +#define TRANS_VRR_VMAX_CMTG(id)		_MMIO(0x6F424 +
> (id) * 0x100)
> > +#define TRANS_VRR_VMIN_CMTG(id)		_MMIO(0x6F434 +
> (id) * 0x100)
> > +#define TRANS_VRR_FLIPLINE_CMTG(id)	_MMIO(0x6F438 + (id) *
> 0x100)
> > +
> >  #endif /* __INTEL_CMTG_REGS_H__ */
>=20
> --
> Jani Nikula, Intel
