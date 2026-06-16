Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V6fmOlQrMWpvdAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:54:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 013F068E804
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 12:54:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UbRF1tjq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9CF610E76B;
	Tue, 16 Jun 2026 10:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F06D89023;
 Tue, 16 Jun 2026 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781607249; x=1813143249;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QhY81sQos8Ou7e931Zemx7Nv4Wj/kH+vkMwaOSfnwO0=;
 b=UbRF1tjqy9Y4atyooqAcIvFKb1wNzAjrsP5mhZoWqL4eFPEgskN0BlrD
 9NbT+tanZTEz8dBPAJDu3nVDPF8VjaOKwC7dl7KVolGNX2lvW4LWmzEAy
 Ee7w+YW8GqoXveZsiz1V6xHOo72scY4QruArrM+MkYSpG+AK7vinoGYAo
 sGOvN+Ur3sc3L9waJONnYK2HUROfK3tF+5C8+9SInB2U7IcFiPkYHvQqM
 jgfvu6rMIXizR4CmYQTV25/55QUDW+9R2Gt7Knm1v4WqPVGhHo8mNtp5k
 fc7b5znuyLON4ekoEfsm0c8FCG3e3QxHBCPaJ4OZYXTErcR0pv+Xzdubi A==;
X-CSE-ConnectionGUID: 0aIIo3IbSnm5o8XPJLBDQQ==
X-CSE-MsgGUID: rpkh2Oq9S9ee023gopnFHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="99785415"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="99785415"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:54:08 -0700
X-CSE-ConnectionGUID: clqzyn4TR026K7qTZ6N9cA==
X-CSE-MsgGUID: jBPt5XzYReKdXhpYpyHI1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="277939418"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 03:54:07 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:54:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 03:54:07 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.50) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 03:54:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tErTpZkP5Hef2WPoO/BIiN/RN+lgF14Cc3vYRhHLyNca0IwI0wZBuxXHDvmgfdsms3GHqexLvfh6uceScmhXhjXilsaTAlNTC6vM22fk7aJvAvz7+UqfDZqiU4L09T2+a5uo3/w3a3gwiutiqpEubN/HERzyI/1tCh1AnQigm+sUuGlcUlDG79ouQIc3GQGvtCLsEx+g8fVdqZZa4vICc4GdVSqYFyQpyF+SqlKya8hcyi6Bb9BeJXkTkjAP5XolB41DXiB2A6JT4yaeg9qicRqCIZV/lBcyga33L7EKEca3gcTbMG81iJ6gd4cYyWb/QBRdovdNtfRXuh5oXWWBZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EG2xi10JFw1XQxHZIu+8jZA5ee5A4LsgKQkkTZEO1BI=;
 b=m7UV0ND7A7B24HunUVOIZ9qBGEvGiU/Q85pULo3cWLrBLCpIIDZIouDWf2RLb6Mu4JHXgU3fiocDXkg/VMYj2pTH+CQX9+eZvTWDomRIBvupVhhQKniWvHVr+1KFKL0Y31B0W1haL9uW/UBnv896F5Qiumj22x1gF+uDcM4//g9bJXARRYcPNmOsfEvVRMcWYbmwngoHuCeTCVE87UQvIWNCBQFEOU3Aj9vNmPJn1pme0Qjc0PFHdPc0R5dMYjbS0IJcyflKrBIfxWEOIAp9zSGHBMtE0LU6oqidkl4mB1dZ4Jq9dK32rR4Dpc1EF+V0kY5g5IX/wCyq5nGvbiUpzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW6PR11MB8311.namprd11.prod.outlook.com (2603:10b6:303:241::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 10:54:04 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 10:54:04 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v9 20/22] drm/i915/cmtg: Add trigger to enable/disable cmtg
Thread-Topic: [PATCH v9 20/22] drm/i915/cmtg: Add trigger to enable/disable
 cmtg
Thread-Index: AQHc/Qa3SuY7bcyMHUmh9ykl9wUMFbZBAh4Q
Date: Tue, 16 Jun 2026 10:54:04 +0000
Message-ID: <DM4PR11MB6360C9A7A75CADE2DE50DED8F4E52@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
 <20260615200339.885190-21-animesh.manna@intel.com>
