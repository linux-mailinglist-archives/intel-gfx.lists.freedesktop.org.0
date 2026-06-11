Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xkjfKdEFK2rN1QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 21:00:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C19F674A58
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 21:00:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EBWEbGym;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF0610F0C9;
	Thu, 11 Jun 2026 19:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0D410F0C1;
 Thu, 11 Jun 2026 19:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781204430; x=1812740430;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i7EAyotYeP1FegaWQe/vy1rchJEuRtSsOYslNM1iEbk=;
 b=EBWEbGymONuDZKcXIZ8g5xyweT14rVLXrT+pAh6qpzqh7kodF21u8Xgp
 gThSew1mz/t36xe1J2eijiYsKWWorOIGYEk6Wo83wws+wjRwoRdAM3aRc
 ebsFJaIRZkNWkFkcsCdKbliU2OrpW2jyEhogPGz9z2Yg/2j2jQ1LsXqFc
 LtyUZV0PhTj4kQrnOcGXhML0U3L0WIAqDamHWK0dKHdpv6yfMcpjxKdc/
 FtH1KnUeik6/QIGAsxqCvy2x0Junc6Wrmzcd+Ac26543TPLuIuC/xxr+j
 jPrEGw/yuzf7HFQz4meKs8J1BsI05mlT/SH1mYfNKg4oISaZhVew9bpSV g==;
X-CSE-ConnectionGUID: Wpu+Kn1WR6qXB04bNvX9bA==
X-CSE-MsgGUID: nsbW34kcQKOdJtYMQNTw/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81770966"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="81770966"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 12:00:30 -0700
X-CSE-ConnectionGUID: FPEFN97xSemUDcWkA+uDTg==
X-CSE-MsgGUID: rrELin0GSUmoDRJrrNJ0rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="250860423"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 12:00:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 12:00:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 12:00:29 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.51) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 12:00:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CA8l7HbK3pUU2oI8vxYyA4Dj7otiwwz+/+W7b6GoUD9Q5BaHfM5xS50wAI/HpYce6Z9Cgly7j9xaeVONV7sD5/H5VDYq+lVD0Hac4Fkjacm+lXH6pW4+IpSWfMgep/kbU6QeU1/AUECEtZtgb7HX+gCjEeu/iincw/hYxQAaVQWb3SUvpCrxj1uaBWqy1R92YkUTFIwtBOSzNZHI50OZRfe7fWz2f35OQLAyoB5BG2B4cWyaeBEXQvR+WSWE5tq31hujrt1euewJ5rnX1T2Ksp+N6GIhjebb+RpjPs8eGTEUzMzIrKJBRDWQhIhCeNrEkMCAEiO2aDlyJq9Vh6UipA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2rPIgKVbxhP3Nrwy57yuN6yj0or9yMFw18ItgmCkmVY=;
 b=b52Rsu2QLDIwNVXKj8ksrsxpRTBvxZ+xGQ73/AjVD14Dq9LnOh8t3uRSEWP/++mtMSpiIBOFi0hHrIRuLYZdP3J1JRFjflz3+AqBGvHChvVnAJzn1P67xO3bjLj9evvzUywy1/K5LB/3gRgemeKTuEiM2p2wE7WMXaCRKMhCWp459e7fVRlettJiBlC6/T+ELqhm/oJS8JrNHTrP5l2+EcsZl3o0UQlyyMumz78zZTuHCJtQvWMFsliUkkSTcWfvp2l+z6D61NV0lAaEyIbxWovkZ7viv1TCO9F58xrZAbaVvlD560wUHBg5bJnh9ll4axWk5tquhAZM+Q/xLePWww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPF1C4B3BAB7.namprd11.prod.outlook.com (2603:10b6:f:fc02::f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 19:00:27 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 19:00:27 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v5 09/14] drm/i915/display: Store DC3CO eligibility in PSR
 state
Thread-Topic: [PATCH v5 09/14] drm/i915/display: Store DC3CO eligibility in
 PSR state
