Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vz2SNxGRlmlrhgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:26:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 370E115C028
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59FD310E0F0;
	Thu, 19 Feb 2026 04:26:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OT8byXQy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D1A10E0F0;
 Thu, 19 Feb 2026 04:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771475213; x=1803011213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kH7IgTZiZip4cwXhPpID7tYlP0EeH/m74kGaKzcl9G0=;
 b=OT8byXQytCxPAB3vQYPtWQUkFrneOG4EFke0o8YXcpZ1gL0gZYLciKhp
 k7P3jyFpl+wCx0iN48BIdXiPv4SxektSOQZdoGmRkI4wW81YLbO5Z6nlB
 /KpybZ1IcuxKkGi2XgjZqZDLum17el2UEyyEkC0seqVrEZL/V4wVFZKvY
 6gfvmrq912grLTxhFfy1/9cBnWWe3O1gv+xeNxCasxR9NHa+6AoWD0Qfx
 k0qOgzSwLQHQlJUV1qIrkJkMvd/0dzwCljPng1C87WZVaoK75QcdHIoGi
 sJh/DU3wGTWCbCdG+Xa3IQjZCdg0VQ+zaVqmKSdSbU62F1SxrrzOS9fBl g==;
X-CSE-ConnectionGUID: cSJO3pjHQ5632lm2+Cpn4Q==
X-CSE-MsgGUID: J7N1QxjxRVKmq203rL8J2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="83278714"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="83278714"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:26:53 -0800
X-CSE-ConnectionGUID: vXdS8Br+Tg+fZTIHODaA5A==
X-CSE-MsgGUID: CY1UbudLQRSeCSPgWlh5sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="218927061"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:26:53 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:26:52 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 20:26:52 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:26:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FC5XhacWUY7Y49MCscrOgPc9QBha5VdnuYsP7aynyt2RQ0/JhgNmk5GjtQKY5zBUKQLF5r55H5ZsizTjV26FiPJHuTe3OVHsrpL+DVPwx5vvkBP2RChXtclvaxhiL9pJ7zIqUAff02lNNTaPsGfm6WnTF70WU7copWF7LXOucwWlHftHcnhA+piXclXEVrR9PqQAtMkSwB1NordNoAfeaXM9RyL5SmFbWJ71094t2eJnwolaKlJT6VkwySFjL/rm6NcIHQ/ZP92XY2gFZkp8V50yudbjwFaOfyNZjpP5O60Ng1KC/6g+7+bPbKwQRQW/qIpSEHg6tJl4r6cO9AHmew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eYD4pWb6XjkAdobPWOTRWFalzvnteyDtvDyN9wlARFQ=;
 b=VcIqvhmHLLmSDt3Gz/mWyBWQWQWjvOazVKjdhpoEwISc+fjLsaM2O0tIHbzpI9nfdPzwSaxLsf1BVMAZKTOzfQJq0O38NgusmXlvw7hLZBAmm0/VBELaHa7Zw8QoT5IWL+nRFjhy4bamXlfSRd0OxyESRrP/OM3NDp6+f2fYfhZy2RZqTYhujUZE97SflRxdO+wDiC+TCLLUz6gXce5qXEIqjnb9cXo1sDFd2X2IwHMEbuZDPr0Qivuu0PgYtsUxcGOIcUbtdu/sUBhtxQ5Cwxt6jOtMvuXhfkW4QCyhQ+QRdZf1aFqP2SENSqlKTOf8tT1WGTHqdBfV3VCUU69skA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB7100.namprd11.prod.outlook.com
 (2603:10b6:510:20f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 04:26:44 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 04:26:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 14/19] drm/i915/lt_phy: Add .enable_clock/disable clock on
 DDI for xe3plpd platform
Thread-Topic: [PATCH 14/19] drm/i915/lt_phy: Add .enable_clock/disable clock
 on DDI for xe3plpd platform
