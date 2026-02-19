Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7q3lMol8lmn5gAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 03:59:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD4415BCBD
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 03:59:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 063C210E654;
	Thu, 19 Feb 2026 02:59:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NHdj95VY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D14310E19D;
 Thu, 19 Feb 2026 02:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771469957; x=1803005957;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t0Znywj2SkK2OZ1TTwuV66i6n1rJyVYi3AQvSehgMdM=;
 b=NHdj95VYZ0cEZVYQFP9ruHuQ5g+XqaYrqNCw62nxyDtRjpWC7G8MCMmo
 S8D+4Qc52OahXu/rQRpGERIq56/sZAd4ky2VYfRVu9Bmr/Ee+ccq7uu2K
 2Xewisk5K3J+fxSpD+LSx/U0B5QCkjSAXWoMPBUspLcHlHntZZ6Avww6v
 jDjpXFMy3Dgxi09/TpPzB0pyIIPp7bA3/YOdHBrwXO/rHSKgag39MLcNY
 Vsptmn+Ay/Ik8zs/+Qw+TgGYANOwD6y1ByWRBgjSKie8VCQmwch5siJMG
 hi0h3IA+CiD2iGB8bXqzu6vsowis5+2/AaBIegYsMUXkXqOOU9C68plAh A==;
X-CSE-ConnectionGUID: FhKKXmJlT9iVrFBSMtWz+Q==
X-CSE-MsgGUID: SW3MgxoESISBY2Ng5R5bfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="76415394"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="76415394"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 18:59:17 -0800
X-CSE-ConnectionGUID: VR5It70ZROywJEdOBwmO2Q==
X-CSE-MsgGUID: 9Rkg2leFQKqcdQhrzNukxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="244984630"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 18:59:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 18:59:16 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 18:59:16 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 18:59:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EH8cw+CGfnGK4liTYhRSCsxpHJzedJKCqU7g3ILM8BFbF6dxLFontPnT2SxmneDJgJ8VUhLx2KTCU9xCvgf1w6iFQijPSkj1fqwZOU7rqMvRk/X+uRgSRqmIxj9sRNSdGM1Lto6zcr19ervoJ25n3GI3x5mu8Y+AnDoxx/YeRsYn6nlIiVyZboM63NCuNl3t8hc+c9fS7nkLJFpmwlDZK9Ez0YDEyBUGdJXszwtIzI6+YG7YTYa8syy53KYCLxfce+pBSUsRU6ISWXicMGwmSbb8BMfcJ+rnj72a/8XaoisCM3F0nFpYoji/mZXgaXpWIUYPW+QmSPYGaC0kq984zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LTLnWoKzvGbX+EI44nvjIK7FxIC9G0Q275AA1n6o7ak=;
 b=OOT0vw/CuzJyDL+QkXqxyuGMgQSkzX7wyZBBKaii2du4w9PZ58914UkfNt4eYsmTClbjE++49R+d8ZkcUZRfMZHmn1pUPIUlNbLc3iM7F4mH0rD5s12OOJsUWPP2Ly4MDF/eRwsqLEo3sXPblDCI8pYObsIt3zsa0jQt+NK4G/G1LZixqhb5pkAtfWeh5EbZntQ9j5d+Umz+oldoovGzLYhM8nQlJMWC6PyF4grQtZOoK6ex+Xn/mDJgPDdxr1/OTbiOf2Yx+V9h+QWAZBoHwC0qHgH3fGJ6E1HC4GxgoGpYTvSN9+2b4/rddCTN7JIly1UHn5f+kiT9dsRHyjBrsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PPF453C3BEC4.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f1b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 02:59:14 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 02:59:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 02/19] drm/i915/lt_phy: Add check if PLL is enabled
