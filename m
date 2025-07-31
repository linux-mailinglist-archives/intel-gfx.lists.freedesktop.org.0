Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90BFB16F1E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 12:02:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9D5710E752;
	Thu, 31 Jul 2025 10:02:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FWFeaJXo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C774010E752
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Jul 2025 10:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753956139; x=1785492139;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0RqdayDzH0ixf8UaM/P4/cQnfdTKdN6EZEcHXiFWwwc=;
 b=FWFeaJXogzeJfFY3t2zDDe+MbPvdqYJWscnZcVvgqVV5SrjC3lBnk0bE
 Lr5+mCqTjLX0zlGprFg+VrdIvyz8HES5zXDZAUsUPfYGvbJN9MRnfo8IU
 1BQ3uTytOdN0TIBp6w3iCTIMq9+DEPQJbh6jPjNrZnXEVuSG8/6+NO6ef
 Ed4lTvsc9Ya8YrdklDPfThllfR1msDH84NvkhQrqR+X9c1hJMfdtEXMzf
 KH94E1M3ixokhesz+LXuG8TVJYICQliWNJxD9FlmwIIfmv0Ky5r1NewaL
 xSP8P1qUgP/ykqsGxLLBbqVi5FXFQaUNNmU3M4CniJuGmH5RPCaJhxmio A==;
