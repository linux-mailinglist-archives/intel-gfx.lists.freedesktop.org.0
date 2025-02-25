Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5DEA4377C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915EF10E5AA;
	Tue, 25 Feb 2025 08:23:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePeCIoc1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 865DA10E5AA;
 Tue, 25 Feb 2025 08:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740471784; x=1772007784;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pzgdvE+I0PrIC8MPL1VKGnFRm1tgLIF75CaXwr+HsBI=;
 b=ePeCIoc1UeR/RtBd4o2PHq6IIvbfD/Q9RV5rcvEcVIWO4VqFox793N1A
 VajkSsNa+M4HT7gFXyY6YkpM4kISgmQENUXCv3oDXjBG4ahQol144sa9p
 v4x0LfCuplB/RE00u9hCi8+eO9fuDY7oxqYsCTgh+lhFBFLhN0uQgiOQZ
 wmYQKyraiVgIsT9hlCeKOTK4jNFXN/vU+n7dKYD0fdSujFn1jVYnyP3Pi
 pjv+8KKFwToxIIsn21c2tNRiRJDf3Cy2K0FGt9FbpmUb/6PJ4hI5xFq+c
 jtzXQDMzMKa8f3ql4mWC9MsFPBW6ksEddYSg7lZ54DKAi30ifVyy1n/nW Q==;
X-CSE-ConnectionGUID: y7+BAwDwQjmql9r1sC5V/g==
X-CSE-MsgGUID: 8ZdWQ+zrSFitQzoYBSafyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41180735"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="41180735"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:23:04 -0800
X-CSE-ConnectionGUID: Vl/T/8h6Rc2W4oyv+Cde+w==
X-CSE-MsgGUID: OaL4v/Q9QXmeHbCeWpK+sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="116943628"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:23:04 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 00:23:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 00:23:03 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 00:23:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nUy/X+Myb4yj7XQL0Zqg+iLK4xSv0+nWH3SP2sbpVoU2k509IwXTJjj9UbyAWE/5VdntsWCQcfo9ggb0Jzps+uMWDmnB+ZJE/CPdsMX7d1oifUMomXxGVEQXHD+IJx02jhCbg3LdQD8/Ex7ffbot1HCc9ok6KKxDTr3HUqxhWBhftadd4G8jrVYeK0PAhf78mQ4ZGup15Zp2V12e8TOBiNjadRr/Qo74JaheBSSNHoFT7xb4Yt+fu7jJ6VveKpzwxzgkfhGy56DDo+mkhUMy5VkDDL5866upMFgx98J/BdsVkEjBaaMoTEqypMGiWXn7CUou8M34TYcgqkPl5rEY9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O4tcuo+46g/soTJz3kHR8HszfK2PR2CkXg2DFWdZxwA=;
 b=BKmXmzzX8qKpF0R+ME2h0no0YdiDMAqrHG3pi6zc2VDby6wiA2B0zgMi/8IreqiXM2KTv5cs3QNqeRGymB2rMa8nKP4DY65uvGygdJ6JnAnSuiO5O+KBDL+D5Hf9uB5emkl+uHblzyxiXN1y49SYc/6iP0F/jVJGK+KFbkxaCtyDAHvaQiRyeBsG3SfDTLFxdg2iMxK1KP7QOlApFKL1bGr/Z/EXNJsUr68m8dbmLPzfJbVJKN0fRTMtCePaKP02xNI5EE1n7CCyFJJxhzzywBJz794iQrfYWI5KHZofmO14kcm3RzSFQ/Ko/5Bn4y0AZZetxZfnsjwIiI5HuUEaGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.16; Tue, 25 Feb
 2025 08:22:18 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 08:22:17 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbhpZzsO3gJ4cfWkOoJmlBg7Tdr7NWRhEAgAFMe7CAABdxgIAABV2A
Date: Tue, 25 Feb 2025 08:22:17 +0000
Message-ID: <PH7PR11MB598152F15C3712BF1B54143EF9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-5-animesh.manna@intel.com> <87r03n7h55.fsf@intel.com>
 <PH7PR11MB5981971262D74BC11EAA1BEAF9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
 <875xky78qg.fsf@intel.com>
