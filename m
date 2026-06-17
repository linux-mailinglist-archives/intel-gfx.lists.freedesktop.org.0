Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xQrMGf5RMmpEygUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:51:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB716974A7
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:51:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PuREgQ5P;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CB7F10E974;
	Wed, 17 Jun 2026 07:51:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D5E10E2C9;
 Wed, 17 Jun 2026 07:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781682683; x=1813218683;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WeALCANiXEIr2zzDSvotcNZnEI4cF+JMrnrft522Up4=;
 b=PuREgQ5PY2v3lFxXPsHQCJj4icQnhhywFnw7KssxlebggjCNMMMHyyc7
 80OlJMDTP060XtvC4CROu0va4juBjjb53Ccci3vXbqBFeCsiP0xAOxRnC
 G6sdhCfpu3bJTg7UCXZlzo2IoNae9g4FyDAPESyTC68olhv9itIjJGdCo
 LoNNyNdTBfHQFSzfAtRi8OjmlHOi+CGsh1Pb3qPLpZdJHfqHT1CAXa1nE
 xfFCUYULx8oXrZy/UPd11nwJmw3z4d7LdO0x4LY81BxJIc9cy5/RY5Ell
 ntTeney1YhywbYaR60wZbpjla2ew5vyyDThZJ8wcMdKws9/3gNqhDzHij g==;
X-CSE-ConnectionGUID: x3ujbVC9TquFnykAssLh2w==
X-CSE-MsgGUID: z33dIkXkRUCDit544STK1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82255678"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82255678"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:51:22 -0700
X-CSE-ConnectionGUID: VeuMirLORPqVcDaayOEwDQ==
X-CSE-MsgGUID: jgYuqgfrTVKNOETSiaIA/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="252955725"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:51:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:51:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 00:51:21 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.25) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:51:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JMbnpqBFyVOhAhkqnLfncJKJ59B+sHnTzR8D+vKuf8webuiLOEfXT+m8xdGxkDbAqxk28hveQLqsZH+S6sHAi0VUfSMQCJFURIN3B/1FNdcEKa5xkhJs88wuxzWnPPp/7iJniNXh/x/+r34YGLN1q7yyplyVdGzDaQOljiCTDEmnVhAcdBUlNxLFWsuvTQC3CB0mKmo5L6hhNrJCsHOKXQKUT6eaDZJE3bp+xhXEVte/kXvl5Vubf+WDUamgJR49NdQdhS34IzPo7f7IChRtiiAZM8teVLmFk5bGrD0uFYdYrmMTmd/Ss9tLTBQxGGgHAOIfAes8RlcN/y3fTXgBOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XJT/m1BrQttN+pI93kBJQ3dXBQExSedwrWN0rFok8RE=;
 b=t8e6Bo8hKa+tNDDdEeaHRVUOh7f3FMMF8BaMI5ERg0Eftc7Lfmy6nzsL+s/LvhkRF+hJ1Uyj7FIhtHHreqlDCkUceg3wMxHRLkVf0ctBL5mGMKUwLYwzpy77waEOjoL0aSpgtivzPQiRVmp08M2C0E7U6YopG7tTEUgQ3Io83ueYCNPoP8WdEJzuDDM3rsXiI+tvDFYkXTDPN5j6v7gABSMsYPYQGJ7o0hs34SOYENr0Reta0nBL/QQsVyMR6DKLjR6Cbpj2NtFy55OzTBX9KbOOoRTwDFKLM0ueAWbVxhxzlQDCLNoDBbkGhr+34lWJwn4ZiR4lt2itbbmh9KXyQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7491.namprd11.prod.outlook.com (2603:10b6:806:349::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Wed, 17 Jun 2026 07:51:13 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 07:51:12 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 15/16] drm/i915/display: Guard CMTG function calls
