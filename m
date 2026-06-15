Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A6zTLsmCL2reBgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:42:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19022683512
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:42:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=flFKU6sD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B3CA10E190;
	Mon, 15 Jun 2026 04:42:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F22110E190;
 Mon, 15 Jun 2026 04:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781498566; x=1813034566;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZMtU9es4XVtRSmhoy+Eqb2jHQyp9q6RK/EivMOm6Jeo=;
 b=flFKU6sD7CKh6YAQP+a86I3QE6sJeUC7Ok7bz3utu1RgROOIKFp/yVhd
 wBT6miMD/l8+MsGBP/vR/zr/IKWu/k5h9m+kKf3pUjYCjp7fAxtThM3Ag
 i9k0HerKzS5ko65iShsA2PCTJ9CFNtK0AD7mdTBjxmflJjMfMlmdO6Jsi
 +mDvS8UuCJrOB7PaLztE6VvTf4LEAFAZ86NYhmqoB1hzTVt/GXhH+ajO1
 vccCQK7SEEU7v8TW1hcBtiekbKYcNgZHS1yJGbcsJrblsUlp/KXlSANNS
 rXEGdZVbOBFpbA2fDdJNTyWBGlH7GmUKrGrrOkoLqExL1Uz4O4k1jnlWL A==;
X-CSE-ConnectionGUID: UUN2/G8lRrOyVDRxQB99EQ==
X-CSE-MsgGUID: EWpM7NtgR7iHT2xK0HzI2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93724420"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="93724420"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:42:46 -0700
X-CSE-ConnectionGUID: o2gH/UxpQQa7evK5b5fxgg==
X-CSE-MsgGUID: FRAKdSw3QJq/zizO9QkFFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="247451994"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:42:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:42:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 21:42:45 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:42:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=imYUUAubKVS/uHlK629EAg6yR+7gn5UahZVlXRypGDsogY5K89KljxqaXfp7iWwxE4EgiaBPbu78XvVNCYiIzqQF8MWQ7n6s22fcPaoTHTmaexsERKsERD5qS44uPSHD9A5S0sYn/VXmm7XWPtpiF+adndg93PkgZD/ZXU1/knDraV5ArF/9IHNj1dg5GhpeLU+vADI/p4V6XsfWUoJkIqeVtSX74Yn9IR2Y6rlZnWsYrS6zQM5MVjnZlYecI0W5Xd87rbalzBOAG6HxwtA9E5at1BWLRPaPMmpdJrjnJXFOMvIYULDI2sB8/KW41p5f+rRQNCcuJAkd7eay+jZl+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xUA9zSABL4GeDF0qm1/0GLB3I6X/nhnaEareawep5ls=;
 b=eAXEYX4dU0cqa8AncYL3hi06Z8nWaLHcBc4wayZYUcG2TIoCV9Yh/dbEarQ3BE1o3B0O5NK/kDCQueWi7emYX0/2UxTF13yCkUw+99T0XMPyVVPiNNtVNsSHnWRSsXMfOTAGqznSUsISQvFFtlKV6JJEEVirovBrVTWUGy5jDwHYqrrUWMX2leKA3TRCBuUkTBZayiKwp7gDLJDs66+qgRWtP+FBqJ1YLg0CJvtKFuJGc0wUrUCee9xdT8IXobEBskb4JH/Wqc/XJEQLkMaHE/50UVfDPvUP0S04qZXXrdltO/b6K+BB40kBKiDTsjK7L+TuJ+ZZwF1Grf259MYKUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH7PR11MB5942.namprd11.prod.outlook.com (2603:10b6:510:13e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Mon, 15 Jun 2026 04:42:40 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0092.011; Mon, 15 Jun 2026
 04:42:40 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 07/20] drm/i915/cmtg: Set timings for CMTG by using
 transcoder timing helpers
Thread-Topic: [PATCH v8 07/20] drm/i915/cmtg: Set timings for CMTG by using
 transcoder timing helpers
