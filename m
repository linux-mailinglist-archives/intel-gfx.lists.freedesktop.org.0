Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5110DB3C168
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 18:58:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B10C10E1A6;
	Fri, 29 Aug 2025 16:58:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aYDDlkda";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F2E310E1A6;
 Fri, 29 Aug 2025 16:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756486688; x=1788022688;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hXpgYkkO+oTODiogP+jRLKcN+DOCizDcPF8n6/Di/Mg=;
 b=aYDDlkdapIqY4fJc0fYyxP/6df8otqPBvUGpubHH/k+sKS29y1NV9BLR
 zEh0wFrYaOn7D4ptbiTJV2I02ezwMk71cMbXLzS3xiFKqoVnh83J35S5O
 LTU8mi6rkmWz5KNHzGFxW73tGXMkl6EjmtEDd2Kpb+RyG0zQJWqBT04mS
 d4iGh/p9aLnPTp/rRAmT7Ov4apEi9b8Dw5xsseeS/ciWKbrXA9IHoIkO+
 9ovS56+ck3JyJqd4WCCBlL3NfmAR1MgfG/imT6nbiCLF+kaBVEzu22HYR
 jJ7hoCANWCiYvu+Vf8Z3+ANmabkOVwAzEcUMBdDWWHfEQ/U6o4UldmwUi w==;
X-CSE-ConnectionGUID: I5kpjllQQQCQZEwPIwLVEQ==
X-CSE-MsgGUID: OS9p/kyrRuqgFqBKSh2PDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11537"; a="61413298"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="61413298"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 09:58:02 -0700
X-CSE-ConnectionGUID: wruqsLqLSryck5GQdDBntg==
X-CSE-MsgGUID: NPX23E49Sce614Vlg5Q16w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="170326658"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 09:58:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 09:58:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 29 Aug 2025 09:58:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.83)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 29 Aug 2025 09:58:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QjRwNFeoS+sBOqXNpvIHDCdkV4AcldzMh7aFDxIK6LSpCgTPHVJEkhyoSVNco0nVuswb4JeYeyMQAhxcYIQQbnhLzIDrZPN1Kpm/dJaAIIT1Gojwd6Cps/fhZh5BdB9XxZ2WPaYX7wsJWgLNstmSXXemZiiFm2FEdAYWfVPhgQhpa2HV5v0GOKyIEvZRNDp4WWvTI0vcZYhqiHwpdia77/pvK1dCfsHzVVhBXRKY0Y8cSnOLSaz/3Gg+20Ht5IWQIhBa1DKHsl/lbJpAePsj8oAmM01VCx/8R6Ha/oe61uPJTAcSs9toBML5/gyQzdoq3KUl3CAFaA7mzfIh7sfNkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XJ4Bi+UnNkmw0hCUGqjOxMCLEp/LDcwEJK+DmrVt3rs=;
 b=GqpZtnvmm5ETUPt1L9PXh2HlLuDrqZ79zd2InEZOToMGHQ1SlN2rlu4jXwMVEauURwpMClppK1xpRDB6tipsRQyul4IEdvi65yK1sfJmKfnOR646GQ04LNHsx+ZVW83HOPP0dkmM2OOnmzo/p4Mu4fBdBGJQz1roorJq9FW9NFGJPkXHtaBupD2BZuuVUKZKBgwoPckOveVGQriGlqIcVd+Kr8xtwsaNMkft87+D8xM4Wejytgq8DBTBawROk0IKWg+DCj0wdTd5u/lTa0CWVRFuHAro3wQA1K8quJvQsHNCRdD7BphxFK8IHia9qoDM1mvprO77jBeV+t81WMIR4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5072.namprd11.prod.outlook.com (2603:10b6:a03:2db::18)
 by DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9073.21; Fri, 29 Aug 2025 16:57:53 +0000
Received: from SJ0PR11MB5072.namprd11.prod.outlook.com
 ([fe80::a14a:e00c:58fc:e4f8]) by SJ0PR11MB5072.namprd11.prod.outlook.com
 ([fe80::a14a:e00c:58fc:e4f8%5]) with mapi id 15.20.9073.017; Fri, 29 Aug 2025
 16:57:53 +0000
