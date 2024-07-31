Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C364942ED8
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 14:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECEF910E20E;
	Wed, 31 Jul 2024 12:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XPGCvTHw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE00C10E20E
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 12:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722429760; x=1753965760;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yjkWJASdRlDcRZymROFEPO0B9iFH/FE+G0Yj+a3RVWE=;
 b=XPGCvTHwRAeka1IqEYvNfjZqhoib/gg2wfM2qj7pDMDQtYByZYe67+Rk
 +I1kRDmhmVd5UEQA909+F8ZLMftUn8eJjGzBYk/ei8EvWGHbaVYq/DjV8
 qXwAhWLrLCuXVCUDrqnOy3Gkxx9BYDDus2hV+rZE7RSUbo6E44Bkx/O4P
 ZPeMEPBs4EEcwaU2HZ7n9Eq1uwFHq+lnVjYOCVz25NJybad8CTmYkDeNA
 DYSx6jeEDkVrr7hHh3IRL+gqCtjCdDBQ+eoI77zcXV2ZJw33r4KDqdXSe
 agLTXz5zxbgHF9ZrAbp3Wa+1MQxfhjDqYAXntmOGPsjOsbNTyxkr1v0ns w==;
X-CSE-ConnectionGUID: vby9DEhpQaSpPtsL0Onseg==
X-CSE-MsgGUID: Q3xQfBDFQZGwd6fhzZF4dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20252483"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20252483"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 05:42:39 -0700
X-CSE-ConnectionGUID: oAe1tIkNRI2Dg8zLT0A6JQ==
X-CSE-MsgGUID: n/V5XpWBSU+mpO54AUh1hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54921005"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 05:42:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 05:42:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 05:42:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 05:42:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZrOoCP92NNnFueJNerOyBUl2OEep9zBbOuBV2jvbeQQUbCf/LEiNMj2mhWln8YhgPiJJ4MD5loB3PLt65Lm7Ot2+xIkilx+PSsX35eKiGh3sdQQ8x0cEGlKUOUBKJulhNAL5D0oGrdVJU+Flze2uDAfB6RYuPt6Bp1BkxVRNe4RUufLC5OqKcx5fn9BdZrDkKz3br1O8qbfYLMXfASgOEOuqYHFTmp6LCy7SwBrd3hTOFA09wBrvCVuBZcDqSnmzmmiz4aAhj9oEogHzufxLJ7VIUCkC6LGxnhFPpHbX1Iyjok9WMg29T0r5mDESDWMFDAEZlbN4hR3dsvfYt6Po4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nVX/V5trKAhBVkKcG591tBzq/8NmMI0S5bKXhmP2ZXA=;
 b=DwoQ63eSzGQV+rOMzX5tIgFppaDHynGkaXhnPAUpFLY/2Y3nfy5UwilV8W+412FAW4VFMM5juEsIyq6GbLS8mIS2uHf418oIyjQz9elCU2wnGwYqr4Dn9mXuVprnqKdd7w7FQzMVZt1sOgMTTgIycgbDQTpxuwczgUsB8JMXWKG3L1SUMJnMDWtuhoVPKW6BPbTPzFlbNWZMW5mbdCqDHMlEPJibM8JKhnZiG6T2t6QuPY8HuLluzsnOs3oXfl8MUImiQ+UC+0sqiqo+GUc+fbGX3YdLOQSqIp/vf4IHZjJTQLKgwoLqiOeAH9yVcAxgA9UbcmNrzl9e28xSQrqsRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by SN7PR11MB6851.namprd11.prod.outlook.com (2603:10b6:806:2a3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.21; Wed, 31 Jul
 2024 12:42:35 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::fd8d:bca9:3486:7762%4]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 12:42:35 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Roper, Matthew
 D" <matthew.d.roper@intel.com>
