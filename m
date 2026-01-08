Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 056C1D0189D
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 09:15:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C76010E6A4;
	Thu,  8 Jan 2026 08:15:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FAKJP8JX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B514010E6A2;
 Thu,  8 Jan 2026 08:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767860120; x=1799396120;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MqfuahAfr5xJ+VF+dAO0w/7s0TAUgRIrN3zccPB5RuA=;
 b=FAKJP8JX+QMKUv9Wy+3KanxrVUv4jEc5u46VP6R+B8CcShgPFnVA7HcE
 VoxKid5ew1ubs03YZHrfDQnUIgX7wg3f1eYaWDZNzoR4lUE/AyQwWYYWM
 6a1YJQP9WbAcygOJ0dW8CPJq6oALRkAgtz1aYfon/E/iQOuSWAY53eTI3
 zo0U5amuLE8Uz+1lsqMI1MsvEbifVagdkZwdc2rPIP+6RwTLs7aoafpmR
 VNu87sB3y8nLNUchJQNOm8Q8f7c8peg+BcyXKfg+dgVRrJbPaf3TTk4zi
 im7Ecbi4xtDoIsn/I+upr9wnYuBF1RyKfkSCLznGbn+auVqumT2kFChl/ Q==;
X-CSE-ConnectionGUID: J+QTlTFZRD2TSfkbWr5b+Q==
X-CSE-MsgGUID: bPtT9lq7T626Eh0lsaR1Ig==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="69214821"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="69214821"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 00:15:19 -0800
X-CSE-ConnectionGUID: 0rAPXVRmTA6cmkjatLo9lg==
X-CSE-MsgGUID: avfNH7zwQLi5plvHfdvZqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="204014117"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 00:15:19 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 00:15:18 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 00:15:18 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.17) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 00:15:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pOhBqgOHgj3Mp2jHGHRFrgUY4y7IvTWdhNSsNKXpsjWgwHTSZapIKMdBqBPLFfG2HWf8gwLmdYgwAvH48Q0FaQ5GaNm3ax5xgQlCfhoj8WS4SBI7G2vPoVbWfoKS14dPu4qF3ugxPOBk+77uy0dO8qfmBVRKoX7zAzwzMQwMRf9bUzxW2JivjYVoAH75NGUiXrw5meTpwC4Px04MgjBJhPwWbqCIg+vn1NG1gZUJHX9TvwIvnYR4PwIComyGAp9Dd779+rXth4tCtNXfbzNO5/bA3zVVvUhRv5yz5Gi05SMfKC2WO2M9tku6dmBpNi9Pp5F9JOHVZeC8313aG3Eeug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LaxNTrEJ32b2/qmajQ6BYksyzbaOdtg8rRrxizh3GHg=;
 b=kiElZCxhul8gWmk8FrtYRhzKkBSDP2c/JjxmDBPY1HBUIVKbEs0zK8BCZU95XVSq/lX8dgk8m4jX4Vxi23KQxmoHPfOWx0hIm8E+PiwfnkLrt1CBqddESlK8kRl9m3Awo+D+/3KjCoVBp90ZU/6IfoFZilhRejQHT9fr+rIX2xscIyR/ffluKo2g0n4+CdYYZxAbGpMZOmSPezzekTEJYewpBF1mfbXyN4tBJSpzIEhLEg6KqOAVGGGeuU73yzHjaJ75vfUtr7zSRm8vL0ciwWUV1lWz1afaJNtMue82zdwCISdphUKxV7QUVGUhMW9/hwtG0MaZ5A5Kg17OIwEZDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SA1PR11MB5874.namprd11.prod.outlook.com (2603:10b6:806:229::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 08:15:10 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%3]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 08:15:10 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC 3/8] drm/i915/cmtg: set timings for cmtg