From: "Grzelak, Michal" <michal.grzelak@intel.com>
To: "Brzezinka, Sebastian" <sebastian.brzezinka@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v8 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Topic: [PATCH v8 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Index: AQHcGAlAO96YcxbHiUy4ic6rDlP1srR4G3CAgAF7NFA=
Date: Fri, 29 Aug 2025 16:57:53 +0000
Message-ID: <SJ0PR11MB507257E45D045B5D368868DF8F3AA@SJ0PR11MB5072.namprd11.prod.outlook.com>
References: <20250828104951.1279862-1-michal.grzelak@intel.com>
 <20250828104951.1279862-2-michal.grzelak@intel.com>
 <DCE4ET9INSJ6.3LPUPKS0ONCJB@intel.com>
In-Reply-To: <DCE4ET9INSJ6.3LPUPKS0ONCJB@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5072:EE_|DM4PR11MB6019:EE_
x-ms-office365-filtering-correlation-id: d0be690a-2d17-4c96-56a5-08dde71d3229
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-2?Q?WjyZ5M05ABQN3M6osTIuN5Oq55np6OKqBwyEgwjDr8s2NmAbZ0Pr7pe7UY?=
 =?iso-8859-2?Q?NEcLf5Z715x6UapEo7JzSDA4B1cPDGpJCsUdvRteI4oLFTg+AgsXfORpKG?=
 =?iso-8859-2?Q?qqomB12Dsdw4QJ1mbR+K7BISoaFpsnR6wZGIGnk5+yz9LEsCG1wz683etI?=
 =?iso-8859-2?Q?64KwAqPo1E9LO4ybtR45yPt/rGjE2PtCR7IdY+LAkFFeGAgH8FHGa+Nsu/?=
 =?iso-8859-2?Q?jfZN95tV9VvEx3mnFY5QM1waIrhtAyPEnfGsBAXJGeveDRQ5QwagI6yDdW?=
 =?iso-8859-2?Q?7r3jXjCs1r1ahwpoydhdW9dABO/OzSKE7zVzNjYCG0AYWIF4vUJ+6yTIrx?=
 =?iso-8859-2?Q?PPC+Yv3JhoUzqdVIlJouQx1KrifIvMFMITXkKYiN+3KtBwwXJF4OrzUBgW?=
 =?iso-8859-2?Q?HfVyD4yAFRYY1mB1uz+KbVsVvbqGCVNLkM+oe7sKY+AXScy57nOIWjIWNy?=
 =?iso-8859-2?Q?6045of4UCaGaz73U4Hx6goiul3v41Llc3enzWQ/EBIrmf4Yzn15KL/L1To?=
 =?iso-8859-2?Q?dsxBQVuUHAODcRAeErJ4t/1MsQw5ztbiey0DtESm2OF0sxNGETDhXeVyqG?=
 =?iso-8859-2?Q?AIjLTfHmTONZIvTnf6ai8alN2HD/OPVFjo9w2v5Q7Y91PDO3l7k6LwFrGG?=
 =?iso-8859-2?Q?cCfw8NQ6raq1T0n6KesDU4H+74YamQvkr74ah18LcW6gr5jc2X3OP0FUq3?=
 =?iso-8859-2?Q?TotiO0ihVn3sUXek9GScTbcm45hR2mtAP/DpmWd5NDvI39KbnBQ+lxtOp4?=
 =?iso-8859-2?Q?fnRVYNgonEC2ecRkWaHbgrVK8gHykEoCnAOnI8LlGztXInmqr27sAv5UG5?=
 =?iso-8859-2?Q?D9o+WDLnJ261SFknXABtnjSYSbP2uBu/T+Dk4sWZTnR0vvCMXGx0mifuFT?=
 =?iso-8859-2?Q?OWADTvqWv5qC7ZDfr9CdCnDOpiOySzyDbByRb1gnHuZg4ptXJp9lqk/s3m?=
 =?iso-8859-2?Q?vR9SFv303l2gmZJjJSdk0Xt4iLlfDtMxkvxF8JM88sXem+dXXvVmkUdk9I?=
 =?iso-8859-2?Q?6XtcrEnUI/E6G9BYrKfoaxt5khYj6GmTfvA21yBG8HbaQh1QqOP20RrIPD?=
 =?iso-8859-2?Q?fVZsYeuM3KIdzAq8UJ6S10UP1Cw/T2WN/XcFbP760YuvkmmXm5KV+FRyPE?=
 =?iso-8859-2?Q?zQUF24nIlXt0UCgLjb/BNqyHuXDgIF6VUAZpITGgleiU6mJL6/ouLrdHNC?=
 =?iso-8859-2?Q?a1ucrmlKKFMdby4urjgI3AT28BlSqPMVYlh65FPMYrM5zRnScffS1pfFpQ?=
 =?iso-8859-2?Q?uXMGVjwuJd461EZpV6s4nZzguzZ93qc1VXTSNNSt9KMnfYCDIvNa8P7UUk?=
 =?iso-8859-2?Q?ZY1Dv6wFm0sQ9ys90lkKn6//w9SuZR5ds5Et8frBpe2zQ+onVnPnZbh2pD?=
 =?iso-8859-2?Q?rMM8PxeO8UPhN17y9s2/LGHOyCh5CvAg4J1JtZ7cdc/SyObqI/CjW2pWjV?=
 =?iso-8859-2?Q?cxBRj6nLXv0SVXYoMzcwylQkYVgNcyB39cTF8WGH+Y1YgJuuShDtVyTz9X?=
 =?iso-8859-2?Q?acSWzpnlGm2jnhhN2buY2p5Quu+pvwgVqS7sWinC+UY6gECq4IZzEYHsMK?=
 =?iso-8859-2?Q?Zo2//kw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5072.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?4LLk5MwQMFR5q77CyOsAwdlpUUwUK0uK/XnaFLngz1w5uW1Fa61XRSiRj5?=
 =?iso-8859-2?Q?+/5wcwVAp9uP3ByF6ArX+YYwEHSlNOYvVcTkxRPFVX1Ij3HpaiZ++sWqAS?=
 =?iso-8859-2?Q?/eUm7zZWxMKYBGV25FAdNB9ZltJh+ynQPTL+U7yS5JHlXoktgDr8ms5vpv?=
 =?iso-8859-2?Q?tsmg2k9lLOFDw0BBcjVe9FXn2zj+IT+1XZQKcwiVMllqLz3XV0/dtZ45qv?=
 =?iso-8859-2?Q?ViQBBR3MS5zP/4AerjYRQ2yLwLxDPGwZfjZZC4ui34Dzh8INeS71ha376N?=
 =?iso-8859-2?Q?fQf9WhrcUB+cF74u5agRLJqJdvV+sGcDWJcGTrodVYRnjs4NkkKIqDHbT7?=
 =?iso-8859-2?Q?qfHVDNfCnp1FmfcYgMnw6xwpByGf9XeTnBeg2tq7QaEuXIKcMu1Pm7WW1k?=
 =?iso-8859-2?Q?K1C4US1gOyR4RbZopH5fLGErthLq6d4PUAge55AREXISpR5KKwO5BuYBzW?=
 =?iso-8859-2?Q?nEJ2vFYK5YWqr1k1mvy8yzy0eXPsYU85mMzWMijD3Eun6cUjY+MsH4olxu?=
 =?iso-8859-2?Q?g/++SFM2OzpkNUdU9uG1pCgaVMq9ar50IBillno2bcnPR83p4oDVN0BGFM?=
 =?iso-8859-2?Q?uEYmnbh8pcGFuBDgldnl1y01JwSW651IczcWfYAOaSFQcbcCjkZOkOu5A2?=
 =?iso-8859-2?Q?OK+g30/au7Niz+DlSVz3zK7px47KWObjKMY9d9ss46cAaKU/U3NuIuW/k+?=
 =?iso-8859-2?Q?3FyJ2i2VZ9Qxk5BJu8dt49bzbOAJu6gl8JJ+G6EcnkFn7+87qZRdd37Y6w?=
 =?iso-8859-2?Q?Nl2PorT80CWty9TINQCPmw+QFExCgUJzOlmUBgWJ/f/EGAxH7qHG7FTikq?=
 =?iso-8859-2?Q?GCqKr1QwN0KX8je/2KiybrmzC9s2apD8NgMzoRXjCJUVAYBSROjzV5HWmC?=
 =?iso-8859-2?Q?njrEJSbWYoXLGV0fVMDVzqXrpg9DxBYbx/bhrXQ/Mtgix2ghAnvR8hJjzh?=
 =?iso-8859-2?Q?5zwSlHIejKFBk8hrd6QO8SmEqDfKvMBBXFkTR2+81RhfB0nZOcFCwaBbH2?=
 =?iso-8859-2?Q?l38D469IaNKIWXwfX+ERVyG6NI3LTV6HkaFr2XU+/npqaPtDTY5S8KKk4/?=
 =?iso-8859-2?Q?HynRwGnf1zYX6oZj29aI2ZMVXc6dy8OYs7038HZgncKdG+NJ9ZyQlnxe3l?=
 =?iso-8859-2?Q?nTvJxDCSb51yzmP9CiuUYD+GoOPDNioWYqJa2MGQBgoc4GTatPGxUrNf1u?=
 =?iso-8859-2?Q?IR+z9/1bacbedEcZ/71heWbklBZcCBpo8ewsYmlabxxIWRVWKGmrJqV6s7?=
 =?iso-8859-2?Q?5fduAAKMInQ7dNjHpQfzMWW2ZnHtD0Cu/stWRj5PhLn4hP/JGWiLsf9T1k?=
 =?iso-8859-2?Q?b/wne03jXQldfAM9lcYiaJgoGpK1vJ760WzBEu7jTMwHwt74nXS9d1fgZg?=
 =?iso-8859-2?Q?Iz8VF7rRex2PcBScHrrffeqTrrjzqOyqvUyydS+wdHAlyfJSCWyVDK2pTQ?=
 =?iso-8859-2?Q?E+fb2spMkZzl101cOnT/Yyq6o04Iy0aFWI4B5ijM06sMGggr1f5zn2HRPG?=
 =?iso-8859-2?Q?K08/26la7yk7dHgHz8MFg6dDMqpzN8WHVEaKb+Pr/rSZXVqoqyKCaKDUpl?=
 =?iso-8859-2?Q?44+CQujsdaNTVm5uiIF7OPQIp4lqXBawTfUhZshgLyDkRdoi3x5mY2cXH6?=
 =?iso-8859-2?Q?uVxLshCQmHEtAJJgU3kHT5pNrRbwWeq7FQ?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5072.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0be690a-2d17-4c96-56a5-08dde71d3229
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2025 16:57:53.7750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PlEEy1lcOB5iVRixRrfU7MK9Mx7MkyV5n1KZRoafjFETUShntVSELP5SzereVD2QV/1XFZmX+93K3nXeec98FnJdcIAH4ya1BpKX81TTOdw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6019
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

Hi Sebastian,
=20
From: Brzezinka, Sebastian <sebastian.brzezinka@intel.com>=20
Sent: Thursday, August 28, 2025 4:12 PM=20
>Hi Micha=B3
>On Thu Aug 28, 2025 at 10:49 AM UTC, Micha=B3 Grzelak wrote:
>> There is no reason in debugfs why PSR has been disabled. Add
>It might be useful to explain the motivation behind this feature.

Do you think it will be sufficient to put the first sentence this way then?=
:
There is no reason in debugfs why PSR has been disabled. Currently,
without this information, IGT tests cannot decide whether PSR has been
disabled on purpose or was it abnormal behavior. Because of it, the status
of the test cannot be decided correctly.

>> no_psr_reason field into struct intel_psr. Write the reason, e.g. PSR=20
>> setup timing not met, into proper PSR debugfs file.
>> Extend format of debugfs file to have reason when non-NULL.
>> Ensure no_psr_reason is up-to-date or NULL by resetting it at the=20
>> beginning of intel_psr_compute_config. Clean it when PSR is activated.
>>
>> Refactor intel_psr_post_plane_update to use no_psr_reason along=20
>> keep_disabled.
>It appears to be version 8. I think it would be helpful to include a chang=
elog.=20
=20
Ok, will copy changelog from cover letter and add it to the commit message
in next version of the patch.
=20
>>
>> Signed-off-by: Micha=B3 Grzelak <michal.grzelak@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_types.h    |  2 ++
>>  drivers/gpu/drm/i915/display/intel_psr.c      | 21 +++++++++++++++----
>>  2 files changed, 19 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h=20
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index fd9d2527889b..0f8332ce1aa0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1687,6 +1687,8 @@ struct intel_psr {
>>  	bool pkg_c_latency_used;
>> =20
>>  	u8 active_non_psr_pipes;
>> +
>> +	const char *no_psr_reason;
>Have you considered using an enum or another type instead of a char pointe=
r?

I was reflecting other features in the driver which use it the same way, e.=
g.
const char *no_fbc_reason from drivers/gpu/drm/i915/display/intel_fbc.c.
Besides of it, I used char pointer as it doesn't require type conversion wh=
en
writing to debugfs file. Do you think I should change it to enum instead?=20

Best regards,
Micha=B3
