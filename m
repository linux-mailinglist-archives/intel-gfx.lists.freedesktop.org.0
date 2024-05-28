Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F758D174D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 11:33:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED0F10E175;
	Tue, 28 May 2024 09:33:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XH0IOo8Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2676E10E09E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 09:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716888809; x=1748424809;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y2O2SlvoAq30NbTnmcGs5JhUWFG0MgXIdeLstatHytw=;
 b=XH0IOo8YnXIf7qhTLXfzkFtNPst2F3+FsvbDEM9L4SWyuwzeOmbAaKXr
 Oxt2ZbqguxUuB8LPphIo+SvrPXZezK3NTNeDAZqnO58nkxCbzRvfzUZUc
 9nAsv5LoRWLoyuLcxc0aCNnKMALFSjraHfdSgbKvHJEOhn5YN6UkQGSSy
 D60jFac8zjis62oS2CIGSsOd78FED67SAD/cD+jmKjEGvgrjdspga1yFb
 lsq8mYM2q15m2WL1uHmGMNAOjFVe+cT8usowAUX8znwqA6PUscJ47Zu5X
 e0uiQREfmVStMxYj6WUEpLcQ2PX2wVZi2U2AMFDzvieDHWLTBr4H7gJCT g==;
X-CSE-ConnectionGUID: l/3Gx1F6S/ukV2TNc3A3SQ==
X-CSE-MsgGUID: r9UN51TOTdy0liqqmleZDg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13343392"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13343392"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:33:29 -0700
X-CSE-ConnectionGUID: 9bteUpU1R+W3CxOY+EZvhg==
X-CSE-MsgGUID: fRgmq2lfTRyQLG7EyX617Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39831647"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 02:33:29 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:33:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 02:33:28 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 02:33:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hmX0usgPau2VVLtEbSar+R6trYEoV+dN2NHCIAsZqez6CWqIe0u4OMZLi9f3v1XQPkVPymVnMQa27FrQbQvBG9KSAk/+16ymYtKbDR4PmB17u5cZ3fM1+d9/EgezOas5bQGbOE8bWOVwAsBnnm9oBwhYVWsCzYxzfIvaax7BEgSTHn7b3INxGSVWfw1jG62ppOjt3hrbghL5KI4Ar81madp2J4DpmmBdK0F+iKbmArb7SmEjV4Ubgl/ndzEsReiENT7JKEN5vL9q/CAyXl5jAUH1tTdgaxkLfRuOkgEpKpwRi9KOEzasg3KAZMN2QvLCY8dEdigygIuLs1eukeBsjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e8SgTm2lgvqefy9sjnW1riP348sk2UcrTGi5sloHjnk=;
 b=iuznTMFYar+fUEESnWlywVYnrPssip5+5ZRCs6rJfoEQDvVD/nvdpf9CFOLoYEcPNyu7PouUjWZTa0U/XXCLLdu5vdoqeEnINIlmo2vLvzM2ztIEG/WwRwLFZarTO5z9hDAFa5q1hCSyYiHDMYk+oTDe2jOTmrGPo47J9EWjNJIHRBb/n9gLTP3pLeXllnLs5RMmNZ2ELUvmSwulsJXVgVV08M5vsfoGtFB/eZDgtsn+clp3+kqOqM+jafJY7GhrfPyxUGTKRQujCmf+9bZTyNDA4ImuV/x0LQ7Mc1ldcp56cWsXwS/K8zuNrB/MkJhxs4pyLGfTcQvIgoEzIw1pPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB8291.namprd11.prod.outlook.com (2603:10b6:303:20d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Tue, 28 May
 2024 09:33:26 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7611.030; Tue, 28 May 2024
 09:33:26 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [core-for-CI PATCH] Revert "igc: fix a log entry using
 uninitialized netdev"
Thread-Topic: [core-for-CI PATCH] Revert "igc: fix a log entry using
 uninitialized netdev"
Thread-Index: AQHasNMsN6xzXQOIUUGLAqQLJhostrGsYknA
Date: Tue, 28 May 2024 09:33:25 +0000
Message-ID: <SJ1PR11MB612930E76F55C76AF0256B65B9F12@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240528074614.3306301-1-jani.nikula@intel.com>
In-Reply-To: <20240528074614.3306301-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB8291:EE_
x-ms-office365-filtering-correlation-id: 336ccc25-4153-47ad-2ea3-08dc7ef939b5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?7jS7LZ5WF/KRXQhrnZjETYkjvw79To0Z5mPjjcJuTIo0VZ9VYylPGUpX5vL0?=
 =?us-ascii?Q?KpqNhx3WuPBqap4zjmt4UVzGR8yhgBm61hmmHpHuCbiKQhCU4A4/bJ9UQd3w?=
 =?us-ascii?Q?1OuWuEOXKrdQRYJhmfAPXlvLujbjVKzNX6GBtv9InD9PIKu79YVSKbDW/uiB?=
 =?us-ascii?Q?Mf0Ah/guftL3N3xEwXH+ude3Qrm+WJZgnD83PT3gk8GUS5R9qNcVMR7/QDFc?=
 =?us-ascii?Q?kq6f2VP26dF0jaMMG+uy7SSfwIna3xD57PukR3egLiYgL6tHea4dcajBDAby?=
 =?us-ascii?Q?5rxZQoCWBkfcXkeHyNIVF9LR6BC/ts5AdCasUx9L7hrpu3sVSMgiYl06AFdq?=
 =?us-ascii?Q?7aJu0fXap79FSyWRlr+Q3OsSwTES9m27jrJkeFkhFZIcoljrBJm8EZJFPEtA?=
 =?us-ascii?Q?8VbetMJqR52uJqcI9Shnzy0kVBcVh0+tAApy03MKjVtySDH8hLxSB2KJo9/u?=
 =?us-ascii?Q?o7/uOCcOhpBZTdds8AAjjQNJKHgKuWii013wYF3wp/YK++cgpjclfiKEc3qm?=
 =?us-ascii?Q?MZLgRXw81ke86WbjPQNwzh0+sOWl3z31NAtcMB+HNVtGssbZw2MVQ0Z5Lowj?=
 =?us-ascii?Q?l0t2kH2b7qPfcYNWQDFTT1L1XMa03RfP7MqfsHL7n6IICc9oCVQVOMNklu1K?=
 =?us-ascii?Q?FgIvEain65crHgw//VuNW8Eqr3tfa9JfpL1lRwBMh7T5ClIAJvMIJh3NWGY1?=
 =?us-ascii?Q?Ll443TsLrInXG3a93Kfc3XX3TjfwhkwqIoBgPOHB0jxCsVvlCEEWEivfgUrz?=
 =?us-ascii?Q?hl0e7ruv0UAxTVJ5qtKdN7nMCm6E+vVMn1RJ3pqCnhLJtQIZjjXnpInkpwfV?=
 =?us-ascii?Q?t5dURD3kMUFZTo4EPkkDAbEnhNVPx2sithVmaK/7gLdxQnYG6BVnknmSr9JR?=
 =?us-ascii?Q?71JmQsd9HmNBbFWuY0tY4N1KKvTNhVDqOxDaq8l56qy2ahilBRB1mANciJJ0?=
 =?us-ascii?Q?FBADxmTR4joYnGvO3wKGxd7ehtazstBwhiQOy5f/iWR0lcM2pUcHKbQX1njS?=
 =?us-ascii?Q?kUVcMVzie2lv+vyeV/DC2kC87D4i66/oU3ouSjpC5NjbKH2uz0lxz2qOVoCY?=
 =?us-ascii?Q?BwDtSuQ5vK3cgD/qFHtkK8VQF/Hsb9KQqFI/s5OU8VyPpVJoMAzMM+fSDySK?=
 =?us-ascii?Q?iqj6v3kFRCHZfbcwt9nV4Wya1tZ0A9uXnB62Nr+idC6UCyS+OjI3kpWSt7tz?=
 =?us-ascii?Q?CCcgzJVy+5OwHb+jMeKxyoiMTAhQ9oIg4lPOIK5c3a53IpDFZyam2/a5KJJw?=
 =?us-ascii?Q?o/Qi79JdOPH8bWEWwKaxPDxlxRYAvEiodWGyt950E2psCeFLkoT1VTKsmQ5N?=
 =?us-ascii?Q?veA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TW6zTppEOzlmWXfXJ5Lbv7iFTQ6D8wumublDqbV0gG3GGApjaNS8WyORl/Db?=
 =?us-ascii?Q?b8RTydSTsdJUyf45dgGfbHLYtZtqj+bdRAoL+V5TiNnlbDolC+SyX3N98WyC?=
 =?us-ascii?Q?Iyoxko/wXFASxhB+eUol2C1dG5EBC3Y/XgJDLiVKwe8UTlR2V+ySWXtb8jvS?=
 =?us-ascii?Q?+AG6vGceQT1EwQ8OUKo8obxK1TATzzXM+ETP/pQCN15YHRKySpE136QtHdfJ?=
 =?us-ascii?Q?gwuCUvyflJcc1I9REr7fpxQVHMqcln9gbQveZvedU/rljFtLtgzJZUbRgPEz?=
 =?us-ascii?Q?UbMAzGqo/3RBDM1qWOcjzdypj58NTcq7Mdep3QuqJLUYaZavH+twJ6XFmy2P?=
 =?us-ascii?Q?BrPZK3G8W3d7M698uvxGsry6+ig4vG7SaCgAN2DHBQlGWnZHnbXit7IUJ+Ba?=
 =?us-ascii?Q?SvH+2s1yvHZ4CzW5JplKkcCOmlRbAVCoPQDg8YPN/5m/qcfypOZGAn2WQX5Z?=
 =?us-ascii?Q?I8+6WMGiLYMBFC0uyJ78pef7J4QWpCRzBfUoz8UhQe7Mh4q0THzirhNH8LHl?=
 =?us-ascii?Q?/yl9seOIH/01kvMVmYOjk+Wnf++YX6AfD4EEtgwOd9W5DQhXbicp/XyYhn3y?=
 =?us-ascii?Q?NFWmQ/0o9Fh9F3eYludj/eK/u2+/WBTSVuu0OhOLLls8EzTM9p4+/hDzR0/W?=
 =?us-ascii?Q?wq7aa+/3b/lkSZvhy8QcaLO6Hd2trMG0QX2Pf582rBAWtOvp/8seBbZ5kgsm?=
 =?us-ascii?Q?qGYGNA9zcG7+kEfB4mzUFhE5EhK9bTG20TxjRB3+vcFM07yoeHllEoSCJMTi?=
 =?us-ascii?Q?NiCpEm22QtDK/CpHmd2ca9MBfV7ifZAefGM9DaSc2Mv8DMP9LvO0U4IHJsmb?=
 =?us-ascii?Q?OU5MKstlYXj9YlTIfOU56hcA5RvUlEZQ8sghcmva3oIIcpQeOFCyhsc3Ask0?=
 =?us-ascii?Q?9knth7W5/wP+0PJi4ilPz4SyM/OrzZ4tUcdl1vj2JtL6qSG/8pnFJjw9ZtmW?=
 =?us-ascii?Q?ZnDtmKJ4zTFxuMTpNI+JP40AaaEeuQCMMna2sIRrUnuqX/pJqjIvXTEDs/kd?=
 =?us-ascii?Q?MCHhxJGmFNkv+PYbOr+g5ahw5ioXS3CZwy5pi/MNqxoo4NXYMjd627tUH1zp?=
 =?us-ascii?Q?dL8Xu4XXZX+UO7Se7JzyYZE5BXwR3GtaIfQveQw+oJzIy6hp8jE4+jEwtScS?=
 =?us-ascii?Q?j8h1xL4azainDksbxKQTDio4tpTxL5KZsRRJp1PkhpoJwMag7Zf8isx3EBkg?=
 =?us-ascii?Q?/2R9lME+KURu90IFlT6S+6FqfLwP9SPDGLOYbMW3ys4P8yn5lccUu/tkcHiH?=
 =?us-ascii?Q?6fudT98uBFT0JbPv1X8qDVU44r0zGHgjFUzaVUhI2FRW8y4nLrwf1pbFom7U?=
 =?us-ascii?Q?LF439AmyMu07+hJF2qhWvYE5D2E5NtS6qEVL0J53sH0duS1gnEA/Fxfh2RV0?=
 =?us-ascii?Q?rC24Xx3SsW0BPzuk1cfdul9ER6plDfDE7NygP2w21TRfzQfcYA80iuwrYtEq?=
 =?us-ascii?Q?W9gQ1sCip2AkV2YGecdgOlyha/+p+/sWI+0RHwtxMG7H91lPeDQFwaOA5nbC?=
 =?us-ascii?Q?hODnvNnyN4ErzV4ZEiUHDDbpxESKx2EGEE15kLhMV0W9VpR7oQprrUOgi4pR?=
 =?us-ascii?Q?SNtYE2hAN5svdpvuA5aqj17TRR2VKsl6l0Ai9f7t9Ajy757219ChIvIQuEy9?=
 =?us-ascii?Q?fQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 336ccc25-4153-47ad-2ea3-08dc7ef939b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 09:33:25.9539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LB/HKM/Ql0QOkGuG8+ImRqvV6GQcI3oyiNOw28Vx77BsYa0E5MAi06EOrXizhM5+TWyIpUpFZvhlC0KP2xZ4N+duJuXV9qAJj0jHIB6d34k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8291
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Tuesday, May 28, 2024 1:16 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [core-for-CI PATCH] Revert "igc: fix a log entry using uninitial=
ized
> netdev"
>=20
> This reverts commit 86167183a17e03ec77198897975e9fdfbd53cb0b.
>=20
> The commit moved igc_ptp_init() which initializes spinlocks after
> igt_reset() which ends up using the adapter->ptp_tx_lock. Lockdep isn't
> happy:
>=20
> <3>[   10.648947] INFO: trying to register non-static key.
> <3>[   10.648950] The code is fine but needs lockdep annotation, or maybe
> <3>[   10.648951] you didn't initialize this object before use?
> <3>[   10.648952] turning off the locking correctness validator.
> <4>[   10.648954] CPU: 2 PID: 313 Comm: systemd-udevd Not tainted 6.9.0-
> next-20240513-next-20240513-g6ba6c795dc73+ #1
> <4>[   10.648958] Hardware name: Intel Corporation Arrow Lake Client
> Platform/MTL-S UDIMM 2DPC EVCRB, BIOS
> MTLSFWI1.R00.3473.D80.2311222130 11/22/2023
> <4>[   10.648960] Call Trace:
> <4>[   10.648962]  <TASK>
> <4>[   10.648964]  dump_stack_lvl+0x82/0xd0
> <4>[   10.648971]  register_lock_class+0x795/0x7e0
> <4>[   10.648978]  ? __free_object+0xa1/0x340
> <4>[   10.648983]  ? lockdep_hardirqs_on+0xc1/0x140
> <4>[   10.648990]  __lock_acquire+0x75/0x2260
> <4>[   10.648993]  ? __switch_to+0x123/0x600
> <4>[   10.648997]  ? _raw_spin_unlock_irqrestore+0x58/0x70
> <4>[   10.649002]  lock_acquire+0xd9/0x2f0
> <4>[   10.649006]  ? igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]
> <4>[   10.649027]  _raw_spin_lock_irqsave+0x3d/0x60
> <4>[   10.649030]  ? igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]
> <4>[   10.649038]  igc_ptp_clear_tx_tstamp+0x28/0x60 [igc]
> <4>[   10.649048]  igc_ptp_set_timestamp_mode.isra.0+0x20b/0x230 [igc]
> <4>[   10.649056]  igc_ptp_reset+0x31/0x180 [igc]
> <4>[   10.649066]  igc_reset+0xb4/0x100 [igc]
> <4>[   10.649079]  igc_probe+0x797/0x8e0 [igc]
> <4>[   10.649091]  pci_device_probe+0x95/0x120
> <4>[   10.649095]  really_probe+0xd9/0x370
> <4>[   10.649099]  ? __pfx___driver_attach+0x10/0x10
> <4>[   10.649101]  __driver_probe_device+0x73/0x150
> <4>[   10.649103]  driver_probe_device+0x19/0xa0
> <4>[   10.649105]  __driver_attach+0xb6/0x180
> <4>[   10.649107]  ? __pfx___driver_attach+0x10/0x10
> <4>[   10.649109]  bus_for_each_dev+0x77/0xd0
> <4>[   10.649114]  bus_add_driver+0x110/0x240
> <4>[   10.649117]  driver_register+0x5b/0x110
> <4>[   10.649120]  ? __pfx_igc_init_module+0x10/0x10 [igc]
> <4>[   10.649130]  do_one_initcall+0x5c/0x2b0
> <4>[   10.649134]  ? kmalloc_trace_noprof+0x22f/0x290
> <4>[   10.649141]  ? do_init_module+0x1e/0x210
> <4>[   10.669989]  do_init_module+0x5f/0x210
> <4>[   10.669993]  load_module+0x1d44/0x1fc0
> <4>[   10.670001]  ? init_module_from_file+0x86/0xd0
> <4>[   10.670004]  init_module_from_file+0x86/0xd0
> <4>[   10.670009]  idempotent_init_module+0x17c/0x230
> <4>[   10.670015]  __x64_sys_finit_module+0x56/0xb0
> <4>[   10.670019]  do_syscall_64+0x69/0x140
> <4>[   10.670023]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> <4>[   10.670027] RIP: 0033:0x7f6d2704595d
> <4>[   10.670030] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e f=
a 48 89
> f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48>=
 3d 01
