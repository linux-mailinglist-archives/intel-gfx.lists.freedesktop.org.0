Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGL4CfWFmGnKJQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 17:04:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2A2169292
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 17:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDBFD10E80E;
	Fri, 20 Feb 2026 16:04:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Blmcsdan";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4594510E80D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Feb 2026 16:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771603440; x=1803139440;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X7HoSagqxfpB8+yFtuEOaQNlkK1G5NGMwIBwzY40uUs=;
 b=Blmcsdanr/gaxbj+/WkoymQSS/WEeNTuMeZxJxX8XSpe/pFtaPBY0G1m
 TpwMlFBvnWFhLHpV6Itzl1SlcfKXgAQY+YhwUXFxjoz7+/XoIYt7nhFfQ
 b5rftNRZBoWsl8/zlp4WVQYcVtgIsi7WFazy8bm5FG3CiBs/o9J1MnIbo
 3wFsJ6Lm72B2EBqSy1o+9QjvO3T/lGOouAc5k7CV+pPhFm+Y0+fQshgX0
 zQfsmL9cuTd5+qooDmhfw/gGr6TZod3tMVXhI5ziRmH7C69kl+YhPXUUq
 tn7swTGfy8ofSYm0mtHn9eUSPMYc7zd424d+oBXhMEYNOf2ORuydz4guA A==;
X-CSE-ConnectionGUID: G96pCQlzQ2CZKaq82kRW+Q==
X-CSE-MsgGUID: igXFoEh8QI+ON14oN09HeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="76559459"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="76559459"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 08:03:59 -0800
X-CSE-ConnectionGUID: 0+eYS8awRbKlJYUrLogRlQ==
X-CSE-MsgGUID: vy3+dciwQ9O52sl4OCaWAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="219026090"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 08:04:00 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 08:03:59 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 20 Feb 2026 08:03:59 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.26) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 20 Feb 2026 08:03:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J5ZeJN0eqa9p4BpKgV5+ZHVCXn2qr4dfhk2xdJ6xg/TIYtbrKNaGbWGAt9DsFhQPIgL0VJ+8AC/0fhVYvERDnontS3Q5zdty1a/beGuQQ5t7E6aL6r4tGF8ADNnpPVpWNl3BXEbid8nrN8Opf8mDajrJWABWb70rnw8R7U6a7Rv4ONXoAcfwGXgha4MYqDW5EPfY+9ZBZKc/x0XSc2gcwUuIMev4u351bgIPGJ5+EyfLnyNkgDSw+nP48wMFFVB/m8p7XGdxb+f+dJcU/lrWDCqzoD7qXrBw0lgdXYpXxuaaa/J2ecJGkxsuqgFCJwcGOtQAu1PfI1m/sCh+ulZxgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CUZqZ/zP2iOqshf1tNWsjADvt59HuRow9DpoGujJCsk=;
 b=iz46mFhRJEOJCFrk9TjzT40glb91N4t5E+DbwhnxtFtf58/jY2DiQIoUlR9+3cgOfc3Pl9wRK4F50H2P1nwnqX3i2Yi/upgcpJlhomQb8WzJXZUt0vp9bxqjHybt6xErztvs40uCpDorpxL+8OEWRzYvYdulcA/SASRZT1qQ8QhPXHp7g1hOqeJkePEBeWwyyfKPjt+zNzn0ZdQ/R/mr927Y02Vp4rua5UfcVEkqV7ctK3n0Jp+qxACIcBhBAUMbyJa4lK2GHLW4apT+3nCmAh5sohl9SuamwPlqSp2U4OMwYyabJ+lcY5DEEShBVkyFFxt+bzV+0WBNXdqp14YIOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by PH7PR11MB5984.namprd11.prod.outlook.com (2603:10b6:510:1e3::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Fri, 20 Feb
 2026 16:03:55 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%5]) with mapi id 15.20.9632.017; Fri, 20 Feb 2026
 16:03:55 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Zhenyu Wang <zhenyuw.linux@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
