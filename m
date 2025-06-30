Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA69AED470
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 08:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2D410E0C1;
	Mon, 30 Jun 2025 06:23:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EB9onps3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2D610E0C1;
 Mon, 30 Jun 2025 06:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751264632; x=1782800632;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lUW40jRaz+oCZaFzwfBgRavVPU0CxsBWCRyq+2iIRJM=;
 b=EB9onps33Pe+nvqSQYNioYs+WMtEtFX/GY5isiScMPKWxMHE1VtlJAA7
 JQ45lxXP/XBr2ogNWsCSFLHXX8nSSIfzCT5MgWDMj7VzgEIBr4yh3WS/O
 5gYEGa7fnxqWZBtga4bjYzJtyRP2V1eHSkLtmYnbKHbXQr5klC2ryRrI5
 mbkM+iM+7tQg4VuwuXKqJGmypVN0Dkiku4mCyCEx97MadArBNwagtAFAs
 8GIacMCKxWkyh6ytYCZaxPZwFzldNe7K6KGhsEOJKlJWFuqSoRlxCxcQB
 G9kr69TCIKn7vC4biE0IDxV8QCKBD5ZvBcBswr/u/4+O7c2zvaqP7gBUh w==;
X-CSE-ConnectionGUID: UXEsANWUQBeXVj8VcmqWww==
X-CSE-MsgGUID: F9tfsoP8THOZiMQ/8Xbbng==
X-IronPort-AV: E=McAfee;i="6800,10657,11479"; a="71046790"
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="71046790"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2025 23:23:32 -0700
X-CSE-ConnectionGUID: 1QYiKCqCQhapA4/0OXfaHA==
X-CSE-MsgGUID: NOmOKLxQQd2UA0B/RC1dEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="184288851"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2025 23:23:32 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 29 Jun 2025 23:23:32 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 29 Jun 2025 23:23:32 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.68)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 29 Jun 2025 23:23:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aYqYxo5GTmePVAkHSqodq8n7CblvC8Ng3IphjPHUcNF0WXhOwZAb24e36BPWHxRsMZao05USHupTY9458FXR4SPkfXJ2tX1ZkzwATdrYDRcL9YkJk/iu2sUJ3FZ/HhNngWnR+y7HAd2lxbjUXb0FigOLmOvnS0lsJPTzcDaZP7TWCqzBUY7xmH/NUBoFY9poNKVf3t0i2mOP8Kug1hpBahMivffFWfDRLdgdiLAMBesTVW32s9okmiI05D0BcUsPOO3oDvsGjzv7lsQYZm6BuMltmazYRcZvLfSUiTJPjSw4ZkarIkVN94XQ+7EUcQqsc5XjnPejzcDbVS2G0fnbtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yvsKWcR/5cGF0LimITIpaHkZZPEA+3N8FF2eSSTdyf8=;
 b=LQKZbwnTdsgEv3ZvgKmSSz8d42blQf+PMoXcQ5ngImo4uQqy6OXOEcWaDk9s33k6spOY3+qRYovt7yDrTsL1yxMCz4Oufgp+lLRBJGnjzney1Qiubk48480E46lfw0RDOsWSPzo57iK++TlnGfKAkJXF3YCwJ/TcIF0BicEhJ8Enm5mwwdF8O/zTlE1v94oLt+03MMEEFRmFMpoY/It8LHSDSyZDsemMJxOwI5B2fTuC3ahTFI16uuRF7u9JqzRBTshqHewRNP4YdyfwkYFo4YilWfmMo1RsQ22VeUyeeE3+dlIHGsXCCeUtvipe9zrtz0xe9UVU8jAs3PE8mkjMWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA0PR11MB4766.namprd11.prod.outlook.com
 (2603:10b6:806:92::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.26; Mon, 30 Jun
 2025 06:23:28 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8857.026; Mon, 30 Jun 2025
 06:23:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/8] drm/i915/hdcp: use intel_de_wait_for_set() instead of
 wait_for()
Thread-Topic: [PATCH 5/8] drm/i915/hdcp: use intel_de_wait_for_set() instead
 of wait_for()