Thread-Topic: [PATCH 02/19] drm/i915/lt_phy: Add check if PLL is enabled
Thread-Index: AQHcnOQE7wRPDN7KDkuCzn2P/0LaSrWJW+cQ
Date: Thu, 19 Feb 2026 02:59:14 +0000
Message-ID: <DM3PPF208195D8D6EADE26FCE4A4685BAB1E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-3-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-3-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PPF453C3BEC4:EE_
x-ms-office365-filtering-correlation-id: ac11f456-e138-48ac-7f2c-08de6f62dd5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?qyDoPFTl/NF8EtPD6YIJS4KuJgZ9uIZSZWZv2BBa0vlcbXsexp4SP1zdoapk?=
 =?us-ascii?Q?0FaEaEvgJ57aoqo3QwUvy2VgVAwrvWTZSm/iXwYE4ttHjKV9xOBK/h/LBzSi?=
 =?us-ascii?Q?iK3W1vxpur7YAnhZBsoN28/+hXIR8iIdtWUJefpFduDsznYFu2Yoo+UPTOL0?=
 =?us-ascii?Q?1kpeuypBFHwBTm2vjg65YjOx/T0CONTa6yeew2lf++JBQONaT9YNiUFkOYGK?=
 =?us-ascii?Q?g6HbixTHTkNMLtQVZoNZchtB/sFZdCeFSIKPjkqfJ3AhZ5EWEX4yS2ncubp3?=
 =?us-ascii?Q?j6zRrardp+5Vt6d1FtDAApaWD76GE4TSfP1niOcEFJa3Ey1hGWFmfLc6i7mS?=
 =?us-ascii?Q?Fn6aePTO+c5Ah4/uzXvSm1OSRGBbztMzIOjMVkbc6pMx5+varvmLNX6r3+g2?=
 =?us-ascii?Q?w53qYOm1aH9eUK1CrFTlUJ+54BRCy3V1rDyZ5WYfUXyvNy1YTmTVIc3GJdZ4?=
 =?us-ascii?Q?wzUOVZ0o+Lb2lxTFfy69OoPNfRjHnZVZjTFGq8IRFg9Q6A7IvQKACdq49r/e?=
 =?us-ascii?Q?42xJw6quO5VeH04MOhTuo2ebddsJdQ7Nyn5WkBiAsNCGSUB7u4fCCCBfSMy+?=
 =?us-ascii?Q?EuuREX8S20/dZW3k2qJPcsLO635fBNKYtAW9NFpNfXxjrXZBfdOTXiTAr+9J?=
 =?us-ascii?Q?xEansZoj76vgPAuIyKgCgX/EMV9Fxtd6vmqgMHPqiBsj6b75WOG/DdQ8UEoE?=
 =?us-ascii?Q?amoeoCtc94sn8ijJ092VeFdVqJkYwLEp1dXyZOYmQYN+Z61iTI1/I3x7F9+S?=
 =?us-ascii?Q?NmwhEH68xO1qnzuQ/1SX6eejf3uYKnRLl9F9FE4sClcvJsLn3PQDiO2NLQU7?=
 =?us-ascii?Q?RsnF+w9E5nyDjg4eVegSkDGpC92fRUQp73wGE2UnZPSP2ZwLGLHlXFaS3Dvw?=
 =?us-ascii?Q?MSBCGsFr4Q3wFvuDU1pgW7DjsC4cxfpaPKTq5rSUBqIHHTAe78ImNrQg4cnp?=
 =?us-ascii?Q?dAQSb6ZBmA69B/O+XdDuXP6DzWbmaahWMVlam92QVdFx7wLXBi/ydAUskxm9?=
 =?us-ascii?Q?lZqrvaK3IDCD3hiZ9nCs/d/EO8VJOQdkACXac/f33GaQHRqC/JzGqBNhyZeW?=
 =?us-ascii?Q?G3qXHQacM4B+Dw6dGd7pwbaoAbXmO4JjYtEwhfrB4RaKxsMxPtzvWAzJzYEW?=
 =?us-ascii?Q?UH9YrEKhAwjylE2GpumgkMfeBszHynHJTmAF8sW/QteDUX3HnJKkvrrdbHey?=
 =?us-ascii?Q?FKCr2j+uUJZ6zFcBbL/r9WXHmOWPZ1hxP2W20IKgz1P9+ZgPnsu0KWLGxfAS?=
 =?us-ascii?Q?Dy5Ce0VwkDl4THQFucU1Y1dB5LFEImgryrhHXsreqwFbS8z8/MAKhthCZ14c?=
 =?us-ascii?Q?9XsgalmpD+98/kD6rmsFbr+PeNGqOYCvAqkpKpEmhMS97MNzxJN+JYIJWyfs?=
 =?us-ascii?Q?d1fofuDs7VAGxD3rxDdSvX//8Af6+Fo9QwyLARyB+DZk0j1SHQW+txfZUxoO?=
 =?us-ascii?Q?L3BwfsO7JU+oBzkOKtJmzKn68TU7vtlUaTU3BrFqircRr2MDVZE91LS8h54O?=
 =?us-ascii?Q?asfpSjJw7aIa+KFzU0hIKxqsaErE9jEHtcdqfbDVFRFcSnpBDSJmuwa79kBj?=
 =?us-ascii?Q?/hB6hwNyf+QTm964BvOOySuLYpPX+VYttYAl/GRv/AF0/IDHz070bkHc+MQZ?=
 =?us-ascii?Q?WpspwQ0A+qGArFsN5TtqkTM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?flDIaKcAZYdE6jTDOElrA4at6aJ57ziys6pMcCudJFomMPFDCkd3Dm38Tvgm?=
 =?us-ascii?Q?bDg1cZ018CvaH6YrXRR022iGW1zJVGxOZEhQ2/KsndSX1NpR6F2bK4E7N9A+?=
 =?us-ascii?Q?TuGRQPnUYRTlDpL0DgqQo6Hus7wBqz/9umt0WVZ4JZxMYk9Jr8LZATWXnuWh?=
 =?us-ascii?Q?W4PB67UdDuiXvq4ZNNQKPVJdb/wY27zMjPkbEXz5vRWRAfiSMSgsQdAqDF7S?=
 =?us-ascii?Q?L36hSliFpDdHbx3nteeP8kgpcn7cy/D0n+WPrCZ2M4SiREGUgcFqkB0i7ztB?=
 =?us-ascii?Q?dxksoXs451YoNPWsKmY2Wtb6GnpIpbqocRs0zJOdWbqEUXRQ7B9dcaA0rg9m?=
 =?us-ascii?Q?ACjHddq20M+NFfb4cI5pwQfJxEmt/3TSXZ5ijlGIm2OFA6Vincs73J60yfHw?=
 =?us-ascii?Q?ppv1ZcBm7fpALEnXt5PYb/mowN6Ku3qei8ip0e3Ekp7OvtEfuJJgHroU7Lrw?=
 =?us-ascii?Q?g+8qSzbUTjsiUBcFHmJEUsvDwlVcO0iRW+qysPkNrt127xVfvgjI03kZdgML?=
 =?us-ascii?Q?aJpqoK0cq+zlLNromPu7HK1gN+P4ShWEPxVE/TK176+UFgudcPqi4JChy7pE?=
 =?us-ascii?Q?ZOHk2y+TQyQz3BgT73tld9O3l5EI8AKkcO8oFI3Wd1WSb00EglqxoXrGkFdp?=
 =?us-ascii?Q?htTx6/TZBdNb53TeLf2kBNLsHI3CM89o/NsQ4I1Ng2VXwK2Qv2ztTfmd9PGV?=
 =?us-ascii?Q?bTdlpaCrauz0TXP2x17xNFBBLyrBdSHF7wAp9jRzsxX+QB/KnmSCA7lHKN9e?=
 =?us-ascii?Q?oIOefEfTLEPUEIDjmnuxnJ2zm7Cf/ya3GfdN3K5ajyYt1FKlWfE5tHzeeKYp?=
 =?us-ascii?Q?0g45MuL87OeBz0WtBSxiZSZf1W/PZLT408zF8C7DPo/Imsq5cxsAJR4ujSlS?=
 =?us-ascii?Q?EIMYeRh+06GUrI2YRf1SVEScwRLnEUJ24ziyYVIyfL7cHruKs8rObBzHv5Hs?=
 =?us-ascii?Q?evx3B7qnh5jhNefgM9Tc12eaIhLbQx9cNdpYwjtbPrfOnZDlMItnLB1CX/YF?=
 =?us-ascii?Q?2N1lZxN5uDYqJPALr3JJj1cKK5M9rTIGSv62rQGEFfqKZ+T/caYk0AOsbcbl?=
 =?us-ascii?Q?WG2Uqa5IEjZ3ks44nskqS4fVZdHlhbSB9tGbKVvTqwVf0QkKMedGDfHM40xQ?=
 =?us-ascii?Q?fFTEaqI6HipdBO+o12Fu5wOIRoQG4axay30ZtIXRjA940bLiLlAPPNtuIiAN?=
 =?us-ascii?Q?Lrhvo//S0T3RQi4x2bq18JwF3puRo0ipScqs0mq7jATfZaBuROC7Q9Z1uruA?=
 =?us-ascii?Q?795Sh6UP2mq0V4qBDoDV4BvqKEgzdlbtSgm8N189VnqVW02Xk1uNVkwxcxYP?=
 =?us-ascii?Q?AHaRpm0LxXe2gEzEw2XsgjTbnEM8fbEKW9NkuqiG9VseZCnF5u1tedXGyck9?=
 =?us-ascii?Q?01+SkiVdPWPM0z96jglGfgwlPQwFVK/9/9BXDM8Ywxz78ETsoBFMYr/cbtVm?=
 =?us-ascii?Q?yk16BLvsl713zlG+h6IpVYdyMrdRdNkNXEhbGnwQgZ9l0P8uTC7lezlWHkDi?=
 =?us-ascii?Q?MtE0veu2dfteWWWNvR4OxDlTdnY8cZ5MiTPaN+bYLQwaZiK07pMaBMCSn0gz?=
 =?us-ascii?Q?aIV22N1c3flxKICHbNxf58odvObY3kcdfspsU/xlVWWaQrUYGtBRcfLLrRLZ?=
 =?us-ascii?Q?2LQuX7G5Vhq70bt5CsclR1x9JBG0lE1XNRIObPSPxLJiFKYCfVT3nEraogLj?=
 =?us-ascii?Q?O9nty3PymCktl29EINyp8BDQsN0Y3pDqdrwUWXhtXrravWV+eMj9eTjwavqI?=
 =?us-ascii?Q?rlhJk7PLzw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac11f456-e138-48ac-7f2c-08de6f62dd5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 02:59:14.4328 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n95q8qiiYd4+adQtNk+sFjh/px6Feb1mFLoM7atcxIyCmLszOJXjOrg4PtuVeJyOD+CzpDMBjqJdzNmXkA/wdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF453C3BEC4
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0FD4415BCBD
X-Rspamd-Action: no action

