Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jsQVCOgYOmqg1QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:26:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EA16B429D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:25:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Sub86gVt;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C5AB10E947;
	Tue, 23 Jun 2026 05:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C46896E9;
 Tue, 23 Jun 2026 05:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782192356; x=1813728356;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Uo1UwfNoHa9MWtQoxcOQS1gmwOq9S6whSEh9GpwaJSM=;
 b=Sub86gVto7mImF6sOswxP0zkvNyg/BZvrdqx5jdF7YFVOIYSc+vZPRF0
 d2z40xUGzHPSBISL/NnorfsTFYHCA3ybHSRtQD+yJyPcPduxOtQIcemw8
 NXiIe7eBC8tzPvbX3k5rNrakq4AOwYLk6uMUfOOCfNenqoDsv5mre/hlx
 khxLm0cpTFgE3pnp82sWGw8MjDs12bxCupBDpxo8Xbfxi6m7VaXmhoUWm
 xnli62NAGCCNnFMyXNazdzq2VB4ZvZWIg1kFYeTgI7S/ZvtxTFP4IW8tY
 5uA+nz5OhsyeSx9LxI9TuzaFklDDcVv6ZF941CBGtDyd2bgLT2UDjzt7d w==;
X-CSE-ConnectionGUID: i8TC6RYqRDq2R5WRSlmJbw==
X-CSE-MsgGUID: eicF/S3mTC2lg+UinXGBTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="83116365"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="83116365"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:25:46 -0700
X-CSE-ConnectionGUID: lBRGT/uwSMKOarzhBxLFog==
X-CSE-MsgGUID: Xd/a6yLTRzSumg7DbvQHvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="253758917"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:25:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:25:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 22:25:45 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.33) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:25:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=krTnSVPw4W21oGq2hg6+CmrxiKTJj6Y93p6+0a/QG0jURQaiNb2GHMjmywyfgngszANZ0cSniiMwcNW0EPBm6gF9STB/vH74YRN3ob7L32M5lgb+sjd4RaN8v4GDCDt3mk+NwqoDGhQCwGC57aMifI7d3dGyu+ApI19WU/lq5OyWsFQycwD5dwqIIKuw60j8bSF/1538mG+EGfl1egaYnyy8JDVC478KbSzjKrgr5FLZj/WKJ1J+B829VaULF5SpKlhkdYMaGiiXFh0+NgnTD4WirX8iiKfSqlitF4LGvlL4Aepp3yE+CxjboWcbbUo4vk+hXMqWhyyuXLnvmHKitg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IwqSfAoHk/t5fnUMyZCfKr4oFFsZq4SW6Dz83Y58q4c=;
 b=Cgzbr+3vbRUh1dDGSIBScsUB0rUxToibQZWo9aIx3R1skaZItkum9flC2v7eKzGHlEEgWQ6ZR3tRIdcm4+Jg33JTU+Su/mEh1jrkDIPCrezMrZW7Q69pY0uhpyd3mXhvvj1pzPyDG5uzOq1nEEqzQZ/rgieWCjt43E+5mcZeH9cY4fLOc60lRT7yccDkIqsTTgPXHy7MT1cJOGtQQIPtQvv31JxB0/KnDZb/U1GrAS5W/BzPzFtEiifGviMa//WRyJsBpYWKncy3PN2b8QIDTOvRcAybtEmQfTJAbnxudnFgl8GogpwmWiZdx4wxblvR9xHDn4Z7g6XKDrw/nvaT+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CY8PR11MB6841.namprd11.prod.outlook.com (2603:10b6:930:62::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 05:25:40 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 05:25:39 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 27/28] drm/i915/dp_link_caps: Pass link_caps to config
 update/lookup helpers
Thread-Topic: [PATCH v2 27/28] drm/i915/dp_link_caps: Pass link_caps to config
 update/lookup helpers