Thread-Index: AQHcnOTZbGeoS8avmEef6ff7Hl5B0bWJdUfw
Date: Thu, 19 Feb 2026 04:26:43 +0000
Message-ID: <DM3PPF208195D8D8A331BA39D677E3327C8E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-15-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-15-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB7100:EE_
x-ms-office365-filtering-correlation-id: 71120b35-a838-4525-3a73-08de6f6f1621
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ac1yaCl2uS5686DfHC6AGkxHVTuV4YVr2UP+2BCgqghmC1zllELXi9lQOM0i?=
 =?us-ascii?Q?qonPjArLazUWVR+XRg/DPxgIoWdWalnN7zgUoOsxZ90gqbCh/o/YtiEa26Yo?=
 =?us-ascii?Q?nSGwGzOp6p+gsP++g9QTo82ifXLfbCYdZcSgR/jJfTuVHTmjRi9lN4iusWgX?=
 =?us-ascii?Q?PwJSIstiqQM18Q6xqNIOj104yyfhAHLrhamqI2JLjOnpCzz56lR+YnR6ym/O?=
 =?us-ascii?Q?u947F1War/oMhkA9eBkkW86UabtTez0Q0VY9KGyoEwPbw/UdgFgs3vGiz/af?=
 =?us-ascii?Q?wMKZyoio/S5PuyTqIRgrFkU6MKAvtFv0uTtEQMhmWjMzA3qsMBQaHIww6J1/?=
 =?us-ascii?Q?eXGxzXqSoMd+uKfYIdvgHx2ngwACfiyX6wx3cy55y9I4tDvE5l2MshrzGoWK?=
 =?us-ascii?Q?phRy6FSr9CEeitFbaRNS5CuwQ1OWTwdj16I4Gm3sc4Hp7V+3DIqAloMFL1ep?=
 =?us-ascii?Q?EA/hikzhfBzaNBNPThs56k8ozsN6WtZFRT5Kw7OaO3WY/jE4nJzE0gtyjXcA?=
 =?us-ascii?Q?D4za6Y5LvCgWcGYCphHnsknv5/qBavwPefp7qu6fS3E9EPN/qr3uOa2RvDAl?=
 =?us-ascii?Q?ZhvpW11Ga62Itjyy83fA75wXgCNDe8CliFvFMFszshC9x0ciuevKQt+oPEN6?=
 =?us-ascii?Q?6b9W4we21aYmS4BIXK+Cjoh1cVO6TQ3wrOhwQIuh0SWehQs4Kod8YgVFIraz?=
 =?us-ascii?Q?iZ9I6fnyLBXBIMhsXNcbAKQMYxHUGVJ6hwVMQaNv++WqY6r7SGwWe5YJph5z?=
 =?us-ascii?Q?AfWZQ5Sn2Y1jy7mxfbaG7PedctIPPI/XqjRbY47Lut07lDla7pXNBuQZcw1N?=
 =?us-ascii?Q?q2UjK6zKUqzF+mN0XURNIceiX8Wjyb64mXK+qPOYkUU+wcbiqTFQ6V9/301s?=
 =?us-ascii?Q?H1xsV2WeXwDGK/B9OR7rppoPBrUVogyTh4T8p1q5ndEISoE3RlQFFfKjhGDE?=
 =?us-ascii?Q?8nDfdbd9YKT5XgL2MTCHjtd1YntOmImCfnJRoDi7FVJEIG6jqVbm8gpt7ZC+?=
 =?us-ascii?Q?WOa0azbhKZyRGYVNVJHf68wEj4dUHvjHbOqGd4Q9ZHGB5oaag0iJgWnyqZaU?=
 =?us-ascii?Q?ny1zNz2hk1+pUiJhSH/foSPl4SH5TxIrxOXfz1KkQwLfNh5DkhspBoR2fSp/?=
 =?us-ascii?Q?e7gr2leTRimFHu2/fNbPgVRycORHcX1VHfj2XMBBfv93XWWcD0yL8pFK5NEv?=
 =?us-ascii?Q?4EdCyGuWGSpfuwzi0rBGAPgROTAfJOW1u2vjeFYkf44gWp45XZQJ97iCSf5a?=
 =?us-ascii?Q?+AFoquiFEnC6eY3HRl/Brs3act019hFFevLOCwdT9sKgdbmKve+PYJ/YmXPp?=
 =?us-ascii?Q?0gcwPMa7XuRJ2FsdzQmlptdMhOuuWV5+zngK6zgJje6MVcr0P6tYnvHGE0gB?=
 =?us-ascii?Q?yf1qHaPq8BhHZzH9KDL52bvqpkwbc90WaSERFUMzBN0UtufMFqE1e0d/F1bm?=
 =?us-ascii?Q?hXLLil2M/8tgVKnakN2LrBngE2EOWpZL2igWoQ5nHCBu7UPgd2so4w2+2ioY?=
 =?us-ascii?Q?SxOhvnu6esEiqMLP4iC6XDt128Z/UMXhEtHWUbOCIhHg5UPLmNStd8oIrX83?=
 =?us-ascii?Q?oVqt+SMRvRzcnVRaVd27/K1ilJ651dpudmxuQnk17/6AvLr4GHopIlbh6iNg?=
 =?us-ascii?Q?GDbmWgKkXPEp85VSN2oxlyY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PU1gWDKzPopyw/x2WmeMu9yJWNjXLe3V5WeKLd1BgzHjIeEDPiOt15apATko?=
 =?us-ascii?Q?5Z3X0YvtCU6E+VVnWj8F7QTot60VRVLiwRKkLQSE6GDYKBNld2+wt+xoLTG0?=
 =?us-ascii?Q?0jmNl66cNut0eBbmsGUyjTu5MOWNzAx5FtiWGwOgiz/jMw+WLw/iVdXzg8II?=
 =?us-ascii?Q?By+8k7QobKYUZ+lqKHmCM2Y7yzssuM1/Ubs6KjtQtE0AWdw0ymCTt3XkP6Zz?=
 =?us-ascii?Q?DFvTTXQ9Y3gyln/b6wUfLzPeqOZqhMOllzNh+8J33bRPNCXeQ+BbQjUYSX5N?=
 =?us-ascii?Q?mpOd4wFgQu8ZBQZRNV+VX3z9ouRsPwNdpDo8+E8iVMW4d9eA7lY9aQdg1kmJ?=
 =?us-ascii?Q?pcePXHFkBOYQCV2Jr9OCF7gYRh6vTbVMvh6BS1HogTv3rUmwN/Sg5JLLj8cr?=
 =?us-ascii?Q?W0EHtAVNznkCMOGfoyTgbTMpFYs9UtmRtCH4A9hVe3Eu1UO5DeRFdLKkKbyX?=
 =?us-ascii?Q?TLwK2CIcKGzp0TTqJ9ctDITULuEFIHl9UfU255XWp4sd088WORcpvbE8Oycz?=
 =?us-ascii?Q?vkBWqkNLNq8JeO0AQIlS0KzM8GSNCzXzk48d7krMzhD4wABz/0g9nb7n47iE?=
 =?us-ascii?Q?VGfsx1/cXb669pd0ECgUVMdjLyTy8YbPrrRyUhG4xBDJr3oD/SeVud4vQJHd?=
 =?us-ascii?Q?n8sYs26rDeRjmlhTOfxmm5KciYf21ivwxXbKs+dgmw/DqkzaTl/Qo2w4Z5Pe?=
 =?us-ascii?Q?/3safWvl4XYz+7Vzk9EYhCwTQpNe5hZeZA1OFK/5SS96Nl0vM9OoBGPolc9s?=
 =?us-ascii?Q?GUR6dpqsXurqHqKc9a4DPAxhwD1gU1BUmCHobGblSXRPHcgdwyfNqiILEVf8?=
 =?us-ascii?Q?RfDgB/1j0pc0KeY5OoY5EahE5Bfd551FB5y6jvROjmCaWGfZYjQsYz8ZCNWS?=
 =?us-ascii?Q?V1dU41GISHFqHj0BjqJbfO1+pSLqwg1Z4xTUiYjqfUqKJyEaM1rLDKymDZ7p?=
 =?us-ascii?Q?nGTZdpQJ0aFX7kUEcqLHHSsD5Xarq6C5T7U5hn30mkQWNObSX9gBlpHfvFME?=
 =?us-ascii?Q?FQu+3lUzJ+ER/QbmA/+aXQpAVXkPz4rAPfq9CmkGJus09ee3qqyfjWUkDLzF?=
 =?us-ascii?Q?ZPU7xW495n6ptWYJSdhGoGDnWE8qhdH9jPyQd6JQtpfe5IJNdqNIiBTP79n1?=
 =?us-ascii?Q?2UiNvISVdtFq6tqChi1xB4YbUQdWJmljY0fhqI+w9HnQGF6AkK2/SGT8Scsl?=
 =?us-ascii?Q?PO79rPK/6biCH+IxvZlUPRJNC4wLyKLjYChi1DCLc3jQqAs/as/aLWKhfLDf?=
 =?us-ascii?Q?w7g9w//HBm8ij+wd2G13toJiJlVSHc2wjlBPuD49Ch/J5gc6bJdlr+558YUe?=
 =?us-ascii?Q?aSgZNZuoeYKPASGMPdHaNil1uFY2PLFhegTb1KaXF7m8K9W0haLo6iShwH8H?=
 =?us-ascii?Q?pnXBaxAHeuEdCUnQJx5SQ3TQGqpCuWnnq5pZUFLzShqPGYwkwtvGfSijdMKL?=
 =?us-ascii?Q?O5v477Azq99lB3SPt8ztm7empsc3TxtEt3oxlVrjHceFIO20gpPvPCeShSSA?=
 =?us-ascii?Q?bFg17sl++E8AJM12bo8Mr9rSX0S5LnTVefoKI6j1WTxmIqA0qzWla1rbqQvx?=
 =?us-ascii?Q?C8eyQhxCTta0K+359AsSDW9f+v9dfeuiFN2TNsGe9iJZn77HbEjth1Iphvv6?=
 =?us-ascii?Q?MagxRfqBoGcz9/aE8BhWqOb0jKkl8GpZ4N1huQ9D2ezFP0soqoGExC7+loVS?=
 =?us-ascii?Q?vLw9QzWJsoKye/KlFCU8Yz9SkOiQRpn9vTTqevdrz4Ole3SAA1XXnjc5JT37?=
 =?us-ascii?Q?cwd49hUTng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71120b35-a838-4525-3a73-08de6f6f1621
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 04:26:43.6085 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eGI840T/dVZ2zCu3Dezai3BN+zM15+fjoWmZ7NzePopuD7VA7VVsNOZb7RSDHvt/VnfZ4pGr/R9mpe86TS9yGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7100
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 370E115C028
X-Rspamd-Action: no action