Thread-Topic: [PATCH v6 15/16] drm/i915/display: Guard CMTG function calls
Thread-Index: AQHc/ayBho9biRJ/rEyjzhP9SsOhX7ZCYInA
Date: Wed, 17 Jun 2026 07:51:12 +0000
Message-ID: <DM4PR11MB63606067CBB534711A091172F4E42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-16-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-16-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7491:EE_
x-ms-office365-filtering-correlation-id: d8194d05-f723-4ce2-37d0-08decc4533f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|4143699003|56012099006|6133799003|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: C9XFUyCYVvS2Z5rPB+CF0caG64FbIFH0eJhlJ3iKn7BvOYJTPJ5SH6Ht5M9lw6Umas/3qeXgn3F3WiES58TvGLZz3A/K8oEbGAAJS1VFMv0A2xCY0dhVEPhoEytrTF9dk165xy/n6xnsMJwJqjGGjoFfVJ+TBI29ZeXdRnD9HVzGN7KzE1CKrU2zOvKoLsQve9D8bImfbqJdaGFT1FZNgUdnL4er6XKQNwgV0DxzyZiTokMIbsXcsuXVNb5Jgo9qD0PqskzLTDplljdeSCooI0TIkZcuoGrq2+ywVdI/eBXaLU/Op6wZDx4pAQBX3KEaBX9E2beZFqstjsG53UAB6vcwRqho6WFXGArQ5DmZno3/UEVokoqyDARqYJiJgBnE9mfB7DmU6r1Npk4b/TpYzWu3CFEeFs1ZRrUTy9aMxl9q0KOOkDnLpBIF/vRWnN/7XK1CCKtmaHTLCh+4zPDMoyivH/IDMAWbvVDyvRzf5RXbaGd6bgMbTHAfGNppOMxooYALSA91K35J3m9WVezXpZUCU7d6/Rya9vTT5cc9G/+ym2xnRv2QKp00c+W9axwZyih1Fle7wGlMLLGl3glAAGBt+fkUbARimMtrPi07AJLsy6t2qpp7QDbZfMfR1MzX5hMmr2nKlHGdL2b2Rp2nNuiFS8O9PmNI8TtVGp4chELol8EvmRaD6+rf/SuT9saTlJ1+7YUgEIdSUWmNIqywPntle5NusByZTQ3uMJFnA0OCIMCwHiDn1WJWaSto379l
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(4143699003)(56012099006)(6133799003)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nMAC4oWl0aEukqtGETB/2SX98kxz8IUdD3HL289Fikqri/XPKPRE5X2ips1l?=
 =?us-ascii?Q?rzMZxxmaBiLk4sRuYE8Qdj0JTm0LhwdDuE8A9pM5ABVeZ5srQQjwrgdoJVGz?=
 =?us-ascii?Q?M6JUngmIwtXbpCWm0fog766aDHNyeg/4uCHyZrfNvQSwXpNxSaCI37QjUqe/?=
 =?us-ascii?Q?OSEYS8hNzm71fq2HIENsKIHMtzlwBxVVryT1iKFY0cfGmf0aIBeO1triisBq?=
 =?us-ascii?Q?3tWxiyCN+ERQ0FPdzd8e0Zt8AbtCKfyQF+TpkeJO3rrb/ngLQ3LWUcFYgeHV?=
 =?us-ascii?Q?js27r/esZjnXNf+e1dao1xFOyAzRR5p1NG1y4rC7G+eP3VBY0K74uuLVVhA5?=
 =?us-ascii?Q?cGKam1MnVuMwtDPTc/drE3SxeB4jhoov7OQ6mg7Ugbsvj3XCxHocr+B2XF+4?=
 =?us-ascii?Q?3ra7MZB8/L+j+rFA5URjNFQvecx8xVc0dPDtY9hM8IrD4GDht0mrFMNkQ/aG?=
 =?us-ascii?Q?QPbG/Mkbkniz0B7ryJDdeDq9IpVG3pCODHAQUolbeUg8/VJtAlXWhSAf0RhY?=
 =?us-ascii?Q?teThSWUGFXoKuSZm5+vAYS7NXMRj98USq9Vy3HTlg5eyiF/lkG3AtyJUY4BJ?=
 =?us-ascii?Q?Yh04t5FGNZwHA0CNajoxOMywefE30meO6tcfTLt2sYyWH7sqt9uVSqO4FBP/?=
 =?us-ascii?Q?wPVl1HFctHgnCGkmWo9wgo6Rezrw1AL2u8Fxzj2iqTxfh+c1MBkL9FY0gAoN?=
 =?us-ascii?Q?T6xaCbiScG+OAHdWaCrcIU9gzXCb2km+uX7PKbW1KhmeQVXcrsRWjTEoisFd?=
 =?us-ascii?Q?lI//ZVjoPuWvqjofAs85lVzoW1nVUs4/n6pWx0odWOqG+zkmYvdQ4tXL15MX?=
 =?us-ascii?Q?jMEzpHOGnWGsJBXz2PX7WU8jheTposIyeic1azB5LbPEg+dNZH96V2DBrlI2?=
 =?us-ascii?Q?kWisHHwttmpK+oRZV4u2Mq0ZPQunYGYoGmdLVOhJF/hs2ZVWlmJF9ArGGLqY?=
 =?us-ascii?Q?5Rrh+DYb9WEiowLpm/FThcWdXGfd97a7MRS70/koiEBT0FNifyNlxsXZUaKw?=
 =?us-ascii?Q?AFy0tLmqH11OAGDdlYnYsM6y2PTiEmgA700cYW/DcHUaJIjf3xCcXiHOy2Xz?=
 =?us-ascii?Q?P8C8Xu4aVXwq3/l+VFEq1ML5XOeegxW2n5Uf+k3emZNiEv0JMhvSsc+vwfUF?=
 =?us-ascii?Q?jVhrbaDhvABa790cKeZTWT+YuGaLr6lHm3/O8yZyNeGk9vaEEKTmszAgwJFt?=
 =?us-ascii?Q?XGSvmV5bSUKeXdEbdIvX3QRAItMXxVSneMjNqs891N+zZgb3qI/+4z3xaDu5?=
 =?us-ascii?Q?W+2arGMGGsLnHxUtIbFAc3+ZksCHkKXBW8Qse2T3ESKl219a1iCW8DV1+XGP?=
 =?us-ascii?Q?qlR8EuNeH/vgOyLZg37pO3CmjNnvOd7sjC231uoXw71lT35WpvLiiOyh09+i?=
 =?us-ascii?Q?0njobrR0u+21XuHuR/a0KwnIZc6tlIgfV9bIgDG9uXyjDwaCsnZXgDjoYVv6?=
 =?us-ascii?Q?/kO1kWzD5eKm284eiYIFCP0oIuQJv+csinANWw5icPoa9Q00JgUjF85CRZFe?=
 =?us-ascii?Q?H3+ttFb7IYW5X/RvxQNd2AD5kM0ZrW8GuFJ0BVfkrHigojLnEv7echZ1WCRV?=
 =?us-ascii?Q?Ck307uQpbMRKxxNZVOXaALc7aaX2EUdLpe/cC6UNzCJbXl3rd4W1/VLRJlxp?=
 =?us-ascii?Q?1e1EV7uT5zjwUfAb44YjQ7DpddT6eJOE7+cbctnx/z7XbmjW/RbqiZae78JH?=
 =?us-ascii?Q?+BG33AdlGnjc4USF84O8K7jULTEyEQExAjPG0ZkuPbs3WdUJC3AKcU7V0BMQ?=
 =?us-ascii?Q?GHT/t/I3/g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dMxPwqxC8AhPyIR+XC1WpJ9IEvhvWiI3RNKEA0wwg/B0ScUFsrlWKPFDcsu2hepchhsPKPRphGpm5A9ztXTCjOYRR+QTUsvZvlWGlAbefNlSeWwU2XuqF6zHm3oP63jSfNgZ6rdtXJlA7Y1olCNjailUHdqn+RT9w0nuDzq9CLLbO4koDMNww6viQBt9IsKqUIZ6L/LcpWBAMS9fUq2WljMBviV1gfiebSicqyWOyYgScnkh+N67JGNYEAVqGHccG41dFJ1pX3TGwOaRuUUGQleZYgHhCvzeHNN5tB0PeCQuQjUQ/PK0DGGIUlCE/9o9lMExt2rqASHC734qJHY/Ew==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8194d05-f723-4ce2-37d0-08decc4533f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 07:51:12.8994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tnFIuGkzBZiC+YWRGJeLv9hw5IlB83OrzIfSl/ijOV8/kd2g3RpfE+HfHF1kHrqYtrZwcdD7Id44ypKJ/jHZPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7491
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
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCB716974A7



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 15/16] drm/i915/display: Guard CMTG function calls
>=20
> Check if DC3CO is allowed before calling CMTG functions in
> intel_atomic_commit_tail() as CMTG is only used by DC3CO DC state.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index ddcf2d2054b7..3b17ce669ac5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7579,10 +7579,8 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	/* FIXME probably need to sequence this properly */
>  	intel_program_dpkgc_latency(state);
>=20
> -	/*
> -	 * TODO: DC3co entry condition need to be checked before calling CMTG
> functions.
> -	 */
> -	intel_cmtg_program(state);
> +	if (intel_display_power_dc3co_allowed(display))
> +		intel_cmtg_program(state);
>=20
>  	intel_wait_for_vblank_workers(state);
>=20
> --
> 2.43.0