Thread-Topic: [RFC 3/8] drm/i915/cmtg: set timings for cmtg
Thread-Index: AQHcV7sbmWed91CSJkuXGym15mBf17T2+fCAgFFEPmA=
Date: Thu, 8 Jan 2026 08:15:10 +0000
Message-ID: <DS0PR11MB80495C03B8BB6E10C6391ACBF985A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20251117114216.1522615-1-animesh.manna@intel.com>
 <20251117114216.1522615-4-animesh.manna@intel.com>
 <ac19565ed74a1454e0d51b79421a7461fcf69b1c@intel.com>
In-Reply-To: <ac19565ed74a1454e0d51b79421a7461fcf69b1c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SA1PR11MB5874:EE_
x-ms-office365-filtering-correlation-id: 17c9d426-a9fc-4e14-1a8e-08de4e8e0aac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?2Lpwz8QSCaZEL8Fy/HW1ws4YC56/gmrJexZe4jSWs+DCVHQwVtf0cUHj/99C?=
 =?us-ascii?Q?1WloQuehEhNBZUo41dgbZNMZNpKT1xJbeHPyf81kfmB81ceQa/S8/7rnltSH?=
 =?us-ascii?Q?JyplInbflyqRFLjr+SReqGI9Fmej2W5iE/Xqg40IuM4Az0bfpOzFdOtGfo/d?=
 =?us-ascii?Q?qBRRxmJR1lgPKsC5oYhJRhOKvJC7+s0RIzjWbQj+PRXH7k/q0nVF4GUW08qZ?=
 =?us-ascii?Q?11jG0yUBoUnW+qXC8vBLNEuXKBQoL6OWrZtkPgtmz9z2cReaGB3iGhlbjkey?=
 =?us-ascii?Q?2Pb+JWk9bzkT1JAVCv9WfpLdF65ahw8jfCKuSBus2vtIOr/dd6ChcsZ1pa0j?=
 =?us-ascii?Q?Ixaro5AFNhMyeNRiuARAovqznEN926ZXTaHXA6PnppNtkjPTVozHJJzSi+rZ?=
 =?us-ascii?Q?To0K/Z2PJ0T3nyjm401jtAfDMwqzFbod8EECtF4SaMUiEVryK/h98cvqqzUp?=
 =?us-ascii?Q?9Gyctsy2lm8a4bUQqLUYqHEhpSQBQFOM8iPgvbAxgAwjGs2dV/Vl8iLLhOz9?=
 =?us-ascii?Q?Jw+gv26GNSrDlTkwxbWhhqPCEQSfwYFihFfZdfynBqwvF7b5VQ/zS8kOaQGQ?=
 =?us-ascii?Q?Rxd+Ev7ZVJnxD8b/AaYFpkLicV7lY5KlOusrxHP+RlmH38s1b59l9ded+vuM?=
 =?us-ascii?Q?IUf5+g8G7ZlMqrK1lOY529yoXP3WYViuh2i5nwzCn2COe9tztoY8eJNhg8jz?=
 =?us-ascii?Q?OhK/+VtFy4gAUACanRRv/A5Y+yoA1Z4Vv9y5yHRAYZ9mAodGnGy8pAsjGS1+?=
 =?us-ascii?Q?/HxQJvlZfFOcWJkjVcXAnNUU1Wyw1EMOeihd3T2MUTI2RWUOd2IX/9R8bQop?=
 =?us-ascii?Q?NKFXiZEJwqnyVaRNzSwqwZ4M89ggo2yQqdZBO55673qRI+BTo2kNQ3kfytn8?=
 =?us-ascii?Q?iYcqaDZF3ut8PzZ4KLyMPvUo6PIe31x7smuMDz5+tNHJCj4EWyTvEr7Rpdx0?=
 =?us-ascii?Q?/kC/OUuqwBw+mh2kuR+Fs3F2CgJCVRapUaTLvScdYUaWB1FSAVzhOhIo8T3n?=
 =?us-ascii?Q?7eY/VFbHOXElJlsgYfFevn1XnpoKPdWEdXlP70xZoHPnFRTmyivHLguSRDKu?=
 =?us-ascii?Q?G8oCoZr8kxUsLvnf+tjLhkc98Mt2+id873DGDcHqM+fykpYoyAi3IFpT60Qp?=
 =?us-ascii?Q?hIO13R/jlyVedMVgmLgaKwYzoMNxhDQmCYEfToNohx8BcflsHAsXHXyG/wEO?=
 =?us-ascii?Q?ulaaIMVkGEoGruZAQ87qUYnenIbFCVM1wC/b2Uw3cEF8us2GNGxuLsToQL7o?=
 =?us-ascii?Q?4/k7VQJ+UNzZerRUZ0tW92gLdgl9+vcBFLOGCAzgdVT5CV5U2LGOFOi0euXd?=
 =?us-ascii?Q?eQJssvQEKD3p8Ch7yn5UK0Zu++nMCwxribyABgobgoxmv4hebam1JnJzPh1j?=
 =?us-ascii?Q?dsSIZr70xZtswGRRfJhGs5oT/+BEj4h6BLLz6F0z/jSZ4Yq3V/qToIadIbU8?=
 =?us-ascii?Q?/9SaEGPcO0//IjuCJ5hfRYIn/0LKEjGYCMEhexTgYk12XkTM4/O+amyHt9eZ?=
 =?us-ascii?Q?hp50DvNfgSQn7gGXoJ3UB+SOu0Tf95NRnRmE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xLWTbDtBA7e4MMyCyh9788xFnG8m9jeqFB3L6dl82zifPaddFIW8BFfXlz7c?=
 =?us-ascii?Q?MWBa35mWnz80yyNNeJFPA/cul0SYFuYMMVs2sV0vn1vHUz8chNCO4Zd5/PM2?=
 =?us-ascii?Q?XkjExS//i3oGerYNUDeNyfInLYf99t2n/bVpiuq0SpVWKUO1LDyI5Fa/tskA?=
 =?us-ascii?Q?kBGydq64a6RSoaGF2fkGlwy87k7t4Rsx6dYcWw82JSfGQthOs0cMp3sBWFbJ?=
 =?us-ascii?Q?I5ufuKJnI3N1ZLxt3d1hOFj03hO3QIQVuPAauGxq26ak8cFryp8EQG23Osw5?=
 =?us-ascii?Q?SsFQzFeTplIZ2/W+zFQOFBkQa9p/YRi7GO63rvat3d8cyNBJj7khdEgJazw9?=
 =?us-ascii?Q?puHilnOv56X6Ui1ryanTSM31oVOONUvKRuKd4HutSMEykR7iwyL7obTvdbux?=
 =?us-ascii?Q?lrq1XvavOzgSMisocE6kyYTq+yN9uSFHxtNfm8uyOoE3i8VuZfuCOqZbDZlN?=
 =?us-ascii?Q?CO5kAiUeB+hxweZ1oM7gcjMDstPF6DReVxjeZ7TIPnSmcEPwIhMy61cOmTlR?=
 =?us-ascii?Q?Yegp3wHe8ExTKyf9UCB2hlxepxvcDp8T1QsjwlJ8fs1o60YI1xP0ChKPyO5Q?=
 =?us-ascii?Q?E9xjVbpkURE0VCzzm73feuuTk+mW2EhEA2FXfg2cx8BTJ3XDNc1OgNthH6dO?=
 =?us-ascii?Q?UY0A6s/YXkY0C1p0CHiRGxKEF5RLZcG6hLdWqEnlgVcFEiQVBakxKRUKF3iP?=
 =?us-ascii?Q?C016H6O9fYQW08Dk/2f799YBQsl1qZHz4HvBiSIKQt/WxPp+d+AY3aqsOyCW?=
 =?us-ascii?Q?lUdmF+SR3WHGvYBd6SMmyFbDw4wtvs9e5kvfl0ss8v2t3AXJDx4dq5iMK9fN?=
 =?us-ascii?Q?1yPZ0yoOImwfa8SooMhWFPH0/LMg/SiuYIztUQGpkIS+sjz1ar+yCrL7OI7Y?=
 =?us-ascii?Q?lfmneIzKzGwYg+m2k15zAZcOKHssjGlogyxJtpC54tsC05nN13yhXgu0IHZ9?=
 =?us-ascii?Q?XYqIsijF9kGk74VOnti4cZ7nleiifpuHm9UmZhuUIxGBsdoBQY5HORThMO5p?=
 =?us-ascii?Q?zwfkRt7iWMf8AQ5yg9Aawyn4zwATb+l0xRssP42XzHCirimhDueW+UWamKT4?=
 =?us-ascii?Q?X+gmmqjnnt4gzbkfc1Ibzel9sjHvNgf7lc4aSCVr5kjtV3ApNurI78MlpHGs?=
 =?us-ascii?Q?jy0vTNlVssEf3vfFFiTKhSxQsuZVfiGfQjm6Psigh2vwtoMQdbzB+UBnbKdR?=
 =?us-ascii?Q?d3ffRqQEZcVFaJt8Tl3D1Q6jEJZjrABIg5F+ZyW5KelPC7g3+vnACzWW7o/1?=
 =?us-ascii?Q?C2ic5zUeyxTUVSjzpfwyUEDakMuKg9Bo0kXzVuZek87MCxgbn17em724Xlyf?=
 =?us-ascii?Q?PwBkwcTXz7xEjYnvIqnGrduJqT4tS4eOdPJvxkwlTYsZACKKsjmSlUk8PvLk?=
 =?us-ascii?Q?Fet01hXb3yNhdWB2mn2TZ5JEd0JZM9hZGKNvG9Ur8fHC5QNRx+RgqU6y9a3/?=
 =?us-ascii?Q?oZtiLKmW2ckdJkAFrTOYdO9M9mTUYTE/I0BtiQj8NyddKZ7ymbpRKKO1YiUJ?=
 =?us-ascii?Q?DZE9GpV5Ka65tQ2McyG17qDbFaXwr5H+NXT0V/eglbWXOLnqBWu1k6nPkTlm?=
 =?us-ascii?Q?fl99m4e807gM+1tYP8VUO+hwy/byODwzPQCgzk56mXNRlJtdWnjqK9WV2yn9?=
 =?us-ascii?Q?cGbOeGwccKHjDcgJUTqpGes2HWWoCp9RgY+XH8MXsiR/3bWJwu8AWBDEptCj?=
 =?us-ascii?Q?7gjbli6uI3Z94+NDP21OB6O3AYX+F5Cdh5twW9S+zzVxfRqNhb9YezdWoapZ?=
 =?us-ascii?Q?itV9i8GK1A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17c9d426-a9fc-4e14-1a8e-08de4e8e0aac
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2026 08:15:10.4061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7lXUOw8Ho6CYsw0GsYgySmg9/nlLo2z0lHZ0qZSSAGjNzea7Y89BGxhHBMeAIbNjnSdgFlrjaMdj0Q5lEd6Ocg==
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
> Sent: Monday, November 17, 2025 8:43 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [RFC 3/8] drm/i915/cmtg: set timings for cmtg
>=20
> On Mon, 17 Nov 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > Timing registers are separate for CMTG, read transcoder register and
> > program cmtg transcoder with those values.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 31 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
> >  .../gpu/drm/i915/display/intel_cmtg_regs.h    | 13 ++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
> >  4 files changed, 49 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index 4640cafe8dde..5e9aaa50b38f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -208,3 +208,34 @@ void intel_cmtg_set_clk_select(const struct
> intel_crtc_state *crtc_state)
> >  	if (clk_sel_set)
> >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set);  }
> > +
> > +static void intel_cmtg_set_timings(const struct intel_crtc_state
> > +*crtc_state) {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +
> > +	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
> > +		       intel_de_read(display, TRANS_HTOTAL(display,
> cpu_transcoder)));
> > +	intel_de_write(display, TRANS_HBLANK_CMTG(cpu_transcoder),
> > +		       intel_de_read(display, TRANS_HBLANK(display,
> cpu_transcoder)));
> > +	intel_de_write(display, TRANS_HSYNC_CMTG(cpu_transcoder),
> > +		       intel_de_read(display, TRANS_HSYNC(display,
> cpu_transcoder)));
> > +	intel_de_write(display, TRANS_VTOTAL_CMTG(cpu_transcoder),
> > +		       intel_de_read(display, TRANS_VTOTAL(display,
> cpu_transcoder)));
> > +	intel_de_write(display, TRANS_VBLANK_CMTG(cpu_transcoder),
> > +		       intel_de_read(display, TRANS_VBLANK(display,
> cpu_transcoder)));
> > +	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
> > +		       intel_de_read(display, TRANS_VSYNC(display,
> > +cpu_transcoder)));
>=20
> If something needs to be written in multiple places, it needs to be writt=
en
> from the same source software state, not via hardware like this.

