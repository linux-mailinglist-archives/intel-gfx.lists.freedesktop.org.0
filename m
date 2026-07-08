Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yDwcJPGhTmp1RAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:16:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4714729D28
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:16:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TwAiuGyn;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5864E10E645;
	Wed,  8 Jul 2026 19:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBA3210E645;
 Wed,  8 Jul 2026 19:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783538159; x=1815074159;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=92vZe/DhO3IXAhhDwbz4MxEm2t6ox5Whq2Oi+8N45Nk=;
 b=TwAiuGyn4ICVA8/zXwk0c8x3D/7qMEuk/Nei45AkYzabGtY2YZQSQDBa
 SjL2E64MuEYkHyxPeV5JDQBmZWlN3cLWRQbrJ7qS8yW5FnRy75wWHjoB1
 IxM7/Wq/LJZbeTFDQlZDygVuW97JR+GFh6T7a+ANomYOM+nPmrwZJClOJ
 2nZG7W3dEbvckDLP9nF7dFk8MZavYXDAoZopNs8cIpKf9bfxFcP/VwRl3
 T5A5BMFeGK0FI2KWJCDfnWH34ICqN4q2nhMQsg6SFa9E6jJlq3a89KR5p
 +ROa4u+6uLSMJ1YtncPDGULr8xlbSiNO4w+5/TwNjxHjY9Ex1cX/NSQQx g==;