Thread-Index: AQHc85dLWhgvz58nNkmYYkAXts6ES7Y5mq0AgAV/JgA=
Date: Mon, 15 Jun 2026 04:42:40 +0000
Message-ID: <DS0PR11MB80497804B08F5DC0805CC480F9E62@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-8-animesh.manna@intel.com>
 <DM4PR11MB63600D482C3E8A9E90E82530F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB63600D482C3E8A9E90E82530F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH7PR11MB5942:EE_
x-ms-office365-filtering-correlation-id: 7613c7b6-969b-475c-86aa-08deca98886a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|4143699003|56012099006|6133799003|11063799006|5023799004|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: wKre7D17V5+elFOLAdYHw9mrjlX58WvIJpPkyYLOvHJVMkHnnw3Cpo9Os5QY2eE9JEskepZmzNP3jyQZuA+4OXDEODMthqQv1gJ5sqYeDjDv2APH1Nm49575iHxvBGVQe9MTtzXLt0ihR3HeffxdUhOQA+tT38I5F9dW5FYjjmiUPbJSDhmqqNKTZ/6b+qZvYnF9i/cYqXF2bfg9izsyLqtP8ipmWy0VHOfm2RHAqp+Z4lNCUxT2+JvntASlC5gOytAyGxy49kRgI4zMIiffVAV1FY4o+7/NGqwViAKR9b6UNPznKd93vd1u/W/1yz+WvMrY4PjQCi8yHpjAW7lqxWGJGXmujmuGNGA8ozEEPaShrTelpmO/Q6TBif2vpUOQ/5qEQAG0ycZKN8D8AG+kIdzVsjUWOVNzelN7CjBnlcL89RMpOVepEj0coyD3Iw9HTqdzUJZZb9dbTaTuL7kqK0tAFya7D12GSUjg3lalNp9Vog1QS/HEpDLQ6tegAHOdI+5I7ZywtN3snuKZ8pktntsu5mlKaTGhD/MyBu08YGJoUnHUIXg1ccTV97kgzAcVVB9ZSNuWc+Lsf+nqQQoLPPt1uV2FA75QqcKxarKDtAgA3PL/ClKIbp3sqK14QKB58lhjbAw4tVbGCZfAdIlHi8Ukqi6X9JCP4IE2+t7j3CLL374aNbPA1p/QR4SVyXELjN4kHYzCtC5SNtSPzoBrKW17Sl1z2jOCMKrdLL8XcaP0D2+R3qUJRkPD+Bx92e12
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(4143699003)(56012099006)(6133799003)(11063799006)(5023799004)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zu6sBHQ2oeKqio71WohnDIJJOqfYE/hd4Q5Rx9/+Fv4ZOhRf7j+VPNPUm5BJ?=
 =?us-ascii?Q?SD8yCqeIFvzYjjKTLoWSWPZ/HLbkc0tkJXLznzg/Sq8lb3rhhbrbeSV+U5hD?=
 =?us-ascii?Q?OfeVMkxEkMg+6mlLGmoVVtHTUrLV0Zc0o4UUSQNx3mihwwwsfXfyP1hHXJwy?=
 =?us-ascii?Q?bmQ+/v82PIVo/a19GFVzfa5696GXXB782dlHp6V0ohfZp7488zPUpP4GzO1k?=
 =?us-ascii?Q?T3SugiPYY4XwQg6GMOWAz5GS596D/lqigR1k5YUtGe6Yngo9q6dUqN0RF7j4?=
 =?us-ascii?Q?CJCChn0l7xOPwNF39BCgwDj6AQlirjH5Hcc51gnmkcED1VcECIgBTmDiQFT9?=
 =?us-ascii?Q?OXOUSdW2pu35Uaz/mRffcaSbNOdCBNpAUTVv46uEVaHlxpu/+xqfMS7O9ggu?=
 =?us-ascii?Q?Zt76Tk2Tzffs+A22Y3DU3FONsCt+vBFP8WE6hzjs/Ln0DwjisSox/lRtWfY7?=
 =?us-ascii?Q?OsfLPQBIDeWVyv4StXXLdA3nQHY5MEl62EvYMA3Pmkzxs6KBqHu1vw/fT9oy?=
 =?us-ascii?Q?anenTxmQoH+mGrqVD0M5L8xt7Fsr0TylyKmfEmMKqF50no8cR+VlGRMXo3hp?=
 =?us-ascii?Q?ZhGMBlxML+tsHlezvV3K1qV+ZCo6bYPTy5UMNnN3MHYIb0Nx3Ci61wQVPgIb?=
 =?us-ascii?Q?Hi8rNzvY6vM9+BhZb0fGPoqyWOIFuMIZsatAW3y3/ER2mE7YcmCiYCQX44QB?=
 =?us-ascii?Q?N2CLRxJIkWDlfuTpaLr0TNNfxv+gI3ymUbZdWv9/7mqMtDqd9yVdqzr8wUrd?=
 =?us-ascii?Q?rsycZNsUR2dT4MoghgGCWRzVMGlZYTmkK13YlBx0rLPBJg9oqMk1xHBVWm0B?=
 =?us-ascii?Q?LW4rfVQ+xuv4eXZaf96rN7Xuw4iv4MfARZmG+DnwXvVZ2pV2ALqivz5ESW/x?=
 =?us-ascii?Q?OEPisgQorznocYnHyAGRfomGla4hozCLGUPpm9uDqLF1N1JD1YbJLaW1MqZ6?=
 =?us-ascii?Q?xigrahscnchIrCOT2GyCEQCi7rO163cDk9iahtUlGcAxvajDDimpuqjnnfVR?=
 =?us-ascii?Q?nwKKvBekFq/eol7YkfmC7bdib2iqARunXxv1OjoD7D65Eoz/PFiDs5hrDRRm?=
 =?us-ascii?Q?IHXfTbMIdzilrJzeKrZmcd/I3eR8ITklStMbTnpTxxLctfYTrYYXZj7QujuN?=
 =?us-ascii?Q?/Ps/QL80V/SZIXp9ylmHTn3uF+Dj9COGpfibdxDlEZiQrpHZnXJympo4bs/A?=
 =?us-ascii?Q?W0OcZvWzxnDJKDQ/3tM5S4zGDMDmlehS+olPgYSyTYIU7Jgo19KdyQNeQBvt?=
 =?us-ascii?Q?JIcpGV+wo6jBdSr4Llhv2gYwlX00Q5cD9NO67jgfoYtezx0gR8CTH9lTRBmq?=
 =?us-ascii?Q?o9lLcTyGUcINz0dVdJpAWn/42Rfzno1uuPXdEROoAAzz0J5HSc7pORFSUiPI?=
 =?us-ascii?Q?qf9DpB0sk/T4eRY73MSiUCwo9uq3xbWiaVNcz8zxAH30MJuS5Vn+l4PTB+nN?=
 =?us-ascii?Q?e54xjL+RSTV/1jjpJx9yaEWZJj6xVb92Em5vWzEKiT0KoEJVr7w9FGaQ77v1?=
 =?us-ascii?Q?GiVl264lAJ59Q+0XYiP7OVVItdW9ZsliMFogW1eF5m4/WTzPpXWp6TUl2Lv8?=
 =?us-ascii?Q?X7bIUIAur+rEn3UPM4z0e8X3APVtsvzjO5p0k0iXQeM/Q4UIEbPjW1XbFGEJ?=
 =?us-ascii?Q?NzEE+XY7MNHKugDCVAkn4HjO5dQGc2z1OofUvPQarjlipSwfSh3nsX1/VY6f?=
 =?us-ascii?Q?j/VGyagfoGmCodQOMA153a2QXJm7rqSVpNRJrbSJm/THI7GbParpTpnu780A?=
 =?us-ascii?Q?m1w97OhKqQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qM/25YfjX5oTpBoMla31xXiguDdzbo0mFBc+umCrmM6tsp0uij2R6R9NrOaaZb8x3kFRH92pXTlIPWnl2U+zafFGplJLGwEVTcRva+A4r8VjLj4rEA4FlVEQjvM5stQdE+bpIouWRYO6O7fkkMzbSjB1ceUa67VeSe5WXRrwycWM/ByfhypVM1PrSgekebbqw6+++PFxtPS9XIqICiONHsZZA678ll4uiBXO8DqVF6MJLotvG/aufMrqi/ws1qFUOvaj8LVJ/s6RIqjxY6E23PdVjAmMuMc6rEytyZcS7azHbmUy8m0CGV2Jclgj1Sap2azdTfwaCgkGlxwsua3ung==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7613c7b6-969b-475c-86aa-08deca98886a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 04:42:40.5582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fG53hisJlIr0Rb5rxlPwsiAOCSgELmJDJME/NPFCMZckNEAatn4XkYqr+5ESdbJAdQrTWAHk2T8tlaZ77bLPWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5942
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19022683512