Thread-Index: AQHb5sHrOdIryzyzZkaT1qQhuRxslrQWco6w
Date: Mon, 30 Jun 2025 06:23:28 +0000
Message-ID: <DM3PPF208195D8D8168BCD801679BB30264E346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1750959689.git.jani.nikula@intel.com>
 <5c6cf8b4c656db56084067ee4652c7885d9c8c55.1750959689.git.jani.nikula@intel.com>
In-Reply-To: <5c6cf8b4c656db56084067ee4652c7885d9c8c55.1750959689.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA0PR11MB4766:EE_
x-ms-office365-filtering-correlation-id: 389f9310-f15d-4cc3-ffb7-08ddb79ea07a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?bpC/qgE943Xt+FtJ7O0eY0Of5glueGYQ6Jcsp/HhzNew6fg5Dk+RfukJR0tp?=
 =?us-ascii?Q?VuIkPU5xwt42xy884NBIFoXjNsS0bjFTcdDsTaOqT98UDc/gIdXnxLoNZy4p?=
 =?us-ascii?Q?5jstsPKTYDsfS8TLKxjZgduiKy1SbcQsxjNSOw7VFvnCDyeNH91YGN6aRUFG?=
 =?us-ascii?Q?svCtM2dUlixlDNVxbFhilaqreLP1qetEkiN4KdfsogH51XrIsJmYSDt7ZHqZ?=
 =?us-ascii?Q?DU0XlJwXXIIu9CptzJAwcqDLhJSKf36ftj0GyjS1tGKocst9ylCI/AYqptZS?=
 =?us-ascii?Q?F0L+Titb/l+HVqRzWDPTbaPdXSGlS8zmjLNblazvWFBBVOdMZDaAq69u/Wll?=
 =?us-ascii?Q?C0L6jTu/jbdhvi6pUFwa2WNxs+oYXyfqypm87LMDINgrjpgE16oq0nIDEJ6d?=
 =?us-ascii?Q?hqB+E3FiEm4AvyCzbw+z04FFH8eqt70YMxB2KqkAf3FH1eLaE6KJycHFrb/Y?=
 =?us-ascii?Q?UbKLTYhiyljcoVYOrk+6l3yODGmFR6J0vBHhHfwmQDl0qupp/IRNDpdAHLWw?=
 =?us-ascii?Q?tRjvbMD2TWniqp/V/a3K5RUC51VGym+iPkBWCczmfaIAwOBmFEj0MgMeVFye?=
 =?us-ascii?Q?HJbn3Mv14K6jmgZnBg6A5InwF30gejW07Chc85TJg8lN1N0sSwN553EMtRpf?=
 =?us-ascii?Q?SDGOup16MpNf2BJVV0c00+uql0eX75JIOvOeOHRYKna00bBgynSKZMpsZWQN?=
 =?us-ascii?Q?YYuKy9QxH1FqBD7H0srEsqnqzNJcawFN4x3mYN16Zjfq+lVtyNUspIeL8TqO?=
 =?us-ascii?Q?HU4UGTqmpouOLF5yiZ0s7VzQy6orDYK/oJjdgQhd/rh/+hqv+5/lVA4lSXaF?=
 =?us-ascii?Q?QJdTlsoH30EXEcbt46CQfLGKQEPOxFp4kut0B7pKq0B3JXEft6C9MgsUD/Na?=
 =?us-ascii?Q?PuRWPyvlvw9koSJQL3wC4vDGkQMKPeQFKlF10XLoRyPtEVuV1Y/9uu+MfYai?=
 =?us-ascii?Q?NkxkBs12nPzhqWTseih+A6uEVVZFPM8WsanHAQyo92yNoF2S8ZJ5ktqiLfGp?=
 =?us-ascii?Q?aAgbQd/Qfgx1Orea81stay1Ibfkql5lGVpwRMfrfM6UNWv4hQWoZzIbFsTnj?=
 =?us-ascii?Q?4lydD19Pa4NX5LDoy1mYYRU5OxAG7aRHy97hpdMdREt/GpyoV5QqcXpqKRLM?=
 =?us-ascii?Q?4nt5wOy4NwYIExlx+ik/CpS9RBwF0TKkCEXyuteNFOgrMmShnA6Ovu4ox+60?=
 =?us-ascii?Q?VlflHhStwD8Hx/r9fU1VAEdHnC12/sn4k2ZvA8dI91hACWtbEo1mFkyatq0+?=
 =?us-ascii?Q?9NO8mhiPo3vTVhmGgQg+2pGSt5zI1eT/bp591Ih0G/TgugQBh89EMN/yX1Wr?=
 =?us-ascii?Q?luHjuc8RYMwnpyWx0cJl89uMOU09G4jv9J4ZqCq1f3bJ4+5SYOiiyrYQtD9y?=
 =?us-ascii?Q?i48L2J32TQaVf7V7z/jRL9LQgS2PEUdawLoJjQTTMUDfNbZycPZxTe9OXoAX?=
 =?us-ascii?Q?/+ktlb4FOdCdGLWsBkREjzUkhhhcrc2LRm3PObAxRpS5jZx77acGZ7NNEIdO?=
 =?us-ascii?Q?tszHVgqL9CPL49k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tNCQ9ZKY2SrcxYt+V2EpVAmAmV2O/+za8OoQFYo+Xm8TjrlEU99wGCoPV5yy?=
 =?us-ascii?Q?Z+W33y3TtUu62UH6amEygr1dehqnGAttToBAmIulIFYDzJV0x6rzEANth51I?=
 =?us-ascii?Q?yErZIz+o+TSOC0t1vHnUcXywmGKSfMiUItYUA//GdGy5RjKw5K47fsaT4/Ek?=
 =?us-ascii?Q?uRFpf1TlHxPWHmasSxjqZK9GF3X5eaPyiosHMAIfUHTmZykBh11U5wiCKra9?=
 =?us-ascii?Q?beZOj86reuQrMKyxLMP5YoEdR8dRiZSZkMocNEp6MEGM+jSMDtKWyj9b0XBR?=
 =?us-ascii?Q?l9mIB5bhobLOLHc8Aeddh6nFBe6s6r7TeNbwYYzdv5nmkFR8iZGA8+4pPfN+?=
 =?us-ascii?Q?YlZBKAGLcLDWG2QKdX/ZhGxGblitY/iNnE4gLAzN0zkPOx+cw7YHJuewUU/Q?=
 =?us-ascii?Q?JnJDPbM3FapR0YgfLAtz6FWK3+C5w5tUWbjm6eG2wqyNCA0m9CG6HDDYEQLO?=
 =?us-ascii?Q?b1wwt7go8dkwEzpZeRrZ0YkwepnG4+tH++OYS7f3J5IgHzl0wwJg3//pqWWB?=
 =?us-ascii?Q?cUMGeusTfhSaCOihh31hdpD91WFJIozCt0uMGk0oad6Fn2rt8ZgzrANbfdqI?=
 =?us-ascii?Q?pMFHBNxqIGNNh89FoPWyZdlilho1duMIOtAWCXvmHuYnNXvMaBUq+FNkx0uq?=
 =?us-ascii?Q?DbMRaBHA0hFOujKuXkbXMe+qdtzdKBKXQQXhY2HsSoXsk2axc7vkmTW9dL/d?=
 =?us-ascii?Q?koHHQxc2vl/s4kpSkr03o6jTsC3Lb/+2bXuhE0oNAwEZIv6xvhwcpaC5jUkt?=
 =?us-ascii?Q?v4MH+mSmxkSO3QHACMx9HL5kCTHmpPRjTWyIR1NnXUZ60+H+0yjeSM4HKJIJ?=
 =?us-ascii?Q?+Dna0UUbQISNC1Ydtr1P/SLBnlL+6GlfF+mS81vyJx82gHa4mrqXFd9xcNhT?=
 =?us-ascii?Q?yOq6JrQWjFC3Q+S7MbBhcCsXn6TXlNTyZfZfzy565LfCLa/Pbgwu6QODUjcK?=
 =?us-ascii?Q?l2TGHPk51vvcTKL7J4+P4AzPqryagc7IOzU2m/AUZpJkBeo1h5UDpB15Wfn/?=
 =?us-ascii?Q?YLwrAjANa+MO5ejdeAtO5J26Cg/ZnqOrBdQiOhYgc52z9uJUmFT7gsNNmfLH?=
 =?us-ascii?Q?T70iqzopkIKTuIpSZNGAGsvyIrL0MrpTeumLNl0CI3fiyZMtnyzcFKeHoGcs?=
 =?us-ascii?Q?SO//JjHcDfgo2mB/aybMQ9mJ+Dez6EQRDXkth+nzLgT6KD/wMbKTAcJZhFGg?=
 =?us-ascii?Q?5gK40jE1Pfzg3vXSHe3x7jOklkW+s1sFWk8/sb4IqFsr3AfVn61s5G/8q+Ro?=
 =?us-ascii?Q?slH/+wyE11ZFVNzkS1Mxue2ei9rr4qeuuV1KWqKv1eOE2qTpHWU2C7SUv7kr?=
 =?us-ascii?Q?AYRzmIEoYB8+R6WevlSFSG0Hc45rThvSlmc3TqhPdmOaYbfe9+iQrWfkjRSz?=
 =?us-ascii?Q?p8/yXykV2++Vpdn6IwADNd7dueqKvYvMORD6DbjPh3YHSROtMyAd0kVf1jP5?=
 =?us-ascii?Q?UlSCN6Uh0vHN6Yyb/e1sQrpywRJPr8UK87ad36tgz4iHWCjOGJl9dSgkorq6?=
 =?us-ascii?Q?Z5ZMzjWUiA07alD1cmrFOXC03lGsACkHAOzIUShUev6gWxwvMO4wYuUtSwGc?=
 =?us-ascii?Q?InlHCZRkn0Yhkv/Ghjha2IUaLHsLrHl1NhNTmrrQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 389f9310-f15d-4cc3-ffb7-08ddb79ea07a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2025 06:23:28.0980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aN2BCiUuXogxFu87bB0G/h5Cr6T3kjnmZXx21JKuZ6V/maqNvoKFlj9cZwXEoEKTRhChzLHvNNZoTzig6htKUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4766
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, June 26, 2025 11:13 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 5/8] drm/i915/hdcp: use intel_de_wait_for_set() instead o=
f
> wait_for()
>=20
> Prefer the register read specific wait function over i915 wait_for().
>=20
> Note that there's a slight functional change: both HDCP_STATUS_R0_READY
> and HDCP_STATUS_ENC need to be set instead of just one or the other. This=
 is