> Subject: [PATCH 02/19] drm/i915/lt_phy: Add check if PLL is enabled
>=20
> Add check for PLL enabling and return early if PLL is not enabled.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 24 +++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 9647afcea897..f8cea06cfa27 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2181,6 +2181,27 @@ intel_lt_phy_pll_compare_hw_state(const struct
> intel_lt_phy_pll_state *a,
>  	return false;
>  }
>=20
> +static u32 intel_lt_phy_get_pclk_pll_request(u8 lane_mask) {
> +	u32 val =3D 0;
> +	int lane =3D 0;
> +
> +	for_each_lt_phy_lane_in_mask(lane_mask, lane)
> +		val |=3D XELPDP_LANE_PCLK_PLL_REQUEST(lane);
> +
> +	return val;
> +}
> +
> +static bool intel_lt_phy_pll_is_enabled(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	u8 lane =3D dig_port->lane_reversal ? INTEL_LT_PHY_LANE1 :
> +INTEL_LT_PHY_LANE0;
> +
> +	return intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display,
> encoder->port)) &
> +			     intel_lt_phy_get_pclk_pll_request(lane);

So unlike CX0 PHY where we the step is
Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK**> to "1" =
to enable PLL.
That is not the case for LT PHY there we request and wait for ACK on Lane 0
Program PORT_CLOCK_CTL[PCLK PLL Request LN0] =3D 1. This will assert the Ma=
cCLK Request.
Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]=3D 1. This is the MacCLKAck asser=
tion. Expected MACCLK_TURNON_LATENCY is 100 us.
So=20

Check Bspec: 74492

Regards,
Suraj Kandpal
=20
> +}
> +
>  void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state,
>  				       struct intel_lt_phy_pll_state *pll_state)
> @@ -2190,6 +2211,9 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	struct ref_tracker *wakeref;
>  	int i, j, k;
>=20
> +	if (!intel_lt_phy_pll_is_enabled(encoder))
> +		return;
> +
>  	pll_state->tbt_mode =3D
> intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
>  	if (pll_state->tbt_mode)
>  		return;
> --
> 2.43.0