In-Reply-To: <20260615200339.885190-21-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW6PR11MB8311:EE_
x-ms-office365-filtering-correlation-id: 319d9c3f-fff2-4af0-6152-08decb959517
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|56012099006|6133799003|11063799006|4143699003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 532wdKCe9KQHNQa3Wpep+Q9IcWQ74m1SV+7vVr85j9+Q7BELJvuI7heo9596espj50bjcKTb79DHUPKEv9C0Z6adACY5Lx7mkkGSxsj50ZESupXy20YtSu0HfFs/rouT38Ae2OSurX6dZWecUiGtX1hn8+b1IPktDawfiQba3CakX1c7TpRVTo5pKdW2QpTA6yJr/553lUxiZZvQYCuHG+QSAkF27i6xn881IdMbTeZzlYClhoq2WKeADbdzfVASPNlrYUVPV4U3oJoipauj2SkoZkUICD7oPc9Z61w4nOT8xp5daP7exwvYr98zoZ26U4g7UoTjMR7c/6/d974z6Bxt9pgmsl9fUJLARxWTQ5pQtD0hEJGjZsOGMZRezMt+loEJ/kk1ogHQKPT4GNCAO8i1ufKm7L4Htpd2y9Pp2Hq/62UHHijlbiAZQ87Y9EcejHcMh0tZsm+xdefiPIgb42/VppL5A/3/iMcTxZGH6fyzLbA9oJr7X2KLlvKMoNZRVqmhQsK2t/ZNGYk8RsZqsSLm7y/MCQGQFq1BhsFl0JdO+4RA7EW1ZNo2d8otNSecFrAWV8prsrnOjY0Lm1/D5JbyTvRf3pXVwqXa4TOhEKbNnG/1k5dkrqA4jfdr5TuOLKt5hW2IzbCMtg+cGlH0n2ShvbjA+BdgK19Wy5L3/RywipMoUxntuL20izGuDZ01lA7YJoyj3ZUgyXyv8dTkz5DGjyMTSQDylVlzD77W4ByeA0LkAr304MFlELYZnBpC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(56012099006)(6133799003)(11063799006)(4143699003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YbnEiOi2mr/dFdsjNfjfzrzaXaLj5rzwSQ6rylN67Dk5LMO9S+r8iA2xoAXO?=
 =?us-ascii?Q?Vuy163s4H9Dap7WOzzDZmEfjakl52+wxY5sUKYhKVbwJ7YPcPDrnV9yhl7oh?=
 =?us-ascii?Q?Kv6MZWVw3Q3rFey/WpVJ4bGwf9LhYoRKw9VC3fL5tpA1hYFwz2yrKaFGAkDx?=
 =?us-ascii?Q?I9cpzhv9ejaqeQfBn5H1SOMT2wT8XYA4QgUtc1d73mjP5qaGOGwlvrgsxupk?=
 =?us-ascii?Q?5xZGedn+7wrcbzuS4eruGNhUOzox24jtQzYUngZCUjGPVxmeiznUVZ/wpZFw?=
 =?us-ascii?Q?33iU9X2KWryk6BeA0krYmkhFBGLv+qu4CNktm68QoGlpflWEzCKfCxvGEByI?=
 =?us-ascii?Q?XX12Yh4EEiq9vbJ0I58guPspn40aDkFWozK0O5C7+p1KgBh3U9ChVAB+pWqI?=
 =?us-ascii?Q?L5UM3UtQaxeT1U+TiC3T0XaqeOIF9UCP8SBDIDUb4UxNpqf5l+KmzAtlLiI+?=
 =?us-ascii?Q?VcVBT+mqpoUpIO1iLhB5OJMY0SHtaA/D5yrUZMgtTqHIJuUsYJaarEEWUa8V?=
 =?us-ascii?Q?fIPja2VrEhsQQvdiO6uBLBiZDHQLggmuAwixH8XfB27PqJveBFW8AGsQEfgp?=
 =?us-ascii?Q?HXrBw5UBnF5Ta/rJeVc1MAUJ7C7kRd2TtgdsJJleMdzFboBJLa+3gELpz3Qt?=
 =?us-ascii?Q?/fd448+wcQFpCCYdOvMtpgzdv5omO7f0DiiXNB7urHCZZCI0rLXl+q5Fqjw3?=
 =?us-ascii?Q?IeLPgqI5fiMcSOO00lmJibB/upcq/Ev830jkWiJCwiwTE4nRm57X9wSMOKvS?=
 =?us-ascii?Q?Jo28aLAmtkWgZVgSwCyn2No3oOszTT7XpZwYgvDz9MXw1eXCiMzqjfNUt6nd?=
 =?us-ascii?Q?YPVWjjg1XgfDn0+PisB3LY0asMmLgn1cYaUY49Mx/lAmgGvN3Lw+wzR4y1Le?=
 =?us-ascii?Q?umDn7f2//oeDAT5C0UGX3u3S+eu/STdps07Jdiw7fwwDZacWKF3Yqkkbxv5c?=
 =?us-ascii?Q?g/UkJrHlWqdsRqF5fj9a0eX7gpRtSuR0eHSdLhydKpqHnnrSNA9aKfaFyhTi?=
 =?us-ascii?Q?BEfVj9KZrTbyTB1yCQD6HP/U4HVFF3n7F7tk3pGL+Fwnu5qOGuzzlZjqOa2u?=
 =?us-ascii?Q?iBe3/KpBlXoY/BWCYMJblSWtfxxkTHRjqLKIGc9Ur/YMlAmx8Qz6ZY1kGLRh?=
 =?us-ascii?Q?kTsTfXMwMTyVF1ljg9WnHtVGW/4WxL+cG4AcFbXGZg1GIsAEVLkw3nRMfCbS?=
 =?us-ascii?Q?Dx25pO5/kAlCBSpN13h/xEzPLw8YW4t9qxGyX75ah74tPw3AUboqQoTvhy6Z?=
 =?us-ascii?Q?De+VY1eVK68KLC6c+3i/fMfwWzPH84He0tyWZ3KpL4B15J96TnpG7wR8tNA7?=
 =?us-ascii?Q?cHnW07DouEj0RN8zZK64n8aBzjkyuy6JRlzfL+OqYOAuspg3u9nquon1wHs8?=
 =?us-ascii?Q?iYSHeaT8CbZtwQLtR0UbUGMtE3z7Ee9meG/GR+3w1bkqyzcaKBLv3AtbA+Mz?=
 =?us-ascii?Q?bPG+aNL0t2/33NfESH8QookRzOlRhyEjc4FV1zpGlfs91CRfV5KxDyRmCucf?=
 =?us-ascii?Q?BAiHKEQ9utPH9TTz02CuoeF64vo/ibiub2zxWtP9q3YhYavFpN6XDpQ9FOKe?=
 =?us-ascii?Q?+3wOpxnS1fLWZ2/D22l6hQJRQPltzYft80PN6YmD5on2KO6UdSNKSI7JH1RM?=
 =?us-ascii?Q?s1vvHHNETXQHaLqYko0N7SNYhIaLGGSPn3Rci8WF+KT6h9KzMGtEbZ+/9axM?=
 =?us-ascii?Q?Fug8/aDpx8x6vHK6rB8Q93019Y++UsvwozAQiUHg/4ufgyN2bk93oU5vUdmz?=
 =?us-ascii?Q?dxm0nueJ7Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: O+Wa5t2gqt6IS7ozT5A4OC/E38Ebc/SEoyBgYnLqj62oE+GbKTafv/kL9zVU8OiXzgPoALiUUeojC8+ZJK5dLjgdcuBeZf0ZSvbiQazRlDfwe9fAX5WdYe5/mS464wbVcDyRFVDLI6QnUnorDd/p/fjpazRbMKCPfvp2DY/tgeEhfnTT6kOBQkcLcp9wS9zxJtkosdo37SV3gu1j8xt6k30DPBWRPLFN/mQ+qrbvBp9kD40YtPSAv51fA9CLuEdQaR09rI8Okg+l1yOpvSgEFRa9VNkorG9vACygt9p4CF4+YnRlxjAkQ1vqj0w0/o0p60GfgPsr1mcK8qNBYpbK7A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 319d9c3f-fff2-4af0-6152-08decb959517
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 10:54:04.4819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /aFSErV3wQx2vDfP8AmKtYORvH2C4h0tNYy3MQyb9Fzx1eIhkQEr9JTt0NkC4Ntn+pE24wp4Xe8iCmVQoPpXvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8311
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 013F068E804



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Tuesday, June 16, 2026 1:34 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v9 20/22] drm/i915/cmtg: Add trigger to enable/disable cm=
tg
>=20
> Enable CMTG with fixed refresh rate mode and with dynamic dc state enable=
d.
>=20
> Disable CMTG with transcoder disable or if there is a transition to vrr m=
ode from
> fixed refresh rate mode.
>=20
> v2:
> - Move the enabled flag update to avoid issue in the disable timeout path=
. [Uma]
>=20
> v3:
> - Introduce intel_cmtg_program() rather calling multiple cmtg functions. =
[Dibin]
> - Set clock select before cmtg disable as can lost during dc6 entry. [Dib=
in]
> - Disable cmtg interrupt in crtc-disable(). [Dibin]
> - Got R-b from Uma.
>=20
> v4:
> - Simplify the code further by moving for_each_new_intel_crtc_in_state in=
side
> intel_cmtg.c.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c    | 37 +++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_cmtg.h    |  5 ++-
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++
>  3 files changed, 41 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 96c7608144b9..8684d2ec2f83 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -12,6 +12,7 @@
>  #include "intel_cmtg_regs.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> +#include "intel_display.h"
>  #include "intel_display_device.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
> @@ -333,15 +334,12 @@ void intel_cmtg_set_m_n(const struct intel_crtc_sta=
te
> *crtc_state)
>  	intel_de_write(display, PIPE_LINK_N1(display, cmtg_transcoder), m_n-
> >link_n);  }
>=20
> -void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
> +static void intel_cmtg_enable_sync(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	u32 cmtg_ctl;
>=20
> -	if (!intel_cmtg_is_allowed(crtc_state))
> -		return;
> -
>  	cmtg_ctl =3D CMTG_SYNC_TO_PORT | CMTG_ENABLE;
>=20
>  	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), 0, cmtg_ctl);
> @@ -352,15 +350,12 @@ void intel_cmtg_enable_sync(const struct
> intel_crtc_state *crtc_state)
>  	}
>  }
>=20
> -void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
> +static void intel_cmtg_enable_ddi(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
> -	if (!intel_cmtg_is_allowed(crtc_state))
> -		return;
> -
>  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder), 0, CMTG_SECONDARY_MODE);
>  	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0,
> CMTG_HW_GB_ENABLE);
>  	crtc->cmtg.enabled =3D true;
> @@ -371,7 +366,7 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_st=
ate
> *crtc_state)
>  #define DC3CO_ENTRY_LATENCY_US	55
>  #define DC3CO_EXIT_LATENCY_US	40
>=20
> -void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
> +static void intel_cmtg_set_hwgb(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder; @@ -
> 380,9 +375,6 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_state
> *crtc_state)
>  	u32 line_time_us =3D 75;	/* Max default initialization value */
>  	u32 val;
>=20
> -	if (!intel_cmtg_is_allowed(crtc_state))
> -		return;
> -
>  	if (crtc_state->linetime)
>  		line_time_us =3D DIV_ROUND_UP(crtc_state->linetime, 8);
>=20
> @@ -398,3 +390,24 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_sta=
te
> *crtc_state)
>=20
>  	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);  }
> +
> +void intel_cmtg_program(struct intel_atomic_state *state) {
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *new_crtc_state;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
> +		bool modeset =3D intel_crtc_needs_modeset(new_crtc_state);
> +
> +		if (!intel_cmtg_is_allowed(new_crtc_state))
> +			continue;
> +		/*
> +		 * TODO: CMTG needs to be restored on DC6 exit.
> +		 */
> +		if (modeset && new_crtc_state->hw.active && !crtc-
> >cmtg.enabled) {
> +			intel_cmtg_enable_sync(new_crtc_state);
> +			intel_cmtg_set_hwgb(new_crtc_state);
> +			intel_cmtg_enable_ddi(new_crtc_state);
> +		}
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index b2b68b38b7e3..a08cb2dcee67 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -8,6 +8,7 @@
>=20
>  #include <linux/types.h>
>=20
> +struct intel_atomic_state;
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> @@ -17,8 +18,6 @@ enum set_timing_type {  };
>=20
>  void intel_cmtg_disable(const struct intel_crtc_state *crtc_state); -voi=
d
> intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state); -void
> intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);  v=
oid
> intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state); @@ -26=
,6 +25,6
> @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state,=
 enum
