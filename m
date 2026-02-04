Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PjcIqqtgmliYAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 03:23:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE91E0CB2
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 03:23:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80EB710E26D;
	Wed,  4 Feb 2026 02:23:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IcqI2UUK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838E710E1CE;
 Wed,  4 Feb 2026 02:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770171813; x=1801707813;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=foHma6F0dz3IlP4XHsAwGRkyHu41YpIMGjn87pPJGq0=;
 b=IcqI2UUKVfZvSAEe72/5WG3gUpORHrvjiHqOU0+nDTePJ4A3/k4zkmTy
 GHvJXckXz7RxeT5hg1BP7lxSiKDH0M/rR5Hr5JiJsdA7PMvFZd5hY8Gbj
 jGAZ1cpSyZXsR7MpuXVxWlDKtHXptfuzu9KiK9ug78apdH5pDhX55x6PF
 +QTaCkDw6J3ukdKX+rH7ltZ0ty3kPpIbqKiy0IYCphgpUG0wufCnmhXtq
 XM0ze4emZbp51Pn55FJD+OnyHMW1ji2j58svajfElNqfplmOtILHjv1qO
 sfOY6rP+tqCGPmRPSnsp5deFpEBbZae1GKx6zwgohJBX42O04cozW7WsJ Q==;
X-CSE-ConnectionGUID: AoWWz6B+Rj+cbBSE4kHolw==
X-CSE-MsgGUID: 2kHL3uK0RTS1CB32KZziAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71076794"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="71076794"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 18:23:33 -0800
X-CSE-ConnectionGUID: Y1eIxhqfTPa5SnPxvUcb1A==
X-CSE-MsgGUID: CJyW5TAEQnys6b1702jOHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="240897373"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 18:23:32 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 18:23:31 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 18:23:31 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.70) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 18:23:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IxRXZ08pRA6fTyXXYtGr7plwoP2p6yoErWgew8Bw89aQBTRoYUBO0YhMrXjsgA+0/PYqKNYJIw09BAPQ7oLKYjLg7rgVnh+nk6RtAokALr/ctxEcIzZ4Yyhd3Dees85z2ugfcGI3ZUYXKWgwDP3XLKubIwOu9fZnpv4Q6vSpjccRvw3HK6p6M7rMWQxIg9JFxLx9TRGhEnC9TIu9hCtB8nbSmJG9b5YQYKptZDtRILr4TUkEKxeIjSI7+fuv89VIdE35gDzGS49XaztUrnWaI68lxxx0I40Y79vbte1S+15dUMAGeaB3niaGTahglhgHHUr6NVdZmhn9VbttNgegBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J1dVdEnss9LnGrBD0FqYNL2bJPKOQ7MEkETaQWm2mkA=;
 b=g5idartCGS1TD0tcBYKdEFKUCbuVSpyBLAXOD5mEue6m1ysRy8n+9MSTzAB5vRC7kgUKwKIkEAIeCHugJnOX1N/uTn8ymzwIa3bSvGTt+vGofwR6jJ32gGMhqsfZLdc2eDuhlzKatJbnzLWq0Ao5V3NQPTppL1y3CFZsdQq3SSy3QQtD6uHwdVoqFkoPfN2CmoMV6qPl7ftNKIYyFEMnrRWt2D4xSNAmX/reU/cKIrSJAfm3li8cKevZ7L86CSRY9pHpPsvcv8UTgShM1O1yXJvmMXQEdzy49i7Hogti2QUolgI/v079TPzymuJqCMYE5Pn7U8Rcg2VO0y6t6hDhww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA1PR11MB6944.namprd11.prod.outlook.com
 (2603:10b6:806:2bb::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Wed, 4 Feb
 2026 02:23:29 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Wed, 4 Feb 2026
 02:23:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
 lt_phy_state compare
Thread-Topic: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
 lt_phy_state compare
Thread-Index: AQHclLaqJ/LFo2fVVEGfCq99NcR6QLVwo/WAgAADN1CAAH6mgIAAqwrw
Date: Wed, 4 Feb 2026 02:23:28 +0000
Message-ID: <DM3PPF208195D8DBD02D30349B09A55B920E398A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203024141.1549517-1-suraj.kandpal@intel.com>
 <aYGxCTupSRGPp4jH@ideak-desk.lan>
 <DM3PPF208195D8DDE068284324584CE5BA3E39BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aYId-fUaKONE4fvS@ideak-desk.lan>
In-Reply-To: <aYId-fUaKONE4fvS@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA1PR11MB6944:EE_
x-ms-office365-filtering-correlation-id: 2311cc31-a6cb-4d01-6558-08de6394624a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?mlEtmLgtFDlFrbzGnS0abpxBWN1AO8wscXRnERSl7/fheP8hltpI5pyolJZy?=
 =?us-ascii?Q?C3NlsrGPmQOL6AmIn/iii2gimM3aijl/wdPYzDXRVhs/5OX7dqo8cB1G/b2h?=
 =?us-ascii?Q?HBX2lNW08l/6s/pTtXZ7AE0qpmlTjtht4B54qgl4OZ6nHolbaYNbe6mh/Kjg?=
 =?us-ascii?Q?Zdd59px38/v9+q9pKtnqsTvpNqIaV3H2C7AU/VmNMdy0peH6ycK4/pyXN88m?=
 =?us-ascii?Q?jNlGd3nKZUDrY6pkCc8nLugVHbosKtzkFdRFXaCc4DzYobZhXOkU6ma/3lMW?=
 =?us-ascii?Q?yao8icsOycBGUUVjlY5uNdcHUUrZlYeGlPe+OMHGgFCmstXaDzYLUlHRPBIa?=
 =?us-ascii?Q?oCRInRO+G0dSy/fMC8slMo6qHLTie49K9kdwlq7PQPNGO0XfFrZcn/tyIEvf?=
 =?us-ascii?Q?4/OeyMcvn75+uuPTk9/NYgqkVwKG8dUvzWcD//51jLjtZzAvJPoO2U8HiluJ?=
 =?us-ascii?Q?HB5swkCgSX6O6imPgwls5jj5i1Ggsn5fjoUY1HBZsT5my2kYhs5+Qqq+akHA?=
 =?us-ascii?Q?T3MvK7GzTTR05YouTmYio4M5vW6ca3XX5DdMrBj6+jjrpZMJ4eFA5MDlrdyP?=
 =?us-ascii?Q?kvLfVE+fnKuJTV0PL32UI2KjqKgMJRxZHt41GJLb5pnE4JI+Fo2QlxB2ReiR?=
 =?us-ascii?Q?kDs9MRC2+V0rXPwPnNQ/fIBgbMxYTG/5SrpPFEgCAWgRH42hhrhkckSxQ0Y5?=
 =?us-ascii?Q?b4My78fsYBkm0Z5APj7MLnYVb7r0JK0AgJWDiJA1VlmMuIrx0ZxxX3YA8EHg?=
 =?us-ascii?Q?En7hy1cecRAwr7mRgZZgoezDz2O32ugENJb9qG9inNKj2MamHsQf3L+8/qsW?=
 =?us-ascii?Q?IYbdM3Xcq9vP+rmvRThk4DSsSn/hTaJgJjZlZE0pRDLyyEBwQ7iliBmG80JM?=
 =?us-ascii?Q?0f1x0ckNG8OL77oB4wMqM3TqXU28y/Ny0YkvLX8Px73BiqzMs1/8o/ypjOw8?=
 =?us-ascii?Q?ZjGsuk0fyKn/x3+7ufI52hZIv7mOeDtJch6YrCEe/MnpWShZqitbT+RpwQBs?=
 =?us-ascii?Q?tc1ZwaGmI8ZcjG024LVaCR147fTFG7erxuaGEqe7M2/bQ/P1eVSgs5VvvWqJ?=
 =?us-ascii?Q?Qh1GV3BBSM8OfNATzWIeZ/XQX4LPSuoC63KuZN5VC49k8C0kD/HnTdjPS6ku?=
 =?us-ascii?Q?1tD4Y+Oyih1H6TXr8a10sm4UQuu9yNaYaYMF2vuEHMCr9/p4txxWK28kQS96?=
 =?us-ascii?Q?YHzcAqovTAQxJnag/PSIQ4eyZJF50QPuYmArzRy3gXtYT0j+7WuYDstl12fY?=
 =?us-ascii?Q?fUOM1x+w9kVgMvmk/ADGvblIqUFJ/bQz6J2WRto78F0LFeMvvXSgf7NJlK+8?=
 =?us-ascii?Q?+ff+jBb18JH1eq3R2zAtSByy8tvkGPs+73jEJBPyhr2fRzYHyFkF1DBKAgSL?=
 =?us-ascii?Q?DrBSBmFPVQOQXWRGMhepCZpvJB12JAUCN8zOLNYpm2UnX+Ccz3PbWTIhA7en?=
 =?us-ascii?Q?+aoKxR3TcWh4fPil/cEKDe5L7fSfYoKlPS2jmklLLhyWcfN8RekN/CY0kjUv?=
 =?us-ascii?Q?Dq2YaJi3Mg5eyyNNBfENh68AMIiIxHQtQtsKThzrGRaXplkX13PgtyKq1tuZ?=
 =?us-ascii?Q?QJvyipOOa4zXyAFHloyTmctFSzqRqzC22s+eLvw8XZ4284oY0wW+lvvlX1nM?=
 =?us-ascii?Q?UXc6WEEqqoeu2NWW1autE6U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2rb1n/tV14KVqVc6hUUFSfBAixCEAvVZXCWcmdYJg7W1fTuMTlJaCUamaYiR?=
 =?us-ascii?Q?g4V7XEGKdhfC8/4F/JZ1ub7dYEogvmatzTilsRG3xyyZnG1wyAEA7gxFG0dd?=
 =?us-ascii?Q?Fq5A6YxWtLeXGg65HNAhXdF9MKFB6QVr1nSe2EG4Dt9JPQlS/bZHNXEeIkJ6?=
 =?us-ascii?Q?3KM1/nYR1uSsKeNVbifDUp+nzm/nbStQ1FB+PS2MDgMqhTgnvHenWMIa33Dl?=
 =?us-ascii?Q?ijDQUiAIon0TlsaRo99kTPcoNjMWbeAy0cZ6SEl5I+QB7LBLZ8xLQt918+KZ?=
 =?us-ascii?Q?8cSrbSall4rJQqxOmL9TeI5LPheUWGtjp/HXptOdN7fxWoLyKmERhWjsOVzv?=
 =?us-ascii?Q?KhxZOOMPg+WlkKzilSJCnySyfFSTQ/fc4XVEyRmQ0bLBzvvXgVCCkJm6rG+8?=
 =?us-ascii?Q?3BAlHOLklgzD7usQssqzh7iMOuxsMb1vYE+K2C0j/ul0apdIyIFQgM95arl9?=
 =?us-ascii?Q?NnaguBJmowjCIKo54rSe3Gnn/xWY2d8is2D3PpciE34fznC3mkjDOLlTPd5b?=
 =?us-ascii?Q?P77aqzJrakF5qOOg1/hg5z3aCUg9n7Idkqyp3B9al7uOUemkImXGyJy0TAyN?=
 =?us-ascii?Q?TqqrcBWbR7HyIMl96mT9f+iWvTZpsBwdfaOmr7wOPx7qwSiNpM0OCi7IyDOx?=
 =?us-ascii?Q?hDxNIuZItk8f0SsezGGonccEEef83SMeaNij9KxPKq2GZxQLg9SnIz0/eAC9?=
 =?us-ascii?Q?oA1zfcLZuym+e+xoWHgSIDfJeIalP6NkFlMFqupIYiZIyKMiXFfnxbyEJ3ps?=
 =?us-ascii?Q?wVEHWj7VIE6t5AzOWulkWCFeLow9M5bswofyet7kJtUf0wRbQN6a0r6vs1Zx?=
 =?us-ascii?Q?Ss4jUQiYhwGvi8d9ljPf/Pe07eW8ETDMW4+vH86gqnKaGzXSY06HUDgXc7pD?=
 =?us-ascii?Q?U1KVScNQoWSihZgvzHoI2fodNHBK4ZOeF4VSMzTX/xU/Gk2nnvO3Mvms271W?=
 =?us-ascii?Q?30liZlibp3Miej/oYSuT2kK+thbjkDTquj8YbsbOQgadT1ErO6EqvZeRpYQ1?=
 =?us-ascii?Q?rBzMgYzEVV51wm4DNg8mT51V08/o5wEtyNDGdhg2BrtRFRZn0yTMrm6V7aPY?=
 =?us-ascii?Q?KR1pkOAky5laO/8dBGGdHmRvqS1r4FE2KjVP6IXmE8yCuFccL9vnJGGkueq1?=
 =?us-ascii?Q?UG16cWmJ9ayqdrGwbHMIbSh3bjcqvpngmaS1p6C33ISb96QSrtcXLgOyKiUU?=
 =?us-ascii?Q?8KJjp8XAtXsLNvkB8R/QyZIyNgj44BHfu2eoL5wK7C4SwqNcbWg7RuBul3WG?=
 =?us-ascii?Q?eghnvioheSsKwnrkzDjPWqHZNjnhLXzkziKSizI9kk8bAf8+dX5KxTSVuTPm?=
 =?us-ascii?Q?9L4oc6Z2xvy143HMC2zwYnjrjqeH9WuJacPEA/TUojpUsR2MhvlYJVN+6kS/?=
 =?us-ascii?Q?d71H37xFWFjj7qa3pgxZE7KqOqLTOXKdqcK9oiwuFTJSZ3EPKMN45nCa7tbX?=
 =?us-ascii?Q?/5BxuoO+lUoRXr5L+Du+8BrzT6Htk3Vpd+ySMZIpR390HG/4ZFRNHkw86lX6?=
 =?us-ascii?Q?c/EISuNpIpsHFIqrVImERAbOhxzk4gM2B85O5fuhCfMChMCD06A8O61Hsgjr?=
 =?us-ascii?Q?Qn2kQM2Z3mpkfZS9LVlKeKNLo6ZLZv+ighoPWHNhmreojMU1E47sFnlhrvuO?=
 =?us-ascii?Q?FbWR/ueRaT6Y2RqRBmWOWz5oQLVch7T1KaDIUXyu1Og9h1VVdE6O4DVaM0qL?=
 =?us-ascii?Q?WXMjfKTqZ/tEHVKmdFBari6ldz62QNZ+R5aJJayXYZkYijOZ4bm0Log0NYFT?=
 =?us-ascii?Q?328JzKPCjA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2311cc31-a6cb-4d01-6558-08de6394624a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2026 02:23:28.8138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rlijNiJApbSvhXYost10Va/T0onXH88qUV3ZVKdYNv7F+49iULN5WJ4ieo7haY6SF57JwhHieEIyLFAOGpKEZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6944
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AFE91E0CB2
X-Rspamd-Action: no action

> Subject: Re: [PATCH] drm/i915/ltphy: Return true for TBT scenario during
> lt_phy_state compare
>=20
> On Tue, Feb 03, 2026 at 10:40:33AM +0200, Kandpal, Suraj wrote:
> > > Subject: Re: [PATCH] drm/i915/ltphy: Return true for TBT scenario
> > > during lt_phy_state compare
> > >
> > > On Tue, Feb 03, 2026 at 08:11:41AM +0530, Suraj Kandpal wrote:
> > > > TBT PHY is enablement/disablement is handled by its own TBT module.
> > > > We do not play a big part in it's state management that being take
> > > > care by it's own TBT modeule. With that in mind comparing the
> > > > state would be wrong since we really don't touch it.
> > > > Simple return true when we are in tbt mode.
> > > >
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_lt_phy.c | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > index 04f63bdd0b87..27ad8407606b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > > > @@ -2158,6 +2158,9 @@ bool
> > > >  intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_st=
ate
> *a,
> > > >  				  const struct intel_lt_phy_pll_state *b)  {
> > > > +	if (a->tbt_mode || b->tbt_mode)
> > > > +		return true;
> > >
> > > It is a relevant state whether the PHY is in TBT mode or in a
> > > non-TBT mode, even if the PHY is programmed by the TBT HW block in
> > > TBT mode. So it's not ok to ignore a difference in this state.
> > > Please provide the actual context for why the change was added.
> >
> > Bspec : 74492
> >
> > We do not write the PLL registers when it comes to TBT Mode that is
> > done by the TBT dock.  Since the VDR register are shadow registers our
> > shadow registers will never have those values. Which Means we will
> > always have a state mismatch.
>=20
> Reading out the HW state of the actual PLL dividers and configuration is =
not
> read out in TBT mode for the above reason but the verification is skipped=
 in
> TBT mode for another reason:
>=20
> The PHY/PLL TypeC mode (TBT, DP-alt) can change after the PLL state was
> computed for a modeset, so the state verification after the modeset seque=
nce
> would indicate a mismatch in case the mode changed from DP-alt to TBT, or
> from TBT to DP-alt mode. To avoid such a mismatch error the verification =
is
> skipped if the mode for either the read-out or the computed state is TBT
> (where that TBT PLL state doesn't reflect anyway the PLL's actual HW stat=
e).
>=20
> Could you please amend the commit long along the above lines as a rationa=
le
> for the change?

Sure will amend and send the next revision

Regards,
Suraj Kandpal

>=20
> > This has always been the case since SNPS PHY.  Check
> > intel_cx0pll_compare_hw_state int intel_cx0_phy.c too
> >
> > Regards,
> > Suraj Kandpal
> >
> > >
> > > > +
> > > >  	/*
> > > >  	 * With LT PHY values other than VDR0_CONFIG and VDR2_CONFIG are
> > > >  	 * unreliable. They cannot always be read back since internally
> > > > --
> > > > 2.34.1
> > > >
