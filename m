Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2522AA6971
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 05:37:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7739210E896;
	Fri,  2 May 2025 03:37:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XKsBmgwW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77A6010E0AC;
 Fri,  2 May 2025 03:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746157074; x=1777693074;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vJMEbSQo0GUofTh16D+0BYCv5+piXXUP1Bki7g7pRAA=;
 b=XKsBmgwWMfOi/TD15FYOjmcGhdhSvp0fD9zYZ+3jUbvdoAHuanYRyX4R
 plGqgDjGcUBw54BuRngC38SNQscWi0KSjTtvpMi5nYAEW7+1wmaZI764z
 WuC1a2Bs0Byj7r97FMjmqK40R7GbAtsRRBXrk7I8o2OrGszm/DjldVaQ2
 mRUS9bLzOxR4nuqW2PZuaiVv+G5h/u94YXNakqYtB7ezqnJN1Mh5UNl77
 4niShhlFHaTc37fE2JIAUvCetd+54sY126uK8nqF/iMGA8bXrQqQqAYSZ
 82BADt99skFVWF2PeR6BCMJEyQG+zAVCWSqGCxaE+deS9is5UFLKeOQX2 g==;
X-CSE-ConnectionGUID: AKjmn0HyTWWp5g3qTNiV5w==
X-CSE-MsgGUID: yIHpsmFTTK+++7MpTich7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47727278"
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="47727278"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 20:37:53 -0700
X-CSE-ConnectionGUID: n8CJm58XROGRDGVsDpMRrg==
X-CSE-MsgGUID: dntd5/u6Sjq69deyw2br0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="139347891"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 20:37:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 20:37:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 20:37:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 20:37:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oX/fhdadOPHHOFHywk9giZ+RPFkj1YgXcDhfu1HUddw6E4QfHxB9IOzHIWc5cPneHZGFqCIboqTuY9DPDiOyJKVq4HIdaUvaqEMXmoKhVkmMb8PxQD3yDg4f2ZSzE2w6roUUABhQd5VN1VG07MJB1BfJEW/p/o5I+N+mjidJnkchFTRW1UfjUG0Bgfmwt0v5s2UTxFLw7z5TKeYYJxUmbHLD4f4K5TMTksJ3xQ/JWBx2s4IfyP0vHj3QAUY5aC8SCWwK9b4JnUyIHTmBOIr216+3y83VLrNuZu7k7XtQW59ZYXNBt+dPvzgbOUU4XFkX8M/1FjIddaOFsxg1qw3flA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1J8tUUGQPe6roMcYYooKtc9O3SNOgtYjlmUdwbhyx+8=;
 b=ZwvpUJAVwlZnj1ccLDCNhaTJCr1nX1pcg6VIoAhrsvj9+PnltMYBvzACss79fmo1xzVvWXYqvw5JRoX+F62ML8BRJbWvvW78g0/d6LFInGu6mB1sJLk+KgtBTx2bIYoqo72vmgY3o0pJ0KubOKJ/2LmoYjQWvvwo+Bnb5Y9fmYNzUxvX3J+NYDaxr1hAkwT1/TRXLAX6kMSpzs6JA3Ob0AXc/nxDxP3LvfMged1deIyCKlNKkV5zyuMrZfB/N++FDHi86Jz5wJjIXV98db6gFx8vhDWS9+AkKnJ+jkoRCufCDRKiIzIB6o+fjC9kp6qMSoScQcckVVIjSKj9OIdNwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB8803.namprd11.prod.outlook.com (2603:10b6:208:59a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Fri, 2 May
 2025 03:37:44 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Fri, 2 May 2025
 03:37:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 04/10] drm/i915/hdcp: rename struct intel_hdcp_gsc_message
 to intel_hdcp_gsc_context
Thread-Topic: [PATCH 04/10] drm/i915/hdcp: rename struct
 intel_hdcp_gsc_message to intel_hdcp_gsc_context
Thread-Index: AQHbtVPOkAStphsPY0WSEwVWuUoIJLO7pwBggABOigCAAsaQ8A==
Date: Fri, 2 May 2025 03:37:43 +0000
Message-ID: <SN7PR11MB67501838B0CF6AF752B0537CE38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <ca0a802a81ba4e96e7c40646a32386d4351d6ff4.1745524803.git.jani.nikula@intel.com>
 <SN7PR11MB675092961315E4E251FEB699E3832@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87v7qmui53.fsf@intel.com>