> f0 ff ff 73 01 c3 48
> 8b 0d 03 35 0d 00 f7 d8 64 89 01 48
> <4>[   10.670032] RSP: 002b:00007ffc72aad018 EFLAGS: 00000246 ORIG_RAX:
> 0000000000000139
> <4>[   10.670036] RAX: ffffffffffffffda RBX: 000055d3f0e69690 RCX:
> 00007f6d2704595d
> <4>[   10.670038] RDX: 0000000000000000 RSI: 00007f6d26f25ded RDI:
> 0000000000000010
> <4>[   10.670039] RBP: 0000000000020000 R08: 0000000000000000 R09:
> 0000000000000000
> <4>[   10.670041] R10: 0000000000000010 R11: 0000000000000246 R12:
> 00007f6d26f25ded
> <4>[   10.670042] R13: 0000000000000000 R14: 000055d3f0c64d20 R15:
> 000055d3f0e69690
> <4>[   10.670046]  </TASK>
> <6>[   10.672046] pps pps0: new PPS source ptp0
>=20
> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11198
> References: https://lore.kernel.org/r/87o78rmkhu.fsf@intel.com
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Acked-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>




> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 12f004f46082..ace2fbfd87d6 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -7028,6 +7028,8 @@ static int igc_probe(struct pci_dev *pdev,
>  	device_set_wakeup_enable(&adapter->pdev->dev,
>  				 adapter->flags &
> IGC_FLAG_WOL_SUPPORTED);
>=20
> +	igc_ptp_init(adapter);
> +
>  	igc_tsn_clear_schedule(adapter);
>=20
>  	/* reset the hardware with the new settings */ @@ -7049,9 +7051,6
> @@ static int igc_probe(struct pci_dev *pdev,
>  	/* Check if Media Autosense is enabled */
>  	adapter->ei =3D *ei;
>=20
> -	/* do hw tstamp init after resetting */
> -	igc_ptp_init(adapter);
> -
>  	/* print pcie link status and MAC address */
>  	pcie_print_link_status(pdev);
>  	netdev_info(netdev, "MAC: %pM\n", netdev->dev_addr);
> --
> 2.39.2