> set_  void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_=
state);
> void intel_cmtg_sanitize(struct intel_display *display);  bool
> intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state); -void
> intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_program(struct intel_atomic_state *state);
>=20
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 62dc2b414f3c..e76aa6c8dab6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1790,6 +1790,10 @@ static void hsw_crtc_disable(struct intel_atomic_s=
tate
> *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc *pipe_crtc;
>=20
> +	if (crtc->cmtg.enabled) {
> +		intel_cmtg_set_clk_select(old_crtc_state);
> +		intel_cmtg_disable(old_crtc_state);
> +	}
>  	/*
>  	 * FIXME collapse everything to one hook.
>  	 * Need care with mst->ddi interactions.
> @@ -6898,6 +6902,11 @@ static void intel_update_crtc(struct intel_atomic_=
state
> *state,
>  	if (intel_crtc_needs_fastset(new_crtc_state) &&
>  	    old_crtc_state->inherited)
>  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
> +
> +	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc))) {
> +		intel_cmtg_set_clk_select(new_crtc_state);
> +		intel_cmtg_disable(new_crtc_state);
> +	}
>  }
>=20
>  static void intel_old_crtc_state_disables(struct intel_atomic_state *sta=
te, @@ -
> 7567,6 +7576,11 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	/* FIXME probably need to sequence this properly */
>  	intel_program_dpkgc_latency(state);
>=20
> +	/*
> +	 * TODO: DC3co entry condition need to be checked before calling CMTG
> functions.
> +	 */
> +	intel_cmtg_program(state);
> +
>  	intel_wait_for_vblank_workers(state);
>=20
>  	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
> --
> 2.29.0

