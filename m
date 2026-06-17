Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uZILEOksMmqdwAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 07:13:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3D5696935
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 07:13:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FA84RXkF;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E74310EDEB;
	Wed, 17 Jun 2026 05:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA19510EDEB;
 Wed, 17 Jun 2026 05:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781673189; x=1813209189;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vbBCkQuLstAwDvHwnB1Ygx1oquDTpSxzDfLU0DSQHZY=;
 b=FA84RXkFGqHlcm5Kyy4ikawMtOjzt647gSCDoPFn9QkvE7UP+gRBtVH6
 zUwJw/a0TecUzuxeUyLf40x1BtIv+TQBvrTS7K7jt01YwzWInmXmdnsrE
 jcvVzYZrC+DT/DUrfaBxranD+HDZGB30sDuoqGG+F9e1st/iSS45LlZFJ
 fETqjRSG5l5mJulE8DRII3pHgjRZVlcnrsYHgngezLJat1vi3m3H0dIRh
 nyZjDXhUjAskAUW2/OKoJgpCZ4HKBkt5sUrUS+M9SPFgpRBhaxkWU+7gK
 p9mhXMmFdVNKRm1AQ20NoAXOEFK9TNBoWZ+bAyu9bdvLeLAzmHY0yzYfU A==;
X-CSE-ConnectionGUID: BlS1hl7oRxyppA976z/WQg==
X-CSE-MsgGUID: OS3KgZ1+Tj6+NimhIhjiuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82467079"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82467079"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 22:13:09 -0700
X-CSE-ConnectionGUID: Mpm787wQSJmPNE9Uo5UhOw==
X-CSE-MsgGUID: r+B0d9euTceJYnYiA8dt2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="286075952"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 22:13:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 22:13:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 22:13:08 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.22) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 22:13:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SgFxfi7qcZ3dGDSh0IuDk7vlw+K6zVuiFauOhzZaP7HmAvRbeCRGCyh2kyljQGHIVmMeOS8k4pS1Cx/qtfNKybHpAnG+vrWnD8NtB3O4UuyHfXSiVLZlkzmi+52Jfi3c4avTM1VguBcjmis8v6yUn7CiOBuiOqbZuW/5jNGKB1lHs2DkvowwuTMx/hsu5B5dhoAYN2nRphYlbx2Mjx1tr7iY29ASWLlwqwje0SbdYnx3xfYGn4cxcvIXXack7pRLIAw82Q87NlyF0Wz3Vl6KAKPCqPmnUU5W/TRBbBVnFxwlg0wzFcNK5rU8+rFvNGF7iTv+Pkz5qg+nqcJgiEuvdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k6oARt6uXf3LhEQbHDQTPc28VNVemT+gh7emGoZsnSU=;
 b=kfE+ff4CVxVx6T/xjjjgp0QP8/fi6dcyE0U0gkQv98raXYdgqgWzvxdYMaJjByI+49CZIsAuqMV5C39bYnoegzIIlRFlllOi6KF3vTA6YPT2t5cC8LQCTMhJB2jwhZyKLF6PN9DOESCzGO1OoJTTLX0FKovZeFYfqZrGCxff3cWVI0TYDt8ljyNpePZwD/wmkaYLG4PiX3bD1lu5HbiMxWmk8qHtG0RQr2ktVv5t2D8zD8ri3c1FPzx40Y+22Y2zX9VFnlivDwTHRSIYsjlOz+PBggRkhFrG7UmB8/6miBsREsJ77YIfA2Pp29JZV+xZ1jwpaH3uGTe+oGqamTP75Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH0PR11MB5189.namprd11.prod.outlook.com (2603:10b6:510:3d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Wed, 17 Jun
 2026 05:13:06 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::5a70:4005:6905:8e31%7]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 05:13:06 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/cx0: Remove unnecessary hdmi link rate function
 declaration
Thread-Topic: [PATCH] drm/i915/cx0: Remove unnecessary hdmi link rate function
 declaration