Thread-Index: AQHc/c7gLgWYsh1KFE6iu1PfFofh0bZLpcdQ
Date: Tue, 23 Jun 2026 05:25:39 +0000
Message-ID: <IA1PR11MB64672CF015A224B0CD13AE8DE3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-28-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-28-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CY8PR11MB6841:EE_
x-ms-office365-filtering-correlation-id: 089c4e63-1d1a-4d4c-1bc9-08ded0e7dd16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|22082099003|18002099003|38070700021|3023799007|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: z3HG4qRaPJcIKo0WGCpSfJdYwL1Q3T0eeaY7YgtuYvffxS5JQcYo+7Ycws9MgbDX8mRW5SB3R+pkf1rp+W+0vydJnWWixbtz7/WQYLLKlBv2Wyk66gGAu0q+GrCkjKXsb+Wd5mzT7Yj7CvBxfHVzNt527XuiWOpTYokDJXfonoF/12HbQA4WWN/IrWbJzP/msG4Tzm/B2T1OghbTWN3TXIXxekd52RCaLjnMqd5GwoZpo5tRrzyFij9wXqTTPOFGQtyiAq866wnC45K8vKb1mhpECx9XyezJMVsdvqR+lygWto4+TfiAjTwuN0T5U9hZe2ypPXqwokV6ywpbhXgP+eOx1vcjKLDeP/gkopYS1OTvr9Ohvjy2yYt4LLyUcWFkqW7bMceDqiKApEQ0P/Q9b6KppWVhgaXEvtsAaUZt5PA3WjUywoJD+2HpK2BlE/GLK8iTTWrmVcOyp2PyKwcyCz/3w7CtH7hmRImX+MgsXRZQs2p51Htyqz54zWDAEEV/NiwHnm1HAvlW7a4QgKOg7q35BYdB51Rb6RJoCPj9DVS2LOX0BYuWYaUl/KkYXPnl0T2WYfU5jUYOJK/q/WbPXJIwnPwBri7XC4nTy/1p4sG198uQkbU5uzIYfU3nyd7XC1QfpxeU8bIUp1+R+cIWf5SeXpbBS6awyMmlAy5dI7hs2Vn5mRgcjRlscWoa9se8qo6jP1aV0sNuLCDW/75qpMvatwS7q/Er/xlf+dH/KYQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(22082099003)(18002099003)(38070700021)(3023799007)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gNkbMNuhHgUrecpqrUfDa2eZBCb//5GetGIeXuIXc4PsPoCquYpRrlSjuizx?=
 =?us-ascii?Q?tT+1L0TTmbygBaJxSs5DpATGYnmBoeaeGQ8/ADX+etGNolRe9PNxXBp345BR?=
 =?us-ascii?Q?oJAtpvJO93lBVcQt8w8TB8RlG1vlJg5R26a3lWNDwWVqmEy9kPrsOHVNWpo6?=
 =?us-ascii?Q?rxb42gUWceHYbr/GlZFGku9yWYN0wzHD2W7byE/KK6C2ZGmP4dPT3Mcb2gzy?=
 =?us-ascii?Q?uZb1vqVIsotmlkQWDWzRBcrJGWVvBGpb8lx7PSbLBPJSR27n+3dXC4HWh8HL?=
 =?us-ascii?Q?5BbkGv1QKfaD9hjg20EgLyFhYBNymhMc2VGuFSiQs0Sgb2fnDt7WuoqBUM8g?=
 =?us-ascii?Q?4YpxjkG0lZfOcScpZFhlxZnY18ZTR7BovE36Nn6JQA7wbfv+J3Ctejx3zedw?=
 =?us-ascii?Q?GITQRfITWqi+TS2U1sr0vRMQs+SXpvFE4X6T2rbuk8lCvJ17mkHPQQlwz4Ch?=
 =?us-ascii?Q?koY9JmROjuQfTcFcbS5VAE7nl4TvuMFEVBtnbeME7rX+P/p/YTZ/DgoFlTHU?=
 =?us-ascii?Q?aOirTaQPMK28cbhO9loHAgG07Dfiy0eeXrG/Xu7r00Ml/euCBTcJUzWlHejc?=
 =?us-ascii?Q?uw1p9fVzE6Dj0+8t5rGtm4Tyck04Xc+65vJ+09Znse1U0HJ4ISs/90bpyQmI?=
 =?us-ascii?Q?1VvW/RJT6jnx7nSUu4to9Etom6P9Oz4tFM8C8QSxzEVRG9D5nJQIUrQk5fJE?=
 =?us-ascii?Q?jqv8hjrUy1cOQzbW14mMN2++buILGttOnNQyp/pnzwLbHqpfRQsoqpec+Mx5?=
 =?us-ascii?Q?KRA8bwsTCUj1+djv/W/HULtE71wIXGOmwKTAbnaFTjdwzHsfIZBb+Z/oW2o0?=
 =?us-ascii?Q?4R2g41prKPDzsng/mD3MaXZvb7jeb7WCIO2ih+ZERt+eYJ4TVXQfvcMmUS78?=
 =?us-ascii?Q?RZYQ/tvymTWeDLuLwzVS9D2hAJrKgeDtJ3/Ho1K3I8X7SjDYw+0WktPx32vJ?=
 =?us-ascii?Q?MRaRWoykjT2zW9aiShQEwvdChZLIRVrt5lKvzuIQzHkd5AzKSR7fkABF5zv2?=
 =?us-ascii?Q?HQm1PzwQB75JH/u7r9hBbD0puK9wKaQnlQf5Bbqqc6hN0S8gKCFUgBZ0NK36?=
 =?us-ascii?Q?pKzGnKwNhs5CmEPpZjKoBhnqehBBDsBhyZp9Vrxuf6MGqaV1jqNhmLSY/FP+?=
 =?us-ascii?Q?I+0fHjxvu5D6ebOyMXutZelX0bhAj3YIREvwHLne/Uq/ay+p1bNWaBicIMVU?=
 =?us-ascii?Q?L5Xyhw+xvK9XdDn/11gkeSFICzIlCxjWfAs73ZDCGNsDEyeX5qEbAcrlNHHa?=
 =?us-ascii?Q?PTODyt7UpkjGVj2QBbOIppKWzn0X0W7LYVSDU1XBAo/PCtYblhWOzmdm7XMC?=
 =?us-ascii?Q?LbynqyH6V2lgaclYU/iRt14NvmP54syhjj4BEGkIZEj9O+e8VUUkA5ETVABq?=
 =?us-ascii?Q?j24MhDW2u34H+O7yvjojIDXfk+RvUfUA4mwcuZkxcg0f+3DVd+TNRCPG2QZj?=
 =?us-ascii?Q?5b3XzdlX8WDryHTsEPKhoU0Gp7KgbLoMFIsO4wQi5QYWHES2sQGHaqW9+MOB?=
 =?us-ascii?Q?OEia02AIA0q3uqty8uMsam/j+TzEx2qIfQt41Gy9+ctAbxXQxssE+kvaZot6?=
 =?us-ascii?Q?7oNCSF4FxmkyzT8zA1+hlbVnCJdWoP7VxI7acoNK3IpR3+sG2UckbFiwGMIB?=
 =?us-ascii?Q?c2lI6Xy886+eXaDCX6DYbhDH5/RkjhHfjAWPMckb64bUTJmkUeNmlVeRNZjt?=
 =?us-ascii?Q?OmgQlGF7c/+wJs3c4Cd2W+hmPe3Xg1WsrhF9qTDNaR6E3cyv?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Jt1Q+uVGk+afgtk8FqlnzTFpiuOqD6Cd8c2Q3fXTJ8+aMCaE8SBNtcaxmVYtwIwPQRhkA81rw2GHcTZufkQX7LE9eedqQsYZQ6DCCLDDy15B1AvUqixaCNluV2PJbg4rds2dkSzOvF9YPuAM7xk3thBJ17zFWbj9e3VTAc6puNz072XU0qukBqQmIuRBVKyPz74vkX9Qgx492wM0aWwhRnmchQ44BjGYGClq6BSDfzJG95knhxiUgkM02+lpyzSa+XySMWbiNs5CkEBrUoNDTNSoBQlNWAvaqQUYOF+8DiGVQCI3R3qBUWepTmXG/MQstKvpqDmBm0c9aBozKwGmKQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 089c4e63-1d1a-4d4c-1bc9-08ded0e7dd16
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 05:25:39.7937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i89nCgat4FrlvDhO5NIreKEx40hvJBjfygsVxKOKIOuCcmgFImCVaBdHD+80IXZFnB7X5H952l1yOzbAWkHGgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6841
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 75EA16B429D



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Imre
> Deak
> Sent: Wednesday, June 17, 2026 1:39 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH v2 27/28] drm/i915/dp_link_caps: Pass link_caps to config
> update/lookup helpers
>=20
> Pass the link_caps pointer to the update/lookup helpers in
> intel_dp_link_caps.c, as it holds the state with the relevant information=
.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c            |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_link_caps.c  | 14 +++++++-------
> drivers/gpu/drm/i915/display/intel_dp_link_caps.h  |  8 +++++---
> .../gpu/drm/i915/display/intel_dp_link_training.c  |  5 +++--
>  4 files changed, 16 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index b63c6f047f83a..07266f4e6835b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -699,7 +699,7 @@ static bool intel_dp_set_common_link_params(struct
> intel_dp *intel_dp)
>  	bool params_changed =3D false;
>=20
>  	intel_dp_get_common_rates(intel_dp, common_rates,
> &num_common_rates);
> -	if (intel_dp_link_caps_update(intel_dp,
> +	if (intel_dp_link_caps_update(intel_dp->link.caps,
>  				      common_rates, num_common_rates,
>=20
> intel_dp_get_max_common_lane_count(intel_dp)))
>  		params_changed =3D true;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index fc1061149ef2e..c5701f02fbf69 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -266,10 +266,10 @@ static int link_config_cmp_by_bw(const void *a,
> const void *b, const void *p)  }
>=20
>  /* Return %true if the supported link parameters have changed. */ -bool
> intel_dp_link_caps_update(struct intel_dp *intel_dp,
> +bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
>  			       const int *rates, int num_rates, int
> max_lane_count)  {
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	struct intel_dp *intel_dp =3D link_caps->dp;
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_dp_link_config_entry *lc;
>  	bool link_params_changed =3D false;
> @@ -322,10 +322,10 @@ bool intel_dp_link_caps_update(struct intel_dp
> *intel_dp,
>  	return link_params_changed;
>  }
>=20
> -void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *l=
ink_rate,
> int *lane_count)
> +void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
> +			      int idx, int *link_rate, int *lane_count)
>  {
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> -	struct intel_display *display =3D to_intel_display(intel_dp);
> +	struct intel_display *display =3D to_intel_display(link_caps->dp);
>  	const struct intel_dp_link_config_entry *lc;
>=20
>  	if (drm_WARN_ON(display->drm, idx < 0 || idx >=3D link_caps-
> >num_configs)) @@ -337,9 +337,9 @@ void intel_dp_link_config_get(struct
> intel_dp *intel_dp, int idx, int *link_rate
>  	*lane_count =3D intel_dp_link_config_lane_count(lc);
>  }
>=20
> -int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate,=
 int
> lane_count)
> +int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
> +			       int link_rate, int lane_count)
>  {
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
>  	int link_rate_idx =3D intel_dp_rate_index(link_caps->rates, link_caps-
> >num_rates,
>  						link_rate);
>  	int lane_count_exp =3D ilog2(lane_count); diff --git
> a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> index fa45a46723059..9256f02fed11e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> @@ -24,8 +24,10 @@ void intel_dp_link_caps_print_common_rates(struct
> intel_dp_link_caps *link_caps)  void
> intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps=
,
>  					  struct intel_dp_link_config
> *forced_params);
>=20
> -int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate,=
 int