> -----Original Message-----
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Thursday, June 11, 2026 10:10 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [PATCH v8 07/20] drm/i915/cmtg: Set timings for CMTG by usin=
g
> transcoder timing helpers
>=20
>=20
>=20
> > -----Original Message-----
> > From: Manna, Animesh <animesh.manna@intel.com>
> > Sent: Thursday, June 4, 2026 1:24 AM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>;
> > Manna, Animesh <animesh.manna@intel.com>
> > Subject: [PATCH v8 07/20] drm/i915/cmtg: Set timings for CMTG by using
> > transcoder timing helpers
> >
> > Expose intel_set_transcoder_timings() &
> > intel_set_transcoder_timings_lrr()
> > so that they can program timings on any transcoder, and use them from
> > a new
> > intel_cmtg_set_timings() helper instead of duplicating the timing
> > register write sequence for CMTG.
> >
> > intel_cmtg_set_timings() maps the CPU transcoder to the corresponding
> > CMTG transcoder (TRANSCODER_A->TRANSCODER_CMTG0,
> TRANSCODER_B->
> > TRANSCODER_CMTG1) and calls the shared helper, gated by
> > intel_cmtg_is_allowed(). It is invoked from
> > hsw_configure_cpu_transcoder() for the full modeset path and from
> intel_pipe_fastset() for the LRR update path.
> >
> > v2:
> > - Use sw state instead of reading directly from hardware. [Jani]
> > - Move set_timing later after encoder enable. [Dibin]
> >
> > v3:
> > - Replace id with trans. [Jani]
> > - Program cmtg set_timing() along with primary transcoder timing.
> >
> > v4:
> > - Use _MMIO_TRANS() for cmtg registers instead of direct
> > multiplication. [Jani]
> >
> > v5:
> > - Modify register definition approach and match existing transcoder
> definition.
> > [Ville]
> >
> > v6:
> > - Reuse transcoder timing helpers. [Ville]
> >
> > Bspec: 68989
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cmtg.c    | 25 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_display.c | 13 +++++-----
> > drivers/gpu/drm/i915/display/intel_display.h |  4 ++++
> >  4 files changed, 37 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > index fbc8a4f2b9cb..082c04bec9ee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > @@ -219,3 +219,28 @@ void intel_cmtg_set_clk_select(const struct
> > intel_crtc_state *crtc_state)
> >  	if (clk_sel_set)
> >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set); }
> > +
> > +static inline enum transcoder to_cmtg_transcoder(enum transcoder
> > +cpu_transcoder) {
> > +	switch (cpu_transcoder) {
> > +	case TRANSCODER_A:
> > +		return TRANSCODER_CMTG0;
> > +	case TRANSCODER_B:
> > +		return TRANSCODER_CMTG1;
> > +	default:
> > +		return INVALID_TRANSCODER;
> > +	}
> > +}
> > +
> > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > +*crtc_state, bool lrr) {
> > +	enum transcoder cmtg_transcoder =3D
> > +to_cmtg_transcoder(crtc_state->cpu_transcoder);
>=20
> This can get INVALID_TRANSCODER, we should add protection for it.
> Check below should help, but better to add an explicit check.

Added an explicit check in next version.

>=20
> > +
> > +	if (!intel_cmtg_is_allowed(crtc_state))
> > +		return;
> > +
> > +	if (lrr)
> > +		intel_set_transcoder_timings_lrr(crtc_state,
> cmtg_transcoder);
> > +	else
> > +		intel_set_transcoder_timings(crtc_state, cmtg_transcoder); }
> > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > index 87092ce6d67b..53a44f505dd2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > @@ -11,6 +11,7 @@
> >  struct intel_display;
> >  struct intel_crtc_state;
> >
> > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > +*crtc_state, bool lrr);
> >  void intel_cmtg_set_clk_select(const struct intel_crtc_state
> > *crtc_state);  void intel_cmtg_sanitize(struct intel_display
> > *display);  bool intel_cmtg_is_allowed(const struct intel_crtc_state
> > *crtc_state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 17621f66501f..a6a1da4bd98d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -60,6 +60,7 @@
> >  #include "intel_bw.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_clock_gating.h"
> > +#include "intel_cmtg.h"
> >  #include "intel_color.h"
> >  #include "intel_crt.h"
> >  #include "intel_crtc.h"
> > @@ -132,8 +133,6 @@
> >  #include "vlv_dsi_pll.h"
> >  #include "vlv_dsi_regs.h"
> >
> > -static void intel_set_transcoder_timings(const struct intel_crtc_state
> *crtc_state,
> > -					 enum transcoder transcoder);
> >  static void intel_set_pipe_src_size(const struct intel_crtc_state
> > *crtc_state); static void hsw_set_transconf(const struct
> > intel_crtc_state *crtc_state);  static void bdw_set_pipe_misc(struct
> > intel_dsb *dsb, @@ -1637,6 +1636,7 @@ static void
> hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
> >  	}
> >
> >  	intel_set_transcoder_timings(crtc_state,
> > crtc_state->cpu_transcoder);
> > +	intel_cmtg_set_timings(crtc_state, false);
> >
> >  	if (cpu_transcoder !=3D TRANSCODER_EDP)
> >  		intel_de_write(display, TRANS_MULT(display,
> cpu_transcoder), @@
> > -2665,8 +2665,8 @@ transcoder_has_vrr(const struct intel_crtc_state
> > *crtc_state)
> >  	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
> >  }
> >
> > -static void intel_set_transcoder_timings(const struct intel_crtc_state
> *crtc_state,
> > -					 enum transcoder transcoder)
> > +void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_=
state,
> > +				  enum transcoder transcoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -2777,8 +2777,8 @@ static void intel_set_transcoder_timings(const
> > struct intel_crtc_state *crtc_sta
> >  	}
> >  }
> >
> > -static void intel_set_transcoder_timings_lrr(const struct
> > intel_crtc_state *crtc_state,
> > -					     enum transcoder transcoder)
> > +void intel_set_transcoder_timings_lrr(const struct intel_crtc_state
> *crtc_state,
> > +				      enum transcoder transcoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> > >hw.adjusted_mode; @@ -6673,6 +6673,7 @@ static void
> > intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
> >
> >  	if (new_crtc_state->update_lrr) {
> >  		intel_set_transcoder_timings_lrr(new_crtc_state,
> new_crtc_state-
> > >cpu_transcoder);
> > +		intel_cmtg_set_timings(new_crtc_state, true);
>=20
> Maybe instead of true and false here, an enum with explicit names can be
> used as argument.

enum set_timing_type {
	MODESET =3D 0,
	LRR
};

Added the above enum to intel_cmtg.h in next version. Hope that works.

Regards,
Animesh

>=20
> With above fixed, this is
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20
> >  		intel_vrr_set_fixed_rr_timings(new_crtc_state);
> >  		intel_vrr_transcoder_enable(new_crtc_state);
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 1963dbc80221..ef7e0506f77f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -424,6 +424,10 @@ void intel_set_m_n(struct intel_display *display,
> >  		   const struct intel_link_m_n *m_n,
> >  		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
> >  		   intel_reg_t link_m_reg, intel_reg_t link_n_reg);
> > +void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_=
state,
> > +				  enum transcoder transcoder);
> > +void intel_set_transcoder_timings_lrr(const struct intel_crtc_state
> *crtc_state,
> > +				      enum transcoder transcoder);
> >  void intel_get_m_n(struct intel_display *display,
> >  		   struct intel_link_m_n *m_n,
> >  		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
> > --
> > 2.29.0

