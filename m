Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366E0A4BAAE
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 10:21:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFF4610E3A1;
	Mon,  3 Mar 2025 09:21:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MzuVoYfF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EFEC10E399;
 Mon,  3 Mar 2025 09:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740993691; x=1772529691;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G3SVZHNCtV+81EzF9KZ1AgDD9PS5QJj1Y7QSzmYgGyQ=;
 b=MzuVoYfFZXMAM+ZDpecbbeopAcDZJMorrqV+/lWVgrHGf3wQvLTnIc5u
 mcd7UnPaWobrgLl2jU5RpLikS08zijz6ZcEBuJlClWZZVxLLKpZm5SYTw
 CaXL3uBScCguYo9P8IPyhbqgYzWQRanYGzu1443kQ1A7rWPV+fsNq83dd
 0BFb1G3W8hCeiYdU/tn8nTLWdAf3JhDMutHJriG9UyVa70Iv94qHJd5/m
 ZzjNb33C374FvLj9e0dqbrQXadisc8ggs1fLJ7p0RHhLR4wojWe2X+D9x
 IaEimrc6hb6j0vehqE2lE0VdAFJU7RsjK3CSLDMsWTY7wuVCSEp8IA1mh Q==;
X-CSE-ConnectionGUID: XkYm6IViRdu3a6wsp0RajQ==
X-CSE-MsgGUID: RHyQfPIIRg6fc+9xDIaVnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="41981885"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="41981885"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 01:21:31 -0800
X-CSE-ConnectionGUID: RNzJZXJ+S1OFOzfO5wtCdg==
X-CSE-MsgGUID: xmIGrZpnSHWm1EJ+Vwxb3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="148755342"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2025 01:21:31 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Mar 2025 01:21:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 01:21:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 01:21:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IQx3Q5MqrYSKrPfBDfKuPPSjA+mRVbO9uJCO+xkbMJDKivJJb9appCRnJMFfQeqwAjwGAoAYp8n/DFUSkxKXhUM+0QA0H06jHQmwMXmaVVsqtpDkqh4afWp2PeooAXgh/McIlQJauJ7/zAVC8/A2xIdTrIOQ3pOzbpDmmoJ+nw7lDAEwxuqaqHPuYFStapkn6rte9hu64sBbA43SdcYg54UlSt8rpebIYzpnBbvljsxKYQ1srzTYm01tAPBI+mjUx4TC1ytuo57LDPK10I4k4QgGDh9DOF2KqPLqKcA1KMvpZVA2JvqgQtidbzNDT07iLlzFPWDVyjRo4kRvu1Gh5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ws3hfo/wbZyj22OZvEB563w5buto2CM8gxKoTfb+Jx0=;
 b=f/JYmK7sOaghTRizl5ZQyfTO2g7mTQaATtD7cAe5VvGhvDW99Y4IPQKv78sTKXLRPbLqyC5XI52SW+Yrfzq1i/gB2hkqY9Oar67SYsbYO5Ag0Cnxpq/e12xURKTqB5u0SgStsq4nYXO64qdnT6I1tb3xqweU372tWAMSbpbDzVQeSt+AAuClojOvPbLgvYlarnBevSAYvUuwmd64LuMh+5P/YmcnvwFfXQobn2JjUFxJImeAEgHQwX6uFfxEa7+6QxFyNnEZFbF3Np9airHCOvlKgh4/1jWsHEnLfsS4t7D0TubdPPkF6qVdf7MqQf0bJl/2uO2vLKWlHJPVViOMww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB8327.namprd11.prod.outlook.com (2603:10b6:806:378::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Mon, 3 Mar
 2025 09:21:28 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 09:21:28 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH v4 2/8] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
Thread-Topic: [PATCH v4 2/8] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
Thread-Index: AQHbhpZwSO9q1PhhNUuCxKOUgbJjsrNWRSEAgAFsPCCACXrP4A==
Date: Mon, 3 Mar 2025 09:21:28 +0000
Message-ID: <PH7PR11MB59812175E7F7B1D45670C057F9C92@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-3-animesh.manna@intel.com> <87wmdf7har.fsf@intel.com>
 <PH7PR11MB5981F7169632987B2EB06884F9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981F7169632987B2EB06884F9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB8327:EE_