> lane_count); -void intel_dp_link_config_get(struct intel_dp *intel_dp, in=
t idx,
> int *link_rate, int *lane_count);
> +int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
> +			       int link_rate, int lane_count); void
> +intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
> +			      int idx, int *link_rate, int *lane_count);
>=20
>  void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_c=
aps,
>  				       struct intel_dp_link_config
> *max_link_limits); @@ -33,7 +35,7 @@ bool
> intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
>  				       const struct intel_dp_link_config
> *max_link_limits);  void intel_dp_link_caps_reset_max_limits(struct
> intel_dp_link_caps *link_caps);
>=20
> -bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
> +bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
>  			       const int *rates, int num_rates, int
> max_lane_count);  void intel_dp_link_caps_reset(struct intel_dp_link_caps
> *link_caps);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 9d9911ebad439..0d4a0bf1dac53 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1858,9 +1858,10 @@ static bool
> reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
>=20
>  	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
>=20
> -	i =3D intel_dp_link_config_index(intel_dp, crtc_state->port_clock,
> crtc_state->lane_count);
> +	i =3D intel_dp_link_config_index(intel_dp->link.caps,
> +				       crtc_state->port_clock, crtc_state-
> >lane_count);
>  	for (i--; i >=3D 0; i--) {
> -		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
> +		intel_dp_link_config_get(intel_dp->link.caps, i, &link_rate,
> +&lane_count);
>=20
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

>  		if ((forced_params.rate &&
>  		     forced_params.rate !=3D link_rate) ||
> --
> 2.49.1