Thread-Index: AQHc/hBrB/tAG7lmIk+Pzoo0VE3VnrZCM2eQ
Date: Wed, 17 Jun 2026 05:13:06 +0000
Message-ID: <IA1PR11MB634877D379DD67C9CE0ED9DAB2E42@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20260617041807.162927-1-suraj.kandpal@intel.com>
In-Reply-To: <20260617041807.162927-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH0PR11MB5189:EE_
x-ms-office365-filtering-correlation-id: de29b99d-a956-45f7-3089-08decc2f1d58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|10070799003|56012099006|11063799006|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: F3Kuk+LkqMTBiXiYwljsAEHYshyXiGSjefEWxE9Z9HAWrhNBIKJlyXYlNEMaSzA8y4ux9vnDXEO4+TFTS+TFUSD5IlkgBZOqWSXjLbKq4cnw3z6pi8jUD+K6srQ2ETkePZJu84QUqXIb/yzPAZGo82qFMO1eXxx+wwsPkjtWMf3Z3gLMxqe2Fep6GFPhwIovaJSTaALgxeyUCIlD74d3N3abJlpkVecb/hGOlXPTtbIhSxlR4HWhTHlBajZqkVu83Oa9i90XtGvGpvoik35yTRmRpTq2m0+vEcvjK8eW6azUqWbwrTlGn2BEIWgC66LqgT+8tWf3JWk7N/sqlrLQSSBTy+Ulxbd9scz42JTch1UwmUwXRSrqggeBcnZLxcw9kjd1dO9wT7UbHjWr8DDDOKRTlL7YPwXJvEXtTx+WHEh3Mk5PdM/Rim/Bu/khxbaBxg1xGxq0NORzfl0w3sVLVttvyHcnY5nb5RJjd4f98z5BdOcksJ01/0kkbgHxFduK6LE/txQeG59VJuBs2M/aXTLbwbVn8J7WKJJzyqMSwW/ZqwC2WqmK9r6M9IQogIhwVvaappzRUv1LtH6YbjwA5jZHpr0QN2iFKYYYvoqfpw8g4O/+47Kg7kJ2iamgtq0/XjA4K20Uhycyk1Y8X29tfmY5fr8t7FPmnWkNCajE6IZDQGMWPdFB/4ETiJJ3zNJ+AR2ZalFilIM6iS5618lXPe5Dbww7AV3y54r5rkXVbR4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(10070799003)(56012099006)(11063799006)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nCE+7bartErYIBQUwQyY4upGb0Rvbi68Iac06XuTYgGgFkJnqMkzLdeeYWN7?=
 =?us-ascii?Q?odahsW4/AyWxZhLJJ8QJTr4lLx8NO7ltOSzExrVVvAMYknZqnR9wZeHCAQ+q?=
 =?us-ascii?Q?A7AU1QSMEFOIkC5zT3GspAVjbOVFGjqN4kM7qdg6rCOrAtFBKTDAQoq+IvK0?=
 =?us-ascii?Q?Bn5G0cstqgzfClgbNK2OlcZb+++hv3TfU/QsjdZFF+dc20T1TSQ2MZGoz+re?=
 =?us-ascii?Q?hdl6A9vZSKjWjqftpBS+7wx9HzU5FomRkurdO1IaHMInk1Xs5AQpC2xvgXiR?=
 =?us-ascii?Q?pqn+6DGZuZ6iKdvB7f6nKlQbEJLADRLBfRHM0lv01uN2NMyo0IePy7DOZQ5J?=
 =?us-ascii?Q?UON+gO2v2AV0m+wgSi4nCLMZ6c4RjHtMLng04L+HaAs72mMcvItB5721iX9R?=
 =?us-ascii?Q?lUt9TrbwyqiBhYIf8vPsgfwJz5R7LZ9a1R5MvhVjMPqwqhslqJvV369yvtAO?=
 =?us-ascii?Q?THHNmkO1lqyQiB+RRSq+dSUkbiU03VaecyT4H+5QOkpPUYB3INR93DmL8O0t?=
 =?us-ascii?Q?IcmiuXWSMQepWAIjh297JgVG1DCIJK5HvIiZgPwFtQqZW8/ULNWSN4ieQdnh?=
 =?us-ascii?Q?qdTpAuqSmrGSeJHvnmInCidHxmqpNdeAe5LfC3E3KQLUizaHcq2drm2bXMNm?=
 =?us-ascii?Q?JcffWxbivKvz5VyZBj0tAz41aeCiKlfnlsnqJCSj3RO2UJlKmLJ5T+WhwmxF?=
 =?us-ascii?Q?d/robTFCtn7XuYEwOEHpl5ZcVC8IFegn073iMA/7u6p4efGjJrNhyd09PH8i?=
 =?us-ascii?Q?8O2m1SMOeGAqsDISz1EZQibsFMzv2OiYTz+umaoxduJ1jYgtrkR1aw2QLOPx?=
 =?us-ascii?Q?CojYQ/Xfod8LTmir7XF7CPmFrvCpLurqhxpcVj5RpnrGlAa1U+VYIP7CVXxA?=
 =?us-ascii?Q?TxmvpAASGbOZR4w+tWnZ/8lPlXPYwWN3Bt568sPba3DzkuGCKjbjJ6E+jROl?=
 =?us-ascii?Q?LZmuCMdqowvPTr+JGeE6sjVZoHet5Yni6gDxXVdH9MityIFKfR6fYs7GttR7?=
 =?us-ascii?Q?KP4j+qqkJN+eGXwFln6pfv04cAJzDIbSyvw7JvYKgpEiORSA7+O0q7lDCSs+?=
 =?us-ascii?Q?2fTKqr619N7tNggilj69URAxAcNSbDiodaRiNfQJzAehB6bviYVz2M5XriyD?=
 =?us-ascii?Q?oEYP94HvaDKJsZrZ1LILzjBvnGNBeoUlLo9rqvgNIjDOHJ4Fi7FsX8ufxKIT?=
 =?us-ascii?Q?1P5ioXsS59TC8N/F6QezSduSKZ0sZTe+aDRyjlQh0BU8VOy7sL3deh02Yp/7?=
 =?us-ascii?Q?YiP+Hhk3ieekn7Y/azJT5nZqNOyNOXyAcKmcbA2JEax+2d4tOTb8IcvP9Pcc?=
 =?us-ascii?Q?DSyyTokpPpD30NltFOiT70Hcf9LJwadvlhoM3C9xHaCfWLW2V06BxE8OvpUT?=
 =?us-ascii?Q?driEVqDrRklKeZXk/kEBZ+R3PM/wu11XCEYuDwELbWGc1bCu9TQ/h4P1duWm?=
 =?us-ascii?Q?2TrEzlKcAr+wMDZkioyTjF/N0CZb/IVp0qKitgntpYQNol2qsr/3pu7kFj5n?=
 =?us-ascii?Q?6oYmvBBxFi1Xe6CT2fHO9FoF9jP2fxexJFl2QIljSD99lJ0IraFa5gxkvuHY?=
 =?us-ascii?Q?hLO1mDzMfzabL9OKes+KzuwXbh5CdRsb6ql+eoCNc7X2dZsWTUd1mmJrDABs?=
 =?us-ascii?Q?K3LJPMyoWRzu3IyH0w7fPTpg9MnRtFcpJJT/5MkyoF+yTTjbUFEQgwFNij71?=
 =?us-ascii?Q?RK1BQga/U7wVxwhw0V1k5/U0UczKHL0unR4LbXJGoWb+J/N02D5m0tEAlhza?=
 =?us-ascii?Q?IJwD93Pg0aGx5fhyiuBh/gA1eZ1S40IMo5Pk8jDYNoa24r/lQElZ9zGOkm2A?=