Thread-Index: AQHc9MezgCfmRfn7NEWRmEYp+Z6/RbY5v2VA
Date: Thu, 11 Jun 2026 19:00:27 +0000
Message-ID: <DM4PR11MB636066C5019FFAB61CA6A9F4F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260605084421.3912865-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260605084421.3912865-10-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260605084421.3912865-10-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPF1C4B3BAB7:EE_
x-ms-office365-filtering-correlation-id: 61c4fe24-cccb-40a0-f4dd-08dec7ebb343
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|366016|376014|38070700021|22082099003|18002099003|4143699003|3023799007|56012099006|6133799003|11063799006;
x-microsoft-antispam-message-info: 8fw8Nwu46vvoEIovuKMKkWzzcEJZ3seEAEjUpaPPPi9yBAEW7Gj1ug4kJmAAhh+F21i/jhlMZ7VqJCxu8AdMr55spQ9KeM4UgUrdUN1Y2gmVH+1O0aaf9UTrx/jvCUVb0vYf1qGNrmIQRAnKdhuRYtXjI5Lj9+H2tRLzmABYXv3KI3a0xvy68+bvMmyS7e6v9xj408VGTAdGjEp0T3iKxlewVh9bF39NxJN0GNhs9F0uYv+15mLx+tbFeJ3gBUhk1oO/O2giws7WlDMTNUNqMAM6h4v/NuycdYahYxrGKczkpkZpXFzU/k1NOJsFdNPOMQPbPGFEJl4WRZLXH2H7jcE3KRwFjwvjqvZf35x7ROlMwLdRZr9v+f3sw0wPYHUDGG0I5h1n0qAmW80jIfTv7mWjrN3zRAHwSZtA5/K4+kTdmcfhbF8YTz2NFZ9Izzu7U5Pud4JC0HqJQXS4ICFEpWDJKPR/L+A5K1t2szmvPhtUV02bfub5hPyunTUgrss7jsZ7wGgewDpixwQG281iq0W8ExxjneB75jIRnWWv+qcs8wjIuRj3gYK/OYECuj0B9cgxvnvYcxdmnmwP7oMTgLgDsl4798EFX2PRhTnRGRdfsvps0eB0u6SHCQuxZvh9tXLkj6x3wEhuY5/W5ZkqCtlrG1pGpJnI+CkWwaQGyqiz0B2aFpc6OS7/Q56Haq2+lZZVdmsKB3xQA9LOHdXRL4g/P5ENmlJlQKy7lOEBpiTXVzGEqUwz1fiqQJ4JZZyr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(38070700021)(22082099003)(18002099003)(4143699003)(3023799007)(56012099006)(6133799003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fJPZz+hBV8HGaAYzWvaFrbBcvW61oNL5g0dR0oFZc4y+Pasb3w9u6m9Zll+Q?=
 =?us-ascii?Q?7+4dF2WZKjxLWQ+NXaCMBT8AIBnuS+mEKU0VKjL8gdXHdgkpUoUeqUN0qtmQ?=
 =?us-ascii?Q?caxb6hS5uJHE8bd9gtZ2eReALJffDRos5zKL5TDdHM56qfWqT2Oy8bV9Sl+d?=
 =?us-ascii?Q?i7Etzarm6ARd+RzBc+mjD09N1lKyFZ6EbbX2kvPSJ/E/VJ8IvCkjKxiRRzmA?=
 =?us-ascii?Q?UzWtMWIB7ajwidxkEnPANhZ5E3/Xmraw+zWpT+CQgj6g1FfEe/jHIO2JzfFQ?=
 =?us-ascii?Q?QRtooA6kHD7Tq3SDvIGMcz6jMlZiMJsILy99yldaA3wJq0XQqwEwPq0z90mM?=
 =?us-ascii?Q?ewY6IPNgNtww12ZQIFdOtVL3QgTWlRS8RU4wWnVgEsHMp0MZ98OdYWQ5ecTB?=
 =?us-ascii?Q?YoZt6FbgP/xAsHxSO8MlVJ/UjiW1HNDKdtTU1/POQKrYhpkU0P0sZlmWvnn2?=
 =?us-ascii?Q?FeXtnywUjPFx54x3YeQHRO1jtNl96ndHpnSa4pYpRbfp/G8Ejbr4NnR6/kXj?=
 =?us-ascii?Q?uIHvbWofWn/5z+AtJ3BPzKTkORccK91NJWCV5yPlda9iPwy1enF/jfRNR4NI?=
 =?us-ascii?Q?qBY/a9G+rY/9hlMiVfdyCEtFTwoYNT/JlqIuzxwUrWr+zjpc6vIttv6g/Jem?=
 =?us-ascii?Q?G7ASm9W/iEnJd4kbhw5pvyb9EyqgrQkEY53AGB1HYaNtqTTrTc476CbmOVRJ?=
 =?us-ascii?Q?4JqD3nxhoZjxEaLtf58D5hcKraBfNBngjGqNmAVMy/6b+tPuG76Pj0x+Lgq/?=
 =?us-ascii?Q?nDI4B4AOHqUJlGeCAQveYfx4XLk9gKdvHeQLUxbfSN0lTqwFMuC6tlBfqmIx?=
 =?us-ascii?Q?Ipr4LoWTIofHd8dKMMiJjFIK314BTrZHxzRSySiQQucrtsF6i4sLwksoU9bT?=
 =?us-ascii?Q?mh0ag+EwV3lnpnqGHef4ty6O0OOuxJxAPhBUlCzh7IzzZg1sBHB+83PglX9l?=
 =?us-ascii?Q?+L6k3Yn6AXAgMQqKbc6DNyvLXikxIHk2CccII7XVga8/p48PHf3Xu5B11Vvk?=
 =?us-ascii?Q?NJJluKFC5lOuDT6QY7vyGy4VIE8vPrj1t+fgaz8e2VI+gxgDD24NFM8a+lnN?=
 =?us-ascii?Q?3BV/MR/FVW99CqPQU+7WaxzjyAURFwfCJJCNCUp1urIq1VqFXL0Gaa4TQ6hj?=
 =?us-ascii?Q?Iyj6JxMunR8XF4nSkjdg1SfX5LrvkqAqfTVGDMf2Tbo+CmRGV3DpXdJS1eVK?=
 =?us-ascii?Q?HmpTIUVFJsi5dnxdJGluecvBrbfwurYEBQlJ7HVVVUSRHJa2zqknbd2Qh1vh?=
 =?us-ascii?Q?9aHJO6FwgkMUaKQBsGF4VmKs5KJ5BFu9YVD7lZnwmk01hSGrg02MBjKpJVvm?=
 =?us-ascii?Q?oaE7/9n+ZSrTDjo6a7Sl+kyoC9dJDMvyfD0fBpoZ7srm+jw2a7/+YOcFlQx8?=
 =?us-ascii?Q?bLwVNiVHZW0YK8KrbtT4W2z5fhTzLWJ4FrpLbUFBE7TsVYsZPBZNxvc14t6P?=
 =?us-ascii?Q?/U+YB6knuTSypENCg3iXPMF6hPdKZhHg4Pg+gpzS06yQvVIbH+7xzEGRkWaU?=
 =?us-ascii?Q?0BkQzj5A90j95dXY09T27IOGQIz4n36KuXmarDjKGdtpSXgXcxFvgO/S5tYl?=
 =?us-ascii?Q?gITJt/3jUg8GAzmKCA2Z6ffYjVR0/n+0WTS0AvVUEPf6RDkdAjlsYgjyEsoD?=
 =?us-ascii?Q?MqYMZvkJgRET8r4GtupzvfHK82QGrIzOYw7CbzFIrFYiMo3fKKAiPZdC+n7m?=
 =?us-ascii?Q?NSo7qmnotfKMw/cep3xh7kkhddw4fnmyt/wZ/LDjiciLPljYuCfeTKBRKy4Y?=
 =?us-ascii?Q?E8GHa9DeFw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mSM4lAHga/q0mI1L4/ggCYkDeACzztXmpsKtSGgWS4sI2DgQ1/906azVa15R5ctkIoie1nFpFpfxumBTODQqoC3H7CUAkUKSMsa7kPNWT6TelSo9k+dlOdhTeF9OHqnaJlr7OJgyAm27rqkYbtnDOTNn1i0ynVXf2ls9AXLFywwETqaXuzgonLDid+sDPQHXnl6uVRmiR6Uh5oRJFUKoIKyu3YgNei4zSlpt8nKDhK8kCiD4KbMDAQEbrkPFcy2afdBwK1JUgpfJXCaK5824stylV5yIHjRJTs9nctP5aiX7Su5CrgqUNzkjwgY8IMgV2MkjZuvKrUTSQaeaEs6OHQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61c4fe24-cccb-40a0-f4dd-08dec7ebb343
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 19:00:27.1408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v7oX8hFCacmx+eOvCDAErtl1taX1qaPMt6ZaXt92eWPZQhzuwWm/q9SQsE4OqbhpR9g50GiODS8oal/CKUVsYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF1C4B3BAB7
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 0C19F674A58



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Friday, June 5, 2026 2:14 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v5 09/14] drm/i915/display: Store DC3CO eligibility in PS=
R state
>=20
> Store DC3CO eligibility in intel_dp->psr during
> intel_psr_post_plane_update() so PSR configuration can take DC3CO into
> account.
>=20
> This will be used to control PSR2 parameters such as idle frames.
>=20
> Changes in v2:
> - Use intel_display_power_dc3co_allowed(display) instead
>   of intel_dc3co_allowed(state)
>=20
> Changes in v4:
> - Update psr.dc3co_eligible before
>   intel_psr_enable_locked() call (sashiko)
>=20
> Changes in v5:
> - rename eligible to allowed (Jani Nikula)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_psr.c           | 6 ++++++
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index cb9c1d6a0afa..5b1d0fa3e888 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1771,6 +1771,8 @@ struct intel_psr {
>  	ktime_t last_exit;
>  	bool sink_not_reliable;
>  	bool irq_aux_error;
> +	/* DC3CO allowed used to control PSR configuration */
> +	bool dc3co_allowed;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 932aff386023..0f4263885416 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2330,6 +2330,7 @@ static void intel_psr_disable_locked(struct intel_d=
p
> *intel_dp)
>  	intel_dp->psr.psr2_sel_fetch_cff_enabled =3D false;
>  	intel_dp->psr.active_non_psr_pipes =3D 0;
>  	intel_dp->psr.pkg_c_latency_used =3D 0;
> +	intel_dp->psr.dc3co_allowed =3D false;
>  }
>=20
>  /**
> @@ -3120,10 +3121,13 @@ void intel_psr_post_plane_update(struct
> intel_atomic_state *state,
>  	const struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder;
> +	bool dc3co_allowed;
>=20
>  	if (!crtc_state->has_psr)
>  		return;
>=20
> +	dc3co_allowed =3D intel_display_power_dc3co_allowed(display);
> +
>  	verify_panel_replay_dsc_state(crtc_state);
>=20
>  	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder, @@ -
> 3151,6 +3155,8 @@ void intel_psr_post_plane_update(struct intel_atomic_st=
ate
> *state,
>  			keep_disabled =3D true;
>  		}
>=20
> +		intel_dp->psr.dc3co_allowed =3D dc3co_allowed;
> +
>  		if (!psr->enabled && !keep_disabled)
>  			intel_psr_enable_locked(intel_dp, crtc_state);
>  		else if (psr->enabled && !crtc_state->wm_level_disabled)
> --
> 2.43.0