X-CSE-ConnectionGUID: Ai9LK/R6Tsi2Cgagz3BbbQ==
X-CSE-MsgGUID: QYuKubyPSxWwf5dVNii+ZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="60095963"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="60095963"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:02:14 -0700
X-CSE-ConnectionGUID: tWNZw00sRe+dRLMBD5WnHw==
X-CSE-MsgGUID: slh/y0BYShuTmGaolsiEFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="163667471"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:02:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 03:02:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 03:02:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 03:02:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PVbX76SogzQTWDjuK6NNC/s1XzxRXzFAR0KPwf+fCA0g0APQWm6KISJr3Vcw881JrNfd0j4Xchs3sKvLj1FvmsTgdCPoSv94BWZkIyrDv9TTLsssouzkHtg7q1NJ0nSu7njWYB4WWZtkevcSs098Q1ff6Xh26TcZYmywgg2Capx3SjcQKr5/yrQnBhkvHh1NMERr0pZBYGd4ppZKVqC2L9IPIVMmboGDX3ksJKIV4e/gJYbS5DyrWGLKnPWTZBZqsli4S3Zx+fUZ5dL4Ean9tOuAUWuJt3HOx5khWf9nGg95Qgu7E6Cyi3y/wo1D9XIz/DyjU3+7e76fq+7vctJX4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E51s+TFKT2JJJEKWZBFGV0qSYIlYjFMzZMpTqnb1opA=;
 b=xg/t7/WoaS/wiPbwrgONi2d89EtnytmVNFH8SV3yUP3F9bAyB8T+L90AhLrUvK5BkxAqgWVFHZPZ8j0urr3V1GkxFa/SqtuyKui615G4nYM6X8H0+LXOiir8/fYlG7dBmtJrQVGbKhIGTxVRy3Usuo1JlC5e7cCluiMWNvfoEXLfU1m/aVbmopi70fiwLciwb0TcB96sPKCn9z1Vit81j/SYcyi5tIsq2nWjeGk99TOc1z96wjMYTdKKWp0O9YHLa7hLXFiAqZweElnJvJFxGU0icMnadLXg/AhPVEsYuywpBTFF+Xu2cBnaAOSr1mQLepuSee9Q5MBLVKbQozQCDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA2PR11MB5081.namprd11.prod.outlook.com (2603:10b6:806:118::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.24; Thu, 31 Jul
 2025 10:01:58 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.8989.011; Thu, 31 Jul 2025
 10:01:58 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: WA_14011503117
Thread-Topic: [PATCH] drm/i915/display: WA_14011503117
Thread-Index: AQHcAfi0IskVx/vF3UidVjhINEBJ5LRL9QyAgAAAwzCAAAn+MA==
Date: Thu, 31 Jul 2025 10:01:58 +0000
Message-ID: <IA1PR11MB64671CB31BF0A602D52490A3E327A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20250731084900.1684276-1-nemesa.garg@intel.com>
 <db4873fb3468cf079ec8fd4fea14a668a1b554ad@intel.com>
 <IA1PR11MB6467032E19C9C147EBBBDF8AE327A@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6467032E19C9C147EBBBDF8AE327A@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA2PR11MB5081:EE_
x-ms-office365-filtering-correlation-id: 872c510d-9f1b-4a99-1a06-08ddd019496b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?5ZUWAdeUL+1H/h3EfNkczU7dyI0VObahhg6K3DZAuxnFQT3BYLha54TmBE4p?=
 =?us-ascii?Q?TFHvVge1A7VMAqU9yZlTGsiCAzI81GxbTkDw+nOfydKG9XBfJMVALRwbX9mj?=
 =?us-ascii?Q?rcWSOMT5pvL9cUA5ybxjSbG0dg7CBopDuBli2/1fFnwKCvjXIn9J+6KVQ2Cc?=
 =?us-ascii?Q?3h/zlSMP6h0CX5fpy65uqQ7u1WaXCmGERv8ZsPV6sjSDjCn2erC3MukgPoXV?=
 =?us-ascii?Q?oIsJw46UngWPOUI5Hu6EzkyzwTFX6lorLXJa88UMeSgMYCZO/CCFZoHy1bCI?=
 =?us-ascii?Q?3sND/YaN0gjUs2X3Y/7SJXVPMpWfGw5N+P8cHYi6ksfelucA+eb2a2tVmAHT?=
 =?us-ascii?Q?bnFJnFet1kw33msUTWw4bfK+WaxdwlkTICRsCnJ42+ZOaG3fxSnlgZ4JdmKs?=
 =?us-ascii?Q?Gq9TbjO6QhLo7gN33LwYyhlmegzvanmXI/xMNb/Y4+vE2y7u1EG6k8wR3m0C?=
 =?us-ascii?Q?I6e92RwSTswS1M9kLd0GLBHFMDTM0HUIuviD3LfvyIqZuZivTDouPEy9Bd6a?=
 =?us-ascii?Q?fr9GW3xI96/bjccevG26mZ4HUcV3HALh+Vw5rgLZUcY+GBltYXPhls8TdWv7?=
 =?us-ascii?Q?B9vD5srZhS1Z2/a+gSqwmshMt0SfNHeXGtyfBIn54IpQyB7CiFwZw94LyS1Q?=
 =?us-ascii?Q?U8AUCF9bJzh4wwpXiBA4yWzKqN3ZIa4vy1RpYEyktZMeeeyxbJ7om4Y/SctJ?=
 =?us-ascii?Q?hJFQZtFkkivgclyFAzNYmaEkVbegg0vZdJAY2rgZrPjnGFGkq3YVqdZafYSp?=
 =?us-ascii?Q?nCCLgaQxg7urjHphfxrwnItm4P04tFcRrLCzqSHio1C5MFwg44VYIvqGQgN5?=
 =?us-ascii?Q?HUlGnZy+ImRjIUaM02/FfTdIXo/TMuqxh4KtNu8UNi9ZHT7G25qSTqRaalzp?=
 =?us-ascii?Q?TqFmX9r54goYuLdUEXfbLBPTtg7kJzThtMqFVHT0bFY2Y1aJO4hda3Um7VsO?=
 =?us-ascii?Q?W2Zk3RZagtV9x6iE31Ym7Zp57JCYcUXLCJd1Do0Ib4J25b4HkJmHJjHyEKM8?=
 =?us-ascii?Q?Ys/DpT3T2urfjtr4Msl+hGE8L8I9d1u5OkKO6tAdGDpqnYZfQ2BKhlhFgxr5?=
 =?us-ascii?Q?LCh7uG+d7WczvZFlZoO12xN0uStW8lwn2vmlUxbTj9OXi3C5uZNV8m1wSfIo?=
 =?us-ascii?Q?X5OvZuqyaCc0CHl+3YPAX4TW9cPLAP7B2GZlfc/BqFe/uzBRW8MfwkchTNpI?=
 =?us-ascii?Q?UFFCiNtX3FEdKLCOkN10hvcetv/wXl4+56Wf0B71nLMrkFt5kfB0uV+ssHJG?=
 =?us-ascii?Q?+D+5zBKqPOfsKdqy0ZqGyCFq5KOcV6te1fsBGOdKRvVFwc2R4v/noSbQGXdD?=
 =?us-ascii?Q?7QsoOqd1xo+rB3VtMmHAopx23Aln3UT8IcJtyE6hhK7sj7e+t14Tmz15qY3O?=
 =?us-ascii?Q?dNGmktS5ViiisDI887mCX1N5qo2L9ySn867uWEPXO2Xtw4VmaH7jv9xf+c/u?=
 =?us-ascii?Q?7STeRlIGnq/7DRJIHrsw5NtbEV9a9JUnDzG1lyf1WA5q9AJvvtHZ5g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3TE2kRbB6NCEqlGytb/QTYtzxvTKfhNZyqcLUVy8vWCOT70qcichH3IFZ9qD?=
 =?us-ascii?Q?OZFnd4wXzRDMJ5SQZphm6lHXE/LW4/JXbFk7El4TkeAy1mOI7WxSLhMIsqNt?=
 =?us-ascii?Q?Go8q4Azbpt8s4Po0LHs5qSbcE+mKK5U3xCMfDU9Nh8gQ7i72OlDqa6xClCgm?=
 =?us-ascii?Q?8W0pBzE4r5cQozmYk4mLsRXv3bvp80Bg9N2Rg9FBcNewWgb4aFiHI2csZRTw?=
 =?us-ascii?Q?OJqIxLUUO6dDzOkVgYI6FSw9RX1LdSngRrLhmbyOIeaz1rYZqpYESp4UmbbK?=
 =?us-ascii?Q?m88dqGkkP+a4go+UZyzNMDDMP7iEM/vBsztYv0en8Hbv4jcAzP1Oo1m+64vz?=
 =?us-ascii?Q?KNwiG0fGdm1ttshWqxwxbvuBOnJ4gi5WWhtBOLOFB6Dqbi/l/PVnUAhkN0SX?=
 =?us-ascii?Q?j47uJWZ7J4Dgn45iX3pQ08Y8HlvdEL1Dn2I8n3DjGpi/h3O+ZVQeSIN8hQYJ?=
 =?us-ascii?Q?1NaeF4FoOtst9eg30h7f7iziG0uAv6pFbetKzX5coD2cReMAMj00r/8Fl6Ox?=
 =?us-ascii?Q?tryNpzGzI874vJVMaRGlPfU2Dydmnk0P7QFV+34nVPsP1T6xGLGMpR6kY6qP?=
 =?us-ascii?Q?2u3DCqPwFzkoFVdEkLjabP98/zSTilyC+l8t878sUANZuDX4uMO/OlQSj4z+?=
 =?us-ascii?Q?FOdso1RsHalH9W7249/UpMbYywB67Jf5vitZ3L0iiZfLl/t1do3Fwcnt83YO?=
 =?us-ascii?Q?4cXoXc7WTcw0ITL+KLEV5LSwzMeKl7Rw1Zy1DeK0mTLeJHz6K9JRhKqGHkny?=
 =?us-ascii?Q?hott+2d5Jy3+wDxetHlqvIdJm9PDf01vsg0tT9FvScdXjjmiW0PRJvIqDA0v?=
 =?us-ascii?Q?f+i2Dr8RSdgxO0Cm4xWmq3HHecglCD5UuZGw3zC1gXChHCyggSVRNGdzh2Gl?=
 =?us-ascii?Q?lTcCsIfc3+zPXLL1k6/ZuBA390O8HfweENMwRfQkUb5fkX5Lu0C2FQQ7GJXj?=
 =?us-ascii?Q?wOsv8QS8KJIbJRHn1ONaSf6Cy8hyxh9Z7leNWCWB29QDyKhcwBBojPdzpw7t?=
 =?us-ascii?Q?4kGmSIyNf9n+SQiMKrFhTd0RVCX55dgC24EfW2CL7U7bC4rKc+XvIVwpAdhC?=
 =?us-ascii?Q?bMv3s71hVh4/UwA+vrUAsZ9kHpTDblgIuzqsqkwXEN8xl8YOBUjJG24r3DvY?=
 =?us-ascii?Q?kyuaqL39tohpZfiQwhWZRdsKIULUDhw9D7SXw0+by9StJMBWo/1Kc19H3fJ3?=
 =?us-ascii?Q?wedPAqxpXMfmp/kH6N+tBoFdCArpJYRhJMlfQ8fX9jM04w5aZa3VVcAreguZ?=
 =?us-ascii?Q?BTvwW6gbG4AOpejy7tGOaik7awJlvxnKwtJZDhmuldV+a9oxJNconYqmwmXT?=
 =?us-ascii?Q?SYSXG1oF+OhVNs8TpwPtOkC7EYUqszcJktxb5Rej/n4/6zXadbjYJLcmGssf?=
 =?us-ascii?Q?o5V9s+8kmiO0KzSEQXQCUjMzT0XpBB6r1ED6U9J75ii4fTa2yxxn7NWbyXd8?=
 =?us-ascii?Q?IpqF9ih5lTEaWPSVhXNMlRU4KTXO3KuOrItFyG9l4WuZuni2iKI2wFneNlCO?=
 =?us-ascii?Q?ctH/MUNwVECRdWzLZB1Po6jy/k3BqwQ1WkEesd12gDaWjuZ0uCB1OOfsTJEK?=
 =?us-ascii?Q?rIno5oQA41JkIEvHUAY/r0t3zA2cJvH+o4VGuEkB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 872c510d-9f1b-4a99-1a06-08ddd019496b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2025 10:01:58.0671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1WK7jMlWp5atyht9CJEZ8UF+Alt/rBjSts5AgXYeUR0bkYDX/tQSOAZ7sRNXH7FDTC8OTBMPbMNp41HHKZ0hxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5081
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
> From: Garg, Nemesa
> Sent: Thursday, July 31, 2025 2:55 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedeskto=
p.org
> Subject: RE: [PATCH] drm/i915/display: WA_14011503117
>=20
>=20
>=20
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Thursday, July 31, 2025 2:51 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: Re: [PATCH] drm/i915/display: WA_14011503117
> >
> > On Thu, 31 Jul 2025, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > > Before enabling the scaler mask the bit and after enabling the
> > > scaler, in the later stage after waiting for a frame unmask the
> > > PS_ECC bit and ERR_FATAL_MASK bit.
> > > Unmasking of DISPLAY_ERR_FATAL_MASK bit is use for validation purpose=
.
> > > There is no functional imapct.
> > >
> > > v2: Remove intel_display_need_wa [Jani]
> >
> > Ugh, this is not what I meant.
> >
> > Do use intel_display_wa(display, 14011503117).
> >
> > Do not add static bool intel_display_needs_wa_14011503117() inside
> > intel_display_wa.c.
> >
> Got it. Will add this.
> Instead of adding function something like this I need to add inside __int=
el_display_wa
+       case INTEL_DISPLAY_WA_14011503117:
+               return DISPLAY_VER(display) =3D=3D 13;

Also should I add the documentation to describe  the wa.

Thanks and Regards,
Nemesa

> > BR,
> > Jani.
> >
> >
> > >     Optimise the ecc_unmask call[Animesh]
> > >
> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c |  5 ++++
> > >  drivers/gpu/drm/i915/display/skl_scaler.c    | 28 ++++++++++++++++++=
++
> > >  drivers/gpu/drm/i915/display/skl_scaler.h    |  4 +++
> > >  3 files changed, 37 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 7035c1fc9033..08cc747638ca 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -1081,6 +1081,11 @@ static void intel_post_plane_update(struct
> > intel_atomic_state *state,
> > >  	if (audio_enabling(old_crtc_state, new_crtc_state))
> > >  		intel_encoders_audio_enable(state, crtc);
> > >
> > > +	if (DISPLAY_VER(display) =3D=3D 13) {
> > > +		if (old_crtc_state->pch_pfit.enabled !=3D new_crtc_state-
> > >pch_pfit.enabled)
> > > +			adl_scaler_ecc_unmask(new_crtc_state);
> > > +	}
> > > +
> > >  	intel_alpm_post_plane_update(state, crtc);
> > >
> > >  	intel_psr_post_plane_update(state, crtc); diff --git
> > > a/drivers/gpu/drm/i915/display/skl_scaler.c
> > > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > > index 4cc55f4e1f9f..cadfcb549ae8 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > > @@ -762,6 +762,9 @@ void skl_pfit_enable(const struct
> > > intel_crtc_state
> > *crtc_state)
> > >  			crtc_state->scaler_state.scaler_id < 0))
> > >  		return;
> > >
> > > +	if (DISPLAY_VER(display) =3D=3D 13)
> > > +		adl_scaler_ecc_mask(crtc_state);
> > > +
> > >  	drm_rect_init(&src, 0, 0,
> > >  		      drm_rect_width(&crtc_state->pipe_src) << 16,
> > >  		      drm_rect_height(&crtc_state->pipe_src) << 16); @@ -
> > 938,3
> > > +941,28 @@ void skl_scaler_get_config(struct intel_crtc_state
> > > +*crtc_state)
> > >  	else
> > >  		scaler_state->scaler_users &=3D ~(1 << SKL_CRTC_INDEX);  }
> > > +
> > > +void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state) =
{
> > > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > > +
> > > +	if (!crtc_state->pch_pfit.enabled)
> > > +		return;
> > > +
> > > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0); }
> > > +
> > > +void adl_scaler_ecc_unmask(const struct intel_crtc_state
> > > +*crtc_state) {
> > > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	const struct intel_crtc_scaler_state *scaler_state =3D
> > > +		&crtc_state->scaler_state;
> > > +	int id;
> > > +
> > > +	if (!scaler_state && scaler_state->scaler_id =3D=3D -1)
> > > +		return;
> > > +
> > > +	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
> > > +	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0); }
> > > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> > > b/drivers/gpu/drm/i915/display/skl_scaler.h
> > > index 692716dd7616..79183d9ecc3b 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> > > +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> > > @@ -44,4 +44,8 @@ skl_scaler_mode_valid(struct intel_display *display=
,
> > >  		      enum intel_output_format output_format,
> > >  		      int num_joined_pipes);
> > >
> > > +void adl_scaler_ecc_mask(const struct intel_crtc_state
> > > +*crtc_state);
> > > +
> > > +void adl_scaler_ecc_unmask(const struct intel_crtc_state
> > > +*crtc_state);
> > > +
> > >  #endif
> >
> > --
> > Jani Nikula, Intel
