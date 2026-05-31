Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBgvCZd9HGqAOQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:27:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A81D617803
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D2C6112BCF;
	Sun, 31 May 2026 18:27:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6QAZRk1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A80E4112BCF;
 Sun, 31 May 2026 18:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780252051; x=1811788051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QGd8UarjdWjS3gzCGDbBm4bQSLi8iApzkYZrySP4c80=;
 b=c6QAZRk1YNrwEqQd8zYCe4h3b6xuBVNjwlv/I9YhoOG5Uyof2RiH2oKV
 TOFD5JhHW1FRnVXmZDhwTnpXk+dEnDWWKZZN8CNuPztxHeaC8QsLerRdO
 AP7d0RWwRwEcNhHVkoqgJLNp+t2Rg9xXpj+DAKdYznoUcMqQ87jCO2XQo
 sK8kP3wiT/L3codZMSi2Aqa9JmgQahxelhQ4E1+dRL7eKCjqTKSimN8Os
 caeLJbV6fbaxr8bn2NjlWKMkIoJgDJP0Ny/h+6Uki3GTJvD6e2mvW+XGH
 MQQFEJzphgDghOOCZI4JIQvEnBi3DCFvnBCyxaA/pQdEM1QYkav+UTYlM g==;
X-CSE-ConnectionGUID: Cvl5Vy5OTnO0fEZAkzijlw==
X-CSE-MsgGUID: FyOKvQ5fSEmjMmD6XEqtjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84646670"
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="84646670"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:27:30 -0700
X-CSE-ConnectionGUID: ESYchFK8TduVqlrwzL/6/A==
X-CSE-MsgGUID: 5z4pX2eRSO6I/Hya0/vBlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="242308199"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:27:30 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:27:29 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 11:27:29 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:27:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AZyi4H7sroH8JosDHpPZ3i/fu1+hq09SBwbSL1eJixrtmNYLfLvgZSiGKJmvTIv/6N+Jw4at/dPfY4C4yzjYjB6pkM1VmZxkwYRqaXOt5MCk/od/pVYpSQdnWhY+ynEXoSnLt+/spnF5Suw380UOWUXHh8z8PGH/NJOGnJuqRzB2fChoT3Wa8xGo91qdETAQUAEHm3NlbBN4lg5nUprOyu5WtmLpIjmj5HzBIRQHd/TMWOPOUqu6JyV/OHkQmENm/seA+Nu62eeLFajGcII7V97LGZ2d+dHMuhwqCVU5aOnwmCvs5GNZaWOEnE3K2WZdCT+iedUW2jq+iBTjNeKApA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IDiv6tAjqdd4Plc/RVfGSkjnj7GqFdSqX2d56qzEbz8=;
 b=l4tyHcSD8NjcEn7kn1omLtKl6PCwEXJr/KZUKI20XdZ6oSStiYqOOBf2rTEcOuuS3PI9v5FQXDvv/fW1+Ad7Jr9v6M1FI7BwsNF7jhc6hmXjuaVK5HCO6o+stsB2AwVXn2wll09m1S5OGgCP1+EXVwcilfr85vE32Z/JYQWlbujn4L282NbVOzsvF3tPkuf/ettV5QHqECC162d6weFApb68oYZF6Q5BguIQyzHrTwvPMcoN4cJCnTwkTlUAQiqs7/G6NAry3cQ9Af4/cv8CB+m4fzG7sKcZshJ3PucQ7vjz743Insm0oNdPCtAtwOXGLSHiByXKFUm6ASkqYcmXKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPFE90FA9325.namprd11.prod.outlook.com (2603:10b6:f:fc02::5c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Sun, 31 May
 2026 18:27:27 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0071.015; Sun, 31 May 2026
 18:27:27 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Samala, 
 Pranay" <pranay.samala@intel.com>
Subject: RE: [PATCH v2 4/4] drm/i915: Fix color blob reference handling in
 intel_plane_state
Thread-Topic: [PATCH v2 4/4] drm/i915: Fix color blob reference handling in
 intel_plane_state
Thread-Index: AQHc07C9dFVzs32PSUeqovvSjKrcAbYorodA
Date: Sun, 31 May 2026 18:27:26 +0000
Message-ID: <DM4PR11MB63604BBE2496400806962623F4142@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260424054129.2148049-1-chaitanya.kumar.borah@intel.com>
 <20260424054129.2148049-4-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260424054129.2148049-4-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPFE90FA9325:EE_
x-ms-office365-filtering-correlation-id: 6d774a89-72de-4064-0bf6-08debf42447a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|11063799006|4143699003|18002099003|22082099003|56012099006|38070700021;
x-microsoft-antispam-message-info: KvFJZaLpaQ/fqvj0PU+FcFR4+XToOAo2lE3tRkIBk9njP7xbXt+ZWPqr+qonuqDCwSMv2/XbgoGMeuKIz+UqyWmHsnXoQj574gDvl4bBrCM2Kugo0JhVZ///xkJIX0mAT8OHr/P1ry5/cFQAdjbQYGPuVoQ7R0sVyJzZ7q1+AXqaGUddK3wzthsTc09BsSBIhfmRevucN7cwJ4zROBboe5dsoqE3TftH+mZchgA3E/4VjB51EC1NIgybA7vRqEI5hSWwTSKQ1pMHonVwp8M0GE+t5IRDBUewc8Lxtukqe9tFoYet7ll7o3tB0ExAsaRca/IB0eZJyPfKWt32gnjNZhGtCTgxHCEdCcIbNFOT5NUxPMfEM0yFzfdeMKMwE0hYOqLp2daZbYq71rdNzQhkpWNb2SESjpFcODBAjXgh2mgSQp8L3QCJUPVPNylVaTkWaqjDGkSDdmaKRLH5Xf5tC6HRN0RxG/y4Fv9+Qbz233qCvA0LTMUKvVXviFBnpkLHXekb67mMZo7a/HoK/vEZLrB3e/qQ0BXkwnAFH+klkAngkGRIGeFQc94jPk6QoNnwrH594vrQy/KmHa1Ykmo6++jzOO8bqi1DhPq70jFNf4nyk1BVjLpa6Sg4vkM9LUT4lpHyP8xqiNw2+BLNDjPBDUxyF8TuYGQQPLrI3IIEIgtVNQ9jkRYtrAuvR9aoLgRGOZWyTkAPjCAwcfNumOSbRgtvP/4S2Vzq3sfznT1m/kZtpAH/XWE9+p3VhYx7SZgx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(11063799006)(4143699003)(18002099003)(22082099003)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hStScWfI36ZMucjj3qMP1+8pKnQ4elZNCDLIxptoQ93aKw8rgLOogEfShqsf?=
 =?us-ascii?Q?yr2oGoMxkSM0j9X4dhEB08gNvx4Gz1wNMTtBEhPv7lGR8ap9rV6iUgx0NwhY?=
 =?us-ascii?Q?mm32hGTOU+sA4oE0y0N5riRGm9XzKHJXVUQVpcKgvJzgx8Zqoo5ZbAAB7t4f?=
 =?us-ascii?Q?ZZX4Cx03/Ldfm8VEgEt21Ok7DML9u+DqumfkW2EjG+g9sQp/J2bkc1Fxj3nn?=
 =?us-ascii?Q?lKrKAGWwnCduy9wypsOyVkFsg+yE5vvaLCcmNqGv2SND9+Vi3dtF/LkSLVwk?=
 =?us-ascii?Q?ujiLeFUObgpH8rJ1falfBOeysvCwZUwL26LA24YZ8aLwNUxmkzWEZUk4rt8d?=
 =?us-ascii?Q?YNvhGW0sYo6aQXkhXDZpy/pdCvz2gw2EGftHYPa8LwFSl17Xr/DcinuCX/S0?=
 =?us-ascii?Q?jbHs1rKmBqJ0DjC7OXN7PssMhbQAcFFSwoFS2USsBDyGRX7bRsuj0iLaw4Ru?=
 =?us-ascii?Q?mrIRn1FxTTGQZ7MWrYJ2bf1Si5xqVR71GeqQxSeSyQoS5PJxVhTP68V2VVYa?=
 =?us-ascii?Q?TtT9Axsc85AVU7oonP+qLDPJzrMDgJt2uWC2vbPTExtyMcsQi0bNpxnv5Dqx?=
 =?us-ascii?Q?4XuzzQEMJUIsWuuFcn5qWvQ6QgXIm4BMp3McFvgSjp0na8YUZYBxtApm+G7L?=
 =?us-ascii?Q?msad7GbtL/Nt7vL+Lt0Z+dUWc68LB2j7TC7LW0ahpVE/WezCj7SMpD7/7IHC?=
 =?us-ascii?Q?0I0dKGtC2+hcLp3xHS95ZlxKStxAb+1uNBloAbpCYQ1uyHGy6RmcL5/Sadd1?=
 =?us-ascii?Q?kiZln34OjkmYuzNWr7KM4Z5OyX5j/5S5QoLS4T3n0hSMfHKBT4SfRMjjNpkO?=
 =?us-ascii?Q?ezQNKpUTUUAPUFVQh1V49QHMCc7Gn7ESyPSMZp03i40nWa5ZLNLR+4nR7NVo?=
 =?us-ascii?Q?SbxhIyt7FQS/tXZksPj/gM0quECm9TS/tdxH/r8f2GNiR7fBkBiXzIB/5ktr?=
 =?us-ascii?Q?aZlPUXvhV27oyJhukTOfPDBYGRoze/IaYb3O/wQg8KhMrR0/6TXMHvUO9J6L?=
 =?us-ascii?Q?DdCYUjsfVkotrcu2Hjstd7ZaFaM8MgHXq1L+1UIODfjQcL9MWlVYydUYw783?=
 =?us-ascii?Q?UchUmIiYc4FgaATUdMB6mOzuUsl7RJ+pO0Fk+EwKmCL9W8U+YW+yX3uenJR+?=
 =?us-ascii?Q?u1PAKw+PCSU9uD208ul6916MmNT2fCf3/tnqix21nBGzHBVOnnHTbccYzALT?=
 =?us-ascii?Q?wQZ68ln3WrmaewT8jMP5aPL4aJkOBaL91l+OX3B8SDDkNVq8v48GyGPm24l6?=
 =?us-ascii?Q?UMHGdxDfMHM9uNqYHlzNZv9ZKMj4pN9PdLe+iVd2ZCT+NvLVlqOKwLtWzvBN?=
 =?us-ascii?Q?LYT77B7ZqFHWv2+It+L0qg+Jl3es8/0GMbCzJ8x76i8OLQsHFpGaGAhIRk+K?=
 =?us-ascii?Q?u7L0KPXrXB1sX7BDaS/oqe1fGgCtH5BhMQTx1TIhlvM3DFn0NAEC4IiWPmCO?=
 =?us-ascii?Q?brFv8esRrxnNZbhqL8rj3AtY1aTdcilXwmXAVRqaMlodALMXrKDN3LLGeWOA?=
 =?us-ascii?Q?leMyHSVQ/9oWRqcc5O+qOeHnuvcKJ0vBqdpJ6DdqHei6sTT+3+6yFiEnYt6E?=
 =?us-ascii?Q?0H27zyRY1vcoKKC/qjHpvqGhNQIAmH5l68dbWG3WYTMg6TxKO0/2xhFWmDNn?=
 =?us-ascii?Q?k9LL46w1xK0E7TdqYbLH3PamI9gpL7H0fxu6dZQHWbS8QLeRxGf5Le5ib6vu?=
 =?us-ascii?Q?XzsqATE6xd7lEHecNDQZwTCnWzPtATuqICCFYym9SIM7bKVE6XZy5LmFHGWV?=
 =?us-ascii?Q?/+fpqclK1g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Iait5LmURvHoINlJgsaGjuX71BCLESu12x5qCpUUL2vnVPWQwIjTmCE7GxktEO/77OuxkOsTu5nN5CEzncU7kRTSEew2wQCDH2tHNuwhs48pfpcjUBRzKgBYWqNXPGpC3dVHirsaiCgxj0C2X3Fpz37InHOz5bx7XZkQmxfVGC9OzC7ZzHcp4jFFXfgxLBUv4AiUsPcLVvpK8anKSwt/0wPEiRm+8oR5/EnPnpR6Jm10YcavJ69yAf4DXYOFWutzIn+9e5tAib+C7vbdwJUSZ5tFOfg3DghRsgpYEQ6Shx+PWwaOQjkr3ZGj4Urh8c5l9ZLnLTmo33dFRJDKrFV8eQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d774a89-72de-4064-0bf6-08debf42447a
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2026 18:27:27.0148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P7FUR8ci3L77PMZGvwp6gl5q++4OLaLaD13vFFsAJO/ppyoDb9qDEGco6Xe498SDTDRU4QHjAm2xMooL4W0qAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE90FA9325
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5A81D617803
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Friday, April 24, 2026 11:11 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Samala, Pranay
> <pranay.samala@intel.com>
> Subject: [PATCH v2 4/4] drm/i915: Fix color blob reference handling in
> intel_plane_state
>=20
> Take proper references for hw color blobs (degamma_lut, gamma_lut, ctm, l=
ut_3d)
> in intel_plane_duplicate_state() and drop them in intel_plane_destroy_sta=
te().
>=20
> v2:
> - handle blobs in hw state clear

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Please Cc stable as well for backport.

> Fixes: 3b7476e786c2 ("drm/i915/color: Add framework to program PRE/POST
> CSC LUT")
> Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
> Fixes: 65db7a1f9cf7 ("drm/i915/color: Add 3D LUT to color pipeline")
> Reviewed-by: Pranay Samala <pranay.samala@intel.com> #v1
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 27 ++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c
> b/drivers/gpu/drm/i915/display/intel_plane.c
> index 559eef467dda..54b2c32473cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -145,6 +145,15 @@ intel_plane_duplicate_state(struct drm_plane *plane)
>  	if (intel_state->hw.fb)
>  		drm_framebuffer_get(intel_state->hw.fb);
>=20
> +	if (intel_state->hw.degamma_lut)
> +		drm_property_blob_get(intel_state->hw.degamma_lut);
> +	if (intel_state->hw.gamma_lut)
> +		drm_property_blob_get(intel_state->hw.gamma_lut);
> +	if (intel_state->hw.ctm)
> +		drm_property_blob_get(intel_state->hw.ctm);
> +	if (intel_state->hw.lut_3d)
> +		drm_property_blob_get(intel_state->hw.lut_3d);
> +
>  	return &intel_state->uapi;
>  }
>=20
> @@ -168,6 +177,16 @@ intel_plane_destroy_state(struct drm_plane *plane,
>  	__drm_atomic_helper_plane_destroy_state(&plane_state->uapi);
>  	if (plane_state->hw.fb)
>  		drm_framebuffer_put(plane_state->hw.fb);
> +
> +	if (plane_state->hw.degamma_lut)
> +		drm_property_blob_put(plane_state->hw.degamma_lut);
> +	if (plane_state->hw.gamma_lut)
> +		drm_property_blob_put(plane_state->hw.gamma_lut);
> +	if (plane_state->hw.ctm)
> +		drm_property_blob_put(plane_state->hw.ctm);
> +	if (plane_state->hw.lut_3d)
> +		drm_property_blob_put(plane_state->hw.lut_3d);
> +
>  	kfree(plane_state);
>  }
>=20
> @@ -340,6 +359,14 @@ static void intel_plane_clear_hw_state(struct
> intel_plane_state *plane_state)  {
>  	if (plane_state->hw.fb)
>  		drm_framebuffer_put(plane_state->hw.fb);
> +	if (plane_state->hw.degamma_lut)
> +		drm_property_blob_put(plane_state->hw.degamma_lut);
> +	if (plane_state->hw.gamma_lut)
> +		drm_property_blob_put(plane_state->hw.gamma_lut);
> +	if (plane_state->hw.ctm)
> +		drm_property_blob_put(plane_state->hw.ctm);
> +	if (plane_state->hw.lut_3d)
> +		drm_property_blob_put(plane_state->hw.lut_3d);
>=20
>  	memset(&plane_state->hw, 0, sizeof(plane_state->hw));  }
> --
> 2.25.1