x-ms-exchange-antispam-messagedata-1: amUN282iqIo829nONN6HOkXI/YmzuQGvRQ0=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: L6iMOFNGL0tXwZkYPJp+W6Gp702UEWRv9Xn3NFqygN8ysrbxNmokYLsVeLtXnq5APfPzxHJqTSC7yZV+ylnHHvUp0hDyFJJxKHm6ulH8XhhYZ5FARiJCHYAY8PFzncxRTFpl57PJoYxir/QS1ohq3kafv6a5x7Zx9wJeI87QDQP2wOE7Hp7Aa5PJIXVGP4C25Kemx139Mgeq/PBTPF2r88veWhrjtIIdw+TUoep+ECaA9/IDuQGNTQKOe0s7lqWY92DdWr8jugXjRwBscyHlE+3Pv08wiuEVrXExf24yzB/EWycpVPf+vVtBKdkmKY1dNXeHuw8PsoWuDVAHWegdqA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de29b99d-a956-45f7-3089-08decc2f1d58
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 05:13:06.0471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3hEM8z8amHEjM4byikQ8PjPI4947y0aWkOTezFklnllDasmB+y9fAWozmHekMDF5UuodCZ7kblkYdyTOdBuN3sjAWKulyXJ/zqa+l5bPvRbsZxSk1L30GQtLh5JNz3Uo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5189
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C3D5696935



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: 17 June 2026 09:48
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/cx0: Remove unnecessary hdmi link rate function
> declaration
>=20
> intel_cx0_phy_check_hdmi_link_rate is not used by anyone but is still
> declared. Remove it.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 1428e7a5a318..95c20eb4b4b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -60,7 +60,6 @@ void intel_cx0_phy_set_signal_levels(struct
> intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
> void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
>  					 u8 lane_mask, u8 state);
> -int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int cloc=
k);

Changes LGTM.
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

> void intel_cx0_setup_powerdown(struct intel_encoder *encoder);  bool
> intel_cx0_is_hdmi_frl(u32 clock);
>  u8 intel_cx0_read(struct intel_encoder *encoder, u8 lane_mask, u16 addr)=
;
> --
> 2.34.1