x-ms-office365-filtering-correlation-id: 4eb29fff-650c-4540-d9ec-08dd5a34c75d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Ll/EpYYT7qxfHb4USoST1uvascdEQXkcNXqf3//srdJ0NsHdvnre48bT6qdc?=
 =?us-ascii?Q?TRsRlCPYIAB+g/HMzbqVWicy9HO/vHUP8pmCgL+WcCovB5vFy8OZ0lskaI/O?=
 =?us-ascii?Q?bgL8wjJHam7JeeVdcXaVKxwa769gYlRl/tRn3AXCRoytq+zxjASXviNXLp14?=
 =?us-ascii?Q?LtBoWzw32B2+n69zpLg903O6Kr1ooguKOIsOTG/i7Lx2vamEjnNjmkSe+3Em?=
 =?us-ascii?Q?ZH7P5GmXSSxnqqbU9oGHtEoAsznMLyP9qeKvpriNGD3/kDgUcKWAACtH2DFA?=
 =?us-ascii?Q?fIWBdX8IqpHkmSz+TZu8RhLqeQ1H4F3937jvL75xMMnXPxlzxs8IhB6b9tQK?=
 =?us-ascii?Q?SwBe09dSXJshJZiB4C9MaSr4T0sIx2xsJZbTUsoa/lynmf3ZLOU0qjqctQyn?=
 =?us-ascii?Q?cu3tiEZFghn9SjTB8StgLDOwiZFjSfshZS0BqYvMRxP8MswlTHS8/nJHopQO?=
 =?us-ascii?Q?+5vIXrdbeVQGBa8o2dWRaEkK4lNnoD2qmiZ1+2u/rqiXaYSS8kq+dp+3e8Ft?=
 =?us-ascii?Q?Bn9PB4wpNLxfw7B01qcsE3ajyMWPl/4m/kROnM6Vx534hGtNcYWgQGclhOwb?=
 =?us-ascii?Q?jrIeYoEtMDRpMX465wvWQzb/LKHmecRsBhQo5GMd6D2BQp5fXFH0jNvxMrqv?=
 =?us-ascii?Q?zY2MXznTP2CtT31+nBle+jxfj5IQmcIMuErjIz71ztJxjO87uS0DCjp1O4G6?=
 =?us-ascii?Q?jkCDlcZSs5Q4tZU7bsE/+Um7pZu46UTmy9e17JHW28b0DmOm9/6gzvhRlKtq?=
 =?us-ascii?Q?YzKz8ibQ9DDheNWV1rG2IiBnBjHTGvF3ZWxUoygy0wIP4b5WDyIKW2Eig3aC?=
 =?us-ascii?Q?7jF2rBm+YtPfaPITpNicKnS4RT0v9lIBUPdQC0gUk8eN2VEaZ5oMaPmIUYfO?=
 =?us-ascii?Q?a88xPmE9mUJ2Hb4EtiXAyQvXUqoyy591x4IObdAcnhHJLLl77H4Rq6uXyQq9?=
 =?us-ascii?Q?FYHdz7nMCZehH56UyUetLqBNTdRJ98xCcaW/sZhbNOOcTK0kQAmyUeHF+xLg?=
 =?us-ascii?Q?DmLi7VBZliTrYknMLQcki7GeTT5YKcC9wRr6V4sZQmzKzIajwJRBvFl9lt5+?=
 =?us-ascii?Q?OD1y7NrAhPeW3L5n4Ad1IcM1auVQEzwq4Y50v/DnLZocxEYBZUI2y8K0fLq3?=
 =?us-ascii?Q?GGl9hO3MsMhSabAOsn+pI+jE6XSrfg5xY1LLDlp0Lvmjub+dvyq2dRiAYzzv?=
 =?us-ascii?Q?JH41iOgUIKPoXJ7J63av6KkJo3a5Jzg9FNK/z355RGEflTqk2dgRaAZ77V4f?=
 =?us-ascii?Q?CGG/lmYuM+cdMmoLnSsCnq8EfHz6V1snNQVgA+jbRqVqLZEBXxCjUwJnTnxq?=
 =?us-ascii?Q?NPVJCUJZycA0jDwjVnFCMu83no2Hnw4WMC/a+wf87mBmoQIg5rx9o7BPALUA?=
 =?us-ascii?Q?fjf+B2kUp3zD8zW9Wt6gowe8B6wuIpY6VSvKfienSrCBVvRbgMBYEkEp7ljG?=
 =?us-ascii?Q?7D5fnN9nwmkBZbFyONC/iEty15R05IbH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?taVYXQ2SmsOxvWDPxj1jIMIC0SSnZVjR2WUEAbaJeKMetm+xz5JQvWlKtbCD?=
 =?us-ascii?Q?sVFfngWlwKljapvU4CqR0C3YM1vmOH5lEeeLRlT9Oq6uhs8epFxl4Sm6IiMS?=
 =?us-ascii?Q?aXZo6OBVeaxEPbfVhG7GwUAZg21tX4KFsvhtboPblj5wY/N793iqgYJYAYC0?=
 =?us-ascii?Q?a2sCwJ892RMsdCcXd37CD1pnCq4XDvj0uEqndWIHrBbUZKXX0evqvdjwCrQF?=
 =?us-ascii?Q?HXkiBO+MD+XGnJzX+bY08efkvSJWI9pgsChNqqHS6UOLrSFBYo23giWB1Q73?=
 =?us-ascii?Q?5YZE8wG6X9FmJ78ZVs/x1dkoSqE/s3qIZx+ky/IKR0XYfi1U1Rij6FLybZiq?=
 =?us-ascii?Q?2vLsjvw3XY+yPXb8QceJdyqC0FUqrTwdEGiwo6QOAdkXO73PYPbS7x6SaZWD?=
 =?us-ascii?Q?wRjE6wOBVYrSxLgAHTIwNdSlkBDat0SzzUzn9PTbN2K/zyKIaNIASwl8MI27?=
 =?us-ascii?Q?Df6JFAKraiYr3H0LFjHde7PNBUpbKFAPeFSNMCZKQCbWbEdEFnSYPAtSFddF?=
 =?us-ascii?Q?MlqZQ4o8GXap9A9nvARmQJ4IwJw7eM7LXt58cxOQ+gH3kUVW3xJcpPgb5hZg?=
 =?us-ascii?Q?SVNtJDWfFZW8OjDLpwcIx2GEqHHhdaTZAtcSwazYeK4iK0tERM0Te2zmnDxJ?=
 =?us-ascii?Q?/OG8Wt4uEWLLsbCQvanWiFrWvcn+au5qrnUtPHZHAvPklCc46Y0leq05Fkjs?=
 =?us-ascii?Q?9+RiTz2G2Ucr7YfNhEX+lDxNmAVeyE0eg2YF+re4zpUEtpunf8ZiAaw9ynxo?=
 =?us-ascii?Q?PfqmaHeMFqdpAejGSrA8caoEPGbznZzeDRS4uGFYWe1W0FfPbNALIvyofO7R?=
 =?us-ascii?Q?fMHNkgar5v4Qc45c3wK9ijtQF/JQRnDbEoE62GVxWY1WI0WrLx5j0gt0R96l?=
 =?us-ascii?Q?wfrE5nfPF5JuNY/SJVr+Z6Sb2Q7z4kfFRAIIJPCj8B6VwSKebgdzR+vSyL/O?=
 =?us-ascii?Q?sf7T6en3xIRZOfDwkt0//6kShdaRMJ2cbtap0glp6f6wR6J58ZZx4LmVueez?=
 =?us-ascii?Q?LFJjj4MIZscvvD1VI7/3KKyDEfP9TfN8dCLsxkSbCOHuDg1eIi1xMRwl/TZa?=
 =?us-ascii?Q?+y+nkpoG/BClng3D9FnD+5WfFPSPRo3r6F6q8k4PNQpt0dgBAY1CZKP4fGuI?=
 =?us-ascii?Q?gGQPFFUYodlFRRM9TRzBQUxNGenUDEe1Zf/C670edFNJjB67IMtMzdYaJCxw?=
 =?us-ascii?Q?ac0Q9ydPwUNW2W7wGNPyr5z9X9xuvnaXk6K3o3FfDP3T36phUSZTSiAEp/Ha?=
 =?us-ascii?Q?l4RNrXd+JWL9jUF3xYZkinh5UV6aRoam708OHCxo5w2RkaR5Qq7+AYwcbu9l?=
 =?us-ascii?Q?PMDfjYCP5K0x8UnJ6Zq0A+NjWVe3+BE+CNnlmebe4NOZVeUnr6CbNY1hk+Sy?=
 =?us-ascii?Q?6dHRmpqYXdtopUZFlXyxJu6d8uDGpA8Lb4d8HYN41SQyvtT9EuOUXqFmSkGE?=
 =?us-ascii?Q?3Ck0CGNE6S4Ql5xkCnKxeqLoZPL7whaXCnSBUxcFfj7gp7AQBPv2+SAhdjTp?=
 =?us-ascii?Q?uvLgfzDggYM+9p4GlJIa5xFKzFHg0NJs+TJivZ558vkdpRPR354s8dlD+T61?=
 =?us-ascii?Q?uXtTQOPE7aS4JYqkxX52evxbwWF+ooJxKk35rzD3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eb29fff-650c-4540-d9ec-08dd5a34c75d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 09:21:28.5852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O65AJpczTvy0uTldvKhblB3eIX6A3lO8vJfayZuSOfj7CS6PR0O+Bp3ZdJlterSh83kQVeK3Z3sxGz8uO6ET6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8327
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
> From: Manna, Animesh
> Sent: Tuesday, February 25, 2025 2:32 PM
> To: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> <Jeevan.B@intel.com>
> Subject: RE: [PATCH v4 2/8] drm/i915/lobf: Disintegrate alpm_disable from
> psr_disable
>=20
>=20
>=20
> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>
> > Sent: Monday, February 24, 2025 4:15 PM
> > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> > <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> > Subject: Re: [PATCH v4 2/8] drm/i915/lobf: Disintegrate alpm_disable
> > from psr_disable
> >
> > On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com>
> wrote:
> > > Currently clearing of alpm registers is done through psr_disable()
> > > which is always not correct, without psr also alpm can exist. So
> > > dis-integrate alpm_disable() from psr_disable().
> > >
> > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_alpm.c     | 21
> +++++++++++++++++++
> > >  drivers/gpu/drm/i915/display/intel_alpm.h     |  1 +
> > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 ++
> > >  .../drm/i915/display/intel_display_types.h    |  1 +
> > >  drivers/gpu/drm/i915/display/intel_psr.c      | 11 ----------
> > >  5 files changed, 25 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > > index a53ed83f6b22..d94c96ba46b1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > > @@ -365,6 +365,7 @@ void intel_alpm_configure(struct intel_dp
> > *intel_dp,
> > >  			  const struct intel_crtc_state *crtc_state)  {
> > >  	lnl_alpm_configure(intel_dp, crtc_state);
> > > +	intel_dp->alpm_parameters.transcoder =3D crtc_state-
> > >cpu_transcoder;
> >
> > Why do we need to store this?
>=20
> While refactoring found that some places where we don't have access to
> crtc_state and only intel_dp is passed, using cpu_transcoder we can acces=
s
> ALPM register, will relook again and try to drop the saving of transcoder=
 in
> intel_dp.
>=20
> >
> > >  }
> > >
> > >  void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> > > @@ -440,3 +441,23 @@ void intel_alpm_lobf_debugfs_add(struct
> > intel_connector *connector)
> > >  	debugfs_create_file("i915_edp_lobf_info", 0444, root,
> > >  			    connector, &i915_edp_lobf_info_fops);  }
> > > +
> > > +void intel_alpm_disable(struct intel_dp *intel_dp) {
> > > +	struct intel_display *display =3D to_intel_display(intel_dp);
> > > +	enum transcoder cpu_transcoder =3D
> > > +intel_dp->alpm_parameters.transcoder;
> > > +
> > > +	if (DISPLAY_VER(display) < 20)
> > > +		return;
> > > +
> > > +	if (!(intel_de_read(display, ALPM_CTL(display, cpu_transcoder)) &
> > ALPM_CTL_ALPM_ENABLE))
> > > +		return;
> >
> > Why are we checking the hardware state here? We should know what state
> > the hardware is in, right?
> >
>=20
> Agree, we can drop the above read.
>=20
> > > +
> > > +	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
> > > +		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
> > > +		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> > > +
> > > +	intel_de_rmw(display,
> > > +		     PORT_ALPM_CTL(cpu_transcoder),
> > > +		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0); }
> > > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h
> > > b/drivers/gpu/drm/i915/display/intel_alpm.h
> > > index 2f862b0476a8..91f51fb24f98 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> > > @@ -28,4 +28,5 @@ void intel_alpm_post_plane_update(struct
> > > intel_atomic_state *state,  void intel_alpm_lobf_debugfs_add(struct
> > > intel_connector *connector);  bool
> > > intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);  bool
> > > intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
> > > +void intel_alpm_disable(struct intel_dp *intel_dp);
> > >  #endif
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 7937f4de66cb..26aa32d4d50e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -35,6 +35,7 @@
> > >  #include "i915_drv.h"
> > >  #include "i915_reg.h"
> > >  #include "icl_dsi.h"
> > > +#include "intel_alpm.h"
> > >  #include "intel_audio.h"
> > >  #include "intel_audio_regs.h"
> > >  #include "intel_backlight.h"
> > > @@ -3570,6 +3571,7 @@ static void intel_ddi_disable_dp(struct
> > intel_atomic_state *state,
> > >  	intel_dp->link_trained =3D false;
> > >
> > >  	intel_psr_disable(intel_dp, old_crtc_state);
> > > +	intel_alpm_disable(intel_dp);
> >
> > We have old crtc state here, why do we save the transcoder to intel_dp
> > and use that?
>=20
> Got it, we can drop saving of transcoder in intel_dp here.

Tried removing transcoder from alpm_parameters but later found that for som=
e erroneous case where we don't have crtc_state like sink error communicate=
d through short pulse, we need to store transcoder in intel_dp. The same is=
 done for PSR as well. So currently keeping it in my latest version on the =
patch.

Regards,
Animesh

>=20
> Regards,
> Animesh
>=20
> >
> > >  	intel_edp_backlight_off(old_conn_state);
> > >  	/* Disable the decompression in DP Sink */
> > >  	intel_dp_sink_disable_decompression(state,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 4440521e3e9e..b78721c451b8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1801,6 +1801,7 @@ struct intel_dp {
> > >  	struct {
> > >  		u8 io_wake_lines;
> > >  		u8 fast_wake_lines;
> > > +		enum transcoder transcoder;
> > >
> > >  		/* LNL and beyond */
> > >  		u8 check_entry_lines;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index c1dd9c739fd4..1d202f2eb356 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -2141,17 +2141,6 @@ static void intel_psr_disable_locked(struct
> > intel_dp *intel_dp)
> > >  	if (intel_dp_is_edp(intel_dp))
> > >
> > > intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)-
> > >base,
> > > false);
> > >
> > > -	/* Panel Replay on eDP is always using ALPM aux less. */
> > > -	if (intel_dp->psr.panel_replay_enabled &&
> > intel_dp_is_edp(intel_dp)) {
> > > -		intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
> > > -			     ALPM_CTL_ALPM_ENABLE |
> > > -			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> > > -
> > > -		intel_de_rmw(display,
> > > -			     PORT_ALPM_CTL(cpu_transcoder),
> > > -			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> > > -	}
> > > -
> > >  	/* Disable PSR on Sink */
> > >  	if (!intel_dp->psr.panel_replay_enabled) {
> > >  		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
> >
> > --
> > Jani Nikula, Intel