> likely the intention, though, as this was fixed for HDMI in commit
> 3ffaf56e912e ("drm/i915: HDCP: fix Ri prime check done during link check"=
).

Actually the  bspec (49289) says=20
Poll Status register for R0 Ready Status or Link Encrypting Status to be 1b=
.
- 	Link Encrypting Status may be set here in the rare case where the R0 for=
 this authentication is the same as the previous Ri.

Not sure why the previous fix was given a OK without a HSD being dropped or=
 not even as much as a change in bspec (Shrug).
IMHO a HSD should have been raised if the register was getting set and ther=
e was actually a mismatch
Also I really don't know if a analyzer was used to get that fix in.

Regards,
Suraj Kandpal

>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 619ccfc33000..c480a75b5fb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -903,8 +903,9 @@ static int intel_hdcp_auth(struct intel_connector
> *connector)
>  		       HDCP_CONF_AUTH_AND_ENC);
>=20
>  	/* Wait for R0 ready */
> -	if (wait_for(intel_de_read(display, HDCP_STATUS(display,
> cpu_transcoder, port)) &
> -		     (HDCP_STATUS_R0_READY | HDCP_STATUS_ENC), 1)) {
> +	ret =3D intel_de_wait_for_set(display, HDCP_STATUS(display,
> cpu_transcoder, port),
> +				    HDCP_STATUS_R0_READY |
> HDCP_STATUS_ENC, 1);
> +	if (ret) {
>  		drm_err(display->drm, "Timed out waiting for R0 ready\n");
>  		return -ETIMEDOUT;
>  	}
> @@ -936,8 +937,9 @@ static int intel_hdcp_auth(struct intel_connector
> *connector)
>  			       ri.reg);
>=20
>  		/* Wait for Ri prime match */
> -		if (!wait_for(intel_de_read(display, HDCP_STATUS(display,
> cpu_transcoder, port)) &
> -			      (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC),
> 1))
> +		ret =3D intel_de_wait_for_set(display, HDCP_STATUS(display,
> cpu_transcoder, port),
> +					    HDCP_STATUS_RI_MATCH |
> HDCP_STATUS_ENC, 1);
> +		if (!ret)
>  			break;
>  	}
>=20
> --
> 2.39.5