> Subject: [PATCH 14/19] drm/i915/lt_phy: Add .enable_clock/disable clock o=
n
> DDI for xe3plpd platform
>=20
> To enable pll clock on DDI move part of the pll enabling sequence into a =
ddi
> clock enabling function.

*PLL

>=20
> Simililarly, do the same for pll disabling sequence.

* PLL
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

A lot of things are going on in this patch can we break it down into 2, 3 p=
atches basically hookinh everything up in the 3rd patch=20
And the initial patches just doing changes in function params/ breaking fun=
ctions into two.

Regards,
Suraj Kandpal

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 20 +----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 25 ++++++
> drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 86 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   | 10 ++-
>  6 files changed, 93 insertions(+), 53 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 57de15fe3446..532d7d4e3b27 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5299,8 +5299,8 @@ void intel_ddi_init(struct intel_display *display,
>  	encoder->pipe_mask =3D ~0;
>=20
>  	if (HAS_LT_PHY(display)) {
> -		encoder->enable_clock =3D intel_xe3plpd_pll_enable;
> -		encoder->disable_clock =3D intel_xe3plpd_pll_disable;
> +		encoder->enable_clock =3D intel_xe3plpd_pll_enable_clock;
> +		encoder->disable_clock =3D intel_xe3plpd_pll_disable_clock;
>  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
>  		encoder->get_config =3D xe3plpd_ddi_get_config;
>  	} else if (DISPLAY_VER(display) >=3D 14) { diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index abc85ee9b832..c7d37e74fbe9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1212,24 +1212,6 @@ static int dg2_crtc_compute_clock(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> -static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
> -				      struct intel_crtc *crtc)
> -{
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder =3D
> -		intel_get_crtc_new_encoder(state, crtc_state);
> -	int ret;
> -
> -	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state-
> >dpll_hw_state);
> -	if (ret)
> -		return ret;
> -
> -	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
> -
> -	return 0;
> -}
> -
>  static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)  =
{
>  	struct intel_display *display =3D to_intel_display(crtc_state); @@ -
> 1690,7 +1672,7 @@ static int i8xx_crtc_compute_clock(struct
> intel_atomic_state *state,  }
>=20
>  static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs =3D {
> -	.crtc_compute_clock =3D xe3plpd_crtc_compute_clock,
> +	.crtc_compute_clock =3D hsw_crtc_compute_clock,
>  	.crtc_get_dpll =3D hsw_crtc_get_dpll,
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 412582e29ca6..28c560417409 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4595,7 +4595,32 @@ static int xe3plpd_pll_get_freq(struct intel_displ=
ay
> *display,
>  	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll);  }
>=20
> +static void xe3plpd_pll_enable(struct intel_display *display,
> +			       struct intel_dpll *pll,
> +			       const struct intel_dpll_hw_state *dpll_hw_state) {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state); }
> +
> +static void xe3plpd_pll_disable(struct intel_display *display,
> +				struct intel_dpll *pll)
> +{
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_xe3plpd_pll_disable(encoder);
> +}
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
> +	.enable =3D xe3plpd_pll_enable,
> +	.disable =3D xe3plpd_pll_disable,
>  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
>  	.get_freq =3D xe3plpd_pll_get_freq,
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 4cc14ce5eebe..d408ccf6f902 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -278,6 +278,7 @@ struct intel_lt_phy_pll_state {
>  	u8 config[3];
>  	bool ssc_enabled;
>  	bool tbt_mode;
> +	int lane_count;
>  };
>=20
>  struct intel_dpll_hw_state {
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index b1d95eb897db..365c6e07a257 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1179,7 +1179,8 @@ intel_lt_phy_lane_reset(struct intel_encoder
> *encoder,
>=20
>  static void
>  intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *crtc_state,
> +				    const struct intel_lt_phy_pll_state *ltpll,
> +				    int port_clock,
>  				    bool lane_reversal)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder); @@ -
> 1196,17 +1197,17 @@ intel_lt_phy_program_port_clock_ctl(struct
> intel_encoder *encoder,
>  	 * but since the register bits still remain the same we use
>  	 * the same definition
>  	 */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> -	    intel_hdmi_is_frl(crtc_state->port_clock))
> +	if (encoder->type =3D=3D INTEL_OUTPUT_HDMI &&
> +	    intel_hdmi_is_frl(port_clock))
>  		val |=3D XELPDP_DDI_CLOCK_SELECT_PREP(display,
> XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
>  	else
>  		val |=3D XELPDP_DDI_CLOCK_SELECT_PREP(display,
> XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>=20
>  	 /* DP2.0 10G and 20G rates enable MPLLA*/
> -	if (crtc_state->port_clock =3D=3D 1000000 || crtc_state->port_clock =3D=
=3D
> 2000000)
> +	if (port_clock =3D=3D 1000000 || port_clock =3D=3D 2000000)
>  		val |=3D XELPDP_SSC_ENABLE_PLLA;
>  	else
> -		val |=3D crtc_state->dpll_hw_state.ltpll.ssc_enabled ?
> XELPDP_SSC_ENABLE_PLLB : 0;
> +		val |=3D ltpll->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>=20
>  	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder-
> >port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT |
> XELPDP_FORWARD_CLOCK_UNGATE | @@ -1249,10 +1250,12 @@ static
> u32 intel_lt_phy_get_dp_clock(u8 rate)
>=20
>  static bool
>  intel_lt_phy_config_changed(struct intel_encoder *encoder,
> -			    const struct intel_crtc_state *crtc_state)
> +			    const struct intel_lt_phy_pll_state *ltpll)
>  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	u8 val, rate;
>  	u32 clock;
> +	u32 port_clock =3D intel_lt_phy_calc_port_clock(display, ltpll);
>=20
>  	val =3D intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0,
>  				LT_PHY_VDR_0_CONFIG);
> @@ -1263,9 +1266,10 @@ intel_lt_phy_config_changed(struct intel_encoder
> *encoder,
>  	 * using 1.62 Gbps clock since PHY PLL defaults to that
>  	 * otherwise we always need to reconfigure it.
>  	 */
> -	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +	if (encoder->type =3D=3D INTEL_OUTPUT_DP ||
> +	    encoder->type =3D=3D INTEL_OUTPUT_EDP) {
>  		clock =3D intel_lt_phy_get_dp_clock(rate);
> -		if (crtc_state->port_clock =3D=3D 1620000 && crtc_state-
> >port_clock =3D=3D clock)
> +		if (port_clock =3D=3D 1620000 && port_clock =3D=3D clock)
>  			return false;
>  	}
>=20
> @@ -1749,11 +1753,13 @@ intel_lt_phy_pll_calc_state(struct
> intel_crtc_state *crtc_state,
>  			}
>  			hw_state->ltpll.ssc_enabled =3D
>  				intel_lt_phy_pll_is_ssc_enabled(crtc_state,
> encoder);
> +			hw_state->ltpll.lane_count =3D crtc_state->lane_count;
>  			return 0;
>  		}
>  	}
>=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		hw_state->ltpll.lane_count =3D crtc_state->lane_count;
>  		return intel_lt_phy_calculate_hdmi_state(&hw_state->ltpll,
>  							 crtc_state-
> >port_clock);
>  	}
> @@ -1763,41 +1769,41 @@ intel_lt_phy_pll_calc_state(struct
> intel_crtc_state *crtc_state,
>=20
>  static void
>  intel_lt_phy_program_pll(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state)
> +			 const struct intel_lt_phy_pll_state *ltpll)
>  {
>  	u8 owned_lane_mask =3D
> intel_lt_phy_get_owned_lane_mask(encoder);
>  	int i, j, k;
>=20
>  	intel_lt_phy_write(encoder, owned_lane_mask,
> LT_PHY_VDR_0_CONFIG,
> -			   crtc_state->dpll_hw_state.ltpll.config[0],
> MB_WRITE_COMMITTED);
> +			   ltpll->config[0], MB_WRITE_COMMITTED);
>  	intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
> LT_PHY_VDR_1_CONFIG,
> -			   crtc_state->dpll_hw_state.ltpll.config[1],
> MB_WRITE_COMMITTED);
> +			   ltpll->config[1], MB_WRITE_COMMITTED);
>  	intel_lt_phy_write(encoder, owned_lane_mask,
> LT_PHY_VDR_2_CONFIG,
> -			   crtc_state->dpll_hw_state.ltpll.config[2],
> MB_WRITE_COMMITTED);
> +			   ltpll->config[2], MB_WRITE_COMMITTED);
>=20
>  	for (i =3D 0; i <=3D 12; i++) {
>  		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
> LT_PHY_VDR_X_ADDR_MSB(i),
> -				   crtc_state->dpll_hw_state.ltpll.addr_msb[i],
> +				   ltpll->addr_msb[i],
>  				   MB_WRITE_COMMITTED);
>  		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
> LT_PHY_VDR_X_ADDR_LSB(i),
> -				   crtc_state->dpll_hw_state.ltpll.addr_lsb[i],
> +				   ltpll->addr_lsb[i],
>  				   MB_WRITE_COMMITTED);
>=20
>  		for (j =3D 3, k =3D 0; j >=3D 0; j--, k++)
>  			intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
>  					   LT_PHY_VDR_X_DATAY(i, j),
> -					   crtc_state-
> >dpll_hw_state.ltpll.data[i][k],
> +					   ltpll->data[i][k],
>  					   MB_WRITE_COMMITTED);
>  	}
>  }
>=20
>  static void
>  intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
> -			       const struct intel_crtc_state *crtc_state)
> +			       const struct intel_lt_phy_pll_state *ltpll)
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	bool lane_reversal =3D dig_port->lane_reversal;
> -	u8 lane_count =3D crtc_state->lane_count;
> +	u8 lane_count =3D ltpll->lane_count;
>  	bool is_dp_alt =3D
>  		intel_tc_port_in_dp_alt_mode(dig_port);
>  	enum intel_tc_pin_assignment tc_pin =3D
> @@ -1878,9 +1884,11 @@ intel_lt_phy_enable_disable_tx(struct
> intel_encoder *encoder,  }
>=20
>  void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> -			     const struct intel_crtc_state *crtc_state)
> +			     struct intel_dpll *pll,
> +			     const struct intel_dpll_hw_state *dpll_hw_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> +	int port_clock =3D intel_lt_phy_calc_port_clock(display,
> +&dpll_hw_state->ltpll);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	bool lane_reversal =3D dig_port->lane_reversal;
>  	u8 owned_lane_mask =3D
> intel_lt_phy_get_owned_lane_mask(encoder);
> @@ -1896,10 +1904,10 @@ void intel_lt_phy_pll_enable(struct
> intel_encoder *encoder,
>  	wakeref =3D intel_lt_phy_transaction_begin(encoder);
>=20
>  	/* 1. Enable MacCLK at default 162 MHz frequency. */
> -	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
> +	intel_lt_phy_lane_reset(encoder, dpll_hw_state->ltpll.lane_count);
>=20
>  	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes,
> gating, and SSC. */
> -	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state,
> lane_reversal);
> +	intel_lt_phy_program_port_clock_ctl(encoder, &dpll_hw_state->ltpll,
> +port_clock, lane_reversal);
>=20
>  	/* 3. Change owned PHY lanes power to Ready state. */
>  	intel_lt_phy_powerdown_change_sequence(encoder,
> owned_lane_mask, @@ -1909,12 +1917,12 @@ void
> intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>  	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config
> check enabled PLL type,
>  	 * encoded rate and encoded mode.
>  	 */
> -	if (intel_lt_phy_config_changed(encoder, crtc_state)) {
> +	if (intel_lt_phy_config_changed(encoder, &dpll_hw_state->ltpll)) {
>  		/*
>  		 * 5. Program the PHY internal PLL registers over PHY
> message bus for the desired
>  		 * frequency and protocol type
>  		 */
> -		intel_lt_phy_program_pll(encoder, crtc_state);
> +		intel_lt_phy_program_pll(encoder, &dpll_hw_state->ltpll);
>=20
>  		/* 6. Use the P2P transaction flow */
>  		/*
> @@ -1946,8 +1954,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> *encoder,
>  		 * Change. We handle this step in bxt_set_cdclk().
>  		 */
>  		/* 10. Program DDI_CLK_VALFREQ to match intended DDI
> clock frequency. */
> -		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> -			       crtc_state->port_clock);
> +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> port_clock);
>=20
>  		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] =3D
> 1. */
>  		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display,
> port), @@ -1994,7 +2001,7 @@ void intel_lt_phy_pll_enable(struct
> intel_encoder *encoder,
>  			     lane_phy_pulse_status,
>  			     lane_phy_pulse_status);
>  	} else {
> -		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> crtc_state->port_clock);
> +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> port_clock);
>  	}
>=20
>  	/*
> @@ -2005,7 +2012,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder
> *encoder,
>  	intel_lt_phy_powerdown_change_sequence(encoder,
> owned_lane_mask,
>  					       XELPDP_P0_STATE_ACTIVE);
>=20
> -	intel_lt_phy_enable_disable_tx(encoder, crtc_state);
> +	intel_lt_phy_enable_disable_tx(encoder, &dpll_hw_state->ltpll);
>  	intel_lt_phy_transaction_end(encoder, wakeref);  }
>=20
> @@ -2145,8 +2152,8 @@ void intel_lt_phy_dump_hw_state(struct
> drm_printer *p,  {
>  	int i, j;
>=20
> -	drm_printf(p, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode:
> %d\n",
> -		   hw_state->ssc_enabled, hw_state->tbt_mode);
> +	drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d,
> tbt mode: %d\n",
> +		   hw_state->lane_count, hw_state->ssc_enabled, hw_state-
> >tbt_mode);
>=20
>  	for (i =3D 0; i <=3D 12; i++)
>  		drm_printf(p, "addr [%d] msb =3D 0x%.4x, lsb =3D 0x%.4x\n", @@
> -2283,14 +2290,22 @@ void intel_lt_phy_pll_state_verify(struct
> intel_atomic_state *state,  }
>=20
>  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state)
> +			      struct intel_dpll *pll,
> +			      const struct intel_dpll_hw_state *dpll_hw_state) {
> +	intel_lt_phy_pll_enable(encoder, pll, dpll_hw_state); }
> +
> +void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> >port_clock);
>  	else
> -		intel_lt_phy_pll_enable(encoder, crtc_state);
> +		/* TODO: remove when PLL mgr is in place. */
> +		intel_xe3plpd_pll_enable(encoder, NULL, &crtc_state-
> >dpll_hw_state);
>  }
>=20
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder) @@ -2301,6
> +2316,17 @@ void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
>  		intel_mtl_tbt_pll_disable_clock(encoder);
>  	else
>  		intel_lt_phy_pll_disable(encoder);
> +}
> +
> +void intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder) {
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		intel_mtl_tbt_pll_disable_clock(encoder);
> +	else
> +		/* TODO: remove when PLL mgr is in place. */
> +		intel_xe3plpd_pll_disable(encoder);
>=20
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index ff3896a2cebe..3838e9326773 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -11,6 +11,7 @@
>  struct drm_printer;
>  struct intel_atomic_state;
>  struct intel_display;
> +struct intel_dpll;
>  struct intel_dpll_hw_state;
>  struct intel_encoder;
>  struct intel_crtc_state;
> @@ -18,7 +19,8 @@ struct intel_crtc;
>  struct intel_lt_phy_pll_state;
>=20
>  void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> -			     const struct intel_crtc_state *crtc_state);
> +			     struct intel_dpll *pll,
> +			     const struct intel_dpll_hw_state *dpll_hw_state);
>  void intel_lt_phy_pll_disable(struct intel_encoder *encoder);  int
> intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state, @@ -41,8
> +43,12 @@ int  intel_lt_phy_calculate_hdmi_state(struct
> intel_lt_phy_pll_state *lt_state,
>  				  u32 frequency_khz);
>  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> -			      const struct intel_crtc_state *crtc_state);
> +			      struct intel_dpll *pll,
> +			      const struct intel_dpll_hw_state *dpll_hw_state);
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);  void
> intel_lt_phy_verify_plls(struct intel_display *display);
> +void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state);
> void
> +intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder);
>=20
>  #endif /* __INTEL_LT_PHY_H__ */
> --
> 2.43.0