In-Reply-To: <87v7qmui53.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB8803:EE_
x-ms-office365-filtering-correlation-id: 7177ecee-e3c8-4819-1ffd-08dd892ab28a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?LW/LdhIR9cSgrQ0kOGEiiP9G8M4zS7xpBwndzQ5f8GejL3Rot8DE5+kvbjqu?=
 =?us-ascii?Q?4MY1iHCPGClxQEHnEiD3nvPP0rA1r9TOZqNyvDOXWHkOUWvjnBnYYq8LPCGO?=
 =?us-ascii?Q?b8zItDqiHW6ersrXg4WEI+BuAS3FDHJ1/e5ZBjZ9Pvk0aEZxT6PxlY/zrjoQ?=
 =?us-ascii?Q?usBo74YQnCRoZnqEe7+lFc9NkHNl/kWPoYrkJpIn5z6egT9HNbzVFnH/CqEr?=
 =?us-ascii?Q?XSWNL2OIz0o5yE9vCHQJkMWG5rD2O5Zd61eJuAKSVMpKcK3Hoyzd7QlNNTb7?=
 =?us-ascii?Q?Xej+u0AgrGPZMUlftGLBqcbwF0yrfhnZN1BoxuLUpDSM1rmYm5+CzCPIuIIl?=
 =?us-ascii?Q?UVDRq8756bW4BLXhBVEvc8xBvPUOUVluULw0LHv9zc5TAqoBqu+iouHEFgeh?=
 =?us-ascii?Q?glbys21ozeQo1t6UoDLY7jCDUsjDbUSTcqlwuNX6y19YB3cZlwXJ05CihLgP?=
 =?us-ascii?Q?juw1CM2wgQkOoaQmqjWNPDJ3NH0CrGwQ8JpeOJn+o3uzXCO6W+lXAPsSvdSC?=
 =?us-ascii?Q?9ouZHt0+Ti7DKmnwrV9e4pCldBhnR24rbs28tQ7OWgBBCdS+Vgn9TuHjjnwN?=
 =?us-ascii?Q?Kx9poZgV16CeXZ7Vbt4Pl8sSEsx8uAAExZdp1yzyi2vu6JR84k5YJf4C8iPJ?=
 =?us-ascii?Q?yucVARt/miahY93USC7rpUP0pHG8x1ZtgXZvYcZadqziiXQG92r25KnHGGd7?=
 =?us-ascii?Q?HKbUQoo+4L5EvKzFDvAr6WjPUWzcWQNNN7PbMGCb0pMwnZXrVb8xAqVXY02V?=
 =?us-ascii?Q?gAP2DIHvqeXDpsiGLTtjLIN4vs+C/lW3koLDUSvqynXji8m3kptZD6wOGl4p?=
 =?us-ascii?Q?/N3ndq3cfXyylOMIn1c3f1k9fAwfyTxTDw6EcCL5N1/qz3rLbDg5iKVck+w/?=
 =?us-ascii?Q?u1E2VVxnbT2VeddWCEC5kCaxM5gOfLySJEof9pd9mLlC3bEdDHhU5XNCST81?=
 =?us-ascii?Q?X8K98kIRbC7I3iZ5eqf18RZEziwE+7R0lXRTiRKGOMX+RSnmPQUooNl77lAK?=
 =?us-ascii?Q?lWljzUd2CPE5DSshJFa8tLYmoFegaLRu3vRNeEFR+1RuG81RrzFId15cQ5WC?=
 =?us-ascii?Q?RCNNV5Ht8wpykX8LWSdRXLOSEHByvsrjq+AQO8GZBewWfEJUVO+Ardic3JpL?=
 =?us-ascii?Q?BhvHunO0QJFd77vTTTv1J2cKJOQ/FuOEZITXTLnnouDtR40S7UpmwI7RW9Ph?=
 =?us-ascii?Q?0KEGr6r+uztTY498FEOSJMBE+3yUYB2UBYCW0XUBaC/b+VEkVwki2ROCe/3H?=
 =?us-ascii?Q?hWqs8Ko3LXzrcQJZ2pfqrT5o9RsIxzw52/yK7NdvKVV6fneW0lAor4rgTcwL?=
 =?us-ascii?Q?yz3vwmy4JG9+3spiEMRE0RzjUTrYNqr6NxLL71R/tZSNvyKYEnes0EX7yb2+?=
 =?us-ascii?Q?REtpq2zYXDgofna9quhXGwymEhcYnxACEkP4I1otuCyTrZwla/mcMgywAGuh?=
 =?us-ascii?Q?zPHUspuVP+pACZBegw1UiEj1QKBPw1ppclf1FIFDswwz/19bl5g2ncUzO3i4?=
 =?us-ascii?Q?QAaaKlzrgD3UzMo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?No5deGM7H2OVV94xll48pRlEbmlYJ4u0MpPIA0/Rj513fiCR2cc2I6Be67cy?=
 =?us-ascii?Q?vExoJQD7Gg2V/6TNU57OmLyJDKccsxHBpgSVPpU75J/UBwcTSQl3JLTmwERr?=
 =?us-ascii?Q?/FvEOZL6r/uAbu2IzPdX20zV7rWnrsrV20Jo1ySAS4dDIGZrkBUxkKH1XcJv?=
 =?us-ascii?Q?h72sAc+EieO+S7KyMyJTkASu5uXz8HoSyHDhLqoGJIhrpYnwPrG8DfOkBhNL?=
 =?us-ascii?Q?t5/SJiAeE52YoijSe1NKuoINVasyVIDjCCR9YkKIpBd2TjaJOQT+fk9HYXwS?=
 =?us-ascii?Q?0rDBPyVDpvF+4I5pTCt895V0GajnkbBSXJkqBzYCWIkDnNX/Omnbq4vRnO0n?=
 =?us-ascii?Q?F3mcw2/xDrsLqu5U1MO4KcWxRCVQlqhQ9mj6dtj7tbW5zky+ywQFbEZIeEuX?=
 =?us-ascii?Q?pgzeqwOJSLDZBPZTnHVf/KBqBVZVdXEb94832tRtlKpZfHp95HbEAJCLBBRI?=
 =?us-ascii?Q?2CiYmAZqX/N1RBp1Bn517xAH0XkT7luW0ikvLsib2gUhEe+3e8Li3xrqfjII?=
 =?us-ascii?Q?aTQ9rlCqlUnd+ZtmeZ1+dtOhFOTpVF9KCKEzbWJOrnAjsS2XovWmtQKisLGm?=
 =?us-ascii?Q?rfa+gDNVqgQw9hVQplYLs/YOXBIsXdW+/zgK5UTzLnkQoPNIJZrn6RjrzAsn?=
 =?us-ascii?Q?5iQOeZTJXhyjNgAwreTEpIrXwbjpsH8uwTjjCQvutAQsbZvSMoovTJ1ssCR/?=
 =?us-ascii?Q?ZNpyYg3Cr1O1Wcrvm7WbIr5vLsQEdmRs+wwtRL8LsUHjvCPQx14izd75WkgH?=
 =?us-ascii?Q?Fxe2jo77yc91qQIP5ZFtHzcMuic6VkR6HILGIywyaYlYySrcY2C02nPDZ3eO?=
 =?us-ascii?Q?K/SAHoZr3Vwgb1HdDX4kzFFQTSf+BfiaNTBrOZuWj2pxl2aTqd27f5TCbc8N?=
 =?us-ascii?Q?EHlJWo4dT2W+syjNFvKfXimACmJielU2zkBIYCsJFoOu8C1eLkKHDzvl55Dc?=
 =?us-ascii?Q?/eGntwUy/tCi1aPK3q3LWNycJg+Axj8CUlsPkCuNZ8g7fg1UbsScUm+SyYPs?=
 =?us-ascii?Q?eK4xuwyET8utIwIBqYtU1OIUCM0sL2F8kkFQAJxVL7YYzg8bDvKZ+paT6h/y?=
 =?us-ascii?Q?BLxrG6OEKulwaDprgt+Npp/1nRcn1NhhZpaRK7KSWhymw54sczAcRzDG07LC?=
 =?us-ascii?Q?uHm8VLiL7mSNulHdx0gf39FDbKBxcKgLsifWeedAbFN4LR/7wmWVm8/2dMLT?=
 =?us-ascii?Q?58ZPmlFTPU2vAZJKytbo8NIm5EodTMnrFtY3h25gpulZO65kfJd27rv2K5pt?=
 =?us-ascii?Q?/J0OAzaOsb3C+SUO5bjdm/eMiwJIZfwoHlx4T1j6q+9MHWlTv+uTQ/RirPnK?=
 =?us-ascii?Q?dpcMdidSBDZ0Wvx6V0jxLKRRiYEammiLlSE2oi0zckdYANXdrzCFM15LH1GS?=
 =?us-ascii?Q?H7GMLrG9YLd4Tof0L36ztqSns2yUOn5NRED3dN4y02vXbZvmWbxYMWXuEPNF?=
 =?us-ascii?Q?4wvlCxH5M+4kpbK/38+Lt6gvPaQ7ZZOna0E/NTRaGVM5G449CcvfU04xVU7+?=
 =?us-ascii?Q?LqFZtP0FBfYhrQqHIKZNviIbGjk0bh3F+4rWOAUe/Mtv0xqVsr4mFterJzf6?=
 =?us-ascii?Q?/CtiMzGAeSYFuBHYesHeiD4eL5kBxGhtdjq/wza0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7177ecee-e3c8-4819-1ffd-08dd892ab28a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 03:37:43.1610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dHB53KuMveTyydhoB/P+oa7RGKWfMcCiJ9N4mNsFOv9WidHYsKgS4HLohauAvlC1QUudgJGPHLl0dlr8AF/NJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8803
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, April 30, 2025 2:43 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Subject: RE: [PATCH 04/10] drm/i915/hdcp: rename struct
> intel_hdcp_gsc_message to intel_hdcp_gsc_context
>=20
> On Wed, 30 Apr 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Friday, April 25, 2025 1:32 AM
> >> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> >> <suraj.kandpal@intel.com>
> >> Subject: [PATCH 04/10] drm/i915/hdcp: rename struct
> >> intel_hdcp_gsc_message to intel_hdcp_gsc_context
> >>
> >> It's really about the context more than about the message.
> >>
> >> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../gpu/drm/i915/display/intel_display_core.h |  2 +-
> >> drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 52 ++++++++---------
> >> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  6 +-
> >> .../drm/i915/display/intel_hdcp_gsc_message.c | 14 ++---
> >>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 58 +++++++++---------=
-
> >>  5 files changed, 66 insertions(+), 66 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> index 613af57abd1b..dc834cef75c7 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> @@ -430,7 +430,7 @@ struct intel_display {
> >>  		 * reused when sending message to gsc cs.
> >>  		 * this is only populated post Meteorlake
> >>  		 */
> >> -		struct intel_hdcp_gsc_message *hdcp_message;
> >> +		struct intel_hdcp_gsc_context *gsc_context;
> >>  		/* Mutex to protect the above hdcp related values. */
> >>  		struct mutex hdcp_mutex;
> >>  	} hdcp;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> >> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> >> index 68d912dbd658..3e1dc2f7310c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> >> @@ -12,7 +12,7 @@
> >>  #include "i915_utils.h"
> >>  #include "intel_hdcp_gsc.h"
> >>
> >> -struct intel_hdcp_gsc_message {
> >> +struct intel_hdcp_gsc_context {
> >>  	struct i915_vma *vma;
> >>  	void *hdcp_cmd_in;
> >>  	void *hdcp_cmd_out;
> >
> > I feel this should be message_context if we are renaming it since the
> > data inside it will contain Hdcp message specific data once filled out
> > and the addresses where this message is store so If we really have to r=
ename
> it then message_context over just context.
> > That way we also leave the hdcp_message variable name alone not having =
to
> rename it at every use.
>=20
> My point is that it's not a *message*. It's a context that's shared and u=
sed for
> all messages. I think "hdcp_message" as a struct member and as a variable
> name is misleading, and I'd like to rename them anyway. It's not even pas=
sed
> on to any message sending functions (yet).
>=20
> See struct i2c_msg for what an actual message struct looks like. You fill=
 it in and
> and pass on to i2c_transfer() to send. struct intel_hdcp_gsc_message is n=
othing
> like that.
>=20
> I just think intel_hdcp_gsc_message_context is unwieldy, so I opted for t=
he
> shorter intel_hdcp_gsc_context. Moreover, in patch 6/10 I store more info=
 to it
> too.
>=20
> I can rename if you like, but to what? Thoughts?

None that come to my mind but this seems okay then

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
>=20
> BR,
> Jani.
>=20
>=20
>=20
> >
> > Regards,
> > Suraj Kandpal
> >
> >> @@ -40,7 +40,7 @@ bool intel_hdcp_gsc_check_status(struct
> >> intel_display
> >> *display)
> >>
> >>  /*This function helps allocate memory for the command that we will
> >> send to gsc cs */  static int
> >> intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
> >> -					     struct intel_hdcp_gsc_message
> >> *hdcp_message)
> >> +					     struct intel_hdcp_gsc_context
> >> *gsc_context)
> >>  {
> >>  	struct intel_gt *gt =3D i915->media_gt;
> >>  	struct drm_i915_gem_object *obj =3D NULL; @@ -77,9 +77,9 @@ static
> >> int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
> >>
> >>  	memset(cmd_in, 0, obj->base.size);
> >>
> >> -	hdcp_message->hdcp_cmd_in =3D cmd_in;
> >> -	hdcp_message->hdcp_cmd_out =3D cmd_out;
> >> -	hdcp_message->vma =3D vma;
> >> +	gsc_context->hdcp_cmd_in =3D cmd_in;
> >> +	gsc_context->hdcp_cmd_out =3D cmd_out;
> >> +	gsc_context->vma =3D vma;
> >>
> >>  	return 0;
> >>
> >> @@ -90,37 +90,37 @@ static int
> >> intel_hdcp_gsc_initialize_message(struct
> >> drm_i915_private *i915,
> >>  	return err;
> >>  }
> >>
> >> -struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct
> >> intel_display
> >> *display)
> >> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct
> >> +intel_display *display)
> >>  {
> >>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> >> -	struct intel_hdcp_gsc_message *hdcp_message;
> >> +	struct intel_hdcp_gsc_context *gsc_context;
> >>  	int ret;
> >>
> >> -	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> >> -	if (!hdcp_message)
> >> +	gsc_context =3D kzalloc(sizeof(*gsc_context), GFP_KERNEL);
> >> +	if (!gsc_context)
> >>  		return ERR_PTR(-ENOMEM);
> >>
> >>  	/*
> >>  	 * NOTE: No need to lock the comp mutex here as it is already
> >>  	 * going to be taken before this function called
> >>  	 */
> >> -	ret =3D intel_hdcp_gsc_initialize_message(i915, hdcp_message);
> >> +	ret =3D intel_hdcp_gsc_initialize_message(i915, gsc_context);
> >>  	if (ret) {
> >> -		drm_err(display->drm, "Could not initialize hdcp_message\n");
> >> -		kfree(hdcp_message);
> >> -		hdcp_message =3D ERR_PTR(ret);
> >> +		drm_err(display->drm, "Could not initialize gsc_context\n");
> >> +		kfree(gsc_context);
> >> +		gsc_context =3D ERR_PTR(ret);
> >>  	}
> >>
> >> -	return hdcp_message;
> >> +	return gsc_context;
> >>  }
> >>
> >> -void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message
> >> *hdcp_message)
> >> +void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context
> >> +*gsc_context)
> >>  {
> >> -	if (!hdcp_message)
> >> +	if (!gsc_context)
> >>  		return;
> >>
> >> -	i915_vma_unpin_and_release(&hdcp_message->vma,
> >> I915_VMA_RELEASE_MAP);
> >> -	kfree(hdcp_message);
> >> +	i915_vma_unpin_and_release(&gsc_context->vma,
> >> I915_VMA_RELEASE_MAP);
> >> +	kfree(gsc_context);
> >>  }
> >>
> >>  static int intel_gsc_send_sync(struct drm_i915_private *i915, @@
> >> -167,7
> >> +167,7 @@ static int intel_gsc_send_sync(struct drm_i915_private
> >> +*i915,
> >>  /*
> >>   * This function can now be used for sending requests and will also h=
andle
> >>   * receipt of reply messages hence no different function of message
> >> retrieval
> >> - * is required. We will initialize intel_hdcp_gsc_message structure
> >> then add
> >> + * is required. We will initialize intel_hdcp_gsc_context structure
> >> + then add
> >>   * gsc cs memory header as stated in specs after which the normal
> >> HDCP payload
> >>   * will follow
> >>   */
> >> @@ -178,7 +178,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> >> drm_i915_private *i915, u8 *msg_in,
> >>  	struct intel_gt *gt =3D i915->media_gt;
> >>  	struct intel_gsc_mtl_header *header_in, *header_out;
> >>  	const size_t max_msg_size =3D PAGE_SIZE - sizeof(*header_in);
> >> -	struct intel_hdcp_gsc_message *hdcp_message;
> >> +	struct intel_hdcp_gsc_context *gsc_context;
> >>  	u64 addr_in, addr_out, host_session_id;
> >>  	u32 reply_size, msg_size_in, msg_size_out;
> >>  	int ret, tries =3D 0;
> >> @@ -191,10 +191,10 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> >> drm_i915_private *i915, u8 *msg_in,
> >>
> >>  	msg_size_in =3D msg_in_len + sizeof(*header_in);
> >>  	msg_size_out =3D msg_out_len + sizeof(*header_out);
> >> -	hdcp_message =3D i915->display.hdcp.hdcp_message;
> >> -	header_in =3D hdcp_message->hdcp_cmd_in;
> >> -	header_out =3D hdcp_message->hdcp_cmd_out;
> >> -	addr_in =3D i915_ggtt_offset(hdcp_message->vma);
> >> +	gsc_context =3D i915->display.hdcp.gsc_context;
> >> +	header_in =3D gsc_context->hdcp_cmd_in;
> >> +	header_out =3D gsc_context->hdcp_cmd_out;
> >> +	addr_in =3D i915_ggtt_offset(gsc_context->vma);
> >>  	addr_out =3D addr_in + PAGE_SIZE;
> >>
> >>  	memset(header_in, 0, msg_size_in);
> >> @@ -202,7 +202,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> >> drm_i915_private *i915, u8 *msg_in,
> >>  	get_random_bytes(&host_session_id, sizeof(u64));
> >>  	intel_gsc_uc_heci_cmd_emit_mtl_header(header_in,
> >> HECI_MEADDRESS_HDCP,
> >>  					      msg_size_in, host_session_id);
> >> -	memcpy(hdcp_message->hdcp_cmd_in + sizeof(*header_in), msg_in,
> >> msg_in_len);
> >> +	memcpy(gsc_context->hdcp_cmd_in + sizeof(*header_in), msg_in,
> >> +msg_in_len);
> >>
> >>  	/*
> >>  	 * Keep sending request in case the pending bit is set no need to
> >> add @@ -236,7 +236,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> >> drm_i915_private *i915, u8 *msg_in,
> >>  			    reply_size, (u32)msg_out_len);
> >>  	}
> >>
> >> -	memcpy(msg_out, hdcp_message->hdcp_cmd_out +
> >> sizeof(*header_out), msg_out_len);
> >> +	memcpy(msg_out, gsc_context->hdcp_cmd_out + sizeof(*header_out),
> >> +msg_out_len);
> >>
> >>  err:
> >>  	return ret;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> >> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> >> index f3362720d742..31080df80097 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> >> @@ -11,7 +11,7 @@
> >>
> >>  struct drm_i915_private;
> >>  struct intel_display;
> >> -struct intel_hdcp_gsc_message;
> >> +struct intel_hdcp_gsc_context;
> >>
> >>  bool intel_hdcp_gsc_cs_required(struct intel_display *display);
> >> ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8
> >> *msg_in, @@ -
> >> 19,7 +19,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private
> >> *i915, u8 *msg_in,
> >>  				size_t msg_out_len);
> >>  bool intel_hdcp_gsc_check_status(struct intel_display *display);
> >>
> >> -struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct
> >> intel_display *display); -void intel_hdcp_gsc_free_message(struct
> >> intel_hdcp_gsc_message *hdcp_message);
> >> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct
> >> +intel_display *display); void intel_hdcp_gsc_free_message(struct
> >> +intel_hdcp_gsc_context *gsc_context);
> >>
> >>  #endif /* __INTEL_HDCP_GCS_H__ */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> >> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> >> index 11aa6772f272..94ca571ab481 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> >> @@ -633,7 +633,7 @@ static const struct i915_hdcp_ops gsc_hdcp_ops =3D
> >> {
> >>
> >>  int intel_hdcp_gsc_init(struct intel_display *display)  {
> >> -	struct intel_hdcp_gsc_message *hdcp_message;
> >> +	struct intel_hdcp_gsc_context *gsc_context;
> >>  	struct i915_hdcp_arbiter *arbiter;
> >>  	int ret =3D 0;
> >>
> >> @@ -643,9 +643,9 @@ int intel_hdcp_gsc_init(struct intel_display
> >> *display)
> >>
> >>  	mutex_lock(&display->hdcp.hdcp_mutex);
> >>
> >> -	hdcp_message =3D intel_hdcp_gsc_hdcp2_init(display);
> >> -	if (IS_ERR(hdcp_message)) {
> >> -		ret =3D PTR_ERR(hdcp_message);
> >> +	gsc_context =3D intel_hdcp_gsc_hdcp2_init(display);
> >> +	if (IS_ERR(gsc_context)) {
> >> +		ret =3D PTR_ERR(gsc_context);
> >>  		kfree(arbiter);
> >>  		goto out;
> >>  	}
> >> @@ -653,7 +653,7 @@ int intel_hdcp_gsc_init(struct intel_display *disp=
lay)
> >>  	display->hdcp.arbiter =3D arbiter;
> >>  	display->hdcp.arbiter->hdcp_dev =3D display->drm->dev;
> >>  	display->hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> >> -	display->hdcp.hdcp_message =3D hdcp_message;
> >> +	display->hdcp.gsc_context =3D gsc_context;
> >>
> >>  out:
> >>  	mutex_unlock(&display->hdcp.hdcp_mutex);
> >> @@ -663,8 +663,8 @@ int intel_hdcp_gsc_init(struct intel_display
> >> *display)
> >>
> >>  void intel_hdcp_gsc_fini(struct intel_display *display)  {
> >> -	intel_hdcp_gsc_free_message(display->hdcp.hdcp_message);
> >> -	display->hdcp.hdcp_message =3D NULL;
> >> +	intel_hdcp_gsc_free_message(display->hdcp.gsc_context);
> >> +	display->hdcp.gsc_context =3D NULL;
> >>  	kfree(display->hdcp.arbiter);
> >>  	display->hdcp.arbiter =3D NULL;
> >>  }
> >> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> >> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> >> index d15565bf2f9f..68fac12ac666 100644
> >> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> >> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> >> @@ -21,7 +21,7 @@
> >>
> >>  #define HECI_MEADDRESS_HDCP 18
> >>
> >> -struct intel_hdcp_gsc_message {
> >> +struct intel_hdcp_gsc_context {
> >>  	struct xe_bo *hdcp_bo;
> >>  	u64 hdcp_cmd_in;
> >>  	u64 hdcp_cmd_out;
> >> @@ -69,7 +69,7 @@ bool intel_hdcp_gsc_check_status(struct
> >> intel_display
> >> *display)
> >>
> >>  /*This function helps allocate memory for the command that we will
> >> send to gsc cs */  static int
> >> intel_hdcp_gsc_initialize_message(struct intel_display *display,
> >> -					     struct intel_hdcp_gsc_message
> >> *hdcp_message)
> >> +					     struct intel_hdcp_gsc_context
> >> *gsc_context)
> >>  {
> >>  	struct xe_device *xe =3D to_xe_device(display->drm);
> >>  	struct xe_bo *bo =3D NULL;
> >> @@ -92,57 +92,57 @@ static int
> >> intel_hdcp_gsc_initialize_message(struct
> >> intel_display *display,
> >>  	cmd_out =3D cmd_in + PAGE_SIZE;
> >>  	xe_map_memset(xe, &bo->vmap, 0, 0, bo->size);
> >>
> >> -	hdcp_message->hdcp_bo =3D bo;
> >> -	hdcp_message->hdcp_cmd_in =3D cmd_in;
> >> -	hdcp_message->hdcp_cmd_out =3D cmd_out;
> >> +	gsc_context->hdcp_bo =3D bo;
> >> +	gsc_context->hdcp_cmd_in =3D cmd_in;
> >> +	gsc_context->hdcp_cmd_out =3D cmd_out;
> >>  out:
> >>  	return ret;
> >>  }
> >>
> >> -struct intel_hdcp_gsc_message *intel_hdcp_gsc_hdcp2_init(struct
> >> intel_display
> >> *display)
> >> +struct intel_hdcp_gsc_context *intel_hdcp_gsc_hdcp2_init(struct
> >> +intel_display *display)
> >>  {
> >> -	struct intel_hdcp_gsc_message *hdcp_message;
> >> +	struct intel_hdcp_gsc_context *gsc_context;
> >>  	int ret;
> >>
> >> -	hdcp_message =3D kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> >> -	if (!hdcp_message)
> >> +	gsc_context =3D kzalloc(sizeof(*gsc_context), GFP_KERNEL);
> >> +	if (!gsc_context)
> >>  		return ERR_PTR(-ENOMEM);
> >>
> >>  	/*
> >>  	 * NOTE: No need to lock the comp mutex here as it is already
> >>  	 * going to be taken before this function called
> >>  	 */
> >> -	ret =3D intel_hdcp_gsc_initialize_message(display, hdcp_message);
> >> +	ret =3D intel_hdcp_gsc_initialize_message(display, gsc_context);
> >>  	if (ret) {
> >> -		drm_err(display->drm, "Could not initialize hdcp_message\n");
> >> -		kfree(hdcp_message);
> >> -		hdcp_message =3D ERR_PTR(ret);
> >> +		drm_err(display->drm, "Could not initialize gsc_context\n");
> >> +		kfree(gsc_context);
> >> +		gsc_context =3D ERR_PTR(ret);
> >>  	}
> >>
> >> -	return hdcp_message;
> >> +	return gsc_context;
> >>  }
> >>
> >> -void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_message
> >> *hdcp_message)
> >> +void intel_hdcp_gsc_free_message(struct intel_hdcp_gsc_context
> >> +*gsc_context)
> >>  {
> >> -	if (!hdcp_message)
> >> +	if (!gsc_context)
> >>  		return;
> >>
> >> -	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
> >> -	kfree(hdcp_message);
> >> +	xe_bo_unpin_map_no_vm(gsc_context->hdcp_bo);
> >> +	kfree(gsc_context);
> >>  }
> >>
> >>  static int xe_gsc_send_sync(struct xe_device *xe,
> >> -			    struct intel_hdcp_gsc_message *hdcp_message,
> >> +			    struct intel_hdcp_gsc_context *gsc_context,
> >>  			    u32 msg_size_in, u32 msg_size_out,
> >>  			    u32 addr_out_off)
> >>  {
> >> -	struct xe_gt *gt =3D hdcp_message->hdcp_bo->tile->media_gt;
> >> -	struct iosys_map *map =3D &hdcp_message->hdcp_bo->vmap;
> >> +	struct xe_gt *gt =3D gsc_context->hdcp_bo->tile->media_gt;
> >> +	struct iosys_map *map =3D &gsc_context->hdcp_bo->vmap;
> >>  	struct xe_gsc *gsc =3D &gt->uc.gsc;
> >>  	int ret;
> >>
> >> -	ret =3D xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in,
> >> msg_size_in,
> >> -				       hdcp_message->hdcp_cmd_out,
> >> msg_size_out);
> >> +	ret =3D xe_gsc_pkt_submit_kernel(gsc, gsc_context->hdcp_cmd_in,
> >> msg_size_in,
> >> +				       gsc_context->hdcp_cmd_out,
> >> msg_size_out);
> >>  	if (ret) {
> >>  		drm_err(&xe->drm, "failed to send gsc HDCP msg (%d)\n", ret);
> >>  		return ret;
> >> @@ -162,7 +162,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct xe_device
> >> *xe,
> >> u8 *msg_in,
> >>  				size_t msg_out_len)
> >>  {
> >>  	const size_t max_msg_size =3D PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
> >> -	struct intel_hdcp_gsc_message *hdcp_message;
> >> +	struct intel_hdcp_gsc_context *gsc_context;
> >>  	u64 host_session_id;
> >>  	u32 msg_size_in, msg_size_out;
> >>  	u32 addr_out_off, addr_in_wr_off =3D 0; @@ -175,15 +175,15 @@
> ssize_t
> >> intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
> >>
> >>  	msg_size_in =3D msg_in_len + HDCP_GSC_HEADER_SIZE;
> >>  	msg_size_out =3D msg_out_len + HDCP_GSC_HEADER_SIZE;
> >> -	hdcp_message =3D xe->display.hdcp.hdcp_message;
> >> +	gsc_context =3D xe->display.hdcp.gsc_context;
> >>  	addr_out_off =3D PAGE_SIZE;
> >>
> >>  	host_session_id =3D xe_gsc_create_host_session_id();
> >>  	xe_pm_runtime_get_noresume(xe);
> >> -	addr_in_wr_off =3D xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo-
> >> >vmap,
> >> +	addr_in_wr_off =3D xe_gsc_emit_header(xe, &gsc_context->hdcp_bo-
> >> >vmap,
> >>  					    addr_in_wr_off,
> >> HECI_MEADDRESS_HDCP,
> >>  					    host_session_id, msg_in_len);
> >> -	xe_map_memcpy_to(xe, &hdcp_message->hdcp_bo->vmap,
> >> addr_in_wr_off,
> >> +	xe_map_memcpy_to(xe, &gsc_context->hdcp_bo->vmap,
> >> addr_in_wr_off,
> >>  			 msg_in, msg_in_len);
> >>  	/*
> >>  	 * Keep sending request in case the pending bit is set no need to
> >> add @@ -192,7 +192,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> >> xe_device *xe,
> >> u8 *msg_in,
> >>  	 * 20 times each message 50 ms apart
> >>  	 */
> >>  	do {
> >> -		ret =3D xe_gsc_send_sync(xe, hdcp_message, msg_size_in,
> >> msg_size_out,
> >> +		ret =3D xe_gsc_send_sync(xe, gsc_context, msg_size_in,
> >> msg_size_out,
> >>  				       addr_out_off);
> >>
> >>  		/* Only try again if gsc says so */ @@ -206,7 +206,7 @@
> ssize_t
> >> intel_hdcp_gsc_msg_send(struct xe_device *xe,
> >> u8 *msg_in,
> >>  	if (ret)
> >>  		goto out;
> >>
> >> -	xe_map_memcpy_from(xe, msg_out, &hdcp_message->hdcp_bo-
> >> >vmap,
> >> +	xe_map_memcpy_from(xe, msg_out, &gsc_context->hdcp_bo->vmap,
> >>  			   addr_out_off + HDCP_GSC_HEADER_SIZE,
> >>  			   msg_out_len);
> >>
> >> --
> >> 2.39.5
> >
>=20
> --
> Jani Nikula, Intel