Taken care in next version, currently debug ongoing with flipQ, will float =
after that.

Regards,
Animesh
>=20
> > +}
> > +
> > +void intel_cmtg_enable(const struct intel_crtc_state *crtc_state) {
> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > +
> > +	if (cpu_transcoder !=3D TRANSCODER_A && cpu_transcoder !=3D
> TRANSCODER_B)
> > +		return;
> > +
> > +	/* Program CMTG Transcoder Timings */
>=20
> Is this comment helpful?
>=20
> > +	intel_cmtg_set_timings(crtc_state);
> > +
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index bef2426b2787..113042e5d3a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -11,5 +11,6 @@ struct intel_crtc_state;
> >
> >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > *display);
> > +void intel_cmtg_enable(const struct intel_crtc_state *crtc_state);
> >
> >  #endif /* __INTEL_CMTG_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > index 9fd54f7e9d1f..47403bbcac7d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > @@ -8,6 +8,12 @@
> >
> >  #include "intel_display_reg_defs.h"
> >
> > +enum cmtg {
> > +	CMTG_A =3D 0,
> > +	CMTG_B,
> > +	MAX_CMTG
> > +};
> > +
> >  #define CMTG_CLK_SEL			_MMIO(0x46160)
> >  #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
> >  #define CMTG_CLK_SELECT_PHYA_ENABLE	0x4
> > @@ -20,4 +26,11 @@
> >  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> >  #define  CMTG_ENABLE			REG_BIT(31)
> >
> > +#define TRANS_HTOTAL_CMTG(id)		_MMIO(0x6F000 + (id) *
> 0x100)
> > +#define TRANS_HBLANK_CMTG(id)		_MMIO(0x6F004 + (id) *
> 0x100)
> > +#define TRANS_HSYNC_CMTG(id)		_MMIO(0x6F008 + (id) *
> 0x100)
> > +#define TRANS_VTOTAL_CMTG(id)		_MMIO(0x6F00C + (id) *
> 0x100)
> > +#define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) *
> 0x100)
> > +#define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) *
> 0x100)
> > +
> >  #endif /* __INTEL_CMTG_REGS_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 069967114bd9..19242c12f52a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -63,6 +63,7 @@
> >  #include "intel_casf.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_clock_gating.h"
> > +#include "intel_cmtg.h"
> >  #include "intel_color.h"
> >  #include "intel_crt.h"
> >  #include "intel_crtc.h"
> > @@ -1669,6 +1670,9 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
> >  	if (!transcoder_is_dsi(cpu_transcoder))
> >  		hsw_configure_cpu_transcoder(new_crtc_state);
> >
> > +	if (new_crtc_state->enable_cmtg)
> > +		intel_cmtg_enable(new_crtc_state);
> > +
> >  	for_each_pipe_crtc_modeset_enable(display, pipe_crtc,
> new_crtc_state, i) {
> >  		const struct intel_crtc_state *pipe_crtc_state =3D
> >  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>=20
> --
> Jani Nikula, Intel