CC: "Shyti, Andi" <andi.shyti@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>
Subject: RE: [PATCH v3] drm/i915: Add Wa_14019789679
Thread-Topic: [PATCH v3] drm/i915: Add Wa_14019789679
Thread-Index: AQHa4o8+jRybi6MUoEa77P/+TQbfbrIQyL3g
Date: Wed, 31 Jul 2024 12:42:35 +0000
Message-ID: <SJ1PR11MB62044E8689457A87870EF00B81B12@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20240730150313.3227948-1-nitin.r.gote@intel.com>
In-Reply-To: <20240730150313.3227948-1-nitin.r.gote@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|SN7PR11MB6851:EE_
x-ms-office365-filtering-correlation-id: c882b6da-c797-445c-6275-08dcb15e4116
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?WlRXdf7b78Jqdy+sx7gxV5aSV3zJL8M0SbGL0IjHYb9fsk3511rIBd00DSSv?=
 =?us-ascii?Q?+eG5kQVoiZZxMcn1PHxRhjJJW6ya+oI9mBNK63BUQCkf6rqojrL65KoOwJLF?=
 =?us-ascii?Q?n5xy/GMfGrptYWRhhq/ddO9pEibqdd20L/uhyWuZ3MRZBtQjAlBjMI+GVy8s?=
 =?us-ascii?Q?gTO4S7y9mP7qBH9rdMNip9CsL8m6cGjqX3NNgqd8esDmhCP2u2qCWkhFE2Gx?=
 =?us-ascii?Q?1wXU2+T1K0mPAHkPSBen+7uHiTEJOGbvutRfgJcH/Evqsyao3/xMbU6le2E9?=
 =?us-ascii?Q?63rv1PE3jnmkjzYKH4mAhG/JFuwcERjbH5gF5E8lS5Nj+LfFzCmkUyWS62DU?=
 =?us-ascii?Q?GuC0yzRKvAjgfV/Fdjj3+n2nQodFqiO740ciGSnAUJiORgX/EIANiFcNHLXT?=
 =?us-ascii?Q?AEAl0kNJHYDGuwCkuyEkBKEbqKZLz2UPGpqsjybXP5x+CJ6GnvdYnVhG7PuF?=
 =?us-ascii?Q?97crzDy25SN6qX1lm9enHs5mJsV2MuVpjd6bwbtV8ofujOKT0wABLPl/jId2?=
 =?us-ascii?Q?ai5oNMQXuuonD4LZJbh7tb9PljFwejgC2RkyEtpvq04Cn9Kbzc0li/+wlcoU?=
 =?us-ascii?Q?lbD9aSkvj0uOVOIhbv5Sb0NBqVmpDIBpgdoZ4cawVJY1WZNO0iFQ3z4FzHc3?=
 =?us-ascii?Q?qsmqBqga7qPyaiP1nhX+zcQCZQl1v7WTBkRDN9Li8dywDTUjdRJhdV89LuJN?=
 =?us-ascii?Q?soPt8CzZRAgE/BUADeRTesfmCifYIZUtOTOcPSqOzCeP0qGCn3moXnw8JUeD?=
 =?us-ascii?Q?ztje8BPRqdTsXoe+J4llssZo5s+XgGZWoYLED9N3gBnJqPmVbtMG+629JYVZ?=
 =?us-ascii?Q?zT4dK+0qmgJDTABf7XDrLkbK5dXZU45VGXmFUmP6OQgyWuC7N8FBjqruF17O?=
 =?us-ascii?Q?wQSG6TscETVi+Ey8ZRu2siv4b9q8P2d7CEzgW/EOTyt79d/W+oWVUsrr2dWv?=
 =?us-ascii?Q?4RKGhYljgRF5lQ6SxNRKMNUPgLhfGysvKzE2qX4uSMQTakSaModQg/D+QLGv?=
 =?us-ascii?Q?4GCBnx6qpGu02wcq3DO0hvbVM3r1ry7/6ucPjHtG0kj3HNp4s9ukA42Ntxu+?=
 =?us-ascii?Q?PQSus4hV+QT+y3iYCVWhtbBZcYBdysliTnkO4v2e9DGFcRU269yvUaY/sMqx?=
 =?us-ascii?Q?bwyLryGJh0yRxcWaZ4YIQ0uxpldSVdH/sifTKPmmPMJ/+O2CY8YPnJDs8k1Z?=
 =?us-ascii?Q?NSpEjAw3i7iJ7WwmWO3jKntaGOkdu1K6uH9Vzze6TGDAkIE5SROWb/W3/Bmq?=
 =?us-ascii?Q?QBOrn7xSSckN/M8JtWVvNuGJW/P8Mq+Dxa+CzXx/Cx/MwZBHduHbO6DfwUED?=
 =?us-ascii?Q?IXzYnbJ6c7KE29tFCM7+hIBmDEjt0jJXmmqM+kf+Mr44T0LR1vK3B8DahRbT?=
 =?us-ascii?Q?Ct8QSp/MHzRnHKcBP4xBj6T+e5wOzRUJYlTPAzJxN0WwuzT2jw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zCbcawVlPXEjBLYSPmycqNMe5C+yHOurBoEd1orEagty/dqQvyxKiPreWl5l?=
 =?us-ascii?Q?cDFVaWPZvSOxtDIAet9nx+sNxMe3281o9hp6jUl2vL5bZQSNk0Islm/Y1mtg?=
 =?us-ascii?Q?Juy+Yg4tudtRNLq4ZhKBu18tWjoU+XVmAuMUAScarHUo0owYrskOYg2rsOGy?=
 =?us-ascii?Q?xToolQxODbDZou/w+0KS54bRjzK70t4VfEaOsC4aR2srgHRvB6fG/ldGbc0S?=
 =?us-ascii?Q?gQQruDEpk7v02PphjzmjF4rrlFK0BrT8nuseGZ66baPcu3LSg1VG4QrQxJy/?=
 =?us-ascii?Q?GQf26Gk3L4ljLnBTq6Jl4+810u737+/03q+tazC03FnU8RstoHoXK2bYYp56?=
 =?us-ascii?Q?Li1NKFRFLjTwWyFtc9Pjl1Hx/a3MvbtfHM445iaHkWvP3NhSq9HUvELUlvAz?=
 =?us-ascii?Q?+qDyVbU2wA7Lsw5O5iQ30SOtppetPBio58L4tJuBENIFdPzSWRBhn7AerHZz?=
 =?us-ascii?Q?63aP8eyZ3w3hTf5vMBW1XRvAM6Pripc5A7epqJsABSH71o1yKi0KFfSCl8xU?=
 =?us-ascii?Q?h5J2gvthdKX0yYMmrL77bP1gHGSov+msOOXU8xfaMWDLkxYDLw8n3CRbxdqt?=
 =?us-ascii?Q?Af/BH/MUZ8qylxtoVfR5KyVF3Lqt6QTXrq95crZezm6GH/IrXCTRypMFMOYX?=
 =?us-ascii?Q?jR3a5FIxLpyiP3uIhOObLIVF4CzBd7RPndEVhYZpgeSU/DB0BalJ7jeqmfH3?=
 =?us-ascii?Q?wcAS7tTgN0jtniPbK7w2IarkRLgQO455TQG6bCSo48njn24yGdAfsNa24bfm?=
 =?us-ascii?Q?5ueYdlZwlRY8Kc/hQgroVe1146G2teqcmyZv3ltn8aPctXQDaTrZJcwk330q?=
 =?us-ascii?Q?M3Y4bKyKYFj6HHH1rzdwpewCNthVxycU1PJeGygFG5r2a+KxR44IWjzI+cbC?=
 =?us-ascii?Q?l6W4BrtnVUHyyWv6gfOoOGPrALcSUAMmtBaDY++uofXj4XVsbBzPIp56zfzQ?=
 =?us-ascii?Q?A6YFofVmYpELZsvMg2wUG9b9nCCNwUKg0ZRXcu7fFclID3jMqhu72F8Rr2gO?=
 =?us-ascii?Q?v8gSzEShYzNWjgFwpeAZMi+4BpB0bvmEfG/SrF3JxeaYTz1EMWJLov0nd+Dl?=
 =?us-ascii?Q?4YmU8Ijdt3UEELhojYcayM5MFURgPqUlSJxozTQZE1cwbwEhagZLeyUM8Kwk?=
 =?us-ascii?Q?p25cPOTeI7bR+RolEILJNXyj0e1/uQB2H5cHaELS8k/HU1693c+SlFgtBwjF?=
 =?us-ascii?Q?ROf1BJ/xTPN8+flDajybjvM3Bm9Gq9HCMO62/7svWtsmiac+sMOL2skSx7RZ?=
 =?us-ascii?Q?APgqQLA8A+0nx3TWNbdfbB/4KX2PVZFjQKtMFjshdLgFb3yXRA5UzVwo+S0M?=
 =?us-ascii?Q?2PCpsOh/zVGemmxl8h3zIxABOL/q64WI78G1SCm9KbcK/2NjCstLX7e2CyRJ?=
 =?us-ascii?Q?lK+K0O+dVud1N4KJTUnn8IQDvtNqm7OZzoo53OPMCbQVoWH4/L14RjQ17vyD?=
 =?us-ascii?Q?MLxI9nFV3YfjGFKXYo6VK6XdkLJnXrdvNB5B7S3bgnosLvXC3V70OLCDvFbD?=
 =?us-ascii?Q?LKAO9tTT5uIer91J4UI5jhyzZ3jvbFcz2e4JMBTI4Ou21/G2hhmyilu5hjhW?=
 =?us-ascii?Q?P086h4izNKI9+dK9z0xcZoRZh2MxH6R4DfiWVuWJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c882b6da-c797-445c-6275-08dcb15e4116
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 12:42:35.6531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yoK947kFbEBxaELZjTZdaMaRcenIoMAwlkiGD8hEFzJmrV7CeHcB7QBBmpyiDJzrPnNT4vyWEZ3TJAmRlq7fSOliub8M0+0J3A49pbok0b4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6851
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
> From: Gote, Nitin R <nitin.r.gote@intel.com>
> Sent: Tuesday, July 30, 2024 8:33 PM
> To: intel-gfx@lists.freedesktop.org; Upadhyay, Tejas
> <tejas.upadhyay@intel.com>; jani.nikula@linux.intel.com; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Cc: Shyti, Andi <andi.shyti@intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Gote, Nitin R <nitin.r.gote@intel.com>
> Subject: [PATCH v3] drm/i915: Add Wa_14019789679
>=20
> Wa_14019789679 implementation for MTL, ARL and DG2.
>=20
> v2: Corrected condition
>=20
> v3:
>    - Fix indentation (Jani Nikula)
>    - dword size should be 0x1 and
>      initialize dword to 0 instead of MI_NOOP (Tejas)
>    - Use IS_GFX_GT_IP_RANGE() (Tejas)
>=20
> Bspec: 47083
>=20
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
> drivers/gpu/drm/i915/gt/intel_workarounds.c  | 14 +++++++++++++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 2bd8d98d2110..7eaf7eddd25b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -220,6 +220,7 @@
>  #define GFX_OP_DESTBUFFER_INFO
> ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
>  #define GFX_OP_DRAWRECT_INFO
> ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
>  #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
> +#define CMD_3DSTATE_MESH_CONTROL ((0x3 << 29) | (0x3 << 27) | (0x0 <<
> +24) | (0x77 << 16) | (0x1))
>=20
>  #define XY_CTRL_SURF_INSTR_SIZE		5
>  #define MI_FLUSH_DW_SIZE		3
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 09a287c1aedd..d942707381be 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request
> *rq)
>  	if (ret)
>  		return ret;
>=20
> -	cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> +	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12,
> 74)) ||
> +	    IS_DG2(rq->i915))

You might also need to put check for engine as well, looks like it applies =
to RCS only.

Tejas
> +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 4));
> +	else
> +		cs =3D intel_ring_begin(rq, (wal->count * 2 + 2));
> +
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>=20
> @@ -1004,6 +1009,13 @@ int intel_engine_emit_ctx_wa(struct i915_request
> *rq)
>  	}
>  	*cs++ =3D MI_NOOP;
>=20
> +	/* Wa_14019789679 */
> +	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12,
> 74)) ||
> +	    IS_DG2(rq->i915)) {
> +		*cs++ =3D CMD_3DSTATE_MESH_CONTROL;
> +		*cs++ =3D 0;
> +	}
> +
>  	intel_uncore_forcewake_put__locked(uncore, fw);
>  	spin_unlock(&uncore->lock);
>  	intel_gt_mcr_unlock(wal->gt, flags);
> --
> 2.25.1