X-CSE-ConnectionGUID: EAbGmssjS9K3rSd8hb4xUg==
X-CSE-MsgGUID: 7rsExEZIQaeNqz4ISsEEQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="83187756"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="83187756"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:15:59 -0700
X-CSE-ConnectionGUID: PGHpnqbtR2iV5pc5MtUTMg==
X-CSE-MsgGUID: /DLEBC5/TKOHl/5hWtxEfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="258672751"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:15:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:15:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:15:58 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.0) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:15:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BXt/uOdmTTD/hWiqj5ihfKYReDuSGyDaNQ9TgyaF7iPzV5CxFX8VVLJJefjo1fhMmAPfnzteY+gWn/bGfc735dWnpGiufrMv/PyKa0BEu91dvV7NjpJ1f3Jnb1j8Y0FVGBVOy844O+oMVxyIout9KsVCCpMQGSb6arRkkc0PymqvZCEkGA6TVUHdA22QPXfxu2Jbuswbg4jgJOOTAbSKTe3VWImSN/ji6fCBzRIJJ5ryAyioh4B0OSIRnHoObauN5GvxecxxyLK5/mcM0zxDJGa3VO7S/0Ny4r1f70hAHW6ELDg89Gmiphht2wmXUEpzomSdoCDug03zh0nVPKwPIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/L0UN0jY5daD6RVESeDTfhU7G+nhm7N76CJD0gFUlQY=;
 b=SULyEaCV7e/ejTHq9W6Yks2IcNhnkLGues4FLX3yVa2IbaUolTtTbdmmNYlgwn9dYpdD4nCbFwtv76zYxdsgT0NEJ3b78d7/AJQpz6Bb30NtPnr+a7MxoEBpNtgenyuVCzE5Qgm/i7Pgp9le7BZK76zMbom8pLMfHmUlutGzVZ9r1YDmof4yNqNS/18Ik8Sc4Hr/Qa8JB/jIuZYc9n+ePABLRgF6dvrvMq87/uFMO0stF6vIX3q5q70yEUB1RdF2RhEurslRiO8ZYJxroc5HEAl9MnH+z/61Jg2hFZLne2XIzvmiSigoZmD2HHC/qkp1H4Tbd4QcQ/HcYjjaIjLAag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BN9PR11MB5242.namprd11.prod.outlook.com (2603:10b6:408:133::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Wed, 8 Jul
 2026 19:15:52 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 19:15:52 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Samala, Pranay" <pranay.samala@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 10/14] drm/i915/color: Extract HDR pre-CSC LUT programming to
 helper function
Thread-Topic: [v3 10/14] drm/i915/color: Extract HDR pre-CSC LUT programming
 to helper function
Thread-Index: AQHc/j0uSLuxRwRM9keMvqDAyuRg47ZkH9YA
Date: Wed, 8 Jul 2026 19:15:52 +0000
Message-ID: <DM4PR11MB6360286902630D9604F3CF92F4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-11-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-11-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BN9PR11MB5242:EE_
x-ms-office365-filtering-correlation-id: 3842cfb6-0510-441a-6f70-08dedd255411
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|38070700021|11063799006|56012099006|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: gAD/n/3QKqf4z3bvnsVvHQZEloTqKiNY6BGL2zt3PUNcZw+iYs5+rxn2sSLjPHT3TsexupM8yWwqm5ZYsCc71D0k7mxUHy9X/PbVnCuVJzG4MaoxzNvf0SdDPCLS5PcPpcmzCPVVvaoxh1txhC1ggmV2QUEHWnlVvdUaSz04MC+MB/+5KJL6n3oobNETGvy4x8VbxFIxrdGZ9tSBbzvv+KdVFYuxraNuJOjmCEOhnfIw19lTn9uvUAvjgXliCJXyJ4FP9k9bJ9ZVXbt33iwC1EEwhxSsfajZjfa6dawx9ra+WQ8QIULE2NTpmXZqvkNFA+oN/vQ5Pz7f8fCwSLsFaMhsxbX4c8MzDWSILia5OtKhjsllSUm6RXrwfX42Jy04HnpTrlnYF2DUfa/Ljijwn1c3qD5QSp0eBYha+xkoqUZn6R3mYCB3AmGu2Zud0HPhvwKkKlBbYT9r2CyVCnXHHo9HxScKupQYB7ME7TEhocBBdOf65WN/x0bs31di6vo80Yz4S4EtOz55nzSO4GcsDa/zwmvse+Nv9Rut+ruXIyfPvY0l6r6yMR9bS6QYuNcCO8VoUwmNNTmDaDmaIgCei98frHWD340ztfCsaKZJyLyagtboylyBjqlMUSPphNTMdbPJR4xRTH8vII/AGsNibR0e2YbS3F5hyp1ZHyTDVYkuSy7vry9WyCcfKAYRw+Dgv6jzM5gCh1ENDIc/EU7/NILry65jWHgivRpWgitI/os=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(38070700021)(11063799006)(56012099006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B6LFoq4HaZSHIOkKwcOvaf1B+8P133vRaWLsFfsacv+GysVWAx+UgTyf84J7?=
 =?us-ascii?Q?3ha6r7i4kpgw0fpSPTRpEkym0Q3AEyzJbpe/JCTU14jJeswaWztroosfraRP?=
 =?us-ascii?Q?Ke2XaN1MCLB2U1JuQySJgloqp3b3lk8MO9rq5ADAQThTY3FYwDcFyufDky2N?=
 =?us-ascii?Q?2nHaNo796h9K0q8mqslXcrvlRRQ+hQxASm0SsGtjCk5bfCGsP2e0b+aGKomi?=
 =?us-ascii?Q?vTd5N2baIHlB+7jjK/V0p9bRx5dL10vv+nZ4I0DCrtmeGBeV70/kt31wvSq9?=
 =?us-ascii?Q?3m8AGWHNimAC0cXZrNNBwUHRERd9zI7cMB8rifEdlqCdj5iqrkDxnBtX0Iqh?=
 =?us-ascii?Q?WRYCG/xHdWILXALeaKgkwj3YqWATiyQCG3RzYCu1+vM6XITCK9Xy68OVK5wX?=
 =?us-ascii?Q?pL38+6jX72p4ZPBENwLcA0fIlITwGCRwFwQlb0VSzUu/P4Ke8vtNy/gjrpsD?=
 =?us-ascii?Q?tkdZerDdO2wuSUFi45/R0A+9HVxvfuW35CLssasC04MdtAjU8MJa5INIwsIm?=
 =?us-ascii?Q?fRfTeBgJguAQSsLM/J9P57HqzpvfayZknVadi2HDLQgzELJY+Y6sAf/8rXjP?=
 =?us-ascii?Q?q0Pa+mGXyK6+8vG+IO+mkzMQ8DNipVbgchJZ0xrxUcPkRucKscQdGTuyT5hh?=
 =?us-ascii?Q?HSuLUibvh82QWN4iudydq+vUORTY7KNwOxVZaxAnPx4dwn9UGXr4uE64d8z7?=
 =?us-ascii?Q?Grq8d74qDnJyQWr1LLkxXg5vgkq4k/AK5q1zNWku/MYgIjWE/VpyhqxiR+LC?=
 =?us-ascii?Q?Ft5USmyng1aJwNKe+Nu33SX/cEi3VKiqKwfdCyErTB50dQ0TGKSdyA2mFwIR?=
 =?us-ascii?Q?TVUn4r8AOKv7Yj7TY7ic2kz6hPfJ4EelX+2bHEgh0JMUYh+ySOvGPw7YAZ6g?=
 =?us-ascii?Q?+RCwet/xIGDwcu6Ur//gUK9VQjkoNrmW+AAKz2bktvAhOVvhULpaG+rhE9Xf?=
 =?us-ascii?Q?menZeF/VzrMfpwUZBBUO6mSiV8XaxaBwU5/+Scv0rCCr4ATBsbwM76yaxcXc?=
 =?us-ascii?Q?9nCTjBFt6IgE88sc5Roda1Q5+idvIaeC1dKGzHqgqnaC4rOu+4Fxc1ta1n6i?=
 =?us-ascii?Q?iWmErVloX46K+/1FuukUF8bLCH+cdh1a80K4A1gAIW1W+/wUW+tPZxMElPEd?=
 =?us-ascii?Q?+DRLXRnq6SH/hJsExyTPjGjduuVNYwCSvvqkC0IQ2rVt0s+X7vgKWDj7pogF?=
 =?us-ascii?Q?F2EqN3uqppbyQX7qy+u99S7/AuExi8o6yhnE2BWK6duvTFhCGqDrsiycgy0h?=
 =?us-ascii?Q?DEy4/a9RdusIrJq4cwoB2FnWQ5YyQhlTfj/v8ETq9eu88CBMMMkntq+fciEQ?=
 =?us-ascii?Q?F+L04gP5K4hFF/qK5NqUlVx6gspGaWk8MY1E2wU0ufMdFgwFzwUi/hsC4bmn?=
 =?us-ascii?Q?7n7J/yQUnfpiMmBTT2Pe3LldLP742rjnebH9y+o3NdMBCKU7xXC38IQ1boOi?=
 =?us-ascii?Q?3pgXxLkdfM4UuYXld0SUR/Q6uYySjJ5/lU4f/klITMTsj1do4+3PIVOse2lB?=
 =?us-ascii?Q?mm3uOvKqcNgTooIRFQSmaZZNmc+FqyVuVJ+SZZq54RimMHT/DXWDH1VbGDsW?=
 =?us-ascii?Q?Yk6QdA6AJ5QDfb1gax/ViJ0Y9MdHai6GhXPHMm/vsPWZwEr94f3dyF/jBiN2?=
 =?us-ascii?Q?uJoZAtRO3qu1DOeFmJFholmpEWVJJ49Q+Tim3Jh1ISnaKb9PyIxZNbUL1kkp?=
 =?us-ascii?Q?iBoYCU/uZ1SobBo+a1AXGe+l2ulqkn0B8Te1Gu1e0wLHc9CtT8tBmp06uLp5?=
 =?us-ascii?Q?Xz0vnXXYNg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ivJGMp+t8uTcfRU/xBrAVXvb098GxMHEtQnRWbZkYqW+MFH7De1kFhbv6/V8i1jAxyEPZlhCW6VDVcplFE6vBK5WH/y0D7kJ24Ggf0Tf4Jfe+YTCeHSxLBtiSxYhizIc8Xr5qj0aD2ZzEFjuEhAhggPzUbfLK8H+C/qhY7KY5gnh60d7cOA10HSiOtN6oegwTPohJ1Z4YoHG1r9AWXX8VE6ZZEcXOW8zCepj6XMXpifr7XBKS9HdS9SFkjC1y3wxEKGuoh8Z2D5YXJIaJIbYjXKTWOAscjVetuB7zDJgdUYw2aP+3d3RPDAOwVABhMp1A9g3ZHoP5LYWT7CpgUjfUg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3842cfb6-0510-441a-6f70-08dedd255411
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 19:15:52.6572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M4ioMW4J20fFxFIqspfFlW2SmQ4Czt42KvxnpRAFO0eL6yi75sfYxkdHJ8EzgKULHj9w/TwH10csS/4oZvOGBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5242
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D4714729D28



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Samala, Pranay <pranay.samala@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [v3 10/14] drm/i915/color: Extract HDR pre-CSC LUT programming t=
o
> helper function
>=20
> From: Pranay Samala <pranay.samala@intel.com>
>=20
> As we prepare to add support for LUT programming in SDR planes, refactor =
HDR
> plane pre-CSC LUT programming to a helper.

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Pranay Samala <pranay.samala@intel.com>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 30 ++++++++++++++--------
>  1 file changed, 20 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 87ced9f6ff40..2a32ab62721c 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3959,20 +3959,15 @@ xelpd_load_plane_csc_matrix(struct intel_dsb *dsb=
,
> }
>=20
>  static void
> -xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
> -				const struct intel_plane_state *plane_state)
> +xelpd_load_hdr_pre_csc_lut(struct intel_display *display,
> +			   struct intel_dsb *dsb,
> +			   enum pipe pipe,
> +			   enum plane_id plane,
> +			   const struct drm_color_lut32 *pre_csc_lut)
>  {
> -	struct intel_display *display =3D to_intel_display(plane_state);
> -	const struct drm_plane_state *state =3D &plane_state->uapi;
> -	enum pipe pipe =3D to_intel_plane(state->plane)->pipe;
> -	enum plane_id plane =3D to_intel_plane(state->plane)->id;
> -	const struct drm_color_lut32 *pre_csc_lut =3D plane_state-
> >hw.degamma_lut->data;
>  	int i, lut_size =3D 128;
>  	u32 lut_val;
>=20
> -	if (!icl_is_hdr_plane(display, plane))
> -		return;
> -
>  	intel_de_write_dsb(display, dsb,
>  			   PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
>  			   PLANE_PAL_PREC_AUTO_INCREMENT);
> @@ -3997,6 +3992,21 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb
> *dsb,
>  	intel_de_write_dsb(display, dsb,
> PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);  }
>=20
> +static void
> +xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
> +				const struct intel_plane_state *plane_state) {
> +	struct intel_display *display =3D to_intel_display(plane_state);
> +	const struct drm_plane_state *state =3D &plane_state->uapi;
> +	enum pipe pipe =3D to_intel_plane(state->plane)->pipe;
> +	enum plane_id plane =3D to_intel_plane(state->plane)->id;
> +	const struct drm_color_lut32 *pre_csc_lut =3D plane_state-
> >hw.degamma_lut ?
> +			plane_state->hw.degamma_lut->data : NULL;
> +
> +	if (icl_is_hdr_plane(display, plane))
> +		xelpd_load_hdr_pre_csc_lut(display, dsb, pipe, plane,
> pre_csc_lut); }
> +
>  static void
>  xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
>  				 const struct intel_plane_state *plane_state)
> --
> 2.25.1