In-Reply-To: <875xky78qg.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO1PR11MB4835:EE_
x-ms-office365-filtering-correlation-id: 399a1b8b-8389-48b6-445a-08dd55758484
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?dDHWXx+bDWlX+3vpCUYXX7rafIfL+t7dEWmYSco8pNtN+8/zSCsgxhddRiEp?=
 =?us-ascii?Q?kv3kpf5iIrst+Bj2wKRK2adnle9PXauRZJpstK8q3TVuoqCM4oC4ydT0GUFY?=
 =?us-ascii?Q?30Hd9FaiActvCrg+2vohzXbohhH6F0EiDtXastxZzy2RQI9Uyop4YpWXnhGv?=
 =?us-ascii?Q?07jmIhHA028FHr3PA3Ht3V/6DeGwAfDpDfhEvwbdmhcKHPEGHxpmcu25MTwL?=
 =?us-ascii?Q?M+o4gkHDEs4Ipn1chk+rYgWgtKy2a/Bs7X08w/VJlt6v5vO1OSZ5m9DlzyoI?=
 =?us-ascii?Q?vAFJeOJwc/LiCNRPzQW8JUxB0jPGUjGXtiif/V20H7fwxB0gWj0ck7e4CMhh?=
 =?us-ascii?Q?5jit8c9ZbBD4j9P8IGuHr7XxbXWLNQZB16bU+KeOgH9v7oElINB8Htn3IbQ7?=
 =?us-ascii?Q?VogwX80jlqVlHJjkc98XU8JWVOYO9Mg1cN8nTriJXYN1wuQ/aht4G6EYRTeV?=
 =?us-ascii?Q?tkS35QqHOTeougPYnxXOCwrF4ivPyR2vK5xv3CzviW2UBnf4hN2jPCtQsJUw?=
 =?us-ascii?Q?MHQqzw21xKCivkbOh7J6rXVeNAsr9xSC1rBrJUXpbURr0M4Tu0O9mChRlJ0j?=
 =?us-ascii?Q?2F7TyjxjNF/4Qko3x2AbgkW9cwCS6Kh/TagV136qUh01VDSe7+Du01AA9L4Q?=
 =?us-ascii?Q?dm/VKcDK94KltT79jkxDKnWHvQ44gnpbSMyqvNZ98VJp65UZey5gB4ROrMds?=
 =?us-ascii?Q?tzL4PlArja764UBX2mOdkmx8EYoTcCu8/yF9qfMwMvonOhzgjDXg5MYZzH8f?=
 =?us-ascii?Q?g7u4lKAxkgxEPZQ8TP8e8bIsQJDNWd3F25TaPnJaritL0ZgjrXCn0egarjhl?=
 =?us-ascii?Q?cK6mvGTadeNINXEyk2CPO4/fKH9GfU5vNlp7RUUEvFOWPhglGQSdYuYk/Uyl?=
 =?us-ascii?Q?AMq+sTj+j6mz+BRyEEVBmM53gghEt6t215nzTq0oRWbwcmEaUxquKPl4TIYo?=
 =?us-ascii?Q?DIVlzTUhPQj9N2J4KIDuy3kI51h2uRksLTZGINZxLqfqAOFtICvNvuc/CsOJ?=
 =?us-ascii?Q?zz64KX7dWhilOplluHZDozPMFchwZecZYZJcES/VOfmlFwYtXnWR0l2estaH?=
 =?us-ascii?Q?Qo5MK4zSs9/LdcGEaKCZgJ02Q/KJq12uEKZ+tABfN/d/cvOraAaNzGnW+8Xp?=
 =?us-ascii?Q?rWsPLpcy168TC2/UNlUEL8u7f6imRbtZBco8PLRlQ+j48p2sxqRJTFAc/7hV?=
 =?us-ascii?Q?jknpeevxoCVI1qui4bRhIZ/AVBAzVjGNVN6b5j9cBWavT9VLQR9gEdcobwUa?=
 =?us-ascii?Q?Zgfrhvc49XiDsyWBNMqnyyZZFFwRZN522nNNuyaKgtfAzgNNb9QPNuDlUQt2?=
 =?us-ascii?Q?u863NB2wy4GnyAPNtErQS3hAZ7DxKbEAZeSWobw3iIFuHy30dLduLjvJnXAG?=
 =?us-ascii?Q?BDPp1Fmh8r1g3Xo62o7QxxcPECHCTzrK53u8HVSr7qFMISS3fHxzsLaWyCn+?=
 =?us-ascii?Q?g/Npp4ry8yJp4EpZbpRmha+6rzl01igU?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lzS8dpaxymyl1ZHHzO+W0xUKfMw/FvMWCuDwOadDqjxUpjwVSC6ZZ2OdPweK?=
 =?us-ascii?Q?9DCIuoqQSLxbTKmyQdcWXkUvRlzBsckqU4ifLB3w1zFyA36BYb/sNi6Gx+mx?=
 =?us-ascii?Q?VkJnt+Hm/mXBRzitD+u85kfybqF93IdSiY7fDjqtLuEEQgUMpcjjbH3H6MjN?=
 =?us-ascii?Q?y/UcImiJrHqQaimJZ6qV1/IEZHT/RzuQaEgskLdZlrk8+CV4DtraK5IPlHbz?=
 =?us-ascii?Q?SUkKxx4a7wBVluN1uEzLgTuzqSnh2nYxOred2cNd0CmZrl9miMbHdYHQgQzo?=
 =?us-ascii?Q?P87GoCqWIOPaCklfjwBMAUkyPTnrt0tE5IIyXrv/iZDhPXGp11y3Iaz8VpOW?=
 =?us-ascii?Q?ApJSWIvINMtyzagioN+Q3CbtGJTY8XDuDElnTebYqUNfymUj1Zu/VO3WySAH?=
 =?us-ascii?Q?sgJzsYk2Yrd9pttupOIswvzXN4zvOT0nw3TCrPkxfvKJYoj+zapHhKiBhiI3?=
 =?us-ascii?Q?kq7NIVSryVJghDf1Yxy+GhB6oEknKiVmTpNz6qargkhInEN/IjZLIItOlXYe?=
 =?us-ascii?Q?mEKhJRnbhqdB/NM01Lgr5q/fwK7adXpxOqFt7P8bnjChkgnL8TfiqIc/C3z3?=
 =?us-ascii?Q?arKjbNNoBy16kBVFbGrt2kQFUQiP2anuDAFnlOSWF76FtvMBQwAgOyRVs2Ww?=
 =?us-ascii?Q?nNzJ94qKJVVCf5eSJ3mNkCvo46NYDKW62cxOODBi5uNv0mdn9rwE8xwYXdXY?=
 =?us-ascii?Q?FCtGbs0ERMvJN7lJSjRZ/gvxu2kKKCex+h9nuFhlkvyuMMlJdqISkTv6YPxF?=
 =?us-ascii?Q?4BKbPDf7fYDvDDWUv/Pt4xozbsFBCvWv4zJXV99LfJZOg6e+YVGQp7KJ3ocW?=
 =?us-ascii?Q?xh8QipITaAbWJQpjtZa807qbJsgdVePTxVPBLu9eYRqnSPGEE2bPKflWT+9X?=
 =?us-ascii?Q?CfgMEb5yeudgDBZcbhSicJpXXYeUGujsIhxXhuDpZ8t/XTLqk+0uQL/gjCSR?=
 =?us-ascii?Q?cFSml8v3MmKcmFJugQoFbn1YJ0VFyqKo5fSVgRGxuQn6+jaIkLRpoWuYOkcm?=
 =?us-ascii?Q?vwQ2lKCPdndxBrBdqU9KBh7o0swqFPWYU6+zuO8VvOPkr7MaUBnKfxM+Hcck?=
 =?us-ascii?Q?tymLY+6Eq/gv0Wfxl6cDaTcWRCpxCLMs8ldtwuAq1c3ClfzFu9hVzW7XXJrL?=
 =?us-ascii?Q?wuPWwa+fdqVt4ecCtzUbYLy2/DoHR8dFiEGcd6zncgR+y9/VCoc0ou05Gye0?=
 =?us-ascii?Q?BJjlwbQTEqd1Yubda6MeKqpExsmfjUgUpGdOZnIzBzspGGUJyhB/vVxz+p9m?=
 =?us-ascii?Q?TMxalM5GAXhDd2VCDjbnucmIrxjnCLGGVExWBOaw14BKBIN+Ow/ysbozizK0?=
 =?us-ascii?Q?Fq99AUbqZIzI/2AzsjCToPhcHc6E8wHfKtkn/hIjBizHD4rHrRRfCKpIxdPN?=
 =?us-ascii?Q?6yq2zmHxFcpLyTyAQ8JahYhfZ71rO0TgfGrWhYVoHF3FPPq26uXzSC7FBN9H?=
 =?us-ascii?Q?H2FV2KHnnffmpiwZaxZn7wRmJOdfN/b1bJqt3PBMS1gFAnEzeksViopjGJAl?=
 =?us-ascii?Q?jHGok2SgMVwosnc/dWOlAEEOHDVflKRNWo77ceia6JsUarfAJ6FlYVLeAdHn?=
 =?us-ascii?Q?cS/Lgmq0Aoo8UJ3N0SqhTkQ7xR1sMT5ARRb69LkN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 399a1b8b-8389-48b6-445a-08dd55758484
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 08:22:17.8971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f6ORAjs4uq/njPMqRvKQD5ZFre9EdwZnu1kR8Vd7+1pOK8XO1XiUOk/STQ7cNZBBj077voZozDzSPaxsAcR7/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4835
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
> Sent: Tuesday, February 25, 2025 1:32 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> <jeevan.b@intel.com>
> Subject: RE: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change in
> dependent parameters
>=20
> On Tue, 25 Feb 2025, "Manna, Animesh" <animesh.manna@intel.com>
> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Monday, February 24, 2025 4:18 PM
> >> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> >> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> >> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> >> <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> >> Subject: Re: [PATCH v4 4/8] drm/i915/lobf: Update lobf if any change
> >> in dependent parameters
> >>
> >> On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com>
> wrote:
> >> > For every commit the dependent condition for LOBF is checked and
> >> > accordingly update has_lobf flag which will be used to update the
> >> > ALPM_CTL register during commit.
> >> >
> >> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_alpm.c | 16 ++++++++++++++++
> >> > drivers/gpu/drm/i915/display/intel_alpm.h |  1 +
> >> > drivers/gpu/drm/i915/display/intel_ddi.c  |  2 ++
> >> >  3 files changed, 19 insertions(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> >> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> >> > index 1438e125cde1..83719ee1721c 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> >> > @@ -312,6 +312,22 @@ void intel_alpm_lobf_compute_config(struct
> >> intel_dp *intel_dp,
> >> >             (first_sdp_position + waketime_in_lines);  }
> >> >
> >> > +void intel_alpm_lobf_update(const struct intel_crtc_state
> >> > +*crtc_state) {
> >> > +   struct intel_display *display =3D to_intel_display(crtc_state);
> >> > +   enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >> > +   u32 alpm_ctl;
> >> > +
> >> > +   if (DISPLAY_VER(display) < 20)
> >> > +           return;
> >> > +
> >> > +   alpm_ctl =3D intel_de_read(display, ALPM_CTL(display,
> >> cpu_transcoder));
> >> > +   if (alpm_ctl & ALPM_CTL_LOBF_ENABLE && !crtc_state->has_lobf) {
> >>
> >> You don't need to even read the register if crtc_state->has_lobf is tr=
ue.
> >
> > Thanks Jani for review.
> > Reading register to get what is there in ALPM_CTL register, like aux-le=
ss or
> aux-wake alpm and etc.
> > For LOBF we need to touch a specific bit, and don't want to modify othe=
r
> bitfields.
>=20
> You only modify the register if crtc_state->has_lobf is false. You don't =
need
> to read the register if crtc_state->has_lobf is true.

Ok, will take care in next version.

Regards,
Animesh

>=20
>=20
> BR,
> Jani.
>=20
>=20
> >
> > Regards,
> > Animesh
> >
> >>
> >> > +           alpm_ctl &=3D ~ALPM_CTL_LOBF_ENABLE;
> >> > +           intel_de_write(display, ALPM_CTL(display,
> >> > + cpu_transcoder),
> >> alpm_ctl);
> >> > +   }
> >> > +}
> >> > +
> >> >  static void lnl_alpm_configure(struct intel_dp *intel_dp,
> >> >                            const struct intel_crtc_state
> >> > *crtc_state)  { diff --
> >> git
> >> > a/drivers/gpu/drm/i915/display/intel_alpm.h
> >> > b/drivers/gpu/drm/i915/display/intel_alpm.h
> >> > index 91f51fb24f98..c6efd25c2062 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> >> > @@ -23,6 +23,7 @@ void intel_alpm_lobf_compute_config(struct
> >> > intel_dp
> >> *intel_dp,
> >> >                                 struct drm_connector_state
> >> > *conn_state);
> >> void
> >> > intel_alpm_configure(struct intel_dp *intel_dp,
> >> >                       const struct intel_crtc_state *crtc_state);
> >> > +void intel_alpm_lobf_update(const struct intel_crtc_state
> >> > +*crtc_state);
> >> >  void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> >> >                               struct intel_crtc *crtc);  void
> >> > intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> > index 26aa32d4d50e..44258ba0d951 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> > @@ -37,6 +37,7 @@
> >> >  #include "icl_dsi.h"
> >> >  #include "intel_alpm.h"
> >> >  #include "intel_audio.h"
> >> > +#include "intel_alpm.h"
> >> >  #include "intel_audio_regs.h"
> >> >  #include "intel_backlight.h"
> >> >  #include "intel_combo_phy.h"
> >> > @@ -3621,6 +3622,7 @@ static void intel_ddi_update_pipe_dp(struct
> >> intel_atomic_state *state,
> >> >     intel_ddi_set_dp_msa(crtc_state, conn_state);
> >> >
> >> >     intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> >> > +   intel_alpm_lobf_update(crtc_state);
> >> >
> >> >     intel_backlight_update(state, encoder, crtc_state, conn_state);
> >> >     drm_connector_update_privacy_screen(conn_state);
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