Thread-Topic: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
Thread-Index: AQHcnFehMFR2UxhTGEaIGycRKMRyqLWAciUAgABJxSCACvkhAIAACCcA
Date: Fri, 20 Feb 2026 16:03:55 +0000
Message-ID: <CH0PR11MB544431641B604EF86BC0CE7BE568A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260212194131.64708-2-jonathan.cavitt@intel.com>
 <87o6lsylfd.fsf@dell-wzy>
 <CH0PR11MB54443A11FDC0B6F6F780456BE561A@CH0PR11MB5444.namprd11.prod.outlook.com>
 <871pifpjfj.fsf@dell-wzy>
In-Reply-To: <871pifpjfj.fsf@dell-wzy>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|PH7PR11MB5984:EE_
x-ms-office365-filtering-correlation-id: 65290f14-8535-4938-2730-08de7099a637
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?XOSs5nf1tHushM+NS/BpubAlE2rng4HXIL47trEzKIrpeaQ7ePEVz+6AQf14?=
 =?us-ascii?Q?mG0I70C90rye+JR9/5acQ6KAKUjnQVpO1hTr3RVnDmEFHZ0kDXH4MWSEH4s+?=
 =?us-ascii?Q?wijs4TiNafr1g5sCo+5oP0dwYzmHX0nrHyBsuVxcn43DZKBdtDBwSQrn2Ix1?=
 =?us-ascii?Q?4EBxBR+3QE2jg7lisMv+Vlet/dX3WU0WorcfwAjauLJL95DjMPjpjxZNbLvs?=
 =?us-ascii?Q?KsqecvCGjcS2YxD6VJWdMjapDNCyXgONMmtIbbKxuzbRo5Ch9QWQ11mW8tXD?=
 =?us-ascii?Q?bJX6oR+OarnFGG2EhQK5R75iVh9TgX8XohmPHVkv0fJMUPONbuZrNytcUjH3?=
 =?us-ascii?Q?APkYuQgL8//4Jmp6GQV1xk7tKiEvKBAnarVjG+ODk7ejIwwJx4DS8tn9L1qn?=
 =?us-ascii?Q?gHfkmrVjqXp60qqEI2IlFmQfsvsr5oBqu8oDMFfsVuxNsX2kGNQypWxqecRd?=
 =?us-ascii?Q?0NVNzCSRDISF3Y0dChZMYkP0OqhWellfRpdajd9CNxaS2FWV4v/bRE0VYvR2?=
 =?us-ascii?Q?ROqQiNjc4lWHdiwJClHa+9jb4G0JBBf50m4H2/WTjjOFwGTndmJ1Cfl8C1a/?=
 =?us-ascii?Q?lwHGMz4PfuGLGtC3bbzdDfWyJw390+vtFex1UYaPThPZ5ZvGOq+t1+FKkyOd?=
 =?us-ascii?Q?jCyHa8Mo9tf5PjWrhsUIEG6VBFDGBFtOhR8Ct8EFzGQhYj5a8gYPglvPJu83?=
 =?us-ascii?Q?rSfcS73QTuSdPxR97WcABPOy3rMzsnCqCysw2f5wCnOj1C2RVdHux87SAiWJ?=
 =?us-ascii?Q?ZsFwVa254HRPiphZ7mMSwloZZGOqc81BcARlUrMyeISnK6hBn7R1sse4aQRp?=
 =?us-ascii?Q?JJFqMx9fxKD0yZ3CdfY9UcapzrY2Y+oj9NOeE0YOznXHxQJDdlQpOiSfRJYq?=
 =?us-ascii?Q?GubbIyoyyKUhwHCpfm6croLnS4IcD/3ivlx4ikhBHdK6BRa9WEswm+Dg2Rd+?=
 =?us-ascii?Q?htqJMacstb82ZBFN9ImzIwSRR3OLjah2Cak5akQHJigS3HK3D+1iYkAqzzCw?=
 =?us-ascii?Q?gUAU6tiOW4U+OASB+BiDoad9JPUB3OxtNfo5IA6Ps26e9C44vAeQR2ndMi7O?=
 =?us-ascii?Q?Tt9ataWRvt104vf6RuUIGWx1yKMeNIbpp2Tc9jaYYnwPjRyZJwCPPbiEVQ0V?=
 =?us-ascii?Q?CJHoo2a2oESGiXC/gRac/MIuLK0xc/pJsQvA6QRtnrK0kzEKof0eP+BfEoIz?=
 =?us-ascii?Q?pRfix1vZ7GhKvh0hPC/qzpv+S1c0lUWhTdmRvEvs+N0YUb5UD23+j2CNzph4?=
 =?us-ascii?Q?20jNM37hJhcbAjdt9Ugzek/I41jM6AgA5g5ePpHjpn40NCB/wXdfx4UtUcgy?=
 =?us-ascii?Q?3P4ZR8/Ijpx46u08vTtu/ERrjuSmKkNOuXzRAvUMzdrYCoZPS+LMQkc55gFX?=
 =?us-ascii?Q?XEu2T42TtY6tP94VCyl3pUtHl4+ByTD9KPTQ8PGM1aG8d27z78ejlrnlVcXN?=
 =?us-ascii?Q?QI4TXGDbL/BTUqUMA8Mr/fcjY1TP+aEQpL36XS8ZJYz7jPCydD7FSoDAwIhR?=
 =?us-ascii?Q?qXcgeEZs0ZpDxZ9dRYcPZPXAXnZt1D1NMGYwn/CRF+OIwNURZo2X8+XO7N2z?=
 =?us-ascii?Q?8jDzqcbZGPCQaewLfITk49o+4c69/4hgUF7sw9PmASCYPY5KGj2Ku717OlTA?=
 =?us-ascii?Q?rIWcdH0nUxTq+14007Dm0XI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FCbNV+5gwr4uDgp+B5dw8kYqdsYvWBdPGJCIzPERuU4o8VdDBfGsuyC1+xQo?=
 =?us-ascii?Q?KR3ZNuQqj+zyEflOdw8kPjoMS568SZNGvqyWvTNypP+QORITeq5wO6m5S9js?=
 =?us-ascii?Q?CYZj/MxtXFQZ/l67iObgureujzzihQCGcwrToj53n139H8JvOWr+FlJsWaWj?=
 =?us-ascii?Q?JsuCtm0do3n1EIeKtWVvAO3yQ1CS4sawxbit4UxggwTrtxnAbb9T2579+VQH?=
 =?us-ascii?Q?oJfbRb4qiEYss6I2kBdgPpIL+gnae0hFzh8IaEq9MyC9t/dEdhNUxmu8nGfD?=
 =?us-ascii?Q?k+lCZ9HQN6c1N3BsuIK6LK1hwfdL7NFop/X7S4jMB2R4Dcl/G4kU9e6Sos5H?=
 =?us-ascii?Q?5MixjZXPujwSPh1xclSe/Nc9rBGNaNDRJHMgrqgCWqNvhQgVhc8OLX+V0Qst?=
 =?us-ascii?Q?fh8YVBLV+e1niAnvdWjzBF1K9sFRrkdUe1anSYZfmE9/d5TGErn3dWrSJBzy?=
 =?us-ascii?Q?itwEiGPfCZ9ToY3qrOBelUG2pplseQ6mmpHL5fPluI8JvTEW7D97OM6HX5V6?=
 =?us-ascii?Q?NJy3BECusGmNtHJE6j9ahoZGJEBMFuwbevoO0cvJ+eSzGJTr2rbKBxJ0Z91I?=
 =?us-ascii?Q?uMD7FrWsqB3LQGs76xh+YKF2Yu2Unn7qQOW+40r2dh4VhkCjGTDEWMk9x2JT?=
 =?us-ascii?Q?FSqyUGTozhF3nJH26EswhH2n7uqUUeOmJY7j+keorTGrmLX7Z8ZqabU9IqUG?=
 =?us-ascii?Q?EfBtK9EpvY8ZIqYmG+22sbrhgAdgJYr9bF643wgac5iX5uwtuRlgVzkXkjuq?=
 =?us-ascii?Q?xKpnrblY1ofvbdG+yb0TqWqq4/H/DacuQXpl8KFFP8YKKYdKfJMRqFjM0Z6f?=
 =?us-ascii?Q?hQWKrARN28TlHJeyGQRgsCgrcn/sSO8zbGVCkJWRg8cfLgzOAfkQMdNzjtDo?=
 =?us-ascii?Q?ruEBbu1u0USxwk8q8d/CPKfxGe4qVwvEAuCnXpC4iqNrfWoedgm7EDjBhyTc?=
 =?us-ascii?Q?9lZWJYMIcU6XaLkQj8ZBOQWvqy7a8RCtUsobhRe8DbzJSTFFs03I/xPM3skh?=
 =?us-ascii?Q?dqeW6tgAPeQ88QqaJBZXTTtbjXb2KBaTeB2E814YML3AxUf91ciTs4iz3w5O?=
 =?us-ascii?Q?T+IhAgN2N+CDaKBQuBYRa0wjXNAkqrGnnGgq0GVqwU5C18lGDhesZhlp66aT?=
 =?us-ascii?Q?TKGA8APADA6ZzMdFj4+5mV4uHtkuXopejjdopquzFAVXCodqsVX2gEgnRmTO?=
 =?us-ascii?Q?gbaAQtffAoq2akis8V3eiyzFfsOX223eCZF5hYUASnIdJeVSlzTWhyTmuTWr?=
 =?us-ascii?Q?Nf76I6fY//8mfUeKsoSBHg/K42odbcJmVikzwzAKsrK9R70iim3n32IZFbvZ?=
 =?us-ascii?Q?bdcZ6yI1JaAJozw1V1rRVvFrVpB92wkcDswd79aIWn4lQ9Gg0/Uh/m3iW9UN?=
 =?us-ascii?Q?ec8fXPd3UB3A1OGLc7noebRqwYJ57Vg51iIwZvJAal8jAklCoezDULdDby4q?=
 =?us-ascii?Q?RpwDuWmJhKC8BAeQj2biuGr6ixCzGBqTjoy52f8PFMvAkQeyrAPS1Wma3oy9?=
 =?us-ascii?Q?UoDGR2R9MZ+SceXnZvkro8yTDyKPV1FdpDOA7S0muFC5DRkrgyxP+HnoI649?=
 =?us-ascii?Q?Nh2p1WALwMnLfaUeL9CzsC8LPw2Y9fZ0PH/zpR7rWV74PHP1WT6G8ahxsXes?=
 =?us-ascii?Q?G2a1k9KAoen3X2dKLCWRXZcRXAKLhQPU7qYE5h6UxeQy/ocXSO3NQIJULWyi?=
 =?us-ascii?Q?TBvDTE414JtB0U8FFPzmwm9odrXmZAWoRNCuhJN0Sajm1JWQv+HY2PnP5IeJ?=
 =?us-ascii?Q?cwSEce1Bjw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65290f14-8535-4938-2730-08de7099a637
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 16:03:55.3985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KxZREU4BoVLkPdr+WcpFW29Es4FZkVPNi0MRf8Vqc2iMp9UNvijsvx7S6y8yvYcOCmP67NSI2/VyQvVRf4xrFKkYWuvoCzG1qu7bvughoOU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5984
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:zhenyuw.linux@gmail.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,m:jonathan.cavitt@intel.com,m:zhenyuwlinux@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FORGED_SENDER(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:email,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EF2A2169292
X-Rspamd-Action: no action

-----Original Message-----
From: Zhenyu Wang <zhenyuw.linux@gmail.com>=20
Sent: Friday, February 20, 2026 6:41 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedeskt=
op.org
Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
>=20
> "Cavitt, Jonathan" <jonathan.cavitt@intel.com> writes:
>=20
> > -----Original Message-----
> > From: Zhenyu Wang <zhenyuw.linux@gmail.com>=20
> > Sent: Friday, February 13, 2026 2:42 AM
> > To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freed=
esktop.org
> > Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@int=
el.com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
> > Subject: Re: [PATCH] drm/i915/gvt: Cast u64 array to u32 array
> >>=20
> >> Jonathan Cavitt <jonathan.cavitt@intel.com> writes:
> >>=20
> >> > Static analysis issue:
> >> >
> >> > The u64 array workload->shadow_mm->ppgtt_mm.shadow_pdps is cast to a
> >> > void pointer and passed as a u32 array to set_context_pdp_root_point=
er
> >> > as a part of update_shadow_pdps.  This isn't wrong, per se, but we
> >> > should properly cast it to an appropriately-sized u32 array before
> >> > submission.
> >> >
> >> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/gvt/scheduler.c | 6 ++++--
> >> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/=
i915/gvt/scheduler.c
> >> > index 15fdd514ca83..1a95c9f76faa 100644
> >> > --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> >> > +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> >> > @@ -72,6 +72,7 @@ static void update_shadow_pdps(struct intel_vgpu_w=
orkload *workload)
> >> >  {
> >> >  	struct execlist_ring_context *shadow_ring_context;
> >> >  	struct intel_context *ctx =3D workload->req->context;
> >> > +	u32 pdp[8];
> >> > =20
> >> >  	if (WARN_ON(!workload->shadow_mm))
> >> >  		return;
> >> > @@ -79,9 +80,10 @@ static void update_shadow_pdps(struct intel_vgpu_=
workload *workload)
> >> >  	if (WARN_ON(!atomic_read(&workload->shadow_mm->pincount)))
> >> >  		return;
> >> > =20
> >> > +	memcpy(pdp, workload->shadow_mm->ppgtt_mm.shadow_pdps,
> >> > +	       sizeof(u64) * ARRAY_SIZE(workload->shadow_mm->ppgtt_mm.shad=
ow_pdps));
> >> >  	shadow_ring_context =3D (struct execlist_ring_context *)ctx->lrc_r=
eg_state;
> >> > -	set_context_pdp_root_pointer(shadow_ring_context,
> >> > -			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
> >> > +	set_context_pdp_root_pointer(shadow_ring_context, pdp);
> >> >  }
> >> > =20
> >>=20
> >> I think we'd better just cast the type instead of extra copy.
> >
> > I'm not certain that would resolve the static analysis issue.
> >
> > To specify, the static analyzer is complaining that we're taking a poin=
ter to an object
> > of type 'unsigned long long' and dereferencing it as an object of type =
'unsigned int'.
> > The analyzer is getting uppity about this causing unexpected results de=
pending on
> > machine endianness (which... it won't, but the static analyzer doesn't =
know that),
> > so I suspect the only way to get it to calm down is to do a direct memo=
ry copy, as
> > seen here.  Casting the type would just result in the same static analy=
sis issue.
> >
> > This is the part of the email that I'd throw around terms like "strict =
aliasing" and
> > "type punning" if I thought they were relevant.  They probably aren't, =
though.
> >
>=20
> I really don't want to do extra copy as this is hot path for every exec s=
ubmission.
> How about below change?
> Btw, which static analysis you're using? Looks I don't get such warning
> with either sparse or smatch...

I'm not allowed to go into detail about that.  Sorry.

>=20
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/=
gvt/scheduler.c
> index 63ad1fed525a..3f09d6440827 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -1,3 +1,4 @@
> +
>  /*
>   * Copyright(c) 2011-2016 Intel Corporation. All rights reserved.
>   *
> @@ -54,7 +55,7 @@
> =20
>  static void set_context_pdp_root_pointer(
>  		struct execlist_ring_context *ring_context,
> -		u32 pdp[8])
> +		u32 *pdp)
>  {
>  	int i;
> =20
> @@ -75,7 +76,7 @@ static void update_shadow_pdps(struct intel_vgpu_worklo=
ad *workload)
> =20
>  	shadow_ring_context =3D (struct execlist_ring_context *)ctx->lrc_reg_st=
ate;
>  	set_context_pdp_root_pointer(shadow_ring_context,
> -			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
> +				     (u32 *)workload->shadow_mm->ppgtt_mm.shadow_pdps);
>  }

This still results in us casting a u64 pointer to a u32 pointer.

If this change is undesirable, I can mark it as a false positive on my end.
-Jonathan Cavitt

> =20
>  /*
>=20
